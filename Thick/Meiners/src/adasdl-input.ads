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

package AdaSDL.Input is

   package Keyboard is

      ---------------------------------------------------
      -- Platform independent representation of keys.  --
      ---------------------------------------------------

      type Key is
        (bs,    tab,     cr,     esc,
         ' ',   '!',    '"',    '#',    '$',    '%',    '&',    ''',
         '(',   ')',    '*',    '+',    ',',    '-',    '.',    '/',
         '0',   '1',    '2',    '3',    '4',    '5',    '6',    '7',
         '8',   '9',    ':',    ';',    '<',    '=',    '>',    '?',
         '@',   '[',    '\',    ']',    '^',    '_',
         '`',   'a',    'b',    'c',    'd',    'e',    'f',    'g',
         'h',   'i',    'j',    'k',    'l',    'm',    'n',    'o',
         'p',   'q',    'r',    's',    't',    'u',    'v',    'w',
         'x',   'y',    'z',    '{',    '|',    '}',    '~',    del,
         Clear, Pause, Key_0, Key_1, Key_2, Key_3, Key_4, Key_5, Key_6,
         Key_7, Key_8, Key_9, Key_Period, Key_Divide, Key_Multiply,
         Key_Minus, Key_Plus, Key_Enter, Key_Equals, Up, Down,
         Right, Left, Insert, Home, End_Key, PageUp, PageDown,
         F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, F13,
         F14, F15, NumLock, CapsLock, ScrollLock, RightShift, LeftShift,
         RightControl, LeftControl, RightAlt, LeftAlt, RightMeta,
         LeftMeta, RightSuper, LeftSuper, Mode, Compose, Help, Print,
         SysReq, Break, Menu, Power, Euro, Unknown);

      --------------------
      -- Key Modifiers. --
      --------------------

      type Modifier is
        (Numlock, Capslock, Control, Alt, Shift,
         LeftControl, RightControl,
         LeftShift, RightShift, LeftAlt, RightAlt);

      ---------------------------------------------------------------
      -- Set of active keyboard modifiers True is active, False    --
      -- is not active.                                            --
      ---------------------------------------------------------------

      type Modifiers is array(Modifier) of Boolean;

   end Keyboard;

   package Mouse is

      --------------------------------
      -- the three types of buttons --
      --------------------------------
      type Button  is (Left, Center, Right);

      --------------------------------
      -- set of Buttons pressed     --
      --------------------------------
      type Buttons is array(Button) of Boolean;

      procedure Show;
      ---------------------
      -- Show the mouse. --
      ---------------------

      procedure Hide;
      ---------------------
      -- Hide the mouse  --
      ---------------------

   end Mouse;

   package JoyStick is

      --------------------------------
      -- joystick device number     --
      --------------------------------
      type Number    is mod 256;

      --------------------------------
      -- joystick coordinate axis   --
      --------------------------------
      type Axis      is (X, Y);

      --------------------------------
      -- joystick button number     --
      --------------------------------
      type Button    is mod 256;

      --------------------------------
      -- joystick hat number        --
      --------------------------------
      type Hat       is Mod 256;

      --------------------------------
      -- position the joystick hat  --
      -- can be in                  --
      --------------------------------
      type Hat_Position is
        (RightUp, Up, LeftUp,
         Right, Center, Left,
         RightDown, Down, LeftDown);

      --------------------------------
      -- joyball number             --
      --------------------------------
      type Ball      is mod 256;

   end JoyStick;

end AdaSDL.Input;
