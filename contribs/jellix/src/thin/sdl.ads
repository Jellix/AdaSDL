--  Ada binding to SDL (http://www.libsdl.org), root package with SDL
--  related type definitions.
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

with Interfaces.C;

package SDL is

   pragma Pure;

   --  C types.
   subtype Double is Interfaces.C.double;
   subtype Int    is Interfaces.C.int;

   --  Basic SDL types.
   subtype UInt8  is Interfaces.Unsigned_8;
   subtype SInt16 is Interfaces.Integer_16;
   subtype UInt16 is Interfaces.Unsigned_16;
   subtype SInt32 is Interfaces.Integer_32;
   subtype UInt32 is Interfaces.Unsigned_32;

   type Bool is new Boolean;
   for Bool'Size use Int'Size;

end SDL;
