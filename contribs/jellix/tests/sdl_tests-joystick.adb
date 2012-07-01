--  AdaSDL, joystick test stuff.
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
     SDL.Events,
     SDL.General,
     SDL.Joysticks;

use type SDL.Int,
         SDL.General.Init_Flags,
         SDL.Joysticks.Stick_Count;

package body SDL_Tests.Joystick is

   SUB_MOD : constant String := "SDL.Joysticks";

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
      Flags : SDL.General.Init_Flags;
      Count : SDL.Joysticks.Stick_Count;
      JS    : SDL.Joysticks.Joystick;
   begin
      Flags := SDL.General.Was_Init (Flags => SDL.General.INIT_JOYSTICK);

      if
        Flags = SDL.General.INIT_JOYSTICK
      then
         Ada.Text_IO.Put_Line (SUB_MOD & ": Initialized.");
      else
         if
           SDL.General.Init_Sub_System
             (Flags => SDL.General.INIT_JOYSTICK) = SDL.Constants.ERR_SUCCESS
         then
            Ada.Text_IO.Put_Line (SUB_MOD & ": Late initialization succeeded.");
         else
            Ada.Text_IO.Put_Line (SUB_MOD & ": Late initialization failed!");
         end if;
      end if;

      Count := SDL.Joysticks.Enumerate;

      Print_Joystick_Info :
      for i in SDL.Joysticks.Stick_Count range 0 .. Count - 1 loop
         Ada.Text_IO.Put_Line
           ("(" & SDL.Joysticks.Stick_Count'Image (i) & ") " &
            SDL.Joysticks.Name (Which => i));
         JS := SDL.Joysticks.Open (i);
         Ada.Text_IO.Put_Line
           (SDL.Joysticks.Axes_Count'Image   (SDL.Joysticks.Num_Axes    (JS)) & " axes, "     &
            SDL.Joysticks.Ball_Count'Image   (SDL.Joysticks.Num_Balls   (JS)) & " balls, "    &
            SDL.Joysticks.Hat_Count'Image    (SDL.Joysticks.Num_Hats    (JS)) & " hats, and " &
            SDL.Joysticks.Button_Count'Image (SDL.Joysticks.Num_Buttons (JS)) & " buttons.");
      end loop Print_Joystick_Info;

      Ada.Text_IO.Put_Line (SUB_MOD & ".Joystick_Event_State: '" &
                            SDL.Events.State_Of_Event_In'Image
                              (SDL.Events.Joystick_Event_State (State => SDL.Events.Query)) &
                            "'.");
   end Initialize;

end SDL_Tests.Joystick;
