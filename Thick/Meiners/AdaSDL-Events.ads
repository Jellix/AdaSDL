-- ----------------------------------------------------------------- --
--                AdaSDL                                             --
--       (Thick)  Binding to Simple Direct Media Layer               --
--                Copyright (C) 2002 Chad R. Meiners                 --
--                E-mail: crmeiners@hotmail.com                      --
-- ----------------------------------------------------------------- --
--                                                                   --
-- This library is free software; you can redistribute it and/or     --
-- modify it under the terms of the GNU General Public               --
-- License as published by the Free Software Foundation; either      --
-- version 2 of the License, or (at your option) any later version.  --
--                                                                   --
-- This library is distributed in the hope that it will be useful,   --
-- but WITHOUT ANY WARRANTY; without even the implied warranty of    --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU --
-- General Public License for more details.                          --
--                                                                   --
-- You should have received a copy of the GNU General Public         --
-- License along with this library; if not, write to the             --
-- Free Software Foundation, Inc., 59 Temple Place - Suite 330,      --
-- Boston, MA 02111-1307, USA.                                       --
--                                                                   --
-- As a special exception, if other files instantiate generics from  --
-- this unit, or you link this unit with other files to produce an   --
-- executable, this  unit  does not  by itself cause  the resulting  --
-- executable to be covered by the GNU General Public License. This  --
-- exception does not however invalidate any other reasons why the   --
-- executable file  might be covered by the  GNU Public License.     --
-- ----------------------------------------------------------------- --

with AdaSDL.Input;
use  AdaSDL.Input;

package AdaSDL.Events is

   --------------------------------------
   -- When anything goes wrong         --
   --------------------------------------
   Event_Error : exception;


   ------------------------------------------------------------
   -- This is the event handling class.  You make your own   --
   -- inheriented type and pass an instance to the Handle    --
   -- function which translates and dispatches the events    --
   -- to your overridden subroutines event handlers.         --
   ------------------------------------------------------------

   type Event_Handler is abstract tagged null record;

   procedure Handle ( Using       : in out Event_Handler'Class;
                      More_Events : out Boolean
                    );

   -- Active Events

   ------------------------------------------------------------
   -- Event : Mouse focus gained or lost.                    --
   ------------------------------------------------------------

   procedure Mouse_Focus     ( Object   : in out Event_Handler;
                               Gained   : Boolean ) is abstract;

   ------------------------------------------------------------
   -- Event : Keyboard focus gained or lost.                 --
   ------------------------------------------------------------

   procedure Input_Focus     ( Object   : in out Event_Handler;
                               Gained   : Boolean ) is abstract;

   ------------------------------------------------------------
   -- Event : Window either iconified or restored.           --
   ------------------------------------------------------------

   procedure Window_Icon     ( Object   : in out Event_Handler;
                               Restored : Boolean ) is abstract;

   -- KeyBoard Event

   ------------------------------------------------------------
   -- Event : Key have been pressed.                         --
   ------------------------------------------------------------

   procedure Key ( Object    : in out Event_Handler;
                   Item      : KeyBoard.Key;
                   Pressed   : Boolean;
                   Modifiers : KeyBoard.Modifiers
                 ) is abstract;


   -- Mouse Events

   -----------------------------------------
   -- NOTICE!                             --
   -----------------------------------------
   -- This binding currently doesn't      --
   -- support multiple mice!              --
   -----------------------------------------

   ------------------------------------------------------------
   -- Event : Mouse cursor has moved.                        --
   ------------------------------------------------------------
   procedure Mouse_Movement ( Object       : in out Event_Handler;
                              Buttons_Held : Mouse.Buttons;
                              X_Coordinate : AdaSDL.Scalar;
                              Y_Coordinate : AdaSDL.Scalar;
                              X_Vector     : AdaSDL.Integer;
                              Y_Vector     : AdaSDL.Integer
                            ) is abstract;

   ------------------------------------------------------------
   -- Event : A mouse button has been pressed.               --
   ------------------------------------------------------------

   procedure Mouse_Button   ( Object       : in out Event_Handler;
                              Button       : Mouse.Button;
                              Pressed      : Boolean;
                              X_Coordinate : AdaSDL.Scalar;
                              Y_Coordinate : AdaSDL.Scalar
                            ) is abstract;

   -- Joystick Events

   ------------------------------------------------------------
   -- Event : Joystick has moved along an axis.              --
   ------------------------------------------------------------
   procedure Joystick_Axis  ( Object : in out Event_Handler;
                              Device : Joystick.Number;
                              Axis   : Joystick.Axis;
                              Vector : AdaSDL.Integer
                            ) is abstract;

   ------------------------------------------------------------
   -- Event : Joystick has had a button pressed.             --
   ------------------------------------------------------------
   procedure Joystick_Button ( Object  : in out Event_Handler;
                               Device  : Joystick.Number;
                               Button  : Joystick.Button;
                               Pressed : Boolean
                             ) is abstract;

   ------------------------------------------------------------
   -- Event : A Joystick hat has changed position.           --
   ------------------------------------------------------------
   procedure Joystick_Hat    ( Object   : in out Event_Handler;
                               Device   : Joystick.Number;
                               Hat      : Joystick.Hat;
                               Position : Joystick.Hat_Position
                             ) is abstract;

   ------------------------------------------------------------
   -- Event : The Joyball moved!                             --
   ------------------------------------------------------------
   procedure Joystick_Ball   ( Object      : in out Event_Handler;
                               Device      : Joystick.Number;
                               Ball        : Joystick.Ball;
                               X_Vector    : AdaSDL.Integer;
                               Y_Vector    : AdaSDL.Integer
                             ) is abstract;

   -- Resize Event

   ------------------------------------------------------------
   -- Event : The application window has been resized.       --
   ------------------------------------------------------------
   procedure Resize ( Object        : in out Event_Handler;
                      Width, Height : AdaSDL.Scalar ) is abstract;

   -- Redraw Event

   ------------------------------------------------------------
   -- Event : A window manager thinks the screen is messed   --
   --       : up and needs to be redrawn.                    --
   ------------------------------------------------------------
   procedure Screen_Corrupted( Object : in out Event_Handler ) is abstract;

   -- Quit Event

   ------------------------------------------------------------
   -- Returns whether or not the handler wants quit events   --
   -- filtered.  Warning this filtering is a best attempt    --
   -- but not a guaruntee.  The handle must be able to still --
   -- handle a quit event even if quit are suppose to be     --
   -- filtered!                                              --
   ------------------------------------------------------------
   function  Quits_Allowed ( Object  : Event_Handler) return boolean
      is abstract;

   ------------------------------------------------------------
   -- Application must quit.                                 --
   ------------------------------------------------------------
   procedure Quit (Object : in out Event_Handler) is abstract;

   package Null_Event is

      ---------------------------------------------------------
      -- This handler does do anything with the events       --
      -- useful when you want to make an event that only     --
      -- handles certain events.                             --
      -- Note that this handler by default filters quit      --
      -- events so if you want to handle quit events you     --
      -- have to override both Quits_Allowed and Quit.       --
      ---------------------------------------------------------

      type Null_Event_Handler is new Event_Handler with null record;

      procedure Mouse_Focus     ( Object   : in out Null_Event_Handler;
                                  Gained   : Boolean )  ;
      procedure Input_Focus     ( Object   : in out Null_Event_Handler;
                                  Gained   : Boolean )  ;
      procedure Window_Icon     ( Object   : in out Null_Event_Handler;
                                  Restored : Boolean )  ;

      -- KeyBoard Event
      procedure Key ( Object    : in out Null_Event_Handler;
                      Item      : KeyBoard.Key;
                      Pressed   : Boolean;
                      Modifiers : KeyBoard.Modifiers
                    )  ;


      -- Mouse Events
      procedure Mouse_Movement ( Object       : in out Null_Event_Handler;
                                 Buttons_Held : Mouse.Buttons;
                                 X_Coordinate : AdaSDL.Scalar;
                                 Y_Coordinate : AdaSDL.Scalar;
                                 X_Vector     : AdaSDL.Integer;
                                 Y_Vector     : AdaSDL.Integer
                               )  ;

      procedure Mouse_Button   ( Object       : in out Null_Event_Handler;
                                 Button       : Mouse.Button;
                                 Pressed      : Boolean;
                                 X_Coordinate : AdaSDL.Scalar;
                                 Y_Coordinate : AdaSDL.Scalar
                               )  ;

      -- Joystick Events
      procedure Joystick_Axis  ( Object : in out Null_Event_Handler;
                                 Device : Joystick.Number;
                                 Axis   : Joystick.Axis;
                                 Vector : AdaSDL.Integer
                               )  ;

      procedure Joystick_Button ( Object  : in out Null_Event_Handler;
                                  Device  : Joystick.Number;
                                  Button  : Joystick.Button;
                                  Pressed : Boolean
                                )  ;

      procedure Joystick_Hat    ( Object   : in out Null_Event_Handler;
                                  Device   : Joystick.Number;
                                  Hat      : Joystick.Hat;
                                  Position : Joystick.Hat_Position
                                )  ;

      procedure Joystick_Ball   ( Object      : in out Null_Event_Handler;
                                  Device      : Joystick.Number;
                                  Ball        : Joystick.Ball;
                                  X_Vector    : AdaSDL.Integer;
                                  Y_Vector    : AdaSDL.Integer
                                )  ;

      -- Resize Event
      procedure Resize ( Object        : in out Null_Event_Handler;
                         Width, Height : AdaSDL.Scalar )  ;

      -- Redraw Event
      procedure Screen_Corrupted( Object : in out Null_Event_Handler ) ;

      -- Quit Event
      function  Quits_Allowed ( Object  : Null_Event_Handler) return boolean;

      procedure Quit (Object : in out Null_Event_Handler);

   end Null_Event;

end AdaSDL.Events;

