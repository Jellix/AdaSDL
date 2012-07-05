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

package body Ranges is

   --------------
   -- Instance --
   --------------

   package body Instance is

      ----------------
      -- To_Dynamic --
      ----------------

      function To_Dynamic (Item : Static) return Dynamic is
      begin
         return Dynamic'( First => Item'First,
                          Last  => Item'Last
                        );
      end To_Dynamic;

      ---------------
      -- To_Static --
      ---------------

      function To_Static (Item : Dynamic) return Static is

      begin
         return Define (Item.First..Item.Last);
      end To_Static;

   end Instance;

end Ranges;

