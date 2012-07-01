--  Ada binding to SDL (http://www.libsdl.org), CD-ROM support
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

with Ada.Strings.Fixed;

package body SDL.CD_ROM.Support is

   ---------------------------------------------------------------------
   --  Trim
   --
   --  Rename with default parameter to save some characters.
   ---------------------------------------------------------------------
   function Trim
     (Source : in String;
      Side   : in Ada.Strings.Trim_End := Ada.Strings.Both) return String
     renames Ada.Strings.Fixed.Trim;

   ---------------------------------------------------------------------
   -- Image
   ---------------------------------------------------------------------
   function Image (T : in CD_Track) return String is
   begin
      return
        String'("[" & Trim (Source => CD_Track_Number'Image (T.Id)) & ", " &
                CD_Track_Type'Image   (T.Track_Type) & "] @" &
                Trim (Source => CD_Frame_Number'Image (T.Offset)) & "+" &
                Trim (Source => CD_Frame_Count'Image  (T.Length)));
   end Image;

end SDL.CD_ROM.Support;
