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

package SDL.CD_ROM is

   --  The maximum number of CD-ROM tracks on a disk.
   MAX_TRACKS : constant := 99;

   --  The types of CD-ROM track possible
   type CD_Track_Type is (Audio,
                          Data);
   for CD_Track_Type use (Audio => 16#00#,
                          Data  => 16#04#);

   type CD_Drive_Count is new UInt32;

   type CD_Frame_Count  is new UInt32;
   type CD_Frame_Number is new UInt32;

   type CD_Track_Count  is new UInt32 range 0 .. MAX_TRACKS;
   type CD_Track_Number is new UInt32 range 0 .. MAX_TRACKS;

   type CD_Status is (Error,
                      Tray_Empty,
                      Stopped,
                      Playing,
                      Paused);
   for CD_Status use (Error      => -1,
                      Tray_Empty =>  0,
                      Stopped    =>  1,
                      Playing    =>  2,
                      Paused     =>  3);
   pragma Convention (Convention => C,
                      Entity     => CD_Status);

   type CD_Track is private;

   type Track_Array is array (CD_Track_Number range <>) of CD_Track;
   pragma Convention (Convention => C,
                      Entity     => Track_Array);

   --  A handle for an open CD drive.
   type CD is private;
   Null_Handle : constant CD;

   --  CD_Track type operations

   ---------------------------------------------------------------------
   --  Track_Type
   ---------------------------------------------------------------------
   function Track_Type (T : in CD_Track) return CD_Track_Type;
   pragma Inline (Track_Type);

   ---------------------------------------------------------------------
   --  Track_Number
   ---------------------------------------------------------------------
   function Track_Number (T : in CD_Track) return CD_Track_Number;
   pragma Inline (Track_Number);

   ---------------------------------------------------------------------
   --  Track_Length
   ---------------------------------------------------------------------
   function Track_Length (T : in CD_Track) return CD_Frame_Count;
   pragma Inline (Track_Length);

   ---------------------------------------------------------------------
   --  Track_Offset
   ---------------------------------------------------------------------
   function Track_Offset (T : in CD_Track) return CD_Frame_Number;
   pragma Inline (Track_Offset);

   --  CD type operations.

   ---------------------------------------------------------------------
   --  Status
   --
   --  Returns the Status currently stored in CD.
   --
   --  Note: To update the status record, you should call Drive_Status.
   ---------------------------------------------------------------------
   function Status (Value : in CD) return CD_Status;
   pragma Inline (Status);

   ---------------------------------------------------------------------
   --  Tracks
   --
   --  Returns the number of tracks currently stored in CD.
   --
   --  If there is no CD in the drive, 0 will be returned.
   ---------------------------------------------------------------------
   function Tracks (Value : in CD) return CD_Track_Count;

   ---------------------------------------------------------------------
   --  Current_Track
   --
   --  Returns the current active (playing) track in CD.
   --
   --  If there is no CD in the drive, 0 will be returned.
   ---------------------------------------------------------------------
   function Current_Track (Value : in CD) return CD_Track_Number;

   ---------------------------------------------------------------------
   --  Current_Frame
   --
   --  Returns the current active (playing) frame in CD.
   --
   --  If there is no CD in the drive, 0 will be returned.
   ---------------------------------------------------------------------
   function Current_Frame (Value : in CD) return CD_Frame_Number;

   ---------------------------------------------------------------------
   --  Tracks
   --
   --  Returns the track list of CD.
   --
   --  The length of the returned array will be equal to the value
   --  returned by the Tracks function.
   --  If there is no CD in the drive, an empty array will be returned.
   ---------------------------------------------------------------------
   function Track_List (Value : in CD) return Track_Array;

   --  Actual SDL_CD operations.

   ---------------------------------------------------------------------
   --  Num_Drives
   --
   --  Returns the number of CD-ROM drives on the system.
   --
   --  FIXME: It will return -1 (actually Drive_Count'Last) if SDL.Init
   --         has not been called with the SDL.General.INIT_CDROM flag
   --         set.
   ---------------------------------------------------------------------
   function Num_Drives return CD_Drive_Count;

   ---------------------------------------------------------------------
   --  Name
   --
   --  Returns a human-readable, system-dependent identifier for the
   --  CD-ROM.
   --  Drive is the index of the drive. Drive indices start at 0 and end
   --  at Num_Drives - 1.
   ---------------------------------------------------------------------
   function Name (Drive : in CD_Drive_Count) return String;

   ---------------------------------------------------------------------
   --  Open
   --
   --  Opens a CD-ROM drive for access.
   --
   --  It returns a CD structure on success, or NULL if the drive was
   --  invalid or busy. This newly opened CD-ROM becomes the default CD
   --  used when other CD functions are passed a NULL CD-ROM handle.
   --
   --  Drives are numbered starting with 0. Drive 0 is the system
   --  default CD-ROM.
   ---------------------------------------------------------------------
   function Open (Drive : in CD_Drive_Count) return CD;

   ---------------------------------------------------------------------
   --  Drive_Status
   --
   --  Returns the current status of the given drive.
   --
   --  This function returns the current status of the given Drive.
   --  If the Drive has a CD in it, the table of contents of the CD and
   --  current play position of the CD will be stored in the CD
   --  structure.
   --
   --  Note: Drive_Status also updates the CD structure passed to it.
   ---------------------------------------------------------------------
   function Drive_Status (Drive : in CD) return CD_Status;

   ---------------------------------------------------------------------
   --  Play
   --
   --  Play a CD.
   --
   --  Plays the given cdrom, starting a frame start for length frames.
   --
   --  Returns 0 on success, or -1 on an error.
   ---------------------------------------------------------------------
   function Play (Drive  : in CD;
                  Start  : in CD_Frame_Number;
                  Length : in CD_Frame_Count) return Int;

   ---------------------------------------------------------------------
   --  Play_Tracks
   --
   --  Play the given CD track(s).
   --
   --  Play_Tracks plays the given CD starting at track Start_Track, for
   --  Num_Tracks tracks.
   --
   --  Start_Frame is the frame offset, from the beginning of the
   --  Start_Track, at which to start. Num_Frames is the frame offset,
   --  from the beginning of the last track (Start_Track + Num_Tracks),
   --  at which to end playing.
   --
   --  Play_Tracks should only be called after calling Status to get
   --  track information about the CD.
   --
   --  Note: Data tracks are ignored.
   --
   --  Returns 0, or -1 if there was an error.
   ---------------------------------------------------------------------
   function Play_Tracks (Drive       : in CD;
                         Start_Track : in CD_Track_Number;
                         Start_Frame : in CD_Frame_Number;
                         Num_Tracks  : in CD_Track_Count;
                         Num_Frames  : in CD_Frame_Count) return Int;

   ---------------------------------------------------------------------
   --  Pause
   --
   --  Pauses play on the given CD-ROM.
   --
   --  Returns 0 on success, or -1 on an error.
   ---------------------------------------------------------------------
   function Pause (Drive : in CD) return Int;

   ---------------------------------------------------------------------
   --  Resume
   --
   --  Resumes play on the given CD-ROM.
   --
   --  Returns 0 on success, or -1 on an error.
   ---------------------------------------------------------------------
   function Resume (Drive : in CD) return Int;

   ---------------------------------------------------------------------
   --  Stop
   --
   --  Stops play on the given CD-ROM.
   --
   --  Returns 0 on success, or -1 on an error.
   ---------------------------------------------------------------------
   function Stop (Drive : in CD) return Int;

   ---------------------------------------------------------------------
   --  Eject
   --
   --  Ejects the given CD-ROM.
   --
   --  Returns 0 on success, or -1 on an error.
   ---------------------------------------------------------------------
   function Eject (Drive : in CD) return Int;

   ---------------------------------------------------------------------
   --  Close
   --
   --  Closes the given cdrom handle (NOT the drive!).
   ---------------------------------------------------------------------
   procedure Close (Handle : in CD);

   ---------------------------------------------------------------------
   --  CD_In_Drive
   --
   --  Translates a status structure to a "disk in drive" flag.
   ---------------------------------------------------------------------
   function CD_In_Drive (S : in CD_Status) return Boolean;
   pragma Inline (CD_In_Drive);

private

   type CD_Track is
      record
         Id         : CD_Track_Number;
         Track_Type : CD_Track_Type;
         Length     : CD_Frame_Count;
         Offset     : CD_Frame_Number;
      end record;
   for CD_Track use
      record
         Id         at 0 range 0 ..  7;
         Track_Type at 1 range 0 ..  7;
         --  Unused at 2 range 0 .. 15;
         Length     at 4 range 0 .. 31;
         Offset     at 8 range 0 .. 31;
      end record;
   --  Adding a Convention pragma to a record with represention aspects
   --  does not make too much sense, I suppose. But do it anyway.
   pragma Convention (Convention => C,
                      Entity     => CD_Track);

   subtype Max_Track_Array is Track_Array (0 .. MAX_TRACKS - 1);

   type CD_Record is
      record
         Id         : Int;       --  Private drive identifier.
         Status     : CD_Status; --  Current drive status.

         --  The rest of the structure is only valid if there's a CD in the drive
         Num_Tracks : CD_Track_Count;
         Cur_Track  : CD_Track_Number;
         Cur_Frame  : CD_Frame_Number;
         Track      : Max_Track_Array;
      end record;
   pragma Convention (Convention => C,
                      Entity     => CD_Record);

   type CD is access all CD_Record;
   pragma Convention (Convention => C,
                      Entity     => CD);

   Null_Handle : constant CD := null;

   pragma Import (Convention    => C,
                  Entity        => Close,
                  External_Name => "SDL_CDClose");

   pragma Import (Convention    => C,
                  Entity        => Eject,
                  External_Name => "SDL_CDEject");

   pragma Import (Convention    => C,
                  Entity        => Num_Drives,
                  External_Name => "SDL_CDNumDrives");

   pragma Import (Convention    => C,
                  Entity        => Open,
                  External_Name => "SDL_CDOpen");

   pragma Import (Convention    => C,
                  Entity        => Pause,
                  External_Name => "SDL_CDPause");

   pragma Import (Convention    => C,
                  Entity        => Play,
                  External_Name => "SDL_CDPlay");

   pragma Import (Convention    => C,
                  Entity        => Play_Tracks,
                  External_Name => "SDL_CDPlayTracks");

   pragma Import (Convention    => C,
                  Entity        => Resume,
                  External_Name => "SDL_CDResume");

   pragma Import (Convention    => C,
                  Entity        => Drive_Status,
                  External_Name => "SDL_CDStatus");

   pragma Import (Convention    => C,
                  Entity        => Stop,
                  External_Name => "SDL_CDStop");

end SDL.CD_ROM;
