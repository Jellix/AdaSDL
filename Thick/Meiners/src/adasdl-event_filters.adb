with Ada.Text_IO;
use  Ada.Text_IO;

package body AdaSDL.Event_Filters is

   -----------------
   -- Quit_Filter --
   -----------------

   function Quit_Filter (event : Event_Ptr) return C.Int is

      Filter      : constant C.Int := 0;
      Dont_Filter : constant C.Int := 1;

   begin
      if Event.The_Type = SDL.Events.QUIT then
         Put_Line ("Quit Filtered");
         return Filter;
      else
         Put_Line ("Filter called and not used.");

         if Dispatcher /= null then
            Dispatcher.all(Event.all);
         end if;

         return Filter;
      end if;
   end Quit_Filter;

end AdaSDL.Event_Filters;

