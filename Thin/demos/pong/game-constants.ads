--  Pong-Demo for AdaSDL, game constants.
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

with Ada.Real_Time;

with SDL.Types;

with Pong;

use type SDL.Types.SInt16;

package Game.Constants is

   --  Frame rate.
   Game_Speed : constant Ada.Real_Time.Time_Span := Ada.Real_Time.Milliseconds (10);

   --  Screen sizes.
   Screen_Width  : constant := 640;
   Screen_Height : constant := 480;

   --  Ball and paddle sizes.
   Ball_Size     : constant := 10;
   Paddle_Width  : constant := 10;
   Paddle_Height : constant := 50;

   Ball_Initial : constant Pong.Position :=
                    Pong.Position'(X => Screen_Width / 2  - Ball_Size / 2,
                                   Y => Screen_Height / 2 - Ball_Size / 2);

   --  Minimum position difference before computer moves its paddle.
   Threshold     : constant := Paddle_Height / 2;

   -- Speed constants for movement.
   Ball_Speed     : constant :=  2;
   Computer_Speed : constant :=  8;
   Player_Speed   : constant := 16;

   --  Minimum score and points difference to reach winning condition.
   Min_Winning_Score : constant := 11;
   Min_Difference    : constant :=  2;

end Game.Constants;
