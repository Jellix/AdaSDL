--  Ada binding to SDL (http://www.libsdl.org), joystick handling
--  subroutines.
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

with Interfaces.C.Strings;

package body SDL.Joysticks is

   function C_Name (Which : in Stick_Count) return Interfaces.C.Strings.chars_ptr;
   pragma Import (Convention    => C,
                  Entity        => C_Name,
                  External_Name => "SDL_JoystickName");

   ---------------------------------------------------------------------
   -- Name
   ---------------------------------------------------------------------
   function Name (Which : in Stick_Count) return String is
   begin
      return Interfaces.C.Strings.Value (C_Name (Which => Which));
   end Name;

end SDL.Joysticks;
