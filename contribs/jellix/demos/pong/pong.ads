--  Pong-Demo for AdaSDL, root package for graphics objects.
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

package Pong is

   type Position is
      record
         X : SDL.SInt16;
         Y : SDL.SInt16;
      end record;

   type Dimensions is
      record
         W : SDL.UInt16;
         H : SDL.UInt16;
      end record;

   type Display_Object is abstract tagged private;

   ---------------------------------------------------------------------
   --  Draw
   ---------------------------------------------------------------------
   procedure Draw (This    : in out Display_Object;
                   Surface : in     SDL.Video.Surface) is abstract;

   ---------------------------------------------------------------------
   --  Move
   ---------------------------------------------------------------------
   procedure Move (This    : in out Display_Object;
                   Clipped :    out Boolean;
                   Delta_X : in     SDL.SInt16;
                   Delta_Y : in     SDL.SInt16) is abstract;

   ---------------------------------------------------------------------
   --  X_Position
   ---------------------------------------------------------------------
   function X_Position (This : in Display_Object'Class) return SDL.SInt16;
   pragma Inline (X_Position);

   ---------------------------------------------------------------------
   --  Y_Position
   ---------------------------------------------------------------------
   function Y_Position (This : in Display_Object'Class) return SDL.SInt16;
   pragma Inline (Y_Position);

private

   type Display_Object is abstract tagged
      record
         Old_Pos : Position;
         New_Pos : Position;
         Size    : Dimensions;
         Bounds  : SDL.Video.Rectangle;
      end record;

end Pong;
