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

------------------------------------------------------------------
-- Name : Bricks                                                --
------------------------------------------------------------------
-- Purpose : Binding test and entertainment                     --
------------------------------------------------------------------
-- Description : This program tests the AdaSDL thick binding    --
--               in an entertaining manner.  I have cobbled     --
--               this program together while building the       --
--               thick binding to test to feel of using the     --
--               thick binding.  The ultima purpose of the game --
--               is to destory all the bricks.  One day this    --
--               program might be a full featured game that     --
--               demonstrates the 2D graphics that the          --
--               binding allows, but for now the program still  --
--               lacks the functionallity to be considered a    --
--               game.                                          --
------------------------------------------------------------------
-- Methodology : The main procedure bricks is responable for    --
--               setting up the graphics environment, running   --
--               the event handler, and then finally tearing    --
--               down the graphics environment before the       --
--               program shuts down.                            --
--               Game logic is found in the Game_Engine package --
--               while the event handler is defined in the      --
--               package Brick_Events.                          --
------------------------------------------------------------------

with AdaSDL.Video.Window_Management;
with AdaSDL.Audio;
with AdaSDL.Events;
with AdaSDL.Input;

with Brick_Events;
with Game_Engine;

with Ada.Text_IO;
use  Ada.Text_IO;
with Ada.Exceptions;
use  Ada.Exceptions;

procedure Bricks is

   --------------------------------------------------------------
   -- This constant is used to specify video options desired   --
   -- These options should be derived from a configuration     --
   -- package in the future.                                   --
   --------------------------------------------------------------
   Screen_Options : constant AdaSDL.Video.Video_Flags
     := ( AdaSDL.Video.Software_Surface => True,  -- Does nothing.
          AdaSDL.Video.Hardware_Surface => true,  -- Asks for hardware
                                                  -- accelerated bitmaps
          AdaSDL.Video.Double_Buffer    => true,  -- Sets the screen
                                                  -- update method to
                                                  -- double buffering
          --AdaSDL.Video.FullScreen       => true,  -- Use the fullscreen
          others                        => False
          );

   ----------------------------------------
   -- Import desired screen resolution.  --
   ----------------------------------------
   Screen_Width  : constant := Game_Engine.Screen_Width;
   Screen_Height : constant := Game_Engine.Screen_Height;

   ---------------------------------------
   -- The AdaSDL Event handler for the  --
   -- game.                             --
   ---------------------------------------
   Controller : Brick_Events.Brick_Handler;

   ---------------------------------------
   -- Delay between polling the event   --
   -- queue.                            --
   ---------------------------------------
   Input_Delay : constant Duration := 1.0/120.0;

begin

   -- Initialize Audio and Video
   AdaSDL.Audio.Initialize;
   AdaSDL.Video.Initialize;

   -- Set up Audio to defaults with the exception that the
   -- sample rate is customized to help sound response rate.
   AdaSDL.Audio.Open(Samples => 1024);

   -- Set up the window captions for the screen.  This is important
   -- when fullscreen is false.
   AdaSDL.Video.Window_Management.Set_Captions (TitleBar => "Bricks",
                                                Icon     => "Bricks");

   -- Set up the screen.  Note we are working in 32-bit color.
   AdaSDL.Video.Set_Video_Mode (Screen_Width   => Screen_Width,
                                Screen_Height  => Screen_Height,
                                Color_Depth    => AdaSDL.Video.Thirty_Two,
                                Flags          => Screen_Options
                                );

   -- Force the mouse to stay in the screen.
   AdaSDL.Video.Window_Management.Grab_Input;

   -- Hide the mouse.
   AdaSDL.Input.Mouse.Hide;

   -- Wait for the first event before starting the game
   declare
      Temp : Boolean;

   begin
      AdaSDL.Events.Handle (Using => Controller,
                            More_Events => Temp
                            );


      if Controller.Stop then
         goto Shutdown_Game;
      end if;
   end;

   -- Start the game.  The engine runs in its own task.
   Game_Engine.Engine.Start;

   -- Poll for event and use the input handler.  Exit the loop once the
   -- game is finished.
Input_Controller :
    loop
       -- Handle all events that have collected on the queue.
       declare
          More_To_Do : Boolean := True;
       begin
          while More_To_Do loop
             -- Handles one event.
             AdaSDL.Events.Handle (Using => Controller,
                                   More_Events => More_To_Do
                                   );

             -- Check to see if the mouse needs to be released
             -- because the game is paused.

             if AdaSDL.Video.Window_Management.Is_Input_Grabbed then
                if Game_Engine.Game.Paused then
                   AdaSDL.Input.Mouse.Show;
                   AdaSDL.Video.Window_Management.Release_Input;
                end if;
             else
                if not Game_Engine.Game.Paused then
                   AdaSDL.Input.Mouse.Hide;
                   AdaSDL.Video.Window_Management.Grab_Input;
                end if;
             end if;

             -- Detects if the event handle has signaled that the program
             -- needs to stop.
             exit Input_Controller when Controller.Stop;

          end loop;
       exception
          -- There "should" be no exceptions, but in case we encounter
          -- them print them out for debugging purposes.
          when Unknown : others => null;
             Put_Line ("Raised " & Exception_Name (Unknown) & " "
                       & Exception_Message (Unknown));
       end;

       delay Input_Delay; -- Poll delay.

    end loop Input_Controller;

    --Time to shutdown the game.

    -- First step is to signal the game to stop running.
    <<Shutdown_Game>>
      Game_Engine.Engine.Shutdown;

    -- Now we bring the mouse back and release it from the window.
    AdaSDL.Input.Mouse.Show;
    AdaSDL.Video.Window_Management.Release_Input;

    -- Shutdown the sound system.
    AdaSDL.Audio.Close;

    -- Shutdown the video and everything else.
    AdaSDL.Finalize;

exception
   when others =>
      Ada.Text_IO.Put_Line ("Arghhh!!!! I died!");
      Game_Engine.Engine.Shutdown;
      AdaSDL.Input.Mouse.Show;
      AdaSDL.Video.Window_Management.Release_Input;
      AdaSDL.Finalize;
      raise;
end Bricks;
