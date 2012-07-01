--  AdaSDL, event handling test stuff.
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
with SDL.General,
     SDL.Events,
     SDL.Joysticks,
     SDL.Keyboard;

use type SDL.Int,
         SDL.Events.Type_Of_Event;

package body SDL_Tests.Events is

   SUB_MOD : constant String := "SDL.Events";

   ---------------------------------------------------------------------
   --  Run_Event_Loop
   ---------------------------------------------------------------------
   procedure Run_Event_Loop
   is
      Event      : SDL.Events.Event_Array (1 .. 20);
      Num_Events : SDL.Int;
   begin
      Ada.Text_IO.Put_Line ("Starting event handling...");

      Event_Loop :
      loop
         --  Update event queue.
         delay 0.01;
         SDL.Events.Pump;

         SDL.Events.Peep (Event_List       => Event,
                          Action           => SDL.Events.Get,
                          Mask             => SDL.Events.ALL_EVENTS,
                          Events_Available => Num_Events);

         if
           Num_Events = -1
         then
            Ada.Text_IO.Put_Line (SUB_MOD & ".Peep: " &
                                  SDL.General.Get_Error & "!");
         elsif
           Num_Events /= 0
         then
            Array_Loop :
            for i in Event'First .. Num_Events loop
               Print_Event :
               declare
                  E : SDL.Events.Event renames Event (i);
               begin
                  Ada.Text_IO.Put_Line (SDL.Events.Type_Of_Event'Image (E.Kind));

                  case E.Kind is
                     when SDL.Events.No_Event |
                          SDL.Events.Quit     |
                          SDL.Events.Sys_WM   |
                          SDL.Events.Video_Expose =>
                        null;
                     when SDL.Events.Active =>
                        Ada.Text_IO.Put_Line ("Gained: "  & Boolean'Image (E.Active.Gained) &
                                              ", State: " & SDL.Events.Focus_Flags'Image (E.Active.State));
                     when SDL.Events.Key_Down =>
                        Ada.Text_IO.Put_Line (SDL.Keyboard.Key'Image (E.Keyboard.Key.Symbol) & " (" &
                                              SDL.Events.Key_Name (K => E.Keyboard.Key.Symbol) & ") pressed.");
                     when SDL.Events.Key_Up =>
                        Ada.Text_IO.Put_Line (SDL.Keyboard.Key'Image (E.Keyboard.Key.Symbol) & " (" &
                                              SDL.Events.Key_Name (K => E.Keyboard.Key.Symbol) & ") released.");
                     when SDL.Events.Mouse_Motion =>
                        Ada.Text_IO.Put_Line ("Mouse" &
                                              SDL.UInt8'Image (E.MS_Motion.Which) & " => " &
                                              SDL.SInt16'Image (E.MS_Motion.X_Rel) & ", " &
                                              SDL.SInt16'Image (E.MS_Motion.Y_Rel) & " -> " &
                                              SDL.UInt16'Image (E.MS_Motion.X)     & "," &
                                              SDL.UInt16'Image (E.MS_Motion.Y));
                     when SDL.Events.Mouse_Button_Down |
                          SDL.Events.Mouse_Button_Up =>
                        Ada.Text_IO.Put_Line ("Mouse" &
                                              SDL.UInt8'Image (E.MS_Button.Which) & " => " &
                                              "MB" & SDL.UInt8'Image (E.MS_Button.Button) & " triggered at" &
                                              SDL.UInt16'Image (E.MS_Button.X) & "," &
                                              SDL.UInt16'Image (E.MS_Button.Y) & "/" &
                                              SDL.Joysticks.Button_State'Image (E.MS_Button.State));
                     when SDL.Events.Joy_Axis =>
                        Ada.Text_IO.Put_Line ("Joystick" &
                                              SDL.UInt8'Image (E.JS_Axis.Which) & " => " &
                                              "Axis" &
                                              SDL.UInt8'Image (E.JS_Axis.Axis) & " => " &
                                              SDL.SInt16'Image (E.JS_Axis.Value));
                     when SDL.Events.Joy_Ball =>
                        null;
                     when SDL.Events.Joy_Hat =>
                        Ada.Text_IO.Put_Line ("Joystick" &
                                              SDL.UInt8'Image (E.JS_Hat.Which) & " => " &
                                              "Hat" &
                                              SDL.UInt8'Image (E.JS_Hat.Hat) & " => " &
                                              SDL.Joysticks.Hat_Flags'Image (E.JS_Hat.Value));
                     when SDL.Events.Joy_Button_Down |
                          SDL.Events.Joy_Button_Up =>
                        Ada.Text_IO.Put_Line ("Joystick" &
                                              SDL.UInt8'Image (E.JS_Button.Which) & " => " &
                                              "Button" &
                                              SDL.UInt8'Image (E.JS_Button.Button) & " => " &
                                              SDL.Joysticks.Button_State'Image (E.JS_Button.State));
                     when SDL.Events.Video_Resize =>
                        Ada.Text_IO.Put_Line (SDL.Int'Image (E.New_Size.Width) & "x" &
                                              SDL.Int'Image (E.New_Size.Height));
                     when SDL.Events.User |
                          SDL.Events.User_Last =>
                        null;
                  end case;

                  exit Event_Loop when E.Kind = SDL.Events.Quit;
               end Print_Event;
            end loop Array_Loop;
         end if;
      end loop Event_Loop;
   end Run_Event_Loop;

end SDL_Tests.Events;
