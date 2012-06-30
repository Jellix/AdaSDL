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

with SDL.Events;
use  SDL.Events;
with SDL.Mouse;
use  SDL.Mouse;
with SDL.Types;
use  SDL.Types;
with SDL.Joystick;
use  SDL.Joystick;
with SDL.Keyboard;
use  SDL.Keyboard;
with SDL.Keysym;
with SDL.Active;
with Interfaces.C;
use  Interfaces.C;

with AdaSDL.Event_Filters;

with Ada.Exceptions;
use  Ada.Exceptions;

package body AdaSDL.Events is

   Error_Signal : Constant Interfaces.C.Int := -1;

   ---------------------------------------------------------
   -- Translate SDL.Keysym.Key to Keyboard.Key            --
   ---------------------------------------------------------

   function To_Key (Item : SDL.Keysym.Key) return Keyboard.Key is
      use SDL.Keysym;
   begin
      case Item is
         when K_BACKSPACE  => return Keyboard.bs;
         when K_TAB        => return Keyboard.tab;
         when K_CLEAR      => return Keyboard.clear;
         when K_RETURN     => return Keyboard.cr;
         when K_PAUSE      => return Keyboard.Pause;
         when K_ESCAPE     => return Keyboard.esc;
         when K_SPACE      => return Keyboard.' ';
         when K_EXCLAIM    => return Keyboard.'!';
         when K_QUOTEDBL   => return Keyboard.'"';
         when K_HASH       => return Keyboard.'#';
         when K_DOLLAR     => return Keyboard.'$';
         when K_AMPERSAND  => return Keyboard.'&';
         when K_QUOTE      => return Keyboard.''';
         when K_LEFTPAREN  => return Keyboard.'(';
         when K_RIGHTPAREN => return Keyboard.')';
         when K_ASTERISK   => return Keyboard.'*';
         when K_PLUS       => return Keyboard.'+';
         when K_COMMA      => return Keyboard.',';
         when K_MINUS      => return Keyboard.'-';
         when K_PERIOD     => return Keyboard.'.';
         when K_SLASH      => return Keyboard.'/';
         when K_0          => return Keyboard.'0';
         when K_1          => return Keyboard.'1';
         when K_2          => return Keyboard.'2';
         when K_3          => return Keyboard.'3';
         when K_4          => return Keyboard.'4';
         when K_5          => return Keyboard.'5';
         when K_6          => return Keyboard.'6';
         when K_7          => return Keyboard.'7';
         when K_8          => return Keyboard.'8';
         when K_9          => return Keyboard.'9';
         when K_COLON      => return Keyboard.':';
         when K_SEMICOLON  => return Keyboard.';';
         when K_LESS       => return Keyboard.'<';
         when K_EQUALS     => return Keyboard.'=';
         when K_GREATER    => return Keyboard.'>';
         when K_QUESTION   => return Keyboard.'?';
         when K_AT         => return Keyboard.'@';
         when K_LEFTBRACKET => return Keyboard.'[';
         when K_BACKSLASH   => return Keyboard.'\';
         when K_RIGHTBRACKET=> return Keyboard.']';
         when K_CARET       => return Keyboard.'^';
         when K_UNDERSCORE  => return Keyboard.'_';
         when K_BACKQUOTE   => return Keyboard.'`';
         when K_a           => return Keyboard.'a';
         when K_b           => return Keyboard.'b';
         when K_c           => return Keyboard.'c';
         when K_d           => return Keyboard.'d';
         when K_e           => return Keyboard.'e';
         when K_f           => return Keyboard.'f';
         when K_g           => return Keyboard.'g';
         when K_h           => return Keyboard.'h';
         when K_i           => return Keyboard.'i';
         when K_j           => return Keyboard.'j';
         when K_k           => return Keyboard.'k';
         when K_l           => return Keyboard.'l';
         when K_m           => return Keyboard.'m';
         when K_n           => return Keyboard.'n';
         when K_o           => return Keyboard.'o';
         when K_p           => return Keyboard.'p';
         when K_q           => return Keyboard.'q';
         when K_r           => return Keyboard.'r';
         when K_s           => return Keyboard.'s';
         when K_t           => return Keyboard.'t';
         when K_u           => return Keyboard.'u';
         when K_v           => return Keyboard.'v';
         when K_w           => return Keyboard.'w';
         when K_x           => return Keyboard.'x';
         when K_y           => return Keyboard.'y';
         when K_z           => return Keyboard.'z';
         when K_DELETE      => return Keyboard.del;
         when K_KP0         => return Keyboard.Key_0;
         when K_KP1         => return Keyboard.Key_1;
         when K_KP2         => return Keyboard.Key_2;
         when K_KP3         => return Keyboard.Key_3;
         when K_KP4         => return Keyboard.Key_4;
         when K_KP5         => return Keyboard.Key_5;
         when K_KP6         => return Keyboard.Key_6;
         when K_KP7         => return Keyboard.Key_7;
         when K_KP8         => return Keyboard.Key_8;
         when K_KP9         => return Keyboard.Key_9;
         when K_KP_PERIOD    => return Keyboard.Key_Period;
         when K_KP_DIVIDE    => return Keyboard.Key_Divide;
         when K_KP_MULTIPLY  => return Keyboard.Key_Multiply;
         when K_KP_MINUS     => return Keyboard.Key_Minus;
         when K_KP_PLUS      => return Keyboard.Key_Plus;
         when K_KP_ENTER     => return Keyboard.Key_Enter;
         when K_KP_EQUALS    => return Keyboard.Key_Equals;
         when K_UP           => return Keyboard.Up;
         when K_DOWN         => return Keyboard.Down;
         when K_RIGHT        => return Keyboard.Right;
         when K_LEFT         => return Keyboard.Left;
         when K_INSERT       => return Keyboard.Insert;
         when K_HOME         => return Keyboard.Home;
         when K_END          => return Keyboard.End_Key;
         when K_PAGEUP       => return Keyboard.PageUp;
         when K_PAGEDOWN     => return Keyboard.PageDown;
         when K_F1           => return Keyboard.F1 ;
         when K_F2           => return Keyboard.F2 ;
         when K_F3           => return Keyboard.F3 ;
         when K_F4           => return Keyboard.F4 ;
         when K_F5           => return Keyboard.F5 ;
         when K_F6           => return Keyboard.F6 ;
         when K_F7           => return Keyboard.F7 ;
         when K_F8           => return Keyboard.F8 ;
         when K_F9           => return Keyboard.F9 ;
         when K_F10          => return Keyboard.F10;
         when K_F11          => return Keyboard.F11;
         when K_F12          => return Keyboard.F12;
         when K_F13          => return Keyboard.F13;
         when K_F14          => return Keyboard.F14;
         when K_F15          => return Keyboard.F15;
         when K_NUMLOCK      => return Keyboard.NumLock;
         when K_CAPSLOCK     => return Keyboard.CapsLock;
         when K_SCROLLOCK    => return Keyboard.ScrollLock;
         when K_RSHIFT       => return Keyboard.RightShift;
         when K_LSHIFT       => return Keyboard.LeftShift;
         when K_RCTRL        => return Keyboard.RightControl;
         when K_LCTRL        => return Keyboard.LeftControl;
         when K_RALT         => return Keyboard.RightAlt;
         when K_LALT         => return Keyboard.LeftAlt;
         when K_RMETA        => return Keyboard.RightMeta;
         when K_LMETA        => return Keyboard.LeftMeta;
         when K_LSUPER       => return Keyboard.LeftSuper;
         when K_RSUPER       => return Keyboard.RightSuper;
         when K_MODE         => return Keyboard.Mode;
         when K_COMPOSE      => return Keyboard.Compose;
         when K_HELP         => return Keyboard.Help;
         when K_PRINT        => return Keyboard.Print;
         when K_SYSREQ       => return Keyboard.SysReq;
         when K_BREAK        => return Keyboard.Break;
         when K_MENU         => return Keyboard.Menu;
         when K_POWER        => return Keyboard.Power;
         when K_EURO         => return Keyboard.Euro;
         when others         => return Keyboard.Unknown;
      end case;
   end To_Key;

   ---------------------------------------------------------
   -- Translate SDL.Keysym.SDLmod to Keyboard.Modifiers   --
   ---------------------------------------------------------

   function To_Modifiers (Item : SDL.Keysym.SDLmod)
                         return Keyboard.Modifiers is
      use SDL.Keysym;
      use Keyboard;

      Temp : constant Keyboard.Modifiers
        := (Numlock => (Item and KMOD_NUM) /= 0,
            Capslock => (Item and KMOD_CAPS) /= 0,
            Control => (Item and KMOD_CTRL) /= 0,
            Alt => (Item and KMOD_ALT) /= 0,
            Shift => (Item and KMOD_SHIFT) /= 0,
            LeftControl => (Item and KMOD_LCTRL) /= 0,
            RightControl => (Item and KMOD_RCTRL) /= 0,
            LeftShift => (Item and KMOD_LSHIFT) /= 0,
            RightShift => (Item and KMOD_RSHIFT) /= 0,
            LeftAlt => (Item and KMOD_LALT) /= 0,
            RightAlt => (Item and KMOD_RALT) /= 0
            );
   begin
      return Temp;
   end To_Modifiers;

   ---------------------------------------------------------
   -- Translate Uint8 to Mouse.Button                     --
   ---------------------------------------------------------

   function To_Button (Item : Uint8) return Mouse.Button is
   begin
      if Button_ID (Item) = SDL.Mouse.Button_Left then
         return Mouse.Left;
      elsif Button_ID (Item) = SDL.Mouse.Button_Middle then
         return Mouse.Center;
      else
         return Mouse.Right;
      end if;
   end To_Button;

   ---------------------------------------------------------
   -- Translate Uint8 to Mouse.Buttons                    --
   ---------------------------------------------------------

   function To_Buttons (Item : Uint8) return Mouse.Buttons is

      Decoder : constant array(Mouse.Button) of Uint8
        := (Mouse.Left => 1, Mouse.Center => 2, Mouse.Right =>4);

      Temp    : Mouse.Buttons;

   begin
      for I in Mouse.Button loop
         Temp(I) := (Item and Decoder(I)) /= 0;
      end loop;

      return Temp;
   end To_Buttons;

   ---------------------------------------------------------
   -- Translate Uint8 to Joystick.Hat_Position            --
   ---------------------------------------------------------

   function To_Hat (Item : HAT_State) return Joystick.Hat_Position is
   begin
      case Item is
         when Hat_Centered =>
            return Joystick.Center;
         when Hat_Up =>
            return Joystick.Up;
         when Hat_Right =>
            return Joystick.Right;
         when Hat_Down =>
            return Joystick.Down;
         when Hat_Left =>
            return Joystick.Left;
         when Hat_RightUp =>
            return Joystick.RightUp;
         when Hat_RightDown =>
            return Joystick.RightDown;
         when Hat_LeftUp =>
            return Joystick.LeftUp;
         when Hat_LeftDown =>
            return Joystick.LeftDown;
         when others =>
            raise Constraint_Error;
      end case;
   end To_Hat;

   ------------
   -- Handle --
   ------------

   procedure Handle
     (Using       : in out Event_Handler'Class;
      More_Events : out Boolean)
   is

      --------------------------------------------------------
      -- Translates the event parameters in the thick       --
      -- binding's type schema and calls the appropriate    --
      -- event handling routine in Using.                   --
      --------------------------------------------------------

      procedure Dispatch (Current_Event : SDL.Events.Event) is
         use type SDL.Active.Active_State;
      begin
         case Current_Event.The_Type is
            when IsActiveEvent      =>
               case Current_Event.Active.State is
                  when SDL.Active.APPMOUSEFOCUS =>
                     Mouse_Focus (Using, Current_Event.Active.Gain = 1);
                  when SDL.Active.APPINPUTFOCUS =>
                     Input_Focus (Using, Current_Event.Active.Gain = 1);
                  when SDL.Active.APPACTIVE =>
                     Window_Icon (Using, Current_Event.Active.Gain = 1);
                  when others => null;
               end case;
            when KeyDown | KeyUp  =>
               Key (Using,
                    To_Key (Current_Event.Key.Keysym.Sym),
                    KeyDown = Current_Event.The_Type,
                    To_Modifiers (Current_Event.Key.Keysym.The_Mod)
                    );
            when MouseMotion =>
               Mouse_Movement (Using,
                               To_Buttons (Current_Event.Motion.State),
                               AdaSDL.Scalar (Current_Event.Motion.X),
                               AdaSDL.Scalar (Current_Event.Motion.Y),
                               AdaSDL.Integer (Current_Event.Motion.XRel),
                               AdaSDL.Integer (Current_Event.Motion.YRel)
                               );
            when MouseButtonDown | MouseButtonUP =>
               Mouse_Button (Using,
                             To_Button (Current_Event.Button.Button),
                             MouseButtonDown = Current_Event.The_Type,
                             AdaSDL.Scalar (Current_Event.Button.X),
                             AdaSDL.Scalar (Current_Event.Button.Y)
                             );
            when JoyAxisMotion     =>
               if Current_Event.Jaxis.Axis = 0 then
                  Joystick_Axis (Using,
                                 Joystick.Number (Current_Event.Jaxis.Which),
                                 Joystick.X,
                                 AdaSDL.Integer (Current_Event.Jaxis.Value)
                                 );
               elsif Current_Event.Jaxis.Axis = 1 then
                  Joystick_Axis (Using,
                                 Joystick.Number (Current_Event.Jaxis.Which),
                                 Joystick.Y,
                                 AdaSDL.Integer (Current_Event.Jaxis.Value)
                                 );
               end if;
            when JoyBallMotion     =>
               Joystick_Ball (Using,
                              Joystick.Number (Current_Event.Jball.Which),
                              Joystick.Ball (Current_Event.Jball.Ball),
                              AdaSDL.Integer (Current_Event.Jball.Xrel),
                              AdaSDL.Integer (Current_Event.Jball.Yrel)
                              );
            when JoyHatMotion      =>
               Joystick_Hat (Using,
                             Joystick.Number (Current_Event.Jhat.Which),
                             Joystick.Hat (Current_Event.Jhat.Hat),
                             To_Hat (Current_Event.Jhat.Value)
                             );
            when JoyButtonDown | JoyButtonUp   =>
               Joystick_Button (Using,
                                Joystick.Number (Current_Event.Jbutton.Which),
                                Joystick.Button (Current_Event.Jbutton.Button),
                                JoyButtonDown = Current_Event.The_Type
                                );
            when VideoResize     =>
               Resize (Using,
                       AdaSDL.Scalar (Current_Event.Resize.W),
                       AdaSDL.Scalar (Current_Event.Resize.H)
                       );
            when SDL.Events.Quit        =>
               Quit (Using);
            when others =>
               null;
         end case;
      end Dispatch;

      -----------------------------------------------------------
      -- Grabs the current event and dispatches it.  Also      --
      -- filters out quit events if required by Using.         --
      -----------------------------------------------------------

      Current_Event   : aliased SDL.Events.Event;

      Previous_Filter : SDL.Events.EventFilter_Ptr
        := GetEventFilter;

      Q_Filter        : constant SDL.Events.EventFilter_Ptr
        := AdaSDL.Event_Filters.Quit_Filter'Access;

   begin

      if not Quits_Allowed (Using) then
         AdaSDL.Event_Filters.Dispatcher := Dispatch'Unrestricted_Access;
         SetEventFilter (Q_Filter);
         -- SDL.Events.EventState (SDL.Events.Quit, SDL.Events.IGNORE);
      end if;

      if PollEvent (Current_Event'Unchecked_Access) /= 0 then

         Dispatch (Current_Event);

         AdaSDL.Event_Filters.Dispatcher := null;
         SetEventFilter (Previous_Filter);
         -- SDL.Events.EventState (SDL.Events.Quit, SDL.Events.ENABLE);

         More_Events := Poll_Event /= 0;

      else
         More_Events := False;
      end if;

      AdaSDL.Event_Filters.Dispatcher := null;
      SetEventFilter (Previous_Filter);
      -- SDL.Events.EventState (SDL.Events.Quit, SDL.Events.ENABLE);

   exception
      when Unknown : others =>
         AdaSDL.Event_Filters.Dispatcher := null;
         SetEventFilter (Previous_Filter);
         -- SDL.Events.EventState (SDL.Events.Quit, SDL.Events.ENABLE);
         Ada.Exceptions.Raise_Exception
              ( E       => Event_Error'Identity,
                Message => Exception_Name (Unknown) & " : "
                           & Exception_Message (Unknown)
              );
   end Handle;

   ----------------
   -- Null_Event --
   ----------------

   package body Null_Event is

      -----------------
      -- Input_Focus --
      -----------------

      procedure Input_Focus
        (Object   : in out Null_Event_Handler;
         Gained   : Boolean)
      is
      begin
         null;
      end Input_Focus;

      -------------------
      -- Joystick_Axis --
      -------------------

      procedure Joystick_Axis
        (Object : in out Null_Event_Handler;
         Device : Joystick.Number;
         Axis   : Joystick.Axis;
         Vector : AdaSDL.Integer)
      is
      begin
         null;
      end Joystick_Axis;

      -------------------
      -- Joystick_Ball --
      -------------------

      procedure Joystick_Ball
        (Object      : in out Null_Event_Handler;
         Device      : Joystick.Number;
         Ball        : Joystick.Ball;
         X_Vector    : AdaSDL.Integer;
         Y_Vector    : AdaSDL.Integer)
      is
      begin
         null;
      end Joystick_Ball;

      ---------------------
      -- Joystick_Button --
      ---------------------

      procedure Joystick_Button
        (Object  : in out Null_Event_Handler;
         Device  : Joystick.Number;
         Button  : Joystick.Button;
         Pressed : Boolean)
      is
      begin
         null;
      end Joystick_Button;

      ------------------
      -- Joystick_Hat --
      ------------------

      procedure Joystick_Hat
        (Object   : in out Null_Event_Handler;
         Device   : Joystick.Number;
         Hat      : Joystick.Hat;
         Position : Joystick.Hat_Position)
      is
      begin
         null;
      end Joystick_Hat;

      ---------
      -- Key --
      ---------

      procedure Key
        (Object    : in out Null_Event_Handler;
         Item      : KeyBoard.Key;
         Pressed   : Boolean;
         Modifiers : KeyBoard.Modifiers)
      is
      begin
         null;
      end Key;

      ------------------
      -- Mouse_Button --
      ------------------

      procedure Mouse_Button
        (Object       : in out Null_Event_Handler;
         Button       : Mouse.Button;
         Pressed      : Boolean;
         X_Coordinate : AdaSDL.Scalar;
         Y_Coordinate : AdaSDL.Scalar)
      is
      begin
         null;
      end Mouse_Button;

      -----------------
      -- Mouse_Focus --
      -----------------

      procedure Mouse_Focus
        (Object   : in out Null_Event_Handler;
         Gained   : Boolean)
      is
      begin
         null;
      end Mouse_Focus;

      --------------------
      -- Mouse_Movement --
      --------------------

      procedure Mouse_Movement
        (Object       : in out Null_Event_Handler;
         Buttons_Held : Mouse.Buttons;
         X_Coordinate : AdaSDL.Scalar;
         Y_Coordinate : AdaSDL.Scalar;
         X_Vector     : AdaSDL.Integer;
         Y_Vector     : AdaSDL.Integer)
      is
      begin
         null;
      end Mouse_Movement;

      --------------------
      -- Quit_Requested --
      --------------------

      function  Quits_Allowed ( Object  : Null_Event_Handler) return boolean is
      begin
         return False;
      end Quits_Allowed;

      procedure Quit (Object : in out Null_Event_Handler) is
      begin
         null;
      end Quit;

      ------------
      -- Resize --
      ------------

      procedure Resize
        (Object        : in out Null_Event_Handler;
         Width, Height : AdaSDL.Scalar)
      is
      begin
         null;
      end Resize;

      ----------------------
      -- Screen_Corrupted --
      ----------------------

      procedure Screen_Corrupted (Object : in out Null_Event_Handler) is
      begin
         null;
      end Screen_Corrupted;

      -----------------
      -- Window_Icon --
      -----------------

      procedure Window_Icon
        (Object   : in out Null_Event_Handler;
         Restored : Boolean)
      is
      begin
         null;
      end Window_Icon;

   end Null_Event;

end AdaSDL.Events;

