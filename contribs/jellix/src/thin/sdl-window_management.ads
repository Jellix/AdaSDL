--  Ada binding to SDL (http://www.libsdl.org), window management.
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

with SDL.Video;

package SDL.Window_Management is

   type Grab_Mode is (Query,
                      Off,
                      On,
                      Full_Screen); --  Used internally.
   for Grab_Mode use (Query       => -1,
                      Off         => 0,
                      On          => 1,
                      Full_Screen => 2);
   pragma Convention (Convention => C,
                      Entity     => Grab_Mode);

   ---------------------------------------------------------------------
   --  Set_Caption
   --
   --  Sets the title and icon text of the display window (UTF-8
   --  encoded).
   ---------------------------------------------------------------------
   procedure Set_Caption (Title : in String;
                          Icon  : in String);

   ---------------------------------------------------------------------
   --  Get_Title
   --
   --  Returns the current window title.
   --
   --  For this to work, Set_Caption must have been called before.
   ---------------------------------------------------------------------
   function Get_Title return String;

   ---------------------------------------------------------------------
   --  Get_Caption
   --
   --  Sets the title and icon text of the display window (UTF-8
   --  encoded).
   --
   --  For this to work, Set_Caption must have been called before.
   ---------------------------------------------------------------------
   procedure Get_Caption (Title : in out String;
                          Icon  : in out String);

   ---------------------------------------------------------------------
   --  Set_Icon
   --
   --  Sets the icon for the display window.
   --
   --  Sets the icon for the display window. Win32 icons must be 32x32.
   --
   --  This function must be called before the first call to
   --  SDL.Video.Set_Mode.
   --
   --  It takes an icon surface (, and a mask in MSB format [NOT YET]).
   --
   --  If mask is NULL (FIXME), the entire icon surface will be used as
   --  the icon.
   ---------------------------------------------------------------------
   procedure Set_Icon (Icon : in Video.Surface);
   pragma Inline (Set_Icon);

   ---------------------------------------------------------------------
   --  Iconify
   --
   --  Iconify/Minimise the window
   --
   --  If the application is running in a window managed environment SDL
   --  attempts to iconify/minimise it. If Iconify is successful, the
   --  application will receive an APP_ACTIVE loss event.
   --
   --  TODO: Returns non-zero on success or 0 if iconification is not
   --        supported or was refused by the window manager.
   ---------------------------------------------------------------------
   procedure Iconify;

   ---------------------------------------------------------------------
   --  Toggle_Full_Screen
   --
   --  Toggles fullscreen mode.
   --
   --  Toggles the application between windowed and fullscreen mode, if
   --  supported. (X11 is the only target currently supported, BeOS
   --  support is experimental).
   --
   --  Returns SDL.True on Success, SDL.False on failure.
   ---------------------------------------------------------------------
   function Toggle_Full_Screen (Screen : in Video.Surface) return Bool;

   ---------------------------------------------------------------------
   --  Grab_Input
   --
   --  Grabs mouse and keyboard input.
   --
   --  Grabbing means that the mouse is confined to the application
   --  window, and nearly all keyboard input is passed directly to the
   --  application, and not interpreted by a window manager, if any.
   --
   --  When mode is Query the grab mode is not changed, but the current
   --  grab mode is returned.
   --
   --  Returns the current/new Grab_Mode.
   ---------------------------------------------------------------------
   function Grab_Input (Mode : in Grab_Mode) return Grab_Mode;

private

   pragma Import (Convention    => C,
                  Entity        => Grab_Input,
                  External_Name => "SDL_WM_GrabInput");

   pragma Import (Convention    => C,
                  Entity        => Iconify,
                  External_Name => "SDL_WM_IconifyWindow");

   pragma Import (Convention    => C,
                  Entity        => Toggle_Full_Screen,
                  External_Name => "SDL_WM_ToggleFullScreen");

end SDL.Window_Management;
