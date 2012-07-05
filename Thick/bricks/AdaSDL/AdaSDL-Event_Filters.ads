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

with SDL.Events;
use  SDL.Events;
with SDL.Mouse;
use  SDL.Mouse;
with SDL.Types;
use  SDL.Types;
with Interfaces.C;
use  Interfaces.C;

private package AdaSDL.Event_Filters is

   -------------------------------------------------------------------
   -- This package exists to support quit filtering.  Most of it is --
   -- a workaround for problem with the filtering function.         --
   -- This package is tightly coupled with the AdaSDL.Events package--
   -- so DO NOT USE THIS PACKAGE OUTSIDE THE AdaSDL.Events.Handle   --
   -- PROCEDURE!                                                    --
   -------------------------------------------------------------------

   type Event_Dispatcher is access procedure (Item : SDL.Events.Event);

   Dispatcher : Event_Dispatcher;

   ------------------------------------------------------------------
   -- Our friendly pointer to the dispatch routine so we don't have--
   -- to depend on the SDL library keeping the unfiltered events in--
   -- the queue.                                                   --
   ------------------------------------------------------------------

   function Quit_Filter (event : Event_Ptr) return C.Int;
   ------------------------------------------------------------------
   -- Filters quits and dispatches other events to Dispatcher if   --
   -- it isn't null.                                               --
   ------------------------------------------------------------------

   pragma Convention(C, Quit_Filter);

   generic
      with procedure The_Dispatcher (Item : SDL.Events.Event);
   function Generic_Quit_Filter (Event : Event_Ptr) return C.Int;

   pragma Convention(C, Generic_Quit_Filter);

end AdaSDL.Event_Filters;

