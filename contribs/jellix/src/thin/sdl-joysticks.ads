--  Ada binding to SDL (http://www.libsdl.org), joystick handling
--  subroutines.
--  Copyright (C) 2012, Vinzent Hoefler
--
--  This program is free software: you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation, either version 3 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful, but
--  WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
--  General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program.  If not, see <http://www.gnu.org/licenses/>.

with System;

package SDL.Joysticks is

   type Joystick is private;

   type Stick_Count  is new Int;
   type Axes_Count   is new Int;
   type Ball_Count   is new Int;
   type Hat_Count    is new Int;
   type Button_Count is new Int;

   type Button_State is (Released, Pressed);
   for Button_State'Size use UInt8'Size;
   for Button_State use (Released => 0,
                         Pressed  => 1);

   type Hat_Flags is new UInt8;

   --  Technically, a hat has four switches with each switch assigned a
   --  particular bit.
   HAT_CENTERED : constant Hat_Flags := 2#0000_0000#;
   HAT_UP       : constant Hat_Flags := 2#0000_0001#;
   HAT_RIGHT    : constant Hat_Flags := 2#0000_0010#;
   HAT_DOWN     : constant Hat_Flags := 2#0000_0100#;
   HAT_LEFT     : constant Hat_Flags := 2#0000_1000#;

   --  The most common combinations of switches.
   HAT_RIGHT_UP   : constant Hat_Flags := HAT_RIGHT or HAT_UP;
   HAT_RIGHT_DOWN : constant Hat_Flags := HAT_RIGHT or HAT_DOWN;
   HAT_LEFT_UP    : constant Hat_Flags := HAT_LEFT  or HAT_UP;
   HAT_LEFT_DOWN  : constant Hat_Flags := HAT_LEFT  or HAT_DOWN;

   ---------------------------------------------------------------------
   --  Enumerate
   --
   --  Count available joysticks.
   --
   --  Counts the number of joysticks attached to the system.
   --
   --  Returns the number of attached joysticks
   ---------------------------------------------------------------------
   function Enumerate return Stick_Count;

   ---------------------------------------------------------------------
   --  Name
   --
   --  Get joystick name.
   --
   --  Get the implementation dependent name of joystick. The Index
   --  parameter refers to the N'th joystick on the system.
   ---------------------------------------------------------------------
   function Name (Which : in Stick_Count) return String;

   ---------------------------------------------------------------------
   --  Open
   --
   --  Opens a joystick for use within SDL.
   --
   --  The Index refers to the N'th joystick in the system. A joystick
   --  must be opened before it can be used.
   --
   --  Returns a Joystick structure on success.
   --  (FIXME : NULL on failure.)
   ---------------------------------------------------------------------
   function Open (Which : in Stick_Count) return Joystick;

   ---------------------------------------------------------------------
   --  Opened
   --
   --  Determine if a joystick has been opened.
   --
   --  Determines whether a joystick has already been opened within the
   --  application. Index refers to the N'th joystick on the system.
   --
   --  Returns True if the joystick has been opened, or False if it has
   --  not.
   ---------------------------------------------------------------------
   function Opened (Which : in Stick_Count) return Bool;

   ---------------------------------------------------------------------
   --  Index
   ---------------------------------------------------------------------
   function Index (JS : in Joystick) return Stick_Count;

   ---------------------------------------------------------------------
   --  Num_Axes
   --
   --  Returns the number of axes available from a previously opened
   --  Joystick.
   ---------------------------------------------------------------------
   function Num_Axes (JS : in Joystick) return Axes_Count;

   ---------------------------------------------------------------------
   --  Num_Balls
   --
   --  Return the number of trackballs available from a previously
   --  opened Joystick.
   ---------------------------------------------------------------------
   function Num_Balls (JS : in Joystick) return Ball_Count;

   ---------------------------------------------------------------------
   --  Num_Hats
   --
   --  Return the number of hats available from a previously opened
   --  Joystick.
   ---------------------------------------------------------------------
   function Num_Hats (JS : in Joystick) return Hat_Count;

   ---------------------------------------------------------------------
   --  Num_Hats
   --
   --  Return the number of buttons available from a previously opened
   --  Joystick.
   ---------------------------------------------------------------------
   function Num_Buttons (JS : in Joystick) return Button_Count;

   ---------------------------------------------------------------------
   --  Update
   --
   --  Updates the state(position, buttons, etc.) of all open joysticks.
   --  If joystick events have been enabled then this is called
   --  automatically in the event loop.
   ---------------------------------------------------------------------
   procedure Update;

   ---------------------------------------------------------------------
   --  Get_Axis
   --
   --  Get the current state of an axis.
   --
   --  Get_Axis returns the current state of the given axis on the given
   --  joystick.
   --
   --  On most modern joysticks the X axis is usually represented by
   --  axis 0 and the Y axis by axis 1. The value returned by Get_Axis
   --  is a signed integer (-32_768 to 32_767) representing the current
   --  position of the axis, it maybe necessary to impose certain
   --  tolerances on these values to account for jitter. It is worth
   --  noting that some joysticks use axes 2 and 3 for extra buttons.
   --
   --  Returns a 16-bit signed integer representing the current position
   --  of the axis.
   ---------------------------------------------------------------------
   function Get_Axis (JS   : in Joystick;
                      Axis : in Axes_Count) return SInt16;

   ---------------------------------------------------------------------
   --  Get_Hat
   --
   --  Get_Hat returns the current state of the given hat on the given
   --  joystick.
   --
   --  The current state is returned as the or'd combination of the
   --  HAT_xxx constant.
   ---------------------------------------------------------------------
   function Get_Hat (JS  : in Joystick;
                     Hat : in Hat_Count) return Hat_Flags;

   ---------------------------------------------------------------------
   --  Get_Button
   --
   --  Get_Button returns the current state of the given button on the
   --  given joystick.
   ---------------------------------------------------------------------
   function Get_Button (JS     : in Joystick;
                        Button : in Button_Count) return Button_State;

   ---------------------------------------------------------------------
   --  Get_Ball
   --
   --  Get the ball axis change.
   --
   --  Trackballs can only return relative motion since the last call to
   --  Get_Ball, these motion deltas a placed into dx and dy.
   --
   --  FIXME: Return code of original C function not evaluated (but
   --         well, what for?).
   ---------------------------------------------------------------------
   procedure Get_Ball (JS      : in     Joystick;
                       Ball    : in     Button_Count;
                       Delta_X :    out Int;
                       Delta_Y :    out Int);

   ---------------------------------------------------------------------
   --  Close
   --
   --  Close a joystick that was previously opened with Open.
   ---------------------------------------------------------------------
   procedure Close (JS : in Joystick);

private

   type Joystick is new System.Address;

   pragma Import (Convention    => C,
                  Entity        => Close,
                  External_Name => "SDL_JoystickClose");

   pragma Import (Convention    => C,
                  Entity        => Enumerate,
                  External_Name => "SDL_NumJoysticks");

   pragma Import (Convention    => C,
                  Entity        => Get_Axis,
                  External_Name => "SDL_JoystickGetAxis");

   pragma Import (Convention    => C,
                  Entity        => Get_Ball,
                  External_Name => "SDL_JoystickGetBall");

   pragma Import (Convention    => C,
                  Entity        => Get_Button,
                  External_Name => "SDL_JoystickGetButton");

   pragma Import (Convention    => C,
                  Entity        => Get_Hat,
                  External_Name => "SDL_JoystickGetHat");

   pragma Import (Convention    => C,
                  Entity        => Index,
                  External_Name => "SDL_JoystickIndex");

   pragma Import (Convention    => C,
                  Entity        => Open,
                  External_Name => "SDL_JoystickOpen");

   pragma Import (Convention    => C,
                  Entity        => Opened,
                  External_Name => "SDL_JoystickOpened");

   pragma Import (Convention    => C,
                  Entity        => Num_Axes,
                  External_Name => "SDL_JoystickNumAxes");

   pragma Import (Convention    => C,
                  Entity        => Num_Balls,
                  External_Name => "SDL_JoystickNumBalls");

   pragma Import (Convention    => C,
                  Entity        => Num_Buttons,
                  External_Name => "SDL_JoystickNumButtons");

   pragma Import (Convention    => C,
                  Entity        => Num_Hats,
                  External_Name => "SDL_JoystickNumHats");

   pragma Import (Convention    => C,
                  Entity        => Update,
                  External_Name => "SDL_JoystickUpdate");

end SDL.Joysticks;
