-- ----------------------------------------------------------------- --
--                AdaSDL                                             --
--       (Thick)  Binding to Simple Direct Media Layer               --
--                Copyright (C) 2002 Chad R. Meiners                 --
--                E-mail: crmeiners@hotmail.com                      --
-- ----------------------------------------------------------------- --
--                                                                   --
-- This library is free software; you can redistribute it and/or     --
-- modify it under the terms of the GNU General Public               --
-- License as published by the Free Software Foundation; either      --
-- version 2 of the License, or (at your option) any later version.  --
--                                                                   --
-- This library is distributed in the hope that it will be useful,   --
-- but WITHOUT ANY WARRANTY; without even the implied warranty of    --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU --
-- General Public License for more details.                          --
--                                                                   --
-- You should have received a copy of the GNU General Public         --
-- License along with this library; if not, write to the             --
-- Free Software Foundation, Inc., 59 Temple Place - Suite 330,      --
-- Boston, MA 02111-1307, USA.                                       --
--                                                                   --
-- As a special exception, if other files instantiate generics from  --
-- this unit, or you link this unit with other files to produce an   --
-- executable, this  unit  does not  by itself cause  the resulting  --
-- executable to be covered by the GNU General Public License. This  --
-- exception does not however invalidate any other reasons why the   --
-- executable file  might be covered by the  GNU Public License.     --
-- ----------------------------------------------------------------- --

with SDL.Video;
with SDL.Types;
with Interfaces.C.Strings;

use  Interfaces.C.Strings;

package body AdaSDL.Video.Window_Management is

   ----------------------
   -- Get_Icon_Caption --
   ----------------------

   function Get_Icon_Caption return String is
      Title : aliased Chars_Ptr;
      Icon  : aliased Chars_Ptr;
   begin

      SDL.Video.WM_GetCaption (Title'Unchecked_Access,
                               Icon'Unchecked_Access);

      declare
         Result : constant String := Value (Icon);
      begin

         --Free (Title);
         --Free (Icon);

         return Result;
      end;
   end Get_Icon_Caption;

   -----------------------
   -- Get_Title_Caption --
   -----------------------

   function Get_Title_Caption return String is
      Title : aliased Chars_Ptr;
      Icon  : aliased Chars_Ptr;
   begin

      SDL.Video.WM_GetCaption (Title'Unchecked_Access,
                               Icon'Unchecked_Access);

      declare
         Result : constant String := Value (Title);
      begin
         --Free (Title);
         --Free (Icon);

         return Result;
      end;
   end Get_Title_Caption;

   ----------------
   -- Grab_Input --
   ----------------

   procedure Grab_Input is
      Result : constant SDL.Video.GrabMode
             := SDL.Video.WM_GrabInput (SDL.Video.GRAB_ON);
   begin
      null;
   end Grab_Input;

   -------------
   -- Iconify --
   -------------

   procedure Iconify is
   begin
      SDL.Video.WM_IconifyWindow;
   end Iconify;

   ----------------------
   -- Is_Input_Grabbed --
   ----------------------

   function Is_Input_Grabbed return Boolean is
      Result : constant SDL.Video.GrabMode
             := SDL.Video.WM_GrabInput (SDL.Video.GRAB_QUERY);
      use type SDL.Video.GrabMode;
   begin
      return Result = SDL.Video.GRAB_ON;
   end Is_Input_Grabbed;

   -------------------
   -- Release_Input --
   -------------------

   procedure Release_Input is
      Result : constant SDL.Video.GrabMode
             := SDL.Video.WM_GrabInput (SDL.Video.GRAB_OFF);
   begin
      null;
   end Release_Input;

   ------------------
   -- Set_Captions --
   ------------------

   procedure Set_Captions
     (TitleBar : String := (1..0 => ' ');
      Icon     : String := (1..0 => ' '))
   is
      Title : Chars_Ptr := Null_Ptr;
      sIcon : Chars_Ptr := Null_Ptr;
   begin

      if TitleBar'Length > 0 then
         Title := New_String (TitleBar);
      end if;

      if Icon'Length > 0 then
         sIcon := New_String (Icon);
      end if;

      SDL.Video.WM_SetCaption (Title, sIcon);

      --Free (Title);
      --Free (sIcon);

   end Set_Captions;

   ------------------------
   -- Toggle_Full_Screen --
   ------------------------

   procedure Toggle_Full_Screen is
   begin
      null;
   end Toggle_Full_Screen;

end AdaSDL.Video.Window_Management;

