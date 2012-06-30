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

package AdaSDL.Video.Images is

   Load_Error : exception renames AdaSDL.Load_Error;

   type Image is limited private;
   ----------------------------------------------------------
   -- Images are similar to Surfaces but they are not      --
   -- pixel compatible thus they seperated into a          --
   -- different type.                                      --
   ----------------------------------------------------------

   type Image_Handle is  private;
   ----------------------------------------------------------
   -- Like a Surface_Handle only for Images.               --
   ----------------------------------------------------------

   function To_Image (Item : Image_Handle) return Image;
   ----------------------------------------------------------
   -- Like a To_Surface only for Images.                   --
   ----------------------------------------------------------



   function To_Surface_Handle ( Item : Image_Handle;
                                Transparent : Boolean := False
                              ) return Surface_Handle;
   ----------------------------------------------------------
   -- Converts a general image to be compatible with the   --
   -- the video surface.                                   --
   ----------------------------------------------------------

   function To_Palette_Provider (Item : Image  )
                                return AdaSDL.Video.Pixels.Palette_Provider;
   ----------------------------------------------------------
   -- Allows access the to color information for the pixel --
   -- format of the image.                                 --
   ----------------------------------------------------------

   function Load              ( File : String )       return Image_Handle;
   ----------------------------------------------------------
   -- Loads image data from a file via SDL_Image.          --
   ----------------------------------------------------------

   function Load_BMP          ( File : String )       return Image_Handle;
   ----------------------------------------------------------
   -- Load image date from a bitmap, but doesn't do it via --
   -- SDL_Image                                            --
   ----------------------------------------------------------

   procedure Set_Transparent_Pixel ( Item        : Surface;
                                     Accelerated : Boolean := False;
                                     Red         : AdaSDL.Video.Pixels.Color;
                                     Green       : AdaSDL.Video.Pixels.Color;
                                     Blue        : AdaSDL.Video.Pixels.Color );
   ----------------------------------------------------------
   -- Sets a color value to be the transparent pixel in    --
   -- BitBlt's.  Accelerated turns on RLE acceleration.    --
   ----------------------------------------------------------

   procedure Set_Transparent_Pixel ( Item        : Image;
                                     Accelerated : Boolean := False;
                                     Red         : AdaSDL.Video.Pixels.Color;
                                     Green       : AdaSDL.Video.Pixels.Color;
                                     Blue        : AdaSDL.Video.Pixels.Color );
   ----------------------------------------------------------
   -- Likewise.                                            --
   ----------------------------------------------------------

   procedure Clear_Transparent_Pixel ( Item      : Surface );
   ----------------------------------------------------------
   -- Clears the transparent pixel value.                  --
   ----------------------------------------------------------

   procedure Clear_Transparent_Pixel ( Item      : Image );
   ----------------------------------------------------------
   -- Likewise.                                            --
   ----------------------------------------------------------

   procedure Set_Global_Alpha      ( Item        : Surface;
                                     Accelerated : Boolean := False;
                                     Intensity   : AdaSDL.Video.Pixels.Color );
   ----------------------------------------------------------
   -- Sets the Alpha blend for Item when BitBlted.         --
   -- Color'First is transparent while Color'Last is       --
   -- Opaque.                                              --
   ----------------------------------------------------------

   procedure Set_Global_Alpha      ( Item        : Image;
                                     Accelerated : Boolean := False;
                                     Intensity   : AdaSDL.Video.Pixels.Color );
   ----------------------------------------------------------
   -- Likewise.                                            --
   ----------------------------------------------------------

   procedure Clear_Global_Alpha    ( Item        : Surface );
   ----------------------------------------------------------
   -- Likewise.                                            --
   ----------------------------------------------------------

   procedure Clear_Global_Alpha    ( Item        : Image );
   ----------------------------------------------------------
   -- Likewise.                                            --
   ----------------------------------------------------------

private

   type Image is new Surface;

   type Image_Ptr is access all Image;

   type Image_Handle is new Ada.Finalization.Controlled with record
      Handle   : Image_Ptr;
   end record;

   procedure Initialize       (Object : in out Image_Handle);
   procedure Adjust           (Object : in out Image_Handle);
   procedure Finalize         (Object : in out Image_Handle);

end AdaSDL.Video.Images;
