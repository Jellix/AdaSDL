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

with SDL_Mixer;

with Ada.Unchecked_Deallocation;

with Interfaces.C;
use  Interfaces.C;


package body AdaSDL.Audio.Sound is

   use AdaSDL;

   use AdaSDL.Audio;

   use type AdaSDL.Handle_Counter;


   type Sound_Type is record
      Item    : SDL_Mixer.Chunk_ptr;
      Handles : Handle_Counter;
   end record;

   procedure Deallocate is
      new Ada.Unchecked_Deallocation (Sound_Type,Sound_Ptr);

   procedure Free (Item : in out Sound_Ptr) is
   begin
      if Item /= null then
         SDL_Mixer.FreeChunk (Item.all.Item);
         Deallocate (Item);
      end if;
   end Free;


   procedure Initialize       (Object : in out Sound) is
   begin
      if Object.Handle /= null then
         Object.Handle.all.Handles.Increment;
      end if;
   end Initialize;

   procedure Adjust           (Object : in out Sound) is
   begin
      if Object.Handle /= null then
         Object.Handle.all.Handles.Increment;
      end if;
   end Adjust;

   procedure Finalize         (Object : in out Sound) is
   begin
      if Object.Handle /= null then
         declare
            Deallocate : Boolean;
         begin
            Object.Handle.all.Handles.Decrement (Deallocate);
            if Deallocate then
               Free (Object.Handle);
            end if;
         end;
      end if;
   end Finalize;

   ----------
   -- Done --
   ----------

   function Done (Item : Channel) return Boolean is
      Result : Boolean := 1 /= SDL_Mixer.Playing(Int (Item.Number));
   begin
      return Result;
   end Done;

   ---------
   -- Get --
   ---------

   function Get (Item : Channel) return Volume is
   begin
      return To_Volume (AdaSDL.Scalar
                        (SDL_Mixer.Volume (Int (Item.number), -1)));
   end Get;

   ----------
   -- Load --
   ----------

   function Load (From_File : String) return Sound is
      Temp : SDL_Mixer.Chunk_Ptr;

      use type SDL_Mixer.Chunk_Ptr;
   begin

      Temp := SDL_Mixer.Load_Wav (From_File);

      if Temp = null then
         raise Load_Error;
      else
         declare
            The_Music : Sound_Ptr := new Sound_type;
         begin
            The_Music.Item := Temp;
            return (Ada.Finalization.Controlled with Handle => The_Music);
         end;
      end if;
   end Load;

   ----------
   -- Play --
   ----------

   procedure Play (Item : Sound) is

      Temp : Channel_Number;

   begin

      Get_Free_Channel_Number (Temp);

      SDL_Mixer.PlayChannel (Int (Temp), Item.Handle.Item, -1);

   end Play;

   ----------
   -- Play --
   ----------

   procedure Play (Item : Sound; On : Channel) is
   begin
      SDL_Mixer.PlayChannel (Int (On.Number), Item.Handle.Item, -1);
   end Play;

   ----------
   -- Play --
   ----------

   procedure Play (Item : Sound; Times : AdaSDL.Positive) is

      Temp : Channel_Number;

    begin
      Get_Free_Channel_Number (Temp);

      SDL_Mixer.PlayChannel (Int (Temp), Item.Handle.Item, Int (Times)-1);
   end Play;

   ----------
   -- Play --
   ----------

   procedure Play (Item : Sound; On : Channel; Times : AdaSDL.Positive) is
   begin
      SDL_Mixer.PlayChannel (Int (On.Number), Item.Handle.Item, Int (Times)-1);
   end Play;

   ----------------
   -- Set_Volume --
   ----------------

   procedure Set_Volume (On : Channel; To : Volume) is
      Result : Int := SDL_Mixer.Volume (Int (On.number),
                                        Int (To_Scalar (To)));
   begin
      null;
   end Set_Volume;

   ----------
   -- Stop --
   ----------

   procedure Stop (On : Channel) is
      Result : Int := SDL_Mixer.HaltChannel (Int (On.number));
   begin
      null;
   end Stop;

end AdaSDL.Audio.Sound;

