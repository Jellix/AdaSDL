with Ada.Text_IO;
use  Ada.Text_IO;
with Ada.Exceptions;
use  Ada.Exceptions;

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
   exception
      when Unknown : others =>
         Put_Line ("Unhandled Exception :" &
                   Exception_Name(Unknown) & ":" &
                   Exception_Message(Unknown) );

         return Filter;

   end Quit_Filter;

   function Generic_Quit_Filter (Event : Event_Ptr) return C.Int is
      Filter      : constant C.Int := 0;
      Dont_Filter : constant C.Int := 1;

   begin
      if Event.The_Type = SDL.Events.QUIT then
         Put_Line ("Quit Filtered");
         return Filter;
      else
         Put_Line ("Filter called and not used.");

         The_Dispatcher(Event.all);

         return Filter;
      end if;
   exception
      when Unknown : others =>
         Put_Line ("Unhandled Exception :" &
                   Exception_Name(Unknown) & ":" &
                   Exception_Message(Unknown) );

         return Filter;

   end Generic_Quit_Filter;

end AdaSDL.Event_Filters;

