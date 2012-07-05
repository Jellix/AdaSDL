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

--with Ada.Text_IO;
--use  Ada.Text_IO;

with Game_Engine;

package body Brick_Events is

   ---------
   -- Key --
   ---------

   procedure Key
     (Object    : in out Brick_Handler;
      Item      : KeyBoard.Key;
      Pressed   : Boolean;
      Modifiers : KeyBoard.Modifiers)
   is
   begin
      case Item is
         when Keyboard.Esc =>
            -- Stop the game when escape is pressed
            Object.Stop := True;
         when Keyboard.'p' | Keyboard.Pause =>
            -- Toggle the game's paused state if 'p' or pause is pressed
            if Pressed then
               Game_Engine.Game.Pause;
            end if;
         when Keyboard.'-' | Keyboard.'_' =>
            Game_Engine.Game.Slowdown;
         when Keyboard.'=' | Keyboard.'+' =>
            Game_Engine.Game.Speedup;
         when others =>
            null;
      end case;
   end Key;

   ------------------
   -- Mouse_Button --
   ------------------

   procedure Mouse_Button
     (Object       : in out Brick_Handler;
      Button       : Mouse.Button;
      Pressed      : Boolean;
      X_Coordinate : AdaSDL.Scalar;
      Y_Coordinate : AdaSDL.Scalar)
   is
   begin
      -- ignore the mouse buttons
      null;
   end Mouse_Button;

   --------------------
   -- Mouse_Movement --
   --------------------

   procedure Mouse_Movement
     (Object       : in out Brick_Handler;
      Buttons_Held : Mouse.Buttons;
      X_Coordinate : AdaSDL.Scalar;
      Y_Coordinate : AdaSDL.Scalar;
      X_Vector     : AdaSDL.Integer;
      Y_Vector     : AdaSDL.Integer)
   is
      use AdaSDL;

      -- Some tight coupling here!
      -- Should refactor sometime.

      Result : AdaSDL.Scalar
        := AdaSDL.Integer'Max (Game_Engine.Game.Mouse_At + X_Vector,0);

      Edge   : constant := 40;

   begin

      --Put_Line ("Y Moves : " & AdaSDL.Integer'Image(Y_Vector));

      -- Move the paddle in the direction of the mouse movement,
      -- but prevent the paddle from moving off the screen.

      if Result in Edge..Game_Engine.Screen_Width - 1 - Edge then
         Game_Engine.Game.Mouse_To (X_Coordinate - (Edge /2));
      else
         Game_Engine.Game.Mouse_To (Result);
      end if;
   exception
      when others =>
         null;
   end Mouse_Movement;

   ----------
   -- Quit --
   ----------

   procedure Quit (Object : in out Brick_Handler) is
   begin
      -- Window manager signals us to die so die we must
      Object.Stop := True;
   end Quit;

   -------------------
   -- Quits_Allowed --
   -------------------

   function Quits_Allowed (Object  : Brick_Handler) return boolean is
   begin
      -- We don't ignore the window manager's requests.
      return True;
   end Quits_Allowed;

end Brick_Events;

