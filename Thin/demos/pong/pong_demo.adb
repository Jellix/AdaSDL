--  Pong-Demo for AdaSDL, main program.
--  Copyright (C) 2012, Vinzent Hoefler
--
--  This program is free software: you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation, either version 3 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful, but
--  WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
--  General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program.  If not, see <http://www.gnu.org/licenses/>.

pragma Ada_05;

with Ada.Exceptions,
     Ada.Real_Time,
     Ada.Text_IO,
     Interfaces.C;

with SDL.Error,
     SDL.Events,
     SDL.Joystick,
     SDL.Keyboard,
     SDL.Keysym,
     SDL.Types,
     SDL.Video;

with Pong.Balls,
     Pong.Paddles;

with Game.Audio,
     Game.Constants;

use type Ada.Real_Time.Time;

use type Interfaces.C.Int,
         SDL.Types.SInt16,
         SDL.Types.UInt16,
         SDL.Init_Flags,
         SDL.Video.Surface_ptr;

procedure Pong_Demo is
   type Players is (Computer, Human);
   type Score is array (Players) of Natural;

   type Object_Ref  is access all Pong.Display_Object'Class;
   type Object_List is array (Natural range <>) of Object_Ref;

   SDL_Error   : exception;

   Ball        : aliased Pong.Balls.Ball;
   Smart_Ass   : aliased Pong.Paddles.Paddle;
   Player      : aliased Pong.Paddles.Paddle;
   Objects     : constant Object_List := (0 => Ball'Access,
                                          1 => Smart_Ass'Access,
                                          2 => Player'Access);

   Clipped     : Boolean;
   The_Score   : Score;
   Event       : aliased SDL.Events.Event;
   Game_Screen : SDL.Video.Surface_ptr;
   Next_Time   : Ada.Real_Time.Time;

   package GC renames Game.Constants;

begin
   if
     SDL.Init (Flags => (SDL.INIT_VIDEO or
                           SDL.INIT_AUDIO)) /= 0
   then
      Ada.Text_IO.Put_Line (File => Ada.Text_IO.Standard_Error,
                            Item => "Could not initialize SDL!");
      raise SDL_Error with SDL.Error.Get_Error;
   end if;

   SDL.Video.WM_Set_Caption (Title => "Ada/SDL Demo - Pong",
                             Icon  => "Ada/SDL Demo - Pong");

   Game_Screen := SDL.Video.SetVideoMode (Width  => GC.Screen_Width,
                                          Height => GC.Screen_Height,
                                          Bpp    => 8,
                                          Flags  => SDL.Video.ANYFORMAT);

   if
     Game_Screen = null
   then
      Ada.Text_IO.Put_Line (File => Ada.Text_IO.Standard_Error,
                            Item => "Could not setup video mode!");
      raise SDL_Error with SDL.Error.Get_Error;
   end if;

   Game.Audio.Initialize;

   Ball := Pong.Balls.Create (Surface => Game_Screen.all,
                              Initial => SDL.Video.Rect'(X => GC.Ball_Initial.X,
                                                         Y => GC.Ball_Initial.Y,
                                                         W => GC.Ball_Size,
                                                         H => GC.Ball_Size),
                              Bounds  => SDL.Video.Rect'(X => 5,
                                                         Y => 5,
                                                         W => SDL.Types.UInt16 (GC.Screen_Width ) - 10,
                                                         H => SDL.Types.UInt16 (GC.Screen_Height) - 10),
                              Speed   => GC.Ball_Speed);

   Smart_Ass := Pong.Paddles.Create (Surface => Game_Screen.all,
                                     Initial => SDL.Video.Rect'(X => 10,
                                                                Y => (GC.Screen_Height / 2 -
                                                                        GC.Paddle_Height / 2),
                                                                W => GC.Paddle_Width,
                                                                H => GC.Paddle_Height),
                                     Bounds  => SDL.Video.Rect'(X => 10,
                                                                Y => 0,
                                                                W => GC.Paddle_Width,
                                                                H => SDL.Types.UInt16 (GC.Screen_Height)),
                                     Speed   =>  GC.Computer_Speed);

   Player := Pong.Paddles.Create (Surface => Game_Screen.all,
                                  Initial => SDL.Video.Rect'(X => GC.Screen_Width - 10 - GC.Paddle_Width,
                                                             Y => (GC.Screen_Height / 2 -
                                                                     GC.Paddle_Height / 2),
                                                             W => GC.Paddle_Width,
                                                             H => GC.Paddle_Height),
                                  Bounds  => SDL.Video.Rect'(X => GC.Screen_Width - 10 - GC.Paddle_Width,
                                                             Y => 0,
                                                             W => GC.Paddle_Width,
                                                             H => SDL.Types.UInt16 (GC.Screen_Height)),
                                  Speed   => GC.Player_Speed);

   if
     SDL.Keyboard.EnableKeyRepeat (the_delay => 50,
                                   interval  => 50) /= 0
   then
      Ada.Text_IO.Put_Line
        (File => Ada.Text_IO.Standard_Error,
         Item => "SDL.Events.Enable_Key_Repeat: Failed!");
   end if;

   The_Score := Score'(Computer => 0,
                       Human    => 0);

   Next_Time := Ada.Real_Time.Clock + GC.Game_Speed;

   Game_Loop :
   loop
      --  Update paddle and ball positions.
      Draw_Objects :
      for O in Objects'Range loop
         Pong.Draw (This    => Objects (O).all,
                    Surface => Game_Screen.all);
      end loop Draw_Objects;

      --  Update video display.
      SDL.Video.Flip (Screen => Game_Screen);
      delay until Next_Time;
      Next_Time := Next_Time + GC.Game_Speed;

      --  Get pending events.
      SDL.Events.PumpEvents;

      if
        SDL.Events.PollEvent (the_event => Event'Access) /= 0
      then
         case Event.the_type is
            when SDL.Events.Quit     =>
               --  Reset score and get out.
               The_Score := Score'(Computer => 0,
                                   Human    => 0);
               exit Game_Loop;

            when SDL.Events.KEYDOWN =>
               case Event.key.keysym.sym is
                  when SDL.Keysym.K_ESCAPE =>
                     --  Reset score and get out.
                     The_Score := Score'(Computer => 0,
                                         Human    => 0);
                     exit Game_Loop;

                  when SDL.Keysym.K_DOWN =>
                     Pong.Paddles.Move (This    => Player,
                                        Clipped => Clipped,
                                        Delta_Y => +1);

                  when SDL.Keysym.K_UP =>
                     Pong.Paddles.Move (This    => Player,
                                        Clipped => Clipped,
                                        Delta_Y => -1);

                  when others =>
                     null;
               end case;

            when others =>
               null;
         end case;
      end if;

      --  Let computer's paddle simply follow the ball.
      Move_Paddle :
      declare
         Ball_Center   : constant SDL.Types.SInt16 :=
                           Pong.Y_Position (This => Ball) + GC.Ball_Size / 2;
         Paddle_Center : constant SDL.Types.SInt16 :=
                           Pong.Y_Position (This => Smart_Ass) + GC.Paddle_Height / 2;
      begin
         if
           Ball_Center - Paddle_Center < -GC.Threshold
         then
            Pong.Paddles.Move (This    => Smart_Ass,
                               Clipped => Clipped,
                               Delta_Y => -1);
         elsif
           Ball_Center - Paddle_Center > GC.Threshold
         then
            Pong.Paddles.Move (This    => Smart_Ass,
                               Clipped => Clipped,
                               Delta_Y => +1);
         end if;
      end Move_Paddle;

      --  Check collision with paddles.
      if
        Pong.Balls.Collides (This => Ball,
                             That => Smart_Ass) or
        Pong.Balls.Collides (This => Ball,
                             That => Player)
      then
         Game.Audio.Play_Pong;

         Pong.Balls.Change_Dir (This => Ball,
                                X    => True,
                                Y    => False);
      else
         Pong.Balls.Move (This    => Ball,
                          Clipped => Clipped);

         if Clipped then
            Game.Audio.Play_Ping;
         end if;
      end if;

      --  Check winning/losing condition.
      Check_Score :
      declare
         Score_Changed : Boolean := False;
      begin
         if
           Pong.X_Position (This => Ball) < 10
         then
            The_Score (Human) := The_Score (Human) + 1;
            Score_Changed := True;
         elsif
           Pong.X_Position (This => Ball) > GC.Screen_Width - 10 - GC.Ball_Size
         then
            The_Score (Computer) := The_Score (Computer) + 1;
            Score_Changed := True;
         end if;

         if Score_Changed then
            Ada.Text_IO.Put_Line
              (Natural'Image (The_Score (Computer)) & " :" &
               Natural'Image (The_Score (Human   )));

            Pong.Balls.Warp (This    => Ball,
                             Initial => GC.Ball_Initial);
         end if;
      end Check_Score;

      exit Game_Loop when
        (abs (The_Score (Computer) - The_Score (Human)) >= GC.Min_Difference) and --  points difference
        Natural'Max (The_Score (Computer), The_Score (Human)) >= GC.Min_Winning_Score;
   end loop Game_Loop;

   SDL.QuitSubSystem (Flags => (SDL.INIT_VIDEO or SDL.INIT_AUDIO));

   Game.Audio.Finalize;

   if
     The_Score (Computer) /= The_Score (Human)
   then
      if
        The_Score (Computer) > The_Score (Human)
      then
         Ada.Text_IO.Put_Line ("I WIN! YEAH!!!");
      else
         Ada.Text_IO.Put_Line ("You win. Pah.");
      end if;

      delay 1.0;
   end if;

   SDL.SDL_Quit;

exception

   when SDL_Error =>
      SDL.SDL_Quit;

   when E : others =>
      Ada.Text_IO.Put_Line
        (File => Ada.Text_IO.Standard_Error,
         Item => String'("Game crashed: " & Ada.Exceptions.Exception_Information (E)));

      SDL.SDL_Quit;

end Pong_Demo;
