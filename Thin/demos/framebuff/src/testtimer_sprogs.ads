
-- ----------------------------------------------------------------- --
--                                                                   --
-- This is free software; you can redistribute it and/or             --
-- modify it under the terms of the GNU General Public               --
-- License as published by the Free Software Foundation; either      --
-- version 2 of the License, or (at your option) any later version.  --
--                                                                   --
-- This software is distributed in the hope that it will be useful,  --
-- but WITHOUT ANY WARRANTY; without even the implied warranty of    --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU --
-- General Public License for more details.                          --
--                                                                   --
-- You should have received a copy of the GNU General Public         --
-- License along with this library; if not, write to the             --
-- Free Software Foundation, Inc., 59 Temple Place - Suite 330,      --
-- Boston, MA 02111-1307, USA.                                       --
--                                                                   --
-- ----------------------------------------------------------------- --

-- ----------------------------------------------------------------- --
-- This is a translation, to the Ada programming language, of the    --
-- original C test files written by Sam Lantinga - www.libsdl.org    --
-- translation made by Antonio F. Vargas - amfv@sapo.pt              --
-- ----------------------------------------------------------------- --

with System;
with Interfaces.C;
with SDL.Types; use SDL.Types;

package TestTimer_Sprogs is
   package C  renames Interfaces.C;
   ticks : C.int := 0;

   function ticktock (interval  : Uint32) return Uint32;
   pragma Convention (C, ticktock);

   function callback (interval : Uint32; param : System.Address) return Uint32;
   pragma Convention (C, callback);

end TestTimer_Sprogs;
