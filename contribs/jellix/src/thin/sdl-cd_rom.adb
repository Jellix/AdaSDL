--  Ada binding to SDL (http://www.libsdl.org), CD-ROM subroutines.
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

with Interfaces.C.Strings;

package body SDL.CD_ROM is

   ---------------------------------------------------------------------
   --  C_Name
   ---------------------------------------------------------------------
   function C_Name
     (Drive : in CD_Drive_Count) return Interfaces.C.Strings.chars_ptr;
   pragma Import (Convention    => C,
                  Entity        => C_Name,
                  External_Name => "SDL_CDName");

   ---------------------------------------------------------------------
   --  CD_In_Drive
   --
   --  #define CD_INDRIVE(status) ((int)(status) > 0)
   ---------------------------------------------------------------------
   function CD_In_Drive (S : in CD_Status) return Boolean is
   begin
      return S > Tray_Empty;
   end CD_In_Drive;

   ---------------------------------------------------------------------
   --  Name
   ---------------------------------------------------------------------
   function Name (Drive : in CD_Drive_Count) return String is
   begin
      return Interfaces.C.Strings.Value (C_Name (Drive => Drive));
   end Name;

   --  type CD_Track access functions

   ---------------------------------------------------------------------
   --  Track_Type
   ---------------------------------------------------------------------
   function Track_Type (T : in CD_Track) return CD_Track_Type is
   begin
      return T.Track_Type;
   end Track_Type;

   ---------------------------------------------------------------------
   --  Track_Number
   ---------------------------------------------------------------------
   function Track_Number (T : in CD_Track) return CD_Track_Number is
   begin
      return T.Id;
   end Track_Number;

   ---------------------------------------------------------------------
   --  Track_Length
   ---------------------------------------------------------------------
   function Track_Length (T : in CD_Track) return CD_Frame_Count is
   begin
      return T.Length;
   end Track_Length;

   ---------------------------------------------------------------------
   --  Track_Offset
   ---------------------------------------------------------------------
   function Track_Offset (T : in CD_Track) return CD_Frame_Number is
   begin
      return T.Offset;
   end Track_Offset;

   --  type CD access functions

   ---------------------------------------------------------------------
   --  Status
   ---------------------------------------------------------------------
   function Status (Value : in CD) return CD_Status is
   begin
      return Value.all.Status;
   end Status;

   ---------------------------------------------------------------------
   --  Tracks
   ---------------------------------------------------------------------
   function Tracks (Value : in CD) return CD_Track_Count is
   begin
      if
        CD_In_Drive (Value.all.Status)
      then
         return Value.all.Num_Tracks;
      else
         return 0;
      end if;
   end Tracks;

   ---------------------------------------------------------------------
   --  Current_Track
   ---------------------------------------------------------------------
   function Current_Track (Value : in CD) return CD_Track_Number is
   begin
      if
        CD_In_Drive (Value.all.Status)
      then
         return Value.all.Cur_Track;
      else
         return 0;
      end if;
   end Current_Track;

   ---------------------------------------------------------------------
   --  Current_Frame
   --
   --  Returns the current active (playing) frame in CD.
   ---------------------------------------------------------------------
   function Current_Frame (Value : in CD) return CD_Frame_Number is
   begin
      if
        CD_In_Drive (S => Value.all.Status)
      then
         return Value.all.Cur_Frame;
      else
         return 0;
      end if;
   end Current_Frame;

   ---------------------------------------------------------------------
   --  Tracks
   --
   --  Returns the track list of CD.
   ---------------------------------------------------------------------
   function Track_List (Value : in CD) return Track_Array is
   begin
      if
        CD_In_Drive (S => Value.all.Status)
      then
         return Value.all.Track (0 .. CD_Track_Number (Value.all.Num_Tracks) - 1);
      else
         return Track_Array'(1 .. 0 => CD_Track'(Id         => 0,
                                                 Track_Type => Audio,
                                                 Length     => 0,
                                                 Offset     => 0));
      end if;
   end Track_List;

end SDL.CD_ROM;
