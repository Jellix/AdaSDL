--  AdaSDL, audio test stuff.
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
     System;
with SDL.Audio.Support,
     SDL.General,
     SDL.Support;

use type SDL.Int,
         SDL.UInt32;

package body SDL_Tests.Audio is

   SUB_MOD : constant String := "SDL.Audio";

   type My_User_Data is
      record
         Data    : SDL.Audio.Audio_Buffer;
         Length  : SDL.UInt32;
         Cur_Pos : SDL.UInt32;
      end record;

   The_User_Data : My_User_Data;

   ---------------------------------------------------------------------
   --  Audio_CB
   ---------------------------------------------------------------------
   procedure Audio_CB (User_Data : in SDL.Audio.User_Data_Ptr;
                       Stream    : in SDL.Audio.Audio_Buffer;
                       Length    : in SDL.Int);
   pragma Convention (Convention => C,
                      Entity     => Audio_CB);

   procedure Audio_CB (User_Data : in SDL.Audio.User_Data_Ptr;
                       Stream    : in SDL.Audio.Audio_Buffer;
                       Length    : in SDL.Int)
   is
      type Buffer_Array is array (0 .. Length / 2 - 1) of SDL.SInt16;
      B : Buffer_Array;
      for B'Address use System.Address (Stream);

      U_Data : My_User_Data;
      for U_Data'Address use System.Address (User_Data);

      Input : array (0 .. U_Data.Length / 2 - 1) of SDL.SInt16;
      for Input'Address use System.Address (U_Data.Data);

      Modulo : constant SDL.UInt32 := U_Data.Length / 2;
   begin
      if
        U_Data.Length /= 0
      then
         for S in B'Range loop
            B (S) := Input (U_Data.Cur_Pos);
            U_Data.Cur_Pos := (U_Data.Cur_Pos + 1) mod Modulo;
         end loop;
      end if;
   end Audio_CB;

   ---------------------------------------------------------------------
   --  Test_Audio
   ---------------------------------------------------------------------
   procedure Test_Audio is
      Desired   : SDL.Audio.Audio_Spec;
      Obtained  : SDL.Audio.Audio_Spec;
      Audio_CVT : SDL.Audio.Conversion;
   begin
      Print_Status;

      Desired :=
        SDL.Audio.Audio_Spec'(Frequency => 44_100,
                              Format    => SDL.Audio.Signed_16_LE,
                              Channels  => 2,
                              Silence   => 0,
                              Samples   => 2_048,
                              Padding   => 0,
                              Size      => 0,
                              Callback  => Audio_CB'Access,
                              User_Data => SDL.Audio.User_Data_Ptr (The_User_Data'Address));

      Open_Audio :
      declare
         Success : Boolean;
      begin
         SDL.Audio.Open (Desired  => Desired,
                         Obtained => Obtained,
                         Success  => Success);

         if
            Success
         then
            Ada.Text_IO.Put_Line (SUB_MOD & ".Open: Success.");
         else
            Ada.Text_IO.Put_Line (SUB_MOD & ".Open: '" &
                                  SDL.General.Get_Error & "'!");
         end if;
      end Open_Audio;

      Ada.Text_IO.Put_Line (SDL.Audio.Support.Image (Spec => Desired) &
                            " => ");
      Ada.Text_IO.Put_Line (SDL.Audio.Support.Image (Spec => Obtained));

      Load_WAV_File :
      declare
         WAV_Spec   : SDL.Audio.Audio_Spec;
         The_Buffer : SDL.Audio.Audio_Buffer;
         The_Length : SDL.UInt32;
         Success    : Boolean;
      begin
         SDL.Audio.Load_WAV (File_Name => "tests/test-data/test.wav",
                             Spec      => WAV_Spec,
                             Audio_Buf => The_Buffer,
                             Audio_Len => The_Length,
                             Success   => Success);

         if
           Success
         then
            Ada.Text_IO.Put_Line (SUB_MOD & ".Load_WAV: Success.");
            Ada.Text_IO.Put_Line (SDL.Audio.Support.Image (Spec => WAV_Spec));
            Ada.Text_IO.Put_Line ("Buffer length:"              &
                                  SDL.UInt32'Image (The_Length) &
                                  " bytes.");
            The_User_Data := My_User_Data'(Data    => The_Buffer,
                                           Length  => The_Length,
                                           Cur_Pos => 0);
         else
            The_User_Data := My_User_Data'(Data    => SDL.Audio.Null_Audio,
                                           Length  => 0,
                                           Cur_Pos => 0);
            Ada.Text_IO.Put_Line (SUB_MOD & ".Load_WAV: '" &
                                  SDL.General.Get_Error & "'!");
         end if;

         Audio_CVT :=
           SDL.Audio.Conversion'(Needed       => SDL.False,
                                 Src_Format   => 0,
                                 Dst_Format   => 0,
                                 Rate_Incr    => 0.0,
                                 Buf          => SDL.Audio.Null_Audio,
                                 Len          => 0,
                                 Len_Cvt      => 0,
                                 Len_Mult     => 0,
                                 Len_Ratio    => 0.0,
                                 Filters      => SDL.Audio.Filter_Callbacks'(others => null),
                                 Filter_Index => 0);

         SDL.Audio.Build_CVT (CVT          => Audio_CVT,
                              Src_Format   => WAV_Spec.Format,
                              Src_Channels => WAV_Spec.Channels,
                              Src_Rate     => WAV_Spec.Frequency,
                              Dst_Format   => Obtained.Format,
                              Dst_Channels => Obtained.Channels,
                              Dst_Rate     => Obtained.Frequency,
                              Success      => Success);

         if
           Success
         then
            Ada.Text_IO.Put_Line (SUB_MOD & ".Build_CVT: Success!");
         else
            Ada.Text_IO.Put_Line (SUB_MOD & ".Build_CVT: '" &
                                  SDL.General.Get_Error & "'!");
         end if;

         Ada.Text_IO.Put_Line (SDL.Audio.Support.Image (CVT => Audio_CVT));

         if
           Audio_CVT.Needed
         then
            Audio_CVT.Len := SDL.Int (The_User_Data.Length);

            Convert_Audio_Data :
            declare
               In_Data : SDL.Support.Byte_Array (1 .. SDL.Support.Byte_Index (The_User_Data.Length));
               for In_Data'Address use System.Address (The_User_Data.Data);

               Dst_Len : constant SDL.Support.Byte_Index := SDL.Support.Byte_Index (Audio_CVT.Len * Audio_CVT.Len_Mult);
               Tmp     : constant SDL.Support.Byte_Ptr   := new SDL.Support.Byte_Array (1 .. Dst_Len);
            begin
               Tmp.all (1 .. SDL.Support.Byte_Index (The_User_Data.Length)) := In_Data;
               Audio_CVT.Buf := SDL.Audio.Audio_Buffer (Tmp.all (1)'Address);

               SDL.Audio.Convert (CVT     => Audio_CVT,
                                  Success => Success);

               Ada.Text_IO.Put_Line (SDL.Audio.Support.Image (CVT => Audio_CVT));

               if
                 Success
               then
                  Ada.Text_IO.Put_Line (SUB_MOD & ".Convert: Success!");
                  SDL.Audio.Free_WAV (Audio_Buf => The_User_Data.Data);

                  The_User_Data :=
                    My_User_Data'(Data    => Audio_CVT.Buf,
                                  Length  => SDL.UInt32 (Audio_CVT.Len_Cvt),
                                  Cur_Pos => 0);
               else
                  Ada.Text_IO.Put_Line (SUB_MOD & ".Convert: '" &
                                        SDL.General.Get_Error & "'!");
               end if;
            end Convert_Audio_Data;
         end if;
      end Load_WAV_File;

      Print_Status;

      SDL.Audio.Pause (Pause_On => SDL.False);

      Print_Status;
   end Test_Audio;

   ---------------------------------------------------------------------
   --  Print_Status
   ---------------------------------------------------------------------
   procedure Print_Status is
   begin
      Ada.Text_IO.Put_Line
        (SUB_MOD & ".Get_Status: " &
         SDL.Audio.Status'Image (SDL.Audio.Get_Status));
   end Print_Status;

   ---------------------------------------------------------------------
   --  Finalize
   ---------------------------------------------------------------------
   procedure Finalize is
   begin
      SDL.Audio.Close;
      SDL.Audio.Free_WAV (Audio_Buf => The_User_Data.Data);
      SDL.General.Quit_Sub_System (Flags => SDL.General.INIT_AUDIO);
      Ada.Text_IO.Put_Line (SUB_MOD & ": Subsystem finalized.");
   end Finalize;

end SDL_Tests.Audio;
