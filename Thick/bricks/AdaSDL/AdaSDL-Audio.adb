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

with SDL.Audio;
with SDL.Error;
with SDL_Mixer;
with Interfaces.C;
use  Interfaces.C;

with Ada.Exceptions;

with Ada.Text_IO;

package body AdaSDL.Audio is

   Error_Signal : Constant Interfaces.C.Int := -1;

   procedure UnReg (Chan : Int) is
   begin
      Free_Channel_Number (Channel_Number  (Chan));

   end UnReg;

   protected type Semaphore is
      entry Enter;
      entry Leave;
   private
      Seized : Boolean := False;
   end Semaphore;

   protected body Semaphore is
      entry Enter when not Seized is
      begin
         Seized := True;
      end Enter;
      entry Leave when True is
      begin
         Seized := False;
      end Leave;
   end Semaphore;

   protected type Counter is
      function Locked return Boolean;
      procedure Lock_It;
      procedure Increment;
      procedure Decrement (All_Out : out Boolean);
      procedure Register  (Success : out Boolean);
   private
      Counter : Natural := 0;
      Lock    : Boolean := False;
   end Counter;

   protected body Counter is
      function Locked return Boolean is
      begin
         return Lock;
      end Locked;

      procedure Lock_It is
      begin
         Lock := True;
      end Lock_It;

      procedure Increment is
      begin
         Counter := Counter + 1;
      end Increment;
      procedure Decrement (All_Out : out Boolean) is
      begin
         if Counter > 0 then
            Counter := Counter - 1;
         end if;
         All_Out := Counter = 0;
         if All_Out then
            Lock := False;
         end if;
      end Decrement;
      procedure Register  (Success : out Boolean) is
      begin
         if Counter = 0 then
            Success := True;
            Counter := 1;
         else
            Success := False;
         end if;
      end Register;
   end Counter;

   Channel_Guards     : array (Channel_Number) of Counter;
   Number_Of_Channels : Channels := 0;
   Lock               : Semaphore;

   ------------
   -- Adjust --
   ------------

   procedure Adjust (Object : in out Channel) is
   begin
      Channel_Guards(Object.Number).Increment;
   end Adjust;

   -----------
   -- Close --
   -----------

   procedure Close is
   begin
      Number_Of_Channels := 0;
      SDL_Mixer.CloseAudio;
   end Close;

   --------------
   -- Finalize --
   --------------

   procedure Finalize is
   begin
      SDL.QuitSubSystem(SDL.INIT_AUDIO);
   end Finalize;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Object : in out Channel) is
      Temp : Boolean;
   begin
      Channel_Guards(Object.Number).Decrement (Temp);
   end Finalize;

   -------------------------
   -- Free_Channel_Number --
   -------------------------

   procedure Free_Channel_Number (Item : Channel_Number) is
      Temp : Boolean;
   begin
      if not Channel_Guards(Item).Locked then
         Channel_Guards(Item).Decrement (Temp);
      end if;
   end Free_Channel_Number;

   -----------------------------
   -- Get_Free_Channel_Number --
   -----------------------------

   procedure Get_Free_Channel_Number (Item : out Channel_Number) is
      Channel_Found : Boolean;
      Locked        : Boolean := False;
   begin
      for I in Channel_Guards'First..Number_Of_Channels loop
         Channel_Guards(I).Register (Channel_Found);
         if Channel_Found then
            Item := I;
            return;
         end if;
      end loop;

      Lock.Enter;
      Locked := True;

      Number_Of_Channels := Number_Of_Channels + 1;

      declare
         Temp : Int := SDL_Mixer.AllocateChannels (Int(Number_Of_Channels+1));
      begin
         Item := Number_Of_Channels;
      end;

      Channel_Guards(Item).Register (Channel_Found);

      Lock.Leave;
      Locked := False;

   exception
      when others =>
         if Locked then
            Lock.Leave;
         end if;
   end Get_Free_Channel_Number;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      if not AdaSDL.Initialized then
         AdaSDL.Initialize;
      end if;

      -- Initialize bare system
      if SDL.InitSubSystem ( SDL.INIT_AUDIO ) = Error_Signal then
         declare
            Error_Message : constant String := SDL.Error.Get_Error;
         begin

            SDL.Error.ClearError;

            Ada.Exceptions.Raise_Exception
              ( E       => SDL_Initialization_Failure'Identity,
                Message => Error_Message
              );
         end;
      else
         When_Channel_Finished (UnReg'Access);
      end if;
   end Initialize;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Object : in out Channel) is
   begin
      Get_Free_Channel_Number (Object.Number);
      Channel_Guards(Object.Number).Lock_It;
   end Initialize;

   ----------
   -- Open --
   ----------

   procedure Open
     (Hertz    : Frequency := Game_Quality;
      Encoding : Format    := Signed_16;
      Speakers : Output    := Stereo;
      Samples  : Sample    := Normal_Response)
   is
      Formats : constant array(Format) of SDL.Audio.Format_Flag :=
        (Unsigned_8  => SDL.Audio.Audio_U8,
         Signed_8    => SDL.Audio.Audio_S8,
         Unsigned_16 => SDL.Audio.Get_Audio_U16_Sys,
         Signed_16   => SDL.Audio.Get_Audio_S16_Sys);

      Speaker : constant array (Output) of Int := (Mono => 1, Stereo => 2);

      Error   : constant Int := SDL_Mixer.OpenAudio (Int(Hertz),
                                                     Formats(Encoding),
                                                     Speaker(Speakers),
                                                     Int(Samples));
   begin
      if Error = Error_Signal then
         declare
            Error_Message : constant String := SDL.Error.Get_Error;
         begin

            SDL.Error.ClearError;

            Ada.Exceptions.Raise_Exception
              ( E       => SDL_Initialization_Failure'Identity,
                Message => Error_Message
              );
         end;
      else
         Number_Of_Channels :=
           Channel_Number(SDL_Mixer.AllocateChannels (1) - 1);
      end if;
   end Open;

   function To_Volume (Item : AdaSDL.Scalar) return Volume is
   begin
      return Volume (Float (Item) / Float (SDL_Mixer.MIX_MAX_VOLUME));
   end To_Volume;

   function To_Scalar (Item : Volume) return AdaSDL.Scalar is
   begin
      return AdaSDL.Scalar (Float (Item) * Float (SDL_Mixer.MIX_MAX_VOLUME));
   end To_Scalar;

end AdaSDL.Audio;

