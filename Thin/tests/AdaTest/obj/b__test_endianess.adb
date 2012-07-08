pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__test_endianess.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__test_endianess.adb");
with Ada.Exceptions;

package body ada_main is
   pragma Warnings (Off);

   E13 : Short_Integer; pragma Import (Ada, E13, "system__soft_links_E");
   E23 : Short_Integer; pragma Import (Ada, E23, "system__exception_table_E");
   E66 : Short_Integer; pragma Import (Ada, E66, "ada__io_exceptions_E");
   E49 : Short_Integer; pragma Import (Ada, E49, "ada__tags_E");
   E47 : Short_Integer; pragma Import (Ada, E47, "ada__streams_E");
   E68 : Short_Integer; pragma Import (Ada, E68, "interfaces__c_E");
   E70 : Short_Integer; pragma Import (Ada, E70, "interfaces__c__strings_E");
   E29 : Short_Integer; pragma Import (Ada, E29, "system__exceptions_E");
   E65 : Short_Integer; pragma Import (Ada, E65, "system__finalization_root_E");
   E63 : Short_Integer; pragma Import (Ada, E63, "ada__finalization_E");
   E86 : Short_Integer; pragma Import (Ada, E86, "system__storage_pools_E");
   E78 : Short_Integer; pragma Import (Ada, E78, "system__finalization_masters_E");
   E92 : Short_Integer; pragma Import (Ada, E92, "system__storage_pools__subpools_E");
   E88 : Short_Integer; pragma Import (Ada, E88, "system__pool_global_E");
   E76 : Short_Integer; pragma Import (Ada, E76, "system__file_control_block_E");
   E61 : Short_Integer; pragma Import (Ada, E61, "system__file_io_E");
   E17 : Short_Integer; pragma Import (Ada, E17, "system__secondary_stack_E");
   E73 : Short_Integer; pragma Import (Ada, E73, "system__os_lib_E");
   E06 : Short_Integer; pragma Import (Ada, E06, "ada__text_io_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E06 := E06 - 1;
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
         E61 := E61 - 1;
         F2;
      end;
      E78 := E78 - 1;
      E92 := E92 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "system__file_control_block__finalize_spec");
      begin
         E76 := E76 - 1;
         F3;
      end;
      E88 := E88 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__pool_global__finalize_spec");
      begin
         F4;
      end;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__storage_pools__subpools__finalize_spec");
      begin
         F5;
      end;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__finalization_masters__finalize_spec");
      begin
         F6;
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
      System.Exception_Table'Elab_Body;
      E23 := E23 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E66 := E66 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E47 := E47 + 1;
      Interfaces.C'Elab_Spec;
      Interfaces.C.Strings'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E29 := E29 + 1;
      System.Finalization_Root'Elab_Spec;
      E65 := E65 + 1;
      Ada.Finalization'Elab_Spec;
      E63 := E63 + 1;
      System.Storage_Pools'Elab_Spec;
      E86 := E86 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Storage_Pools.Subpools'Elab_Spec;
      System.Pool_Global'Elab_Spec;
      E88 := E88 + 1;
      System.File_Control_Block'Elab_Spec;
      E76 := E76 + 1;
      E92 := E92 + 1;
      System.Finalization_Masters'Elab_Body;
      E78 := E78 + 1;
      E70 := E70 + 1;
      E68 := E68 + 1;
      Ada.Tags'Elab_Body;
      E49 := E49 + 1;
      System.Soft_Links'Elab_Body;
      E13 := E13 + 1;
      System.Secondary_Stack'Elab_Body;
      E17 := E17 + 1;
      System.Os_Lib'Elab_Body;
      E73 := E73 + 1;
      System.File_Io'Elab_Body;
      E61 := E61 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E06 := E06 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_test_endianess");

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
   --   /home/avargas/local/prog_Ada/adasdl/Thin/tests/AdaTest/obj/test_endianess.o
   --   -L/home/avargas/local/prog_Ada/adasdl/Thin/tests/AdaTest/obj/
   --   -L/home/avargas/local/prog_Ada/adasdl/Thin/AdaSDL/obj/
   --   -L/home/avargas/gnat/lib/gcc/x86_64-pc-linux-gnu/4.5.4/adalib/
   --   -static
   --   -lgnat
--  END Object file/option list   

end ada_main;
