--  Ada binding to SDL (http://www.libsdl.org), event handling related
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

with SDL.Joysticks,
     SDL.Keyboard;

package SDL.Events is

   type Type_Of_Event is (No_Event,
                          Active,            --  application loses/gains visibility
                          Key_Down,          --  keys pressed
                          Key_Up,            --  key released
                          Mouse_Motion,      --  mouse moved
                          Mouse_Button_Down, --  mouse button pressed
                          Mouse_Button_Up,   --  mouse button released
                          Joy_Axis,          --  joystick axis motion
                          Joy_Ball,          --  joystick trackball motion
                          Joy_Hat,           --  joystick hat position change
                          Joy_Button_Down,   --  joystick button pressed
                          Joy_Button_Up,     --  joystick button released
                          Quit,              --  user-requested quit
                          Sys_WM,            --  system specific event
                          Video_Resize,      --  user resized video mode
                          Video_Expose,      --  screen needs to be redrawn
                          User,              --  first user defined event
                          User_Last          --  last user defined event
                         );
   for Type_Of_Event'Size use UInt8'Size;
   for Type_Of_Event use (No_Event          =>  0,
                          Active            =>  1,
                          Key_Down          =>  2,
                          Key_Up            =>  3,
                          Mouse_Motion      =>  4,
                          Mouse_Button_Down =>  5,
                          Mouse_Button_Up   =>  6,
                          Joy_Axis          =>  7,
                          Joy_Ball          =>  8,
                          Joy_Hat           =>  9,
                          Joy_Button_Down   => 10,
                          Joy_Button_Up     => 11,
                          Quit              => 12,
                          Sys_WM            => 13,
                          --  Reserved_A => 14
                          --  Reserved_B => 15
                          Video_Resize      => 16,
                          Video_Expose      => 17,
                          --  Reserved_2 => 18
                          --  Reserved_3 => 19
                          --  Reserved_4 => 20
                          --  Reserved_5 => 21
                          --  Reserved_6 => 22
                          --  Reserved_7 => 23
                          User              => 24,
                          User_Last         => 31);

   type Event_Mask  is new UInt32;

   ACTIVE_EVENT_MASK      : constant Event_Mask := 16#0000_0001#;

   KEY_DOWN_MASK          : constant Event_Mask := 16#0000_0002#;
   KEY_UP_MASK            : constant Event_Mask := 16#0000_0004#;
   KEY_EVENT_MASK         : constant Event_Mask := KEY_DOWN_MASK or
                                                   KEY_UP_MASK;

   MOUSE_MOTION_MASK      : constant Event_Mask := 16#0000_0008#;
   MOUSE_BUTTON_DOWN_MASK : constant Event_Mask := 16#0000_0010#;
   MOUSE_BUTTON_UP_MASK   : constant Event_Mask := 16#0000_0020#;
   MOUSE_EVENT_MASK       : constant Event_Mask := MOUSE_MOTION_MASK      or
                                                   MOUSE_BUTTON_DOWN_MASK or
                                                   MOUSE_BUTTON_UP_MASK;

   JOY_AXIS_MOTION_MASK   : constant Event_Mask := 16#0000_0040#;
   JOY_BALL_MOTION_MASK   : constant Event_Mask := 16#0000_0080#;
   JOY_HAT_MOTION_MASK    : constant Event_Mask := 16#0000_0100#;
   JOY_BUTTON_DOWN_MASK   : constant Event_Mask := 16#0000_0200#;
   JOY_BUTTON_UP_MASK     : constant Event_Mask := 16#0000_0400#;
   JOY_EVENT_MASK         : constant Event_Mask := JOY_AXIS_MOTION_MASK or
                                                   JOY_BALL_MOTION_MASK or
                                                   JOY_HAT_MOTION_MASK  or
                                                   JOY_BUTTON_DOWN_MASK or
                                                   JOY_BUTTON_UP_MASK;

   QUIT_MASK              : constant Event_Mask := 16#0000_0800#;

   SYS_WM_EVENT_MASK      : constant Event_Mask := 16#0000_1000#;

   VIDEO_RESIZE_MASK      : constant Event_Mask := 16#0000_8000#;
   VIDEO_EXPOSE_MASK      : constant Event_Mask := 16#0001_0000#;

   ALL_EVENTS             : constant Event_Mask := 16#FFFF_FFFF#;

   type Focus_Flags is new UInt8;

   APP_MOUSE_FOCUS : constant Focus_Flags := 16#01#;
   APP_INPUT_FOCUS : constant Focus_Flags := 16#02#;
   APP_ACTIVE      : constant Focus_Flags := 16#04#;

   type State_Of_Event_In is (Query,
                              Ignore,
                              Enable);
   for State_Of_Event_In use (Query  => -1,
                              Ignore => 0,
                              Enable => 1);
   for State_Of_Event_In'Size use Int'Size;
   --  Provide a rename for the "Ignore" literal.
   function Disabled return State_Of_Event_In renames Ignore;

   type State_Of_Event_Out is new State_Of_Event_In;
   for State_Of_Event_Out'Size use UInt8'Size;
   --  Provide a rename for the "Ignore" literal.
   function Disabled return State_Of_Event_Out renames Ignore;

   type Active_Event is
      record
         --  Kind : UInt8
         Gained : Boolean;      --  Whether given states were gained or lost (1/0).
         State  : Focus_Flags;  --  A mask of the focus states
      end record;
   for Active_Event'Size use 16;
   for Active_Event use
      record
         Gained at 0 range 0 .. 7;
         State  at 1 range 0 .. 7;
      end record;

   type Keyboard_Event is
      record
         --  Kind : UInt8
         Which : UInt8;                --  keyboard device index
         State : Joysticks.Button_State;
         Key   : Keyboard.Key_Symbol;
      end record;
   for Keyboard_Event'Size use 136;
   for Keyboard_Event use
      record
         Which at 0 range 0 ..   7;
         State at 1 range 0 ..   7;
         Key   at 3 range 0 .. 111;
      end record;

   type Mouse_Motion_Event is
      record
         --  Kind : UInt8
         Which : UInt8;  --  mouse device index
         State : UInt8;  --  current button states (bit mask)
         X     : UInt16; --  X coordinate of mouse
         Y     : UInt16; --  Y coordinate of mouse
         X_Rel : SInt16; --  relative X-axis motion
         Y_Rel : SInt16; --  relative Y-axis motion
      end record;
   for Mouse_Motion_Event'Size use 88;
   for Mouse_Motion_Event use
      record
         Which at 0 range 0 ..  7;
         State at 1 range 0 ..  7;
         X     at 3 range 0 .. 15;
         Y     at 5 range 0 .. 15;
         X_Rel at 7 range 0 .. 15;
         Y_Rel at 9 range 0 .. 15;
      end record;

   type Mouse_Button_Event is
      record
         --  Kind : UInt8
         Which  : UInt8;  --  mouse device index
         Button : UInt8;  --  mouse button index
         State  : Joysticks.Button_State;
         X      : UInt16; --  X-position of mouse at press time
         Y      : UInt16; --  Y-position of mouse at press time
      end record;
   for Mouse_Button_Event'Size use 56;
   for Mouse_Button_Event use
      record
         Which  at 0 range 0 .. 7;
         Button at 1 range 0 .. 7;
         State  at 2 range 0 .. 7;
         X      at 3 range 0 .. 15;
         Y      at 5 range 0 .. 15;
      end record;

   type Joy_Axis_Event is
      record
         --  Kind : UInt8
         Which : UInt8;  --  joystick device index
         Axis  : UInt8;  --  joystick axis index
         Value : SInt16; --  axis value
      end record;
   for Joy_Axis_Event'Size use 40;
   for Joy_Axis_Event use
      record
         Which at 0 range 0 ..  7;
         Axis  at 1 range 0 ..  7;
         Value at 3 range 0 .. 15;
      end record;

   type Joy_Ball_Event is
      record
         --  Kind : UInt8
         Which : UInt8;  --  joystick device index
         Ball  : UInt8;  --  joystick ball index
         X_Rel : SInt16; --  relative X-axis motion
         Y_Rel : SInt16; --  relative Y-axis motion
      end record;
   for Joy_Ball_Event'Size use 56;
   for Joy_Ball_Event use
      record
         Which at 0 range 0 ..  7;
         Ball  at 1 range 0 ..  7;
         X_Rel at 3 range 0 .. 15;
         Y_Rel at 5 range 0 .. 15;
      end record;

   type Joy_Hat_Event is
      record
         --  Kind : UInt8
         Which : UInt8; --  joystick device index
         Hat   : UInt8; --  joystick hat index
         Value : Joysticks.Hat_Flags;
      end record;
   for Joy_Hat_Event'Size use 24;
   for Joy_Hat_Event use
     record
         Which at 0 range 0 .. 7;
         Hat   at 1 range 0 .. 7;
         Value at 2 range 0 .. 7;
      end record;

   type Joy_Button_Event is
      record
         --  Kind : UInt8
         Which  : UInt8; --  joystick device index
         Button : UInt8; --  joystick button index
         State  : Joysticks.Button_State;
      end record;
   for Joy_Button_Event'Size use 24;
   for Joy_Button_Event use
      record
         Which  at 0 range 0 .. 7;
         Button at 1 range 0 .. 7;
         State  at 2 range 0 .. 7;
      end record;

   type Sys_WM_Event is
      record
         --  Align 4
         Sys_WM_Msg : System.Address; --  TODO
      end record;
   for Sys_WM_Event'Size use 32;
   for Sys_WM_Event use
      record
         Sys_WM_Msg at 0 range 0 .. 31;
      end record;

   type Resize_Event is
      record
         --  Kind : UInt8
         Width  : Int;
         Height : Int;
      end record;
   for Resize_Event'Size use 64;
   for Resize_Event use
      record
         Width  at 0 range 0 .. 31;
         Height at 4 range 0 .. 31;
      end record;

   --  Event structure. In C, this is a Union, we try to map that union
   --  to a proper discriminated Ada record type.

   type Event (Kind : Type_Of_Event := No_Event) is
      record
         case Kind is
            when No_Event          => null;
            when Active            => Active    : Active_Event;
            when Key_Down |
                 Key_Up            => Keyboard  : Keyboard_Event;
            when Mouse_Motion      => MS_Motion : Mouse_Motion_Event;
            when Mouse_Button_Down |
                 Mouse_Button_Up   => MS_Button : Mouse_Button_Event;
            when Joy_Axis          => JS_Axis   : Joy_Axis_Event;
            when Joy_Ball          => JS_Ball   : Joy_Ball_Event;
            when Joy_Hat           => JS_Hat    : Joy_Hat_Event;
            when Joy_Button_Down |
                 Joy_Button_Up     => JS_Button : Joy_Button_Event;
            when Quit              => null; --  no further data
            when Sys_WM            => WM_Event  : Sys_WM_Event;
            when Video_Resize      => New_Size  : Resize_Event;
            when Video_Expose      => null; --  no further data
            when User .. User_Last => null; --  TODO
         end case;
      end record;
   for Event use
      record
         --  Discriminant
         Kind      at 0 range 0 ..   7;
         --  Overlapped records
         Active    at 1 range 0 ..  15;
         Keyboard  at 1 range 0 .. 135;
         MS_Motion at 1 range 0 ..  87;
         MS_Button at 1 range 0 ..  55;
         JS_Axis   at 1 range 0 ..  39;
         JS_Ball   at 1 range 0 ..  55;
         JS_Hat    at 1 range 0 ..  23;
         JS_Button at 1 range 0 ..  23;
         WM_Event  at 4 range 0 ..  31;
         New_Size  at 4 range 0 ..  63;
      end record;

   type Event_Array is array (Int range <>) of Event;
   pragma Convention (Convention => C,
                      Entity     => Event_Array);

   type Event_Action is (Add, Peek, Get);
   pragma Convention (Convention => C,
                      Entity     => Event_Action);

   type Event_Filter is access function (E : in Event) return Int;
   pragma Convention (Convention => C,
                      Entity     => Event_Filter);

   ---------------------------------------------------------------------
   --  Pump
   --
   --  Pumps the event loop, gathering events from the input devices.
   --
   --  This function updates the event queue and internal input device
   --  state. This should only be run in the thread that sets the video
   --  mode.
   ---------------------------------------------------------------------
   procedure Pump;

   ---------------------------------------------------------------------
   --  Wait
   --
   --  Waits indefinitely for the next available event.
   --
   --  The next event is removed from the queue and stored in E. If
   --  there was an error while waiting for events, E will contain
   --  No_Event.
   ---------------------------------------------------------------------
   procedure Wait (E : out Event);

   ---------------------------------------------------------------------
   --  Peep
   --
   --  Checks the event queue for messages and optionally returns them.
   --
   --  If Action is Add, up to Num_Events events will be added to the
   --  back of the event queue.
   --  If Action is Peek, up to Num_Events events at the front of the
   --  event queue, matching Mask, will be returned and will not be
   --  removed from the queue.
   --  If Action is Get, up to Num_Events events at the front of the
   --  event queue, matching Mask, will be returned and will be removed
   --  from the queue.
   --
   --  This procedure returns the number of events actually stored in
   --  Events_Available, it will store -1 if there was an error.
   --
   --  This function is thread-safe.
   ---------------------------------------------------------------------
   procedure Peep (Event_List       : in out Event_Array;
                   Action           : in     Event_Action;
                   Mask             : in     Event_Mask;
                   Events_Available :    out Int);

   ---------------------------------------------------------------------
   --  Poll
   --
   --  Polls for currently pending events.
   --
   --  If there are any pending events, the next event is removed from
   --  the queue and stored in E. If there are no pending events, E will
   --  contain No_Event then.
   ---------------------------------------------------------------------
   procedure Poll (E : out Event);

   ---------------------------------------------------------------------
   --  Push
   --
   --  Add an event to the event queue.
   --
   --  This function returns 0 on success, or -1 if the event queue was
   --  full or there was some other error.
   ---------------------------------------------------------------------
   function Push (E : in Event) return Int;

   ---------------------------------------------------------------------
   --  Set_Event_Filter
   --
   --  Sets up a filter to process all events before they are posted to
   --  the event queue.
   --
   --  This function sets up a filter to process all events before they
   --  are posted to the event queue. This is a very powerful and
   --  flexible feature.
   --
   --  If the filter returns 1, then the event will be added to the
   --  internal queue. If it returns 0, then the event will be dropped
   --  from the queue. This allows dynamically-selective filtering of
   --  events.
   --
   --  There is one caveat when dealing with the QUIT_EVENT event type.
   --  The event filter is only called when the window manager desires
   --  to close the application window. If the event filter returns 1,
   --  then the window will be closed, otherwise the window will remain
   --  open if possible. If the quit event is generated by an interrupt
   --  signal, it will bypass the internal queue and be delivered to the
   --  application at the next event poll.
   --
   --  Note: Events pushed onto the queue with Push or Peep do not get
   --        passed through the event filter.
   --  Note: Be Careful! The event filter function may run in a
   --        different thread so be careful what you do within it.
   ---------------------------------------------------------------------
   procedure Set_Event_Filter (Filter : in Event_Filter);

   ---------------------------------------------------------------------
   --  Get_Event_Filter
   --
   --  Retrieves a pointer to the event filter function.
   --
   --  This function retrieves a pointer to the event filter that was
   --  previously set using Set_Event_Filter or NULL if no filter has
   --  been set.
   ---------------------------------------------------------------------
   function Get_Event_Filter return Event_Filter;

   ---------------------------------------------------------------------
   --  Event_State
   --
   --  This function allows you to set the state of processing certain
   --  events.
   --
   --  If state is set to IGNORE, that event type will be automatically
   --  dropped from the event queue and will not be filtered.
   --
   --  If state is set to ENABLE, that event type will be processed
   --  normally.
   --
   --  If state is set to QUERY, Event_State will return the current
   --  processing state of the specified event type.
   --
   --  FIXME: Input is "int", output is "UInt8". Fucking moron.
   ---------------------------------------------------------------------
   function Event_State
     (Kind  : in Type_Of_Event;
      State : in State_Of_Event_In) return State_Of_Event_Out;

   --  Uint8 *SDL_GetKeyState(int *numkeys);

   ---------------------------------------------------------------------
   --  Get_Modifier_State
   --
   --  Get the state of modifier keys.
   --
   --  Returns the current state of the modifier keys (CTRL, ALT, etc.).
   --
   --  The return value is an OR'd combination of the
   --  Keyboard.Modifier_Flags constants.
   ---------------------------------------------------------------------
   function Get_Modifier_State return Keyboard.Modifier_Flags;

   ---------------------------------------------------------------------
   --  Set_Modifier_State
   --
   --  Set the current key modifier state.
   --
   --  The inverse of Get_Modifier_State, Set_Modifier_State allows you
   --  to impose modifier key states on your application.
   --
   --  Simply pass your desired modifier states into Mod_State. This
   --  value my be a logical OR'd combination of the
   --  Keyboard.Modifier_Flags constants.
   ---------------------------------------------------------------------
   procedure Set_Modifier_State
     (Modifiers : in Keyboard.Modifier_Flags);

   ---------------------------------------------------------------------
   --  Key_Name
   --
   --  Get the name of an SDL virtual keysym.
   --
   --  Returns the SDL-defined name of the key.
   ---------------------------------------------------------------------
   function Key_Name (K : in Keyboard.Key) return String;

   ---------------------------------------------------------------------
   --  Enable_UNICODE
   --
   --  Enable/disable unicode (UCS-2/Wide_Char) keyboard translation.
   --
   --  To obtain the character codes corresponding to received keyboard
   --  events, Unicode translation must first be turned on using this
   --  function. The translation incurs a slight overhead for each
   --  keyboard event and is therefore disabled by default. For each
   --  subsequently received key down event, the unicode member of the
   --  Key_Symbol structure will then contain the corresponding
   --  character code, or zero for key symbols that do not correspond to
   --  any character code.
   --
   --  Note: Only key press events will be translated, not release
   --        events.
   --
   --  Returns the previous translation mode.
   ---------------------------------------------------------------------
   function Enable_UNICODE
     (State : in Events.State_Of_Event_In) return Events.State_Of_Event_In;

   ---------------------------------------------------------------------
   --  Enable_Key_Repeat
   --
   --  Set keyboard repeat rate.
   --
   --  Enables or disables the keyboard repeat rate. Delay specifies how
   --  long the key must be pressed before it begins repeating, it then
   --  repeats at the speed specified by interval. Both delay and
   --  interval are expressed in milliseconds.
   --
   --  Setting delay to 0 disables key repeating completely. Good
   --  default values are DEFAULT_REPEAT_DELAY and
   --  DEFAULT_REPEAT_INTERVAL.
   --
   --  Returns 0 on success and -1 on failure.
   ---------------------------------------------------------------------
   function Enable_Key_Repeat (Delay_ms    : in Int;
                               Interval_ms : in Int) return Int;

   ---------------------------------------------------------------------
   --  Get_Mouse_State
   --
   --  Retrieve the current state of the mouse.
   --
   --  The current button state is returned as a button bitmask, and X
   --  and Y are set to the current mouse cursor position.
   --
   --  FIXME: Clean up interface.
   ---------------------------------------------------------------------
   function Get_Mouse_State (X : access Int;
                             Y : access Int) return UInt8;

   ---------------------------------------------------------------------
   --  Get_Relative_Mouse_State
   --
   --  Retrieve the current state of the mouse.
   --
   --  The current button state is returned as a button bitmask, and
   --  Delta_X and Delta_Y are set to the change in the mouse position
   --  since the last call to Get_Relative_Mouse_State or since event
   --  initialization.
   --
   --  FIXME: Clean up interface.
   ---------------------------------------------------------------------
   function Get_Relative_Mouse_State
     (Delta_X : access Int;
      Delta_Y : access Int) return UInt8;

   ---------------------------------------------------------------------
   --  Get_App_State
   --
   --  This function returns the current state of the application, which
   --  is a bitwise combination of APP_MOUSE_FOCUS, APP_INPUT_FOCUS, and
   --  APP_ACTIVE. If APP_ACTIVE is set, then the user is able to see
   --  your application, otherwise it has been iconified or disabled.
   ---------------------------------------------------------------------
   function Get_App_State return Focus_Flags;

   ---------------------------------------------------------------------
   --  Joystick_Event_State
   --
   --  Enable/disable joystick event polling.
   --
   --  This function is used to enable or disable joystick event
   --  processing. With joystick event processing disabled you will have
   --  to update joystick states with SDL.Joystick.Update and read the
   --  joystick information manually.
   --
   --  Note: Joystick event handling is prefered
   ---------------------------------------------------------------------
   function Joystick_Event_State
     (State : in State_Of_Event_In) return State_Of_Event_In;

private

   pragma Import (Convention    => C,
                  Entity        => Enable_Key_Repeat,
                  External_Name => "SDL_EnableKeyRepeat");

   pragma Import (Convention    => C,
                  Entity        => Enable_UNICODE,
                  External_Name => "SDL_EnableUNICODE");

   pragma Import (Convention    => C,
                  Entity        => Event_State,
                  External_Name => "SDL_EventState");

   pragma Import (Convention    => C,
                  Entity        => Get_App_State,
                  External_Name => "SDL_GetAppState");

   pragma Import (Convention    => C,
                  Entity        => Get_Event_Filter,
                  External_Name => "SDL_GetEventFilter");

   pragma Import (Convention    => C,
                  Entity        => Get_Mouse_State,
                  External_Name => "SDL_GetMouseState");

   pragma Import (Convention    => C,
                  Entity        => Get_Relative_Mouse_State,
                  External_Name => "SDL_GetRelativeMouseState");

   pragma Import (Convention    => C,
                  Entity        => Joystick_Event_State,
                  External_Name => "SDL_JoystickEventState");

   pragma Import (Convention    => C,
                  Entity        => Get_Modifier_State,
                  External_Name => "SDL_GetModState");

   pragma Import (Convention    => C,
                  Entity        => Pump,
                  External_Name => "SDL_PumpEvents");

   pragma Import (Convention    => C,
                  Entity        => Push,
                  External_Name => "SDL_PushEvent");

   pragma Import (Convention    => C,
                  Entity        => Set_Event_Filter,
                  External_Name => "SDL_SetEventFilter");

   pragma Import (Convention    => C,
                  Entity        => Set_Modifier_State,
                  External_Name => "SDL_SetModState");

end SDL.Events;
