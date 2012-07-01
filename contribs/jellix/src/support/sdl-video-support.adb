--  Ada binding to SDL (http://www.libsdl.org), video support
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

with Ada.Characters.Latin_1,
     Ada.Strings.Fixed,
     Ada.Text_IO;

package body SDL.Video.Support is

   New_Line : constant String :=
                Ada.Characters.Latin_1.CR & Ada.Characters.Latin_1.LF;

   ---------------------------------------------------------------------
   --  Trim
   ---------------------------------------------------------------------
   function Trim
     (Source : in String;
      Side   : in Ada.Strings.Trim_End := Ada.Strings.Both) return String
      renames Ada.Strings.Fixed.Trim;

   ---------------------------------------------------------------------
   --  Image
   ---------------------------------------------------------------------
   function Image (Area : in Rectangle) return String is
   begin
      return
        String'("(" &
                Trim (Source => SInt16'Image (Area.X)) & ", " &
                Trim (Source => SInt16'Image (Area.Y)) & ") -> (" &
                Trim (Source => UInt16'Image (Area.W)) & ", " &
                Trim (Source => UInt16'Image (Area.H)) & ")");
   end Image;

   ---------------------------------------------------------------------
   --  Image
   ---------------------------------------------------------------------
   function Image (I : in Info) return String is
   begin
      return
        String'
          ("Hardware surfaces     : " & Boolean'Image    (I.HW_Available          ) & New_Line &
           "Window Mgr. available : " & Boolean'Image    (I.WM_Available          ) & New_Line &
           "HW Blits accelerated  : " & Boolean'Image    (I.Blit_HW               ) & New_Line &
           "HW ColorKey blits     : " & Boolean'Image    (I.Blit_HW_CC            ) & New_Line &
           "HW Alpha blits        : " & Boolean'Image    (I.Blit_HW_Alpha         ) & New_Line &
           "SW Blits accelerated  : " & Boolean'Image    (I.Blit_SW               ) & New_Line &
           "SW ColorKey blits     : " & Boolean'Image    (I.Blit_SW_CC            ) & New_Line &
           "SW Alpha blits        : " & Boolean'Image    (I.Blit_SW_Alpha         ) & New_Line &
           "Color fills accel.    : " & Boolean'Image    (I.Blit_Fill             ) & New_Line &
           "Video memory (KBytes) :"  & SDL.UInt32'Image (I.Video_Memory          ) & New_Line &
           "bpp                   :"  & SDL.UInt8'Image  (I.Pixel_Format.all.Depth) & New_Line &
           "Width                 :"  & SDL.Int'Image    (I.Width                 ) & New_Line &
           "Height                :"  & SDL.Int'Image    (I.Height                ));
   end Image;

   ---------------------------------------------------------------------
   --  Size_Image
   ---------------------------------------------------------------------
   function Size_Image (Area : in Rectangle) return String is
   begin
      return
        String'(Trim (Source => UInt16'Image (Area.W)) & "x" &
                Trim (Source => UInt16'Image (Area.H)));
   end Size_Image;

   ---------------------------------------------------------------------
   --  Print_Surface_Info
   ---------------------------------------------------------------------
   procedure Print_Surface_Info (Screen : in Surface) is
      S : Surface_Record renames Screen.all; --  May crash (i.e. raise Constraint_Error) if Surface is null.
   begin
      Ada.Text_IO.Put_Line ("Surface flags  :"  & UInt32'Image (S.Flags));
      Ada.Text_IO.Put_Line
        ("Dimensions     : " &
         Trim (Source => Int'Image (S.Width)) & "x" &
         Trim (Source => Int'Image (S.Height)));
      Ada.Text_IO.Put_Line ("Pitch          :"  & UInt16'Image (S.Pitch));
      Ada.Text_IO.Put_Line ("Clip           : " & Image (S.Clip_Rect));

      if
        S.Format /= null
      then
         Print_Palette :
         declare
            F : Pixel_Format renames S.Format.all;
         begin
            Ada.Text_IO.Put_Line ("BPP            :" & UInt8'Image (F.Depth));

            if
              F.Palette /= null
            then
               Ada.Text_IO.Put_Line ("Palette entries:" & Int'Image (F.Palette.all.Num_Colors));
            else
               Ada.Text_IO.Put_Line ("Non paletted mode.");
            end if;
         end Print_Palette;
      else
         Ada.Text_IO.Put_Line ("No format available.");
      end if;
   end Print_Surface_Info;

end SDL.Video.Support;
