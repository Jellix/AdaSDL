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

with SDL.Video;
with Ada.Finalization;

package AdaSDL.Video is

   -- Video Exceptions

   Surface_Creation_Failure : exception;

   -- subsystem routines

   procedure Initialize;
   ------------------------------------------------------------------
   -- This routine must be called before using the video subsystem --
   ------------------------------------------------------------------

   procedure Finalize;
   ------------------------------------------------------------------
   -- This routine can be called to free up resources allocated to --
   -- the video subsystem.                                         --
   ------------------------------------------------------------------


   -- General video subroutines and types

   type Surface is limited private;
   ------------------------------------------------------------------
   -- A surface represents a drawing surface that is bitwise       --
   -- compatiable with the actualy display.  This type contains    --
   -- information about SDL allocated resources so it is forbidden --
   -- to copy this type.  This type is designed so that it can     --
   -- used a returned type from a function.  In fact you should    --
   -- never have to declare an object of type Surface since will   --
   -- not be able to do anything productive with it.  (Renames of  --
   -- functions are of course fine though)                         --
   ------------------------------------------------------------------

   type Surface_Handle is  private;
   ------------------------------------------------------------------
   -- A Surface_Handle is an intellegent handle to a Surface.      --
   -- Surface_Handles are created with a new Surface, and once all --
   -- Surface_Handles for a Surface no longer exist the Surface is --
   -- automatically deallocated.  Thus Surfaces can be             --
   -- incorperated into various data structure without worry of    --
   -- allocation and deallocation issues.                          --
   ------------------------------------------------------------------

   type Bits_Per_Pixel is (Current,Eight,Fifteen,
                           Sixteen,Twenty_Four,Thirty_Two);

   type Video_Flag     is (Software_Surface,
                           Hardware_Surface,
                           Asycn_Blit,
                           Any_Format,
                           Hardware_Palette,
                           Double_Buffer,
                           Fullscreen,
                           OpenGL,
                           OpenGL_Blit,
                           Resizable,
                           No_Frame
                          );

   type Video_Flags    is array(Video_Flag) of Boolean;
   ------------------------------------------------------------------
   -- These are flags for surface options.                         --
   ------------------------------------------------------------------

   procedure Set_Video_Mode ( Screen_Width  : AdaSDL.Scalar;
                              Screen_Height : AdaSDL.Scalar;
                              Color_Depth   : Bits_Per_Pixel;
                              Flags         : Video_Flags
                            );
   ------------------------------------------------------------------
   -- This procedure sets up the mode of the display.  It          --
   -- allocates the resources for the display's surface.  This     --
   -- surface when be deallocated when the subsystem is finalized. --
   ------------------------------------------------------------------

   procedure Set_Video_Mode ( Screen        : AdaSDL.Rectangle;
                              Color_Depth   : Bits_Per_Pixel;
                              Flags         : Video_Flags
                            );

   ------------------------------------------------------------------
   -- Likewise but with rectangles.                                --
   ------------------------------------------------------------------

   function  Video_Screen return Surface;
   ------------------------------------------------------------------
   -- This routine returns the surface that IS the display.        --
   ------------------------------------------------------------------

   function  New_Surface    ( Screen_Width       : AdaSDL.Scalar;
                              Screen_Height      : AdaSDL.Scalar;
                              Hardware           : Boolean := False;
                              Transparent_Pixels : Boolean := False;
                              Alpha_Channeled    : Boolean := False
                            ) return Surface_Handle;
   ------------------------------------------------------------------
   -- This procedure creates a new surface that is compatable with --
   -- the current display and returns a Surface_Handle for it.     --
   -- This surface is deallocated when the last Surface_Handle to  --
   -- it is.                                                       --
   ------------------------------------------------------------------

   function  New_Surface    ( Screen             : AdaSDL.Rectangle;
                              Hardware           : Boolean := False;
                              Transparent_Pixels : Boolean := False;
                              Alpha_Channeled    : Boolean := False
                            ) return Surface_Handle;
   ------------------------------------------------------------------
   -- Likewise but with rectangles.                                --
   ------------------------------------------------------------------


   function  To_Surface     ( Item : Surface_Handle ) return Surface;
   ------------------------------------------------------------------
   -- This function allows access to the Surface of the            --
   -- Surface_Handle.                                              --
   ------------------------------------------------------------------

private


   To_Code : constant array (Bits_Per_Pixel) of Integer
           := (0,8,15,16,24,32);

   type Surface is record
      Item     : SDL.Video.Surface_Ptr;
      Handles  : AdaSDL.Handle_Counter;
   end record;

   type Surface_Ptr is access all Surface;

--   procedure Free (Item : in out Surface_Ptr);

   type Surface_Handle is new Ada.Finalization.Controlled with record
      Handle   : Surface_Ptr;
   end record;

   procedure Initialize       (Object : in out Surface_Handle);
   procedure Adjust           (Object : in out Surface_Handle);
   procedure Finalize         (Object : in out Surface_Handle);

   pragma Inline (New_Surface);
   pragma Inline (Set_Video_Mode);

end AdaSDL.Video;
