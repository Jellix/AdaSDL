--  Ada binding to SDL (http://www.libsdl.org), video related
--  subroutines.
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

with System.Address_To_Access_Conversions,
     System.Storage_Elements;

with SDL.RWOps;

use type System.Address;
use type System.Storage_Elements.Integer_Address;

use type SDL.Int;

package body SDL.Video is

   ---------------------------------------------------------------------
   --  Is_Valid
   ---------------------------------------------------------------------
   function Is_Valid (S : in Surface) return Boolean is
   begin
      return S /= null;
   end Is_Valid;

   ---------------------------------------------------------------------
   --  Format
   ---------------------------------------------------------------------
   function Format (S : in Surface) return Pixel_Format_Ptr is
   begin
      return S.all.Format;
   end Format;

   ---------------------------------------------------------------------
   --  Width
   ---------------------------------------------------------------------
   function Width (S : in Surface) return Int is
   begin
      return S.all.Width;
   end Width;

   ---------------------------------------------------------------------
   --  Height
   ---------------------------------------------------------------------
   function Height (S : in Surface) return Int is
   begin
      return S.all.Height;
   end Height;

   ---------------------------------------------------------------------
   --  Pixels
   ---------------------------------------------------------------------
   function Pixels (S : in Surface) return Pixel_Ptr is
   begin
      return S.all.Pixels;
   end Pixels;

   subtype Mode_Pointer is System.Address; --  Assuming a C pointer is a raw address.

   --  Nasty C interface.
   --  If Result is NULL, no modes are available.
   --  If Result is -1, any mode is available.
   No_Area  : constant Mode_Pointer := System.Storage_Elements.To_Address ( 0);
   Any_Area : constant Mode_Pointer := System.Storage_Elements.To_Address (-1);

   Null_Rect : constant Rectangle := Rectangle'(X => 0,
                                                Y => 0,
                                                W => 0,
                                                H => 0);

   --  Array elements.
   type Rect_Pointer is access all Rectangle;
   pragma Convention (Convention => C,
                      Entity     => Rect_Pointer);

   --  For conversion from Mode_Pointer to Mode_List_Pointer.
   package Ptr_Conv is
     new System.Address_To_Access_Conversions (Object => Rect_Pointer);

   --  This is what the returned pointer actually is.
   subtype Mode_List_Pointer is Ptr_Conv.Object_Pointer;

   type Ptr_Array is array (Int range <>) of aliased Rect_Pointer;

   --  For array conversion.
   package Ptr_Lists is
     new Interfaces.C.Pointers (Index              => Int,
                                Element            => Rect_Pointer,
                                Element_Array      => Ptr_Array,
                                Default_Terminator => null);

   ---------------------------------------------------------------------
   --  C_Driver_Name
   ---------------------------------------------------------------------
   procedure C_Driver_Name (Name_Buf :    out Interfaces.C.char_array;
                            Max_Len  : in     Interfaces.C.int);
   pragma Import (Convention    => C,
                  Entity        => C_Driver_Name,
                  External_Name => "SDL_VideoDriverName");

   ---------------------------------------------------------------------
   --  C_Free_Surface
   ---------------------------------------------------------------------
   procedure C_Free_Surface (Screen : in Surface);
   pragma Import (Convention    => C,
                  Entity        => C_Free_Surface,
                  External_Name => "SDL_FreeSurface");

   ---------------------------------------------------------------------
   --  C_List_Modes
   ---------------------------------------------------------------------
   function C_List_Modes (Format : in Pixel_Format_Ptr;
                          Flags  : in Surface_Flags) return Mode_Pointer;
   pragma Import (Convention    => C,
                  Entity        => C_List_Modes,
                  External_Name => "SDL_ListModes");

   ---------------------------------------------------------------------
   --  C_Load_BMP
   ---------------------------------------------------------------------
   function C_Load_BMP (Source      : in RWOps.RW_Ops;
                        Free_Source : in Bool) return Surface;
   pragma Import (Convention    => C,
                  Entity        => C_Load_BMP,
                  External_Name => "SDL_LoadBMP_RW");

   ---------------------------------------------------------------------
   --  C_Save_BMP
   ---------------------------------------------------------------------
   function C_Save_BMP (Source           : in Surface;
                        Destination      : in RWOps.RW_Ops;
                        Free_Destination : in Bool) return Int;
   pragma Import (Convention    => C,
                  Entity        => C_Save_BMP,
                  External_Name => "SDL_SaveBMP_RW");

   ---------------------------------------------------------------------
   --  C_Set_Colors
   ---------------------------------------------------------------------
   function C_Set_Colors (Screen     : in Surface;
                          Colors     : in Color;
                          First      : in Int;
                          Num_Colors : in Int) return Bool;
   pragma Import (Convention    => C,
                  Entity        => C_Set_Colors,
                  External_Name => "SDL_SetColors");

   ---------------------------------------------------------------------
   --  C_Set_Palette
   ---------------------------------------------------------------------
   function C_Set_Palette (Screen     : in Surface;
                           Flags      : in Palette_Flags;
                           Colors     : in Color;
                           First      : in Int;
                           Num_Colors : in Int) return Bool;
   pragma Import (Convention    => C,
                  Entity        => C_Set_Palette,
                  External_Name => "SDL_SetPalette");

   ---------------------------------------------------------------------
   --  C_Set_Clip_Rect
   ---------------------------------------------------------------------
   procedure C_Set_Clip_Rect (Screen    : in Surface;
                              Clip_Rect : in Rect_Pointer);
   pragma Import (Convention    => C,
                  Entity        => C_Set_Clip_Rect,
                  External_Name => "SDL_SetClipRect");

   ---------------------------------------------------------------------
   --  C_Update_Rects
   ---------------------------------------------------------------------
   procedure C_Update_Rects (Screen    : in Surface;
                             Num_Rects : in Int;
                             Rects     : in Rectangle); --  actually, Rectangles
   pragma Import (Convention    => C,
                  Entity        => C_Update_Rects,
                  External_Name => "SDL_UpdateRects");

   ---------------------------------------------------------------------
   --  Disable_Clipping
   ---------------------------------------------------------------------
   procedure Disable_Clipping (Screen : in Surface) is
   begin
      C_Set_Clip_Rect (Screen    => Screen,
                       Clip_Rect => null);
   end Disable_Clipping;

   ---------------------------------------------------------------------
   --  Driver_Name
   ---------------------------------------------------------------------
   function Driver_Name return String is
      Buf : Interfaces.C.char_array := (0 .. 255 => Interfaces.C.nul);
   begin
      C_Driver_Name (Name_Buf => Buf,
                     Max_Len  => Buf'Length);

      return Interfaces.C.To_Ada (Item => Buf);
   end Driver_Name;

   ---------------------------------------------------------------------
   --  Free_Surface
   ---------------------------------------------------------------------
   procedure Free_Surface (Screen : in out Surface) is
   begin
      C_Free_Surface (Screen => Screen);
      Screen := null;
   end Free_Surface;

   ---------------------------------------------------------------------
   --  List_Modes
   ---------------------------------------------------------------------
   function List_Modes (Format : in Pixel_Format_Ptr;
                        Flags  : in Surface_Flags) return Rectangles
   is
      Result : Mode_Pointer;
   begin
      Result := C_List_Modes (Format => Format,
                              Flags  => Flags);

      --  Nasty C interface.
      if  --  If Result is NULL, no modes are available.
        Result = No_Area
      then
         return Rectangles'(1 .. 0 => Null_Rect);
      elsif  --  If Result is -1, any mode is available.
        Result = Any_Area
      then
         return Rectangles'(2 .. 1 => Null_Rect);
      else
         --  Otherwise Result is a pointer to an array of Rect pointers,
         --  terminated by a NULL value.
         --  This is what I call fucking C interface.
         Get_C_Mode_List :
         declare
            Mode_List : constant Mode_List_Pointer := Ptr_Conv.To_Pointer (Result);
            Rect_List : constant Ptr_Array         := Ptr_Lists.Value (Ref => Ptr_Lists.Pointer (Mode_List));
         begin
            Build_Ada_Mode_List :
            declare
               Ret_Value : Rectangles (1 .. Rect_List'Length - 1);
            begin
               for i in Int range 0 .. Ret_Value'Length - 1 loop
                  Ret_Value (Ret_Value'First + i) :=
                    Rect_List (Rect_List'First + i).all;
               end loop;

               return Ret_Value;
            end Build_Ada_Mode_List;
         end Get_C_Mode_List;
      end if;
   end List_Modes;

   ---------------------------------------------------------------------
   --  Load_BMP
   ---------------------------------------------------------------------
   function Load_BMP (File : in String) return Surface
   is
      The_File : RWOps.RW_Ops;
   begin
      The_File :=
        RWOps.RW_From_File (File => Interfaces.C.To_C (Item => File),
                            Mode => Interfaces.C.To_C (Item => "rb"));

      return C_Load_BMP (Source      => The_File,
                         Free_Source => True);
   end Load_BMP;

   ---------------------------------------------------------------------
   --  Save_BMP
   ---------------------------------------------------------------------
   function Save_BMP (Source : in Surface;
                      File   : in String) return Int
   is
      The_File : RWOps.RW_Ops;
   begin
      The_File := RWOps.RW_From_File (File => Interfaces.C.To_C (File),
                                      Mode => Interfaces.C.To_C ("wb"));

      return C_Save_BMP (Source           => Source,
                         Destination      => The_File,
                         Free_Destination => True);
   end Save_BMP;

   ---------------------------------------------------------------------
   --  Set_Colors
   ---------------------------------------------------------------------
   function Set_Colors (Screen     : in Surface;
                        Colors     : in Color_Array;
                        First      : in Int;
                        Num_Colors : in Int) return Bool is
   begin
      if
        First + Num_Colors <= Colors'Last + 1
      then
         return C_Set_Colors (Screen     => Screen,
                              Colors     => Colors (First),
                              First      => 0,
                              Num_Colors => Num_Colors);
      end if;

      --  Requested start index + # of colors would exceed array length.
      raise Constraint_Error;
   end Set_Colors;

   ---------------------------------------------------------------------
   --  Set_Palette
   ---------------------------------------------------------------------
   function Set_Palette (Screen     : in Surface;
                         Flags      : in Palette_Flags;
                         Colors     : in Color_Array;
                         First      : in Int;
                         Num_Colors : in Int) return Bool is
   begin
      if
        First + Num_Colors <= Colors'Last + 1
      then
         return C_Set_Palette (Screen     => Screen,
                               Flags      => Flags,
                               Colors     => Colors (First),
                               First      => 0,
                               Num_Colors => Num_Colors);
      end if;

      --  Requested start index + # of colors would exceed array length.
      raise Constraint_Error;
   end Set_Palette;

   ---------------------------------------------------------------------
   --  Update_Rects
   ---------------------------------------------------------------------
   procedure Update_Rects (Screen : in Surface;
                           Rects  : in Rectangles) is
   begin
      C_Update_Rects (Screen    => Screen,
                      Num_Rects => Rects'Length,
                      Rects     => Rects (Rects'First));
   end Update_Rects;

end SDL.Video;
