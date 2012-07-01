--  Ada binding to SDL (http://www.libsdl.org), video support
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

package SDL.Video.Support is

   ---------------------------------------------------------------------
   --  Image
   --
   --  Returns a string representation of the given area in the form
   --  "(<X>, <Y>) -> (<W>, <H>)"
   ---------------------------------------------------------------------
   function Image (Area : in Rectangle) return String;

   ---------------------------------------------------------------------
   --  Image
   --
   --  Returns a human readable representation of the Info structure.
   ---------------------------------------------------------------------
   function Image (I : in Info) return String;

   --  Size_Image
   --
   --  Returns a string representation of the given area's size in the
   --  form "<W>x<H>".
   ---------------------------------------------------------------------
   function Size_Image (Area : in Rectangle) return String;

   ---------------------------------------------------------------------
   --  Print_Surface_Info
   ---------------------------------------------------------------------
   procedure Print_Surface_Info (Screen : in Surface);

end SDL.Video.Support;
