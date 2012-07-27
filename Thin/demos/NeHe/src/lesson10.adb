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
with Lib_C;
with GNAT.OS_Lib;
with System.Address_To_Access_Conversions;
with Unchecked_Deallocation;
with Ada.Numerics.Generic_Elementary_Functions;
with Ada.Command_Line;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Generic_Elementary_Functions;
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
procedure Lesson10 is

   package CL renames Ada.Command_Line;
   package C  renames Interfaces.C;
   package Math is new Ada.Numerics.Generic_Elementary_Functions(Float);
   use Math;
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

   --  ===================================================================
   screen : Vd.Surface_ptr;
   done   : Boolean;
   Screen_Width : C.int := 640;
   Screen_Hight : C.int := 480;
   Screen_Bpp   : C.int := 16;

   Slowly      : Boolean := False;
   Info        : Boolean := False;
   Full_Screen : Boolean := False;
   argc        : Integer := CL.Argument_Count;
   Video_Flags : Vd.Surface_Flags := 0;
   Initialization_Flags : SDL.Init_Flags := 0;
   -- this holds some info about our display */
    Video_Info : Vd.VideoInfo_ConstPtr;

   -- NeHe variables

   --  Build Our Vertex Structure
   type Vertex_Type is record
      x,y,z : Float; --  3D Coordinates
      u,v : Float;   --  Texture Coordinates
   end record;

   type Vertex3_Array_Type is array (1..3) of Vertex_Type;

   -- Build Our Triangle Structure
   type Triangle_Type is record
      Vertex : Vertex3_Array_Type; --  Array Of Three Vertices
   end record;

   type Triangle_Type_Access is access Triangle_type;


   type Sector_Type is array(Natural range <>) of Triangle_Type_Access;
   type Sector_Access_Type is access Sector_Type;
   --  procedure Free_Sector is new Unchecked_Deallocation(Sector_Type,
   --                                                    Sector_Access_Type);

   --  Our sector
   Sector1 : Sector_Access_Type;

   yrot: GLfloat := 0.0; -- Camera rotation variable
   xpos: GLfloat := 0.0;
   zpos: GLfloat := 0.0; -- Camera pos variable

   Walk_Bias, Walk_Bias_Angle: GLfloat;
   Lookup_Down: GLfloat;

   -- Ambient Light Values (NEW)
   LightAmbient: Four_GLfloat_Vector := ( 0.5, 0.5, 0.5, 1.0);
   -- Diffuse Light Values ( NEW )
   LightDiffuse: Four_GLfloat_Vector :=  ( 1.0, 1.0, 1.0, 1.0 );
   -- Light Position ( NEW )
   LightPosition: Four_GLfloat_Vector := ( 0.0, 0.0, 2.0, 1.0 );

   -- constant used for converting to radians
   PI_Over_180 : constant Float := 0.0174532925;

   -- Filter: GLuint;
   type Filter_Type is mod 3;
   Filter: Filter_Type := 1; --  Which Filter To Use
   Texture: Three_GLuint_Vector; --  Storage for 3 textures

   subtype String255 is String(1 .. 255);

   -- These are to calculate our fps
   T0: GLint := 0;
   Frames: GLint := 0;

   --  ===================================================================

   --  procedure to release/destroy our resources and restoring the old desktop
   procedure Quit (Return_Code : Integer) is
   begin
      SDL.SDL_Quit;
      Done := True;

      -- Deallocate things we allocated
--        if  Sector1 /= null then
--           --  null;
--           Free_Sector(Sector1);
--        end if;

      --  and exit appropriately
      GNAT.OS_Lib.OS_Exit (Return_Code);
   end;

   --  ===================================================================
   --  Template for an extra processing during Idle time of the game
   --  or simulation.
   --  (Not parte of the NeHe configuration.)
   procedure Idle is
   begin
      null;
   end idle;

   --  ===================================================================

   -- function to load in bitmap as a GL texture */
   function Load_Textures return boolean is
      -- Status indicator
      Status: boolean := false;

      -- Create storage space for the texture
      Texture_Image:  array (0..0) of Vd.Surface_ptr;

   begin

      --  Load The Bitmap, Check For Errors, If Bitmap's Not Found Quit
      Texture_Image(0) := Vd.LoadBMP( "data/mud.bmp" );
      if  Texture_Image(0) /= Vd.null_Surface_ptr
      then
         --  Set the status to true
         Status := true;

         -- Create The Texture
         glGenTextures( 3, Texture(0)'access );

         declare
            subtype GLubytes_Type is GLubyte_Array
              (0 .. Integer(Texture_Image(0).w * Texture_Image(0).h - 1));
            package GLubytes_Address is
              new System.Address_To_Access_Conversions(GLubytes_Type);
         begin

            -- Load in texture 1
            -- Typical Texture Generation Using Data From The Bitmap
            glBindTexture( GL_TEXTURE_2D, Texture(0) );

            --  Generate The Texture
            glTexImage2D( GL_TEXTURE_2D, 0, 3,
              GLsizei(Texture_Image(0).w),
              GLsizei(Texture_Image(0).h),
              0, GL_BGR, GL_UNSIGNED_BYTE,
              GLubytes_Address.To_Pointer(
                Texture_Image(0).pixels).all );

                     -- Linear Filtering
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER,
                            GL_NEAREST );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER,
                            GL_NEAREST );

	    -- Load in texture 2
	    -- Typical Texture Generation Using Data From The Bitmap
	    glBindTexture( GL_TEXTURE_2D, texture(1) );

	    -- Linear Filtering
	    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER,
			     GL_LINEAR );
	    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER,
			     GL_LINEAR );

	    -- Generate The Texture
            glTexImage2D( GL_TEXTURE_2D, 0, 3,
                         GLsizei(Texture_Image(0).w),
                         GLsizei(Texture_Image(0).h),
                         0, GL_BGR, GL_UNSIGNED_BYTE,
                         GLubytes_Address.To_Pointer(
                         Texture_Image(0).pixels).all );

	    -- Load in texture 3
	    -- Typical Texture Generation Using Data From The Bitmap
	    glBindTexture( GL_TEXTURE_2D, texture(2) );

	    -- Mipmapped Filtering
	    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER,
			     GL_LINEAR_MIPMAP_NEAREST );
	    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER,
			     GL_LINEAR );

            -- Generate The MipMapped Texture
            gluBuild2DMipmaps( GL_TEXTURE_2D, 3,
              GLint(Texture_Image(0).w),
              GLint(Texture_Image(0).h),
              GL_BGR,GL_UNSIGNED_BYTE,
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

   --  Setup Our World
   procedure Setup_World (World_File   : String) is

      Num_Triangles: aliased C.int; --  Number of Triangles
      One_Line: String255; -- One line from conf file

      x, y, z, u, v: aliased GLfloat; -- 3d and texture coordinates

      --  File To Work With
      File_Handler : Ada.Text_IO.File_Type;

      Last: Natural :=0;

      procedure sscanf (Str: C.char_array;
               	        Fmt : C.char_array;
                        Result : access C.int);
      procedure sscanf (Str: C.char_array;
                        Fmt : C.char_array;
                        x_access : access GLfloat;
                        y_access : access GLfloat;
                        z_access : access GLfloat;
                        u_access : access GLfloat;
                        v_access : access GLfloat);
      pragma Import (C, sscanf, "sscanf");
   --  ===================================================================

      procedure Read_String (File: in  Ada.Text_IO.File_Type;
                             Line: in out String255;
                             Last: in out Natural) is
      begin
         loop
            Get_Line (File, Line, Last);
            exit when One_Line(One_Line'First) /= '/' and Last /= 0;
         end loop;
      end Read_String;

      --  Just for testing. Prints the content of a text file.
      procedure Print_Line_By_Line(Filename: String) is
         File       : Ada.Text_IO.File_Type;
         Line       : String255;
         Last       : Natural;
         Line_Count : Natural := 0;

      begin
         Ada.Text_IO.Open (File => File,
                           Mode => Ada.Text_IO.In_File,
                           Name => Filename);
         while not Ada.Text_IO.End_Of_File (File) loop
               Ada.Text_IO.Get_Line (File,Line,Last);
               Line_Count := Line_Count + 1;
               Ada.Text_IO.Put_Line (Natural'Image (Line_Count) & ": "
                                     & Line(1..Last));
         end loop;
         Ada.Text_IO.Close (File);
      end Print_Line_By_Line;

      begin

      -- Open Our File
      Ada.Text_IO.Open (File => File_Handler,
                        Mode => Ada.Text_IO.In_File,
                        Name => World_File);

      --  Grab a line from 'World_File'.
      Read_String( File_Handler, One_Line, Last );

      -- Read in number of triangle
      sscanf( C.To_C(One_Line(1..Last)), C.To_C("NUMPOLLIES %d\n"),
             Num_Triangles'Access );

      --  allocate space for our triangles
      --  sector1.triangle     = malloc( numTriangles * sizeof( triangle ) );
      Sector1 := new Sector_Type(1..Integer(Num_Triangles));
      Sector1.all:=(others=>new Triangle_Type);
      --  for I in Sector1'Range loop
      --     Sector1(I):= new Triangle_Type;
      --  end Loop;

	--  Get coords for each triangle
      for Triangle_I in Sector1'Range loop
         for J in Sector1(Triangle_I).Vertex'Range loop
            Read_String( File_Handler, One_Line, Last );
            sscanf( C.To_C(One_Line(1..Last)), C.To_C("%f %f %f %f %f\n"),
                   x'access, y'access, z'access,
                   u'access, v'access );
            Sector1(Triangle_I).Vertex(J):=(x,y,z,u,v);
         end loop;
      end loop;

   Close (File_Handler);

end Setup_World;

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

      Lookup_Down := 0.0;
      Walk_Bias := 0.0;
      Walk_Bias_Angle := 0.0;

      -- Full Brightness, 50% Alpha ( NEW )
      glColor4f( 1.0, 1.0, 1.0, 0.5);

      -- Blending Function For Translucency Based On Source Alpha Value
      glBlendFunc( GL_SRC_ALPHA, GL_ONE );

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
      --  Floating Point For Temp X, Y, Z, U And V Vertices
      x_m, y_m, z_m, u_m, v_m: GLfloat;
            -- Used For Player Translation On The X Axis
      xtrans: GLfloat := -xpos;
      --  Used For Player Translation On The Z Axis
      ztrans: GLfloat := -zpos;
      -- Used For Bouncing Motion Up And Down
      ytrans: GLfloat := -Walk_Bias - 0.25;
      -- 360 Degree Angle For Player Direction
      Scene_Rot_y: GLfloat := 360.0 - yrot;
   begin

      glClear (GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT);

      glLoadIdentity;

      --  Rotate Up And Down To Look Up And Down
      glRotatef( Lookup_Down, 1.0, 0.0 , 0.0 );
      --  Rotate Depending On Direction Player Is Facing
      glRotatef( Scene_Rot_y, 0.0, 1.0 , 0.0 );

      -- Translate The Scene Based On Player Position
      glTranslatef( xtrans, ytrans, ztrans );
      -- Select A Texture Based On filter
      glBindTexture( GL_TEXTURE_2D, texture(Integer(Filter)) );

      --  Process Each Triangle */
      for loop_m in sector1.all'Range loop
         --  Start Drawing Triangles
         glBegin(GL_TRIANGLES);
         --  Normal Pointing Forward
         glNormal3f( 0.0, 0.0, 1.0);
         -- X Vertex Of 1st Point
         x_m := sector1(loop_m).vertex(1).x;
         -- Y Vertex Of 1st Point
         y_m := sector1(loop_m).vertex(1).y;
         -- Z Vertex Of 1st Point
         z_m := sector1(loop_m).vertex(1).z;
         -- U Texture Coord Of 1st Point
         u_m := sector1(loop_m).vertex(1).u;
         -- V Texture Coord Of 1st Point
         v_m := sector1(loop_m).vertex(1).v;

         --  Set The TexCoord And Vertice
         glTexCoord2f( u_m, v_m );
         glVertex3f( x_m, y_m, z_m );

         -- X Vertex Of 2nd Point
         x_m := sector1(loop_m).vertex(2).x;
         -- Y Vertex Of 2nd Point
         y_m := sector1(loop_m).vertex(2).y;
         -- Z Vertex Of 2nd Point
         z_m := sector1(loop_m).vertex(2).z;
         -- U Texture Coord Of 2nd Point
         u_m := sector1(loop_m).vertex(2).u;
         -- V Texture Coord Of 2nd Point
         v_m := sector1(loop_m).vertex(2).v;

         -- Set The TexCoord And Vertice
         glTexCoord2f( u_m, v_m );
         glVertex3f( x_m, y_m, z_m );

         -- X Vertex Of 3rd Point
         x_m := sector1(loop_m).vertex(3).x;
         -- Y Vertex Of 3rd Point
         y_m := sector1(loop_m).vertex(3).y;
         -- Z Vertex Of 3rd Point
         z_m := sector1(loop_m).vertex(3).z;
         --  Texture Coord Of 3rd Point
         u_m := sector1(loop_m).vertex(3).u;
         -- V Texture Coord Of 3rd Point
         v_m := sector1(loop_m).vertex(3).v;

         -- Set The TexCoord And Vertice
         glTexCoord2f( u_m, v_m );
         glVertex3f( x_m, y_m, z_m );
         glEnd;
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
               Put_Line("Sorry: FullScreen not available!");
            end if;
         when Ks.K_RIGHT =>
            --  Right arrow key was pressed
            --  this effectively turns the camera right, but does it by
            --  rotating the scene left
            yrot := yrot - 1.5;
         when Ks.K_LEFT =>
            --  Left arrow key was pressed
            --  this effectively turns the camera left, but does it by
            --  rotating the scene right
            yrot := yrot + 1.5;
         when Ks.K_UP =>
            --  Up arrow key was pressed
            -- this moves the player forward
            --
            --  Move On The X-Plane Based On Player Direction
            xpos := xpos - Sin(yrot * Pi_Over_180) * 0.05;
            --  Move On The Z-Plane Based On Player Direction
            zpos := zpos - Cos( yrot * Pi_Over_180 ) * 0.05;
            if Walk_Bias_Angle >= 359.0 then
               Walk_Bias_Angle := 0.0;
            else
               Walk_Bias_Angle := Walk_Bias_Angle + 10.0;
            end if;

            --  Causes the player to bounce
            Walk_Bias := Sin( Walk_Bias_Angle * Pi_Over_180 ) / 20.0;
         when Ks.K_DOWN =>
            --  Up arrow key was pressed
            -- this moves the player forward
            --
            --  Move On The X-Plane Based On Player Direction
            xpos := xpos + Sin(yrot * Pi_Over_180) * 0.05;
            --  Move On The Z-Plane Based On Player Direction
            zpos := zpos + Cos( yrot * Pi_Over_180 ) * 0.05;
            if Walk_Bias_Angle <= 1.0 then
               Walk_Bias_Angle := 359.0;
            else
               Walk_Bias_Angle := Walk_Bias_Angle - 10.0;
            end if;

            --  Causes the player to bounce
            Walk_Bias := Sin( Walk_Bias_Angle * Pi_Over_180 ) / 20.0;
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
                                  Screen_Bpp,
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

   screen := Vd.SetVideoMode (Screen_Width, Screen_Hight, Screen_Bpp, Video_Flags);
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

   Vd.WM_Set_Caption ("Generic GL canvas for NeHe", "Generic NeHe canvas");

   Init_GL (Info);

   Setup_World("data/world.txt");

   Resize_Window (screen.w, screen.h);
   done := False;

   Put_Line("Initial position: "
            & " yrot=" & GLfloat'Image(yrot)
            & " xpos=" & GLfloat'Image(xpos)
            & " zpos=" & GLfloat'Image(zpos));

   Main_System_Loop;

   Put_Line("Final position: "
            & " yrot=" & GLfloat'Image(yrot)
            & " xpos=" & GLfloat'Image(xpos)
            & " zpos=" & GLfloat'Image(zpos));

   Quit(0);
end Lesson10;
