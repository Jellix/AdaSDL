pragma Ada_95;
with System;
package ada_main is
   pragma Warnings (Off);

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: GPL 2012 (20120509)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_eventrecsize" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#4597dff7#;
   pragma Export (C, u00001, "eventrecsizeB");
   u00002 : constant Version_32 := 16#3935bd10#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#e50e0229#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#129923ea#;
   pragma Export (C, u00004, "interfacesS");
   u00005 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00005, "interfaces__cB");
   u00006 : constant Version_32 := 16#f05a3eb1#;
   pragma Export (C, u00006, "interfaces__cS");
   u00007 : constant Version_32 := 16#ebcaf1b3#;
   pragma Export (C, u00007, "ada__exceptionsB");
   u00008 : constant Version_32 := 16#2bc1a577#;
   pragma Export (C, u00008, "ada__exceptionsS");
   u00009 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00009, "adaS");
   u00010 : constant Version_32 := 16#16173147#;
   pragma Export (C, u00010, "ada__exceptions__last_chance_handlerB");
   u00011 : constant Version_32 := 16#e3a511ca#;
   pragma Export (C, u00011, "ada__exceptions__last_chance_handlerS");
   u00012 : constant Version_32 := 16#eb6e42ba#;
   pragma Export (C, u00012, "systemS");
   u00013 : constant Version_32 := 16#0071025c#;
   pragma Export (C, u00013, "system__soft_linksB");
   u00014 : constant Version_32 := 16#7ad2d2f3#;
   pragma Export (C, u00014, "system__soft_linksS");
   u00015 : constant Version_32 := 16#27940d94#;
   pragma Export (C, u00015, "system__parametersB");
   u00016 : constant Version_32 := 16#5d8c4e7a#;
   pragma Export (C, u00016, "system__parametersS");
   u00017 : constant Version_32 := 16#17775d6d#;
   pragma Export (C, u00017, "system__secondary_stackB");
   u00018 : constant Version_32 := 16#ff006514#;
   pragma Export (C, u00018, "system__secondary_stackS");
   u00019 : constant Version_32 := 16#ace32e1e#;
   pragma Export (C, u00019, "system__storage_elementsB");
   u00020 : constant Version_32 := 16#11a33f22#;
   pragma Export (C, u00020, "system__storage_elementsS");
   u00021 : constant Version_32 := 16#4f750b3b#;
   pragma Export (C, u00021, "system__stack_checkingB");
   u00022 : constant Version_32 := 16#48ccfe96#;
   pragma Export (C, u00022, "system__stack_checkingS");
   u00023 : constant Version_32 := 16#7b9f0bae#;
   pragma Export (C, u00023, "system__exception_tableB");
   u00024 : constant Version_32 := 16#7a009e1f#;
   pragma Export (C, u00024, "system__exception_tableS");
   u00025 : constant Version_32 := 16#84debe5c#;
   pragma Export (C, u00025, "system__htableB");
   u00026 : constant Version_32 := 16#68c60cb4#;
   pragma Export (C, u00026, "system__htableS");
   u00027 : constant Version_32 := 16#8b7dad61#;
   pragma Export (C, u00027, "system__string_hashB");
   u00028 : constant Version_32 := 16#cdf29a2e#;
   pragma Export (C, u00028, "system__string_hashS");
   u00029 : constant Version_32 := 16#aad75561#;
   pragma Export (C, u00029, "system__exceptionsB");
   u00030 : constant Version_32 := 16#e7908a0d#;
   pragma Export (C, u00030, "system__exceptionsS");
   u00031 : constant Version_32 := 16#010db1dc#;
   pragma Export (C, u00031, "system__exceptions_debugB");
   u00032 : constant Version_32 := 16#d31e676e#;
   pragma Export (C, u00032, "system__exceptions_debugS");
   u00033 : constant Version_32 := 16#b012ff50#;
   pragma Export (C, u00033, "system__img_intB");
   u00034 : constant Version_32 := 16#e9b5a278#;
   pragma Export (C, u00034, "system__img_intS");
   u00035 : constant Version_32 := 16#dc8e33ed#;
   pragma Export (C, u00035, "system__tracebackB");
   u00036 : constant Version_32 := 16#8ae996cf#;
   pragma Export (C, u00036, "system__tracebackS");
   u00037 : constant Version_32 := 16#907d882f#;
   pragma Export (C, u00037, "system__wch_conB");
   u00038 : constant Version_32 := 16#54856c87#;
   pragma Export (C, u00038, "system__wch_conS");
   u00039 : constant Version_32 := 16#22fed88a#;
   pragma Export (C, u00039, "system__wch_stwB");
   u00040 : constant Version_32 := 16#79944086#;
   pragma Export (C, u00040, "system__wch_stwS");
   u00041 : constant Version_32 := 16#b8a9e30d#;
   pragma Export (C, u00041, "system__wch_cnvB");
   u00042 : constant Version_32 := 16#4a7bea51#;
   pragma Export (C, u00042, "system__wch_cnvS");
   u00043 : constant Version_32 := 16#75729fba#;
   pragma Export (C, u00043, "system__wch_jisB");
   u00044 : constant Version_32 := 16#1e097145#;
   pragma Export (C, u00044, "system__wch_jisS");
   u00045 : constant Version_32 := 16#ada34a87#;
   pragma Export (C, u00045, "system__traceback_entriesB");
   u00046 : constant Version_32 := 16#b94facfb#;
   pragma Export (C, u00046, "system__traceback_entriesS");
   u00047 : constant Version_32 := 16#2928f2bd#;
   pragma Export (C, u00047, "sdlS");
   u00048 : constant Version_32 := 16#7322aba7#;
   pragma Export (C, u00048, "sdl__eventsB");
   u00049 : constant Version_32 := 16#d54fe9fa#;
   pragma Export (C, u00049, "sdl__eventsS");
   u00050 : constant Version_32 := 16#5331c1d4#;
   pragma Export (C, u00050, "ada__tagsB");
   u00051 : constant Version_32 := 16#425ab8ea#;
   pragma Export (C, u00051, "ada__tagsS");
   u00052 : constant Version_32 := 16#818f1ecc#;
   pragma Export (C, u00052, "system__unsigned_typesS");
   u00053 : constant Version_32 := 16#68f8d5f8#;
   pragma Export (C, u00053, "system__val_lluB");
   u00054 : constant Version_32 := 16#fb7d49be#;
   pragma Export (C, u00054, "system__val_lluS");
   u00055 : constant Version_32 := 16#46a1f7a9#;
   pragma Export (C, u00055, "system__val_utilB");
   u00056 : constant Version_32 := 16#e0c3d7a5#;
   pragma Export (C, u00056, "system__val_utilS");
   u00057 : constant Version_32 := 16#b7fa72e7#;
   pragma Export (C, u00057, "system__case_utilB");
   u00058 : constant Version_32 := 16#46722232#;
   pragma Export (C, u00058, "system__case_utilS");
   u00059 : constant Version_32 := 16#e95f122a#;
   pragma Export (C, u00059, "sdl__activeS");
   u00060 : constant Version_32 := 16#b7a30c7a#;
   pragma Export (C, u00060, "sdl__typesB");
   u00061 : constant Version_32 := 16#dcfbce54#;
   pragma Export (C, u00061, "sdl__typesS");
   u00062 : constant Version_32 := 16#d0ec7eb9#;
   pragma Export (C, u00062, "interfaces__c__extensionsS");
   u00063 : constant Version_32 := 16#e4d3df20#;
   pragma Export (C, u00063, "interfaces__c__stringsB");
   u00064 : constant Version_32 := 16#603c1c44#;
   pragma Export (C, u00064, "interfaces__c__stringsS");
   u00065 : constant Version_32 := 16#2272d3fc#;
   pragma Export (C, u00065, "uintn_ptropsS");
   u00066 : constant Version_32 := 16#0ce638fc#;
   pragma Export (C, u00066, "sdl__joystickS");
   u00067 : constant Version_32 := 16#1400b4b2#;
   pragma Export (C, u00067, "sdl__keyboardB");
   u00068 : constant Version_32 := 16#9dc7ad0f#;
   pragma Export (C, u00068, "sdl__keyboardS");
   u00069 : constant Version_32 := 16#1cf9c106#;
   pragma Export (C, u00069, "sdl__keysymS");
   u00070 : constant Version_32 := 16#dc887efa#;
   pragma Export (C, u00070, "sdl__mouseB");
   u00071 : constant Version_32 := 16#0af09497#;
   pragma Export (C, u00071, "sdl__mouseS");
   u00072 : constant Version_32 := 16#c51ff6c7#;
   pragma Export (C, u00072, "sdl__videoB");
   u00073 : constant Version_32 := 16#f7545f0e#;
   pragma Export (C, u00073, "sdl__videoS");
   u00074 : constant Version_32 := 16#8fc99891#;
   pragma Export (C, u00074, "lib_cS");
   u00075 : constant Version_32 := 16#af50e98f#;
   pragma Export (C, u00075, "ada__stringsS");
   u00076 : constant Version_32 := 16#261c554b#;
   pragma Export (C, u00076, "ada__strings__unboundedB");
   u00077 : constant Version_32 := 16#2bf53506#;
   pragma Export (C, u00077, "ada__strings__unboundedS");
   u00078 : constant Version_32 := 16#00363e01#;
   pragma Export (C, u00078, "ada__strings__searchB");
   u00079 : constant Version_32 := 16#b5a8c1d6#;
   pragma Export (C, u00079, "ada__strings__searchS");
   u00080 : constant Version_32 := 16#96e9c1e7#;
   pragma Export (C, u00080, "ada__strings__mapsB");
   u00081 : constant Version_32 := 16#24318e4c#;
   pragma Export (C, u00081, "ada__strings__mapsS");
   u00082 : constant Version_32 := 16#9ffb82dd#;
   pragma Export (C, u00082, "system__bit_opsB");
   u00083 : constant Version_32 := 16#c30e4013#;
   pragma Export (C, u00083, "system__bit_opsS");
   u00084 : constant Version_32 := 16#12c24a43#;
   pragma Export (C, u00084, "ada__charactersS");
   u00085 : constant Version_32 := 16#051b1b7b#;
   pragma Export (C, u00085, "ada__characters__latin_1S");
   u00086 : constant Version_32 := 16#c4857ee1#;
   pragma Export (C, u00086, "system__compare_array_unsigned_8B");
   u00087 : constant Version_32 := 16#3155b477#;
   pragma Export (C, u00087, "system__compare_array_unsigned_8S");
   u00088 : constant Version_32 := 16#9d3d925a#;
   pragma Export (C, u00088, "system__address_operationsB");
   u00089 : constant Version_32 := 16#2b10ab2d#;
   pragma Export (C, u00089, "system__address_operationsS");
   u00090 : constant Version_32 := 16#17551a52#;
   pragma Export (C, u00090, "system__storage_pools__subpoolsB");
   u00091 : constant Version_32 := 16#738e4bc9#;
   pragma Export (C, u00091, "system__storage_pools__subpoolsS");
   u00092 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00092, "system__address_imageB");
   u00093 : constant Version_32 := 16#4a82df80#;
   pragma Export (C, u00093, "system__address_imageS");
   u00094 : constant Version_32 := 16#6d35da9a#;
   pragma Export (C, u00094, "system__finalization_mastersB");
   u00095 : constant Version_32 := 16#819bee96#;
   pragma Export (C, u00095, "system__finalization_mastersS");
   u00096 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00096, "system__img_boolB");
   u00097 : constant Version_32 := 16#1eb73351#;
   pragma Export (C, u00097, "system__img_boolS");
   u00098 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00098, "system__ioB");
   u00099 : constant Version_32 := 16#752cb5f5#;
   pragma Export (C, u00099, "system__ioS");
   u00100 : constant Version_32 := 16#8cbe6205#;
   pragma Export (C, u00100, "ada__finalizationB");
   u00101 : constant Version_32 := 16#22e22193#;
   pragma Export (C, u00101, "ada__finalizationS");
   u00102 : constant Version_32 := 16#1358602f#;
   pragma Export (C, u00102, "ada__streamsS");
   u00103 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00103, "system__finalization_rootB");
   u00104 : constant Version_32 := 16#a49c312a#;
   pragma Export (C, u00104, "system__finalization_rootS");
   u00105 : constant Version_32 := 16#a7a37cb6#;
   pragma Export (C, u00105, "system__storage_poolsB");
   u00106 : constant Version_32 := 16#38c05dd7#;
   pragma Export (C, u00106, "system__storage_poolsS");
   u00107 : constant Version_32 := 16#3b8ad87b#;
   pragma Export (C, u00107, "system__atomic_countersB");
   u00108 : constant Version_32 := 16#a1f22e0e#;
   pragma Export (C, u00108, "system__atomic_countersS");
   u00109 : constant Version_32 := 16#a6e358bc#;
   pragma Export (C, u00109, "system__stream_attributesB");
   u00110 : constant Version_32 := 16#e89b4b3f#;
   pragma Export (C, u00110, "system__stream_attributesS");
   u00111 : constant Version_32 := 16#b46168d5#;
   pragma Export (C, u00111, "ada__io_exceptionsS");
   u00112 : constant Version_32 := 16#bdf43a60#;
   pragma Export (C, u00112, "sdl__mutexB");
   u00113 : constant Version_32 := 16#cb532399#;
   pragma Export (C, u00113, "sdl__mutexS");
   u00114 : constant Version_32 := 16#2fe45b60#;
   pragma Export (C, u00114, "sdl__rwopsB");
   u00115 : constant Version_32 := 16#59b74d55#;
   pragma Export (C, u00115, "sdl__rwopsS");
   u00116 : constant Version_32 := 16#7a48d8b1#;
   pragma Export (C, u00116, "interfaces__c_streamsB");
   u00117 : constant Version_32 := 16#a539be81#;
   pragma Export (C, u00117, "interfaces__c_streamsS");
   u00118 : constant Version_32 := 16#f1fbff23#;
   pragma Export (C, u00118, "system__crtlS");
   u00119 : constant Version_32 := 16#7dbbd31d#;
   pragma Export (C, u00119, "text_ioS");
   u00120 : constant Version_32 := 16#bc0fac87#;
   pragma Export (C, u00120, "ada__text_ioB");
   u00121 : constant Version_32 := 16#b01682d7#;
   pragma Export (C, u00121, "ada__text_ioS");
   u00122 : constant Version_32 := 16#4a803ccf#;
   pragma Export (C, u00122, "system__file_ioB");
   u00123 : constant Version_32 := 16#e6194557#;
   pragma Export (C, u00123, "system__file_ioS");
   u00124 : constant Version_32 := 16#a50435f4#;
   pragma Export (C, u00124, "system__crtl__runtimeS");
   u00125 : constant Version_32 := 16#f4d04ad4#;
   pragma Export (C, u00125, "system__os_libB");
   u00126 : constant Version_32 := 16#a6d80a38#;
   pragma Export (C, u00126, "system__os_libS");
   u00127 : constant Version_32 := 16#4cd8aca0#;
   pragma Export (C, u00127, "system__stringsB");
   u00128 : constant Version_32 := 16#5c84087e#;
   pragma Export (C, u00128, "system__stringsS");
   u00129 : constant Version_32 := 16#3451ac80#;
   pragma Export (C, u00129, "system__file_control_blockS");
   u00130 : constant Version_32 := 16#ba5d60c7#;
   pragma Export (C, u00130, "system__pool_globalB");
   u00131 : constant Version_32 := 16#d56df0a6#;
   pragma Export (C, u00131, "system__pool_globalS");
   u00132 : constant Version_32 := 16#733fc7cf#;
   pragma Export (C, u00132, "system__memoryB");
   u00133 : constant Version_32 := 16#21e5feaf#;
   pragma Export (C, u00133, "system__memoryS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.atomic_counters%s
   --  system.atomic_counters%b
   --  system.case_util%s
   --  system.case_util%b
   --  system.htable%s
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.io%s
   --  system.io%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.soft_links%s
   --  system.unsigned_types%s
   --  system.val_llu%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_llu%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  system.address_image%s
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.compare_array_unsigned_8%s
   --  system.compare_array_unsigned_8%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.strings.maps%s
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.tags%s
   --  ada.streams%s
   --  interfaces.c%s
   --  interfaces.c.extensions%s
   --  interfaces.c.strings%s
   --  system.crtl.runtime%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.storage_pools.subpools%s
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.secondary_stack%s
   --  system.storage_pools.subpools%b
   --  system.finalization_masters%b
   --  interfaces.c.strings%b
   --  interfaces.c%b
   --  ada.tags%b
   --  ada.strings.maps%b
   --  system.soft_links%b
   --  system.secondary_stack%b
   --  system.address_image%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  system.os_lib%s
   --  system.os_lib%b
   --  system.file_io%b
   --  system.traceback%s
   --  ada.exceptions%b
   --  system.traceback%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  text_io%s
   --  lib_c%s
   --  sdl%s
   --  sdl.keysym%s
   --  uintn_ptrops%s
   --  sdl.types%s
   --  sdl.types%b
   --  sdl.active%s
   --  sdl.joystick%s
   --  sdl.keyboard%s
   --  sdl.keyboard%b
   --  sdl.mutex%s
   --  sdl.mutex%b
   --  sdl.rwops%s
   --  sdl.rwops%b
   --  sdl.video%s
   --  sdl.video%b
   --  sdl.mouse%s
   --  sdl.mouse%b
   --  sdl.events%s
   --  sdl.events%b
   --  eventrecsize%b
   --  END ELABORATION ORDER


end ada_main;
