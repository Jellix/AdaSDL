--  -----------------------------------------------------
--     Copyright (C) by:
--     Antonio M. Ferreira Vargas
--     Manhente - Barcelos - Portugal
--     Email: amfv@sapo.pt
--     http://ada.chavedigital.net
--  -----------------------------------------------------

--  This program is in the public domain

--  -----------------------------------------------------
--  Command line options:
--      -info      Print GL implementation information
--                 (this is the original option).
--      -slow      To slow down velocity under acelerated
--                 hardware.
--      -window    GUI window. Fullscreen is the default.
--      -nosound   To play without sound.
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
with SDL.Types; use SDL.Types;
with gl_h; use gl_h;
with AdaGL; use AdaGL;
with Double_Sprogs; use Double_Sprogs;

procedure Double is

   package CL renames Ada.Command_Line;
   package C  renames Interfaces.C;
   use type C.unsigned;
   use type C.int;
   use type SDL.Init_Flags;
   package Vd  renames SDL.Video;
   use type Vd.Surface_ptr;
   use type Vd.Surface_Flags;
   package Er  renames SDL.Error;
   package Ev  renames SDL.Events;
   package Kb  renames SDL.Keyboard;
   package Ks  renames SDL.Keysym;
   use type Ks.SDLMod;

   --  ===================================================================
   procedure Display (Surface : Vd.Surface_ptr) is
   begin

      --  Clear all pixels
      glClear (GL_COLOR_BUFFER_BIT);

      glPushMatrix;
      glRotatef (spin, 0.0, 0.0, 1.0);
      glColor3f (1.0, 1.0, 1.0);
      glRectf (-25.0, -25.0, 25.0, 25.0);
      glPopMatrix;

      --  don't wait!
      --  start processing bufferd OpenGL routines.
      --  glFlush;
      --  glFinish;
      Vd.GL_SwapBuffers;

   end Display;

   --  ===================================================================
   procedure init (info : Boolean) is
   begin
      --  Set clearing color.
      glClearColor (0.0, 0.0, 0.0, 0.0);

      glShadeModel (GL_FLAT);

   end init;

   --  ===================================================================
   type Idle_Proc_Type is access procedure;
   Idle : Idle_Proc_Type := Null_Spin'Access;

   --  ===================================================================
   --  New window size of exposure
   procedure reshape (Surface : Vd.Surface_ptr) is
      h : GLdouble := GLdouble (Surface.h) / GLdouble (Surface.w);
   begin
      glViewport (0, 0, GLsizei (Surface.w), GLsizei (Surface.h));
      glMatrixMode (GL_PROJECTION);

      glLoadIdentity;
      glOrtho (-50.0, 50.0, -50.0, 50.0, -1.0, 1.0);

      glMatrixMode (GL_MODELVIEW);

      glLoadIdentity;
      --  draw (Surface);

   end reshape;

   --  ===================================================================

   screen : Vd.Surface_ptr;
   done   : Boolean;
   keys   : Uint8_ptr;
   Screen_Width : C.int := 1024;
   Screen_Hight : C.int :=  768;

   Slowly      : Boolean := False;
   Info        : Boolean := False;
   Full_Screen : Boolean := True;
   argc        : Integer := CL.Argument_Count;
   Video_Flags : Vd.Surface_Flags := 0;
   Initialization_Flags : SDL.Init_Flags := 0;

   --  ===================================================================
   procedure Manage_Command_Line is
   begin
      while argc > 0 loop
         if (argc >= 1) and then CL.Argument (argc) = "-slow" then
            Slowly := True;
            argc := argc - 1;
         elsif CL.Argument (argc) = "-window" then
            Full_Screen := False;
            argc := argc - 1;
         elsif CL.Argument (argc) = "-1024x768" then
            Screen_Width := 1024;
            Screen_Hight :=  768;
            argc := argc - 1;
         elsif CL.Argument (argc) = "-800x600" then
            Screen_Width := 800;
            Screen_Hight := 600;
            argc := argc - 1;
         elsif CL.Argument (argc) = "-640x480" then
            Screen_Width := 640;
            Screen_Hight := 480;
            argc := argc - 1;
         elsif CL.Argument (argc) = "-info" then
            Info := True;
            argc := argc - 1;
         else
            Put_Line ("Usage: " & CL.Command_Name & " " &
                      "[-slow] [-window] [-h] [[-640x480] | [-800x600] | [-1024x768]]");
            argc := argc - 1;
            GNAT.OS_Lib.OS_Exit (0);
         end if;
      end loop;
   end Manage_Command_Line;

   --  ===================================================================
   procedure mouse (Button : Uint8; x, y : Uint16) is
   begin
      case Button is
         when 1 =>
            Idle := Spin_Display'Access;
         when others =>
            Idle := Null_Spin'Access;
      end case;
   end mouse;

   --  ===================================================================
   procedure Main_System_Loop (Surface : Vd.Surface_ptr) is
   begin
      while not done loop
         declare
            event : Ev.Event;
            PollEvent_Result : C.int;
         begin
            Idle.all;
            loop
               Ev.PollEventVP (PollEvent_Result, event);
               exit when PollEvent_Result = 0;

               case event.the_type is
                  when Ev.MOUSEBUTTONDOWN =>
                     mouse (event.button.button, event.button.x, event.button.y);
                  when Ev.VIDEORESIZE =>
                     screen := Vd.SetVideoMode (
                                  event.resize.w,
                                  event.resize.h,
                                  16,
                                  Vd.OPENGL or Vd.RESIZABLE);
                     if screen /= null then
                        reshape (screen);
                     else
                        --  Couldn't set the new video mode
                        null;
                     end if;
                  when Ev.QUIT =>
                     done := True;
                  when others => null;
               end case;
            end loop;
            keys := Kb.GetKeyState (null);

            if Kb.Is_Key_Pressed (keys, Ks.K_ESCAPE) then
               done := True;
            end if;

            if Slowly then
               delay (1.0/1000);
            end if;

            Display (Surface);
         end; -- declare
      end loop;
   end Main_System_Loop;

   --  ===================================================================
   --                         'Double'  Procedure body
   --  ===================================================================
begin

   Manage_Command_Line;

   Initialization_Flags := SDL.INIT_VIDEO;

   if SDL.Init (Initialization_Flags) < 0 then
      Put_Line ("Couldn't load SDL: " & Er.Get_Error);
      GNAT.OS_Lib.OS_Exit (1);
   end if;

   Video_Flags := Vd.OPENGL or Vd.RESIZABLE;
   if Full_Screen then
         Video_Flags := Video_Flags or Vd.FULLSCREEN;
   end if;

   screen := Vd.SetVideoMode (Screen_Width, Screen_Hight, 16, Video_Flags);
   if screen = null then
      Put_Line ("Couldn't set " & C.int'Image (Screen_Width) & "x" &
                C.int'Image (Screen_Hight) & " GL video mode: " & Er.Get_Error);
      SDL.SDL_Quit;
      GNAT.OS_Lib.OS_Exit (2);
   end if;

   Vd.WM_Set_Caption ("Generic GL", "Generic");

   init (Info);
   reshape (screen);
   done := False;

   Main_System_Loop (screen);

   SDL.SDL_Quit;
end Double;
