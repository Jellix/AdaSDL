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

with SDL.Types;

use type SDL.Types.SInt16,
         SDL.Types.UInt16;

package body Pong.Paddles is

   ---------------------------------------------------------------------
   --  Create
   ---------------------------------------------------------------------
   function Create (Surface : in SDL.Video.Surface;
                    Initial : in SDL.Video.Rect;
                    Bounds  : in SDL.Video.Rect;
                    Speed   : in SDL.Types.UInt8) return Paddle
   is
      Format : constant SDL.Video.PixelFormat_ptr := Surface.format;
   begin
      return Paddle'(Old_Pos => Position'(X => Initial.X,
                                          Y => Initial.Y),
                     New_Pos => Position'(X => Initial.X,
                                          Y => Initial.Y),
                     Size    => Dimensions'(W => Initial.W,
                                            H => Initial.H),
                     Bounds  => SDL.Video.Rect'(X => Bounds.X,
                                                Y => Bounds.Y,
                                                W => Bounds.W - Initial.W,
                                                H => Bounds.H - Initial.H),
                     Black   => SDL.Video.MapRGB (Format => Format,
                                                  R      => 0,
                                                  G      => 0,
                                                  B      => 0),
                     White   => SDL.Video.MapRGB (Format => Format,
                                                  R      => 255,
                                                  G      => 255,
                                                  B      => 255),
                     Speed   => SDL.Types.SInt16 (Speed));
   end Create;

   ---------------------------------------------------------------------
   --  Move
   ---------------------------------------------------------------------
   procedure Move (This    : in out Paddle;
                   Clipped :    out Boolean;
                   Delta_X : in     SDL.Types.SInt16 := 0;
                   Delta_Y : in     SDL.Types.SInt16)
   is
      pragma Unreferenced (Delta_X);
      Max_Y : constant SDL.Types.SInt16 := This.Bounds.Y + SDL.Types.SInt16 (This.Bounds.H);
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
      Clear_At : SDL.Video.Rect := SDL.Video.Rect'(X => This.Old_Pos.X,
                                                   Y => This.Old_Pos.Y,
                                                   W => This.Size.W,
                                                   H => This.Size.H);
      Draw_At  : SDL.Video.Rect := SDL.Video.Rect'(X => This.New_Pos.X,
                                                   Y => This.New_Pos.Y,
                                                   W => This.Size.W,
                                                   H => This.Size.H);
   begin
      SDL.Video.FillRect (Dst     => Surface'Unrestricted_Access,
                          dstrect => Clear_At,
                          Color   => This.Black);
      pragma Unreferenced (Clear_At);

      SDL.Video.FillRect (Dst     => Surface'Unrestricted_Access,
                          dstrect => Draw_At,
                          Color   => This.White);
      pragma Unreferenced (Draw_At);

      This.Old_Pos := This.New_Pos;
   end Draw;

end Pong.Paddles;
