--  AdaSDL, main procedure for test stuff.
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

with Ada.Text_IO;

with SDL.Constants,
     SDL.General,
     SDL.Window_Management;

with SDL_Tests.Audio,
     SDL_Tests.CDROM,
     SDL_Tests.Events,
     SDL_Tests.Icon,
     SDL_Tests.Joystick,
     SDL_Tests.Version,
     SDL_Tests.Video;

use type SDL.Int;

use type SDL.General.Init_Flags,
         SDL.Window_Management.Grab_Mode;

------------------------------------------------------------------------
--  Main
------------------------------------------------------------------------
procedure Main is
   Ret_Code : SDL.Int;
begin
   --  Force DirectX as rendering device.
   SDL.General.Put_Env (Name  => "SDL_VIDEODRIVER",
                        Value => "directx");

   Ret_Code := SDL.General.Init (Flags => SDL.General.INIT_NONE);

   if
     Ret_Code = SDL.Constants.ERR_SUCCESS
   then
      Ada.Text_IO.Put_Line ("SDL.Init: Success.");
   else
      Ada.Text_IO.Put_Line ("SDL.Init: '" & SDL.General.Get_Error & "'!");
   end if;

   SDL_Tests.Version.Print_Version_Number;

   Ret_Code :=
     SDL.General.Init_Sub_System (Flags => SDL.General.INIT_VIDEO or
                                           SDL.General.INIT_AUDIO);

   if
     Ret_Code = SDL.Constants.ERR_SUCCESS
   then
      Ada.Text_IO.Put_Line ("SDL.Init_Sub_System: Success.");
   else
      Ada.Text_IO.Put_Line ("SDL.Init_Sub_System: '" &
                            SDL.General.Get_Error & "'!");
   end if;

   SDL_Tests.Icon.Set_Icon;

   SDL.Window_Management.Set_Caption (Title => "Ada/SDL Test - A",
                                      Icon  => "Ada/SDL Test - I");

   Get_Captions :
   declare
      T : String (1 .. 20) := (others => ' ');
      I : String (1 .. 20) := (others => ' ');
   begin
      SDL.Window_Management.Get_Caption (Title => T,
                                         Icon  => I);
      Ada.Text_IO.Put_Line ("Caption.Title: '" & T & "'");
      Ada.Text_IO.Put_Line ("Caption.Icon : '" & I & "'");
      Ada.Text_IO.Put_Line ("Title       : '" &
                            SDL.Window_Management.Get_Title & "'");
   end Get_Captions;

   SDL_Tests.CDROM.Test_CDROM (Test_Eject => False);

   SDL_Tests.Video.Initialize;
   SDL_Tests.Video.List_Fullscreen_Modes;
   SDL_Tests.Video.List_Windowed_Modes;
   SDL_Tests.Video.Run_Video_Test;

   if
     SDL.Window_Management.Grab_Input
       (Mode => SDL.Window_Management.On) = SDL.Window_Management.On
   then
      Ada.Text_IO.Put_Line ("SDL.Window_Management.Grab_Input: Grabbed.");
   else
      Ada.Text_IO.Put_Line ("SDL.Window_Management.Grab_Input: NOT grabbed!");
   end if;

   Ada.Text_IO.Put_Line
     ("Input grabbed mode: " &
      SDL.Window_Management.Grab_Mode'Image
        (SDL.Window_Management.Grab_Input
           (Mode => SDL.Window_Management.Query)));

   SDL_Tests.Joystick.Initialize;

   SDL_Tests.Audio.Test_Audio;
   SDL_Tests.Events.Run_Event_Loop;

   SDL_Tests.Audio.Finalize;
   SDL_Tests.Audio.Print_Status;

   SDL.General.Quit_Sub_System (Flags => SDL.General.INIT_VIDEO);
   Ada.Text_IO.Put_Line ("SDL.Video shut down.");

   SDL.General.Quit;
   Ada.Text_IO.Put_Line ("SDL shut down.");
end Main;
