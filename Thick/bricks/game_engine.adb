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

with AdaSDL.Video.Drawing;
with AdaSDL.Video.Images;
with AdaSDL.Video.Pixels;
with AdaSDL.Audio.Music;
with AdaSDL.Audio.Sound;
with AdaSDL.Events;

with Ada.Calendar; use Ada.Calendar;

with Ada.Exceptions; use Ada.Exceptions;
with Ada.Text_IO;    use Ada.Text_IO;

package body Game_Engine is

   package Video    renames AdaSDL.Video;
   package Drawing  renames Video.Drawing;
   package Images   renames Video.Images;
   package Pixels   renames Video.Pixels;

   use type AdaSDL.Integer;
   use type AdaSDL.Scalar;
   use type AdaSDL.Number;

   Speed_Constant : constant := 1.5;

   protected body Game_Information is
      -- Basic stuff about the mouse and the pause
      -- status.
      procedure Mouse_To (X  : AdaSDL.Scalar) is
      begin
         if X >= Screen_Width - 40 -1 then
            Mouse := Screen_Width - 40 - 1;
         else
            Mouse := X;
         end if;
      end Mouse_To;

      function  Mouse_At return AdaSDL.Scalar is
      begin
         return Mouse;
      end Mouse_At;

      procedure Pause is
      begin
         Pause_Started := not Pause_started;

         if Pause_Started then
            AdaSDL.Audio.Music.Pause;
         else
            AdaSDL.Audio.Music.Resume;
         end if;

      end Pause;

      function  Paused   return Boolean is
      begin
         return Pause_Started;
      end Paused;

      procedure Speedup is
      begin
         if Speed >= 4.0 then
            Speed := 4.0;
         else
            Speed := Speed * Speed_Constant;
         end if;
      end Speedup;

      procedure Slowdown is
      begin
         if Speed <= 0.25 then
            Speed := 0.25;
         else
            Speed := Speed / Speed_Constant;
         end if;
      end Slowdown;

      function  Speed_Multiplier return Float is
      begin
         return Speed;
      end Speed_Multiplier;

   end Game_Information;

   ------------
   -- Engine --
   ------------

   task body Engine is

      ------------------------------------
      -- Purpose : To animate the game. --
      ------------------------------------

      use Physics;

   begin
      loop
         loop  -- Idle till game starts.
            select
               accept Start;
               exit;
            or
               accept Shutdown;
            or
               terminate;
            end select;
         end loop;

         declare

            -- For counting the number of frames displayed
            type Frame_Number is mod 2**64;

            -- Bitmap surface for the background.
            Background : Video.Surface_Handle :=
              Video.New_Surface (Screen_Width,Screen_Height);

            -- Bitmap surface for a brick
            Brick      : Video.Surface_Handle :=
              Images.To_Surface_Handle (Images.Load ("BRICK2.bmp"));

            -- Bitmap surface for the paddle
            Paddle     : Video.Surface_Handle :=
              Images.To_Surface_Handle (Images.Load ("cpaddle.bmp"));

            -- Bitmap surface for the ball
            Ball       : Video.Surface_Handle :=
              Images.To_Surface_Handle (Images.Load ("BITDOT2.BMP"));

            -- Spare bitmap sure for the ball alpha blending
            AlphaBall  : Video.Surface_Handle :=
              Images.To_Surface_Handle (Images.Load ("BITDOT2.BMP"));

            -- Background music
            --Back_Music : AdaSDL.Audio.Music.Music :=
            -- AdaSDL.Audio.Music.Load("Circus.mid");

            -- Sound for the ball dinking off a screen wall
            Dink       : AdaSDL.Audio.Sound.Sound :=
              AdaSDL.Audio.Sound.Load("dink.wav");

            -- Sound for the ball bouncing off the paddle
            Bounce     : AdaSDL.Audio.Sound.Sound :=
              AdaSDL.Audio.Sound.Load("bouce.wav");

            -- Sound for the ball hitting a brick
            Brick_Hit  : AdaSDL.Audio.Sound.Sound :=
              AdaSDL.Audio.Sound.Load("hit.wav");

            -- Maximium frame rate constant
            -- sometimes currently not used
            Frame_Rate     : constant := 15.0;

            -- Calculated time each frame should take to allow the
            -- about frame rate
            Frame_Time     : constant := (1.0/Frame_Rate);

            -- Used to calculate the frames per second.
            Start_Time     : Time;
            Frames         : Frame_Number := 0;

            -- Used to calculate how far the object should be moved after
            -- a frame elapses
            Frame_Refresh  : Time := Clock + Frame_Time;
            -- The time the last frame took to draw.
            Frame_Elasped  : Duration := 0.0;

            -- The width of the paddle
            Paddle_Width   : constant := 40;

            -- The Height of the paddle
            Paddle_Y       : AdaSDL.Scalar := Screen_Height - 20;

            -- The ball's starting position.
            -- used for alpha smoothing
            Ball_X         : AdaSDL.Scalar := 640;
            Ball_Y         : AdaSDL.Scalar := 480;

            -----------------------------
            -- begin sound procedures  --
            -----------------------------

            task SoundMan is
               entry aDink;
               entry aBounce;
               entry aHit;
            end Soundman;

            task body Soundman is
            begin
               loop
                  select
                     accept aDink;
                     AdaSDL.Audio.Sound.Play(Dink,1);
                  or
                     accept aBounce;
                     AdaSDL.Audio.Sound.Play(Bounce,1);
                  or
                     accept aHit;
                     AdaSDL.Audio.Sound.Play(Brick_Hit,1);
                  or
                     terminate;
                  end select;
               end loop;
            end Soundman;

            procedure Dinkit is

            begin
               Soundman.aDink;
            end Dinkit;

            procedure Bounceit is

            begin
               Soundman.aBounce;
            end Bounceit;

            procedure Hitit is

            begin
               Soundman.aHit;
            end Hitit;

            -----------------------------
            --  end  sound procedures  --
            -----------------------------

            -- Start a new game!
            package Current_Game is
               new Game_Environment ( (Location  =>
                                         (Physics.X_Coordinate(Screen_Width)
                                          / 2.0,
                                          Physics.Y_Coordinate(Screen_Height)
                                          / 2.0),
                                       Direction => (-0.20,-0.10),
                                       Radius    => 5.0),
                                      (Screen_Width - Paddle_Width) / 2,
                                      40,10,
                                      Dinkit,Bounceit,Hitit);

         begin

            -- Turn Ball's background transparent.

            Images.Set_Transparent_Pixel ( Item  => Video.To_Surface (Ball),
                                           Accelerated => True,
                                           Red   => 0,
                                           Green => 0,
                                           Blue  => 0
                                           );

            -- Setup Alpha ball for smoothing
            Images.Set_Transparent_Pixel ( Item  =>
                                             Video.To_Surface (AlphaBall),
                                           Accelerated => True,
                                           Red   => 0,
                                           Green => 0,
                                           Blue  => 0
                                           );

            Images.Set_Global_Alpha ( Item        =>
                                        Video.To_Surface (AlphaBall),
                                      Accelerated => True,
                                      Intensity   => 127);



            declare  -- Tile Background
               BackTile : Video.Surface_Handle :=
                 Images.To_Surface_Handle (Images.Load ("TOBACK3.BMP"));

               Tile_Width  : constant := 40;
               Tile_Height : constant := 20;
            begin
               for Y in 0..(Screen_Height / Tile_Height)-1 loop
                  for X in 0..(Screen_Width / Tile_Width)-1 loop
                     Drawing.BitBlt (Source => Video.To_Surface (BackTile),
                                     Destination =>
                                       Video.To_Surface (Background),
                                     X => AdaSDL.Scalar (X * Tile_Width),
                                     Y => AdaSDL.Scalar (Y * Tile_Height)
                                     );
                  end loop;
               end loop;

            end;

            -- Startup the Music
            --AdaSDL.Audio.Music.Play (Back_Music);

            -- Record the starting time for frame rate
            Start_Time := Clock;

            -- Active the game!
            Game_Running :
              loop
              begin


                 -- Check to see the game must shutdown
                 -- Otherwise run the next frame.
                 select
                    accept Shutdown;
                    exit Game_Running;
                 or
                    --delay until Frame_Refresh;
                    delay 0.0;

                 end select;

                 -- Calculate how much time has passed.
                 declare
                    Refresh : Time := Clock + Frame_Time;
                 begin
                    Frame_Elasped  := (Refresh - Frame_Refresh) *
                                      Duration(Game.Speed_Multiplier);
                    Frame_Refresh  := Refresh;
                 end;

                 -- One more frame displayed
                 Frames := Frames + 1;

                 if not Game.Paused then
                    -- if the game isn't paused use the
                    -- the time elapse to move the game
                    -- forward.
                    Current_Game.Update (Frame_Elasped);
                 end if;



                 -- Draw the game according to the description
                 -- given by current game.  This make the
                 -- drawing routine independent of the pause
                 -- functionality.

                 begin
                    -- Draw Background
                    Drawing.BitBlt (Source => Video.To_Surface (Background),
                                    Destination => Video.Video_Screen,
                                    X => 0, Y =>0
                                    );

                    -- Draw Bricks
                    for Y in Current_Game.Brick_Y loop
                       for X in Current_Game.Brick_X loop
                          if Current_Game.Brick_At(X,Y) then
                             Drawing.BitBlt (Source =>
                                               Video.To_Surface (Brick),
                                             Destination => Video.Video_Screen,
                                             X => Current_Game.To_Scalar (X),
                                             Y => Current_Game.To_Scalar (Y));
                          end if;
                       end loop;
                    end loop;

                    -- Draw Paddle
                    Drawing.BitBlt (Source => Video.To_Surface (Paddle),
                                    Destination => Video.Video_Screen,
                                    X => Current_Game.Paddle_X,
                                    Y => Current_Game.Paddle_Y
                                    );

                    -- Alpha smooth ball
                    --Drawing.BitBlt (Source => Video.To_Surface (AlphaBall),
                    --                Destination => Video.Video_Screen,
                    --                X => Ball_X,
                    --                Y => Ball_Y
                    --                );

                    Ball_X := Current_Game.Ball_X;
                    Ball_Y := Current_Game.Ball_Y;

                    -- Draw Ball
                    Drawing.BitBlt (Source => Video.To_Surface (Ball),
                                    Destination => Video.Video_Screen,
                                    X => Ball_X,
                                    Y => Ball_Y
                                    );

                    Drawing.Refresh (Video.Video_Screen);

                 exception
                    when Unknown : others =>
                       Put_Line ("Raised in Game Engine Drawing");
                       Put_Line (Exception_Name(Unknown) & ":" &
                                 Exception_Message(Unknown));
                       exit Game_Running;
                 end;


              exception
                 when Unknown : others =>
                    Put_Line ("Raised in Engine " & Exception_Name (Unknown) &
                              " " & Exception_Message (Unknown));
              end;
              end loop Game_Running;

              -- Game Finished

              -- Calculate and display frame rate.
              -- Note this is bad technique since Ada.Text_IO is NOT
              -- guarunteed to play well with multiple task dumping
              -- to standard output.
              declare
                 Time_Elasped : constant Duration := Clock - Start_Time;
              begin
                 Put_Line ("Frames per second : " &
                           Frame_Number'Image(Frames /
                                              Frame_Number(Time_Elasped)));
              exception
                 when Unknown : others =>
                    Put_Line ("Raised in Timer " & Exception_Name (Unknown) &
                              " " & Exception_Message (Unknown));
              end;

              -- Stop the music!
              AdaSDL.Audio.Music.Stop;
         exception
            when Unknown : others =>
               Put_Line ("Raised during game initialization");
               Put_Line (Exception_Name    (Unknown) & " : " &
                         Exception_Message (Unknown));
         end;


      end loop;
   end Engine;

   package body Physics is separate;

   package body Game_Environment is separate;

end Game_Engine;

