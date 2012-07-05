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

with AdaSDL;
with Brick_Events;

with Ada.Numerics.Generic_Elementary_Functions;

package Game_Engine is

   -- The game resolution
   Screen_Width  : constant := 640;
   Screen_Height : constant := 480;

   -- Global game information.  Used as a communication method
   -- between the game engine and the input handler.
   protected type Game_Information is
      procedure Mouse_To (X  : AdaSDL.Scalar);
      function  Mouse_At return AdaSDL.Scalar;

      procedure Pause;
      function  Paused   return Boolean;

      procedure Speedup;
      procedure Slowdown;

      function  Speed_Multiplier return Float;

   private
      Mouse         : AdaSDL.Scalar := AdaSDL."/"(Screen_Width, 2);
      Pause_Started : Boolean       := False;
      Speed         : Float         := 1.0;
   end Game_Information;

   Game : Game_Information;

   -- The game engine.
   task Engine is
      entry Start;
      entry Shutdown;
   end Engine;

private

   -- Packages used by the game engine.

   package Physics is

      ---------------------------------------------------------------
      -- Name : Game_Engine.Physics                                --
      ---------------------------------------------------------------
      -- Purpose : The provide the logic and data types to         --
      --           represent moving objects and detect collisions  --
      ---------------------------------------------------------------

      -- The base accuracy
      type Float is digits 18;

      -- For proportions.  Used for the normalized deflection vector.
      type Proportion is digits 18 range -1.0..1.0;

      -- The general float type.
      type FScalar is new Physics.Float;

      package Math is new Ada.Numerics.Generic_Elementary_Functions(FScalar);

      -- The coordinate system in float.
      -- The engine will have to translate this coordinates into
      -- discrete numbers.
      type X_Coordinate is new Physics.Float;
      type Y_Coordinate is new Physics.Float;

      -- Speed relative to the screen and time.
      -- This allows the engine to move objects according to the time
      -- elasped between frames to alleviate the ball moving at different
      -- on different hardware.
      type Widths_Per_Second is new Physics.Float;
      type Heights_Per_Second is new Physics.Float;

      -- The follow function allow for calculations about time and
      -- distance to be simplified.
      function To_X_Coordinate (Item : Widths_Per_Second; Time : Duration)
                               return X_Coordinate;

      function To_Y_Coordinate (Item : Heights_Per_Second; Time : Duration)
                               return Y_Coordinate;

      function To_Duration     (Item : Widths_Per_Second; Width : X_Coordinate)
                               return Duration;

      function To_Duration     (Item   : Heights_Per_Second;
                                Height : Y_Coordinate) return Duration;


      -- A point in space.
      type Point is record
         X : X_Coordinate;
         Y : Y_Coordinate;
      end record;

      -- Works like vector addition
      function "+"(Left, Right : Point) return Point;
      function "-"(Left, Right : Point) return Point;

      -- An velocity vector
      type Vector is record
         X : Widths_Per_Second;
         Y : Heights_Per_Second;
      end record;

      function "+"(Left, Right : Vector) return Vector;
      function "-"(Left, Right : Vector) return Vector;

      -- Return the point offset for a vector method of a given time.
      function To_Point (Item : Vector; Time : Duration) return Point;

      -- The ball is a location, velocity and a size
      type Ball is record
         Location  : Point;
         Direction : Vector;
         Radius    : FScalar;
      end record;

      -- For debugging purposes
      Function Image(Item : Ball) return String;

      -- For the game engine to flatten the ball onto the screen
      -- surface coordinates
      function To_X_Coordinate  (Item : Ball) return X_Coordinate;
      function To_Y_Coordinate  (Item : Ball) return Y_Coordinate;

      -- Function that detect where and if the ball will collide
      -- with a given vertical wall.
      procedure Vertical_Collide (Item   : Ball;
                                  Over   : Duration;
                                  Base   : Point;
                                  Height : FScalar;
                                  Hit    : out Boolean;
                                  During : out Duration);

      -- Function that detect where and if the ball will collide
      -- with a given horizontal wall.
      procedure Horizontal_Collide (Item   : Ball;
                                    Over   : Duration;
                                    Base   : Point;
                                    Width  : FScalar;
                                    Hit    : out Boolean;
                                    During : out Duration);

      -- Function that detect where and if the ball will collide
      -- with a given point in a wall.  Used for extruding wall corners.
      -- The deflection is a noramlized vector pointing from the
      -- point to the center of the ball.
      procedure Point_Collide      (Item         : Ball;
                                    Over         : Duration;
                                    Base         : Point;
                                    Hit          : out Boolean;
                                    During       : out Duration;
                                    X_Deflection : out Proportion;
                                    Y_Deflection : out Proportion);

      -- Takes a ball vector and a point deflection vector and
      -- return the vector that the ball will be going after the
      -- deflection.
      function  Deflect (Item : Vector;
                         X_Deflection : Proportion;
                         Y_Deflection : Proportion) return Vector;

      function  Scale   (Item, By : Vector; Factor : FScalar) return Vector;
      -- Makes |Item| equal |By| and then Item * Factor

   end Physics;

   generic
      -- The default ball starting point
      Start        : Physics.Ball;
      -- The default paddle starting point
      Paddle_Start : AdaSDL.Scalar;
      -- Paddle attributes
      Paddle_Width : AdaSDL.SCalar;
      Paddle_Height: AdaSDL.Scalar;
      -- Sound functions.
      with procedure Play_Wall_Hit;
      with procedure Play_Paddle_Hit;
      with procedure Play_Brick_Hit;
   package Game_Environment is

      -----------------------------------------------------------------
      -- Name : Game_Engine.Game_Environment                         --
      -----------------------------------------------------------------
      -- Purpose : To setup and play a game.                         --
      -----------------------------------------------------------------

      -- Types for brick coordinates.  The To_Scalar functions allow the
      -- engine to get the upper right hand coordinate for the brick.
      type Brick_X is range 0..15;

      function To_Scalar (Item : Brick_X) return AdaSDL.Scalar;

      type Brick_Y is range 0..19;

      function To_Scalar (Item : Brick_Y) return AdaSDL.Scalar;

      -- Calculate all object movement over the given duration.
      procedure Update (Over : Duration);

      -- Current Dall coordinates (for blting)
      function  Ball_X return AdaSDL.Scalar;
      function  Ball_Y return AdaSDL.Scalar;

      -- Current Paddle coordinates (for blting)
      function  Paddle_X return AdaSDL.Scalar;
      function  Paddle_Y return AdaSDL.Scalar;

      -- Is the a brick at this coordinate
      function  Brick_At (X : Brick_X; Y : Brick_Y) return Boolean;

   end Game_Environment;

end Game_Engine;
