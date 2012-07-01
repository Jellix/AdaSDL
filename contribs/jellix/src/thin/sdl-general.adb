--  Ada binding to SDL (http://www.libsdl.org), general subroutines.
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

package body SDL.General is

   type Version_Pointer is access constant Version_Info;
   pragma Convention (Convention => C,
                      Entity     => Version_Pointer);

   ---------------------------------------------------------------------
   --  C_Get_Error
   ---------------------------------------------------------------------
   function C_Get_Error return Interfaces.C.Strings.chars_ptr;
   pragma Import (Convention    => C,
                  Entity        => C_Get_Error,
                  External_Name => "SDL_GetError");

   ---------------------------------------------------------------------
   --  C_Get_Version
   ---------------------------------------------------------------------
   function C_Get_Version return Version_Pointer;
   pragma Import (Convention    => C,
                  Entity        => C_Get_Version,
                  External_Name => "SDL_Linked_Version");

   ---------------------------------------------------------------------
   --  C_Put_Env
   ---------------------------------------------------------------------
   procedure C_Put_Env (Variable : in Interfaces.C.char_array);
   pragma Import (Convention    => C,
                  Entity        => C_Put_Env,
                  External_Name => "SDL_putenv");

   ---------------------------------------------------------------------
   --  Get_Error
   ---------------------------------------------------------------------
   function Get_Error return String is
   begin
      return Interfaces.C.Strings.Value (C_Get_Error);
   end Get_Error;

   ---------------------------------------------------------------------
   --  Get_Version
   ---------------------------------------------------------------------
   function Get_Version return Version_Info is
   begin
      return C_Get_Version.all;
   end Get_Version;

   ---------------------------------------------------------------------
   --  Put_Env
   ---------------------------------------------------------------------
   procedure Put_Env (Name  : in String;
                      Value : in String) is
   begin
      C_Put_Env (Interfaces.C.To_C (Item => Name & "=" & Value));
   end Put_Env;

end SDL.General;
