--  AdaSDL, window management (icon) test stuff.
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

with SDL.Video,
     SDL.Window_Management;

package body SDL_Tests.Icon is

   ---------------------------------------------------------------------
   -- Set_Icon
   ---------------------------------------------------------------------
   procedure Set_Icon is
      Img  : SDL.Video.Surface;
      Rect : SDL.Video.Rectangle;
   begin
      Img := SDL.Video.Create_RGB_Surface (Flags      => SDL.Video.SW_SURFACE,
                                           Width      => 32,
                                           Height     => 32,
                                           Depth      => 32,
                                           Red_Mask   => 16#0000_00FF#,
                                           Green_Mask => 16#0000_FF00#,
                                           Blue_Mask  => 16#00FF_0000#,
                                           Alpha_Mask => 16#FF00_0000#);

      Draw_Icon :
      declare
         Fmt : SDL.Video.Pixel_Format renames SDL.Video.Format (S => Img).all;

         Green  : constant SDL.UInt32 := SDL.Video.Map_RGB (Format => Fmt,
                                                            Red    =>  64,
                                                            Green  => 255,
                                                            Blue   =>  64);
         Blue   : constant SDL.UInt32 := SDL.Video.Map_RGB (Format => Fmt,
                                                            Red    =>   0,
                                                            Green  =>   0,
                                                            Blue   => 128);
         Yellow : constant SDL.UInt32 := SDL.Video.Map_RGB (Format => Fmt,
                                                            Red    => 255,
                                                            Green  => 255,
                                                            Blue   =>   0);
      begin
         Rect := SDL.Video.Rectangle'(X =>  0,
                                      Y =>  0,
                                      W => 32,
                                      H => 32);

         SDL.Video.Fill_Rect (Destination => Img,
                              Area        => Rect,
                              Fill_Color  => Green);

         Rect := SDL.Video.Rectangle'(X => 3,
                                      Y => 3,
                                      W => 26,
                                      H => 26);

         SDL.Video.Fill_Rect (Destination => Img,
                              Area        => Rect,
                              Fill_Color  => Blue);

         Rect := SDL.Video.Rectangle'(X => 12,
                                      Y => 12,
                                      W =>  8,
                                      H =>  8);

         SDL.Video.Fill_Rect (Destination => Img,
                              Area        => Rect,
                              Fill_Color  => Yellow);

         SDL.Window_Management.Set_Icon (Icon => Img);
         SDL.Video.Free_Surface (Screen => Img);
      end Draw_Icon;

   end Set_Icon;

end SDL_Tests.Icon;
