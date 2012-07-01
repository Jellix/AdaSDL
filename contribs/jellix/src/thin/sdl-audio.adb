--  Ada binding to SDL (http://www.libsdl.org), Audio subroutines.
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

with SDL.RWOps;

use type SDL.Int;

package body SDL.Audio is

   --  Used internally to check result of Load_WAV.
   type Audio_Spec_Ptr is access all Audio_Spec;
   pragma Convention (Convention => C,
                      Entity     => Audio_Spec_Ptr);

   ---------------------------------------------------------------------
   --  C_Build_CVT
   ---------------------------------------------------------------------
   function C_Build_CVT (CVT          : in System.Address; --  in out Conversion;
                         Src_Format   : in Format_Id;
                         Src_Channels : in UInt8;
                         Src_Rate     : in Int;
                         Dst_Format   : in Format_Id;
                         Dst_Channels : in UInt8;
                         Dst_Rate     : in Int) return Int;
   pragma Import (Convention    => C,
                  Entity        => C_Build_CVT,
                  External_Name => "SDL_BuildAudioCVT");

   ---------------------------------------------------------------------
   --  C_Convert
   ---------------------------------------------------------------------
   function C_Convert (CVT : in System.Address) --  in out Conversion
                       return Int;
   pragma Import (Convention    => C,
                  Entity        => C_Convert,
                  External_Name => "SDL_ConvertAudio");

   ---------------------------------------------------------------------
   -- C_Free_WAV
   ---------------------------------------------------------------------
   procedure C_Free_WAV (Audio_Buf : in Audio_Buffer);
   pragma Import (Convention    => C,
                  Entity        => C_Free_WAV,
                  External_Name => "SDL_FreeWAV");

   ---------------------------------------------------------------------
   -- C_Load_WAV
   ---------------------------------------------------------------------
   function C_Load_WAV (Src      : in RWOps.RW_Ops;
                        Free_Src : in Bool;
                        Spec     : in System.Address; --  in out Audio_Spec
                        Buf      : in System.Address; --     out Audio_Buffer
                        Len      : in System.Address) --     out UInt32
                        return Audio_Spec_Ptr;
   pragma Import (Convention    => C,
                  Entity        => C_Load_WAV,
                  External_Name => "SDL_LoadWAV_RW");

   ---------------------------------------------------------------------
   -- C_Open
   ---------------------------------------------------------------------
   function C_Open (Desired  : in System.Address;
                    Obtained : in System.Address) return Int;
   pragma Import (Convention    => C,
                  Entity        => C_Open,
                  External_Name => "SDL_OpenAudio");

   ---------------------------------------------------------------------
   --  Build_CVT
   ---------------------------------------------------------------------
   procedure Build_CVT (CVT          : in out Conversion;
                        Src_Format   : in     Format_Id;
                        Src_Channels : in     UInt8;
                        Src_Rate     : in     Int;
                        Dst_Format   : in     Format_Id;
                        Dst_Channels : in     UInt8;
                        Dst_Rate     : in     Int;
                        Success      :    out Boolean)
   is
      C_Result : Int;
   begin
      C_Result := C_Build_CVT (CVT          => CVT'Address,
                               Src_Format   => Src_Format,
                               Src_Channels => Src_Channels,
                               Src_Rate     => Src_Rate,
                               Dst_Format   => Dst_Format,
                               Dst_Channels => Dst_Channels,
                               Dst_Rate     => Dst_Rate);

      Success := C_Result = 1;
   end Build_CVT;

   ---------------------------------------------------------------------
   --  Convert
   ---------------------------------------------------------------------
   procedure Convert (CVT     : in out Conversion;
                      Success :    out Boolean)
   is
      C_Result : Int;
   begin
      C_Result := C_Convert (CVT => CVT'Address);

      Success := C_Result = 0;
   end Convert;

   ---------------------------------------------------------------------
   --  Free_WAV
   ---------------------------------------------------------------------
   procedure Free_WAV (Audio_Buf : in out Audio_Buffer) is
   begin
      C_Free_WAV (Audio_Buf => Audio_Buf);
      Audio_Buf := Audio_Buffer (System.Null_Address);
   end Free_WAV;

   ---------------------------------------------------------------------
   --  Load_WAV
   ---------------------------------------------------------------------
   procedure Load_WAV (File_Name : in     String;
                       Spec      :    out Audio_Spec;
                       Audio_Buf :    out Audio_Buffer;
                       Audio_Len :    out UInt32;
                       Success   :    out Boolean)
   is
      File_Ops : RWOps.RW_Ops;
   begin
      File_Ops :=
        RWOps.RW_From_File (File => Interfaces.C.To_C (File_Name),
                            Mode => Interfaces.C.To_C ("rb"));

      Success :=
        C_Load_WAV (Src      => File_Ops,
                    Free_Src => True,
                    Spec     => Spec'Address,
                    Buf      => Audio_Buf'Address,
                    Len      => Audio_Len'Address) /= null;
   end Load_WAV;

   ---------------------------------------------------------------------
   -- Open
   ---------------------------------------------------------------------
   procedure Open (Desired  : in out Audio_Spec;
                   Obtained : in out Audio_Spec;
                   Success  :    out Boolean)
   is
      Ret_Value : Int;
   begin
      Ret_Value := C_Open (Desired  => Desired'Address,
                           Obtained => Obtained'Address);

      Success := Ret_Value = 0;
   end Open;

   ---------------------------------------------------------------------
   -- Open
   ---------------------------------------------------------------------
   procedure Open (Required : in out Audio_Spec;
                   Success  :    out Boolean)
   is
      Ret_Value : Int;
   begin
      Ret_Value := C_Open (Desired  => Required'Address,
                           Obtained => System.Null_Address);

      Success := Ret_Value = 0;
   end Open;

end SDL.Audio;
