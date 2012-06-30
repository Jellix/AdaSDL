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

with Ada.Unchecked_Deallocation;

with SDL_Mixer;
with Interfaces.C;

use Interfaces.C;

package body AdaSDL.Audio.Music is

   use AdaSDL;

   use AdaSDL.Audio;

   use type AdaSDL.Handle_Counter;

   type Music_Type is record
      Item    : SDL_Mixer.Music_ptr;
      Handles : Handle_Counter;
   end record;

   procedure Deallocate is
      new Ada.Unchecked_Deallocation (Music_Type,Music_Ptr);

   procedure Free (Item : in out Music_Ptr) is
   begin
      if Item /= null then
         SDL_Mixer.FreeMusic (Item.all.Item);
         Deallocate (Item);
      end if;
   end Free;


   procedure Initialize       (Object : in out Music) is
   begin
      if Object.Handle /= null then
         Object.Handle.all.Handles.Increment;
      end if;
   end Initialize;

   procedure Adjust           (Object : in out Music) is
   begin
      if Object.Handle /= null then
         Object.Handle.all.Handles.Increment;
      end if;
   end Adjust;

   procedure Finalize         (Object : in out Music) is
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


   function To_Millseconds (Item : Duration) return AdaSDL.Integer is
      Max     : constant Duration := Duration(AdaSDL.Integer'Last);
      Current : Duration;
   begin
      Current := Item * 1000;

      Current := Duration'Min(Max, Current);

      return  AdaSDL.Integer (Current);
   exception
      when others =>
         return  AdaSDL.Integer (Max);
   end To_Millseconds;

   -------------
   -- Fade_In --
   -------------

   procedure Fade_In (Item : Music; Over  : Duration) is
   begin
      SDL_Mixer.FadeInMusic (Item.Handle.Item, -1, Int (To_Millseconds(Over)));
   end Fade_In;

   -------------
   -- Fade_In --
   -------------

   procedure Fade_In
     (Item : Music;
      Times : AdaSDL.Positive := 1;
      Over  : Duration)
   is
   begin
      SDL_Mixer.FadeInMusic (Item.Handle.Item,
                             Int(Times),
                             Int (To_Millseconds(Over)));
   end Fade_In;

   --------------
   -- Fade_Out --
   --------------

   procedure Fade_Out (Over  : Duration) is
   begin
      SDL_Mixer.FadeOutMusic (Int (To_Millseconds(Over)));
   end Fade_Out;

   ---------
   -- Get --
   ---------

   function Get return Volume is
      Result : Int := SDL_Mixer.VolumeMusic(-1);
   begin
      return To_Volume (AdaSDL.Scalar(Result));
   end Get;

   ---------------
   -- Is_Paused --
   ---------------

   function Is_Paused return Boolean is
      Result : Boolean := SDL_Mixer.PausedMusic = 1;
   begin
      return Result;
   end Is_Paused;

   ----------------
   -- Is_Playing --
   ----------------

   function Is_Playing return Boolean is
      Result : Boolean := SDL_Mixer.PlayingMusic = 1;
   begin
      return Result;
   end Is_Playing;

   ----------
   -- Load --
   ----------

   function Load (From_File : String) return Music is
      Temp : SDL_Mixer.Music_Ptr;

      use type SDL_Mixer.Music_Ptr;
   begin

      Temp := SDL_Mixer.Load_MUS (From_File);

      if Temp = SDL_Mixer.null_Music_ptr then
         raise Load_Error;
      else
         declare
            The_Music : Music_Ptr := new Music_type;
         begin
            The_Music.Item := Temp;
            return (Ada.Finalization.Controlled with Handle => The_Music);
         end;
      end if;
   end Load;

   -----------
   -- Pause --
   -----------

   procedure Pause is
   begin
      SDL_Mixer.PauseMusic;
   end Pause;

   procedure Resume is
   begin
      SDL_Mixer.ResumeMusic;
   end Resume;

   ----------
   -- Play --
   ----------

   procedure Play (Item : Music) is
   begin
      SDL_Mixer.PlayMusic (Item.Handle.Item, -1);
   end Play;

   ----------
   -- Play --
   ----------

   procedure Play (Item : Music; Times : AdaSDL.Positive) is
   begin
      SDL_Mixer.PlayMusic (Item.Handle.Item, Int(Times));
   end Play;

   ---------
   -- Set --
   ---------

   procedure Set (Item : Volume) is
         Result : Int := SDL_Mixer.VolumeMusic(Int (To_Scalar(Item)));
   begin
      null;
   end Set;

   ----------
   -- Stop --
   ----------

   procedure Stop is
   begin
      SDL_Mixer.HaltMusic;
   end Stop;

end AdaSDL.Audio.Music;

