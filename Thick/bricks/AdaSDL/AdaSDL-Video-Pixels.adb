with SDL.Types;

package body AdaSDL.Video.Pixels is

   use type SDL.Types.Uint32;

   ---------
   -- RGB --
   ---------

   function RGB
     (Using : Palette_Provider;
      Red, Green, Blue : Color)
      return Pixel_Eight
   is
      Result : SDL.Types.Uint32
        := SDL.Video.MapRGB (Format => Using.Item,
                             R      => SDL.Types.Uint8(Red),
                             G      => SDL.Types.Uint8(Green),
                             B      => SDL.Types.Uint8(Blue));
   begin
      return Pixel_Eight (Result mod 256);
   end RGB;

   ---------
   -- RGB --
   ---------

   function RGB
     (Using : Palette_Provider;
      Red, Green, Blue : Color)
      return Pixel_Fifteen
   is
      Result : SDL.Types.Uint32
        := SDL.Video.MapRGB (Format => Using.Item,
                             R      => SDL.Types.Uint8(Red),
                             G      => SDL.Types.Uint8(Green),
                             B      => SDL.Types.Uint8(Blue));
   begin
      return Pixel_Fifteen (Result mod 2**16);
   end RGB;

   ---------
   -- RGB --
   ---------

   function RGB
     (Using : Palette_Provider;
      Red, Green, Blue : Color)
      return Pixel_Sixteen
   is
      Result : SDL.Types.Uint32
        := SDL.Video.MapRGB (Format => Using.Item,
                             R      => SDL.Types.Uint8(Red),
                             G      => SDL.Types.Uint8(Green),
                             B      => SDL.Types.Uint8(Blue));
   begin
      return Pixel_Sixteen (Result mod 2**16);
   end RGB;


   ---------
   -- RGB --
   ---------

   function RGB
     (Using : Palette_Provider;
      Red, Green, Blue : Color)
      return Pixel_TwentyFour
   is
      Result : SDL.Types.Uint32
        := SDL.Video.MapRGB (Format => Using.Item,
                             R      => SDL.Types.Uint8(Red),
                             G      => SDL.Types.Uint8(Green),
                             B      => SDL.Types.Uint8(Blue));
   begin
      return Pixel_TwentyFour (Result mod 2**24);
   end RGB;


   ---------
   -- RGB --
   ---------

   function RGB
     (Using : Palette_Provider;
      Red, Green, Blue : Color)
      return Pixel_ThirtyTwo
   is
      Result : SDL.Types.Uint32
        := SDL.Video.MapRGB (Format => Using.Item,
                             R      => SDL.Types.Uint8(Red),
                             G      => SDL.Types.Uint8(Green),
                             B      => SDL.Types.Uint8(Blue));
   begin
      return Pixel_ThirtyTwo (Result mod 2**24);
   end RGB;

   ----------
   -- RGBA --
   ----------

   function RGBA
     (Using : Palette_Provider;
      Red, Green, Blue, Alpha : Color)
      return Pixel_Eight
   is
      Result : SDL.Types.Uint32
        := SDL.Video.MapRGBA (Format => Using.Item,
                              R      => SDL.Types.Uint8(Red),
                              G      => SDL.Types.Uint8(Green),
                              B      => SDL.Types.Uint8(Blue),
                              A      => SDL.Types.Uint8(Alpha));
   begin
      return Pixel_Eight (Result mod 256);
   end RGBA;

   ----------
   -- RGBA --
   ----------

   function RGBA
     (Using : Palette_Provider;
      Red, Green, Blue, Alpha : Color)
      return Pixel_Fifteen
   is
      Result : SDL.Types.Uint32
        := SDL.Video.MapRGBA (Format => Using.Item,
                              R      => SDL.Types.Uint8(Red),
                              G      => SDL.Types.Uint8(Green),
                              B      => SDL.Types.Uint8(Blue),
                              A      => SDL.Types.Uint8(Alpha));
   begin
      return Pixel_Fifteen (Result mod 2**16);
   end RGBA;

   ----------
   -- RGBA --
   ----------

   function RGBA
     (Using : Palette_Provider;
      Red, Green, Blue, Alpha : Color)
      return Pixel_Sixteen
   is
      Result : SDL.Types.Uint32
        := SDL.Video.MapRGBA (Format => Using.Item,
                              R      => SDL.Types.Uint8(Red),
                              G      => SDL.Types.Uint8(Green),
                              B      => SDL.Types.Uint8(Blue),
                              A      => SDL.Types.Uint8(Alpha));
   begin
      return Pixel_SiXteen (Result mod 2**16);
   end RGBA;


   ----------
   -- RGBA --
   ----------

   function RGBA
     (Using : Palette_Provider;
      Red, Green, Blue, Alpha : Color)
      return Pixel_TwentyFour
   is
      Result : SDL.Types.Uint32
        := SDL.Video.MapRGBA (Format => Using.Item,
                              R      => SDL.Types.Uint8(Red),
                              G      => SDL.Types.Uint8(Green),
                              B      => SDL.Types.Uint8(Blue),
                              A      => SDL.Types.Uint8(Alpha));
   begin
      return Pixel_TwentyFour (Result mod 2**24);
   end RGBA;

   ----------
   -- RGBA --
   ----------

   function RGBA
     (Using : Palette_Provider;
      Red, Green, Blue, Alpha : Color)
      return Pixel_ThirtyTwo
   is
      Result : SDL.Types.Uint32
        := SDL.Video.MapRGBA (Format => Using.Item,
                              R      => SDL.Types.Uint8(Red),
                              G      => SDL.Types.Uint8(Green),
                              B      => SDL.Types.Uint8(Blue),
                              A      => SDL.Types.Uint8(Alpha));
   begin
      return Pixel_ThirtyTwo (Result mod 2**32);
   end RGBA;

   ---------------
   -- To_Colors --
   ---------------

   procedure To_Colors
     (Item              : in  Pixel_Eight;
      Using             : in  Palette_Provider;
      Red, Green, Blue  : out Color)
   is
      R, G, B : aliased SDL.Types.Uint8;
   begin
      SDL.Video.GetRGB ( Pixel  => SDL.Types.Uint32 (Item),
                         Fmt => Using.Item,
                         R      => R'Unchecked_Access,
                         G      => G'Unchecked_Access,
                         B      => B'Unchecked_Access);

      Red   := Color (R);
      Green := Color (G);
      Blue  := Color (B);
   end To_Colors;

   ---------------
   -- To_Colors --
   ---------------

   procedure To_Colors
     (Item              : in  Pixel_Fifteen;
      Using             : in  Palette_Provider;
      Red, Green, Blue  : out Color)
   is
      R, G, B : aliased SDL.Types.Uint8;
   begin
      SDL.Video.GetRGB ( Pixel  => SDL.Types.Uint32 (Item),
                         Fmt => Using.Item,
                         R      => R'Unchecked_Access,
                         G      => G'Unchecked_Access,
                         B      => B'Unchecked_Access);

      Red   := Color (R);
      Green := Color (G);
      Blue  := Color (B);
   end To_Colors;

   ---------------
   -- To_Colors --
   ---------------

   procedure To_Colors
     (Item              : in  Pixel_Sixteen;
      Using             : in  Palette_Provider;
      Red, Green, Blue  : out Color)
   is
      R, G, B : aliased SDL.Types.Uint8;
   begin
      SDL.Video.GetRGB ( Pixel  => SDL.Types.Uint32 (Item),
                         Fmt => Using.Item,
                         R      => R'Unchecked_Access,
                         G      => G'Unchecked_Access,
                         B      => B'Unchecked_Access);

      Red   := Color (R);
      Green := Color (G);
      Blue  := Color (B);
   end To_Colors;

   ---------------
   -- To_Colors --
   ---------------

   procedure To_Colors
     (Item              : in  Pixel_TwentyFour;
      Using             : in  Palette_Provider;
      Red, Green, Blue  : out Color)
   is
      R, G, B : aliased SDL.Types.Uint8;
   begin
      SDL.Video.GetRGB ( Pixel  => SDL.Types.Uint32 (Item),
                         Fmt => Using.Item,
                         R      => R'Unchecked_Access,
                         G      => G'Unchecked_Access,
                         B      => B'Unchecked_Access);

      Red   := Color (R);
      Green := Color (G);
      Blue  := Color (B);
   end To_Colors;

   ---------------
   -- To_Colors --
   ---------------

   procedure To_Colors
     (Item              : in  Pixel_ThirtyTwo;
      Using             : in  Palette_Provider;
      Red, Green, Blue  : out Color)
   is
      R, G, B : aliased SDL.Types.Uint8;
   begin
      SDL.Video.GetRGB ( Pixel  => SDL.Types.Uint32 (Item),
                         Fmt => Using.Item,
                         R      => R'Unchecked_Access,
                         G      => G'Unchecked_Access,
                         B      => B'Unchecked_Access);

      Red   := Color (R);
      Green := Color (G);
      Blue  := Color (B);
   end To_Colors;

   ---------------
   -- To_Colors --
   ---------------

   procedure To_Colors
     (Item              : in  Pixel_Eight;
      Using             : in  Palette_Provider;
      Red, Green, Blue, Alpha  : out Color)
   is
      R, G, B, A : aliased SDL.Types.Uint8;
   begin
      SDL.Video.GetRGBA ( Pixel  => SDL.Types.Uint32 (Item),
                          Fmt => Using.Item,
                          R      => R'Unchecked_Access,
                          G      => G'Unchecked_Access,
                          B      => B'Unchecked_Access,
                          A      => A'Unchecked_Access);

      Red   := Color (R);
      Green := Color (G);
      Blue  := Color (B);
      Alpha := Color (A);
   end To_Colors;

   ---------------
   -- To_Colors --
   ---------------

   procedure To_Colors
     (Item              : in  Pixel_Fifteen;
      Using             : in  Palette_Provider;
      Red, Green, Blue, Alpha  : out Color)
   is
      R, G, B, A : aliased SDL.Types.Uint8;
   begin
      SDL.Video.GetRGBA ( Pixel  => SDL.Types.Uint32 (Item),
                          Fmt => Using.Item,
                          R      => R'Unchecked_Access,
                          G      => G'Unchecked_Access,
                          B      => B'Unchecked_Access,
                          A      => A'Unchecked_Access);

      Red   := Color (R);
      Green := Color (G);
      Blue  := Color (B);
      Alpha := Color (A);
   end To_Colors;

   ---------------
   -- To_Colors --
   ---------------

   procedure To_Colors
     (Item              : in  Pixel_Sixteen;
      Using             : in  Palette_Provider;
      Red, Green, Blue, Alpha  : out Color)
   is
      R, G, B, A : aliased SDL.Types.Uint8;
   begin
      SDL.Video.GetRGBA ( Pixel  => SDL.Types.Uint32 (Item),
                          Fmt => Using.Item,
                          R      => R'Unchecked_Access,
                          G      => G'Unchecked_Access,
                          B      => B'Unchecked_Access,
                          A      => A'Unchecked_Access);

      Red   := Color (R);
      Green := Color (G);
      Blue  := Color (B);
      Alpha := Color (A);
   end To_Colors;

   ---------------
   -- To_Colors --
   ---------------

   procedure To_Colors
     (Item              : in  Pixel_TwentyFour;
      Using             : in  Palette_Provider;
      Red, Green, Blue, Alpha  : out Color)
   is
      R, G, B, A : aliased SDL.Types.Uint8;
   begin
      SDL.Video.GetRGBA ( Pixel  => SDL.Types.Uint32 (Item),
                          Fmt => Using.Item,
                          R      => R'Unchecked_Access,
                          G      => G'Unchecked_Access,
                          B      => B'Unchecked_Access,
                          A      => A'Unchecked_Access);

      Red   := Color (R);
      Green := Color (G);
      Blue  := Color (B);
      Alpha := Color (A);
   end To_Colors;

   ---------------
   -- To_Colors --
   ---------------

   procedure To_Colors
     (Item              : in  Pixel_ThirtyTwo;
      Using             : in  Palette_Provider;
      Red, Green, Blue, Alpha  : out Color)
   is
      R, G, B, A : aliased SDL.Types.Uint8;
   begin
      SDL.Video.GetRGBA ( Pixel  => SDL.Types.Uint32 (Item),
                          Fmt => Using.Item,
                          R      => R'Unchecked_Access,
                          G      => G'Unchecked_Access,
                          B      => B'Unchecked_Access,
                          A      => A'Unchecked_Access);

      Red   := Color (R);
      Green := Color (G);
      Blue  := Color (B);
      Alpha := Color (A);
   end To_Colors;

   -------------------
   -- To_Coordinate --
   -------------------

   function To_Coordinate
     (Within : Rectangle;
      X      : AdaSDL.Integer;
      Y      : AdaSDL.Integer)
      return Screen_Coordinate
   is
      X_Range  : constant Ranges.Static
               := AdaSDL.X (Within);
      X_Bound  : constant Ranges.Static
               := X_Range (X_Range'First..X);
      Y_Range  : constant Ranges.Static
               := AdaSDL.Y (Within);
      Y_Bound  : constant Ranges.Static
               := Y_Range (Y_Range'First..(Y-1));
   begin

      return Screen_Coordinate
        ((Y_Range'Length * Y_Bound'Length) + X_Bound'Length);
   end To_Coordinate;

   ------------------------
   -- To_Palette_Provide --
   ------------------------

   function To_Palette_Provider (Item : Surface) return Palette_Provider is
   begin
      return (Item => Item.Item.all.Format);
   end To_Palette_Provider;


end AdaSDL.Video.Pixels;

