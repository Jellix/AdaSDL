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
-- Name : Brick_Events                                          --
------------------------------------------------------------------
-- Purpose : To provide AdaSDL event handlers for               --
--           the Bricks program.                                --
------------------------------------------------------------------
-- Methodology : Define a new event handling type for each      --
--               different event handling mode (in game, menu,  --
--               etc...).                                       --
------------------------------------------------------------------

with AdaSDL.Events;
with AdaSDL.Input;
use  AdaSDL.Input;

package Brick_Events is

   --------------------------------
   -- The in game event handler. --
   -- handles keystrokes,        --
   -- mouse, and exit signals    --
   --------------------------------
   type Brick_Handler is new AdaSDL.Events.Null_Event.Null_Event_Handler
     with record
        Stop : Boolean := False;
     end record;

   procedure Key ( Object    : in out Brick_Handler;
                   Item      : KeyBoard.Key;
                   Pressed   : Boolean;
                   Modifiers : KeyBoard.Modifiers
                 )  ;


   -- Mouse Events
   procedure Mouse_Movement ( Object       : in out Brick_Handler;
                              Buttons_Held : Mouse.Buttons;
                              X_Coordinate : AdaSDL.Scalar;
                              Y_Coordinate : AdaSDL.Scalar;
                              X_Vector     : AdaSDL.Integer;
                              Y_Vector     : AdaSDL.Integer
                            )  ;

   procedure Mouse_Button   ( Object       : in out Brick_Handler;
                              Button       : Mouse.Button;
                              Pressed      : Boolean;
                              X_Coordinate : AdaSDL.Scalar;
                              Y_Coordinate : AdaSDL.Scalar
                            )  ;

   function  Quits_Allowed ( Object  : Brick_Handler) return boolean;

   procedure Quit (Object : in out Brick_Handler);

end Brick_Events;
