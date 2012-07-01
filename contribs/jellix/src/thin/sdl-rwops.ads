--  Ada binding to SDL (http://www.libsdl.org), stream handling wrapper.
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

with System;

private package SDL.RWOps is

   --  Opaque C type.
   type RW_Ops is new System.Address;

   ---------------------------------------------------------------------
   --  RW_From_File
   ---------------------------------------------------------------------
   function RW_From_File (File : in Interfaces.C.char_array;
                          Mode : in Interfaces.C.char_array) return RW_Ops;

private

   pragma Import (Convention    => C,
                  Entity        => RW_From_File,
                  External_Name => "SDL_RWFromFile");

end SDL.RWOps;
