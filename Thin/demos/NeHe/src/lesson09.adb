---------------------------------------------------------
-- This is a port to AdaSDL of the NeHe Lessons
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
with System.Address_To_Access_Conversions;
with Ada.Numerics.Generic_Elementary_Functions;
with Ada.Numerics.Discrete_Random;
with Ada.Command_Line;
with Ada.Text_IO; use Ada.Text_IO;
with GNAT.OS_Lib;
with SDL.Video;
with SDL.Error;
with SDL.Events;
with SDL.Keyboard;
with SDL.Keysym;
with SDL.Types; use SDL.Types;
with SDL.Timer;
with gl_h; use gl_h;
with glu_h; use glu_h;
with AdaGL; use AdaGL;

procedure Lesson09 is

   package CL renames Ada.Command_Line;
   package C  renames Interfaces.C;
   use type C.unsigned;
   use type C.int;
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

   type Star_Intensity_Type is mod 256;
   package Random_256 is
     new Ada.Numerics.Discrete_Random (Star_Intensity_Type);
   Random_256_Generator: Random_256.Generator;

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
   --  Number of stars
   Num_Stars : constant := 50;
   Twinkle_Stars : boolean := false;

   type Star_Type is
      record
         r,g,b : GLubyte; -- Stars color
         dist  : GLfloat; -- Stars Distance From Center
         angle : GLfloat; -- Stars Current Angle
      end record;

   -- Make an array of size 'NUM' of stars
   Stars : array (0 .. Num_Stars -1) of Star_Type;

   --  Viewing Distance Away From Stars
   Zoom : GLfloat := -15.0;

   --  Tilt The View
   Tilt: GLfloat := 90.0;

   --  General Loop Variable
   --  Looping : GLuint;

   --  Storage for one texture
   Texture: array (0..0) of aliased GLuint;

   Spin: GLfloat := 0.0;

   -- These are to calculate our fps
   T0: GLint := 0;
   Frames: GLint := 0;

    --  ===================================================================

   -- function to load in bitmap as a GL texture */
   function Load_Textures return boolean is
      -- Status indicator
      Status: boolean := false;

      -- Create storage space for the texture
      Texture_Image:  array (0..0) of Vd.Surface_ptr;

   begin

      --  Load The Bitmap, Check For Errors, If Bitmap's Not Found Quit
      Texture_Image(0) := Vd.LoadBMP( "data/star.bmp" );
      if  Texture_Image(0) /= Vd.null_Surface_ptr
      then
         --  Set the status to true
         Status := true;

         -- Create The Texture
         glGenTextures( 1, Texture(0)'access );

         -- Load in texture
         -- Typical Texture Generation Using Data From The Bitmap
         glBindTexture( GL_TEXTURE_2D, Texture(0) );

         -- Linear Filtering
         glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
         glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );

         declare
            subtype GLubytes_Type is GLubyte_Array
              (0 .. Integer(Texture_Image(0).w * Texture_Image(0).h -1));
            package GLubytes_Address is
              new System.Address_To_Access_Conversions(GLubytes_Type);
         begin
            --  Generate The Texture
            glTexImage2D( GL_TEXTURE_2D, 0, 3,
              GLsizei(Texture_Image(0).w),
              GLsizei(Texture_Image(0).h),
              0, GL_BGR,
              GL_UNSIGNED_BYTE,
              GLubytes_Address.To_Pointer(
                Texture_Image(0).pixels).all );
         end;

         -- Free up any memory we may have used
         if Texture_Image(0) /= Vd.null_Surface_ptr
         then
            Vd.FreeSurface( Texture_Image(0) );
         end if;
      end if;

      return Status;
   end Load_Textures;

   --  ===================================================================
   --  Template for an extra processing during Idle time of the game
   --  or simulation.
   --  (Not parte of the NeHe configuration.)
   procedure idle is
   begin
      null;
   end idle;

   --  ===================================================================

   procedure Init_GL (info : Boolean) is
      No_Texture_Loaded: Exception;
   begin

      -- Load in the texture */
      if not Load_Textures then
         raise No_Texture_Loaded;
      end if;

      -- Enable Texture Mapping ( NEW )
      glEnable( GL_TEXTURE_2D );

      -- Enable smooth shading
      glShadeModel( GL_SMOOTH );

      -- Set the background black
      glClearColor( 0.0, 0.0, 0.0, 0.0 );

      -- Depth buffer setup
      glClearDepth( 1.0 );

      -- Really Nice Perspective Calculations
      glHint( GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST );

      --  Set The Blending Function For Translucency
      glBlendFunc( GL_SRC_ALPHA, GL_ONE );

      --  Enable Blending */
      glEnable( GL_BLEND );

      for i in 0 .. Num_Stars -1 loop

         --  Start All The Stars At Angle Zero
         Stars(i).angle := 0.0;

         --  Calculate Distance From The Center
         Stars(i).dist := ( GLfloat(i)/Glfloat(Num_Stars) ) * 5.0;

         --  Give Star(i) A Random Red Intensity
         Stars(i).r := Glubyte(Random_256.Random(Random_256_Generator));

         --  Give Star(i) A Random Green Intensity
         Stars(i).g := GLubyte(Random_256.Random(Random_256_Generator));

         --  Give Star(i) A Random Blue Intensity
         Stars(i).b := GLubyte(Random_256.Random(Random_256_Generator));

      end loop;

   end Init_GL;

   --  ===================================================================

   --  function to reset our viewport after a window resize
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

      -- Select Our Texture
      glBindTexture( GL_TEXTURE_2D, Texture(0) );
      glLoadIdentity;

      for i in 0 .. Num_Stars -1 loop

         --  Reset The View Before We Draw Each Star
         glLoadIdentity;

         -- Zoom Into The Screen (Using The Value In 'zoom')
         glTranslatef( 0.0, 0.0, Zoom );

         -- Tilt The View (Using The Value In 'tilt')
         glRotatef( Tilt, 1.0, 0.0, 0.0 );

         -- Rotate To The Current Stars Angle
         glRotatef( Stars(i).angle, 0.0, 1.0, 0.0 );

         -- Move Forward On The X Plane
         glTranslatef( stars(i).dist, 0.0, 0.0 );

         -- Cancel The Current Stars Angle
         glRotatef( -Stars(i).angle, 0.0, 1.0, 0.0 );

         -- Cancel The Screen Tilt
         glRotatef( -Tilt, 1.0, 0.0, 0.0 );

         --  Twinkling Stars Enabled
         if Twinkle_Stars then
            --  Assign A Color Using Bytes
            glColor4ub(Stars(( Num_Stars - i ) - 1).r,
                       Stars(( Num_Stars - i ) - 1).g,
                       Stars(( Num_Stars - i ) - 1).b, 255 );
            -- Begin Drawing The Textured Quad
            glBegin( GL_QUADS );
            glTexCoord2f( 0.0, 0.0 );
            glVertex3f( -1.0, -1.0, 0.0 );
            glTexCoord2f( 1.0, 0.0);
            glVertex3f( 1.0, -1.0, 0.0 );
            glTexCoord2f( 1.0, 1.0 );
            glVertex3f( 1.0, 1.0, 0.0 );
            glTexCoord2f( 0.0, 1.0 );
            glVertex3f( -1.0, 1.0, 0.0 );
            glEnd;
         end if;

         -- Rotate The Star On The Z Axis
         glRotatef( Spin, 0.0, 0.0, 1.0 );

         -- Assign A Color Using Bytes
         glColor4ub( stars(i).r, stars(i).g, stars(i).b, 255 );

         -- Begin Drawing The Textured Quad
         glBegin( GL_QUADS );
            glTexCoord2f( 0.0, 0.0 ); glVertex3f( -1.0, -1.0, 0.0 );
            glTexCoord2f( 1.0, 0.0 ); glVertex3f(  1.0, -1.0, 0.0 );
            glTexCoord2f( 1.0, 1.0 ); glVertex3f(  1.0,  1.0, 0.0 );
            glTexCoord2f( 0.0, 1.0 ); glVertex3f( -1.0,  1.0, 0.0 );
         glEnd;

         -- Used To Spin The Stars
         Spin := Spin + 0.01;

         -- Changes The Angle Of A Star
         Stars(i).angle := Stars(i).angle + GLfloat(i) / GLfloat(Num_Stars);

         -- Changes The Distance Of A Star
         Stars(i).dist := Stars(i).dist - 0.01;

         --  Is The Star In The Middle Yet
         if Stars(i).dist < 0.0
         then
            -- Move The Star 5 Units From The Center
            Stars(i).dist := Stars(i).dist + 5.0;

            -- Give It A New Red Value
            Stars(i).r := Glubyte(Random_256.Random(Random_256_Generator));

            -- Give It A New Green Value
            Stars(i).g := Glubyte(Random_256.Random(Random_256_Generator));

            -- Give It A New Blue Value
            Stars(i).b := Glubyte(Random_256.Random(Random_256_Generator));
         end if;

      end loop;

      --   Draw it to the screen
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
            Put_Line(Integer'Image(Frames) & " frames in "
                     & GLfloat'Image(seconds) & " seconds = "
                     & GLfloat'Image(fps) & " FPS");
            T0 := t;
            Frames := 0;
         end if;
      end;

   end Draw_Scene;

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
               Put_Line("Sory: FullScreen not available!");
            end if;
         when Ks.K_t =>
            --  toggles the twinkling of the stars
            Twinkle_Stars := not Twinkle_Stars;
         when Ks.K_UP =>
            --  changes the tilt of the stars
            Tilt := Tilt - 0.5;
         when Ks.K_DOWN =>
            --  changes the tilt of the stars
            Tilt := Tilt + 0.5;
         when Ks.K_PAGEUP =>
            --  zoom into the scene
            Zoom := Zoom - 0.2;
         when Ks.K_PAGEDOWN =>
            --  zoom out of the scene
            Zoom := Zoom + 0.2;
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
            idle;
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
                     done := True;
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
      SDL.SDL_Quit;
      GNAT.OS_Lib.OS_Exit (2);
   end if;

   -- Enable key repeat
   if  Kb.EnableKeyRepeat( 100, Kb.DEFAULT_REPEAT_INTERVAL ) /= 0  then
      Put_Line ( "Setting keyboard repeat failed: "
                & Er.Get_Error );
      GNAT.OS_Lib.OS_Exit (1);
   end if;

    Vd.WM_Set_Caption ("t (to Twinkle); Up/Dow (to Tilt);"
                      & " PgUp,PgDown (to Zoom)",
                      "Generic NeHe canvas");

   Init_GL (Info);

   Resize_Window (screen.w, screen.h);
   done := False;

   Random_256.Reset(Random_256_Generator);

   Main_System_Loop;

   SDL.SDL_Quit;
end Lesson09;
