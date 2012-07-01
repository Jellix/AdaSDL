--  Ada binding to SDL (http://www.libsdl.org), Audio support
--  extensions.
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

with Ada.Characters.Latin_1;

package body SDL.Audio.Support is

   New_Line : constant String :=
                Ada.Characters.Latin_1.CR & Ada.Characters.Latin_1.LF;

   ---------------------------------------------------------------------
   --  Image
   ---------------------------------------------------------------------
   function Image (Format : in Format_Id) return String is
   begin
      case Format is
         when Unsigned_8     => return " unsigned 8-bit";
         when Unsigned_16_LE => return " unsigned 16-bit little endian";
         when Unsigned_16_BE => return " unsigned 16-bit big endian";
         when Signed_8       => return " signed 8-bit";
         when Signed_16_LE   => return " signed 16-bit little endian";
         when Signed_16_BE   => return " signed 16-bit big endian";
         when others         => return Format_Id'Image (Format);
      end case;
   end Image;

   ---------------------------------------------------------------------
   --  Image
   ---------------------------------------------------------------------
   function Image (CVT : in Conversion) return String is
   begin
      return
        String'
          ("Needed            : " & Bool'Image   (CVT.Needed    ) & New_Line &
           "Source format     :"  & Image        (CVT.Src_Format) & New_Line &
           "Destination format:"  & Image        (CVT.Dst_Format) & New_Line &
           "Rate increment    :"  & Double'Image (CVT.Rate_Incr ) & New_Line &
           --  CVT.Buf
           "Length            :"  & Int'Image    (CVT.Len       ) & New_Line &
           "Converted length  :"  & Int'Image    (CVT.Len_Cvt   ) & New_Line &
           "Length multiplier :"  & Int'Image    (CVT.Len_Mult  ) & New_Line &
           "Length ratio      :"  & Double'Image (CVT.Len_Ratio ));
   end Image;

   ---------------------------------------------------------------------
   -- Image
   ---------------------------------------------------------------------
   function Image (Spec : in Audio_Spec) return String is
   begin
      return
        String'
          ("Frequency:" & Int'Image    (Spec.Frequency) & New_Line &
           "Format   :" & Image        (Spec.Format   ) & New_Line &
           "Channels :" & UInt8'Image  (Spec.Channels ) & New_Line &
           "Silence  :" & UInt8'Image  (Spec.Silence  ) & New_Line &
           "Samples  :" & UInt16'Image (Spec.Samples  ) & New_Line &
           "Padding  :" & UInt16'Image (Spec.Padding  ) & New_Line &
           "Size     :" & UInt32'Image (Spec.Size     ));
   end Image;

end SDL.Audio.Support;
