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
with AdaSDLRanges;

package AdaSDL is

   procedure Initialize;
   ---------------------------------------------------------------
   -- Initializes the basic SDL subsystems.                     --
   -- Other subsystems are Initialized in there respective      --
   -- child package                                             --
   ---------------------------------------------------------------

   procedure Finalize;
   ---------------------------------------------------------------
   -- Shutdown and frees resources for all SDL subsystems.      --
   ---------------------------------------------------------------

   SDL_Initialization_Failure : exception;

   Load_Error : exception;

   type    Number   is         range -(2**16)..(2**16)-1;

   subtype Integer  is AdaSDL.Number range -(2**15)..(2**15)-1;

   subtype Scalar   is AdaSDL.Number range 0..AdaSDL.Number'Last;

   subtype Positive is AdaSDL.Number range 1..AdaSDL.Number'Last;

   ----------------------------------------------------------------
   -- The above types are strictly define integer types for use  --
   -- within the graphics library.                               --
   ----------------------------------------------------------------

   package Ranges is new AdaSDLRanges.Instance (AdaSDL.Integer);
   ----------------------------------------------------------------
   -- For nice manipulations of ranges from Coordinate systems   --
   ----------------------------------------------------------------

   type    Rectangle is private;
   ----------------------------------------------------------------
   -- The rectangle type is used for various functions, but      --
   -- for coordinate system or screen size specifications.       --
   ----------------------------------------------------------------

   type    Rectangles is array(AdaSDL.Positive range <>) of Rectangle;

   function  Define (X, Y : Ranges.Static) return Rectangle;
   ----------------------------------------------------------------
   -- A rectangle is a composition of a X range and Y range.     --
   ----------------------------------------------------------------

   function  X      (Item : Rectangle)      return Ranges.Static;
   function  Y      (Item : Rectangle)      return Ranges.Static;

   function  Left   (Item : Rectangle)      return AdaSDL.Integer;
   function  Right  (Item : Rectangle)      return AdaSDL.Integer;
   function  Top    (Item : Rectangle)      return AdaSDL.Integer;
   function  Bottom (Item : Rectangle)      return AdaSDL.Integer;
   function  Width  (Item : Rectangle)      return AdaSDL.Scalar;
   function  Height (Item : Rectangle)      return AdaSDL.Scalar;

   function  "="    (Left, Right : Rectangle) return Boolean;

private

   Initialized : Boolean := False;
   -----------------------------------------------------
   -- Used by children to check initialization status --
   -----------------------------------------------------

   type Rectangle is record
      X : Ranges.Dynamic;
      Y : Ranges.Dynamic;
   end record;

   pragma Inline(Define);
   pragma Inline(X);
   pragma Inline(Left);
   pragma Inline(Top);
   pragma Inline(Right);
   pragma Inline(Bottom);
   pragma Inline(Width);
   pragma Inline(Height);
   pragma Inline("=");

   protected type Handle_Counter is
      procedure Increment;
      procedure Decrement (All_Out : out Boolean);
   private
      Count : Natural := 1;
   end Handle_Counter;

end AdaSDL;
