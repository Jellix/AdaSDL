
--
--    SHOWFONT: Port to the Ada programming language of a test application for the
--    the SDL ttf library.
--
--    The original code was written in C by Sam Lantinga  http://www.libsdl.org.
--
--    This program is free software; you can redistribute it and/or modify
--    it under the terms of the GNU General Public License as published by
--    the Free Software Foundation; either version 2 of the License, or
--    (at your option) any later version.
--
--    This program is distributed in the hope that it will be useful,
--    but WITHOUT ANY WARRANTY; without even the implied warranty of
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--    GNU General Public License for more details.
--
--    You should have received a copy of the GNU General Public License
--    along with this program; if not, write to the Free Software
--    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
-- ---------------------------------------------------------------------------
--    Ada code written by:
--                Antonio M. F. Vargas                               --
--                Manhente - Barcelos - Portugal                     --
--                E-mail: amfvargas@gmail.com                        --
--                http://adasdl.sourceforge.net                      --

with Ada.Command_Line;
with Ada.Characters.Handling;
with Ada.Text_IO;
with Ada.Strings.Fixed;
with GNAT.OS_Lib;
with SDL.Types; use SDL.Types;
with SDL.Video;
with SDL.Events;
with SDL.Error;
with SDL.Quit;
with SDL_ttf; use SDL_ttf;
with Interfaces.C.Strings;
procedure showfont is

   package CL renames Ada.Command_Line;
   package CH renames Ada.Characters.Handling;
   package Text_IO renames Ada.Text_IO;
   package AS renames Ada.Strings;
   package FS renames Ada.Strings.Fixed;
   package  C renames Interfaces.C;
   use type C.int;
   use type C.size_t;
   package CS renames Interfaces.C.Strings;
   package  V renames SDL.Video;
   use type V.Surface_ptr;
   use type V.Surface_Flags;
   package Ev renames SDL.Events;
   package Er renames SDL.Error;

   screen : V.Surface_ptr;
   font : Font_ptr;
   text, temp : V.Surface_ptr;
   ptsize : C.int := 0;
   Argument_Index : Natural := 0;
   rdiff, gdiff, bdiff : C.size_t;

   DEFAULT_PTSIZE : constant := 24;
   DEFAULT_TEXT : constant string :=
      "This is not complete (��������)";
   NUM_COLORS : constant := 256;
   usage : constant string :=
                   "[-dump] [-utf8] [-b] [-i] [-u] [-solid] [-fgcol r g b] " &
                   "[-bgcol r g b]  <font>.ttf [ptsize] [text]";
   colors : V.Colors_Array (0 .. NUM_COLORS - 1);
   white : constant V.Color_ptr := new V.Color'(16#FF#, 16#FF#, 16#FF#, 0);
   black : constant V.Color_ptr := new V.Color'(16#00#, 16#00#, 16#00#, 0);
   forecol : V.Color_ptr := black;
   backcol : V.Color_ptr := white;
   dstrect : V.Rect;
   --  Look for special rendering types
   rendersolid : boolean := true;
   renderstyle : TTF_STYLE := TTF_STYLE_NORMAL;
   --  Look for special execution mode
   dump : boolean := false;
   type Render_Type is  (RENDER_LATIN1, RENDER_UTF8);
   rendertype : Render_Type := RENDER_LATIN1;
   type string_access_type is access string;
   filename,
   message : string_access_type;

   --  ####################################################

   procedure Get_Commandline_Args_Phase1
      (Index         : in out Natural;
       Fore_Color,
       Back_Color    : in out V.Color_ptr;
       Render_Solid  : in out boolean;
       Render_Style  : in out TTF_STYLE;
       TypeOfRender  : in out Render_Type) is
   begin
      if CL.Argument_Count = 0 then
         Text_IO.Put_Line ("Usage: " & CL.Command_Name & " " & usage);
         GNAT.OS_Lib.OS_Exit (1);
      else
         Index := 1;
         while (Index <= CL.Argument_Count)
               and then (CL.Argument (Index) (1) = '-') loop
            if CL.Argument (Index) = "-hollow" then
               Render_Solid := false;
            elsif CL.Argument (Index) = "-utf8" then
               TypeOfRender := RENDER_UTF8;
            elsif CL.Argument (Index) = "-b" then
               Render_Style := TTF_STYLE_BOLD;
            elsif CL.Argument (Index) = "-i" then
               Render_Style := TTF_STYLE_ITALIC;
            elsif CL.Argument (Index) = "-u" then
               Render_Style := TTF_STYLE_UNDERLINE;
            elsif CL.Argument (Index) = "-dump" then
               dump := true;
            elsif CL.Argument (Index) = "-fgcol" then
               if Index + 3 <= CL.Argument_Count
                     and then CH.Is_Digit (CL.Argument (Index + 1) (1))
                     and then CH.Is_Digit (CL.Argument (Index + 2) (1))
                     and then CH.Is_Digit (CL.Argument (Index + 3) (1)) then
                  declare
                     last : positive;
                     package Uint8_IO is new Ada.Text_IO.Modular_IO (Uint8);
                  begin
                     Index := Index + 1;
                     Uint8_IO.Get (CL.Argument (Index), Fore_Color.r, last);
                     Index := Index + 1;
                     Uint8_IO.Get (CL.Argument (Index), Fore_Color.g, last);
                     Index := Index + 1;
                     Uint8_IO.Get (CL.Argument (Index), Fore_Color.b, last);
                  end;
               else
                  Text_IO.Put_Line ("Usage: " & CL.Command_Name & " " & usage);
                  GNAT.OS_Lib.OS_Exit (1);
               end if;
            elsif CL.Argument (Index) = "-bgcol" then
               if CL.Argument_Count >= Index + 3
                     and then CH.Is_Digit (CL.Argument (Index + 1) (1))
                     and then CH.Is_Digit (CL.Argument (Index + 2) (1))
                     and then CH.Is_Digit (CL.Argument (Index + 3) (1)) then
                  declare
                     last : positive;
                     package Uint8_IO is new Ada.Text_IO.Modular_IO (Uint8);
                  begin
                     Index := Index + 1;
                     Uint8_IO.Get (CL.Argument (Index), Back_Color.r, last);
                     Index := Index + 1;
                     Uint8_IO.Get (CL.Argument (Index), Back_Color.g, last);
                     Index := Index + 1;
                     Uint8_IO.Get (CL.Argument (Index), Back_Color.b, last);
                  end;
               else
                  Text_IO.Put_Line ("Usage: " & CL.Command_Name & " " & usage);
                  GNAT.OS_Lib.OS_Exit (1);
               end if;
            else
               --  Check usage
               Text_IO.Put_Line ("Usage: " & CL.Command_Name & " " & usage);
               GNAT.OS_Lib.OS_Exit (1);
            end if;
            Index := Index + 1;
         end loop;
      end if;
   end Get_Commandline_Args_Phase1;

   --  ###############################################

   procedure Get_Commandline_Args_Phase2 (
      Index : in out Natural;
      File_Name : in out string_access_type;
      Point_Size : in out C.int)
   is
      increment : positive := 1;
   begin
      if Index > CL.Argument_Count then
         Text_IO.Put_Line ("Usage: " & CL.Command_Name & " " & usage);
         GNAT.OS_Lib.OS_Exit (1);
      else
         --  Open the font file with the requested point size
         if Index + 1 <= CL.Argument_Count then
            declare
               last : positive;
               package int_IO is new Ada.Text_IO.Integer_IO (C.int);
            begin
               if CH.Is_Digit (CL.Argument (Index + 1) (1)) then
                  int_IO.Get (CL.Argument (Index + 1), Point_Size, last);
                  increment := 2;
               end if;
            end;
         else
            Point_Size := DEFAULT_PTSIZE;
         end if;

         File_Name := new string'(CL.Argument (Index));
         Index := Index + increment;
      end if;
   end Get_Commandline_Args_Phase2;

   --  ####################################################

   procedure Get_Commandline_Args_Phase3 (
      Index : in Natural;
      The_Message : in out string_access_type) is
   begin
      if Index <= CL.Argument_Count then
         The_Message := new string'(CL.Argument (Index));
      else
         The_Message := new string'(DEFAULT_TEXT);
      end if;
   end Get_Commandline_Args_Phase3;

   --  ####################################################

begin  -- showfont procedure

   Get_Commandline_Args_Phase1 (
      Argument_Index,
      forecol,
      backcol,
      rendersolid,
      renderstyle,
      rendertype);

   --  Initialize SDL
   if SDL.Init (SDL.INIT_VIDEO) < 0 then
      Text_IO.Put_Line ("Couldn't initialize SDL: " & Er.Get_Error);
      GNAT.OS_Lib.OS_Exit (2);
   end if;

   SDL.Quit.atexit (SDL.SDL_Quit'Access);

   --  Initialize the TTF library
   if SDL_ttf.Init < 0 then
      Text_IO.Put_Line ("Couldn't initialize TTF: " & Er.Get_Error);
      GNAT.OS_Lib.OS_Exit (2);
   end if;

   SDL.Quit.atexit (TTF_Quit'Access);

   Get_Commandline_Args_Phase2 (
      Argument_Index,
      filename,
      ptsize);

   font := Open_Font (filename.all, ptsize);

   if font = null_Font_ptr then
      Text_IO.Put_Line ("Couldn't load " & C.int'Image (ptsize) &
                        " pt font from " & filename.all &
                        ": " & Er.Get_Error);
      GNAT.OS_Lib.OS_Exit (2);
   end if;

   Set_Font_Style (font, renderstyle);

   if dump then
      for i in Uint16 range 48 .. 122 loop
         declare
            glyph : V.Surface_ptr := V.null_Surface_ptr;
            type outname_Type is access string;
            outname : string := "glyph-" &
                                FS.Trim (Uint16'Image (i), AS.Left) &
                                ".bmp";
         begin
            glyph := RenderGlyph_Shaded (font, i, forecol.all, backcol.all);
            --  glyph := RenderGlyph_Solid (font, i, forecol.all);
            if glyph /= null then
               V.Save_BMP (glyph, outname);
            end if;
         end;
      end loop;
      GNAT.OS_Lib.OS_Exit (0);
   end if;

   --  Set a 640x480x8 video mode
   screen := V.SetVideoMode (800, 600, 32, V.SWSURFACE); -- or V.FULLSCREEN);
   --  screen := V.SetVideoMode (800, 600, 32, V.SWSURFACE or V.FULLSCREEN);
   if screen = V.null_Surface_ptr then
      Text_IO.Put_Line ("Couldn't set : 800x600x32" & Er.Get_Error);
      GNAT.OS_Lib.OS_Exit (2);
   end if;

   --  Set a palette that is good for the foreground colored text
   rdiff := C.size_t (backcol.r - forecol.r);
   gdiff := C.size_t (backcol.g - forecol.g);
   bdiff := C.size_t (backcol.b - forecol.b);
   --  for i in C.size_t range 0 .. NUM_COLORS - 1 loop
   for i in colors'Range loop
      colors (i).r := forecol.r
        + Uint8 (((i * rdiff)/ 4) mod 2**8);
      colors (i).g := forecol.g
        + Uint8 (((i * gdiff)/ 4) mod 2**8);
      colors (i).b := forecol.b
        + Uint8 (((i * bdiff)/ 4) mod 2**8);
   end loop;
   --  V.SetColors (screen, colors, 0, NUM_COLORS);
   V.Set_Colors (screen, colors);

   --  Clear de background to background color
   V.FillRect (screen, null,
               V.MapRGB (screen.format, backcol.r, backcol.g, backcol.b));
   V.UpdateRect (screen, 0, 0, 0, 0);

   --  Show which font file wr're looking at
   declare
      File_String   : constant String       := "Font file: " & filename.all;
      C_File_String : aliased  C.char_array := C.To_C (File_String);
   begin
      if rendersolid then
         text := Render_Text_Solid (font, File_string, forecol.all);
      else
         --  text := Render_Text_Shaded (font, the_string, forecol.all, backcol.all);
         text := RenderText_Shaded (font,
                                    CS.To_Chars_Ptr (C_File_String'Unchecked_Access),
                                    forecol.all,
                                    backcol.all);
      end if;
   end;

   if text /= V.null_Surface_ptr then
      dstrect := (x => 4, y => 4,
                  w => Uint16 (text.w), h => Uint16 (text.h));
      V.BlitSurface (text, null, screen, dstrect);
      V.FreeSurface (text);
   end if;

   --  Render and center the message
   Get_Commandline_Args_Phase3 (
      Argument_Index,
      message);

   case rendertype is
      when RENDER_LATIN1 =>
         if rendersolid then
            text := Render_Text_Solid (font, message.all, forecol.all);
         else
            declare
               Msg_CString : aliased C.char_array := C.To_C (message.all);
            begin
               --  text := Render_Text_Shaded (font, message.all, forecol.all, backcol.all);
               text := RenderText_Shaded (font,
                                          CS.To_Chars_Ptr (Msg_CString'Unchecked_Access),
                                          forecol.all,
                                          backcol.all);
            end;
         end if;
      when RENDER_UTF8 =>
         if rendersolid then
            text := Render_UTF8_Solid (font, message.all, forecol.all);
         else
            text := Render_UTF8_Shaded (font, message.all, forecol.all, backcol.all);
         end if;
      when others =>
         text := V.null_Surface_ptr; -- This shouldn't happen
   end case;

   if text = V.null_Surface_ptr then
      Text_IO.Put_Line ("Couldn't render text:" & Er.Get_Error);
      CloseFont (font);
      GNAT.OS_Lib.OS_Exit (2);
   end if;

   dstrect := (Sint16 (screen.w - text.w) / 2, Sint16 (screen.h - text.h) / 2,
               Uint16 (text.w), Uint16 (text.h));
   Text_IO.Put_Line ("Font is generally " & C.int'Image (FontHeight (font)) &
                     " big, and string is " & C.int'Image (text.h));

   --  Blit the text surface
   if V.BlitSurface (text, null, screen, dstrect) < 0 then
      Text_IO.Put_Line ("Couldn't blit text to display: " & Er.Get_Error);
      CloseFont (font);
      GNAT.OS_Lib.OS_Exit (2);
   end if;

   V.UpdateRect (screen, 0, 0, 0, 0);

   --  Set the text colorkey and convert to display format
   if V.SetColorKey (text, V.SRCCOLORKEY or V.RLEACCEL, 0) < 0 then
      Text_IO.Put_Line ("Warning: Couldn't set text colorkey: " & Er.Get_Error);
   end if;

   temp := V.DisplayFormat (text);
   if temp /= V.null_Surface_ptr then
      V.FreeSurface (text);
      text := temp;
   end if;

   --  Wait for a keystroke, and blit text on mouse press
   declare
      event : Ev.Event;
      Wait_Event_Result : C.int;
   begin
      loop
         Ev.Wait_Event (Wait_Event_Result, event);
         if Wait_Event_Result < 0 then
            Text_IO.Put_Line ("SDL PullEvent error: " & Er.Get_Error);
            exit;
         end if;

         case event.the_type is
            when Ev.MOUSEBUTTONDOWN =>
               dstrect := (Sint16 (event.button.x) - Sint16 (text.w / 2),
                           Sint16 (event.button.y) - Sint16 (text.h / 2),
                           Uint16 (text.w), Uint16 (text.h));
               if V.BlitSurface (text, null, screen, dstrect) = 0 then
                  V.Update_Rect (screen, dstrect);
               else
                  Text_IO.Put_Line ("Couldn't blit text to display: " & Er.Get_Error);
               end if;
            when Ev.KEYDOWN | Ev.QUIT =>
               exit;
            when others => null;
         end case;
      end loop;
      V.FreeSurface (text);
      CloseFont (font);
   end; -- declare
end showfont;
