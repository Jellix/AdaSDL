--  Pong-Demo for AdaSDL, audio stuff.
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

with Ada.Text_IO,
     Interfaces.C.Strings,
     System.Address_To_Access_Conversions,
     System.Storage_Elements;

with SDL.Audio,
     SDL.Error,
     SDL.Types;

use type Interfaces.C.int,
         SDL.Audio.AudioSpec_ptr;

package body Game.Audio is

   package Conv is
     new System.Address_To_Access_Conversions (Object => SDL.Types.Uint8);

   --  Convenience type for type conversions.
   subtype Byte       is System.Storage_Elements.Storage_Element;
   subtype Byte_Index is System.Storage_Elements.Storage_Offset;
   subtype Byte_Array is System.Storage_Elements.Storage_Array;

   use type Byte_Index;

   type Byte_Ptr is access all Byte_Array;

   type Audio_Buffer is new System.Address;

   Null_Audio : constant Audio_Buffer := Audio_Buffer (System.Null_Address);

   --  WAV_Info
   type WAV_Info is
      record
         Buffer : Audio_Buffer;
         Length : SDL.Types.UInt32;
      end record;

   No_Wave : constant WAV_Info :=
               WAV_Info'(Buffer => Null_Audio,
                         Length => 0);

   --  Play_Info
   type Play_Info is
      record
         Data       : Audio_Buffer;
         Length     : Byte_Index;
         Data_Index : Byte_Index;
      end record;

   Nothing : constant Play_Info :=
               Play_Info'(Data       => Null_Audio,
                          Length     => 0,
                          Data_Index => 0);

   --  Loaded WAVs.
   WAV_Ping : WAV_Info;
   WAV_Pong : WAV_Info;

   --  Which is currently playing.
   Currently_Playing : Play_Info;

   ---------------------------------------------------------------------
   --  Load_Data
   ---------------------------------------------------------------------
   procedure Load_Data;

   procedure Load_Data is
      WAV_Spec    : aliased SDL.Audio.AudioSpec;
      Ping_Name   : aliased Interfaces.C.char_array := Interfaces.C.To_C ("../data/ping.wav");
      Ping_Buffer : aliased SDL.Types.Uint8_ptr;
      for Ping_Buffer'Address use WAV_Ping.Buffer'Address;
      pragma Import (Convention => Ada, Entity => Ping_Buffer);
      Pong_Name   : aliased Interfaces.C.char_array := Interfaces.C.To_C ("../data/pong.wav");
      Pong_Buffer : aliased SDL.Types.Uint8_ptr;
      for Pong_Buffer'Address use WAV_Pong.Buffer'Address;
      pragma Import (Convention => Ada, Entity => Pong_Buffer);
   begin
      if
        SDL.Audio.LoadWAV (File      => Interfaces.C.Strings.To_Chars_Ptr (Ping_Name'Unchecked_Access),
                           Spec      => WAV_Spec'Unchecked_Access,
                           Audio_Buf => Ping_Buffer'Unchecked_Access,
                           Audio_Len => WAV_Ping.Length'Unrestricted_Access) = null
      then
         --  WAV_Ping := SDL.Audio.Null_Audio;
         Ada.Text_IO.Put_Line (File => Ada.Text_IO.Standard_Error,
                               Item => "Could not load 'data/ping.wav'!");
         Ada.Text_IO.Put_Line (File => Ada.Text_IO.Standard_Error,
                               Item => SDL.Error.Get_Error);

         WAV_Ping := No_Wave;
      end if;

      if
        SDL.Audio.LoadWAV (File      => Interfaces.C.Strings.To_Chars_Ptr (Pong_Name'Unchecked_Access),
                           Spec      => WAV_Spec'Unchecked_Access,
                           Audio_Buf => Pong_Buffer'Unchecked_Access,
                           Audio_Len => WAV_Pong.Length'Unrestricted_Access) = null
      then
         --  WAV_Pong := SDL.Audio.Null_Audio;
         Ada.Text_IO.Put_Line (File => Ada.Text_IO.Standard_Error,
                               Item => "Could not load 'data/pong.wav'!");
         Ada.Text_IO.Put_Line (File => Ada.Text_IO.Standard_Error,
                               Item => SDL.Error.Get_Error);

         WAV_Pong := No_Wave;
      end if;
   end Load_Data;

   ---------------------------------------------------------------------
   --  Callback
   ---------------------------------------------------------------------
   procedure Callback (User_Data : in SDL.Types.void_ptr;
                       Stream    : in SDL.Types.Uint8_ptr;
                       Length    : in Interfaces.C.int);
   pragma Convention (Convention => C,
                      Entity     => Callback);

   procedure Callback (User_Data : in SDL.Types.void_ptr;
                       Stream    : in SDL.Types.Uint8_ptr;
                       Length    : in Interfaces.C.int)
   is
      Cur_Play : Play_Info;
      for Cur_Play'Address use System.Address (User_Data);
      In_Buf   : Byte_Array (0 .. Byte_Index (Cur_Play.Length - 1));
      for In_Buf'Address use System.Address (Cur_Play.Data);
      Out_Buf  : Byte_Array (0 .. Byte_Index (Length) - 1);
      for Out_Buf'Address use System.Address (Stream.all'Address);

      Last_Byte : Byte_Index;
   begin
      if
        Cur_Play.Data /= Null_Audio
      then
         --  Now fill buffer with audio data and update tbe audio index.
         Last_Byte := Byte_Index'Min (Byte_Index (Cur_Play.Length - Cur_Play.Data_Index),
                                      Out_Buf'Length);

         Out_Buf (Out_Buf'First .. Last_Byte - 1) := In_Buf (Cur_Play.Data_Index .. Cur_Play.Data_Index + Last_Byte - 1);
         Out_Buf (Last_Byte     .. Out_Buf'Last) := (others => 0);

         Cur_Play.Data_Index := Cur_Play.Data_Index + Last_Byte;

         if
           Cur_Play.Data_Index >= Cur_Play.Length
         then
            Cur_Play := Nothing;
         end if;
      else
         --  Fill target buffer with silence.
         Out_Buf := Byte_Array'(Out_Buf'Range => 0);
      end if;
   end Callback;

   ---------------------------------------------------------------------
   --  Initialize
   ---------------------------------------------------------------------
   procedure Initialize is
      Required : aliased SDL.Audio.AudioSpec;
   begin
      Currently_Playing := Nothing;

      Load_Data;
      Required :=
        SDL.Audio.AudioSpec'(Freq     => 48_000,
                             Format   => SDL.Types.Uint16 (SDL.Audio.AUDIO_S16LSB),
                             Channels => 1,
                             Silence  => 0,
                             Samples  => 512,
                             Padding  => 0,
                             Size     => 0,
                             Callback => Callback'Access,
                             userdata => SDL.Types.void_ptr (Currently_Playing'Address));

      if
        SDL.Audio.OpenAudio (Desired  => Required'Unchecked_Access,
                             Obtained => null) /= 0
      then
         Ada.Text_IO.Put_Line (File => Ada.Text_IO.Standard_Error,
                               Item => "Failed to initialize audio");
      else
         SDL.Audio.PauseAudio (Pause_On => 0);
      end if;
   end Initialize;

   ---------------------------------------------------------------------
   --  Finalize
   ---------------------------------------------------------------------
   procedure Finalize is
   begin
      SDL.Audio.PauseAudio (Pause_On => 1);
      SDL.Audio.CloseAudio;

      SDL.Audio.FreeWAV (Audio_Buf => SDL.Types.Uint8_ptr (Conv.To_Pointer (System.Address (WAV_Ping.Buffer))));
      SDL.Audio.FreeWAV (Audio_Buf => SDL.Types.Uint8_ptr (Conv.To_Pointer (System.Address (WAV_Pong.Buffer))));
   end Finalize;

   ---------------------------------------------------------------------
   --  Play_Ping
   ---------------------------------------------------------------------
   procedure Play_Ping is
   begin
      SDL.Audio.LockAudio;

      --  Only write new buffer if previous one has played already.
      if
        Currently_Playing.Data = Null_Audio
      then
         Currently_Playing :=
           Play_Info'(Data       => WAV_Ping.Buffer,
                      Length     => Byte_Index (WAV_Ping.Length),
                      Data_Index => 0);
      end if;

      SDL.Audio.UnlockAudio;
   end Play_Ping;

   ---------------------------------------------------------------------
   --  Play_Pong
   ---------------------------------------------------------------------
   procedure Play_Pong is
   begin
      SDL.Audio.LockAudio;

      --  Only write new buffer if previous one has played already.
      if
        Currently_Playing.Data = Null_Audio
      then
         Currently_Playing :=
           Play_Info'(Data       => WAV_Pong.Buffer,
                      Length     => Byte_Index (WAV_Pong.Length),
                      Data_Index => 0);
      end if;

      SDL.Audio.UnlockAudio;
   end Play_Pong;

end Game.Audio;
