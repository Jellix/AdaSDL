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
with System.Address_To_Access_Conversions;
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

procedure Lesson08 is

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

   -- Nehe variables
   Light: Boolean := false;
   Blend: Boolean := false;
   --  This is a SDL surface
   --  Surface: Vd.Surface_ptr;

   -- rotational vars for the triangle and quad, respectively
   xrot:   GLfloat :=  0.0; -- X Rotation
   yrot:   GLfloat :=  0.0; -- Y Rotation
   zrot:   GLfloat :=  0.0; -- Z Rotation
   xspeed: GLfloat :=  0.0; -- X Rotation Speed
   yspeed: GLfloat :=  0.0; -- Y Rotation Speed
   z:      GLfloat := -5.0; -- Depth Into The Screen

   -- Ambient Light Values (NEW)
   LightAmbient: Four_GLfloat_Vector := ( 0.5, 0.5, 0.5, 1.0);
   -- Diffuse Light Values ( NEW )
   LightDiffuse: Four_GLfloat_Vector :=  ( 1.0, 1.0, 1.0, 1.0 );
   -- Light Position ( NEW )
   LightPosition: Four_GLfloat_Vector := ( 0.0, 0.0, 2.0, 1.0 );

   -- Filter: GLuint;
   type Filter_Type is mod 3;
   Filter: Filter_Type := 1; --  Which Filter To Use
   Texture: Three_GLuint_Vector; --  Storage for 3 textures

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

   -- function to load in bitmap as a GL texture */
   function Load_Textures return boolean is
      -- Status indicator
      Status: boolean := false;

      -- Create storage space for the texture
      Texture_Image:  array (0..0) of Vd.Surface_ptr;


   begin

      --  Load The Bitmap, Check For Errors, If Bitmap's Not Found Quit
      Texture_Image(0) := Vd.LoadBMP( "data/glass.bmp" );
      if  Texture_Image(0) /= Vd.null_Surface_ptr
      then
         declare
            subtype GLubytes_Type is GLubyte_Array
              (0 .. Integer(Texture_Image(0).w * Texture_Image(0).h -1));
            package GLubytes_Address is
              new System.Address_To_Access_Conversions(GLubytes_Type);
         begin
            --  Set the status to true
            Status := true;

            -- Create The Texture
            glGenTextures( 3, Texture(0)'access );

            --  Load in texture 1
            --  Typical Texture Generation Using Data From The Bitmap
            glBindTexture( GL_TEXTURE_2D, Texture(0) );


            -- Nearest Filtering
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER,
                            GL_NEAREST );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER,
                            GL_NEAREST );

            --  Generate The Texture
            glTexImage2D( GL_TEXTURE_2D, 0, 3,
              GLsizei(Texture_Image(0).w),
              GLsizei(Texture_Image(0).h),
              0, GL_BGR,
              GL_UNSIGNED_BYTE,
              GLubytes_Address.To_Pointer(
                Texture_Image(0).pixels).all );


            --  Load in texture 2
            --  Typical Texture Generation Using Data From The Bitmap
            glBindTexture( GL_TEXTURE_2D, Texture(1) );

            -- Linear Filtering
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER,
                            GL_LINEAR );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER,
                            GL_LINEAR );

            --  Generate The Texture
            glTexImage2D( GL_TEXTURE_2D, 0, 3,
              GLsizei(Texture_Image(0).w),
              GLsizei(Texture_Image(0).h),
              0, GL_BGR,
              GL_UNSIGNED_BYTE,
              GLubytes_Address.To_Pointer(
                Texture_Image(0).pixels).all );

            --  Load in texture 3
            --  Typical Texture Generation Using Data From The Bitmap
            glBindTexture( GL_TEXTURE_2D, Texture(2) );

            -- Mipmapped Filtering
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER,
                            GL_LINEAR_MIPMAP_NEAREST );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER,
                            GL_LINEAR );

            --  Generate The MipMapped Texture
            glTexImage2D( GL_TEXTURE_2D, 0, 3,
              GLsizei(Texture_Image(0).w),
              GLsizei(Texture_Image(0).h),
              0, GL_BGR,
              GL_UNSIGNED_BYTE,
              GLubytes_Address.To_Pointer(
                Texture_Image(0).pixels).all );

            -- Generate The MipMapped Texture ( NEW )
            gluBuild2DMipmaps( GL_TEXTURE_2D, 3,
              GLint(Texture_Image(0).w),
              GLint(Texture_Image(0).h),
              GL_BGR,GL_UNSIGNED_BYTE,
              GLubytes_Address.To_Pointer(
                Texture_Image(0).pixels).all );

            -- Free up any memory we may have used
            if Texture_Image(0) /= Vd.null_Surface_ptr
            then
               Vd.FreeSurface( Texture_Image(0) );
            end if;
         end; -- declare
      end if;
      return Status;
   end Load_Textures;

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

      -- Enables Depth Testing
      glEnable( GL_DEPTH_TEST );

      -- The Type Of Depth Test To Do
      glDepthFunc( GL_LEQUAL );

      -- Really Nice Perspective Calculations
      glHint( GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST );

      -- Setup The Ambient Light
      glLightfv( GL_LIGHT1, GL_AMBIENT, LightAmbient );

      -- Setup The Diffuse Light
      glLightfv( GL_LIGHT1, GL_DIFFUSE, LightDiffuse );

      -- Position The Light
      glLightfv( GL_LIGHT1, GL_POSITION, LightPosition );

      -- Enable Light One
      glEnable( GL_LIGHT1 );

      -- Full Brightness, 50% Alpha ( NEW )
      glColor4f( 1.0, 1.0, 1.0, 0.5);

      -- Blending Function For Translucency Based On Source Alpha Value
      glBlendFunc( GL_SRC_ALPHA, GL_ONE );

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

      --  Clear The Screen And The Depth Buffer
      glClear (GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT);

      --  Reset the view
      glLoadIdentity;

      --  Translate Into/Out Of The Screen By z
      glTranslatef(0.0,0.0,z);

      glRotatef( xrot, 1.0, 0.0, 0.0); -- Rotate On The X Axis
      glRotatef( yrot, 0.0, 1.0, 0.0); -- Rotate On The Y Axis

      -- Select A Texture Based On filter
      glBindTexture( GL_TEXTURE_2D, Texture(Integer(Filter)));

      -- Start Drawing Quads
      glBegin( GL_QUADS );
      -- Front Face */
      -- Normal Pointing Towards Viewer
      glNormal3f( 0.0, 0.0, 1.0 );
      -- Point 1 (Front)
      glTexCoord2f( 1.0, 0.0 ); glVertex3f( -1.0, -1.0,  1.0 );
      -- Point 2 (Front)
      glTexCoord2f( 0.0, 0.0 ); glVertex3f(  1.0, -1.0,  1.0 );
      -- Point 3 (Front)
      glTexCoord2f( 0.0, 1.0 ); glVertex3f(  1.0,  1.0,  1.0 );
      -- Point 4 (Front)
      glTexCoord2f( 1.0, 1.0 ); glVertex3f( -1.0,  1.0,  1.0 );

      -- Back Face
      -- Normal Pointing Away From Viewer
      glNormal3f( 0.0, 0.0, -1.0);
      -- Point 1 (Back)
      glTexCoord2f( 0.0, 0.0 ); glVertex3f( -1.0, -1.0, -1.0 );
      -- Point 2 (Back)
      glTexCoord2f( 0.0, 1.0 ); glVertex3f( -1.0,  1.0, -1.0 );
      -- Point 3 (Back)
      glTexCoord2f( 1.0, 1.0 ); glVertex3f(  1.0,  1.0, -1.0 );
      -- Point 4 (Back)
      glTexCoord2f( 1.0, 0.0 ); glVertex3f(  1.0, -1.0, -1.0 );

      -- Top Face
      -- Normal Pointing Up
      glNormal3f( 0.0, 1.0, 0.0 );
      -- Point 1 (Top)
      glTexCoord2f( 1.0, 1.0 ); glVertex3f( -1.0,  1.0, -1.0 );
      -- Point 2 (Top)
      glTexCoord2f( 1.0, 0.0 ); glVertex3f( -1.0,  1.0,  1.0 );
      -- Point 3 (Top)
      glTexCoord2f( 0.0, 0.0 ); glVertex3f(  1.0,  1.0,  1.0 );
      -- Point 4 (Top)
      glTexCoord2f( 0.0, 1.0 ); glVertex3f(  1.0,  1.0, -1.0 );

      -- Bottom Face
      -- Normal Pointing Down
      glNormal3f( 0.0, -1.0, 0.0 );
      -- Point 1 (Bottom)
      glTexCoord2f( 0.0, 1.0 ); glVertex3f( -1.0, -1.0, -1.0 );
      -- Point 2 (Bottom)
      glTexCoord2f( 1.0, 1.0 ); glVertex3f(  1.0, -1.0, -1.0 );
      -- Point 3 (Bottom)
      glTexCoord2f( 1.0, 0.0 ); glVertex3f(  1.0, -1.0,  1.0 );
      -- Point 4 (Bottom)
      glTexCoord2f( 0.0, 0.0 ); glVertex3f( -1.0, -1.0,  1.0 );

      -- Right face
      -- Normal Pointing Right
      glNormal3f( 1.0, 0.0, 0.0);
      -- Point 1 (Right)
      glTexCoord2f( 0.0, 0.0 ); glVertex3f( 1.0, -1.0, -1.0 );
      -- Point 2 (Right)
      glTexCoord2f( 0.0, 1.0 ); glVertex3f( 1.0,  1.0, -1.0 );
      -- Point 3 (Right)
      glTexCoord2f( 1.0, 1.0 ); glVertex3f( 1.0,  1.0,  1.0 );
      -- Point 4 (Right)
      glTexCoord2f( 1.0, 0.0 ); glVertex3f( 1.0, -1.0,  1.0 );

      -- Left Face
      -- Normal Pointing Left
      glNormal3f( -1.0, 0.0, 0.0 );
      -- Point 1 (Left)
      glTexCoord2f( 1.0, 0.0 ); glVertex3f( -1.0, -1.0, -1.0 );
      -- Point 2 (Left)
      glTexCoord2f( 0.0, 0.0 ); glVertex3f( -1.0, -1.0,  1.0 );
      -- Point 3 (Left)
      glTexCoord2f( 0.0, 1.0 ); glVertex3f( -1.0,  1.0,  1.0 );
      -- Point 4 (Left)
      glTexCoord2f( 1.0, 1.0 ); glVertex3f( -1.0,  1.0, -1.0 );
      glEnd;

      --  Draw it to the screen
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

    xrot := xrot + xspeed; -- Add xspeed To xrot
    yrot := yrot + yspeed; -- Add yspeed To yrot

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
         when Ks.K_b =>
            --  toggles blending
            Blend := not Blend;
            if Blend then
               glEnable(GL_BLEND);
               glDisable(GL_DEPTH_TEST);
            else
               glDisable(GL_BLEND);
               glEnable(GL_DEPTH_TEST);
            end if;
         when Ks.K_f =>
            -- pages through the different filters
            Filter := Filter + 1;  --  Filter is mod 3
         when Ks.K_l =>
            -- this toggles the light
            Light := not Light;
            if not Light  then
               glDisable( GL_LIGHTING );
            else
               glEnable( GL_LIGHTING );
            end if;
         when Ks.K_PAGEUP =>
            -- zooms into the scene
            z := z - 0.05;
         when Ks.K_PAGEDOWN =>
            --  zooms out of the scene
            z := z + 0.05;
            when Ks.K_UP =>
            --  affects the x rotation
            xspeed := xspeed - 0.02;
         when Ks.K_DOWN =>
            --  affects the x rotation
            xspeed := xspeed + 0.02;
         when Ks.K_RIGHT =>
            --  affects the y rotation
            yspeed := yspeed + 0.02;
         when Ks.K_LEFT =>
            --  affects the y rotation
            yspeed := yspeed - 0.02;
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
                  when Ev.QUIT =>
                     Quit(0);
                  when Ev.KEYDOWN =>
                     --  handle key presses
                     Handle_Key_Press( event.key.keysym );
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

   -- Enable key repeat
   if  Kb.EnableKeyRepeat( 100, Kb.DEFAULT_REPEAT_INTERVAL ) /= 0  then
      Put_Line ( "Setting keyboard repeat failed: "
                & Er.Get_Error );
      GNAT.OS_Lib.OS_Exit (1);
   end if;

   Vd.WM_Set_Caption ("b (to blend); l (to Light);"
                      & "f (to filter); Up,Down,Left,Right (to rotate);"
                      &" PgUp,PgDown (to zoom)",
                      "Blending");

   Init_GL (Info);

   Resize_Window (screen.w, screen.h);
   done := False;

   Main_System_Loop;

   Quit(0);
end Lesson08;
