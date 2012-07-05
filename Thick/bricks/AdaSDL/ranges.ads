-----------------------------------------------------------------------------
--    Copyright (C) 2001 Chad R. Meiners <crmeiners@hotmail.com>            --
--                                       <cmeiners@adapower.net>            --
--                                                                          --
--   This package is free software; you can  redistribute it and/or modify  --
--   it  under terms of the GNU  General  Public License as published by    --
--   the Free Software Foundation; either version 2, or (at your option)    --
--   any later version.  This package is distributed  in the hope that it   --
--   will be useful, but WITHOUT ANY  WARRANTY; without even the implied    --
--   warranty of MERCHANTABILITY   or FITNESS FOR  A PARTICULAR PURPOSE.    --
--   See the GNU General Public  License  for more details.  You  should    --
--   have received a copy of the  GNU General Public License distributed    --
--   with this package; see  file COPYING. If  not,  write  to  the Free    --
--   Software  Foundation, 59   Temple Place -   Suite  330,  Boston, MA    --
--   02111-1307, USA.                                                       --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
------------------------------------------------------------------------------
package Ranges is

   ---------------------------------------------------------------
   -- This package provide a generic package this allows the    --
   -- programmer to create types that act like ranges.          --
   ---------------------------------------------------------------

   type Nothing      is null record;
   for  Nothing'Size use 0;

   ---------------------------------------------------------------
   -- Type    : Nothing                                         --
   ---------------------------------------------------------------
   -- Purpose : Place holder                                    --
   --         : Nothing is type designed to take up no memory   --
   --         : and to do nothing other than to allow arrays    --
   --         : to be declared in which the elements of the     --
   --         : array are not important but instead to the      --
   --         : important part of the array is its range.       --
   ---------------------------------------------------------------
   -- Usage   : Not meant to de used directly.  See how it is   --
   --         : used below.                                     --
   ---------------------------------------------------------------

   generic
      type Range_Bounds is (<>);
   package Instance is

      type Static is array (Range_Bounds range <>) of Nothing;

      ------------------------------------------------------------
      -- Type    : Static                                       --
      ------------------------------------------------------------
      -- Purpose : The provide the range attributes without     --
      --         : having to carry any extra semantic meaning.  --
      ------------------------------------------------------------
      -- Usage   : Use just like any other array.  The only     --
      --         : difference is that you do not have to worry  --
      --         : about the elements.                          --
      ------------------------------------------------------------

      type Dynamic is private;

      ------------------------------------------------------------
      -- Type    : Dynamic                                      --
      ------------------------------------------------------------
      -- Purpose : To allow ranges to be represented in an      --
      --         : modifiable form.                             --
      ------------------------------------------------------------
      -- Usage   : Use just like any other variable.            --
      ------------------------------------------------------------

      function To_Static  (Item : Dynamic) return Static;

      function To_Dynamic (Item : Static) return Dynamic;

      ------------------------------------------------------------
      -- Functions : To_Static, To_Dynamic                      --
      ------------------------------------------------------------
      -- Purpose   : To convert a Dynamic to a static and a     --
      --           : Static to a Dynamic.                       --
      ------------------------------------------------------------

      Define : Static (Range_Bounds);

      ------------------------------------------------------------
      -- Pseudo-Function : Define                               --
      ------------------------------------------------------------
      -- Purpose         : Convenience.                         --
      --                 : Allows ranges to be defined easily   --
      --                 : be using the appropriate array slice --
      --                 : of Define.                           --
      ------------------------------------------------------------

   private

      type Dynamic is record
         First : Range_Bounds;
         Last  : Range_Bounds;
      end record;

      pragma Inline (To_Static);
      pragma Inline (To_Dynamic);

   end Instance;

   ---------------------------------------------------------------
   -- Example of usage
   ---------------------------------------------------------------
   -- with Ranges;
   -- with Ada.Text_IO;
   --
   -- procedure Example is
   --
   --    -------------------------------------------------------------------
   --    -- This program displays with ranges sum up (under mod A_Mod) to --
   --    -- zero.                                                         --
   --    -------------------------------------------------------------------
   --
   --    A_Mod : constant := 13;
   --
   --    type My_Mod is mod A_Mod;
   --
   --    package Mod_Range is new Ranges.Instance(My_Mod);
   --
   --    function "="(Left : Mod_Range.Static; Right : My_Mod) return Boolean is
   --       Total : My_Mod := 0;
   --    begin
   --       -- Simple code to add up left
   --       --for I in Left'Range loop
   --       --   Total := Total + I;
   --       --end loop;
   --
   --
   --
   --        -- Fortunately since we all love math we realize that there is
   --        -- a much better way to add up the range.
   --        -- Note that for a given range in My_Mod that you may subtract
   --        -- Left'First from every Index which will result in the range
   --        -- being 0..Left'Length-1.  Thus, we now that the total is equal
   --        -- to (Left'First * Left'Length) + Sum(0..Left'Length-1).
   --        -- Remember that Sum(1 to n) = N*(N+1) / 2 so we know that
   --        -- the sum of Left'Range to the formula below.
   --
   --        if Left'First = 0 and Left'Last /= 0 then
   --           return Mod_Range.Define(1..Left'Last) = Right;
   --        else
   --          declare
   --              type     Big_Result is mod A_Mod**2;
   --              Length : Big_Result := Left'Length;
   --          begin
   --
   --              Total := (Left'First * My_Mod (Length mod A_Mod) ) +
   --                        My_Mod( (Length * (Length -1) / 2) mod A_Mod
   --                       );
   --          end;
   --        end if;
   --
   --        return Total = Right;
   --
   --    end "=";
   --
   --       Current_Range : Mod_Range.Dynamic := Mod_Range.To_Dynamic (Mod_Range.Define(0..0));
   --
   --    begin
   --
   --       loop
   --          declare
   --             Test_Range : Mod_Range.Static := Mod_Range.To_Static (Current_Range);
   --          begin
   --             if Test_Range = 0 then
   --                 Ada.Text_IO.Put_Line ("Sum(" &
   --                                       My_Mod'Image(Test_Range'First) &
   --                                       ".." &
   --                                       My_Mod'Image(Test_Range'Last) &
   --                                       ") mod" &
   --                                       Integer'Image(A_Mod) &
   --                                       " = 0"
   --                                      );
   --             end if;
   --
   --             if Test_Range'Last = My_Mod'Last then
   --
   --                 exit when Test_Range'First = My_Mod'Last;
   --
   --                 Current_Range := Mod_Range.To_Dynamic (Mod_Range.Define(Test_Range'First+1..Test_Range'First + 1));
   --
   --             else
   --
   --                 Current_Range := Mod_Range.To_Dynamic (Mod_Range.Define(Test_Range'First..Test_Range'Last + 1));
   --
   --             end if;
   --
   --         end ;
   --
   --    end loop;
   -- end Example;


end Ranges;



