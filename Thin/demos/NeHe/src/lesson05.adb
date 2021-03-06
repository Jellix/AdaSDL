---------------------------------------------------------
-- This is a port to AdaSDL of the Legacy NeHe Lessons
-- Author of the Port:
--     Antonio F. Vargas - Manhente - Barcelos - Portugal
--     mailto: amfvargas@gmail.com
--     http://adasdl.sourceforge.net
---------------------------------------------------------
--  Credits to previous authors:
--     The author of the NeHe Lessons and code written in C
--     (for Windows) was Jeff Molofee 1999. http://nehe.gamedev.net/
--
--     Then a port to C Linux/SDL was made by Ti Leggett 2001
--
--  ------------------------------------------------------
--                   AdaSDL specific notes:
--  ------------------------------------------------------
--  Command line options:
--      -info      Print GL implementation information
--                 (this is the original option).
--      -slow      To slow down velocity under accelerated
--                 hardware.
--      -fullscreen  GUI full screen. Window mode is the default.
--      -800x600   To create a video display of 800 by 600
--                 the default mode is 640x480
--      -1024x768  To create a video display of 1024 by 768
--  -----------------------------------------------------

with Interfaces.C;
with Ada.Numerics.Generic_Elementary_Functions;
with Ada.Command_Line;
with Ada.Text_IO; use Ada.Text_IO;
with GNAT.OS_Lib;
with SDL.Video;
with SDL.Error;
with SDL.Events;
with SDL.Keyboard;
with SDL.Keysym;
with SDL.Timer;
with SDL.Types; use SDL.Types;
with gl_h; use gl_h;
with glu_h; use glu_h;
with AdaGL; use AdaGL;
procedure Lesson05 is

   package CL renames Ada.Command_Line;
   package C  renames Interfaces.C;
   use type C.unsigned;
   use type C.int;
   use type C.double;
   use type SDL.Init_Flags;
   package Vd  renames SDL.Video;
   use type Vd.Surface_ptr;
   use type Vd.Surface_Flags;
   use type Vd.VideoInfo_ConstPtr;
   package Er  renames SDL.Error;
   package Ev  renames SDL.Events;
   package Kb  renames SDL.Keyboard;
   package Ks  renames SDL.Keysym;
   package Tm  renames SDL.Timer;
   use type Ks.SDLMod;

   --  ===================================================================

   screen : Vd.Surface_ptr;
   done   : Boolean;
   Screen_Width : C.int := 640;
   Screen_Hight : C.int := 480;

   Slowly      : Boolean := False;
   Info        : Boolean := False;
   Full_Screen : Boolean := False;
   argc        : Integer := CL.Argument_Count;
   Video_Flags : Vd.Surface_Flags := 0;
   Initialization_Flags : SDL.Init_Flags := 0;
   -- this holds some info about our display */
   Video_Info : Vd.VideoInfo_ConstPtr;

   -- NeHe variables
   -- rotational vars for the triangle and quad, respectively
   rtri: GLfloat := 0.0;
   rquad: GLfloat := 0.0;

   -- These are to calculate our fps
   T0: GLint := 0;
   Frames: GLint := 0;

   --  ===================================================================

   --  procedure to release/destroy our resources and restoring the old desktop
   procedure Quit (Return_Code : Integer) is
   begin
      SDL.SDL_Quit;
      Done := True;
      GNAT.OS_Lib.OS_Exit (Return_Code);
   end;

   --  ===================================================================
   procedure Init_GL (info : Boolean) is
   begin

    -- Enable smooth shading
    glShadeModel( GL_SMOOTH );

    -- Set the background black
    glClearColor( 0.0, 0.0, 0.0, 0.0 );

    -- Depth buffer setup
    glClearDepth( 1.0 );

    -- Enables Depth Testing
    glEnable( GL_DEPTH_TEST );

    -- The Type Of Depth Test To Do
    glDepthFunc( GL_LEQUAL );

    -- Really Nice Perspective Calculations
    glHint( GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST );

   end Init_GL;

   --  ===================================================================
   --  New window size of exposure
   procedure Resize_Window (width : C.int; height : C.int) is
      -- Height / width ration
      my_height: C.int:=height;
      ratio: GLdouble;
   begin
      -- Protect against a divide by zero
      if my_height = 0
      then
         my_height := 1;
      end if;

      ratio := GLdouble(width) / GLdouble(my_height);

      -- Setup our viewport.
      glViewport( 0, 0, GLsizei(width), GLsizei(my_height));

      -- change to the projection matrix and set our viewing volume.
      glMatrixMode( GL_PROJECTION );
      glLoadIdentity;

      -- Set our perspective
      gluPerspective( 45.0, ratio, 0.1, 100.0 );

      -- Make sure we're chaning the model view and not the projection
      glMatrixMode( GL_MODELVIEW );

      -- Reset The View
      glLoadIdentity;

   end Resize_Window;

   --  ===================================================================
   procedure Draw_Scene is
   begin

      glClear (GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT);

      -- Move Left 1.5 Units And Into The Screen 6.0
      glLoadIdentity;
      glTranslatef(-1.5,0.0,-6.0);

      -- Rotate The Triangle On The Y axis ( NEW )
      glRotatef( rtri, 0.0, 1.0, 0.0 );

      glBegin( GL_TRIANGLES );           -- Drawing Using Triangles
         glColor3f(   1.0,  0.0,  0.0 ); -- Red
         glVertex3f(  0.0,  1.0,  0.0 ); -- Top Of Triangle (Front)
         glColor3f(   0.0,  1.0,  0.0 ); -- Green
         glVertex3f( -1.0, -1.0,  1.0 ); -- Left Of Triangle (Front)
         glColor3f(   0.0,  0.0,  1.0 ); -- Blue
         glVertex3f(  1.0, -1.0,  1.0 ); -- Right Of Triangle (Front)

         glColor3f(   1.0,  0.0,  0.0 ); -- Red
         glVertex3f(  0.0,  1.0,  0.0 ); -- Top Of Triangle (Right)
         glColor3f(   0.0,  0.0,  1.0 ); -- Blue
         glVertex3f(  1.0, -1.0,  1.0 ); -- Left Of Triangle (Right)
         glColor3f(   0.0,  1.0,  0.0 ); -- Green
         glVertex3f(  1.0, -1.0, -1.0 ); -- Right Of Triangle (Right)

         glColor3f(   1.0,  0.0,  0.0 ); -- Red
         glVertex3f(  0.0,  1.0,  0.0 ); -- Top Of Triangle (Back)
         glColor3f(   0.0,  1.0,  0.0 ); -- Green
         glVertex3f(  1.0, -1.0, -1.0 ); -- Left Of Triangle (Back)
         glColor3f(   0.0,  0.0,  1.0 ); -- Blue
         glVertex3f( -1.0, -1.0, -1.0 ); -- Right Of Triangle (Back)

         glColor3f(   1.0,  0.0,  0.0 ); -- Red
         glVertex3f(  0.0,  1.0,  0.0 ); -- Top Of Triangle (Left)
         glColor3f(   0.0,  0.0,  1.0 ); -- Blue
         glVertex3f( -1.0, -1.0, -1.0 ); -- Left Of Triangle (Left)
         glColor3f(   0.0,  1.0,  0.0 ); -- Green
         glVertex3f( -1.0, -1.0,  1.0 ); -- Right Of Triangle (Left)
      glEnd;


      -- Move Right 3 Units
      glLoadIdentity;
      glTranslatef( 1.5, 0.0, -6.0 );

      -- Rotate The Quad On The X axis ( NEW )
      glRotatef( rquad, 1.0, 0.0, 0.0 );


      -- Set The Color To Blue One Time Only
      glColor3f( 0.5, 0.5, 1.0);

      glBegin( GL_QUADS );               -- Draw A Quad
         glColor3f(   0.0,  1.0,  0.0 ); -- Set The Color To Green
         glVertex3f(  1.0,  1.0, -1.0 ); -- Top Right Of The Quad (Top)
         glVertex3f( -1.0,  1.0, -1.0 ); -- Top Left Of The Quad (Top)
         glVertex3f( -1.0,  1.0,  1.0 ); -- Bottom Left Of The Quad (Top)
         glVertex3f(  1.0,  1.0,  1.0 ); -- Bottom Right Of The Quad (Top)

         glColor3f(   1.0,  0.5,  0.0 ); -- Set The Color To Orange
         glVertex3f(  1.0, -1.0,  1.0 ); -- Top Right Of The Quad (Botm)
         glVertex3f( -1.0, -1.0,  1.0 ); -- Top Left Of The Quad (Botm)
         glVertex3f( -1.0, -1.0, -1.0 ); -- Bottom Left Of The Quad (Botm)
         glVertex3f(  1.0, -1.0, -1.0 ); -- Bottom Right Of The Quad (Botm)

         glColor3f(   1.0,  0.0,  0.0 ); -- Set The Color To Red
         glVertex3f(  1.0,  1.0,  1.0 ); -- Top Right Of The Quad (Front)
         glVertex3f( -1.0,  1.0,  1.0 ); -- Top Left Of The Quad (Front)
         glVertex3f( -1.0, -1.0,  1.0 ); -- Bottom Left Of The Quad (Front)
         glVertex3f(  1.0, -1.0,  1.0 ); -- Bottom Right Of The Quad (Front)

         glColor3f(   1.0,  1.0,  0.0 ); -- Set The Color To Yellow
         glVertex3f(  1.0, -1.0, -1.0 ); -- Bottom Left Of The Quad (Back)
         glVertex3f( -1.0, -1.0, -1.0 ); -- Bottom Right Of The Quad (Back)
         glVertex3f( -1.0,  1.0, -1.0 ); -- Top Right Of The Quad (Back)
         glVertex3f(  1.0,  1.0, -1.0 ); -- Top Left Of The Quad (Back)

         glColor3f(   0.0,  0.0,  1.0 ); -- Set The Color To Blue
         glVertex3f( -1.0,  1.0,  1.0 ); -- Top Right Of The Quad (Left)
         glVertex3f( -1.0,  1.0, -1.0 ); -- Top Left Of The Quad (Left)
         glVertex3f( -1.0, -1.0, -1.0 ); -- Bottom Left Of The Quad (Left)
         glVertex3f( -1.0, -1.0,  1.0 ); -- Bottom Right Of The Quad (Left)

         glColor3f(   1.0,  0.0,  1.0 ); -- Set The Color To Violet
         glVertex3f(  1.0,  1.0, -1.0 ); -- Top Right Of The Quad (Right)
         glVertex3f(  1.0,  1.0,  1.0 ); -- Top Left Of The Quad (Right)
         glVertex3f(  1.0, -1.0,  1.0 ); -- Bottom Left Of The Quad (Right)
         glVertex3f(  1.0, -1.0, -1.0 ); -- Bottom Right Of The Quad (Right)
      glEnd;                             -- Done Drawing The Quad


      Vd.GL_SwapBuffers;

      -- Gather our frames per second */
      Frames := Frames + 1;
      declare
         t: GLint;
         seconds: GLfloat;
         fps: GLfloat;
      begin
         t := GLint(Tm.GetTicks);
         if t - T0 >= 5000
         then
            seconds := GLfloat(t - T0) / 1000.0;
            fps := GLfloat(Frames) / GLfloat(seconds);
            Put_Line(GLint'Image(Frames) & " frames in "
                     & GLfloat'Image(seconds) & " seconds = "
                     & GLfloat'Image(fps) & " FPS");
            T0 := t;
            Frames := 0;
         end if;
      end;

      -- Increase The Rotation Variable For The Triangle ( NEW )
      rtri  := rtri + 0.2;

      -- Decrease The Rotation Variable For The Quad     ( NEW )
      rquad := rquad - 0.15;

   end Draw_Scene;

   --  ===================================================================
   procedure Idle is
   begin
      null;
   end Idle;

   --  ===================================================================
   procedure Manage_Command_Line is
   begin
      while argc > 0 loop
         if (argc >= 1) and then CL.Argument (argc) = "-slow" then
            Slowly := True;
            argc := argc - 1;
         elsif CL.Argument (argc) = "-fullscreen" then
            Full_Screen := True;
            argc := argc - 1;
         elsif CL.Argument (argc) = "-1024x768" then
            Screen_Width := 1024;
            Screen_Hight :=  768;
            argc := argc - 1;
         elsif CL.Argument (argc) = "-800x600" then
            Screen_Width := 800;
            Screen_Hight := 600;
            argc := argc - 1;
         elsif CL.Argument (argc) = "-info" then
            Info := True;
            argc := argc - 1;
         else
            Put_Line ("Usage: " & CL.Command_Name & " " &
                      "[-slow] [-window] [-h] [[-800x600] | [-1024x768]]");
            argc := argc - 1;
            GNAT.OS_Lib.OS_Exit (0);
         end if;
      end loop;
   end Manage_Command_Line;

   --  ==========================================================

   -- function to handle key press events
   procedure Handle_Key_Press (keysym: in Kb.keysym) is
   begin
      case keysym.sym is
         when Ks.K_ESCAPE =>
            done := True;
         when Ks.K_F1 =>
            --  toggles fullscreen mode
            if Vd.WM_ToggleFullScreen( screen ) = 0 then
               Put_Line("Sorry: FullScreen not available!");
            end if;
         when others => null;
      end case;

      return;
   end;

   --  ===================================================================
   procedure Main_System_Loop is
   begin
      while not done loop
         declare
            event : Ev.Event;
            PollEvent_Result : C.int;
         begin
            Idle;
            loop
               Ev.PollEventVP (PollEvent_Result, event);
               exit when PollEvent_Result = 0;

               case event.the_type is
                  when Ev.VIDEORESIZE =>
                     screen := Vd.SetVideoMode (
                                  event.resize.w,
                                  event.resize.h,
                                  16,
                                  Vd.OPENGL or Vd.RESIZABLE);
                     if screen /= null then
                        Resize_Window (screen.w, screen.h);
                     else
                        --  Couldn't set the new video mode
                        null;
                     end if;
                  when Ev.KEYDOWN =>
                     --  handle key presses
                     Handle_Key_Press( event.key.keysym );
                  when Ev.QUIT =>
                     Quit(0);
                  when others => null;
               end case;
            end loop;

            Draw_Scene;
         end; -- declare
      end loop;
   end Main_System_Loop;

   --  ===================================================================
   --                         Lesson Procedure body
   --  ===================================================================
begin

   Manage_Command_Line;

   Initialization_Flags := SDL.INIT_VIDEO;

   if SDL.Init (Initialization_Flags) < 0 then
      Put_Line ("Couldn't load SDL: " & Er.Get_Error);
      GNAT.OS_Lib.OS_Exit (1);
   end if;

   Video_Flags :=
     Vd.OPENGL        --  Enable OpenGL in SDL
     or Vd.HWPALETTE  --  Store the palette in hardware
     or Vd.RESIZABLE; -- Enable window resizing

   -- Fetch the video info */
   Video_Info := Vd.GetVideoInfo;
   if (Video_Info.hw_available /= 0) then
      Video_Flags := Video_Flags or Vd.HWSURFACE;
   else
      Video_Flags := Video_Flags or Vd.SWSURFACE;
   end if;

    -- This checks if hardware blits can be done
   if Video_Info.blit_hw /= 0 then
      Video_Flags := Video_Flags or Vd.HWACCEL;
   end if;

   if Full_Screen then
         Video_Flags := Video_Flags or Vd.FULLSCREEN;
   end if;

   -- Sets up OpenGL double buffering
   Vd.GL_SetAttribute( Vd.GL_DOUBLEBUFFER, 1 );

   screen := Vd.SetVideoMode (Screen_Width, Screen_Hight, 16, Video_Flags);
   if screen = null then
      Put_Line ("Couldn't set " & C.int'Image (Screen_Width) & "x" &
                C.int'Image (Screen_Hight) & " GL video mode: " & Er.Get_Error);
      Quit(2);
   end if;

   Vd.WM_Set_Caption ("Generic GL canvas for NeHe", "Generic NeHe canvas");

   Init_GL (Info);

   Resize_Window (screen.w, screen.h);
   done := False;

   Main_System_Loop;

   Quit(0);
end Lesson05;
