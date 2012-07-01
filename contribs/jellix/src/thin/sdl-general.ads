--  Ada binding to SDL (http://www.libsdl.org), general subroutines.
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

package SDL.General is

   pragma Preelaborate;

   --  Flags
   type Init_Flags is new UInt32;

   INIT_NONE         : constant Init_Flags := 16#0000_0000#;
   INIT_TIMER        : constant Init_Flags := 16#0000_0001#;
   INIT_AUDIO        : constant Init_Flags := 16#0000_0010#;
   INIT_VIDEO        : constant Init_Flags := 16#0000_0020#;
   INIT_CDROM        : constant Init_Flags := 16#0000_0100#;
   INIT_JOYSTICK     : constant Init_Flags := 16#0000_0200#;
   INIT_EVERYTHING   : constant Init_Flags := 16#0000_FFFF#;

   INIT_NO_PARACHUTE : constant Init_Flags := 16#0010_0000#;
   INIT_EVENT_THREAD : constant Init_Flags := 16#0100_0000#;

   type Version_Info is
      record
         Major : UInt8;
         Minor : UInt8;
         Patch : UInt8;
      end record;
   pragma Convention (Convention => C,
                      Entity     => Version_Info);

   ---------------------------------------------------------------------
   --  Init
   --
   --  Initializes SDL.
   --
   --  This should be called before all other SDL functions. The flags
   --  parameter specifies what part(s) of SDL to initialize
   --
   --  Returns -1 on an error or 0 on success.
   ---------------------------------------------------------------------
   function Init (Flags : in Init_Flags) return Int;

   ---------------------------------------------------------------------
   --  Init_Sub_System
   --
   --  Initialize subsystems
   --
   --  After SDL has been initialized with Init you may initialize
   --  uninitialized subsystems with Init_Sub_System. The flags
   --  parameter is the same as that used in Init.
   --
   --  Returns -1 on an error or 0 on success.
   ---------------------------------------------------------------------
   function Init_Sub_System (Flags : in Init_Flags) return Int;

   ---------------------------------------------------------------------
   --  Quit_Sub_System
   --
   --  Shut down a subsystem
   --
   --  Quit_Sub_System allows you to shut down a subsystem that has been
   --  previously initialized by Init or Init_Sub_System. The flags tell
   --  Quit_Sub_System which subsystems to shut down, it uses the same
   --  values that are passed to Init.
   ---------------------------------------------------------------------
   procedure Quit_Sub_System (Flags : in Init_Flags);

   ---------------------------------------------------------------------
   --  Quit
   --
   --  Shut down SDL
   --
   --  Quit shuts down all SDL subsystems and frees the resources
   --  allocated to them. This should always be called before you exit.
   ---------------------------------------------------------------------
   procedure Quit;

   ---------------------------------------------------------------------
   --  Was_Init
   --
   --  Check which subsystems are initialized
   --
   --  Was_Init allows you to see which SDL subsytems have been
   --  initialized. Flags is a bitwise OR'd combination of the
   --  subsystems you wish to check.
   ---------------------------------------------------------------------
   function Was_Init (Flags : in Init_Flags) return Init_Flags;

   ---------------------------------------------------------------------
   --  Get_Error
   --
   --  Get SDL error string
   --
   --  Get_Error returns a string containing information about the last
   --  internal SDL error.
   ---------------------------------------------------------------------
   function Get_Error return String;

   ---------------------------------------------------------------------
   --  Get_Version
   --
   --  Returns the current SDL library's version.
   ---------------------------------------------------------------------
   function Get_Version return Version_Info;
   pragma Inline (Get_Version);

   ---------------------------------------------------------------------
   --  Put_Env
   --
   --  Set an environment variable for the current process.
   ---------------------------------------------------------------------
   procedure Put_Env (Name  : in String;
                      Value : in String);

private

   pragma Import (Convention    => C,
                  Entity        => Init,
                  External_Name => "SDL_Init");
   pragma Import (Convention    => C,
                  Entity        => Init_Sub_System,
                  External_Name => "SDL_InitSubSystem");
   pragma Import (Convention    => C,
                  Entity        => Quit,
                  External_Name => "SDL_Quit");
   pragma Import (Convention    => C,
                  Entity        => Quit_Sub_System,
                  External_Name => "SDL_QuitSubSystem");
   pragma Import (Convention    => C,
                  Entity        => Was_Init,
                  External_Name => "SDL_WasInit");

end SDL.General;
