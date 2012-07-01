--  Ada binding to SDL (http://www.libsdl.org), event handling related
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

with SDL;

use type SDL.Int;

package body SDL.Events is

   ---------------------------------------------------------------------
   --  C_Key_Name
   ---------------------------------------------------------------------
   function C_Key_Name (K : in Keyboard.Key) return Interfaces.C.Strings.chars_ptr;
   pragma Import (Convention    => C,
                  Entity        => C_Key_Name,
                  External_Name => "SDL_GetKeyName");

   ---------------------------------------------------------------------
   -- C_Peep
   ---------------------------------------------------------------------
   function C_Peep (Event_List : in System.Address;
                    Num_Events : in Int;
                    Action     : in Event_Action;
                    Mask       : in Event_Mask) return Int;
   pragma Import (Convention    => C,
                  Entity        => C_Peep,
                  External_Name => "SDL_PeepEvents");

   ---------------------------------------------------------------------
   -- C_Poll
   ---------------------------------------------------------------------
   function C_Poll (E : in System.Address) return Int;
   pragma Import (Convention    => C,
                  Entity        => C_Poll,
                  External_Name => "SDL_PollEvent");

   ---------------------------------------------------------------------
   -- C_Wait
   ---------------------------------------------------------------------
   function C_Wait (E : in System.Address) return Int;
   pragma Import (Convention    => C,
                  Entity        => C_Wait,
                  External_Name => "SDL_WaitEvent");

   ---------------------------------------------------------------------
   -- Peep
   ---------------------------------------------------------------------
   procedure Peep (Event_List       : in out Event_Array;
                   Action           : in     Event_Action;
                   Mask             : in     Event_Mask;
                   Events_Available :    out Int)
   is
   begin
      Events_Available := C_Peep (Event_List => Event_List (Event_List'First)'Address,
                                  Num_Events => Event_List'Length,
                                  Action     => Action,
                                  Mask       => Mask);
   end Peep;

   ---------------------------------------------------------------------
   --  Poll
   ---------------------------------------------------------------------
   procedure Poll (E : out Event) is
      Available : Int;
   begin
      Available := C_Poll (E => E'Address);

      if
        Available = 0
      then
         E := SDL.Events.Event'(Kind => SDL.Events.No_Event);
      end if;
   end Poll;

   ---------------------------------------------------------------------
   --  Wait
   ---------------------------------------------------------------------
   procedure Wait (E : out Event) is
      Available : Int;
   begin
      Available := C_Wait (E => E'Address);

      if
        Available = 0
      then
         E := SDL.Events.Event'(Kind => SDL.Events.No_Event);
      end if;
   end Wait;

   ---------------------------------------------------------------------
   --  Key_Name
   ---------------------------------------------------------------------
   function Key_Name (K : in Keyboard.Key) return String is
   begin
      return Interfaces.C.Strings.Value (C_Key_Name (K => K));
   end Key_Name;

end SDL.Events;
