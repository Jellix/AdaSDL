--  Ada binding to SDL (http://www.libsdl.org), window management.
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
with Interfaces.C.Strings;
with System;

use type Interfaces.C.Strings.chars_ptr;

package body SDL.Window_Management is

   package CStrings renames Interfaces.C.Strings;

   ---------------------------------------------------------------------
   --  C_Get_Caption
   ---------------------------------------------------------------------
   procedure C_Get_Caption (Title : out CStrings.chars_ptr;
                            Icon  : out CStrings.chars_ptr);
   pragma Import (Convention    => C,
                  Entity        => C_Get_Caption,
                  External_Name => "SDL_WM_GetCaption");

   ---------------------------------------------------------------------
   --  C_Set_Caption
   ---------------------------------------------------------------------
   procedure C_Set_Caption (Title : in Interfaces.C.char_array;
                            Icon  : in Interfaces.C.char_array);
   pragma Import (Convention    => C,
                  Entity        => C_Set_Caption,
                  External_Name => "SDL_WM_SetCaption");

   ---------------------------------------------------------------------
   --  C_Set_Icon
   ---------------------------------------------------------------------
   procedure C_Set_Icon (Icon : in Video.Surface;
                         Mask : in System.Address);
   pragma Import (Convention    => C,
                  Entity        => C_Set_Icon,
                  External_Name => "SDL_WM_SetIcon");

   ---------------------------------------------------------------------
   --  Get_Caption
   ---------------------------------------------------------------------
   procedure Get_Caption (Title : in out String;
                          Icon  : in out String) is
      T : CStrings.chars_ptr;
      I : CStrings.chars_ptr;
   begin
      C_Get_Caption (Title => T,
                     Icon  => I);

      if
        T /= CStrings.Null_Ptr
      then
         Ada.Strings.Fixed.Move (Source => CStrings.Value (T),
                                 Target => Title);
      end if;

      if
        I /= CStrings.Null_Ptr
      then
         Ada.Strings.Fixed.Move (Source => CStrings.Value (I),
                                 Target => Icon);
      end if;
   end Get_Caption;

   ---------------------------------------------------------------------
   --  Get_Title
   ---------------------------------------------------------------------
   function Get_Title return String is
      T : CStrings.chars_ptr;
      I : CStrings.chars_ptr;
   begin
      C_Get_Caption (Title => T,
                     Icon  => I);

      if
        T /= CStrings.Null_Ptr
      then
         return CStrings.Value (T);
      else
         return "";
      end if;
   end Get_Title;

   ---------------------------------------------------------------------
   --  Set_Caption
   ---------------------------------------------------------------------
   procedure Set_Caption (Title : in String;
                          Icon  : in String) is
   begin
      C_Set_Caption (Title => Interfaces.C.To_C (Item => Title),
                     Icon  => Interfaces.C.To_C (Item => Icon));
   end Set_Caption;

   ---------------------------------------------------------------------
   --  Set_Icon
   ---------------------------------------------------------------------
   procedure Set_Icon (Icon : in Video.Surface) is
   begin
      C_Set_Icon (Icon => Icon,
                  Mask => System.Null_Address);
   end Set_Icon;

end SDL.Window_Management;
