
-- ----------------------------------------------------------------- --
--                                                                   --
-- This is free software; you can redistribute it and/or             --
-- modify it under the terms of the GNU General Public               --
-- License as published by the Free Software Foundation; either      --
-- version 2 of the License, or (at your option) any later version.  --
--                                                                   --
-- This software is distributed in the hope that it will be useful,  --
-- but WITHOUT ANY WARRANTY; without even the implied warranty of    --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU --
-- General Public License for more details.                          --
--                                                                   --
-- You should have received a copy of the GNU General Public         --
-- License along with this library; if not, write to the             --
-- Free Software Foundation, Inc., 59 Temple Place - Suite 330,      --
-- Boston, MA 02111-1307, USA.                                       --
--                                                                   --
-- ----------------------------------------------------------------- --

-- ----------------------------------------------------------------- --
-- This is a translation, to the Ada programming language, of the    --
-- original C test files written by Sam Lantinga - www.libsdl.org    --
-- translation made by Antonio F. Vargas - amfv@sapo.pt              --
-- ----------------------------------------------------------------- --

with Interfaces.C;
with Interfaces.C.Strings;
with Ada.Command_Line;
with SDL.Video;
with SDL.Events;
package TestGL_Sprogs is
   package V  renames SDL.Video;
   package Ev renames SDL.Events;
   package C renames Interfaces.C;
   package CS renames Interfaces.C.Strings;
   package CL renames Ada.Command_Line;


   procedure HotKey_ToggleFullScreen;
   procedure HotKey_ToggleGrab;
   procedure HotKey_Iconify;
   procedure RunGLTest (video_flags : in out V.Surface_Flags;
                        logo     : Boolean; slowly : Boolean;
                        bppixel  : C.int; gamma  : C.C_float);

end TestGL_Sprogs;

