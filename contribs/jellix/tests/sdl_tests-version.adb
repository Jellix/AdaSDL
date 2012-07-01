--  AdaSDL, version retrieval test stuff.
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

with Ada.Strings.Fixed,
     Ada.Text_IO;
with SDL.General;

package body SDL_Tests.Version is

   ---------------------------------------------------------------------
   -- Print_Version_Number
   ---------------------------------------------------------------------
   procedure Print_Version_Number is
      V_Info : constant SDL.General.Version_Info := SDL.General.Get_Version;
   begin
      Ada.Text_IO.Put_Line
        ("SDL_Version: " &
         Ada.Strings.Fixed.Trim (Source => SDL.UInt8'Image (V_Info.Major),
                                 Side   => Ada.Strings.Both) & "." &
         Ada.Strings.Fixed.Trim (Source => SDL.UInt8'Image (V_Info.Minor),
                                 Side   => Ada.Strings.Both) & "." &
         Ada.Strings.Fixed.Trim (Source => SDL.UInt8'Image (V_Info.Patch),
                                 Side   => Ada.Strings.Both));
   end Print_Version_Number;

end SDL_Tests.Version;
