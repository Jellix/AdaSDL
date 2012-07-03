pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__gears.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__gears.adb");
with Ada.Exceptions;

package body ada_main is
   pragma Warnings (Off);

   E013 : Short_Integer; pragma Import (Ada, E013, "system__soft_links_E");
   E182 : Short_Integer; pragma Import (Ada, E182, "system__fat_flt_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "system__fat_llf_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "system__exception_table_E");
   E073 : Short_Integer; pragma Import (Ada, E073, "ada__io_exceptions_E");
   E047 : Short_Integer; pragma Import (Ada, E047, "ada__numerics_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "ada__strings_E");
   E154 : Short_Integer; pragma Import (Ada, E154, "ada__strings__maps_E");
   E054 : Short_Integer; pragma Import (Ada, E054, "ada__tags_E");
   E063 : Short_Integer; pragma Import (Ada, E063, "ada__streams_E");
   E075 : Short_Integer; pragma Import (Ada, E075, "interfaces__c_E");
   E077 : Short_Integer; pragma Import (Ada, E077, "interfaces__c__strings_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exceptions_E");
   E072 : Short_Integer; pragma Import (Ada, E072, "system__finalization_root_E");
   E070 : Short_Integer; pragma Import (Ada, E070, "ada__finalization_E");
   E093 : Short_Integer; pragma Import (Ada, E093, "system__storage_pools_E");
   E085 : Short_Integer; pragma Import (Ada, E085, "system__finalization_masters_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "system__storage_pools__subpools_E");
   E095 : Short_Integer; pragma Import (Ada, E095, "system__pool_global_E");
   E083 : Short_Integer; pragma Import (Ada, E083, "system__file_control_block_E");
   E068 : Short_Integer; pragma Import (Ada, E068, "system__file_io_E");
   E009 : Short_Integer; pragma Import (Ada, E009, "system__secondary_stack_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "ada__strings__unbounded_E");
   E080 : Short_Integer; pragma Import (Ada, E080, "system__os_lib_E");
   E062 : Short_Integer; pragma Import (Ada, E062, "ada__text_io_E");
   E118 : Short_Integer; pragma Import (Ada, E118, "adagl_E");
   E128 : Short_Integer; pragma Import (Ada, E128, "sdl__byteorder__extra_E");
   E135 : Short_Integer; pragma Import (Ada, E135, "sdl__error_E");
   E132 : Short_Integer; pragma Import (Ada, E132, "sdl__types_E");
   E141 : Short_Integer; pragma Import (Ada, E141, "sdl__keyboard_E");
   E168 : Short_Integer; pragma Import (Ada, E168, "sdl__mutex_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "sdl__rwops_E");
   E125 : Short_Integer; pragma Import (Ada, E125, "sdl__audio_E");
   E146 : Short_Integer; pragma Import (Ada, E146, "sdl__video_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "sdl__mouse_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "sdl__events_E");
   E171 : Short_Integer; pragma Import (Ada, E171, "sdl_mixer_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E062 := E062 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "ada__text_io__finalize_spec");
      begin
         F1;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__file_io__finalize_body");
      begin
         E068 := E068 - 1;
         F2;
      end;
      E150 := E150 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "ada__strings__unbounded__finalize_spec");
      begin
         F3;
      end;
      E085 := E085 - 1;
      E099 := E099 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__file_control_block__finalize_spec");
      begin
         E083 := E083 - 1;
         F4;
      end;
      E095 := E095 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__pool_global__finalize_spec");
      begin
         F5;
      end;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__storage_pools__subpools__finalize_spec");
      begin
         F6;
      end;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__finalization_masters__finalize_spec");
      begin
         F7;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");
   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Zero_Cost_Exceptions : Integer;
      pragma Import (C, Zero_Cost_Exceptions, "__gl_zero_cost_exceptions");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");

      procedure Install_Handler;
      pragma Import (C, Install_Handler, "__gnat_install_handler");

      Handler_Installed : Integer;
      pragma Import (C, Handler_Installed, "__gnat_handler_installed");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Zero_Cost_Exceptions := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      if Handler_Installed = 0 then
         Install_Handler;
      end if;

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Fat_Flt'Elab_Spec;
      E182 := E182 + 1;
      System.Fat_Llf'Elab_Spec;
      E050 := E050 + 1;
      System.Exception_Table'Elab_Body;
      E019 := E019 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E073 := E073 + 1;
      Ada.Numerics'Elab_Spec;
      E047 := E047 + 1;
      Ada.Strings'Elab_Spec;
      E148 := E148 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E063 := E063 + 1;
      Interfaces.C'Elab_Spec;
      Interfaces.C.Strings'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E025 := E025 + 1;
      System.Finalization_Root'Elab_Spec;
      E072 := E072 + 1;
      Ada.Finalization'Elab_Spec;
      E070 := E070 + 1;
      System.Storage_Pools'Elab_Spec;
      E093 := E093 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Storage_Pools.Subpools'Elab_Spec;
      System.Pool_Global'Elab_Spec;
      E095 := E095 + 1;
      System.File_Control_Block'Elab_Spec;
      E083 := E083 + 1;
      E099 := E099 + 1;
      System.Finalization_Masters'Elab_Body;
      E085 := E085 + 1;
      E077 := E077 + 1;
      E075 := E075 + 1;
      Ada.Tags'Elab_Body;
      E054 := E054 + 1;
      E154 := E154 + 1;
      System.Soft_Links'Elab_Body;
      E013 := E013 + 1;
      System.Secondary_Stack'Elab_Body;
      E009 := E009 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E150 := E150 + 1;
      System.Os_Lib'Elab_Body;
      E080 := E080 + 1;
      System.File_Io'Elab_Body;
      E068 := E068 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E062 := E062 + 1;
      E118 := E118 + 1;
      SDL.BYTEORDER.EXTRA'ELAB_SPEC;
      E128 := E128 + 1;
      E135 := E135 + 1;
      SDL.TYPES'ELAB_SPEC;
      E132 := E132 + 1;
      E141 := E141 + 1;
      E168 := E168 + 1;
      E130 := E130 + 1;
      SDL.AUDIO'ELAB_BODY;
      E125 := E125 + 1;
      SDL.VIDEO'ELAB_SPEC;
      SDL.VIDEO'ELAB_BODY;
      E146 := E146 + 1;
      E144 := E144 + 1;
      E137 := E137 + 1;
      Sdl_Mixer'Elab_Body;
      E171 := E171 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_gears");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/gl_h.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/adagl.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/lib_c.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/sdl.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/sdl-byteorder.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/sdl-byteorder-extra.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/sdl-error.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/sdl-keysym.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/uintn_ptrops.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/sdl-types.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/sdl-active.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/sdl-joystick.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/sdl-keyboard.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/sdl-mutex.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/sdl-rwops.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/sdl-audio.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/sdl-timer.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/sdl-video.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/sdl-mouse.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/sdl-events.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/obj/sdl_mixer.o
   --   /home/avargas/local/prog_Ada/adasdl/Thin/demos/gears/obj/gears.o
   --   -L/home/avargas/local/prog_Ada/adasdl/Thin/demos/gears/obj/
   --   -L/home/avargas/local/prog_Ada/adasdl/Thin/obj/
   --   -L/home/avargas/gnat/lib/gcc/x86_64-pc-linux-gnu/4.5.4/adalib/
   --   -static
   --   -lgnat
--  END Object file/option list   

end ada_main;
