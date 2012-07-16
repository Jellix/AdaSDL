-- ----------------------------------------------------------------- --
--                Copyright (C) 2012 A.M.F.Vargas             --
--                Antonio M. F. Vargas                               --
--                Manhente - Barcelos - Portugal                     --
--                mailto: amfv@gmail.com                             --
--                http://adasdl.sourceforge.net                      --
-- ----------------------------------------------------------------- --
--                                                                   --
-- This is free software; you can redistribute it and/or             --
-- modify it under the terms of the GNU General Public               --
-- License as published by the Free Software Foundation; either      --
-- version 2 of the License, or (at your option) any later version.  --
--                                                                   --
-- This software is distributed in the hope that it will be useful,  --
-- but WITHOUT ANY WARRANTY; without even the implied warranty of    --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU --
-- General Public License for more details.                          --
--                                                                   --
-- You should have received a copy of the GNU General Public         --
-- License along with this library; if not, write to the             --
-- Free Software Foundation, Inc., 59 Temple Place - Suite 330,      --
-- Boston, MA 02111-1307, USA.                                       --
--                                                                   --
-- ----------------------------------------------------------------- --

with Ada.Text_IO; use Ada.Text_IO;
with Interfaces.C.Strings;
with GNAT.OS_Lib;
with SDL.Types; use SDL.Types;
with SDL.Video;
with SDL.Error;
with SDL.Events;
with SDL.Keyboard;
with SDL.Quit;
with SDL.Keysym;
with SDL_Framebuffer;
with SDL_ttf;
with System;

--  =====================================
procedure Simple04 is
   package C  renames Interfaces.C;
   use type C.int;
   use type SDL.Init_Flags;
   package V  renames SDL.Video;
   use type V.Surface_ptr;
   use type V.Surface_Flags;
   package Er renames SDL.Error;
   package S  renames C.Strings;
   package Ev renames SDL.Events;
   package Kb renames SDL.Keyboard;
   package Ks renames SDL.Keysym;
   package Fb renames SDL_Framebuffer;
   package Ft renames SDL_ttf;
   use type Ft.Font_ptr;

   Main_Surface : SDL.Video.Surface_ptr;

   --  Stuff to write text
   font : Ft.Font_ptr:= Ft.null_Font_ptr;
   type string_access_type is access string;
   filename: string_access_type:=new string'("data/FreeSerifBoldItalic.ttf");
   ptsize : C.int := 24;
   --  Text_Surface_ptr: V.Surface_ptr;
   white : constant V.Color_ptr := new V.Color'(16#FF#, 16#FF#, 16#FF#, 0);
   black : constant V.Color_ptr := new V.Color'(16#00#, 16#00#, 16#00#, 0);
   forecol : V.Color_ptr := black;
   backcol : V.Color_ptr := white;
   dstrect : V.Rect := (100,100,0,0);

   --  ===================================================================

   Procedure Draw_Rectangle(Surface: V.Surface_ptr; Color: V.Color;
                            x, y, w, h : Sint16) is
   begin
      if V.LockSurface (Surface) < 0 then
         Put_Line ("Couldn't lock the display surface: " & Er.Get_Error);
         GNAT.OS_Lib.OS_Exit (2);
      end if;

      for yl in Natural range Natural(y) .. Natural(y+h) loop
         for xl in Natural range Natural(x) .. Natural(x+w) loop
            Fb.Go_XY_Unchecked (Surface, xl,  yl).all :=
              Uint16'(Fb.MapRGB (Surface.format,
                Color.r, Color.g, Color.b));
         end loop;
      end loop;

      V.UnlockSurface (Surface);
   end;

   -- ==============================================================

   Procedure Draw_Solid_Text(Surface: V.Surface_ptr;
                            Font: Ft.Font_ptr;
                            Color: V.Color;
                            x: Sint16;
                            y: Sint16;
                            Text: String) is
      Text_Surface: V.Surface_ptr;
   begin

      Text_Surface := Ft.Render_Text_Solid(Font,Text,Color);
      if Text_Surface /= V.null_Surface_ptr then
         dstrect := (x => x, y => y,
                     w => Uint16 (Text_Surface.w),
                     h => Uint16 (Text_Surface.h));

         V.BlitSurface (Text_Surface, null, Surface, dstrect);
         V.FreeSurface (Text_Surface);
      end if;
   end;

      -- ==============================================================

   Procedure Draw_Shaded_Text(Surface: V.Surface_ptr;
                              Font: Ft.Font_ptr;
                              Foreground_Color: V.Color;
                              Background_Color: V.Color;
                              x: Sint16;
                              y: Sint16;
                              Text: String) is
      Text_Surface: V.Surface_ptr;
   begin

      Text_Surface := Ft.Render_Text_Shaded(Font,Text,
                                            Background_Color,Foreground_Color);
      if Text_Surface /= V.null_Surface_ptr then
         dstrect := (x => x, y => y,
                     w => Uint16 (Text_Surface.w),
                     h => Uint16 (Text_Surface.h));

         V.BlitSurface (Text_Surface, null, Surface, dstrect);
         V.FreeSurface (Text_Surface);
      end if;
   end;

   -- ====================================================================

   Procedure Draw_Pixels is
   begin

      Draw_Rectangle(Main_Surface,(16#FF#,16#FF#,16#FF#,0),50,200,200,0);

      Draw_Rectangle(Main_Surface,(16#FF#,16#00#,16#00#,0),250,150,300,200);

      -- Draw_Shaded_Text(Main_Surface,font,forecol.all,backcol.all,400,400,
      --                 "Olá Mundo Cruel! Eu gosto mas é do verão!");

      Draw_Solid_Text(Main_Surface,font,forecol.all,400,400,
                       "Olá Mundo Cruel! Eu gosto mas é do verão!");

      V.UpdateRect (Main_Surface, 0, 0, 0, 0);

      Draw_Rectangle(Main_Surface,(16#FF#,16#FF#,16#FF#,0),10,10,200,200);

      Draw_Solid_Text(Main_Surface,font,(16#AB#,16#CD#,16#01#,0),300,300,
                      "Olá Rapazote");

      V.UpdateRect (Main_Surface, 0, 0, 0, 0);


   end Draw_Pixels;

   --  ---------------------------------

   procedure Start_Event_Management
   is
      Quit  : Boolean := False;
      Event : aliased Ev.Event;
      PollEvent_Result : C.int;
   begin
      loop
         Ev.PollEventVP (PollEvent_Result, Event);
         if PollEvent_Result = 1 then
            case Event.the_type is
               when Ev.KEYDOWN =>
                  case event.key.keysym.sym is
                     when Ks.K_ESCAPE =>
                        Quit := True;
                     when others => null;
                  end case;
                when  Ev.QUIT => Quit := True;
                when others => null;
            end case;
         end if;
         exit when Quit;
      end loop;

   end Start_Event_Management;

   --  ---------------------------------
begin

   if SDL.Init (SDL.INIT_TIMER or SDL.INIT_VIDEO) < 0 then
      Put_Line ("Couldn't load SDL: " &
                C.Strings.Value (Er.GetError));
      GNAT.OS_Lib.OS_Exit (1);
   end if;

   SDL.Quit.atexit (SDL.SDL_Quit'Access);

      --  Initialize the TTF library
   if SDL_ttf.Init < 0 then
      Put_Line ("Couldn't initialize TTF: " & Er.Get_Error);
      GNAT.OS_Lib.OS_Exit (2);
   end if;

   SDL.Quit.atexit (Ft.TTF_Quit'Access);


   SDL.Video.WM_SetCaption (S.New_String ("Hello World! Just press ESCAPE"),
                            S.Null_Ptr);

   Main_Surface := V.SetVideoMode (1024, 768, 16,
                                   V.SWSURFACE); -- or V.FULLSCREEN);
   if Main_Surface = null then
      Put_Line ("Couldn't set video mode" &
                S.Value (Er.GetError));
      GNAT.OS_Lib.OS_Exit (1);
   end if;


   font := Ft.Open_Font (filename.all, ptsize);
   if font = Ft.null_Font_ptr then
      Put_Line ("Couldn't load " & C.int'Image (ptsize) &
                          " pt font from " & filename.all &
                          ": " & Er.Get_Error);
      GNAT.OS_Lib.OS_Exit (2);
   end if;

   Draw_Pixels;

   Start_Event_Management;

   Ft.CloseFont (font);
   V.FreeSurface (Main_Surface);

end Simple04;
