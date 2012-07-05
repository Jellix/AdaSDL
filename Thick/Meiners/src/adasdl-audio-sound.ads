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

with Ada.Finalization;

package AdaSDL.Audio.Sound is

   Load_Error : exception renames AdaSDL.Load_Error;

   type Sound is private;
   ---------------------------
   -- sound data            --
   ---------------------------

   function Load (From_File : String) return Sound;
   ---------------------------
   -- load sound from file  --
   ---------------------------

   procedure Play (Item : Sound);
   ---------------------------
   -- play sound on a       --
   -- anonymous channel     --
   ---------------------------

   procedure Play (Item : Sound; On : Channel);
   ---------------------------
   -- play sound on a       --
   --           channel     --
   ---------------------------

   procedure Play (Item : Sound; Times : AdaSDL.Positive);
   ---------------------------
   -- play sound n times on --
   -- a anonymous channel   --
   ---------------------------

   procedure Play (Item : Sound; On : Channel; Times : AdaSDL.Positive);
   ---------------------------
   -- play sound n times on --
   -- a           channel   --
   ---------------------------

   procedure Stop (On : Channel);
   ---------------------------
   -- Stop channel playing  --
   ---------------------------

   function  Done (Item : Channel) return Boolean;
   ---------------------------
   -- Checks to see if a    --
   -- channel is see playing--
   ---------------------------

   function  Get  (Item : Channel) return Volume;
   ---------------------------
   -- Gets the channel's    --
   -- volume                --
   ---------------------------

   procedure Set_Volume (On : Channel; To : Volume);
   ---------------------------
   -- Sets the channel's    --
   -- volume                --
   ---------------------------

private

   type Sound_Type;

   type Sound_Ptr is access Sound_Type;

   type Sound is new Ada.Finalization.Controlled with record
      Handle  : Sound_Ptr;
   end record;

   procedure Initialize       (Object : in out Sound);
   procedure Adjust           (Object : in out Sound);
   procedure Finalize         (Object : in out Sound);

end AdaSDL.Audio.Sound;
