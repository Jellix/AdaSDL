--  Ada binding to SDL (http://www.libsdl.org), keyboard related
--  definitions.
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

package SDL.Keyboard is

   type Key is (--  ASCII control characters
                Unknown,
                Backspace,
                Tab,
                Clear,
                Enter,
                Pause,
                Escape,
               --  ASCII printable characters
                ' ',
                '!',
                '"',
                '#',
                '$',
                --  K_?
                '&',
                ''',
                '(',
                ')',
                '*',
                '+',
                ',',
                '-',
                '.',
                '/',
                '0',
                '1',
                '2',
                '3',
                '4',
                '5',
                '6',
                '7',
                '8',
                '9',
                ':',
                ';',
                '<',
                '=',
                '>',
                '?',
                '@',
                --  Skip uppercase letters.
                '[',
                '\',
                ']',
                '^',
                '_',
                '`',
                'a',
                'b',
                'c',
                'd',
                'e',
                'f',
                'g',
                'h',
                'i',
                'j',
                'k',
                'l',
                'm',
                'n',
                'o',
                'p',
                'q',
                'r',
                's',
                't',
                'u',
                'v',
                'w',
                'x',
                'y',
                'z',
                Delete,
                -- International keyboard syms 160 .. 255
                -- Numeric keypad
                KP_0,
                KP_1,
                KP_2,
                KP_3,
                KP_4,
                KP_5,
                KP_6,
                KP_7,
                KP_8,
                KP_9,
                KP_Period,
                KP_Divide,
                KP_Multiply,
                KP_Minus,
                KP_Plus,
                KP_Enter,
                KP_Equals,
                -- Arrows + Home/End pad
                Up,
                Down,
                Right,
                Left,
                Insert,
                Home,
                K_End,
                Page_Up,
                Page_Down,
                --  Function keys
                F1,
                F2,
                F3,
                F4,
                F5,
                F6,
                F7,
                F8,
                F9,
                F10,
                F11,
                F12,
                F13,
                F14,
                F15,
                --  Key state modifier keys
                Num_Lock,
                Caps_Lock,
                Scroll_Lock,
                R_Shift,
                L_Shift,
                R_Control,
                L_Control,
                R_Alt,
                L_Alt,
                R_Meta,
                L_Meta,
                L_Super, --  Left "Windows" key
                R_Super, --  Right "Windows" key
                Mode,    --  "Alt Gr" key
                Compose, --  multi-key compose key
                --  Miscellaneous function keys
                Help,
                Print,
                Sys_Req,
                Break,
                Menu,
                Power, --  Power Macintosh power key
                Euro,  --  Some european keyboards
                Undo   --  Atari keyboard has Undo
               );
   for Key use (--  ASCII control characters
               Unknown     => 000,
               Backspace   => 008,
               Tab         => 009,
               Clear       => 012,
               Enter       => 013,
               Pause       => 019,
               Escape      => 027,
               --  ASCII printable characters
               ' '         => 032,
               '!'         => 033,
               '"'         => 034,
               '#'         => 035,
               '$'         => 036,
               '&'         => 038,
               '''         => 039,
               '('         => 040,
               ')'         => 041,
               '*'         => 042,
               '+'         => 043,
               ','         => 044,
               '-'         => 045,
               '.'         => 046,
               '/'         => 047,
               '0'         => 048,
               '1'         => 049,
               '2'         => 050,
               '3'         => 051,
               '4'         => 052,
               '5'         => 053,
               '6'         => 054,
               '7'         => 055,
               '8'         => 056,
               '9'         => 057,
               ':'         => 058,
               ';'         => 059,
               '<'         => 060,
               '='         => 061,
               '>'         => 062,
               '?'         => 063,
               '@'         => 064,
               '['         => 091,
               '\'         => 092,
               ']'         => 093,
               '^'         => 094,
               '_'         => 095,
               '`'         => 096,
               'a'         => 097,
               'b'         => 098,
               'c'         => 099,
               'd'         => 100,
               'e'         => 101,
               'f'         => 102,
               'g'         => 103,
               'h'         => 104,
               'i'         => 105,
               'j'         => 106,
               'k'         => 107,
               'l'         => 108,
               'm'         => 109,
               'n'         => 110,
               'o'         => 111,
               'p'         => 112,
               'q'         => 113,
               'r'         => 114,
               's'         => 115,
               't'         => 116,
               'u'         => 117,
               'v'         => 118,
               'w'         => 119,
               'x'         => 120,
               'y'         => 121,
               'z'         => 122,
               Delete      => 127,
                -- International keyboard syms 160 .. 255
               --  Numeric keypad
               KP_0        => 256,
               KP_1        => 257,
               KP_2        => 258,
               KP_3        => 259,
               KP_4        => 260,
               KP_5        => 261,
               KP_6        => 262,
               KP_7        => 263,
               KP_8        => 264,
               KP_9        => 265,
               KP_Period   => 266,
               KP_Divide   => 267,
               KP_Multiply => 268,
               KP_Minus    => 269,
               KP_Plus     => 270,
               KP_Enter    => 271,
               KP_Equals   => 272,
               -- Arrows + Home/End pad
               Up          => 273,
               Down        => 274,
               Right       => 275,
               Left        => 276,
               Insert      => 277,
               Home        => 278,
               K_End       => 279,
               Page_Up     => 280,
               Page_Down   => 281,
               --  Function keys
               F1          => 282,
               F2          => 283,
               F3          => 284,
               F4          => 285,
               F5          => 286,
               F6          => 287,
               F7          => 288,
               F8          => 289,
               F9          => 290,
               F10         => 291,
               F11         => 292,
               F12         => 293,
               F13         => 294,
               F14         => 295,
               F15         => 296,
               --  Key state modifier keys
               Num_Lock    => 300,
               Caps_Lock   => 301,
               Scroll_Lock => 302,
               R_Shift     => 303,
               L_Shift     => 304,
               R_Control   => 305,
               L_Control   => 306,
               R_Alt       => 307,
               L_Alt       => 308,
               R_Meta      => 309,
               L_Meta      => 310,
               L_Super     => 311, --  Left "Windows" key
               R_Super     => 312, --  Right "Windows" key
               Mode        => 313, --  "Alt Gr" key
               Compose     => 314,  --  multi-key compose key
               --  Miscellaneous function keys
               Help        => 315,
               Print       => 316,
               Sys_Req     => 317,
               Break       => 318,
               Menu        => 319,
               Power       => 320, --  Power Macintosh power key
               Euro        => 321, --  Some european keyboards
               Undo        => 322  --  Atari keyboard has Undo
             );
   for Key'Size use Int'Size;

   type Modifier_Flags is new UInt32;

   MOD_NONE     : constant Modifier_Flags := 16#0000#;
   MOD_LSHIFT   : constant Modifier_Flags := 16#0001#;
   MOD_RSHIFT   : constant Modifier_Flags := 16#0002#;
   MOD_LCTRL    : constant Modifier_Flags := 16#0040#;
   MOD_RCTRL    : constant Modifier_Flags := 16#0080#;
   MOD_LALT     : constant Modifier_Flags := 16#0100#;
   MOD_RALT     : constant Modifier_Flags := 16#0200#;
   MOD_LMETA    : constant Modifier_Flags := 16#0400#;
   MOD_RMETA    : constant Modifier_Flags := 16#0800#;
   MOD_NUM      : constant Modifier_Flags := 16#1000#;
   MOD_CAPS     : constant Modifier_Flags := 16#2000#;
   MOD_MODE     : constant Modifier_Flags := 16#4000#;
   MOD_RESERVED : constant Modifier_Flags := 16#8000#;

   --  Combined masks.
   MOD_CTRL  : constant Modifier_Flags := MOD_LCTRL  or MOD_RCTRL;
   MOD_SHIFT : constant Modifier_Flags := MOD_LSHIFT or MOD_RSHIFT;
   MOD_ALT   : constant Modifier_Flags := MOD_LALT   or MOD_RALT;
   MOD_META  : constant Modifier_Flags := MOD_LMETA  or MOD_RMETA;

   type Key_Symbol is
      record
         Scan_Code : UInt8;          --  hardware specific scan code
         Symbol    : Key;            --  virtual key symbol
         Modifier  : Modifier_Flags; --  current key modifiers
         Unicode   : UInt16;         --  translated UCS-2 character
      end record;
   pragma Convention (Convention => C,
                      Entity     => Key_Symbol);

end SDL.Keyboard;
