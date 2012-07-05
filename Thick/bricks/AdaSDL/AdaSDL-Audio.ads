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
with Interfaces.C;


package AdaSDL.Audio is

   procedure Initialize;
   -----------------------------------------------------------------
   -- Initialize Sound subsystem.                                 --
   -----------------------------------------------------------------

   procedure Finalize;
   -----------------------------------------------------------------
   -- Shutdown the sound subsystem                                --
   -----------------------------------------------------------------

   type Frequency is range 0..(2**16)-1;
   -- Sound Frequency

   Game_Quality : constant Frequency := 22050;
   CD_Quality   : constant Frequency := 44100;

   type Format    is (Unsigned_8, Signed_8, Unsigned_16, Signed_16);
   -- Sound Format

   type Output    is (Mono, Stereo);
   -- Speaker Output

   type Sample    is range 0..(2**16)-1;
   -- Sound Data Sample Rate
   Fast_Response   : constant Sample := 512;
   Normal_Response : constant Sample := 4096;

   procedure Open ( Hertz    : Frequency := Game_Quality;
                    Encoding : Format    := Signed_16;
                    Speakers : Output    := Stereo;
                    Samples  : Sample    := Normal_Response
                  );
   -- Setup sound device for playback

   procedure Close;
   -- Closes sound device


   type Channel is private;
   -- A reserved channel to play sounds on.

   type Volume is delta 0.0001 digits 5 range 0.0..1.0;
   -- 0 is silence 1 is full.

private

   type Channels is range 0..(2**16)-1;

   subtype Channel_Number is Channels range 0..(2**16)-1;

   procedure Get_Free_Channel_Number (Item : out Channel_Number);

   procedure Free_Channel_Number     (Item : Channel_Number);

   type Channel is new Ada.Finalization.Controlled with record
      Number : Channel_Number;
   end record;

   procedure Initialize       (Object : in out Channel);
   procedure Adjust           (Object : in out Channel);
   procedure Finalize         (Object : in out Channel);

   function To_Volume (Item : AdaSDL.Scalar) return Volume;
   function To_Scalar (Item : Volume) return AdaSDL.Scalar;

   -------------------------------------------
   -- Temp thin binding for callback        --
   -------------------------------------------

   use Interfaces.C;

   type Channel_Done is access procedure (Chan : Int);
   pragma Convention(C,Channel_Done);

   procedure When_Channel_Finished (Call : Channel_Done);
   pragma Import(C, When_Channel_Finished, "Mix_ChannelFinished");


   procedure UnReg (Chan : Int);
   pragma Convention(C,UnReg);


end AdaSDL.Audio;
