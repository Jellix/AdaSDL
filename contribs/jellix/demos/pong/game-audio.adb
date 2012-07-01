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

with Ada.Text_IO;

with System;

with SDL.Audio,
     SDL.General,
     SDL.Support;

use type SDL.Audio.Audio_Buffer,
         SDL.Support.Byte_Index;

package body Game.Audio is

   --  WAV_Info
   type WAV_Info is
      record
         Buffer : SDL.Audio.Audio_Buffer;
         Length : SDL.UInt32;
      end record;

   No_Wave : constant WAV_Info :=
               WAV_Info'(Buffer => SDL.Audio.Null_Audio,
                         Length => 0);

   --  Play_Info
   type Play_Info is
      record
         Data       : SDL.Audio.Audio_Buffer;
         Length     : SDL.Support.Byte_Index;
         Data_Index : SDL.Support.Byte_Index;
      end record;

   Nothing : constant Play_Info :=
               Play_Info'(Data       => SDL.Audio.Null_Audio,
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
      WAV_Spec : SDL.Audio.Audio_Spec;
      Success  : Boolean;
   begin
      SDL.Audio.Load_WAV (File_Name => "demos/pong/data/ping.wav",
                          Spec      => WAV_Spec,
                          Audio_Buf => WAV_Ping.Buffer,
                          Audio_Len => WAV_Ping.Length,
                          Success   => Success);
      pragma Unreferenced (WAV_Spec);

      if not Success then
         --  WAV_Ping := SDL.Audio.Null_Audio;
         Ada.Text_IO.Put_Line (File => Ada.Text_IO.Standard_Error,
                               Item => "Could not load 'data/ping.wav'!");
         Ada.Text_IO.Put_Line (File => Ada.Text_IO.Standard_Error,
                               Item => SDL.General.Get_Error);

         WAV_Ping := No_Wave;
      end if;

      SDL.Audio.Load_WAV (File_Name => "demos/pong/data/pong.wav",
                          Spec      => WAV_Spec,
                          Audio_Buf => WAV_Pong.Buffer,
                          Audio_Len => WAV_Pong.Length,
                          Success   => Success);

      if not Success then
         --  WAV_Pong := SDL.Audio.Null_Audio;
         Ada.Text_IO.Put_Line (File => Ada.Text_IO.Standard_Error,
                               Item => "Could not load 'data/pong.wav'!");
         Ada.Text_IO.Put_Line (File => Ada.Text_IO.Standard_Error,
                               Item => SDL.General.Get_Error);

         WAV_Pong := No_Wave;
      end if;
   end Load_Data;

   ---------------------------------------------------------------------
   --  Callback
   ---------------------------------------------------------------------
   procedure Callback (User_Data : in SDL.Audio.User_Data_Ptr;
                       Stream    : in SDL.Audio.Audio_Buffer;
                       Length    : in SDL.Int);
   pragma Convention (Convention => C,
                      Entity     => Callback);

   procedure Callback (User_Data : in SDL.Audio.User_Data_Ptr;
                       Stream    : in SDL.Audio.Audio_Buffer;
                       Length    : in SDL.Int)
   is
      Cur_Play : Play_Info;
      for Cur_Play'Address use System.Address (User_Data);
      In_Buf   : SDL.Support.Byte_Array (0 .. SDL.Support.Byte_Index (Cur_Play.Length - 1));
      for In_Buf'Address use System.Address (Cur_Play.Data);
      Out_Buf  : SDL.Support.Byte_Array (0 .. SDL.Support.Byte_Index (Length) - 1);
      for Out_Buf'Address use System.Address (Stream);

      Last_Byte : SDL.Support.Byte_Index;
   begin
      if
        Cur_Play.Data /= SDL.Audio.Null_Audio
      then
         --  Now fill buffer with audio data and update tbe audio index.
         Last_Byte := SDL.Support.Byte_Index'Min (SDL.Support.Byte_Index (Cur_Play.Length - Cur_Play.Data_Index),
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
         Out_Buf := SDL.Support.Byte_Array'(Out_Buf'Range => 0);
      end if;
   end Callback;

   ---------------------------------------------------------------------
   --  Initialize
   ---------------------------------------------------------------------
   procedure Initialize is
      Required : SDL.Audio.Audio_Spec;
      Success  : Boolean;
   begin
      Currently_Playing := Nothing;

      Load_Data;
      Required :=
        SDL.Audio.Audio_Spec'(Frequency => 48_000,
                              Format    => SDL.Audio.Signed_16_LE,
                              Channels  => 1,
                              Silence   => 0,
                              Samples   => 512,
                              Padding   => 0,
                              Size      => 0,
                              Callback  => Callback'Access,
                              User_Data => SDL.Audio.User_Data_Ptr (Currently_Playing'Address));

      SDL.Audio.Open (Required => Required,
                      Success  => Success);
      pragma Unreferenced (Required);

      if not Success then
         Ada.Text_IO.Put_Line (File => Ada.Text_IO.Standard_Error,
                               Item => "Failed to initialize audio");
      else
         SDL.Audio.Pause (Pause_On => SDL.False);
      end if;
   end Initialize;

   ---------------------------------------------------------------------
   --  Finalize
   ---------------------------------------------------------------------
   procedure Finalize is
   begin
      SDL.Audio.Pause (Pause_On => SDL.True);
      SDL.Audio.Close;

      SDL.Audio.Free_WAV (Audio_Buf => WAV_Ping.Buffer);
      SDL.Audio.Free_WAV (Audio_Buf => WAV_Pong.Buffer);
   end Finalize;

   ---------------------------------------------------------------------
   --  Play_Ping
   ---------------------------------------------------------------------
   procedure Play_Ping is
   begin
      SDL.Audio.Lock;

      --  Only write new buffer if previous one has played already.
      if
        Currently_Playing.Data = SDL.Audio.Null_Audio
      then
         Currently_Playing :=
           Play_Info'(Data       => WAV_Ping.Buffer,
                      Length     => SDL.Support.Byte_Index (WAV_Ping.Length),
                      Data_Index => 0);
      end if;

      SDL.Audio.Unlock;
   end Play_Ping;

   ---------------------------------------------------------------------
   --  Play_Pong
   ---------------------------------------------------------------------
   procedure Play_Pong is
   begin
      SDL.Audio.Lock;

      --  Only write new buffer if previous one has played already.
      if
        Currently_Playing.Data = SDL.Audio.Null_Audio
      then
         Currently_Playing :=
           Play_Info'(Data       => WAV_Pong.Buffer,
                      Length     => SDL.Support.Byte_Index (WAV_Pong.Length),
                      Data_Index => 0);
      end if;

      SDL.Audio.Unlock;
   end Play_Pong;

end Game.Audio;
