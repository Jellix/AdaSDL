with SDL.Video;
with SDL.Types;
with Interfaces.C;
with System.Address_To_Access_Conversions;

package body AdaSDL.Video.Drawing is

   use type Interfaces.C.Int;

   Error_Signal : Constant Interfaces.C.Int := -1;

   function To_Rect (Item : Rectangle) return SDL.Video.Rect is
   begin
      return (X => SDL.Types.Sint16(Left   (Item)),
               Y => SDL.Types.Sint16(Top    (Item)),
               W => SDL.Types.Uint16(Width  (Item)),
               H => SDL.Types.Uint16(Height (Item)));
   end To_Rect;
   pragma Inline(To_Rect);

   ------------
   -- BitBlt --
   ------------

   procedure BitBlt
     (Source, Destination : Surface;
      X, Y                : AdaSDL.Integer)
   is
      -- Source_Rectangle      : aliased SDL.Video.Rect;
      Destination_Rectangle : aliased SDL.Video.Rect
        := (X => SDL.Types.Sint16(X),
            Y => SDL.Types.Sint16(Y),
            W => 0, H => 0);

      Error_Code : Interfaces.C.Int
        := SDL.Video.BlitSurface ( Src      => Source.Item,
                                   Srcrect  => null,
                                   Dst      => Destination.Item,
                                   Dstrect  =>
                                     Destination_Rectangle'Unchecked_Access
                                  );

      use Interfaces.C;

   begin

      case Error_Code is
         when -1 =>
            raise BitBlt_Failure;
         when -2 =>
            raise Surface_Pixels_Lost;
         when others =>
            null;
      end case;

   end BitBlt;

   ------------
   -- BitBlt --
   ------------

   procedure BitBlt
     (Source, Destination : Surface;
      X, Y                : AdaSDL.Integer;
      Source_Clipping     : AdaSDL.Rectangle)
   is
      Source_Rectangle      : aliased SDL.Video.Rect
        := To_Rect (Source_Clipping);
      Destination_Rectangle : aliased SDL.Video.Rect
        := (X => SDL.Types.Sint16(X),
            Y => SDL.Types.Sint16(Y),
            W => 0, H => 0);

      Error_Code : Interfaces.C.Int
        := SDL.Video.BlitSurface ( Src      => Source.Item,
                                   Srcrect  =>
                                     Source_Rectangle'Unchecked_Access,
                                   Dst      => Destination.Item,
                                   Dstrect  =>
                                     Destination_Rectangle'Unchecked_Access
                                  );

      use Interfaces.C;

   begin

      case Error_Code is
         when -1 =>
            raise BitBlt_Failure;
         when -2 =>
            raise Surface_Pixels_Lost;
         when others =>
            null;
      end case;

   end BitBlt;

   ----------
   -- Clip --
   ----------

   function Clip (Item  : Surface) return AdaSDL.Rectangle is

      Temp : aliased SDL.Video.Rect;

   begin

      SDL.Video.GetClipRect ( Surface => Item.Item,
                              Prect   => Temp'Unchecked_Access
                            );

      declare
         Top    : constant AdaSDL.Integer := AdaSDL.Integer (Temp.X);
         Left   : constant AdaSDL.Integer := AdaSDL.Integer (Temp.Y);
         Bottom : constant AdaSDL.Integer := Top + AdaSDL.Integer (Temp.H);
         Right  : constant AdaSDL.Integer := Left + AdaSDL.Integer (Temp.W);
      begin
         return Define ( X => Ranges.Define(Left..Right),
                         Y => Ranges.Define(Top..Bottom));
      end;
   end Clip;

   -------------
   -- Refresh --
   -------------

   procedure Refresh (Item  : Surface) is
   begin
      SDL.Video.Flip (Item.Item);
   end Refresh;

   -------------
   -- Refresh --
   -------------

   procedure Refresh
     (Item  : Surface;
      Clip  : AdaSDL.Rectangle)
   is

   begin
      SDL.Video.UpdateRect ( Screen => Item.Item,
                             X      => SDL.Types.Sint32 (Left   (Clip)),
                             Y      => SDL.Types.Sint32 (Top    (Clip)),
                             w      => SDL.Types.uint32 (Width  (Clip)),
                             h      => SDL.Types.uint32 (Height (Clip)));
   end Refresh;

   -------------
   -- Refresh --
   -------------

   procedure Refresh
     (Item  : Surface;
      Clips : AdaSDL.Rectangles)
   is
      use Interfaces.C;

      Temp : SDL.Video.Rects_Array
        (Unsigned(Clips'First)..Unsigned(Clips'Last));

   begin
      for I in Temp'Range loop
         declare
            Clip : Rectangle renames Clips(AdaSDL.Positive(I));
         begin
            Temp(I) := To_Rect (Clip);
         end;
      end loop;

      SDL.Video.UpdateRects ( Screen    => Item.Item,
                              Numrects  => Temp'Length,
                              Rects     => Temp );

   end Refresh;

   ----------------
   -- Reset_Clip --
   ----------------

   procedure Reset_Clip (Item  : Surface) is
   begin
      SDL.Video.SetClipRect ( Surface => Item.Item,
                              Rect    => null );
   end Reset_Clip;

   --------------
   -- Set_Clip --
   --------------

   procedure Set_Clip (Item  : Surface; Clip : AdaSDL.Rectangle) is
   begin
      SDL.Video.SetClipRect ( Surface  => Item.Item,
                              The_Rect => To_Rect (Clip)
                            );
   end Set_Clip;

   procedure Flood      ( Item  : Surface;
                          Red   : AdaSDL.Video.Pixels.Color;
                          Green : AdaSDL.Video.Pixels.Color;
                          Blue  : AdaSDL.Video.Pixels.Color;
                          Alpha : AdaSDL.Video.Pixels.Color := 255) is
   begin

      SDL.Video.FillRect (Item.Item,
                          null,
                          SDL.Video.MapRGBA( Item.Item.Format,
                                             SDL.Types.Uint8 (Red),
                                             SDL.Types.Uint8 (Green),
                                             SDL.Types.Uint8 (Blue),
                                             SDL.Types.Uint8 (Alpha) ) );
   end Flood;

   procedure Flood      ( Item  : Surface;
                          Area  : AdaSDL.Rectangle;
                          Red   : AdaSDL.Video.Pixels.Color;
                          Green : AdaSDL.Video.Pixels.Color;
                          Blue  : AdaSDL.Video.Pixels.Color;
                          Alpha : AdaSDL.Video.Pixels.Color := 255 ) is

      Clip : aliased SDL.Video.RECT := To_Rect (Area);

   begin

      SDL.Video.FillRect (Item.Item,
                          Clip'Unchecked_Access,
                          SDL.Video.MapRGBA( Item.Item.Format,
                                             SDL.Types.Uint8 (Red),
                                             SDL.Types.Uint8 (Green),
                                             SDL.Types.Uint8 (Blue),
                                             SDL.Types.Uint8 (Alpha) ) );

   end Flood;

   use AdaSDL.Video.Pixels;

   package Eight    is new System.Address_To_Access_Conversions
     (Screen_Eight);
   package Fifteen  is new System.Address_To_Access_Conversions
     (Screen_Fifteen);
   package Sixteen  is new System.Address_To_Access_Conversions
     (Screen_Sixteen);
   package TwentyFour is new System.Address_To_Access_Conversions
     (Screen_TwentyFour);
   package ThirtyTwo is new System.Address_To_Access_Conversions
     (Screen_ThirtyTwo);

   procedure Draw (Item : Surface) is
      Locked : Boolean := SDL.Video.MustLock (Item.Item);

      Coords : Rectangle
        := Define ( X => Ranges.Define(1..AdaSDL.Integer(Item.Item.W)),
                    Y => Ranges.Define(1..AdaSDL.Integer(Item.Item.h)));

      use Interfaces.C;

      Array_Size : Screen_Coordinate
        := Screen_Coordinate (Item.Item.W * Item.Item.H);

   begin
      if Locked then
         Declare
            Error : Interfaces.C.Int := SDL.Video.LockSurface (Item.Item);
         begin
            if Error = Error_Signal then
               raise Surface_Cannot_Lock;
            end if;
         end;
      end if;

      Case Item.Item.Format.BitsperPixel is
         when 8 =>
            declare
               subtype Current_Screen is Screen_Eight(1..Array_Size);
               package Convert is new  System.Address_To_Access_Conversions
                 (Current_Screen);
            begin
               Eight_Bit_Draw
                 ( On => Convert.To_Pointer (Item.Item.Pixels).all,
                   Colors => To_Palette_Provider (Item),
                   Coordinates => Coords);
            end;
         when 15 =>
            declare
               subtype Current_Screen is Screen_Fifteen(1..Array_Size);
               package Convert is new  System.Address_To_Access_Conversions
                 (Current_Screen);
            begin
               Fifteen_Bit_Draw
                 ( On => Convert.To_Pointer (Item.Item.Pixels).all,
                   Colors => To_Palette_Provider (Item),
                   Coordinates => Coords);
            end;
         when 16 =>
            declare
               subtype Current_Screen is Screen_Sixteen(1..Array_Size);
               package Convert is new  System.Address_To_Access_Conversions
                 (Current_Screen);
            begin
               Sixteen_Bit_Draw
                 ( On => Convert.To_Pointer (Item.Item.Pixels).all,
                   Colors => To_Palette_Provider (Item),
                   Coordinates => Coords);
            end;
         when 24 =>
            declare
               subtype Current_Screen is Screen_TwentyFour(1..Array_Size);
               package Convert is new  System.Address_To_Access_Conversions
                 (Current_Screen);
            begin
               TwentyFour_Bit_Draw
                 ( On => Convert.To_Pointer (Item.Item.Pixels).all,
                   Colors => To_Palette_Provider (Item),
                   Coordinates => Coords);
            end;
         when 32 =>
            declare
               subtype Current_Screen is Screen_ThirtyTwo(1..Array_Size);
               package Convert is new  System.Address_To_Access_Conversions
                 (Current_Screen);
            begin
               ThirtyTwo_Bit_Draw
                 ( On => Convert.To_Pointer (Item.Item.Pixels).all,
                   Colors => To_Palette_Provider (Item),
                   Coordinates => Coords);
            end;
         when others =>
            null;
      end case;

      if Locked then
         SDL.Video.UnlockSurface (Item.Item);
      end if;
   exception
      when others =>
         if Locked then
            SDL.Video.UnlockSurface (Item.Item);
         end if;

         raise;
   end Draw;

end AdaSDL.Video.Drawing;

