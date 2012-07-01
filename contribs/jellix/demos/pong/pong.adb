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

package body Pong is

   ---------------------------------------------------------------------
   -- X_Position
   ---------------------------------------------------------------------
   function X_Position (This : in Display_Object'Class) return SDL.SInt16 is
   begin
      return This.New_Pos.X;
   end X_Position;

   ---------------------------------------------------------------------
   -- Y_Position
   ---------------------------------------------------------------------
   function Y_Position (This : in Display_Object'Class) return SDL.SInt16 is
   begin
      return This.New_Pos.Y;
   end Y_Position;

end Pong;
