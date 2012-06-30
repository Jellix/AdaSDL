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

with SDL;
with SDL.Error;
with Interfaces.C;

with Ada.Exceptions;

use type Interfaces.C.Int;

package body AdaSDL is

   Error_Signal : Constant Interfaces.C.Int := -1;

   --------------
   -- Finalize --
   --------------

   procedure Finalize is
   begin
      SDL.SDL_Quit;

      Initialized := False;
   end Finalize;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      if Initialized then
         return;  -- Do not need to initial the system.
      end if;

      -- Initialize bare system
      if SDL.Init ( 0 ) = Error_Signal then
         declare
            Error_Message : constant String := SDL.Error.Get_Error;
         begin

            SDL.Error.ClearError;

            Ada.Exceptions.Raise_Exception
              ( E       => SDL_Initialization_Failure'Identity,
                Message => Error_Message
              );
         end;
      else
         Initialized := True;
      end if;

   end Initialize;

   function  Define (X, Y : Ranges.Static) return Rectangle is
   begin
      return ( X => Ranges.To_Dynamic(X),
               Y => Ranges.To_Dynamic(Y));
   end Define;

   function  X      (Item : Rectangle)      return Ranges.Static is
   begin
      return Ranges.To_Static (Item.X);
   end X;

   function  Y      (Item : Rectangle)      return Ranges.Static is
   begin
      return Ranges.To_Static (Item.Y);
   end Y;

   function  Left   (Item : Rectangle)      return AdaSDL.Integer is
   begin
      return Ranges.To_Static (Item.X)'First;
   end Left;

   function  Right  (Item : Rectangle)      return AdaSDL.Integer is
   begin
      return Ranges.To_Static (Item.X)'Last;
   end Right;

   function  Top    (Item : Rectangle)      return AdaSDL.Integer is
   begin
      return Ranges.To_Static (Item.Y)'First;
   end Top;

   function  Bottom (Item : Rectangle)      return AdaSDL.Integer is
   begin
      return Ranges.To_Static (Item.Y)'Last;
   end Bottom;

   function  Width  (Item : Rectangle)      return AdaSDL.Scalar is
   begin
      return Ranges.To_Static (Item.X)'Length;
   end Width;

   function  Height (Item : Rectangle)      return AdaSDL.Scalar is
   begin
      return Ranges.To_Static (Item.Y)'Length;
   end Height;

   function  "="    (Left, Right : Rectangle) return Boolean is
      use type Ranges.Dynamic;
   begin
      return Left.X = Right.X and Left.Y = Right.Y;
   end "=";


   -----------------------
   -- Protected  types  --
   -----------------------

   protected Body Handle_Counter is

      procedure Increment is
      begin
         Count := Count + 1;
      end Increment;

      procedure Decrement (All_Out : out Boolean) is
      begin
         case Count is
            when 0 =>
               All_Out := True;
            when 1 =>
               All_Out := True;
               Count := 0;
            when others =>
               All_Out := False;
               Count := Count - 1;
         end case;
      end Decrement;

   end Handle_Counter;


   -----------------------
   --      End of       --
   -- Protected  types  --
   -----------------------


end AdaSDL;

