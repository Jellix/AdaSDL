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

package AdaSDL.Video.Window_Management is

   procedure Set_Captions ( TitleBar : String := (1..0 => ' ');
                            Icon     : String := (1..0 => ' '));
   ----------------------------------------------------------------
   -- Sets the caption of the display when it is in window form. --
   -- TitleBar is for the window titlebar while Icon is for the  --
   -- text description of the window when minimized.             --
   ----------------------------------------------------------------

   function  Get_Title_Caption return String;
   function  Get_Icon_Caption  return String;
   ----------------------------------------------------------------
   -- Gives access to the Titlebar and Icon Captions.            --
   ----------------------------------------------------------------

   procedure Iconify;
   ----------------------------------------------------------------
   -- Minimizes the window.                                      --
   ----------------------------------------------------------------

   procedure Toggle_Full_Screen;
   ----------------------------------------------------------------
   -- Toogles the display between a full screen to a windows.    --
   ----------------------------------------------------------------

   procedure Grab_Input;
   ----------------------------------------------------------------
   -- Seizes the mouse input for the window.                     --
   ----------------------------------------------------------------

   procedure Release_Input;
   ----------------------------------------------------------------
   -- Releases the mouse input for the window.                   --
   ----------------------------------------------------------------

   function  Is_Input_Grabbed return Boolean;
   ----------------------------------------------------------------
   -- Query status of the mouse input.                           --
   ----------------------------------------------------------------

end AdaSDL.Video.Window_Management;
