--  Pong-Demo for AdaSDL, paddle actions.
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

package Pong.Paddles is

   type Paddle is new Pong.Display_Object with private;

   ---------------------------------------------------------------------
   --  Create
   ---------------------------------------------------------------------
   function Create (Surface : in SDL.Video.Surface;
                    Initial : in SDL.Video.Rectangle;
                    Bounds  : in SDL.Video.Rectangle;
                    Speed   : in SDL.UInt8) return Paddle;

   ---------------------------------------------------------------------
   --  Move
   ---------------------------------------------------------------------
   procedure Move (This    : in out Paddle;
                   Clipped :    out Boolean;
                   Delta_X : in     SDL.SInt16 := 0;
                   Delta_Y : in     SDL.SInt16);

   ---------------------------------------------------------------------
   --  Draw
   ---------------------------------------------------------------------
   procedure Draw (This    : in out Paddle;
                   Surface : in     SDL.Video.Surface);

private

   type Paddle is new Pong.Display_Object with
      record
         Speed : SDL.SInt16;
         Black : SDL.UInt32;
         White : SDL.UInt32;
      end record;

end Pong.Paddles;
