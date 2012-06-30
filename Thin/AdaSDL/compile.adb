
-- ----------------------------------------------------------------- --
--                AdaSDL                                             --
--                Thin binding to Simple Direct Media Layer          --
--                Copyright (C) 2001-2007  A.M.F.Vargas              --
--                Antonio M. M. Ferreira Vargas                      --
--                Manhente - Barcelos - Portugal                     --
--                http://amvf.no.sapo.pt                             --
--                E-mail: amfv@sapo.pt                               --
-- ----------------------------------------------------------------- --
-- This library is free software; you can redistribute it and/or     --
-- modify it under the terms of the GNU General Public               --
-- License as published by the Free Software Foundation; either      --
-- version 2 of the License, or (at your option) any later version.  --
--                                                                   --
-- This library is distributed in the hope that it will be useful,   --
-- but WITHOUT ANY WARRANTY; without even the implied warranty of    --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU --
-- General Public License for more details.                          --
--                                                                   --
-- You should have received a copy of the GNU General Public         --
-- License along with this library; if not, write to the             --
-- Free Software Foundation, Inc., 59 Temple Place - Suite 330,      --
-- Boston, MA 02111-1307, USA.                                       --
--                                                                   --
-- As a special exception, if other files instantiate generics from  --
-- this unit, or you link this unit with other files to produce an   --
-- executable, this  unit  does not  by itself cause  the resulting  --
-- executable to be covered by the GNU General Public License. This  --
-- exception does not however invalidate any other reasons why the   --
-- executable file  might be covered by the  GNU Public License.     --
-- ----------------------------------------------------------------- --
pragma Warnings (Off);

with SDL;
with SDL.RWops;
with SDL.Types;
with SDL.Mutex;
with SDL.Video;
with SDL.Active;
with SDL.Keysym;
with SDL.Keyboard;
with SDL.Mouse;
with SDL.Joystick;
with SDL.Events;
with SDL.Error;
with SDL.Byteorder;
with SDL.Byteorder.Extra;
with SDL.Audio;
with SDL.Audio.Extra;
with SDL.Quit;
with SDL.Version;
with SDL.Timer;
with SDL.Thread;
with SDL.Cdrom;
with Lib_C;

procedure Make is
begin
   null;
end Make;

