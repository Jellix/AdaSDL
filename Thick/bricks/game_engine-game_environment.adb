------------------------------------------------------------------
--                Bricks by Chad R. Meiners                     --
--                Copyright (C) 2002 Chad R. Meiners            --
--                E-mail: crmeiners@hotmail.com                 --
--                (Spam filters are being used                  --
--                 make your subject line noticeable!)          --
------------------------------------------------------------------
-- I release this program as a example of the AdaSDL Thick      --
-- Binding.  I have developed this program incrementally, and   --
-- I intend to clean up the code and add more comments when     --
-- time permits.  The intention of this early release is to     --
-- encourage the usage of the the AdaSDL thick binding.         --
------------------------------------------------------------------
-- I have only compiled this program with GNAT 3.14p and 3.15p  --
-- on Windows 2000.  If you are able to compile and             --
-- successfully run this program on other platforms, I would    --
-- love to hear about it.                                       --
------------------------------------------------------------------
-- This program is free software; you can redistribute it       --
-- and/or modify it under the terms of the GNU General Public   --
-- License as published by the Free Software Foundation; either --
-- version 2 of the License, or (at your option) any later      --
-- version.                                                     --
--                                                              --
-- This program is distributed in the hope that it will be      --
-- useful, but WITHOUT ANY WARRANTY; without even the implied   --
-- warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      --
-- PURPOSE.  See the GNU General Public License for more        --
-- details.                                                     --
--                                                              --
-- You should have received a copy of the GNU General Public    --
-- License along with this program; if not, write to the Free   --
-- Software Foundation, Inc., 59 Temple Place, Suite 330,       --
-- Boston, MA  02111-1307  USA                                  --
------------------------------------------------------------------

separate(Game_Engine)
package body Game_Environment is

   use Physics;

   -- Paddle information
   ePaddle_X      : AdaSDL.Scalar := Paddle_Start;

   ePaddle_Y      : AdaSDL.Scalar := Screen_Height - 20;

   -- Screen information (constant)
   SHeight        : constant Physics.Y_Coordinate
     := Physics.Y_Coordinate(Screen_Height);
   SWidth         : constant Physics.X_Coordinate
     := Physics.X_Coordinate(Screen_Width);

   -- Brick information (constant)
   Brick_Width    : constant := 40;
   Brick_Height   : constant := 20;

   FBrick_Width   : constant := 40.0;
   FBrick_Height  : constant := 20.0;

   -- Ball information
   MyBall         : Physics.Ball := Start;

   -- Brick array for all the bricks' status
   Bricks         : array (Brick_X,Brick_Y) of Boolean
                  := (others => (others=> False));

   -- Kinds of sounds
   type Sound_Type is (None,Wall,Paddle, Brick);

   procedure Update (Over : Duration) is

   begin
      -- Game Physics
      ePaddle_X := Game.Mouse_At;

      -- Ball Movement
      declare
         Movement_Left : Duration := Over;
      begin

         -------------------------------------------------------------
         -- This loop simulates the ball movement and determines    --
         -- where the ball bouces off of things over a period of    --
         -- time.  This loop works by finding the closest           --
         -- collision.  If the ball has the time to collide within  --
         -- this update, the ball vector is recalculated and        --
         -- various other stuff is flagged to happen.  Then the     --
         -- time to took to reach the collision is subtracted from  --
         -- Movement_Left and the process is repeat until the ball  --
         -- runs out of time to hit another object.                 --
         -------------------------------------------------------------

         loop
            exit when Movement_Left = 0.0;
            declare

               -- The current closest collision within reach of time.

               Min_Movement : Duration := Movement_Left;

               -- Note that is there is no collision within reach
               -- then the ball will just travel forward for the
               -- entire time.

               -- The ramifications of such a collision! --

               -- The new vector of the ball.
               With_Vector  : Vector   := MyBall.Direction;


               Current_Snd  : Sound_Type := None;

               Break_Brick  : Boolean  := False;
               Break_At_X   : Brick_X;
               Break_At_Y   : Brick_Y;

               -- end ramifications --

               use Physics;


            begin

               ----------------------------------------
               -- !!!!!!!!!!Warning!!!!!!!!!!!!!!!!! --
               -- Collision detection is ugly        --
               ----------------------------------------
           Collision_Detection :
               declare
                  -- Constants to determine how the paddle affects the
                  -- ball bounce
                  Max_Shift      : constant := 0.1;
                  Max_Hoz_Speed  : constant := 0.3;

                  Hit   : Boolean;
                  Move  : Duration;

                  XDef  : Proportion;
                  YDef  : Proportion;

                  procedure Test_Hoz_Wall (Where : Point;
                                           Width : FScalar) is
                  begin
                     Horizontal_Collide(MyBall,
                                        Movement_Left,
                                        Where,
                                        Width,
                                        Hit, Move);
                  end Test_Hoz_Wall;

                  procedure Test_Vert_Wall (Where  : Point;
                                            Height : FScalar) is
                  begin
                     Vertical_Collide(MyBall,
                                      Movement_Left,
                                      Where,
                                      Height,
                                      Hit, Move);
                  end Test_Vert_Wall;

                  pragma Inline (Test_Hoz_Wall);
                  pragma Inline (Test_Vert_Wall);

               begin
                  Break_Brick := False;
                  -- Test Walls Hoz
                  -- Top Wall
                  Test_Hoz_Wall ((0.0,0.0), FScalar(Screen_Width));

                  if Hit and then (Move < Min_Movement) then
                     Min_Movement  := Move;
                     With_Vector.Y := -(MyBall.Direction.Y * 0.5);
                     Current_Snd   := Wall;
                  end if;

                  -- Bottom Wall
                  Test_Hoz_Wall ((0.0,SHeight), FScalar(Screen_Width));

                  if Hit and then (Move < Min_Movement) then
                     Min_Movement  := Move;
                     With_Vector.Y := -MyBall.Direction.Y;
                     if abs(With_Vector.Y) < 0.009 then
                        With_Vector.Y := -0.1;
                     end if;
                     Current_Snd   := Wall;
                  end if;

                  -- Test Walls vert
                  -- Test Right wall
                  Test_Vert_Wall ((0.0,0.0), FScalar(Screen_Height));

                  if Hit and then (Move < Min_Movement) then
                     Min_Movement  := Move;
                     With_Vector.X := -MyBall.Direction.X;
                     Current_Snd   := Wall;
                  end if;

                  -- Test Left wall
                  Test_Vert_Wall ((SWidth,0.0), FScalar(Screen_Height));

                  if Hit and then (Move < Min_Movement) then
                     Min_Movement  := Move;
                     With_Vector.X := -MyBall.Direction.X;
                     Current_Snd   := Wall;
                  end if;

                  -- Test Paddle
                  -- Paddle Top

                  if With_Vector.Y > 0.0 then
                     -- Test paddle only if the ball is falling

                     Test_Hoz_Wall ((X_Coordinate(Paddle_X),
                                     Y_Coordinate(Paddle_Y)),
                                    FScalar(Paddle_Width));

                     if Hit and then (Move < Min_Movement) then
                        Min_Movement  := Move;
                        With_Vector.Y := -(MyBall.Direction.Y *1.1);
                        declare
                           Hit_At : constant X_Coordinate
                             := MyBall.Location.X +
                             To_X_Coordinate
                             (With_Vector.X,Move) -
                             X_Coordinate (Paddle_X);
                        begin

                           With_Vector.X := With_Vector.X +
                             Widths_Per_Second
                             ((Hit_At - 20.0) / (20.0 / Max_Shift));

                           With_Vector.X :=
                             Widths_Per_Second'Min
                             (Max_Hoz_Speed,With_Vector.X);

                           With_Vector.X :=
                             Widths_Per_Second'Max
                             (-Max_Hoz_Speed,With_Vector.X);

                        end;
                        Current_Snd   := Paddle;
                     end if;

                     -- Left Paddle corner.
                     Point_Collide (MyBall, Movement_Left,
                                    (X_Coordinate(Paddle_X),
                                     Y_Coordinate(Paddle_Y)),
                                    Hit, Move, XDef, YDef);

                     if Hit and then (Move < Min_Movement) then
                        Min_Movement  := Move;
                        --With_Vector   := Deflect (MyBall.Direction, XDef, YDef);
                        --With_Vector.X := -MyBall.Direction.X;

                        With_Vector.X :=
                          Widths_Per_Second'Max
                          (-Max_Hoz_Speed,With_Vector.X - Max_Shift);
                        With_Vector.Y := -MyBall.Direction.Y;

                        Current_Snd   := Paddle;
                     end if;

                     -- Right Paddle corner.
                     Point_Collide (MyBall, Movement_Left,
                                    (X_Coordinate(Paddle_X + Paddle_Width),
                                     Y_Coordinate(Paddle_Y)),
                                    Hit, Move, XDef, YDef);

                     if Hit and then (Move < Min_Movement) then
                        Min_Movement  := Move;
                        --With_Vector   := Deflect (MyBall.Direction, XDef, YDef);
                        --With_Vector.X := -MyBall.Direction.X;
                        With_Vector.Y := -MyBall.Direction.Y;

                        With_Vector.X :=
                          Widths_Per_Second'Min
                          (Max_Hoz_Speed,With_Vector.X + Max_Shift);

                        Current_Snd   := Paddle;
                     end if;

                  end if; -- paddle upward test

                  -- Left paddle side
                  Test_Vert_Wall ((X_Coordinate(Paddle_X),
                                   Y_Coordinate(Paddle_Y)),
                                  FScalar(Paddle_Height));

                  if Hit and then (Move < Min_Movement) then
                     Min_Movement  := Move;
                     With_Vector.X := -MyBall.Direction.X;

                     Current_Snd   := Paddle;
                  end if;

                  -- Right paddle side
                  Test_Vert_Wall ((X_Coordinate(Paddle_X + Paddle_Width),
                                   Y_Coordinate(Paddle_Y)),
                                  FScalar(Paddle_Height));

                  if Hit and then (Move < Min_Movement) then
                     Min_Movement  := Move;
                     With_Vector.X := -MyBall.Direction.X;

                     Current_Snd   := Paddle;
                  end if;



              Brick_Tests :
                  for X in Brick_X loop
                     for Y in Brick_Y loop
                        if Bricks(X,Y) then

                           Point_Collide (MyBall, Movement_Left,
                                          (X_Coordinate (To_Scalar (X)),
                                           Y_Coordinate (To_Scalar (Y))),
                                          Hit, Move, XDef, YDef);

                           if Hit and then (Move < Min_Movement) then
                              Min_Movement  := Move;
                              With_Vector   := Deflect (MyBall.Direction,
                                                        XDef, YDef);
                              With_Vector   := Scale (With_Vector,
                                                      MyBall.Direction,
                                                      0.8);
                              --With_Vector.X := -MyBall.Direction.X;
                              --With_Vector.Y := -MyBall.Direction.Y;

                              Current_Snd   := Brick;
                              Break_Brick   := True;
                              Break_At_X    := X;
                              Break_At_Y    := Y;
                           end if;

                           Point_Collide (MyBall, Movement_Left,
                                          (X_Coordinate (To_Scalar (X)+
                                                         Brick_Width
                                                         ),
                                           Y_Coordinate (To_Scalar (Y))),
                                          Hit, Move, XDef, YDef);

                           if Hit and then (Move < Min_Movement) then
                              Min_Movement  := Move;
                              With_Vector   := Deflect (MyBall.Direction,
                                                        XDef, YDef);
                              With_Vector   := Scale (With_Vector,
                                                      MyBall.Direction,
                                                      0.8);
                              --With_Vector.X := -MyBall.Direction.X;
                              --With_Vector.Y := -MyBall.Direction.Y;

                              Current_Snd   := Brick;
                              Break_Brick   := True;
                              Break_At_X    := X;
                              Break_At_Y    := Y;
                           end if;

                           Point_Collide (MyBall, Movement_Left,
                                          (X_Coordinate (To_Scalar (X)),
                                           Y_Coordinate (To_Scalar (Y)+
                                                         Brick_Height
                                                         )),
                                          Hit, Move, XDef, YDef);

                           if Hit and then (Move < Min_Movement) then
                              Min_Movement  := Move;
                              With_Vector   := Deflect (MyBall.Direction,
                                                        XDef, YDef);
                              With_Vector   := Scale (With_Vector,
                                                      MyBall.Direction,
                                                      0.8);
                              --With_Vector.X := -MyBall.Direction.X;
                              --With_Vector.Y := -MyBall.Direction.Y;

                              Current_Snd   := Brick;
                              Break_Brick   := True;
                              Break_At_X    := X;
                              Break_At_Y    := Y;
                           end if;

                           Point_Collide (MyBall, Movement_Left,
                                          (X_Coordinate (To_Scalar (X)+
                                                         Brick_Width
                                                         ),
                                           Y_Coordinate (To_Scalar (Y)+
                                                         Brick_Height
                                                         )),
                                          Hit, Move, XDef, YDef);

                           if Hit and then (Move < Min_Movement) then
                              Min_Movement  := Move;
                              With_Vector   := Deflect (MyBall.Direction,
                                                        XDef, YDef);
                              With_Vector   := Scale (With_Vector,
                                                      MyBall.Direction,
                                                      0.8);
                              --With_Vector.X := -MyBall.Direction.X;
                              --With_Vector.Y := -MyBall.Direction.Y;

                              Current_Snd   := Brick;
                              Break_Brick   := True;
                              Break_At_X    := X;
                              Break_At_Y    := Y;
                           end if;

                           Vertical_Collide (MyBall,
                                             Movement_Left,
                                             (X_Coordinate (To_Scalar (X)),
                                              Y_Coordinate (To_Scalar (Y))),
                                             FScalar(FBrick_Height),
                                             Hit, Move);
                           if Hit and then (Move < Min_Movement) then
                              Min_Movement  := Move;
                              --With_Vector.X := -MyBall.Direction.X * 0.80;
                              With_Vector   := Deflect(MyBall.Direction,
                                                       0.0,1.0);
                              With_Vector   := Scale (With_Vector,
                                                      MyBall.Direction,
                                                      0.8);

                              Current_Snd   := Brick;
                              Break_Brick   := True;
                              Break_At_X    := X;
                              Break_At_Y    := Y;
                           end if;

                           Vertical_Collide (MyBall,
                                             Movement_Left,
                                             (X_Coordinate (To_Scalar (X))
                                              + FBrick_Width,
                                              Y_Coordinate (To_Scalar (Y))),
                                             FScalar(FBrick_Height),
                                             Hit, Move);
                           if Hit and then (Move < Min_Movement) then
                              Min_Movement  := Move;
                              --With_Vector.X := -MyBall.Direction.X * 0.80;
                              With_Vector   := Deflect(MyBall.Direction,
                                                       0.0,1.0);
                              With_Vector   := Scale (With_Vector,
                                                      MyBall.Direction,
                                                      0.8);

                              Current_Snd   := Brick;
                              Break_Brick   := True;
                              Break_At_X    := X;
                              Break_At_Y    := Y;
                           end if;

                           Horizontal_Collide (MyBall,
                                               Movement_Left,
                                               (X_Coordinate (To_Scalar (X)),
                                                Y_Coordinate (To_Scalar (Y))),
                                               FScalar(FBrick_Width),
                                               Hit, Move);
                           if Hit and then (Move < Min_Movement) then
                              Min_Movement  := Move;
                              --With_Vector.Y := -MyBall.Direction.Y * 0.80;
                              With_Vector   := Deflect(MyBall.Direction,
                                                       1.0,0.0);
                              With_Vector   := Scale (With_Vector,
                                                      MyBall.Direction,
                                                      0.8);

                              Current_Snd   := Brick;
                              Break_Brick   := True;
                              Break_At_X    := X;
                              Break_At_Y    := Y;
                           end if;

                           Horizontal_Collide (MyBall,
                                               Movement_Left,
                                               (X_Coordinate (To_Scalar (X)),
                                                Y_Coordinate (To_Scalar (Y))
                                                + FBrick_Height),
                                               FScalar(FBrick_Width),
                                               Hit, Move);
                           if Hit and then (Move < Min_Movement) then
                              Min_Movement  := Move;
                              --With_Vector.Y := -MyBall.Direction.Y * 0.80;
                              With_Vector   := Deflect(MyBall.Direction,
                                                       1.0,0.0);
                              With_Vector   := Scale (With_Vector,
                                                      MyBall.Direction,
                                                      0.8);

                              Current_Snd   := Brick;
                              Break_Brick   := True;
                              Break_At_X    := X;
                              Break_At_Y    := Y;
                           end if;

                        end if;
                     end loop;
                  end loop Brick_Tests;

               end Collision_Detection;

               -------------------------------------------------
               -- End of collision detection and movement     --
               -------------------------------------------------


               -- Move ball to collision point.
               MyBall.Location := MyBall.Location + To_Point (MyBall.Direction,
                                                              Min_Movement);

               -- Adjust Ball vector.
               MyBall.Direction := With_Vector;

               -- Gravity
               MyBall.Direction.Y := MyBall.Direction.Y +
                 Heights_Per_Second
                 (0.2 * Min_Movement);

               -- Adjust the time left.
               Movement_Left    := Movement_Left - Min_Movement;

               -- Break brick if needed.
               if Break_Brick then
                  Bricks(Break_At_X,Break_At_Y) := False;
               end if;

               -- Sound Bite
               case Current_Snd is
                  when None =>
                     null;
                  when Wall =>
                     Play_Wall_Hit;
                  when Paddle =>
                     Play_Paddle_Hit;
                  when Brick =>
                     Play_Brick_Hit;
               end case;

            end;
         end loop;



      exception
         when Unknown : others =>
            Put_Line ("Raised in Game Engine Update");
            Put_Line (Exception_Name(Unknown) & ":" &
                      Exception_Message(Unknown));
      end;

   end Update;

   function  Ball_X return AdaSDL.Scalar is
   begin
      if MyBall.Direction.X = 0.0 then
         return AdaSDL.Scalar (To_X_Coordinate(MyBall));
      elsif MyBall.Direction.X > 0.0 then
         return AdaSDL.Scalar (X_Coordinate'Ceiling(To_X_Coordinate(MyBall)));
      else
         return AdaSDL.Scalar (X_Coordinate'Floor(To_X_Coordinate(MyBall)));
      end if;
   end Ball_X;

   function  Ball_Y return AdaSDL.Scalar is
   begin
      if MyBall.Direction.Y = 0.0 then
         return AdaSDL.Scalar (To_Y_Coordinate(MyBall));
      elsif MyBall.Direction.Y > 0.0 then
         return AdaSDL.Scalar (Y_Coordinate'Ceiling(To_Y_Coordinate(MyBall)));
      else
         return AdaSDL.Scalar (Y_Coordinate'Floor(To_Y_Coordinate(MyBall)));
      end if;
   end Ball_Y;

   function  Paddle_X return AdaSDL.Scalar is
   begin
      return ePaddle_X;
   end Paddle_X;

   function  Paddle_Y return AdaSDL.Scalar is
   begin
      return ePaddle_Y;
   end Paddle_Y;

   function To_Scalar (Item : Brick_X) return AdaSDL.Scalar is
   begin
      return AdaSDL.Scalar (Item) * 40;
   end To_Scalar;

   function To_Scalar (Item : Brick_Y) return AdaSDL.Scalar is
   begin
      return AdaSDL.Scalar (Item) * 20;
   end To_Scalar;

   function Brick_At (X : Brick_X; Y : Brick_Y) return Boolean is
   begin
      return Bricks(X,Y);
   end Brick_At;

begin

   -- Build the default level.

   for Y in Brick_Y range 2..8 loop
      for X in Brick_X loop
         Bricks(X,Y) := True;
      end loop;
   end loop;

end Game_Environment;
