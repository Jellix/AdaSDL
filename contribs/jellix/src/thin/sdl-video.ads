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

with Interfaces.C.Pointers,
     System;

package SDL.Video is

   ALPHA_OPAQUE      : constant := 255;
   ALPHA_TRANSPARENT : constant :=   0;

   type Surface_Flags is new UInt32;

   --  Flag constants for Create_RGB_Surface, or Set_Video_Mode.
   SW_SURFACE    : constant Surface_Flags := 16#0000_0000#;
   HW_SURFACE    : constant Surface_Flags := 16#0000_0001#;
   ASYNC_BLIT    : constant Surface_Flags := 16#0000_0004#;

   --  Available for Set_Video_Mode.
   OPEN_GL       : constant Surface_Flags := 16#0000_0002#;
   OPEN_GL_BLIT  : constant Surface_Flags := 16#0000_000A#;
   RESIZABLE     : constant Surface_Flags := 16#0000_0010#;
   NO_FRAME      : constant Surface_Flags := 16#0000_0020#;
   ANY_FORMAT    : constant Surface_Flags := 16#1000_0000#;
   HW_PALETTE    : constant Surface_Flags := 16#2000_0000#;
   DOUBLE_BUF    : constant Surface_Flags := 16#4000_0000#;
   FULL_SCREEN   : constant Surface_Flags := 16#8000_0000#;

   --  Used internally only.
   HW_ACCEL      : constant Surface_Flags := 16#0000_0100#;
   SRC_COLOR_KEY : constant Surface_Flags := 16#0000_1000#;
   RLE_ACCEL_OK  : constant Surface_Flags := 16#0000_2000#;
   RLE_ACCEL     : constant Surface_Flags := 16#0000_4000#;
   SRC_ALPHA     : constant Surface_Flags := 16#0001_0000#;
   PRE_ALLOC     : constant Surface_Flags := 16#0100_0000#;

   type Rectangle is
      record
         X : SInt16;
         Y : SInt16;
         W : UInt16;
         H : UInt16;
      end record;
   pragma Convention (Convention => C,
                      Entity     => Rectangle);

   type Rectangles is array (Int range <>) of Rectangle;

   type Color is
      record
         Red    : UInt8;
         Green  : UInt8;
         Blue   : UInt8;
         Unused : UInt8;
      end record;
   pragma Convention (Convention => C,
                      Entity     => Color);

   subtype Colour is Color;

   type Color_Array is array (Int range <>) of aliased Color;
   None : constant Color := Color'(Red    => 0,
                                   Green  => 0,
                                   Blue   => 0,
                                   Unused => UInt8'Last);

   package Color_Pointers is new Interfaces.C.Pointers (Index              => Int,
                                                        Element            => Color,
                                                        Element_Array      => Color_Array,
                                                        Default_Terminator => None);

   type Palette_Flags is new UInt32;

   LOG_PAL  : constant Palette_Flags := 16#0000_0001#;
   PHYS_PAL : constant Palette_Flags := 16#0000_0002#;

   type Palette is
      record
         Num_Colors : Int;
         Colors     : Color_Pointers.Pointer;
      end record;
   pragma Convention (Convention => C,
                      Entity     => Palette);

   type Palette_Ptr is access all Palette;
   pragma Convention (Convention => C,
                      Entity     => Palette_Ptr);

   --  Everything in the pixel format structure is read-only
   type Pixel_Format is
      record
         Palette         : Palette_Ptr;
         Depth           : UInt8;
         Bytes_Per_Pixel : UInt8;
         Red_Loss        : UInt8;
         Green_Loss      : UInt8;
         Blue_Loss       : UInt8;
         Alpha_Loss      : UInt8;
         Red_Shift       : UInt8;
         Green_Shift     : UInt8;
         Blue_Shift      : UInt8;
         Alpha_Shift     : UInt8;
         Red_Mask        : UInt32;
         Green_Mask      : UInt32;
         Blue_Mask       : UInt32;
         Alpha_Mask      : UInt32;
         --  RGB color key information
         Color_Key       : UInt32;
         --  Alpha value information (per - surface alpha)
         Alpha           : UInt8;
      end record;
   pragma Convention (Convention => C,
                      Entity     => Pixel_Format);

   type Pixel_Format_Ptr is access constant Pixel_Format;
   pragma Convention (Convention => C,
                      Entity     => Pixel_Format_Ptr);

   DWORD : constant := 4;

   type Pixel_Ptr is new System.Address;

   Null_Pixels : constant Pixel_Ptr;

   --  The "Surface" type has been made private for two reasons.
   --  Firstly, to prevent write accesses to read only data, and
   --  secondly, to hide the fact that this is a pointer.
   --  Making it an "in out" parameter does not work for functions,
   --  making it an "in" parameter is not semantically correct and may
   --  bite us in the long run, although it seemed to "mostly work".
   --  To provide access to the read-only data, a number of subroutines
   --  are defined below.
   type Surface is private;

   ---------------------------------------------------------------------
   --  Is_Valid
   --
   --  Checks if the given Surface is valid.
   --
   --  Returns True if the Surface is usable, False otherwise.
   ---------------------------------------------------------------------
   function Is_Valid (S : in Surface) return Boolean;
   pragma Inline (Is_Valid);

   ---------------------------------------------------------------------
   --  Format
   --
   --  Returns the pixel format of the given surface.
   ---------------------------------------------------------------------
   function Format (S : in Surface) return Pixel_Format_Ptr;
   pragma Inline (Format);

   ---------------------------------------------------------------------
   --  Width
   --
   --  Returns the width of the given surface.
   ---------------------------------------------------------------------
   function Width (S : in Surface) return Int;
   pragma Inline (Width);

   ---------------------------------------------------------------------
   --  Width
   --
   --  Returns the height of the given surface.
   ---------------------------------------------------------------------
   function Height (S : in Surface) return Int;
   pragma Inline (Height);

   ---------------------------------------------------------------------
   --  Pixels
   --
   --  Returns the pointer to the pixels of the given surface.
   ---------------------------------------------------------------------
   function Pixels (S : in Surface) return Pixel_Ptr;
   pragma Inline (Pixels);

   type Info is
      record
         HW_Available  : Boolean;
         WM_Available  : Boolean;
         Blit_HW       : Boolean;
         Blit_HW_CC    : Boolean;
         Blit_HW_Alpha : Boolean;
         Blit_SW       : Boolean;
         Blit_SW_CC    : Boolean;
         Blit_SW_Alpha : Boolean;
         Blit_Fill     : Boolean;
         Video_Memory  : UInt32;
         Pixel_Format  : Pixel_Format_Ptr;
         Width         : Int;
         Height        : Int;
      end record;
   for Info use
      record
         HW_Available  at 0         range 0 ..  0;
         WM_Available  at 0         range 1 ..  1;
         --  Unused1       at 0         range 2 ..  7;  --  6 bits
         --  Unused2       at 1         range 0 ..  0;  --  1 bit
         Blit_HW       at 1         range 1 ..  1;
         Blit_HW_CC    at 1         range 2 ..  2;
         Blit_HW_Alpha at 1         range 3 ..  3;
         Blit_SW       at 1         range 4 ..  4;
         Blit_SW_CC    at 1         range 5 ..  5;
         Blit_SW_Alpha at 1         range 6 ..  6;
         Blit_Fill     at 1         range 7 ..  7;
         --  Unused3   at 2         range 0 .. 15;
         Video_Memory  at 1 * DWORD range 0 .. 31;
         Pixel_Format  at 2 * DWORD range 0 .. 31;
         Width         at 3 * DWORD range 0 .. 31;
         Height        at 4 * DWORD range 0 .. 31;
      end record;
   pragma Convention (Convention => C,
                      Entity     => Info);

   type Info_Ptr is access constant Info;
   pragma Convention (Convention => C,
                      Entity     => Info_Ptr);

   ---------------------------------------------------------------------
   --  Get_Surface
   --
   --  Returns a pointer to the current display surface.
   --
   --  This function returns a pointer to the current display surface.
   --  If SDL is doing format conversion on the display surface, this
   --  function returns the publicly visible surface, not the real video
   --  surface.
   ---------------------------------------------------------------------
   function Get_Surface return Surface;

   ---------------------------------------------------------------------
   --  Get_Info
   --
   --  Returns a pointer to information about the video hardware.
   --
   --  This function returns a read-only pointer to information about
   --  the video hardware. If this is called before Set_Mode, the
   --  'Pixel_Format' member of the returned structure will contain the
   --  pixel format of the "best" video mode.
   ---------------------------------------------------------------------
   function Get_Info return Info_Ptr;

   ---------------------------------------------------------------------
   --  Driver_Name
   --
   --  Obtain the name of the video driver.
   --
   --  Returns the name of the initialised video driver (up to 256
   --  characters). The driver name is a simple one word identifier like
   --  "x11" or "windib".
   ---------------------------------------------------------------------
   function Driver_Name return String;

   ---------------------------------------------------------------------
   --  List_Modes
   --
   --  Returns an array of available screen dimensions for the given
   --  format and video flags, sorted largest to smallest.
   --
   --  Returns a zero-size array with upper bound 0 if there are no
   --  dimensions available for a particular format, or a zero-size
   --  array with upper bound 1 if any dimension is okay for the given
   --  format.
   --
   --  If format is NULL, the mode list will be for the format returned
   --  by Get_Info.Pixel_Format. The flag parameter is an OR'd
   --  combination of surface flags. The flags are the same as those
   --  used Set_Mode and they play a strong role in deciding what modes
   --  are valid. For instance, if you pass HW_SURFACE as a flag, only
   --  modes that support hardware video surfaces will be returned
   ---------------------------------------------------------------------
   function List_Modes (Format : in Pixel_Format_Ptr; --  Maybe NULL.
                        Flags  : in Surface_Flags) return Rectangles;

   ---------------------------------------------------------------------
   --  Mode_Ok
   --
   --  Check to see if a particular video mode is supported.
   --
   --  It returns 0 if the requested mode is not supported under any bit
   --  depth, or returns the bits-per-pixel of the closest available
   --  mode with the given width and height. If this bits-per-pixel is
   --  different from the one used when setting the video mode, Set_Mode
   --  will succeed, but will emulate the requested bits-per-pixel with
   --  a shadow surface. The arguments to Mode_OK are the same ones you
   --  would pass to Set_Mode.
   ---------------------------------------------------------------------
   function Mode_Ok (Width  : in Int;
                     Height : in Int;
                     Depth  : in Int;
                     Flags  : in Surface_Flags) return Int;

   ---------------------------------------------------------------------
   --  Set_Mode
   --
   --  Set up a video mode with the specified width, height and bits-
   --  per-pixel.
   --
   --  If 'bpp' is 0, it is treated as the current display bits per
   --  pixel.
   --
   --  If ANY_FORMAT is set in 'flags', the SDL library will try to set
   --  the requested bits-per-pixel, but will return whatever video
   --  pixel format is available. The default is to emulate the
   --  requested pixel format if it is not natively available.
   --
   --  If HW_SURFACE is set in 'flags', the video surface will be placed
   --  in video memory, if possible, and you may have to call
   --  Lock_Surface in order to access the raw framebuffer. Otherwise,
   --  the video surface will be created in system memory.
   --
   --  If ASYNC_BLIT is set in 'flags', SDL will try to perform
   --  rectangle updates asynchronously, but you must always lock before
   --  accessing pixels. SDL will wait for updates to complete before
   --  returning from the lock.
   --
   --  If HW_PALETTE is set in 'flags', the SDL library will guarantee
   --  that the colors set by Set_Colors will be the colors you get.
   --  Otherwise, in 8-bit mode, Set_Colors may not be able to set all
   --  of the colors exactly the way they are requested, and you should
   --  look at the video surface structure to determine the actual
   --  palette. If SDL cannot guarantee that the colors you request can
   --  be set, i.e. if the colormap is shared, then the video surface
   --  may be created under emulation in system memory, overriding the
   --  HW_SURFACE flag.
   --
   --  If FULL_SCREEN is set in 'flags', the SDL library will try to set
   --  a fullscreen video mode. The default is to create a windowed mode
   --  if the current graphics system has a window manager. If the SDL
   --  library is able to set a fullscreen video mode, this flag will be
   --  set in the surface that is returned.
   --
   --  If DOUBLE_BUF is set in 'flags', the SDL library will try to set
   --  up two surfaces in video memory and swap between them when you
   --  call Flip. This is usually slower than the normal
   --  single-buffering scheme, but prevents "tearing" artifacts caused
   --  by modifying video memory while the monitor is refreshing. It
   --  should only be used by applications that redraw the entire screen
   --  on every update.
   --
   --  If RESIZABLE is set in 'flags', the SDL library will allow the
   --  window manager, if any, to resize the window at runtime. When
   --  this occurs, SDL will send a VIDEO_RESIZE event to you
   --  application, and you must respond to the event by re-calling
   --  Set_Mode with the requested size (or another size that suits the
   --  application).
   --
   --  If SDL_NOFRAME is set in 'flags', the SDL library will create a
   --  window without any title bar or frame decoration. Fullscreen
   --  video modes have this flag set automatically.
   --
   --  Errors may occur, so the actual validity of the returned video
   --  framebuffer surface should be checked with Is_Valid prior to
   --  using it.
   --
   --  If you rely on functionality provided by certain video flags,
   --  check the flags of the returned surface to make sure that
   --  functionality is available. SDL will fall back to reduced
   --  functionality if the exact flags you wanted are not available.
   ---------------------------------------------------------------------
   function Set_Mode (Width  : in Int;
                      Height : in Int;
                      Depth  : in Int;
                      Flags  : in Surface_Flags) return Surface;

   ---------------------------------------------------------------------
   --  Update_Rect
   --
   --  Makes sure the given area is updated on the given screen.
   --
   --  Makes sure the given area is updated on the given screen. The
   --  rectangle must be confined within the screen boundaries (no
   --  clipping is done).
   --
   --  If 'X', 'Y', 'Width' and 'Height' are all 0, Update_Rect will
   --  update the entire screen.
   --
   --  This function should not be called while 'Screen' is locked.
   ---------------------------------------------------------------------
   procedure Update_Rect (Screen : in Surface;
                          X      : in SInt32;
                          Y      : in SInt32;
                          Width  : in SInt32;
                          Height : in SInt32);

   ---------------------------------------------------------------------
   --  Update_Rects
   --
   --  Makes sure the given list of rectangles is updated on the given
   --  screen.
   --
   --  The rectangles must all be confined within the screen boundaries
   --  (no clipping is done).
   --
   --  This function should not be called while screen is locked.
   --
   --  Note: It is adviced to call this function only once per frame,
   --        since each call has some processing overhead. This is no
   --        restriction since you can pass any number of rectangles
   --        each time.
   --        The rectangles are not automatically merged or checked for
   --        overlap. In general, the programmer can use his knowledge
   --        about his particular rectangles to merge them in an
   --        efficient way, to avoid overdraw.
   ---------------------------------------------------------------------
   procedure Update_Rects (Screen : in Surface;
                           Rects  : in Rectangles);
   pragma Inline (Update_Rects);

   ---------------------------------------------------------------------
   --  Flip
   --
   --  Updates the visible screen from the drawing area.
   --
   --  On hardware that supports double-buffering, this function sets up
   --  a flip and returns. The hardware will wait for vertical retrace,
   --  and then swap video buffers before the next video surface blit or
   --  lock will return. On hardware that does not support
   --  double-buffering, this is equivalent to calling
   --  Update_Rect (screen, 0, 0, 0, 0); The DOUBLE_BUF flag must have
   --  been passed to Set_Mode when setting the video mode for this
   --  function to perform hardware flipping.
   ---------------------------------------------------------------------
   procedure Flip (Screen : in Surface);

   ---------------------------------------------------------------------
   --  Set_Colors
   --
   --  Sets a portion of the colormap for the given 8-bit surface.
   --
   --  When surface is the surface associated with the current display,
   --  the display colormap will be updated with the requested colors.
   --  If HW_PALETTE was set in Set_Mode flags, Set_Colors will always
   --  return 1, and the palette is guaranteed to be set the way you
   --  desire, even if the window colormap has to be warped or run under
   --  emulation.
   --
   --  The color components of an Color structure are 8-bits in size,
   --  giving you a total of 256**3 = 16777216 colors.
   --
   --  Palettized (8-bit) screen surfaces with the HW_PALETTE flag have
   --  two palettes, a logical palette that is used for mapping blits
   --  to/from the surface and a physical palette (that determines how
   --  the hardware will map the colors to the display). Set_Colors
   --  modifies both palettes (if present), and is equivalent to calling
   --  Set_Palette with the flags set to (LOG_PAL or PHYS_PAL).
   --
   --  If surface is not a palettized surface, this function does
   --  nothing, returning 0. If all of the colors were set as passed to
   --  Set_Colors, it will return 1. If not all the color entries were
   --  set exactly as given, it will return 0, and you should look at
   --  the surface palette to determine the actual color palette.
   ---------------------------------------------------------------------
   function Set_Colors (Screen     : in Surface;
                        Colors     : in Color_Array;
                        First      : in Int;
                        Num_Colors : in Int) return Bool;

   ---------------------------------------------------------------------
   --  Set_Palette
   --
   --  Sets the colors in the palette of an 8-bit surface.
   --
   --  Sets a portion of the palette for the given 8-bit surface.
   --
   --  Palettized (8-bit) screen surfaces with the HW_PALETTE flag have
   --  two palettes, a logical palette that is used for mapping blits
   --  to/from the surface and a physical palette (that determines how
   --  the hardware will map the colors to the display). Non screen
   --  surfaces have a logical palette only. Blit_Surface always uses
   --  the logical palette when blitting surfaces (if it has to convert
   --  between surface pixel formats). Because of this, it is often
   --  useful to modify only one or the other palette to achieve various
   --  special color effects (e.g., screen fading, color flashes, screen
   --  dimming).
   --
   --  This function can modify either the logical or physical palette
   --  by specifying LOG_PAL or PHYS_PAL the in the flags parameter.
   --
   --  When surface is the surface associated with the current display,
   --  the display colormap will be updated with the requested colors.
   --  If HW_PALETTE was set in Set_Mode flags, Set_Palette will always
   --  return 1, and the palette is guaranteed to be set the way you
   --  desire, even if the window colormap has to be warped or run under
   --  emulation.
   --
   --  If surface is not a palettized surface, this function does
   --  nothing, returning 0. If all of the colors were set as passed to
   --  Set_Palette, it will return 1. If not all the color entries were
   --  set exactly as given, it will return 0, and you should look at
   --  the surface palette to determine the actual color palette.
   ---------------------------------------------------------------------
   function Set_Palette (Screen     : in Surface;
                         Flags      : in Palette_Flags;
                         Colors     : in Color_Array;
                         First      : in Int;
                         Num_Colors : in Int) return Bool;

   ---------------------------------------------------------------------
   --  Set_Gamma
   --
   --  Sets the "gamma function" for the display of each color
   --  component. Gamma controls the brightness/contrast of colors
   --  displayed on the screen. A gamma value of 1.0 is identity (i.e.,
   --  no adjustment is made).
   --
   --  This function adjusts the gamma based on the "gamma function"
   --  parameter, you can directly specify lookup tables for gamma
   --  adjustment with Set_Gamma_Ramp.
   --
   --  Not all display hardware is able to change gamma.
   --
   --  Warning: Under Linux (X.org Gnome and Xfce), gamma settings
   --           affects the entire display (including the desktop)!
   --
   --  Returns -1 on error (or if gamma adjustment is not supported).
   ---------------------------------------------------------------------
   function Set_Gamma (Red   : in Float;
                       Green : in Float;
                       Blue  : in Float) return Int;

   --  Get_Gamma_Ramp
   --  Set_Gamma_Ramp

   ---------------------------------------------------------------------
   --  Map_RGB
   --
   --  Map an RGB color value to a pixel format.
   --
   --  Maps the RGB color value to the specified pixel format and
   --  returns the pixel value as a 32-bit int.
   --
   --  If the format has a palette (8-bit) the index of the closest
   --  matching color in the palette will be returned.
   --
   --  If the specified pixel format has an alpha component it will be
   --  returned as all 1 bits (fully opaque).
   --
   --  Returns a pixel value best approximating the given RGB color
   --  value for a given pixel format. If the pixel format bpp (color
   --  depth) is less than 32-bpp then the unused upper bits of the
   --  return value can safely be ignored (e.g., with a 16-bpp format
   --  the return value can be assigned to a UInt16, and similarly a
   --  UInt8 for an 8-bpp format).
   ---------------------------------------------------------------------
   function Map_RGB (Format : in Pixel_Format;
                     Red    : in UInt8;
                     Green  : in UInt8;
                     Blue   : in UInt8) return UInt32;

   ---------------------------------------------------------------------
   --  Map_RGBA
   --
   --  Map an RGBA color value to a pixel format.
   --
   --  Maps the RGBA color value to the specified pixel format and
   --  returns the pixel value as a 32-bit int.
   --
   --  If the format has a palette (8-bit) the index of the closest
   --  matching color in the palette will be returned.
   --
   --  If the specified pixel format has no alpha component the alpha
   --  value will be ignored (as it will be in formats with a palette).
   --
   --  Returns a pixel value best approximating the given RGBA color
   --  value for a given pixel format. If the pixel format bpp (color
   --  depth) is less than 32-bpp then the unused upper bits of the
   --  return value can safely be ignored (e.g., with a 16-bpp format
   --  the return value can be assigned to a UInt16, and similarly a
   --  UInt8 for an 8-bpp format).
   ---------------------------------------------------------------------
   function Map_RGBA (Format : in Pixel_Format;
                      Red    : in UInt8;
                      Green  : in UInt8;
                      Blue   : in UInt8;
                      Alpha  : in UInt8) return UInt32;

   ---------------------------------------------------------------------
   --  Get_RGB
   --
   --  Get RGB values from a pixel in the specified pixel format.
   --
   --  This function uses the entire 8-bit [0..255] range when
   --  converting color components from pixel formats with less than
   --  8-bits per RGB component (e.g., a completely white pixel in
   --  16-bit RGB565 format would return [0xff, 0xff, 0xff] not [0xf8,
   --  0xfc, 0xf8]).
   ---------------------------------------------------------------------
   procedure Get_RGB (Pixel  : in     UInt32;
                      Format : in     Pixel_Format;
                      Red    :    out UInt8;
                      Green  :    out UInt8;
                      Blue   :    out UInt8);

   ---------------------------------------------------------------------
   --  Get_RGBA
   --
   --  Get RGBA values from a pixel in the specified pixel format.
   --
   --  This function uses the entire 8-bit [0..255] range when
   --  converting color components from pixel formats with less than
   --  8-bits per RGB component (e.g., a completely white pixel in
   --  16-bit RGB565 format would return [0xff, 0xff, 0xff] not [0xf8,
   --  0xfc, 0xf8]).
   --
   --  If the surface has no alpha component, the alpha will be returned
   --  as 0xff (100% opaque).
   ---------------------------------------------------------------------
   procedure Get_RGBA (Pixel  : in     UInt32;
                       Format : in     Pixel_Format;
                       Red    :    out UInt8;
                       Green  :    out UInt8;
                       Blue   :    out UInt8);

   ---------------------------------------------------------------------
   --  Create_RGB_Surface
   --
   --  Create an empty Surface.
   --
   --  Allocate an empty surface (must be called after Set_Mode).
   --
   --  If Depth (BPP) is 8 an empty palette is allocated for the
   --  surface, otherwise a 'packed-pixel' Pixel_Format is created using
   --  the [RGBA]mask's provided (see Pixel_Format). The flags specifies
   --  the type of surface that should be created, it is an OR'd
   --  combination of the following possible values:
   --
   --  SW_SURFACE
   --      SDL will create the surface in system memory. This improves
   --      the performance of pixel level access, however you may not be
   --      able to take advantage of some types of hardware blitting.
   --  HW_SURFACE
   --      SDL will attempt to create the surface in video memory. This
   --      will allow SDL to take advantage of Video->Video blits (which
   --      are often accelerated).
   --  SRC_COLOR_KEY
   --      This flag turns on color keying for blits from this surface.
   --      If HW_SURFACE is also specified and color keyed blits are
   --      hardware-accelerated, then SDL will attempt to place the
   --      surface in video memory. If the screen is a hardware surface
   --      and color keyed blits are hardware-accelerated then the
   --      HW_SURFACE flag will be set. Use Set_Color_Key to set or
   --      clear this flag after surface creation.
   --  SRC_ALPHA
   --      This flag turns on alpha-blending for blits from this
   --      surface. If HW_SURFACE is also specified and alpha-blending
   --      blits are hardware-accelerated, then the surface will be
   --      placed in video memory if possible. If the screen is a
   --      hardware surface and alpha-blending blits are
   --      hardware-accelerated then the HW_SURFACE flag will be set.
   --      Use Set_Alpha to set or clear this flag after surface
   --      creation.
   --
   --  [RGBA]mask are the bitmasks used to extract that colour from a
   --  pixel. For instance, Rmask being FF000000 means the red data is
   --  stored in the most significant byte. Using zeros for the RGB
   --  masks sets a default value, based on the depth. (e.g.
   --  Create_RGB_Surface(flags,w,h,32,0,0,0,0);) However, using zero
   --  for the Amask results in an Amask of 0.
   --
   --  Notes: If an alpha-channel is specified (that is, if Amask is
   --         nonzero), then the SRC_ALPHA flag is automatically set.
   --         You may remove this flag by calling Set_Alpha after
   --         surface creation. Also, if the HW_SURFACE flag is set on
   --         the returned surface, its format might not match the
   --         requested format.
   --
   --  Notes: Sometimes specifying an Alpha mask value could cause
   --         strange results. This can be worked around by setting the
   --         Amask parameter to 0, but still including the SRC_ALPHA
   --         flag, and then using Set_Alpha, also with the SRC_ALPHA
   --         flag.
   --
   --  Errors may occur, so the actual validity of the returned surface
   --  should be checked with Is_Valid prior to using it.
   ---------------------------------------------------------------------
   function Create_RGB_Surface (Flags      : in Surface_Flags;
                                Width      : in Int;
                                Height     : in Int;
                                Depth      : in Int;
                                Red_Mask   : in UInt32;
                                Green_Mask : in UInt32;
                                Blue_Mask  : in UInt32;
                                Alpha_Mask : in UInt32) return Surface;

   ---------------------------------------------------------------------
   --  Create_RGB_Surface_From
   --
   --  Creates an SDL_Surface from the provided pixel data.
   --
   --  No copy is made from the pixel data. A special undocumented
   --  surface flag is set. The pixel data won't be deallocated
   --  automatically when Free_Surface is invoked with the surface and
   --  it should not be freed until the surface has been freed. The data
   --  stored in pixels is assumed to have depth bits per pixel. Pitch
   --  is the size of the scanline of the surface, in bytes, i.e.
   --  widthInPixels*bytesPerPixel. The scanline is the width of the
   --  image multiplied by bytes per pixel, plus any bytes added for
   --  alignment (that is if pixels points to the leftmost pixel on the
   --  first row of the surface, then pixels+pitch points to the
   --  leftmost pixel on the second row of the surface).
   --
   --  The pixel data is considered to be in software memory. If the
   --  pixel data lies in hardware memory (as pixel data from a hardware
   --  surface), the appropriate surface flag has to be set manually.
   --
   --  See Create_RGB_Surface for a more detailed description of the
   --  other parameters.
   --
   --  Errors may occur, so the actual validity of the returned surface
   --  should be checked with Is_Valid prior to using it.
   ---------------------------------------------------------------------
   function Create_RGB_Surface_From (Pixels     : in Pixel_Ptr;
                                     Width      : in Int;
                                     Height     : in Int;
                                     Depth      : in Int;
                                     Pitch      : in Int;
                                     Red_Mask   : in UInt32;
                                     Green_Mask : in UInt32;
                                     Blue_Mask  : in UInt32;
                                     Alpha_Mask : in UInt32) return Surface;

   ---------------------------------------------------------------------
   --  Free_Surface
   --
   --  Frees (deletes) a Surface.
   --
   --  Frees the resources used by a previously created Surface. If
   --  the surface was created using Create_RGB_Surface_From then the
   --  pixel data is not freed.
   ---------------------------------------------------------------------
   procedure Free_Surface (Screen : in out Surface);

   --  Lock_Surface
   --  Unlock_Surface
   --
   --  Lock_Surface sets up a surface for directly accessing the pixels.
   --  Between calls to Lock_Surface/Unlock_Surface, you can write to
   --  and read from 'surface->pixels', using the pixel format stored in
   --  'surface->format'. Once you are done accessing the surface, you
   --  should use Unlock_Surface to release it.
   --
   --  Not all surfaces require locking. If Must_Lock (surface)
   --  evaluates to 0, then you can read and write to the surface at any
   --  time, and the pixel format of the surface will not change. In
   --  particular, if the HW_SURFACE flag is not given when calling
   --  Set_Mode, you will not need to lock the display surface before
   --  accessing it.
   --
   --  No operating system or library calls should be made between
   --  lock/unlock pairs, as critical system locks may be held during
   --  this time.
   ---------------------------------------------------------------------
   function Lock_Surface (Screen : in Surface) return Int;
   procedure Unlock_Surface (Screen : in Surface);

   ---------------------------------------------------------------------
   --  Load_BMP
   --
   --  Loads a surface from a named Windows BMP file.
   --
   --  Note: When loading a 24-bit Windows BMP file, pixel data points
   --        are loaded as blue, green, red, and NOT red, green, blue
   --        (as one might expect).
   --
   --  Errors may occur, so the actual validity of the returned surface
   --  should be checked with Is_Valid prior to using it.
   ---------------------------------------------------------------------
   function Load_BMP (File : in String) return Surface;

   ---------------------------------------------------------------------
   --  Save_BMP
   --
   --  Saves the SDL_Surface surface as a Windows BMP file named file.
   --
   --  Returns 0 if successful or -1 if there was an error.
   ---------------------------------------------------------------------
   function Save_BMP (Source : in Surface;
                      File   : in String) return Int;

   ---------------------------------------------------------------------
   --  Set_Color_Key
   --
   --  Sets the color key (transparent pixel) in a blittable surface and
   --  enables or disables RLE blit acceleration.
   --
   --  RLE acceleration can substantially speed up blitting of images
   --  with large horizontal runs of transparent pixels (i.e., pixels
   --  that match the key value). The key must be of the same pixel
   --  format as the surface, Map_RGB is often useful for obtaining an
   --  acceptable value.
   --
   --  If flag is SRC_COLOR_KEY then key is the transparent pixel value
   --  in the source image of a blit.
   --
   --  If flag is OR'd with RLE_ACCEL then the surface will be drawn
   --  using RLE acceleration when drawn with Blit_Surface. The surface
   --  will actually be encoded for RLE acceleration the first time
   --  Blit_Surface or Display_Format is called on the surface.
   --
   --  If flag is 0, this function clears any current color key.
   --
   --  This function returns 0, or -1 if there was an error.
   ---------------------------------------------------------------------
   function Set_Color_Key (Screen : in Surface;
                           Flags  : in Surface_Flags;
                           Key    : in UInt32) return Int;

   ---------------------------------------------------------------------
   --  Set_Alpha
   --
   --  Adjust the alpha properties of a surface.
   --
   --  Note: This function and the semantics of SDL alpha blending have
   --        changed since version 1.1.4. Up until version 1.1.5, an
   --        alpha value of 0 was considered opaque and a value of 255
   --        was considered transparent. This has now been inverted: 0
   --        (ALPHA_TRANSPARENT) is now considered transparent and 255
   --        (ALPHA_OPAQUE) is now considered opaque.
   --
   --  Set_Alpha is used for setting the per-surface alpha value and/or
   --  enabling and disabling alpha blending.
   --
   --  The Surface parameter specifies which surface whose alpha
   --  attributes you wish to adjust. Flags is used to specify whether
   --  alpha blending should be used (SRC_ALPHA) and whether the surface
   --  should use RLE acceleration for blitting (RLE_ACCEL). Flags can
   --  be an OR'd combination of these two options, one of these options
   --  or 0. If SRC_ALPHA is not passed as a flag then all alpha
   --  information is ignored when blitting the surface. The alpha
   --  parameter is the per-surface alpha value; a surface need not have
   --  an alpha channel to use per-surface alpha and blitting can still
   --  be accelerated with RLE_ACCEL.
   --
   --  Note: The per-surface alpha value of 128 is considered a special
   --        case and is optimised, so it's much faster than other
   --        per-surface values.
   --
   --  Alpha affects surface blitting in the following ways:
   --
   --  RGBA->RGB with SRC_ALPHA
   --      The source is alpha-blended with the destination, using the
   --      alpha channel. SRC_COLOR_KEY and the per-surface alpha are
   --      ignored.
   --  RGBA->RGB without SRC_ALPHA
   --      The RGB data is copied from the source. The source alpha
   --      channel and the per-surface alpha value are ignored. If
   --      SRC_COLOR_KEY is set, only the pixels not matching the
   --      colorkey value are copied.
   --  RGB->RGBA with SRC_ALPHA
   --      The source is alpha-blended with the destination using the
   --      per-surface alpha value. If SRC_COLOR_KEY is set, only the
   --      pixels not matching the colorkey value are copied. The alpha
   --      channel of the copied pixels is set to opaque.
   --  RGB->RGBA without SRC_ALPHA
   --      The RGB data is copied from the source and the alpha value of
   --      the copied pixels is set to opaque. If SRC_COLOR_KEY is set,
   --      only the pixels not matching the colorkey value are copied.
   --  RGBA->RGBA with SRC_ALPHA
   --      The source is alpha-blended with the destination using the
   --      source alpha channel. The alpha channel in the destination
   --      surface is left untouched. SRC_COLOR_KEY is ignored.
   --  RGBA->RGBA without SRC_ALPHA
   --      The RGBA data is copied to the destination surface. If
   --      SRC_COLOR_KEY is set, only the pixels not matching the
   --      colorkey value are copied.
   --  RGB->RGB with SRC_ALPHA
   --      The source is alpha-blended with the destination using the
   --      per-surface alpha value. If SRC_COLOR_KEY is set, only the
   --      pixels not matching the colorkey value are copied.
   --  RGB->RGB without SRC_ALPHA
   --      The RGB data is copied from the source. If SRC_COLOR_KEY is
   --      set, only the pixels not matching the colorkey value are
   --      copied.
   --
   --  Note: When blitting, the presence or absence of SRC_ALPHA is
   --       relevant only on the source surface, not the destination.
   --  Note: Note that RGBA->RGBA blits (with SRC_ALPHA set) keep the
   --        alpha of the destination surface. This means that you
   --        cannot compose two arbitrary RGBA surfaces this way and get
   --        the result you would expect from "overlaying" them; the
   --        destination alpha will work as a mask.
   --  Note: Also note that per-pixel and per-surface alpha cannot be
   --        combined; the per-pixel alpha is always used if available.
   --
   --  This function returns 0, or -1 if there was an error.
   ---------------------------------------------------------------------
   function Set_Alpha (Screen : in Surface;
                       Flags  : in Surface_Flags;
                       Alpha  : in UInt8) return Int;

   ---------------------------------------------------------------------
   --  Set_Clip_Rect
   --
   --  Sets the clipping rectangle for a surface.
   --
   --  Sets the clipping rectangle for a surface. When this surface is
   --  the destination of a blit, only the area within the clip
   --  rectangle will be drawn into.
   --
   --  The Clip_Rect will be clipped to the edges of the surface so that
   --  the clip rectangle for a surface can never fall outside the edges
   --  of the surface.
   ---------------------------------------------------------------------
   procedure Set_Clip_Rect (Screen    : in Surface;
                            Clip_Rect : in Rectangle);

   ---------------------------------------------------------------------
   --  Disable_Clipping
   --
   --  Disables clipping for a surface.
   ---------------------------------------------------------------------
   procedure Disable_Clipping (Screen : in Surface);
   pragma Inline (Disable_Clipping);

   ---------------------------------------------------------------------
   --  Get_Clip_Rect
   --
   --  Gets the clipping rectangle for a surface.
   --
   --  When this surface is the destination of a blit, only the area
   --  within the clip rectangle is drawn into.
   --
   --  The rectangle Area will be filled with the clipping rectangle of
   --  the surface.
   ---------------------------------------------------------------------
   procedure Get_Clip_Rect (Screen : in     Surface;
                            Area   :    out Rectangle);

   ---------------------------------------------------------------------
   --  Convert_Surface
   --
   --  Converts a surface to the same format as another surface.
   --
   --  Creates a new surface of the specified format, and then copies
   --  and maps the given surface to it. It is also useful for making a
   --  copy of a surface.
   --
   --  The flags parameter is passed to Create_RGB_Surface and has those
   --  semantics.
   --
   --  This function is used internally by Display_Format.
   --
   --  This function can only be called after Init.
   --
   --  Returns the new surface. Its actual validity must be checked by
   --  calling Is_Valid.
   ---------------------------------------------------------------------
   function Convert_Surface (Source : in Surface;
                             Format : in Pixel_Format;
                             Flags  : in Surface_Flags) return Surface;

   ---------------------------------------------------------------------
   --  Blit_Surface
   --
   --  This performs a fast blit from the source surface to the
   --  destination surface.
   --
   --  The width and height in Source_Area determine the size of the
   --  copied rectangle. Only the position is used in the
   --  Destination_Area (the width and height are ignored). Blits with
   --  negative Destination_Area coordinates will be clipped properly.
   --
   --  <NA>
   --  If Source_Area is NULL, the entire surface is copied. If
   --  Destination_Area is NULL, then the destination position (upper
   --  left corner) is (0, 0).
   --  </NA>
   --
   --  The final blit rectangle is saved in Destination_Area after all
   --  clipping is performed (Source_Area is not modified).
   --
   --  The blit function should not be called on a locked surface. I.e.
   --  when you use your own drawing functions you may need to lock a
   --  surface, but this is not the case with Blit_Surface. Like most
   --  surface manipulation functions in SDL, it should not be used
   --  together with OpenGL.
   --
   --  The results of blitting operations vary greatly depending on
   --  whether SRC_ALPHA is set or not. See Set_Alpha for an explanation
   --  of how this affects your results. Colorkeying and alpha
   --  attributes also interact with surface blitting, as the following
   --  pseudo-code should hopefully explain.
   --
   --  if Source has SRC_ALPHA set
   --      if Source has alpha channel (that is, format->Amask != 0)
   --          blit using per-pixel alpha, ignoring any colour key
   --      else
   --          if Source has SRC_COLOR_KEY set
   --              blit using the colour key AND the per-surface alpha value
   --          else
   --              blit using the per-surface alpha value
   --          end if
   --      end if
   --  else
   --      if Source has SRC_COLOR_KEY set
   --          blit using the colour key
   --      else
   --          ordinary opaque rectangular blit
   --      end if
   --  end if
   --
   --  If the blit is successful, it returns 0, otherwise it returns -1.
   --  If either of the surfaces were in video memory, and the blit
   --  returns -2, the video memory was lost, so it should be reloaded
   --  with artwork and re-blitted:
   --
   --  while Blit_Surface (Image, Img_Rect, Screen, Dst_Rect) = -2 loop
   --     while Lock_Surface (Image) < 0 loop
   --        delay 0.01;
   --     end loop;
   --
   --     --  Write image pixels to image->pixels
   --     Unlock_Surface (Image);
   --  end loop;
   --
   --  This happens under DirectX 5.0 when the system switches away from
   --  your fullscreen application. Locking the surface will also fail
   --  until you have access to the video memory again.
   --
   --  Note: when you're blitting between two alpha surfaces, normally
   --        the alpha of the destination acts as a mask. If you want to
   --        just do a "dumb copy" that doesn't blend, you have to turn
   --        off the SRC_ALPHA flag on the source surface. This is how
   --        it's supposed to work, but can be surprising when you're
   --        trying to combine one image with another and both have
   --        transparent backgrounds.
   ---------------------------------------------------------------------
   function Blit_Surface
     (Source           : in     Surface;
      Source_Area      : in     Rectangle;
      Destination      : in     Surface;
      Destination_Area : access Rectangle) return Int;

   ---------------------------------------------------------------------
   --  Fill_Rect
   --
   --  This function performs a fast fill of the given rectangle with
   --  some color.
   --
   --  The color should be a pixel of the format used by the surface,
   --  and can be generated by the Map_RGB or Map_RGBA functions. If the
   --  color value contains an alpha value then the destination is
   --  simply "filled" with that alpha information, no blending takes
   --  place.
   --
   --  If there is a clip rectangle set on the destination (set via
   --  Set_Clip_Rect) then this function will clip based on the
   --  intersection of the clip rectangle and the Area rectangle will be
   --  modified to represent the area actually filled.
   --
   --  This function returns 0 on success, or -1 on error.
   ---------------------------------------------------------------------
   function Fill_Rect (Destination : in     Surface;
                       Area        : access Rectangle;
                       Fill_Color  : in     UInt32) return Int;

   ---------------------------------------------------------------------
   --  Fill_Rect
   --
   --  This procedurre performs a fast fill of the given rectangle with
   --  some color.
   --
   --  The color should be a pixel of the format used by the surface,
   --  and can be generated by the Map_RGB or Map_RGBA functions. If the
   --  color value contains an alpha value then the destination is
   --  simply "filled" with that alpha information, no blending takes
   --  place.
   --
   --  If there is a clip rectangle set on the destination (set via
   --  Set_Clip_Rect) then this function will clip based on the
   --  intersection of the clip rectangle and the Area rectangle will be
   --  modified to represent the area actually filled.
   ---------------------------------------------------------------------
   procedure Fill_Rect (Destination : in     Surface;
                        Area        : in out Rectangle;
                        Fill_Color  : in     UInt32);

   ---------------------------------------------------------------------
   --  Display_Format
   --
   --  Convert a surface to the display format.
   --
   --  This function takes a surface and copies it to a new surface of
   --  the pixel format and colors of the video framebuffer, suitable
   --  for fast blitting onto the display surface. It calls
   --  Convert_Surface.
   --
   --  If you want to take advantage of hardware colorkey or alpha blit
   --  acceleration, you should set the colorkey and alpha value before
   --  calling this function.
   --
   --  If you want an alpha channel, see Display_Format_Alpha.
   --
   --  Returns the new surface. Its actual validity must be checked by
   --  calling Is_Valid.
   ---------------------------------------------------------------------
   function Display_Format (Source : in Surface) return Surface;

   ---------------------------------------------------------------------
   --  Display_Format_Alpha
   --
   --  Convert a surface to the display format.
   --
   --  This function takes a surface and copies it to a new surface of
   --  the pixel format and colors of the video framebuffer plus an
   --  alpha channel, suitable for fast blitting onto the display
   --  surface. It calls Convert_Surface.
   --
   --  If you want to take advantage of hardware colorkey or alpha blit
   --  acceleration, you should set the colorkey and alpha value before
   --  calling this function.
   --
   --  This function can be used to convert a colorkey to an alpha
   --  channel, if the SRC_COLOR_KEY flag is set on the surface. The
   --  generated surface will then be transparent (alpha=0) where the
   --  pixels match the colorkey, and opaque (alpha=255) elsewhere.
   --
   --  Of course, the video surface must be initialised using Set_Mode
   --  before this function is called, or it will segfault.
   --
   --  Returns a copy of surface converted to the display format. This
   --  surface must be freed using Free_Surface.
   --
   --  The conversion may fail or run out of memory, so its actual
   --  validity must be checked by calling Is_Valid prior to using the
   --  surface.
   ---------------------------------------------------------------------
   function Display_Format_Alpha (Source : in Surface) return Surface;

   --  void SDL_WarpMouse(Uint16 x, Uint16 y);
   --  SDL_Cursor *SDL_CreateCursor(Uint8 *data, Uint8 *mask, int w, int h, int hot_x, int hot_y);
   --  void SDL_FreeCursor(SDL_Cursor *cursor);
   --  void *SDL_SetCursor(SDL_Cursor *cursor);
   --  SDL_Cursor *SDL_GetCursor(void);
   --  int SDL_ShowCursor (int toggle);
   --  int SDL_GL_LoadLibrary(const char *path);
   --  void *SDL_GL_GetProcAddress(const char* proc);
   --  int SDL_GL_GetAttribute(SDLGLattr attr, int *value);
   --  int SDL_GL_SetAttribute(SDL_GLattr attr, int value);
   --  void SDL_GL_SwapBuffers(void );
   --  SDL_Overlay *SDL_CreateYUVOverlay(int width, int height, Uint32 format, SDL_Surface *display);
   --  int SDL_LockYUVOverlay(SDL_Overlay *overlay);
   --  void SDL_UnlockYUVOverlay(SDL_Overlay *overlay);
   --  int SDL_DisplayYUVOverlay(SDL_Overlay *overlay, SDL_Rect *dstrect);
   --  void SDL_FreeYUVOverlay(SDL_Overlay *overlay);

private

   type Surface_Record is
      record
         Flags     : UInt32;           --  Read only
         Format    : Pixel_Format_Ptr; --  Read only
         Width     : Int;              --  Read only
         Height    : Int;              --  Read only
         Pitch     : UInt16;           --  Read only
         Pixels    : Pixel_Ptr;        --  Read write;
         Offset    : Int;              --  Read only.

         --  Clipping information
         Clip_Rect : Rectangle;

         --  Reference count - used when freeing surface
         Ref_Count : Int;                 --  Read-mostly

         --  Structure also contains private fields not shown here.
      end record;
   for Surface_Record use
      record
         Flags  at 0 * DWORD range 0 .. 31;
         Format at 1 * DWORD range 0 .. 31;
         Width  at 2 * DWORD range 0 .. 31;
         Height at 3 * DWORD range 0 .. 31;
         Pitch  at 4 * DWORD range 0 .. 15;
         Pixels at 5 * DWORD range 0 .. 31;
         Offset at 6 * DWORD range 0 .. 31;
         --  private_hwdata at 7 * DWORD
         Clip_Rect at 8 * DWORD range 0 .. 63;
         --  unused1 at 10 * DWORD
         --  locked  at 11 * DWORD
         --  map     at 12 * DWORD
         --  format_version at 13 * DWORD
         Ref_Count at 14 * DWORD range 0 .. 31;
      end record;
   pragma Convention (Convention => C,
                      Entity     => Surface_Record);

   type Surface is access all Surface_Record;
   pragma Convention (Convention => C,
                      Entity     => Surface);

   Null_Pixels : constant Pixel_Ptr := Pixel_Ptr (System.Null_Address);

   pragma Import (Convention    => C,
                  Entity        => Blit_Surface,
                  External_Name => "SDL_UpperBlit"); --  SDL_BlitSurface is actually a macro.
   pragma Import (Convention    => C,
                  Entity        => Convert_Surface,
                  External_Name => "SDL_ConvertSurface");
   pragma Import (Convention    => C,
                  Entity        => Create_RGB_Surface,
                  External_Name => "SDL_CreateRGBSurface");
   pragma Import (Convention    => C,
                  Entity        => Create_RGB_Surface_From,
                  External_Name => "SDL_CreateRGBSurfaceFrom");
   pragma Import (Convention    => C,
                  Entity        => Display_Format,
                  External_Name => "SDL_DisplayFormat");
   pragma Import (Convention    => C,
                  Entity        => Display_Format_Alpha,
                  External_Name => "SDL_DisplayFormatAlpha");
   pragma Import (Convention    => C,
                  Entity        => Fill_Rect,
                  External_Name => "SDL_FillRect");
   pragma Import (Convention    => C,
                  Entity        => Flip,
                  External_Name => "SDL_Flip");
   pragma Import (Convention    => C,
                  Entity        => Get_Clip_Rect,
                  External_Name => "SDL_GetClipRect");
   pragma Import (Convention    => C,
                  Entity        => Get_RGB,
                  External_Name => "SDL_GetRGB");
   pragma Import (Convention    => C,
                  Entity        => Get_RGBA,
                  External_Name => "SDL_GetRGBA");
   pragma Import (Convention    => C,
                  Entity        => Get_Surface,
                  External_Name => "SDL_GetVideoSurface");
   pragma Import (Convention    => C,
                  Entity        => Get_Info,
                  External_Name => "SDL_GetVideoInfo");
   pragma Import (Convention    => C,
                  Entity        => Lock_Surface,
                  External_Name => "SDL_LockSurface");
   pragma Import (Convention    => C,
                  Entity        => Map_RGB,
                  External_Name => "SDL_MapRGB");
   pragma Import (Convention    => C,
                  Entity        => Map_RGBA,
                  External_Name => "SDL_MapRGBA");
   pragma Import (Convention    => C,
                  Entity        => Mode_Ok,
                  External_Name => "SDL_VideoModeOK");
   pragma Import (Convention    => C,
                  Entity        => Set_Alpha,
                  External_Name => "SDL_SetAlpha");
   pragma Import (Convention    => C,
                  Entity        => Set_Clip_Rect,
                  External_Name => "SDL_SetClipRect");
   pragma Import (Convention    => C,
                  Entity        => Set_Color_Key,
                  External_Name => "SDL_SetColorKey");
   pragma Import (Convention    => C,
                  Entity        => Set_Gamma,
                  External_Name => "SDL_SetGamma");
   pragma Import (Convention    => C,
                  Entity        => Set_Mode,
                  External_Name => "SDL_SetVideoMode");
   pragma Import (Convention    => C,
                  Entity        => Unlock_Surface,
                  External_Name => "SDL_UnlockSurface");
   pragma Import (Convention    => C,
                  Entity        => Update_Rect,
                  External_Name => "SDL_UpdateRect");

end SDL.Video;
