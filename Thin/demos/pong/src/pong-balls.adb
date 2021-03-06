--  Pong-Demo for AdaSDL, ball actions.
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

package body Pong.Balls is

   ---------------------------------------------------------------------
   --  Create
   ---------------------------------------------------------------------
   function Create (Surface : in SDL.Video.Surface;
                    Initial : in SDL.Video.Rect;
                    Bounds  : in SDL.Video.Rect;
                    Speed   : in SDL.Types.UInt8) return Ball
   is
      Format : constant SDL.Video.PixelFormat_ptr := Surface.format;
   begin
      return Ball'(Old_Pos   => Position'(X => Initial.X,
                                          Y => Initial.Y),
                   New_Pos   => Position'(X => Initial.X,
                                          Y => Initial.Y),
                   Size      => Dimensions'(W => Initial.W,
                                            H => Initial.H),
                   Bounds    => SDL.Video.Rect'(X => Bounds.X,
                                                Y => Bounds.Y,
                                                W => Bounds.W - Initial.W,
                                                H => Bounds.H - Initial.H),
                   Direction => Position'(X => -1,
                                          Y => -1),
                   Black     => SDL.Video.MapRGB (Format => Format,
                                                  R      => 0,
                                                  G      => 0,
                                                  B      => 0),
                   White     => SDL.Video.MapRGB (Format => Format,
                                                  R      => 128,
                                                  G      => 128,
                                                  B      => 255),
                   Speed     => SDL.Types.SInt16 (Speed));
   end Create;

   ---------------------------------------------------------------------
   -- Draw
   ---------------------------------------------------------------------
   procedure Draw (This    : in out Ball;
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

   ---------------------------------------------------------------------
   --  Move
   ---------------------------------------------------------------------
   procedure Move (This    : in out Ball;
                   Clipped :    out Boolean;
                   Delta_X : in     SDL.Types.SInt16 := 0;
                   Delta_Y : in     SDL.Types.SInt16 := 0)
   is
      pragma Unreferenced (Delta_X, Delta_Y);
      Max_X : constant SDL.Types.SInt16 := This.Bounds.X + SDL.Types.SInt16 (This.Bounds.W);
      Max_Y : constant SDL.Types.SInt16 := This.Bounds.Y + SDL.Types.SInt16 (This.Bounds.H);
   begin
      This.New_Pos.X := This.Old_Pos.X + This.Direction.X * This.Speed;
      This.New_Pos.Y := This.Old_Pos.Y + This.Direction.Y * This.Speed;

      Clipped := False;

      --  Check bounds.
      if
        This.New_Pos.X not in This.Bounds.X .. Max_X
      then
         Clipped := True;

         Change_Dir (This => This,
                     X    => True,
                     Y    => False);
      end if;

      if
        This.New_Pos.Y not in This.Bounds.Y .. Max_Y
      then
         Clipped := True;

         Change_Dir (This => This,
                     X    => False,
                     Y    => True);
      end if;
   end Move;

   ---------------------------------------------------------------------
   --  Warp
   ---------------------------------------------------------------------
   procedure Warp (This    : in out Ball;
                   Initial : in     Position) is
   begin
      This.New_Pos := Initial;
   end Warp;

   ---------------------------------------------------------------------
   --  Collides
   ---------------------------------------------------------------------
   function Collides (This : in Ball;
                      That : in Display_Object'Class) return Boolean is
   begin
      return not ( (This.New_Pos.X                                  >= That.New_Pos.X + SDL.Types.SInt16 (That.Size.W)) or -- I.Left >= O.Right
                   (This.New_Pos.Y                                  >= That.New_Pos.Y + SDL.Types.SInt16 (That.Size.H)) or -- I.Top  >= O.Bottom
                   (This.New_Pos.X + SDL.Types.SInt16 (This.Size.W) <= That.New_Pos.X                                 ) or -- I.Right <= O.Left
                   (This.New_Pos.Y + SDL.Types.SInt16 (This.Size.H) <= That.New_Pos.Y                                 )    -- I.Bottom <= O.Top
                );
   end Collides;

   ---------------------------------------------------------------------
   --  Change_Dir
   ---------------------------------------------------------------------
   procedure Change_Dir (This : in out Ball;
                         X    : in     Boolean;
                         Y    : in     Boolean)
   is
      Clipped : Boolean;
   begin
      if X then
         This.Direction.X := -This.Direction.X;
      end if;

      if Y then
         This.Direction.Y := -This.Direction.Y;
      end if;

      if X or Y then
         Move (This    => This,
               Clipped => Clipped);
      end if;
   end Change_Dir;

end Pong.Balls;
