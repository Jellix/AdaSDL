------------------------------------------------------------------
--                Bricks by Chad R. Meiners                     --
--                Copyright (C) 2002 Chad R. Meiners            --
--                E-mail: crmeiners@hotmail.com                 --
--                (Spam filters are being used                  --
--                 make your subject line noticeable!)          --
------------------------------------------------------------------
-- I release this program as a example of the AdaSDL Thick      --
-- Binding.  I have developed this program incrementally, and   --
-- I intend to clean up the code and add more comments when     --
-- time permits.  The intention of this early release is to     --
-- encourage the usage of the the AdaSDL thick binding.         --
------------------------------------------------------------------
-- I have only compiled this program with GNAT 3.14p and 3.15p  --
-- on Windows 2000.  If you are able to compile and             --
-- successfully run this program on other platforms, I would    --
-- love to hear about it.                                       --
------------------------------------------------------------------
-- This program is free software; you can redistribute it       --
-- and/or modify it under the terms of the GNU General Public   --
-- License as published by the Free Software Foundation; either --
-- version 2 of the License, or (at your option) any later      --
-- version.                                                     --
--                                                              --
-- This program is distributed in the hope that it will be      --
-- useful, but WITHOUT ANY WARRANTY; without even the implied   --
-- warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      --
-- PURPOSE.  See the GNU General Public License for more        --
-- details.                                                     --
--                                                              --
-- You should have received a copy of the GNU General Public    --
-- License along with this program; if not, write to the Free   --
-- Software Foundation, Inc., 59 Temple Place, Suite 330,       --
-- Boston, MA  02111-1307  USA                                  --
------------------------------------------------------------------

with Ada.Text_IO;
use  Ada.Text_IO;

separate(Game_Engine)
package body Physics is

   type Sgn is range -1..1;

   function Sign (Item : Proportion) return Sgn is
   begin
      if Item < 0.0 then
         return -1;
      elsif Item > 0.0 then
         return 1;
      else
         return 0;
      end if;
   end Sign;

   function Sign (Item : Widths_Per_Second) return Sgn is
   begin
      if Item < 0.0 then
         return -1;
      elsif Item > 0.0 then
         return 1;
      else
         return 0;
      end if;
   end Sign;

   function Sign (Item : Heights_Per_Second) return Sgn is
   begin
      if Item < 0.0 then
         return -1;
      elsif Item > 0.0 then
         return 1;
      else
         return 0;
      end if;
   end Sign;


   function To_X_Coordinate (Item : Widths_Per_Second; Time : Duration)
                            return X_Coordinate is
   begin
      return X_Coordinate (Item * Widths_Per_Second (Time)) *
             X_Coordinate (Screen_Width);
   end To_X_Coordinate;

   function To_Y_Coordinate (Item : Heights_Per_Second; Time : Duration)
                            return Y_Coordinate is
   begin
      return Y_Coordinate (Item * Heights_Per_Second (Time)) *
             Y_Coordinate (Screen_Height);
   end To_Y_Coordinate;

   function To_Duration     (Item : Widths_Per_Second; Width : X_Coordinate)
                            return Duration is
   begin
      return Duration ( Widths_Per_Second (Width / X_Coordinate(Screen_Width))
                        / Item);
   end To_Duration;

   function To_Duration     (Item   : Heights_Per_Second;
                             Height : Y_Coordinate) return Duration is
   begin
      return Duration ( Heights_Per_Second
                          (Height / Y_Coordinate(Screen_Height))
                        / Item);
   end To_Duration;

   function "+"(Left, Right : Point) return Point is
   begin
      return (Left.X + Right.X,Left.Y + Right.Y);
   end "+";

   function "-"(Left, Right : Point) return Point is
   begin
      return (Left.X - Right.X,Left.Y - Right.Y);
   end "-";

   function "+"(Left, Right : Vector) return Vector is
   begin
      return (Left.X + Right.X,Left.Y + Right.Y);
   end "+";

   function "-"(Left, Right : Vector) return Vector is
   begin
      return (Left.X - Right.X,Left.Y - Right.Y);
   end "-";

   function To_Point (Item : Vector; Time : Duration) return Point is
   begin
      return (To_X_Coordinate (Item.X,Time),To_Y_Coordinate (Item.Y,Time));
   end To_Point;

   Function Image(Item : Ball) return String is
   begin
      return "((" & Item.Location.X'Img & "," & Item.Location.Y'Img & ")," &
        "(" & Item.Direction.X'Img & "," & Item.Direction.Y'Img & "))";
   end Image;


   function To_X_Coordinate  (Item : Ball) return X_Coordinate is
   begin
      return (Item.Location.X - X_Coordinate(Item.Radius));
   end To_X_Coordinate;

   function To_Y_Coordinate  (Item : Ball) return Y_Coordinate is
   begin
      return (Item.Location.Y - Y_Coordinate(Item.Radius));
   end To_Y_Coordinate;


   procedure Vertical_Collide (Item   : Ball;
                               Over   : Duration;
                               Base   : Point;
                               Height : FScalar;
                               Hit    : out Boolean;
                               During : out Duration) is

      function Same (Left : X_Coordinate; Right : Widths_Per_Second)
                    return Boolean is
      begin
         return (Left < 0.0) = (Right < 0.0);
      end Same;


      X_Intersect  : X_Coordinate;
      X_Difference : X_Coordinate;

      Y_Intersect  : Y_Coordinate;

   begin

      if Item.Direction.X = 0.0 then
         --Put_Line ("XZ");
         Hit := False;
         return;
      end if;

      if Base.X > Item.Location.X then
         if Item.Direction.X < 0.0 then
            --Put_Line ("<XZ");
            Hit := False;
            return;
         end if;
         X_Intersect  := Base.X - X_Coordinate(Item.Radius);
         X_Difference := (X_Intersect - Item.Location.X);
      else
         if Item.Direction.X > 0.0 then
            --Put_Line (">XZ");
            Hit := False;
            return;
         end if;
         X_Intersect := Base.X + X_Coordinate(Item.Radius);
         X_Difference := (X_Intersect - Item.Location.X);
      end if;

      --Put_Line ("(" & X_Intersect'Img & "," & X_Difference'Img & ")");

      if not Same(X_Difference,Item.Direction.X) then
         -- Ball going the wrong direction
         --Put_Line("WDX(" & X_Difference'Img & ","
         --         & Item.Direction.X'Img & ")");
         Hit := False;
         return;
      else
         --Put_Line("NWDX");
         During      := To_Duration (Item.Direction.X,X_Difference);

         if During > Over then
            --Put_Line("XD>O :" & During'Img & " : " & Over'Img);
            Hit := False;
            return;
         else
            Y_Intersect := Item.Location.Y +
              To_Y_Coordinate (Item.Direction.Y, During);
         end if;
      end if;

      declare
         Upper : constant Y_Coordinate := Base.Y + Y_Coordinate(Height);
      begin
         --Put_Line (Y_Coordinate'Image(Base.Y) &
         --          " <= " &
         --          Y_Coordinate'Image(Y_Intersect) &
         --          " <= " &
         --          Y_Coordinate'Image(Upper));

         Hit := (Base.Y <= Y_Intersect) and (Y_Intersect <= Upper);
      end;

   end Vertical_Collide;

   procedure Horizontal_Collide (Item   : Ball;
                                 Over   : Duration;
                                 Base   : Point;
                                 Width  : FScalar;
                                 Hit    : out Boolean;
                                 During : out Duration) is
      function Same (Left : Y_Coordinate; Right : Heights_Per_Second)
                    return Boolean is
      begin
         return (Left < 0.0) = (Right < 0.0);
      end Same;


      Y_Intersect  : Y_Coordinate;
      Y_Difference : Y_Coordinate;

      X_Intersect  : X_Coordinate;

   begin

      if Item.Direction.Y = 0.0 then
         --Put_Line ("YZ");
         Hit := False;
         return;
      end if;

      if Base.Y > Item.Location.Y then
         if Item.Direction.Y < 0.0 then
            --Put_Line ("<YZ");
            Hit := False;
            return;
         end if;
         Y_Intersect  := Base.Y - Y_Coordinate(Item.Radius);
         Y_Difference := (Y_Intersect - Item.Location.Y);
      else
         if Item.Direction.Y > 0.0 then
            --Put_Line (">YZ");
            Hit := False;
            return;
         end if;
         Y_Intersect := Base.Y + Y_Coordinate(Item.Radius);
         Y_Difference := (Y_Intersect - Item.Location.Y);
      end if;

      --Put_Line ("(" & Y_Intersect'Img & "," & Y_Difference'Img & ")");

      if not (Same(Y_Difference,Item.Direction.Y)) then
         -- Ball going the wrong direction
         --Put_Line("WDY(" & Y_Difference'Img & ","
         --         & Item.Direction.Y'Img & ")");
         Hit := False;
         return;
      else
         --Put_Line("NWDY");
         During      := To_Duration (Item.Direction.Y,Y_Difference);

         if During > Over then
            --Put_Line("YD>O :" & During'Img & " : " & Over'Img);
            Hit := False;
            return;
         else
            X_Intersect := Item.Location.X +
              To_X_Coordinate (Item.Direction.X, During);
         end if;
      end if;

      declare
         Upper : constant X_Coordinate := Base.X + X_Coordinate(Width);
      begin
         --Put_Line (X_Coordinate'Image(Base.X) &
         --          " <= " &
         --          X_Coordinate'Image(X_Intersect) &
         --          " <= " &
         --          X_Coordinate'Image(Upper));

         Hit := (Base.X <= X_Intersect) and (X_Intersect <= Upper);
      end;
   end Horizontal_Collide;

   procedure Point_Collide      (Item         : Ball;
                                    Over         : Duration;
                                    Base         : Point;
                                    Hit          : out Boolean;
                                    During       : out Duration;
                                    X_Deflection : out Proportion;
                                    Y_Deflection : out Proportion) is

      X_1, X_2 : X_Coordinate;
      Y_1, Y_2 : Y_Coordinate;

   begin

      X_1 := Item.Location.X;
      Y_1 := Item.Location.Y;
      X_2 := X_1 + To_X_Coordinate(Item.Direction.X,Over);
      Y_2 := Y_1 + To_Y_Coordinate(Item.Direction.Y,Over);

      declare

         -- Calculate intersection point

         A : constant FScalar := FScalar((X_2 - X_1)**2) +
                                 FScalar((Y_2 - Y_1)**2);

         B : constant FScalar := 2.0 * (
                                 FScalar((X_2 - X_1) * (X_1 - Base.X)) +
                                        FScalar((Y_2 - Y_1) * (Y_1 - Base.Y)));

         C : constant FScalar := FScalar(Base.X**2) +
                                 FScalar(Base.Y**2) +
                                 FScalar(X_1**2) +
                                 FScalar(Y_1**2) -
                                 (2.0 * (FScalar(Base.X * X_1) +
                                         FScalar(Base.Y * Y_1))) -
                                 Item.Radius ** 2;

         Result : constant FScalar := B**2 - (4.0 * A * C);
      begin

         if Result < 0.0 then
            -- Out of range
            Hit := False;
         elsif Result = 0.0 then
            -- In range and intersect at one point
            Hit    := True;
            During := Duration(-B / (2.0 * A));
         else
            declare
               -- Pure line intersect at two points
               D : constant FScalar := Math.Sqrt(Result);

               U1 : constant FScalar := (-B + D) / (2.0 * A);
               U2 : constant FScalar := (-B - D) / (2.0 * A);

               V1 : constant Boolean := U1 in 0.0..1.0;
               V2 : constant Boolean := U2 in 0.0..1.0;

            begin

               if not (V1 or V2) then
                  -- Both out of range
                  Hit := False;
               elsif (V1 and not V2) then
                  Hit    := True;
                  During := Duration(U1);
               elsif (V2 and not V1) then
                  Hit    := True;
                  During := Duration(U2);
               else
                  -- Take the closest
                  Hit    := True;
                  During := Duration(FScalar'Min(U1,U2));
               end if;

            end;
         end if;

         if Hit then

            During := During * Over;  -- During is a value range 0.0..1.0

            declare  -- Calculate deflection
               X_I : constant FScalar
                 := FScalar (X_1 + To_X_Coordinate(Item.Direction.X,During) -
                    Base.X);
               Y_I : constant FScalar
                 := FScalar (Y_1 + To_Y_Coordinate(Item.Direction.Y,During) -
                    Base.Y);

               X_D : constant FScalar
                 := X_I - FScalar (Base.X);

               Y_D : constant FScalar
                 := Y_I - FScalar (Base.Y);

               Normalizer : constant FScalar := Math.Sqrt(X_D**2 + Y_D**2);

            begin

               --Put_Line("During :" & During'Img);

               X_Deflection := Proportion(X_D / Normalizer);
               Y_Deflection := -Proportion(Y_D / Normalizer);

               --Put_Line ("Corner :" & X_Deflection'Img & ", " & Y_Deflection'Img);

               Hit := During > 0.0;

            end;
         end if;

      end;

   end Point_Collide;

   function  Deflect (Item : Vector;
                         X_Deflection : Proportion;
                         Y_Deflection : Proportion) return Vector is
       X_1 : constant FScalar := FScalar (Item.X);
       Y_1 : constant FScalar := FScalar (Item.Y);

       X_2 : constant FScalar := FScalar (X_Deflection);
       Y_2 : constant FScalar := FScalar (Y_Deflection);

       Dot_Product  : constant FScalar := 2.0 * ((X_1 * X_2) + (Y_1 * Y_2));

    begin
       return Vector'(X => Widths_Per_Second ( (X_2 * Dot_Product) - X_1),
                      Y => Heights_Per_Second ((Y_2 * Dot_Product) - Y_1)
                     );

    end Deflect;

    function  Scale   (Item, By : Vector; Factor : FScalar) return Vector is
       -- Makes |Item| equal |By| and then Item * Factor

       X_1 : constant FScalar := FScalar (Item.X);
       Y_1 : constant FScalar := FScalar (Item.Y);
       Norm_1 : constant FScalar := Math.Sqrt(X_1**2 + Y_1**2);

       X_2 : constant FScalar := FScalar (By.X);
       Y_2 : constant FScalar := FScalar (By.Y);
       Norm_2 : constant FScalar := Math.Sqrt(X_2**2 + Y_2**2);

       Ratio : constant FScalar := Factor * Norm_2 / Norm_1;

    begin
       return Vector'(X => Widths_Per_Second(X_1*Ratio),
                      Y => Heights_Per_Second(Y_1*Ratio));
    end Scale;


end Physics;


--       -- Break type information
--       Vx        : constant FScalar := FScalar (Item.X);
--       Vy        : constant FScalar := FScalar (Item.Y);

--       -- Rotate Deflection by 90 degrees to get impact wall
--       Deflect_X : constant FScalar := -FScalar (Y_Deflection);
--       Deflect_Y : constant FScalar :=  FScalar (X_Deflection);

--       -- Calculate Reflection Matrix constants
--       Tangent   : constant FScalar := (Deflect_Y / Deflect_X);
--       Tangent2  : constant FScalar := Tangent ** 2;

--       Reflect1  : constant FScalar := (1.0 - Tangent2) / (1.0 + Tangent2);
--       Reflect2  : constant FScalar := 2.0 * Tangent / (1.0 + Tangent2);

--       -- Calculate Matrix results

--       Ux        : constant FScalar := Reflect1 * VX + Reflect2 * Vy;
--       Uy        : constant FScalar := Reflect2 * VX - Reflect1 * Vy;

--    begin

--       return Vector'(Widths_Per_Second (Ux),Heights_Per_Second (Uy));

--       X_1 : constant FScalar := FScalar (Item.X);
--       Y_1 : constant FScalar := FScalar (Item.Y);

--       X_2 : constant FScalar := FScalar (X_Deflection);
--       Y_2 : constant FScalar := FScalar (Y_Deflection);

--       Dot_Product  : constant FScalar := 2.0 * ((X_1 * X_2) + (Y_1 * Y_2));

--    begin
--       return Vector'(X => Widths_Per_Second ( (X_2 * Dot_Product) - X_1),
--                      Y => Heights_Per_Second ((Y_2 * Dot_Product) - Y_1)
--                     );
