
--  ----------------------------------------------------------------- --
--                                                                    --
--  This is free software; you can redistribute it and/or             --
--  modify it under the terms of the GNU General Public               --
--  License as published by the Free Software Foundation; either      --
--  version 2 of the License, or (at your option) any later version.  --
--                                                                    --
--  This software is distributed in the hope that it will be useful,  --
--  but WITHOUT ANY WARRANTY; without even the implied warranty of    --
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU --
--  General Public License for more details.                          --
--                                                                    --
--  You should have received a copy of the GNU General Public         --
--  License along with this library; if not, write to the             --
--  Free Software Foundation, Inc., 59 Temple Place - Suite 330,      --
--  Boston, MA 02111-1307, USA.                                       --
--                                                                    --
--  ----------------------------------------------------------------- --

--  ----------------------------------------------------------------- --
--  This is a translation, to the Ada programming language, of the    --
--  original C test files written by Sam Lantinga - www.libsdl.org    --
--  translation made by Antonio F. Vargas - amfv@sapo.pt              --
--  ----------------------------------------------------------------- --

with Interfaces.C;
with SDL.Types; use SDL.Types;
package Picture_xbm is

   picture_width  : constant := 32;
   picture_height : constant := 32;

   type picture_bits_Array is
      array (Natural range <>) of aliased Uint8;
   picture_bits : picture_bits_Array :=
      (
      16#00#, 16#00#, 16#00#, 16#00#, 16#00#, 16#00#, 16#00#, 16#00#,
      16#18#, 16#80#, 16#01#, 16#18#, 16#64#, 16#6f#, 16#f6#, 16#26#,
      16#0a#, 16#00#, 16#00#, 16#50#, 16#f2#, 16#ff#, 16#ff#, 16#4f#,
      16#14#, 16#04#, 16#00#, 16#28#, 16#14#, 16#0e#, 16#00#, 16#28#,
      16#10#, 16#32#, 16#00#, 16#08#, 16#94#, 16#03#, 16#00#, 16#08#,
      16#f4#, 16#04#, 16#00#, 16#08#, 16#b0#, 16#08#, 16#00#, 16#08#,
      16#34#, 16#01#, 16#00#, 16#28#, 16#34#, 16#01#, 16#00#, 16#28#,
      16#12#, 16#00#, 16#40#, 16#48#, 16#12#, 16#20#, 16#a6#, 16#48#,
      16#14#, 16#50#, 16#11#, 16#29#, 16#14#, 16#50#, 16#48#, 16#2a#,
      16#10#, 16#27#, 16#ac#, 16#0e#, 16#d4#, 16#71#, 16#e8#, 16#0a#,
      16#74#, 16#20#, 16#a8#, 16#0a#, 16#14#, 16#20#, 16#00#, 16#08#,
      16#10#, 16#50#, 16#00#, 16#08#, 16#14#, 16#00#, 16#00#, 16#28#,
      16#14#, 16#00#, 16#00#, 16#28#, 16#f2#, 16#ff#, 16#ff#, 16#4f#,
      16#0a#, 16#00#, 16#00#, 16#50#, 16#64#, 16#6f#, 16#f6#, 16#26#,
      16#18#, 16#80#, 16#01#, 16#18#, 16#00#, 16#00#, 16#00#, 16#00#,
      16#00#, 16#00#, 16#00#, 16#00#, 16#00#, 16#00#, 16#00#, 16#00#
      );

end Picture_xbm;
