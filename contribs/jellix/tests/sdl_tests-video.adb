--  AdaSDL, video test stuff.
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

with Ada.Text_IO,
     System;
with SDL.General,
     SDL.Video.Support;

use type SDL.Int,
         SDL.General.Init_Flags,
         SDL.Video.Info_Ptr,
         SDL.Video.Surface_Flags;

package body SDL_Tests.Video is

   SUB_MOD : constant String := "SDL.Video";

   ---------------------------------------------------------------------
   --  Initialize
   ---------------------------------------------------------------------
   procedure Initialize is
      Flags      : SDL.General.Init_Flags;
      Video_Info : SDL.Video.Info_Ptr;
   begin
      Flags := SDL.General.Was_Init (Flags => SDL.General.INIT_VIDEO);

      if
        Flags = SDL.General.INIT_VIDEO
      then
         Ada.Text_IO.Put_Line (SUB_MOD & ": Initialized.");
      else
         Ada.Text_IO.Put_Line (SUB_MOD & ": NOT initialized!");
      end if;

      Ada.Text_IO.Put_Line ("Driver Name: '" & SDL.Video.Driver_Name & "'");

      Video_Info := SDL.Video.Get_Info;

      if
        Video_Info /= null
      then
         Ada.Text_IO.Put_Line (SDL.Video.Support.Image (I => Video_Info.all));
      else
         Ada.Text_IO.Put_Line ("No video info available!");
      end if;
   end Initialize;

   ---------------------------------------------------------------------
   --  List_Fullscreen_Modes
   ---------------------------------------------------------------------
   procedure List_Fullscreen_Modes is
      Modes : constant SDL.Video.Rectangles :=
                SDL.Video.List_Modes (Format => null,
                                      Flags  => SDL.Video.HW_SURFACE or SDL.Video.FULL_SCREEN or SDL.Video.ANY_FORMAT);
   begin
      if
        Modes'Length = 0
      then
         if
           Modes'Last = 0
         then
            Ada.Text_IO.Put_Line (SUB_MOD & ".List_Modes: No full screen modes available.");
         elsif
           Modes'Last = 1
         then
            Ada.Text_IO.Put_Line (SUB_MOD & ".List_Modes: Any full screen mode available.");
         end if;
      else
         Ada.Text_IO.Put_Line (SUB_MOD & ".List_Modes: Supported full screen modes:");

         Fullscreen_Modes :
         for Mode in Modes'Range loop
            Print_Full_Screen_Mode :
            declare
               Area : SDL.Video.Rectangle renames Modes (Mode);
            begin
               Ada.Text_IO.Put_Line ("(" & SDL.Int'Image (Mode) & ") " &
                                     SDL.Video.Support.Size_Image (Area));
            end Print_Full_Screen_Mode;
         end loop Fullscreen_Modes;
      end if;
   end List_Fullscreen_Modes;

   ---------------------------------------------------------------------
   --  List_Windowed_Modes
   ---------------------------------------------------------------------
   procedure List_Windowed_Modes is
      Modes : constant SDL.Video.Rectangles :=
                SDL.Video.List_Modes (Format => null,
                                      Flags  => SDL.Video.HW_SURFACE or SDL.Video.ANY_FORMAT);
   begin
      if
        Modes'Length = 0
      then
         if
           Modes'Last = 0
         then
            Ada.Text_IO.Put_Line (SUB_MOD & ".List_Modes: No windowed modes available.");
         elsif
           Modes'Last = 1
         then
            Ada.Text_IO.Put_Line (SUB_MOD & ".List_Modes: Any windowed mode available.");
         end if;
      else
         Ada.Text_IO.Put_Line (SUB_MOD & ".List_Modes: Supported windowed screen modes:");

         Windowed_Modes :
         for Mode in Modes'Range loop
            Print_Windowed_Mode :
            declare
               Area : SDL.Video.Rectangle renames Modes (Mode);
            begin
               Ada.Text_IO.Put_Line ("(" & SDL.Int'Image (Mode) & ") " &
                                     SDL.Video.Support.Size_Image (Area));
            end Print_Windowed_Mode;
         end loop Windowed_Modes;
      end if;
   end List_Windowed_Modes;

   ---------------------------------------------------------------------
   --  Run_Video_Test
   ---------------------------------------------------------------------
   procedure Run_Video_Test is
      Surface : SDL.Video.Surface;
      BPP     : SDL.Int;
   begin
      BPP := SDL.Video.Mode_Ok (Width  => 640,
                                Height => 480,
                                Depth  => 32,
                                Flags  => SDL.Video.HW_SURFACE or SDL.Video.DOUBLE_BUF);

      Ada.Text_IO.Put_Line ("BPP for requested mode: " & SDL.Int'Image (BPP));

      Surface := SDL.Video.Set_Mode (Width  => 640,
                                     Height => 480,
                                     Depth  => BPP,
                                     Flags  => SDL.Video.HW_SURFACE or SDL.Video.DOUBLE_BUF or SDL.Video.RESIZABLE);

      if
        SDL.Video.Is_Valid (Surface)
      then
         Ada.Text_IO.Put_Line ("Surface created.");

         SDL.Video.Support.Print_Surface_Info (Screen => Surface);

         if
           SDL.Video.Set_Alpha (Screen => Surface,
                                Flags  => SDL.Video.SRC_ALPHA,
                                Alpha  => 128) = 0
         then
            null;
         end if;

         SDL.Video.Set_Clip_Rect (Screen    => Surface,
                                  Clip_Rect => SDL.Video.Rectangle'(x => 1,
                                                                    y => 1,
                                                                    w => SDL.UInt16 (640 - 2),
                                                                    h => SDL.UInt16 (480 - 2)));

         SDL.Video.Support.Print_Surface_Info (Screen => Surface);

         SDL.Video.Disable_Clipping (Screen => Surface);
         Ada.Text_IO.Put_Line ("Clipping disabled.");
         SDL.Video.Support.Print_Surface_Info (Screen => Surface);

         Draw_Pixels :
         declare
            W : constant SDL.Int := SDL.Video.Width  (S => Surface);
            H : constant SDL.Int := SDL.Video.Height (S => Surface);
         begin
            if
              SDL.Video.Lock_Surface (Screen => Surface) = 0
            then
               Ada.Text_IO.Put_Line (SUB_MOD & ".Lock_Surface: Success.");
            else
               Ada.Text_IO.Put_Line (SUB_MOD & ".Lock_Surface: '" &
                                     SDL.General.Get_Error & "'!");
            end if;

            Pixel_Loop :
            declare
               P : array (0 .. W - 1, 0 .. H - 1) of SDL.UInt32;
               for P'Address use System.Address (SDL.Video.Pixels (S => Surface));
            begin
               Draw_Width :
               for x in P'Range (1) loop
                  Draw_Height :
                  for y in P'Range (2) loop
                     P (x, y) := SDL.UInt32 (x * y);
                  end loop Draw_Height;
               end loop Draw_Width;
            end Pixel_Loop;

            SDL.Video.Unlock_Surface (Screen => Surface);
            Ada.Text_IO.Put_Line (SUB_MOD & ".Unlock_Surface: Success.");

            SDL.Video.Flip (Screen => Surface);
            delay 1.0;

            Set_Palette:
            declare
               GS_Palette : SDL.Video.Color_Array (0 .. 255);
            begin
               Set_Color :
               for i in GS_Palette'Range loop
                  GS_Palette (i) := SDL.Video.Color'(Red    => SDL.UInt8 (i),
                                                     Green  => SDL.UInt8 (i),
                                                     Blue   => SDL.UInt8 (i),
                                                     Unused => 0);
               end loop Set_Color;

               if
                 SDL.Video.Set_Colors (Screen     => Surface,
                                       Colors     => GS_Palette,
                                       First      => GS_Palette'First,
                                       Num_Colors => GS_Palette'Length)
               then
                  Ada.Text_IO.Put_Line (SUB_MOD & ".Set_Colors: Gray scale palette set successfully.");
                  delay 1.0;
               else
                  Ada.Text_IO.Put_Line (SUB_MOD & ".Set_Colors: Gray scale palette may not be complete.");
               end if;
            end Set_Palette;

            Blit_Surface :
            declare
               Src_Area : constant SDL.Video.Rectangle :=
                            SDL.Video.Rectangle'(X => 0,
                                                 Y => 0,
                                                 W => 100,
                                                 H => 100);
               Dst_Area : aliased SDL.Video.Rectangle :=
                            SDL.Video.Rectangle'(X => 100,
                                                 Y => 100,
                                                 W => 0,
                                                 H => 0);
            begin
               if
                 SDL.Video.Blit_Surface (Source           => Surface,
                                         Source_Area      => Src_Area,
                                         Destination      => Surface,
                                         Destination_Area => Dst_Area'Access) = 0
               then
                  null;
               end if;

               SDL.Video.Update_Rect (Screen => Surface,
                                      X      => SDL.SInt32 (Dst_Area.X),
                                      Y      => SDL.SInt32 (Dst_Area.Y),
                                      Width  => SDL.SInt32 (Dst_Area.W),
                                      Height => SDL.SInt32 (Dst_Area.H));
               delay 1.0;

               Create_Rectangle :
               declare
                  Rectangle : SDL.Video.Surface :=
                                SDL.Video.Create_RGB_Surface
                                  (Flags      => SDL.Video.HW_SURFACE,
                                   Width      => 100,
                                   Height     => 100,
                                   Depth      => 32,
                                   Red_Mask   => 16#FF000000#,
                                   Green_Mask => 16#00FF0000#,
                                   Blue_Mask  => 16#0000FF00#,
                                   Alpha_Mask => 16#000000FF#);
               begin
                  Dst_Area := SDL.Video.Rectangle'(X => 0,
                                                   Y => 0,
                                                   W => 100,
                                                   H => 100);

                  if
                    SDL.Video.Fill_Rect
                      (Destination => Rectangle,
                       Area        => Dst_Area'Access,
                       Fill_Color  => SDL.Video.Map_RGBA (Format => SDL.Video.Format (Rectangle).all,
                                                          Red    => 16#FF#,
                                                          Green  => 16#00#,
                                                          Blue   => 16#00#,
                                                          Alpha  => 16#80#)) = 0
                  then
                     Ada.Text_IO.Put_Line (SUB_MOD & ".Fill_Rect: Success.");
                  else
                     Ada.Text_IO.Put_Line (SUB_MOD & ".Fill_Rect: '" &
                                           SDL.General.Get_Error & "'!");
                  end if;

                  Dst_Area := SDL.Video.Rectangle'(X => 100,
                                                   Y => 100,
                                                   W => 100,
                                                   H => 100);

                  if
                    SDL.Video.Blit_Surface
                      (Source           => Rectangle,
                       Source_Area      => SDL.Video.Rectangle'(X => 0,
                                                                Y => 0,
                                                                W => 100,
                                                                H => 100),
                       Destination      => Surface,
                       Destination_Area => Dst_Area'Access) = 0
                  then
                     Ada.Text_IO.Put_Line (SUB_MOD & ".Blit_Surface: Success.");
                  else
                     Ada.Text_IO.Put_Line (SUB_MOD & ".Blit_Surface: '" &
                                           SDL.General.Get_Error & "'!");
                  end if;

                  SDL.Video.Free_Surface (Screen => Rectangle);

                  SDL.Video.Update_Rect (Screen => Surface,
                                         X      => SDL.SInt32 (Dst_Area.X),
                                         Y      => SDL.SInt32 (Dst_Area.Y),
                                         Width  => SDL.SInt32 (Dst_Area.W),
                                         Height => SDL.SInt32 (Dst_Area.H));
                  delay 1.0;
               end Create_Rectangle;
            end Blit_Surface;

--              Ret_Code := SDL.Video.Set_Gamma (Red   => 2.0,
--                                               Green => 2.0,
--                                               Blue  => 2.0);
--
--              if
--                Ret_Code = -1
--              then
--                 With DirectX the gamma affects the whole screen, yet
--                 SetGamma still returns -1 for error...
--                 Ada.Text_IO.Put_Line (SUB_MOD & ".Set_Gamma: '" & SDL.General.Get_Error & "'!");
--              else
--                 Ada.Text_IO.Put_Line ("New display gamma set.");
--              end if;
--
--              delay 1.0;

            if
              SDL.Video.Save_BMP (Source => Surface,
                                  File   => "tests/test-data/test.bmp") = 0
            then
               Ada.Text_IO.Put_Line (SUB_MOD & ".Save_BMP: Success.");
            else
               Ada.Text_IO.Put_Line (SUB_MOD & ".Save_BMP: '" &
                                     SDL.General.Get_Error   &
                                     "'!");
            end if;
         end Draw_Pixels;
      else
         Ada.Text_IO.Put_Line ("No video surface!");
         Ada.Text_IO.Put_Line ("'" & SDL.General.Get_Error & "'!");
      end if;
   end Run_Video_Test;

end SDL_Tests.Video;
