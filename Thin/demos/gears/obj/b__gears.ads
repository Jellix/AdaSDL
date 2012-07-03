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

   Ada_Main_Program_Name : constant String := "_ada_gears" & ASCII.NUL;
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
   u00001 : constant Version_32 := 16#6ab645f8#;
   pragma Export (C, u00001, "gearsB");
   u00002 : constant Version_32 := 16#3935bd10#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#e50e0229#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#2c2cb25a#;
   pragma Export (C, u00005, "ada__command_lineB");
   u00006 : constant Version_32 := 16#df5044bd#;
   pragma Export (C, u00006, "ada__command_lineS");
   u00007 : constant Version_32 := 16#eb6e42ba#;
   pragma Export (C, u00007, "systemS");
   u00008 : constant Version_32 := 16#17775d6d#;
   pragma Export (C, u00008, "system__secondary_stackB");
   u00009 : constant Version_32 := 16#ff006514#;
   pragma Export (C, u00009, "system__secondary_stackS");
   u00010 : constant Version_32 := 16#27940d94#;
   pragma Export (C, u00010, "system__parametersB");
   u00011 : constant Version_32 := 16#5d8c4e7a#;
   pragma Export (C, u00011, "system__parametersS");
   u00012 : constant Version_32 := 16#0071025c#;
   pragma Export (C, u00012, "system__soft_linksB");
   u00013 : constant Version_32 := 16#7ad2d2f3#;
   pragma Export (C, u00013, "system__soft_linksS");
   u00014 : constant Version_32 := 16#ebcaf1b3#;
   pragma Export (C, u00014, "ada__exceptionsB");
   u00015 : constant Version_32 := 16#2bc1a577#;
   pragma Export (C, u00015, "ada__exceptionsS");
   u00016 : constant Version_32 := 16#16173147#;
   pragma Export (C, u00016, "ada__exceptions__last_chance_handlerB");
   u00017 : constant Version_32 := 16#e3a511ca#;
   pragma Export (C, u00017, "ada__exceptions__last_chance_handlerS");
   u00018 : constant Version_32 := 16#7b9f0bae#;
   pragma Export (C, u00018, "system__exception_tableB");
   u00019 : constant Version_32 := 16#7a009e1f#;
   pragma Export (C, u00019, "system__exception_tableS");
   u00020 : constant Version_32 := 16#84debe5c#;
   pragma Export (C, u00020, "system__htableB");
   u00021 : constant Version_32 := 16#68c60cb4#;
   pragma Export (C, u00021, "system__htableS");
   u00022 : constant Version_32 := 16#8b7dad61#;
   pragma Export (C, u00022, "system__string_hashB");
   u00023 : constant Version_32 := 16#cdf29a2e#;
   pragma Export (C, u00023, "system__string_hashS");
   u00024 : constant Version_32 := 16#aad75561#;
   pragma Export (C, u00024, "system__exceptionsB");
   u00025 : constant Version_32 := 16#e7908a0d#;
   pragma Export (C, u00025, "system__exceptionsS");
   u00026 : constant Version_32 := 16#010db1dc#;
   pragma Export (C, u00026, "system__exceptions_debugB");
   u00027 : constant Version_32 := 16#d31e676e#;
   pragma Export (C, u00027, "system__exceptions_debugS");
   u00028 : constant Version_32 := 16#b012ff50#;
   pragma Export (C, u00028, "system__img_intB");
   u00029 : constant Version_32 := 16#e9b5a278#;
   pragma Export (C, u00029, "system__img_intS");
   u00030 : constant Version_32 := 16#ace32e1e#;
   pragma Export (C, u00030, "system__storage_elementsB");
   u00031 : constant Version_32 := 16#11a33f22#;
   pragma Export (C, u00031, "system__storage_elementsS");
   u00032 : constant Version_32 := 16#dc8e33ed#;
   pragma Export (C, u00032, "system__tracebackB");
   u00033 : constant Version_32 := 16#8ae996cf#;
   pragma Export (C, u00033, "system__tracebackS");
   u00034 : constant Version_32 := 16#907d882f#;
   pragma Export (C, u00034, "system__wch_conB");
   u00035 : constant Version_32 := 16#54856c87#;
   pragma Export (C, u00035, "system__wch_conS");
   u00036 : constant Version_32 := 16#22fed88a#;
   pragma Export (C, u00036, "system__wch_stwB");
   u00037 : constant Version_32 := 16#79944086#;
   pragma Export (C, u00037, "system__wch_stwS");
   u00038 : constant Version_32 := 16#b8a9e30d#;
   pragma Export (C, u00038, "system__wch_cnvB");
   u00039 : constant Version_32 := 16#4a7bea51#;
   pragma Export (C, u00039, "system__wch_cnvS");
   u00040 : constant Version_32 := 16#129923ea#;
   pragma Export (C, u00040, "interfacesS");
   u00041 : constant Version_32 := 16#75729fba#;
   pragma Export (C, u00041, "system__wch_jisB");
   u00042 : constant Version_32 := 16#1e097145#;
   pragma Export (C, u00042, "system__wch_jisS");
   u00043 : constant Version_32 := 16#ada34a87#;
   pragma Export (C, u00043, "system__traceback_entriesB");
   u00044 : constant Version_32 := 16#b94facfb#;
   pragma Export (C, u00044, "system__traceback_entriesS");
   u00045 : constant Version_32 := 16#4f750b3b#;
   pragma Export (C, u00045, "system__stack_checkingB");
   u00046 : constant Version_32 := 16#48ccfe96#;
   pragma Export (C, u00046, "system__stack_checkingS");
   u00047 : constant Version_32 := 16#84ad4a42#;
   pragma Export (C, u00047, "ada__numericsS");
   u00048 : constant Version_32 := 16#3e0cf54d#;
   pragma Export (C, u00048, "ada__numerics__auxB");
   u00049 : constant Version_32 := 16#9f6e24ed#;
   pragma Export (C, u00049, "ada__numerics__auxS");
   u00050 : constant Version_32 := 16#34559c8a#;
   pragma Export (C, u00050, "system__fat_llfS");
   u00051 : constant Version_32 := 16#818f1ecc#;
   pragma Export (C, u00051, "system__unsigned_typesS");
   u00052 : constant Version_32 := 16#e4d53974#;
   pragma Export (C, u00052, "system__machine_codeS");
   u00053 : constant Version_32 := 16#5331c1d4#;
   pragma Export (C, u00053, "ada__tagsB");
   u00054 : constant Version_32 := 16#425ab8ea#;
   pragma Export (C, u00054, "ada__tagsS");
   u00055 : constant Version_32 := 16#68f8d5f8#;
   pragma Export (C, u00055, "system__val_lluB");
   u00056 : constant Version_32 := 16#fb7d49be#;
   pragma Export (C, u00056, "system__val_lluS");
   u00057 : constant Version_32 := 16#46a1f7a9#;
   pragma Export (C, u00057, "system__val_utilB");
   u00058 : constant Version_32 := 16#e0c3d7a5#;
   pragma Export (C, u00058, "system__val_utilS");
   u00059 : constant Version_32 := 16#b7fa72e7#;
   pragma Export (C, u00059, "system__case_utilB");
   u00060 : constant Version_32 := 16#46722232#;
   pragma Export (C, u00060, "system__case_utilS");
   u00061 : constant Version_32 := 16#bc0fac87#;
   pragma Export (C, u00061, "ada__text_ioB");
   u00062 : constant Version_32 := 16#b01682d7#;
   pragma Export (C, u00062, "ada__text_ioS");
   u00063 : constant Version_32 := 16#1358602f#;
   pragma Export (C, u00063, "ada__streamsS");
   u00064 : constant Version_32 := 16#7a48d8b1#;
   pragma Export (C, u00064, "interfaces__c_streamsB");
   u00065 : constant Version_32 := 16#a539be81#;
   pragma Export (C, u00065, "interfaces__c_streamsS");
   u00066 : constant Version_32 := 16#f1fbff23#;
   pragma Export (C, u00066, "system__crtlS");
   u00067 : constant Version_32 := 16#4a803ccf#;
   pragma Export (C, u00067, "system__file_ioB");
   u00068 : constant Version_32 := 16#e6194557#;
   pragma Export (C, u00068, "system__file_ioS");
   u00069 : constant Version_32 := 16#8cbe6205#;
   pragma Export (C, u00069, "ada__finalizationB");
   u00070 : constant Version_32 := 16#22e22193#;
   pragma Export (C, u00070, "ada__finalizationS");
   u00071 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00071, "system__finalization_rootB");
   u00072 : constant Version_32 := 16#a49c312a#;
   pragma Export (C, u00072, "system__finalization_rootS");
   u00073 : constant Version_32 := 16#b46168d5#;
   pragma Export (C, u00073, "ada__io_exceptionsS");
   u00074 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00074, "interfaces__cB");
   u00075 : constant Version_32 := 16#f05a3eb1#;
   pragma Export (C, u00075, "interfaces__cS");
   u00076 : constant Version_32 := 16#e4d3df20#;
   pragma Export (C, u00076, "interfaces__c__stringsB");
   u00077 : constant Version_32 := 16#603c1c44#;
   pragma Export (C, u00077, "interfaces__c__stringsS");
   u00078 : constant Version_32 := 16#a50435f4#;
   pragma Export (C, u00078, "system__crtl__runtimeS");
   u00079 : constant Version_32 := 16#f4d04ad4#;
   pragma Export (C, u00079, "system__os_libB");
   u00080 : constant Version_32 := 16#a6d80a38#;
   pragma Export (C, u00080, "system__os_libS");
   u00081 : constant Version_32 := 16#4cd8aca0#;
   pragma Export (C, u00081, "system__stringsB");
   u00082 : constant Version_32 := 16#5c84087e#;
   pragma Export (C, u00082, "system__stringsS");
   u00083 : constant Version_32 := 16#3451ac80#;
   pragma Export (C, u00083, "system__file_control_blockS");
   u00084 : constant Version_32 := 16#6d35da9a#;
   pragma Export (C, u00084, "system__finalization_mastersB");
   u00085 : constant Version_32 := 16#819bee96#;
   pragma Export (C, u00085, "system__finalization_mastersS");
   u00086 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00086, "system__address_imageB");
   u00087 : constant Version_32 := 16#4a82df80#;
   pragma Export (C, u00087, "system__address_imageS");
   u00088 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00088, "system__img_boolB");
   u00089 : constant Version_32 := 16#1eb73351#;
   pragma Export (C, u00089, "system__img_boolS");
   u00090 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00090, "system__ioB");
   u00091 : constant Version_32 := 16#752cb5f5#;
   pragma Export (C, u00091, "system__ioS");
   u00092 : constant Version_32 := 16#a7a37cb6#;
   pragma Export (C, u00092, "system__storage_poolsB");
   u00093 : constant Version_32 := 16#38c05dd7#;
   pragma Export (C, u00093, "system__storage_poolsS");
   u00094 : constant Version_32 := 16#ba5d60c7#;
   pragma Export (C, u00094, "system__pool_globalB");
   u00095 : constant Version_32 := 16#d56df0a6#;
   pragma Export (C, u00095, "system__pool_globalS");
   u00096 : constant Version_32 := 16#733fc7cf#;
   pragma Export (C, u00096, "system__memoryB");
   u00097 : constant Version_32 := 16#21e5feaf#;
   pragma Export (C, u00097, "system__memoryS");
   u00098 : constant Version_32 := 16#17551a52#;
   pragma Export (C, u00098, "system__storage_pools__subpoolsB");
   u00099 : constant Version_32 := 16#738e4bc9#;
   pragma Export (C, u00099, "system__storage_pools__subpoolsS");
   u00100 : constant Version_32 := 16#d5f9759f#;
   pragma Export (C, u00100, "ada__text_io__float_auxB");
   u00101 : constant Version_32 := 16#f854caf5#;
   pragma Export (C, u00101, "ada__text_io__float_auxS");
   u00102 : constant Version_32 := 16#515dc0e3#;
   pragma Export (C, u00102, "ada__text_io__generic_auxB");
   u00103 : constant Version_32 := 16#a6c327d3#;
   pragma Export (C, u00103, "ada__text_io__generic_auxS");
   u00104 : constant Version_32 := 16#6d0081c3#;
   pragma Export (C, u00104, "system__img_realB");
   u00105 : constant Version_32 := 16#2cc61358#;
   pragma Export (C, u00105, "system__img_realS");
   u00106 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00106, "system__float_controlB");
   u00107 : constant Version_32 := 16#0b920186#;
   pragma Export (C, u00107, "system__float_controlS");
   u00108 : constant Version_32 := 16#06417083#;
   pragma Export (C, u00108, "system__img_lluB");
   u00109 : constant Version_32 := 16#c8461e0f#;
   pragma Export (C, u00109, "system__img_lluS");
   u00110 : constant Version_32 := 16#194ccd7b#;
   pragma Export (C, u00110, "system__img_unsB");
   u00111 : constant Version_32 := 16#1e7b223b#;
   pragma Export (C, u00111, "system__img_unsS");
   u00112 : constant Version_32 := 16#bb1e24cd#;
   pragma Export (C, u00112, "system__powten_tableS");
   u00113 : constant Version_32 := 16#730c1f82#;
   pragma Export (C, u00113, "system__val_realB");
   u00114 : constant Version_32 := 16#154735ab#;
   pragma Export (C, u00114, "system__val_realS");
   u00115 : constant Version_32 := 16#0be1b996#;
   pragma Export (C, u00115, "system__exn_llfB");
   u00116 : constant Version_32 := 16#6aea5c55#;
   pragma Export (C, u00116, "system__exn_llfS");
   u00117 : constant Version_32 := 16#5e6cdfca#;
   pragma Export (C, u00117, "adaglB");
   u00118 : constant Version_32 := 16#0bf21c65#;
   pragma Export (C, u00118, "adaglS");
   u00119 : constant Version_32 := 16#d864b994#;
   pragma Export (C, u00119, "gl_hS");
   u00120 : constant Version_32 := 16#d0ec7eb9#;
   pragma Export (C, u00120, "interfaces__c__extensionsS");
   u00121 : constant Version_32 := 16#fd2ad2f1#;
   pragma Export (C, u00121, "gnatS");
   u00122 : constant Version_32 := 16#10f589ff#;
   pragma Export (C, u00122, "gnat__os_libS");
   u00123 : constant Version_32 := 16#2928f2bd#;
   pragma Export (C, u00123, "sdlS");
   u00124 : constant Version_32 := 16#1263b881#;
   pragma Export (C, u00124, "sdl__audioB");
   u00125 : constant Version_32 := 16#f6371249#;
   pragma Export (C, u00125, "sdl__audioS");
   u00126 : constant Version_32 := 16#dfa95169#;
   pragma Export (C, u00126, "sdl__byteorderB");
   u00127 : constant Version_32 := 16#a80e7cff#;
   pragma Export (C, u00127, "sdl__byteorderS");
   u00128 : constant Version_32 := 16#9369a243#;
   pragma Export (C, u00128, "sdl__byteorder__extraS");
   u00129 : constant Version_32 := 16#2fe45b60#;
   pragma Export (C, u00129, "sdl__rwopsB");
   u00130 : constant Version_32 := 16#59b74d55#;
   pragma Export (C, u00130, "sdl__rwopsS");
   u00131 : constant Version_32 := 16#b7a30c7a#;
   pragma Export (C, u00131, "sdl__typesB");
   u00132 : constant Version_32 := 16#dcfbce54#;
   pragma Export (C, u00132, "sdl__typesS");
   u00133 : constant Version_32 := 16#2272d3fc#;
   pragma Export (C, u00133, "uintn_ptropsS");
   u00134 : constant Version_32 := 16#3c157e62#;
   pragma Export (C, u00134, "sdl__errorB");
   u00135 : constant Version_32 := 16#9152872b#;
   pragma Export (C, u00135, "sdl__errorS");
   u00136 : constant Version_32 := 16#7322aba7#;
   pragma Export (C, u00136, "sdl__eventsB");
   u00137 : constant Version_32 := 16#d54fe9fa#;
   pragma Export (C, u00137, "sdl__eventsS");
   u00138 : constant Version_32 := 16#e95f122a#;
   pragma Export (C, u00138, "sdl__activeS");
   u00139 : constant Version_32 := 16#0ce638fc#;
   pragma Export (C, u00139, "sdl__joystickS");
   u00140 : constant Version_32 := 16#1400b4b2#;
   pragma Export (C, u00140, "sdl__keyboardB");
   u00141 : constant Version_32 := 16#9dc7ad0f#;
   pragma Export (C, u00141, "sdl__keyboardS");
   u00142 : constant Version_32 := 16#1cf9c106#;
   pragma Export (C, u00142, "sdl__keysymS");
   u00143 : constant Version_32 := 16#dc887efa#;
   pragma Export (C, u00143, "sdl__mouseB");
   u00144 : constant Version_32 := 16#3f052246#;
   pragma Export (C, u00144, "sdl__mouseS");
   u00145 : constant Version_32 := 16#f0ea4016#;
   pragma Export (C, u00145, "sdl__videoB");
   u00146 : constant Version_32 := 16#c2a1e9df#;
   pragma Export (C, u00146, "sdl__videoS");
   u00147 : constant Version_32 := 16#8fc99891#;
   pragma Export (C, u00147, "lib_cS");
   u00148 : constant Version_32 := 16#af50e98f#;
   pragma Export (C, u00148, "ada__stringsS");
   u00149 : constant Version_32 := 16#261c554b#;
   pragma Export (C, u00149, "ada__strings__unboundedB");
   u00150 : constant Version_32 := 16#2bf53506#;
   pragma Export (C, u00150, "ada__strings__unboundedS");
   u00151 : constant Version_32 := 16#00363e01#;
   pragma Export (C, u00151, "ada__strings__searchB");
   u00152 : constant Version_32 := 16#b5a8c1d6#;
   pragma Export (C, u00152, "ada__strings__searchS");
   u00153 : constant Version_32 := 16#96e9c1e7#;
   pragma Export (C, u00153, "ada__strings__mapsB");
   u00154 : constant Version_32 := 16#24318e4c#;
   pragma Export (C, u00154, "ada__strings__mapsS");
   u00155 : constant Version_32 := 16#9ffb82dd#;
   pragma Export (C, u00155, "system__bit_opsB");
   u00156 : constant Version_32 := 16#c30e4013#;
   pragma Export (C, u00156, "system__bit_opsS");
   u00157 : constant Version_32 := 16#12c24a43#;
   pragma Export (C, u00157, "ada__charactersS");
   u00158 : constant Version_32 := 16#051b1b7b#;
   pragma Export (C, u00158, "ada__characters__latin_1S");
   u00159 : constant Version_32 := 16#c4857ee1#;
   pragma Export (C, u00159, "system__compare_array_unsigned_8B");
   u00160 : constant Version_32 := 16#3155b477#;
   pragma Export (C, u00160, "system__compare_array_unsigned_8S");
   u00161 : constant Version_32 := 16#9d3d925a#;
   pragma Export (C, u00161, "system__address_operationsB");
   u00162 : constant Version_32 := 16#2b10ab2d#;
   pragma Export (C, u00162, "system__address_operationsS");
   u00163 : constant Version_32 := 16#3b8ad87b#;
   pragma Export (C, u00163, "system__atomic_countersB");
   u00164 : constant Version_32 := 16#a1f22e0e#;
   pragma Export (C, u00164, "system__atomic_countersS");
   u00165 : constant Version_32 := 16#a6e358bc#;
   pragma Export (C, u00165, "system__stream_attributesB");
   u00166 : constant Version_32 := 16#e89b4b3f#;
   pragma Export (C, u00166, "system__stream_attributesS");
   u00167 : constant Version_32 := 16#bdf43a60#;
   pragma Export (C, u00167, "sdl__mutexB");
   u00168 : constant Version_32 := 16#cb532399#;
   pragma Export (C, u00168, "sdl__mutexS");
   u00169 : constant Version_32 := 16#6238603e#;
   pragma Export (C, u00169, "sdl__timerS");
   u00170 : constant Version_32 := 16#bb78eb25#;
   pragma Export (C, u00170, "sdl_mixerB");
   u00171 : constant Version_32 := 16#1c9a1b1d#;
   pragma Export (C, u00171, "sdl_mixerS");
   u00172 : constant Version_32 := 16#39591e91#;
   pragma Export (C, u00172, "system__concat_2B");
   u00173 : constant Version_32 := 16#10beb046#;
   pragma Export (C, u00173, "system__concat_2S");
   u00174 : constant Version_32 := 16#3493e6c0#;
   pragma Export (C, u00174, "system__concat_4B");
   u00175 : constant Version_32 := 16#e931a104#;
   pragma Export (C, u00175, "system__concat_4S");
   u00176 : constant Version_32 := 16#ae97ef6c#;
   pragma Export (C, u00176, "system__concat_3B");
   u00177 : constant Version_32 := 16#9d4440d0#;
   pragma Export (C, u00177, "system__concat_3S");
   u00178 : constant Version_32 := 16#def1dd00#;
   pragma Export (C, u00178, "system__concat_5B");
   u00179 : constant Version_32 := 16#fb578c1b#;
   pragma Export (C, u00179, "system__concat_5S");
   u00180 : constant Version_32 := 16#c9fdc962#;
   pragma Export (C, u00180, "system__concat_6B");
   u00181 : constant Version_32 := 16#2ca4b7ae#;
   pragma Export (C, u00181, "system__concat_6S");
   u00182 : constant Version_32 := 16#68b73b6d#;
   pragma Export (C, u00182, "system__fat_fltS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  ada.command_line%s
   --  gnat%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.atomic_counters%s
   --  system.atomic_counters%b
   --  system.case_util%s
   --  system.case_util%b
   --  system.exn_llf%s
   --  system.exn_llf%b
   --  system.float_control%s
   --  system.float_control%b
   --  system.htable%s
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.img_real%s
   --  system.io%s
   --  system.io%b
   --  system.machine_code%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.powten_table%s
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
   --  system.fat_flt%s
   --  system.fat_llf%s
   --  system.img_llu%s
   --  system.img_llu%b
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.img_real%b
   --  system.val_llu%s
   --  system.val_real%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_real%b
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
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_3%s
   --  system.concat_3%b
   --  system.concat_4%s
   --  system.concat_4%b
   --  system.concat_5%s
   --  system.concat_5%b
   --  system.concat_6%s
   --  system.concat_6%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.numerics%s
   --  ada.numerics.aux%s
   --  ada.numerics.aux%b
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
   --  ada.command_line%b
   --  system.secondary_stack%b
   --  system.address_image%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  system.os_lib%s
   --  system.os_lib%b
   --  system.file_io%b
   --  gnat.os_lib%s
   --  system.traceback%s
   --  ada.exceptions%b
   --  system.traceback%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  ada.text_io.float_aux%s
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  ada.text_io.float_aux%b
   --  gl_h%s
   --  adagl%s
   --  adagl%b
   --  lib_c%s
   --  sdl%s
   --  sdl.byteorder%s
   --  sdl.byteorder%b
   --  sdl.byteorder.extra%s
   --  sdl.error%s
   --  sdl.error%b
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
   --  sdl.audio%s
   --  sdl.audio%b
   --  sdl.timer%s
   --  sdl.video%s
   --  sdl.video%b
   --  sdl.mouse%s
   --  sdl.mouse%b
   --  sdl.events%s
   --  sdl.events%b
   --  sdl_mixer%s
   --  sdl_mixer%b
   --  gears%b
   --  END ELABORATION ORDER


end ada_main;
