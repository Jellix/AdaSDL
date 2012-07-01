--  AdaSDL, CD-ROM test stuff.
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
with SDL.CD_ROM.Support,
     SDL.General;

use type SDL.CD_ROM.CD_Drive_Count,
         SDL.CD_ROM.CD_Status,
         SDL.General.Init_Flags,
         SDL.Int;

package body SDL_Tests.CDROM is

   --  Name constant for tested sub module.
   SUB_MOD : constant String := "SDL.CD_ROM";

   ---------------------------------------------------------------------
   -- Test_CDROM
   ---------------------------------------------------------------------
   procedure Test_CDROM (Test_Eject : in Boolean := False)
   is
      Flags      : SDL.General.Init_Flags;
      Num_Drives : SDL.CD_ROM.CD_Drive_Count;
      The_CD     : SDL.CD_ROM.CD;
      Status     : SDL.CD_ROM.CD_Status;
      Num_Tracks : SDL.CD_ROM.CD_Track_Count;
   begin
      Flags := SDL.General.Was_Init (Flags => SDL.General.INIT_CDROM);

      if
        Flags = SDL.General.INIT_CDROM
      then
         Ada.Text_IO.Put_Line (SUB_MOD & ": Initialized.");
      else
         Ada.Text_IO.Put_Line (SUB_MOD & ": NOT initialized!");

         if
           SDL.General.Init_Sub_System (Flags => SDL.General.INIT_CDROM) = 0
         then
            Ada.Text_IO.Put_Line (SUB_MOD & ": Late initialization succeeded.");
         else
            Ada.Text_IO.Put_Line (SUB_MOD & ": Late initialization failed!");
         end if;
      end if;

      Num_Drives := SDL.CD_ROM.Num_Drives;

      if
        Num_Drives = SDL.CD_ROM.CD_Drive_Count'Last
      then
         Num_Drives := 0;
      end if;

      Ada.Text_IO.Put_Line (SUB_MOD & ":" &
                            SDL.CD_ROM.CD_Drive_Count'Image (Num_Drives) &
                            " CD drive(s) detected.");

      if
        Num_Drives > 0
      then
         Check_Drives :
         for D in 0 .. Num_Drives - 1 loop
            Ada.Text_IO.Put_Line ("Drive" &
                                  SDL.CD_ROM.CD_Drive_Count'Image (D) &
                                  ": '" &
                                  SDL.CD_ROM.Name (Drive => D) &
                                  "'");

            The_CD := SDL.CD_ROM.Open (Drive => D);

            Status := SDL.CD_ROM.Drive_Status (Drive => The_CD);

            case Status is
               when SDL.CD_ROM.Error =>
                  Ada.Text_IO.Put_Line (SUB_MOD & ".Drive_Status: '" &
                                        SDL.General.Get_Error & "'!");
               when others =>
                  Ada.Text_IO.Put_Line
                    (SUB_MOD & ".Drive_Status: " &
                     SDL.CD_ROM.CD_Status'Image (Status) & ".");
            end case;

            if
              Status = SDL.CD_ROM.Tray_Empty
            then
               if
                 Test_Eject
               then
                  if
                    SDL.CD_ROM.Eject (Drive => The_CD) = 0
                  then
                     Ada.Text_IO.Put_Line (SUB_MOD & ".Eject: Success.");
                  else
                     Ada.Text_IO.Put_Line (SUB_MOD & ".Eject: '" &
                                           SDL.General.Get_Error & "'!");
                  end if;
               end if;
            else
               Print_Tracks_List :
               declare
                  Track_List : constant SDL.CD_ROM.Track_Array :=
                                 SDL.CD_ROM.Track_List (Value => The_CD);
               begin
                  Num_Tracks := SDL.CD_ROM.Tracks (Value => The_CD);

                  Ada.Text_IO.Put_Line
                    (SUB_MOD & ".Tracks:" &
                     SDL.CD_ROM.CD_Track_Count'Image (Num_Tracks) & "/" &
                     Integer'Image (Track_List'Length));

                  Print_Track_Info :
                  for T in Track_List'Range loop
                     Ada.Text_IO.Put_Line
                       (SDL.CD_ROM.Support.Image (T => Track_List (T)));
                  end loop Print_Track_Info;
               end Print_Tracks_List;
            end if;

            SDL.CD_ROM.Close (Handle => The_CD);
         end loop Check_Drives;
      end if;
   end Test_CDROM;

end SDL_Tests.CDROM;
