--  Ada binding to SDL (http://www.libsdl.org), Audio support
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

package SDL.Audio.Support is

   ---------------------------------------------------------------------
   --  Image
   --
   --  Returns a human readable representation of a Conversion record.
   ---------------------------------------------------------------------
   function Image (CVT : in Conversion) return String;

   ---------------------------------------------------------------------
   --  Image
   --
   --  Returns a human readable representation of a Format_Id.
   ---------------------------------------------------------------------
   function Image (Format : in Format_Id) return String;

   ---------------------------------------------------------------------
   --  Image
   --
   --  Returns a human readable representation of an Audio_Spec.
   ---------------------------------------------------------------------
   function Image (Spec : in Audio_Spec) return String;

end SDL.Audio.Support;
