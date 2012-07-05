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

with AdaSDL.Video.Pixels;

package AdaSDL.Video.Drawing is

   Surface_Pixels_Lost : exception;
   BitBlt_Failure      : exception;
   Surface_Cannot_Lock : exception;

   procedure BitBlt     ( Source, Destination : Surface;
                          X, Y                : AdaSDL.Integer );
   ----------------------------------------------------------------
   -- BitBlt copies all the Surface, Source onto Destination     --
   -- starting at the coordinate (X,Y).                          --
   ----------------------------------------------------------------

   procedure BitBlt     ( Source, Destination : Surface;
                          X, Y                : AdaSDL.Integer;
                          Source_Clipping     : AdaSDL.Rectangle );
   ----------------------------------------------------------------
   -- Likewise, but only the rectangle, Source_Clipping is       --
   -- from the Source to (X,Y).                                  --
   ----------------------------------------------------------------

   procedure Set_Clip   ( Item  : Surface; Clip : AdaSDL.Rectangle );
   ----------------------------------------------------------------
   -- Sets the rectangle on Item in which pixels are allowed to  --
   -- be BitBlt'd onto.                                          --
   ----------------------------------------------------------------

   procedure Reset_Clip ( Item  : Surface );
   ----------------------------------------------------------------
   -- Allows the entire surface, Item, to be BitBlt'd.           --
   ----------------------------------------------------------------

   function  Clip       ( Item  : Surface ) return AdaSDL.Rectangle;
   ----------------------------------------------------------------
   -- Returns the rectangle that Item allows BitBlt'ing to.      --
   ----------------------------------------------------------------

   procedure Refresh    ( Item  : Surface );
   ----------------------------------------------------------------
   -- Allows changes to Item to take effect and be displayed.    --
   -- On Double_Buffered surfaces, it performs a buffer flip.    --
   -- Only use these procedure for Double_Buffered surfaces!     --
   ----------------------------------------------------------------

   procedure Refresh    ( Item  : Surface;
                          Clip  : AdaSDL.Rectangle );
   ----------------------------------------------------------------
   -- Likewise, except the refresh only applies to the area of   --
   -- the surface specified by clip.                             --
   ----------------------------------------------------------------

   procedure Refresh    ( Item  : Surface;
                          Clips : AdaSDL.Rectangles );
   ----------------------------------------------------------------
   -- Likewise, except the refresh only applies to the area of   --
   -- the surface specified by clips.                            --
   ----------------------------------------------------------------

   procedure Flood      ( Item  : Surface;
                          Red   : AdaSDL.Video.Pixels.Color;
                          Green : AdaSDL.Video.Pixels.Color;
                          Blue  : AdaSDL.Video.Pixels.Color;
                          Alpha : AdaSDL.Video.Pixels.Color := 255 );
   ----------------------------------------------------------------
   -- Floods the surface with a single color.                    --
   ----------------------------------------------------------------

   procedure Flood      ( Item  : Surface;
                          Area  : AdaSDL.Rectangle;
                          Red   : AdaSDL.Video.Pixels.Color;
                          Green : AdaSDL.Video.Pixels.Color;
                          Blue  : AdaSDL.Video.Pixels.Color;
                          Alpha : AdaSDL.Video.Pixels.Color := 255 );
   ----------------------------------------------------------------
   -- Floods the surface with a single color at Area.            --
   ----------------------------------------------------------------

   generic
      with procedure Eight_Bit_Draw
        (On          : in out AdaSDL.Video.Pixels.Screen_Eight;
         Colors      : in     AdaSDL.Video.Pixels.Palette_Provider;
         Coordinates : in     AdaSDL.Rectangle);
      with procedure Fifteen_Bit_Draw
        (On          : in out AdaSDL.Video.Pixels.Screen_Fifteen;
         Colors      : in     AdaSDL.Video.Pixels.Palette_Provider;
         Coordinates : in     AdaSDL.Rectangle);
      with procedure Sixteen_Bit_Draw
        (On          : in out AdaSDL.Video.Pixels.Screen_Sixteen;
         Colors      : in     AdaSDL.Video.Pixels.Palette_Provider;
         Coordinates : in     AdaSDL.Rectangle);
      with procedure TwentyFour_Bit_Draw
        (On          : in out AdaSDL.Video.Pixels.Screen_TwentyFour;
         Colors      : in     AdaSDL.Video.Pixels.Palette_Provider;
         Coordinates : in     AdaSDL.Rectangle);
      with procedure ThirtyTwo_Bit_Draw
        (On          : in out AdaSDL.Video.Pixels.Screen_ThirtyTwo;
         Colors      : in     AdaSDL.Video.Pixels.Palette_Provider;
         Coordinates : in     AdaSDL.Rectangle);
   procedure Draw (Item : Surface);
   ---------------------------------------------------------------
   -- This procedure allows for direct surface manipulation at  --
   -- the pixel level.  The correct with'd procedure is called  --
   -- by Draw for the each pixel size type.                     --
   -- Draw also takes care of any locking of the surface which  --
   -- is needed.  Each with procedure can then manipulate       --
   -- Item's pixel as the array On.                             --
   -- Colors provides the correct paletee information for the   --
   -- platform independent manipulation of pixel color.         --
   -- Coordinates provide the rectangle
   ---------------------------------------------------------------

end AdaSDL.Video.Drawing;
