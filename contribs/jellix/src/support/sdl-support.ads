--  Ada binding to SDL (http://www.libsdl.org), general SDL support
--  extensions.
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

with System.Storage_Elements;

package SDL.Support is

   pragma Preelaborate;

   --  Convenience type for type conversions.
   subtype Byte       is System.Storage_Elements.Storage_Element;
   subtype Byte_Index is System.Storage_Elements.Storage_Offset;
   subtype Byte_Array is System.Storage_Elements.Storage_Array;

   type Byte_Ptr is access all Byte_Array;

end SDL.Support;
