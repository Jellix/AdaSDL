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

with SDL.Error;
with SDL.Video;
with SDL.Types;

with Interfaces.C;
with Ada.Exceptions;

with Ada.Unchecked_Deallocation;

use type Interfaces.C.Int;

package body AdaSDL.Video is

   use AdaSDL;

   use type AdaSDL.Handle_Counter;

   -----------------------
   -- Surface    types  --
   -----------------------

   procedure Deallocate is
      new Ada.Unchecked_Deallocation (Surface,Surface_Ptr);

   procedure Free (Item : in out Surface_Ptr) is
   begin
      if Item /= null then
         SDL.Video.FreeSurface (Item.all.Item);
         Deallocate (Item);
      end if;
   end Free;

   -----------------------
   --      End of       --
   -- Surface    types  --
   -----------------------

   -----------------------
   -- Controlled types  --
   -----------------------

   procedure Initialize       (Object : in out Surface_Handle) is
   begin
      if Object.Handle /= null then
         Object.Handle.all.Handles.Increment;
      end if;
   end Initialize;

   procedure Adjust           (Object : in out Surface_Handle) is
   begin
      if Object.Handle /= null then
         Object.Handle.all.Handles.Increment;
      end if;
   end Adjust;

   procedure Finalize         (Object : in out Surface_Handle) is
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

   -----------------------
   --      End of       --
   -- Controlled types  --
   -----------------------

   Error_Signal : Constant Interfaces.C.Int := -1;

   --------------
   -- Finalize --
   --------------

   procedure Finalize is
   begin
      SDL.QuitSubSystem ( SDL.INIT_VIDEO );
   end Finalize;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      if not AdaSDL.Initialized then
         AdaSDL.Initialize;
      end if;

      -- Initialize bare system
      if SDL.InitSubSystem ( SDL.INIT_VIDEO ) = Error_Signal then
         declare
            Error_Message : constant String := SDL.Error.Get_Error;
         begin

            SDL.Error.ClearError;

            Ada.Exceptions.Raise_Exception
              ( E       => SDL_Initialization_Failure'Identity,
                Message => Error_Message
              );
         end;
      end if;
   end Initialize;


   function To_Surface_Flags ( Item : Video_Flags )
                             return SDL.Video.Surface_Flags is
      use SDL.Video;

      Converter : constant array (Video_Flag) of Surface_Flags
                := ( Software_Surface => SWSURFACE,
                     Hardware_Surface => HWSURFACE,
                     Asycn_Blit       => ASYNCBLIT,
                     Any_Format       => ANYFORMAT,
                     Hardware_Palette => HWPALETTE,
                     Double_Buffer    => DOUBLEBUF,
                     Fullscreen       => SDL.Video.FULLSCREEN,
                     OpenGL           => SDL.Video.OPENGL,
                     OpenGL_Blit      => OPENGLBLIT,
                     Resizable        => SDL.Video.RESIZABLE,
                     No_Frame         => NOFRAME
                     );

      Temp : Surface_Flags := 0;
   begin
      for I in Item'Range loop
         if Item(I) then
            Temp := Temp or Converter(I);
         end if;
      end loop;
      return Temp;
   end To_Surface_Flags;



   --------------------
   -- Set_Video_Mode --
   --------------------

   Main_Screen : Surface;
   -- This is the global variable for storing the video screens handle

   procedure Set_Video_Mode
     (Screen_Width  : AdaSDL.Scalar;
      Screen_Height : AdaSDL.Scalar;
      Color_Depth   : Bits_Per_Pixel;
      Flags         : Video_Flags)
   is
      use SDL.Video, Interfaces.C;

      Width   : constant Interfaces.C.Int := Int (Screen_Width);
      Height  : constant Interfaces.C.Int := Int (Screen_Height);
      Bpp     : constant Interfaces.C.Int := Int (To_Code (Color_Depth));
      Options : constant Surface_Flags    := To_Surface_Flags (Flags);


   begin

      Main_Screen.Item := SetVideoMode (Width, Height, Bpp, Options);

      if Main_Screen.Item = null then
         raise Surface_Creation_Failure;
      end if;

   end Set_Video_Mode;


   procedure Set_Video_Mode ( Screen        : AdaSDL.Rectangle;
                              Color_Depth   : Bits_Per_Pixel;
                              Flags         : Video_Flags
                            ) is
   begin
      Set_Video_Mode (Width (Screen), Height (Screen), Color_Depth, Flags);
   end Set_Video_Mode;

   function  Video_Screen return Surface is
   begin
      return Main_Screen;
   end Video_Screen;

   function  New_Surface    ( Screen_Width       : AdaSDL.Scalar;
                              Screen_Height      : AdaSDL.Scalar;
                              Hardware           : Boolean := False;
                              Transparent_Pixels : Boolean := False;
                              Alpha_Channeled    : Boolean := False
                            ) return Surface_Handle is

      use SDL.Video, Interfaces.C;
      use type SDL.Types.Uint32;

      Flags  : SDL.Video.Surface_Flags := SDL.Video.SWSURFACE;

      Result : Surface_Ptr;

   begin

      if Hardware then
         Flags := Flags or SDL.Video.HWSURFACE;
      end if;

      if Transparent_Pixels then
         Flags := Flags or SDL.Video.SRCCOLORKEY;
      end if;

      if Alpha_Channeled then
         Flags := Flags or SDL.Video.SRCAlpha;
      end if;

      if Main_Screen.Item = null then
         -- Screen has not been initialized
         raise Surface_Creation_Failure;
      end if;


  Create_Surface:
      declare

         Format : SDL.Video.PixelFormat renames
                   Main_Screen.Item.Format.all;

         Temp   : SDL.Video.Surface_Ptr
           := SDL.Video.CreateRGBSurface ( Flags  => Flags,
                                           Width  => Int (Screen_Width),
                                           Height => Int (Screen_Height),
                                           Depth  => Int (Format.BitsPerPixel),
                                           Rmask  => Format.Rmask,
                                           Gmask  => Format.Gmask,
                                           Bmask  => Format.Bmask,
                                           Amask  => Format.Amask
                                         );
      begin
         if Temp = null then
            raise Surface_Creation_Failure;
         else
            if not Alpha_Channeled and then Format.Amask /= 0 then
               SDL.Video.SetAlpha (Temp,0,0); -- Turn off channel
            end if;
         end if;

         begin
            Result := new Surface;
            Result.Item := Temp;
         exception
            when Storage_Error =>
               SDL.Video.FreeSurface(Temp);
               raise Surface_Creation_Failure;
         end;

      end Create_Surface;

      return (Ada.Finalization.Controlled with Handle => Result);

   end New_Surface;


   function  New_Surface    ( Screen             : AdaSDL.Rectangle;
                              Hardware           : Boolean := False;
                              Transparent_Pixels : Boolean := False;
                              Alpha_Channeled    : Boolean := False
                            ) return Surface_Handle is
   begin
      return New_Surface (Width (Screen), Height (Screen),
                          Hardware, Transparent_Pixels,
                          Alpha_Channeled);
   end New_Surface;

   function  To_Surface     ( Item : Surface_Handle ) return Surface is
   begin
      if Item.Handle = null then
         raise Constraint_Error;
      else
         return Item.Handle.all;
      end if;
   end To_Surface;

end AdaSDL.Video;



