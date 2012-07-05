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
with Ada.Unchecked_Deallocation;
with SDL.Types;
with SDL_Image;

package body AdaSDL.Video.Images is

   procedure Deallocate is
      new Ada.Unchecked_Deallocation (Image, Image_Ptr);

   procedure Free (Item : in out Image_Ptr) is
   begin
      if Item /= null then
         SDL.Video.FreeSurface (Item.all.Item);
         Deallocate (Item);
      end if;
   end Free;

   -----------------------
   -- Controlled types  --
   -----------------------

   procedure Initialize       (Object : in out Image_Handle) is
   begin
      if Object.Handle /= null then
         Object.Handle.all.Handles.Increment;
      end if;
   end Initialize;

   procedure Adjust           (Object : in out Image_Handle) is
   begin
      if Object.Handle /= null then
         Object.Handle.all.Handles.Increment;
      end if;
   end Adjust;

   procedure Finalize         (Object : in out Image_Handle) is
   begin
      if Object.Handle /= null then
         declare
            Deallocate : Boolean;
         begin
            Object.Handle.all.Handles.Decrement (Deallocate);
            if Deallocate then
               Free (Object.Handle);
            end if;
         end;
      end if;
   end Finalize;

   function To_Image (Item : Image_Handle) return Image is
   begin
      return Item.Handle.all;
   end To_Image;

   ----------
   -- Load --
   ----------

   function Load (File : String) return Image_Handle is
      Temp : SDL.Video.Surface_Ptr;

      use type SDL.Video.Surface_Ptr;
   begin

      Temp := SDL_Image.Load (File);

      if Temp = null then
         raise Load_Error;
      else
         declare
            The_Image : Image_Ptr := new Image;
         begin
            The_Image.Item := Temp;
            return (Ada.Finalization.Controlled with Handle => The_Image);
         end;
      end if;
   end Load;

   function Load_BMP          ( File : String )       return Image_Handle is
      Temp : SDL.Video.Surface_Ptr;

      use type SDL.Video.Surface_Ptr;
   begin

      Temp := SDL.Video.LoadBMP (File);

      if Temp = null then
         raise Load_Error;
      else
         declare
            The_Image : Image_Ptr := new Image;
         begin
            The_Image.Item := Temp;
            return (Ada.Finalization.Controlled with Handle => The_Image);
         end;
      end if;
   end Load_BMP;

   -----------------------
   -- To_Surface_Handle --
   -----------------------

   function To_Surface_Handle
     (Item        : Image_Handle;
      Transparent : Boolean := False)
      return Surface_Handle
   is
      Temp : SDL.Video.Surface_Ptr;
      use type SDL.Video.Surface_Ptr;
   begin

      if not Transparent then
         Temp := SDL.Video.DisplayFormat      (Item.Handle.Item);
      else
         Temp := SDL.Video.DisplayFormatAlpha (Item.Handle.Item);
      end if;

      if Temp = null then
         raise Surface_Creation_Failure;
      else
         declare
            New_Surface : AdaSDL.Video.Surface_Ptr := new AdaSDL.Video.Surface;
         begin
            New_Surface.Item := Temp;
            return (Ada.Finalization.Controlled with Handle => New_Surface);
         end;
      end if;
   end To_Surface_Handle;

   function To_Palette_Provider (Item : Image  )
                                return AdaSDL.Video.Pixels.Palette_Provider is
   begin
      return AdaSDL.Video.Pixels.To_Palette_Provider
              (AdaSDL.Video.Surface(Item));
   end To_Palette_Provider;

   procedure Set_Transparent_Pixel ( Item        : Surface;
                                     Accelerated : Boolean := False;
                                     Red         : AdaSDL.Video.Pixels.Color;
                                     Green       : AdaSDL.Video.Pixels.Color;
                                     Blue        : AdaSDL.Video.Pixels.Color )
   is
      Pixel_Color : SDL.Types.Uint32
        := SDL.Video.MapRGB ( Format => Item.Item.Format,
                              R      => SDL.Types.Uint8 (Red),
                              G      => SDL.Types.Uint8 (Green),
                              B      => SDL.Types.Uint8 (Blue));

      use type SDL.Video.Surface_Flags;

      Transparent_Normal : constant SDL.Video.Surface_Flags
        := SDL.Video.SRCCOLORKEY;

      Transparent_Accel  : constant SDL.Video.Surface_Flags
        := Transparent_Normal + SDL.Video.RLEACCEL;

   begin
      if Accelerated then
         SDL.Video.SetColorKey (Item.Item, Transparent_Accel, Pixel_Color);
      else
         SDL.Video.SetColorKey (Item.Item, Transparent_Normal, Pixel_Color);
      end if;
   end Set_Transparent_Pixel;

   procedure Set_Transparent_Pixel ( Item        : Image;
                                     Accelerated : Boolean := False;
                                     Red         : AdaSDL.Video.Pixels.Color;
                                     Green       : AdaSDL.Video.Pixels.Color;
                                     Blue        : AdaSDL.Video.Pixels.Color )
   is
   begin
      Set_Transparent_Pixel (Surface(Item),Accelerated,Red,Green,Blue);
   end Set_Transparent_Pixel;

   procedure Clear_Transparent_Pixel ( Item      : Surface ) is
   begin
      SDL.Video.SetColorKey (Item.Item, 0, 0);
   end Clear_Transparent_Pixel;

   procedure Clear_Transparent_Pixel ( Item      : Image ) is
   begin
      Clear_Transparent_Pixel (Surface(Item));
   end Clear_Transparent_Pixel;

   procedure Set_Global_Alpha      ( Item        : Surface;
                                     Accelerated : Boolean := False;
                                     Intensity   : AdaSDL.Video.Pixels.Color )
   is
      use type SDL.Video.Surface_Flags;

      Transparent_Normal : constant SDL.Video.Surface_Flags
        := SDL.Video.SRCALPHA;

      Transparent_Accel  : constant SDL.Video.Surface_Flags
        := Transparent_Normal + SDL.Video.RLEACCEL;

   begin
      if Accelerated then
         SDL.Video.SetAlpha (Item.Item,
                             Transparent_Accel,
                             SDL.Types.Uint8 (Intensity));
      else
         SDL.Video.SetAlpha (Item.Item,
                             Transparent_Normal,
                             SDL.Types.Uint8 (Intensity));
      end if;
   end Set_Global_Alpha;

   procedure Set_Global_Alpha      ( Item        : Image;
                                     Accelerated : Boolean := False;
                                     Intensity   : AdaSDL.Video.Pixels.Color )
   is
   begin
      Set_Global_Alpha (Surface (Item), Accelerated, Intensity);
   end Set_Global_Alpha;

   procedure Clear_Global_Alpha    ( Item        : Surface ) is
   begin
      SDL.Video.SetAlpha (Item.Item,0,0);
   end Clear_Global_Alpha;

   procedure Clear_Global_Alpha    ( Item        : Image ) is
   begin
      Clear_Global_Alpha (Surface (Item));
   end Clear_Global_Alpha;

end AdaSDL.Video.Images;

