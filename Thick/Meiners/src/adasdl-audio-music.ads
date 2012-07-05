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

package AdaSDL.Audio.Music is

   Load_Error : exception renames AdaSDL.Load_Error;

   type Music is private;
   ----------------
   -- music data --
   ----------------

   function Load     (From_File : String) return Music;
   ----------------------------------
   -- load music data from file    --
   ----------------------------------

   procedure Play    (Item : Music);
   ---------------------------------
   -- play music forever          --
   ---------------------------------

   procedure Play    (Item : Music; Times : AdaSDL.Positive);
   ---------------------------------
   -- play music n times          --
   ---------------------------------

   procedure Fade_In (Item : Music; Over  : Duration);
   ---------------------------------
   -- play music forever and fade --
   -- it in over time             --
   ---------------------------------

   procedure Fade_In (Item : Music;
                      Times : AdaSDL.Positive := 1;
                      Over  : Duration);
   ---------------------------------
   -- play music n times and fade --
   -- it in over time             --
   ---------------------------------

   procedure Pause;
   ---------------------------------
   -- pause music                 --
   ---------------------------------

   procedure Resume;
   ---------------------------------
   -- resumed paused music        --
   ---------------------------------

   function  Is_Playing return Boolean;
   ---------------------------------
   -- Is song playing?            --
   ---------------------------------

   function  Is_Paused  return Boolean;
   ---------------------------------
   -- Is song paused?             --
   ---------------------------------

   procedure Stop;
   ---------------------------------
   -- Stop the music!             --
   ---------------------------------

   procedure Fade_Out (Over  : Duration);
   ---------------------------------
   -- Fade the music out over     --
   -- time                        --
   ---------------------------------

   function  Get return AdaSDL.Audio.Volume;

   procedure Set (Item : AdaSDL.Audio.Volume);

   ----------------------------------
   -- Tamper with the music volume --
   ----------------------------------

private

   type Music_Type;

   type Music_Ptr is access Music_Type;

   type Music is new Ada.Finalization.Controlled with record
      Handle  : Music_Ptr;
   end record;

   procedure Initialize       (Object : in out Music);
   procedure Adjust           (Object : in out Music);
   procedure Finalize         (Object : in out Music);

end AdaSDL.Audio.Music;
