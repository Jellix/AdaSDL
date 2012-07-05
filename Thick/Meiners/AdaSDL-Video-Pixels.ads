-- ----------------------------------------------------------------- --
--                AdaSDL                                             --
--       (Thick)  Binding to Simple Direct Media Layer               --
--                Copyright (C) 2002 Chad R. Meiners                 --
--                E-mail: crmeiners@hotmail.com                      --
-- ----------------------------------------------------------------- --
--                                                                   --
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

package AdaSDL.Video.Pixels is

   type Color is mod 256;
   --------------------------------------------------------------
   -- The good old eight bit color value.                      --
   --------------------------------------------------------------

   type Palette_Provider is limited private;
   --------------------------------------------------------------
   -- This type provide color formating information so that    --
   -- RGB and RGBA functions can provide the correct pixel     --
   -- value for the nearest asked for color.                   --
   --------------------------------------------------------------

   function To_Palette_Provider (Item : Surface) return Palette_Provider;
   --------------------------------------------------------------
   -- Acquire the Palette_Provider for Item.                   --
   --------------------------------------------------------------

   type Pixel_Eight is private;
   type Pixel_Fifteen is private;
   type Pixel_Sixteen is private;
   type Pixel_TwentyFour is private;
   type Pixel_ThirtyTwo is private;
   --------------------------------------------------------------
   -- Platform dependent color values for pixels.  Do not      --
   -- declare global color values since they may not be        --
   -- compatible with all pixel array of the same type.        --
   --------------------------------------------------------------

   function RGB  (Using : Palette_Provider;
                  Red, Green, Blue : Color
                 ) return Pixel_Eight;
   function RGB  (Using : Palette_Provider;
                  Red, Green, Blue : Color
                 ) return Pixel_Fifteen;
   function RGB  (Using : Palette_Provider;
                  Red, Green, Blue : Color
                 ) return Pixel_Sixteen;
   function RGB  (Using : Palette_Provider;
                  Red, Green, Blue : Color
                 ) return Pixel_TwentyFour;
   function RGB  (Using : Palette_Provider;
                  Red, Green, Blue : Color
                 ) return Pixel_ThirtyTwo;
   --------------------------------------------------------------
   -- Acquire the nearest color match with the palette         --
   --------------------------------------------------------------

   procedure To_Colors (Item              : in  Pixel_Eight;
                        Using             : in  Palette_Provider;
                        Red, Green, Blue  : out Color
                       );
   procedure To_Colors (Item              : in  Pixel_Fifteen;
                        Using             : in  Palette_Provider;
                        Red, Green, Blue  : out Color
                       );
   procedure To_Colors (Item              : in  Pixel_Sixteen;
                        Using             : in  Palette_Provider;
                        Red, Green, Blue  : out Color
                       );
   procedure To_Colors (Item              : in  Pixel_TwentyFour;
                        Using             : in  Palette_Provider;
                        Red, Green, Blue  : out Color
                       );
   procedure To_Colors (Item              : in  Pixel_ThirtyTwo;
                        Using             : in  Palette_Provider;
                        Red, Green, Blue  : out Color
                       );
   -------------------------------------------------------------
   -- Acquire the color value of a pixel                      --
   -------------------------------------------------------------


   function RGBA (Using : Palette_Provider;
                  Red, Green, Blue, Alpha : Color
                 ) return Pixel_Eight;
   function RGBA (Using : Palette_Provider;
                  Red, Green, Blue, Alpha : Color
                 ) return Pixel_Fifteen;
   function RGBA (Using : Palette_Provider;
                  Red, Green, Blue, Alpha : Color
                 ) return Pixel_Sixteen;
   function RGBA (Using : Palette_Provider;
                  Red, Green, Blue, Alpha : Color
                 ) return Pixel_TwentyFour;
   function RGBA (Using : Palette_Provider;
                  Red, Green, Blue, Alpha : Color
                 ) return Pixel_ThirtyTwo;
   -------------------------------------------------------------
   -- Likewise but with an Alpha channel.                     --
   -------------------------------------------------------------


   procedure To_Colors (Item              : in  Pixel_Eight;
                        Using             : in  Palette_Provider;
                        Red, Green, Blue, Alpha  : out Color
                       );
   procedure To_Colors (Item              : in  Pixel_Fifteen;
                        Using             : in  Palette_Provider;
                        Red, Green, Blue, Alpha  : out Color
                       );
   procedure To_Colors (Item              : in  Pixel_Sixteen;
                        Using             : in  Palette_Provider;
                        Red, Green, Blue, Alpha  : out Color
                       );
   procedure To_Colors (Item              : in  Pixel_TwentyFour;
                        Using             : in  Palette_Provider;
                        Red, Green, Blue, Alpha  : out Color
                       );
   procedure To_Colors (Item              : in  Pixel_ThirtyTwo;
                        Using             : in  Palette_Provider;
                        Red, Green, Blue, Alpha  : out Color
                       );
   -------------------------------------------------------------
   -- Likewise but with an Alpha channel.                     --
   -------------------------------------------------------------

   type Screen_Coordinate is range 1..(2**32)-1;
   -------------------------------------------------------------
   -- Used for the bitmap indexes for bitmap manipulations    --
   -- via the arrays below.                                   --
   -------------------------------------------------------------

   function To_Coordinate (Within : Rectangle;
                           X      : AdaSDL.Integer;
                           Y      : AdaSDL.Integer
                          ) return Screen_Coordinate;
   ------------------------------------------------------------
   -- Translates an (X,Y) into the rectangle for use with    --
   -- bitmaps.                                               --
   ------------------------------------------------------------

   type Screen_Eight      is array(Screen_Coordinate range <>) of Pixel_Eight;
   type Screen_Fifteen    is array(Screen_Coordinate range <>)
                              Of Pixel_Fifteen;
   type Screen_Sixteen    is array(Screen_Coordinate range <>)
                              of Pixel_Sixteen;
   type Screen_TwentyFour is array(Screen_Coordinate range <>)
                              of Pixel_TwentyFour;
   type Screen_ThirtyTwo  is array(Screen_Coordinate range <>)
                              of Pixel_ThirtyTwo;
   -----------------------------------------------------------
   -- This arrays are mapped onto bitmaps to allow pixel    --
   -- manipulations via a strongly typed array.             --
   -----------------------------------------------------------



private

   type Pixel_Eight      is mod 256;
   for  Pixel_Eight'Size use 8;
   for  Screen_Eight'Component_Size use 8;

   type Pixel_fifteen    is mod 2**16;
   for  Pixel_Fifteen'Size use 16;
   for  Screen_Fifteen'Component_Size use 16;

   type Pixel_Sixteen    is mod 2**16;
   for  Pixel_Sixteen'Size use 16;
   for  Screen_Sixteen'Component_Size use 16;

   type Pixel_TwentyFour is mod 2**24;
   for  Pixel_TwentyFour'Size use 24;
   for  Screen_TwentyFour'Component_Size use 24;

   type Pixel_ThirtyTwo  is mod 2**32;
   for  Pixel_ThirtyTwo'Size use 32;
   for  Screen_ThirtyTwo'Component_Size use 32;

   pragma Pack (Screen_Eight);
   pragma Pack (Screen_Fifteen);
   pragma Pack (Screen_Sixteen);
   pragma Pack (Screen_TwentyFour);
   pragma Pack (Screen_ThirtyTwo);

   type Palette_Provider is record
      Item : SDL.Video.PixelFormat_ptr;
   end record;

end AdaSDL.Video.Pixels;
