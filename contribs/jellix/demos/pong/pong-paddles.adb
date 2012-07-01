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

with SDL;

use type SDL.SInt16,
         SDL.UInt16;

package body Pong.Paddles is

   ---------------------------------------------------------------------
   --  Create
   ---------------------------------------------------------------------
   function Create (Surface : in SDL.Video.Surface;
                    Initial : in SDL.Video.Rectangle;
                    Bounds  : in SDL.Video.Rectangle;
                    Speed   : in SDL.UInt8) return Paddle
   is
      Format : constant SDL.Video.Pixel_Format :=
                 SDL.Video.Format (S => Surface).all;
   begin
      return Paddle'(Old_Pos => Position'(X => Initial.X,
                                          Y => Initial.Y),
                     New_Pos => Position'(X => Initial.X,
                                          Y => Initial.Y),
                     Size    => Dimensions'(W => Initial.W,
                                            H => Initial.H),
                     Bounds  => SDL.Video.Rectangle'(X => Bounds.X,
                                                     Y => Bounds.Y,
                                                     W => Bounds.W - Initial.W,
                                                     H => Bounds.H - Initial.H),
                     Black   => SDL.Video.Map_RGB (Format => Format,
                                                   Red    => 0,
                                                   Green  => 0,
                                                   Blue   => 0),
                     White   => SDL.Video.Map_RGB (Format => Format,
                                                   Red    => 255,
                                                   Green  => 255,
                                                   Blue   => 255),
                     Speed   => SDL.SInt16 (Speed));
   end Create;

   ---------------------------------------------------------------------
   --  Move
   ---------------------------------------------------------------------
   procedure Move (This    : in out Paddle;
                   Clipped :    out Boolean;
                   Delta_X : in     SDL.SInt16 := 0;
                   Delta_Y : in     SDL.SInt16)
   is
      pragma Unreferenced (Delta_X);
      Max_Y : constant SDL.SInt16 := This.Bounds.Y + SDL.SInt16 (This.Bounds.H);
   begin
      This.New_Pos.Y := This.Old_Pos.Y + Delta_Y * This.Speed;

      if
        This.New_Pos.Y > Max_Y
      then
         Clipped := True;
         This.New_Pos.Y := Max_Y;
      elsif
        This.New_Pos.Y < This.Bounds.Y
      then
         Clipped := True;
         This.New_Pos.Y := This.Bounds.Y;
      else
         Clipped := False;
      end if;
   end Move;

   ---------------------------------------------------------------------
   --  Draw
   ---------------------------------------------------------------------
   procedure Draw (This    : in out Paddle;
                   Surface : in     SDL.Video.Surface)
   is
      Clear_At : SDL.Video.Rectangle := SDL.Video.Rectangle'(X => This.Old_Pos.X,
                                                             Y => This.Old_Pos.Y,
                                                             W => This.Size.W,
                                                             H => This.Size.H);
      Draw_At  : SDL.Video.Rectangle := SDL.Video.Rectangle'(X => This.New_Pos.X,
                                                             Y => This.New_Pos.Y,
                                                             W => This.Size.W,
                                                             H => This.Size.H);
   begin
      SDL.Video.Fill_Rect (Destination => Surface,
                           Area        => Clear_At,
                           Fill_Color  => This.Black);
      pragma Unreferenced (Clear_At);

      SDL.Video.Fill_Rect (Destination => Surface,
                           Area        => Draw_At,
                           Fill_Color  => This.White);
      pragma Unreferenced (Draw_At);

      This.Old_Pos := This.New_Pos;
   end Draw;

end Pong.Paddles;
