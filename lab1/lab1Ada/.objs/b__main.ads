pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 10.4.0" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_main" & ASCII.NUL;
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
   u00001 : constant Version_32 := 16#27d7d507#;
   pragma Export (C, u00001, "mainB");
   u00002 : constant Version_32 := 16#050ff2f0#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#70c0456d#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#357666d8#;
   pragma Export (C, u00005, "ada__calendar__delaysB");
   u00006 : constant Version_32 := 16#d86d2f1d#;
   pragma Export (C, u00006, "ada__calendar__delaysS");
   u00007 : constant Version_32 := 16#6feb5362#;
   pragma Export (C, u00007, "ada__calendarB");
   u00008 : constant Version_32 := 16#31350a81#;
   pragma Export (C, u00008, "ada__calendarS");
   u00009 : constant Version_32 := 16#2983a2a1#;
   pragma Export (C, u00009, "ada__exceptionsB");
   u00010 : constant Version_32 := 16#e7843ced#;
   pragma Export (C, u00010, "ada__exceptionsS");
   u00011 : constant Version_32 := 16#5726abed#;
   pragma Export (C, u00011, "ada__exceptions__last_chance_handlerB");
   u00012 : constant Version_32 := 16#cfec26ee#;
   pragma Export (C, u00012, "ada__exceptions__last_chance_handlerS");
   u00013 : constant Version_32 := 16#77e65b42#;
   pragma Export (C, u00013, "systemS");
   u00014 : constant Version_32 := 16#ae860117#;
   pragma Export (C, u00014, "system__soft_linksB");
   u00015 : constant Version_32 := 16#bcec2334#;
   pragma Export (C, u00015, "system__soft_linksS");
   u00016 : constant Version_32 := 16#c2f8f675#;
   pragma Export (C, u00016, "system__secondary_stackB");
   u00017 : constant Version_32 := 16#3272a35b#;
   pragma Export (C, u00017, "system__secondary_stackS");
   u00018 : constant Version_32 := 16#86dbf443#;
   pragma Export (C, u00018, "system__parametersB");
   u00019 : constant Version_32 := 16#3f0a0f69#;
   pragma Export (C, u00019, "system__parametersS");
   u00020 : constant Version_32 := 16#ced09590#;
   pragma Export (C, u00020, "system__storage_elementsB");
   u00021 : constant Version_32 := 16#5a251146#;
   pragma Export (C, u00021, "system__storage_elementsS");
   u00022 : constant Version_32 := 16#75bf515c#;
   pragma Export (C, u00022, "system__soft_links__initializeB");
   u00023 : constant Version_32 := 16#5697fc2b#;
   pragma Export (C, u00023, "system__soft_links__initializeS");
   u00024 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00024, "system__stack_checkingB");
   u00025 : constant Version_32 := 16#f95930aa#;
   pragma Export (C, u00025, "system__stack_checkingS");
   u00026 : constant Version_32 := 16#34742901#;
   pragma Export (C, u00026, "system__exception_tableB");
   u00027 : constant Version_32 := 16#2a483200#;
   pragma Export (C, u00027, "system__exception_tableS");
   u00028 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00028, "system__exceptionsB");
   u00029 : constant Version_32 := 16#1f8536b4#;
   pragma Export (C, u00029, "system__exceptionsS");
   u00030 : constant Version_32 := 16#69416224#;
   pragma Export (C, u00030, "system__exceptions__machineB");
   u00031 : constant Version_32 := 16#5c74e542#;
   pragma Export (C, u00031, "system__exceptions__machineS");
   u00032 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00032, "system__exceptions_debugB");
   u00033 : constant Version_32 := 16#096ca286#;
   pragma Export (C, u00033, "system__exceptions_debugS");
   u00034 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00034, "system__img_intB");
   u00035 : constant Version_32 := 16#753dbb80#;
   pragma Export (C, u00035, "system__img_intS");
   u00036 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00036, "system__tracebackB");
   u00037 : constant Version_32 := 16#29c48586#;
   pragma Export (C, u00037, "system__tracebackS");
   u00038 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00038, "system__traceback_entriesB");
   u00039 : constant Version_32 := 16#77bdad32#;
   pragma Export (C, u00039, "system__traceback_entriesS");
   u00040 : constant Version_32 := 16#bb296fbb#;
   pragma Export (C, u00040, "system__traceback__symbolicB");
   u00041 : constant Version_32 := 16#46491211#;
   pragma Export (C, u00041, "system__traceback__symbolicS");
   u00042 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00042, "ada__exceptions__tracebackB");
   u00043 : constant Version_32 := 16#ae2d2db5#;
   pragma Export (C, u00043, "ada__exceptions__tracebackS");
   u00044 : constant Version_32 := 16#a0d3d22b#;
   pragma Export (C, u00044, "system__address_imageB");
   u00045 : constant Version_32 := 16#d60ac678#;
   pragma Export (C, u00045, "system__address_imageS");
   u00046 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00046, "system__wch_conB");
   u00047 : constant Version_32 := 16#6c9b7990#;
   pragma Export (C, u00047, "system__wch_conS");
   u00048 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00048, "system__wch_stwB");
   u00049 : constant Version_32 := 16#418a5591#;
   pragma Export (C, u00049, "system__wch_stwS");
   u00050 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00050, "system__wch_cnvB");
   u00051 : constant Version_32 := 16#632cc363#;
   pragma Export (C, u00051, "system__wch_cnvS");
   u00052 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00052, "interfacesS");
   u00053 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00053, "system__wch_jisB");
   u00054 : constant Version_32 := 16#e35cda42#;
   pragma Export (C, u00054, "system__wch_jisS");
   u00055 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00055, "interfaces__cB");
   u00056 : constant Version_32 := 16#467817d8#;
   pragma Export (C, u00056, "interfaces__cS");
   u00057 : constant Version_32 := 16#51f2d040#;
   pragma Export (C, u00057, "system__os_primitivesB");
   u00058 : constant Version_32 := 16#701b3eb4#;
   pragma Export (C, u00058, "system__os_primitivesS");
   u00059 : constant Version_32 := 16#eb4fc41d#;
   pragma Export (C, u00059, "ada__real_timeB");
   u00060 : constant Version_32 := 16#69ea8064#;
   pragma Export (C, u00060, "ada__real_timeS");
   u00061 : constant Version_32 := 16#c05c480c#;
   pragma Export (C, u00061, "system__taskingB");
   u00062 : constant Version_32 := 16#6e8506ca#;
   pragma Export (C, u00062, "system__taskingS");
   u00063 : constant Version_32 := 16#39475ef8#;
   pragma Export (C, u00063, "system__task_primitivesS");
   u00064 : constant Version_32 := 16#c9728a70#;
   pragma Export (C, u00064, "system__os_interfaceB");
   u00065 : constant Version_32 := 16#86d544c4#;
   pragma Export (C, u00065, "system__os_interfaceS");
   u00066 : constant Version_32 := 16#ceccc037#;
   pragma Export (C, u00066, "system__linuxS");
   u00067 : constant Version_32 := 16#dfee2c72#;
   pragma Export (C, u00067, "system__os_constantsS");
   u00068 : constant Version_32 := 16#436027c1#;
   pragma Export (C, u00068, "system__unsigned_typesS");
   u00069 : constant Version_32 := 16#ca8b01d7#;
   pragma Export (C, u00069, "system__task_primitives__operationsB");
   u00070 : constant Version_32 := 16#a249a2c5#;
   pragma Export (C, u00070, "system__task_primitives__operationsS");
   u00071 : constant Version_32 := 16#69557c77#;
   pragma Export (C, u00071, "system__bit_opsB");
   u00072 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00072, "system__bit_opsS");
   u00073 : constant Version_32 := 16#71c5de81#;
   pragma Export (C, u00073, "system__interrupt_managementB");
   u00074 : constant Version_32 := 16#ded691e8#;
   pragma Export (C, u00074, "system__interrupt_managementS");
   u00075 : constant Version_32 := 16#f65595cf#;
   pragma Export (C, u00075, "system__multiprocessorsB");
   u00076 : constant Version_32 := 16#4f4ac431#;
   pragma Export (C, u00076, "system__multiprocessorsS");
   u00077 : constant Version_32 := 16#375a3ef7#;
   pragma Export (C, u00077, "system__task_infoB");
   u00078 : constant Version_32 := 16#e6721c27#;
   pragma Export (C, u00078, "system__task_infoS");
   u00079 : constant Version_32 := 16#f0965c7b#;
   pragma Export (C, u00079, "system__tasking__debugB");
   u00080 : constant Version_32 := 16#6502a0c1#;
   pragma Export (C, u00080, "system__tasking__debugS");
   u00081 : constant Version_32 := 16#fd83e873#;
   pragma Export (C, u00081, "system__concat_2B");
   u00082 : constant Version_32 := 16#75468c92#;
   pragma Export (C, u00082, "system__concat_2S");
   u00083 : constant Version_32 := 16#2b70b149#;
   pragma Export (C, u00083, "system__concat_3B");
   u00084 : constant Version_32 := 16#7c9607e7#;
   pragma Export (C, u00084, "system__concat_3S");
   u00085 : constant Version_32 := 16#31b1d418#;
   pragma Export (C, u00085, "system__crtlS");
   u00086 : constant Version_32 := 16#b31a5821#;
   pragma Export (C, u00086, "system__img_enum_newB");
   u00087 : constant Version_32 := 16#16aa5d82#;
   pragma Export (C, u00087, "system__img_enum_newS");
   u00088 : constant Version_32 := 16#9dca6636#;
   pragma Export (C, u00088, "system__img_lliB");
   u00089 : constant Version_32 := 16#66a90e93#;
   pragma Export (C, u00089, "system__img_lliS");
   u00090 : constant Version_32 := 16#6ec3c867#;
   pragma Export (C, u00090, "system__stack_usageB");
   u00091 : constant Version_32 := 16#3a3ac346#;
   pragma Export (C, u00091, "system__stack_usageS");
   u00092 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00092, "system__ioB");
   u00093 : constant Version_32 := 16#e9a4ac0d#;
   pragma Export (C, u00093, "system__ioS");
   u00094 : constant Version_32 := 16#5d91da9f#;
   pragma Export (C, u00094, "ada__tagsB");
   u00095 : constant Version_32 := 16#12a0afb8#;
   pragma Export (C, u00095, "ada__tagsS");
   u00096 : constant Version_32 := 16#796f31f1#;
   pragma Export (C, u00096, "system__htableB");
   u00097 : constant Version_32 := 16#f324e8a8#;
   pragma Export (C, u00097, "system__htableS");
   u00098 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00098, "system__string_hashB");
   u00099 : constant Version_32 := 16#517a83d6#;
   pragma Export (C, u00099, "system__string_hashS");
   u00100 : constant Version_32 := 16#b8e72903#;
   pragma Export (C, u00100, "system__val_lluB");
   u00101 : constant Version_32 := 16#2eaeaa23#;
   pragma Export (C, u00101, "system__val_lluS");
   u00102 : constant Version_32 := 16#269742a9#;
   pragma Export (C, u00102, "system__val_utilB");
   u00103 : constant Version_32 := 16#db46edbc#;
   pragma Export (C, u00103, "system__val_utilS");
   u00104 : constant Version_32 := 16#ec4d5631#;
   pragma Export (C, u00104, "system__case_utilB");
   u00105 : constant Version_32 := 16#4833ed16#;
   pragma Export (C, u00105, "system__case_utilS");
   u00106 : constant Version_32 := 16#f4e097a7#;
   pragma Export (C, u00106, "ada__text_ioB");
   u00107 : constant Version_32 := 16#46aee46f#;
   pragma Export (C, u00107, "ada__text_ioS");
   u00108 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00108, "ada__streamsB");
   u00109 : constant Version_32 := 16#67e31212#;
   pragma Export (C, u00109, "ada__streamsS");
   u00110 : constant Version_32 := 16#92d882c5#;
   pragma Export (C, u00110, "ada__io_exceptionsS");
   u00111 : constant Version_32 := 16#73d2d764#;
   pragma Export (C, u00111, "interfaces__c_streamsB");
   u00112 : constant Version_32 := 16#b1330297#;
   pragma Export (C, u00112, "interfaces__c_streamsS");
   u00113 : constant Version_32 := 16#ec9c64c3#;
   pragma Export (C, u00113, "system__file_ioB");
   u00114 : constant Version_32 := 16#d097ba27#;
   pragma Export (C, u00114, "system__file_ioS");
   u00115 : constant Version_32 := 16#86c56e5a#;
   pragma Export (C, u00115, "ada__finalizationS");
   u00116 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00116, "system__finalization_rootB");
   u00117 : constant Version_32 := 16#381428d2#;
   pragma Export (C, u00117, "system__finalization_rootS");
   u00118 : constant Version_32 := 16#6591bc26#;
   pragma Export (C, u00118, "system__os_libB");
   u00119 : constant Version_32 := 16#d872da39#;
   pragma Export (C, u00119, "system__os_libS");
   u00120 : constant Version_32 := 16#2a8e89ad#;
   pragma Export (C, u00120, "system__stringsB");
   u00121 : constant Version_32 := 16#17f077d7#;
   pragma Export (C, u00121, "system__stringsS");
   u00122 : constant Version_32 := 16#8a79c1ea#;
   pragma Export (C, u00122, "system__file_control_blockS");
   u00123 : constant Version_32 := 16#932a4690#;
   pragma Export (C, u00123, "system__concat_4B");
   u00124 : constant Version_32 := 16#09827062#;
   pragma Export (C, u00124, "system__concat_4S");
   u00125 : constant Version_32 := 16#915f61e7#;
   pragma Export (C, u00125, "system__tasking__rendezvousB");
   u00126 : constant Version_32 := 16#d811d710#;
   pragma Export (C, u00126, "system__tasking__rendezvousS");
   u00127 : constant Version_32 := 16#100eaf58#;
   pragma Export (C, u00127, "system__restrictionsB");
   u00128 : constant Version_32 := 16#3c948213#;
   pragma Export (C, u00128, "system__restrictionsS");
   u00129 : constant Version_32 := 16#6bc03304#;
   pragma Export (C, u00129, "system__tasking__entry_callsB");
   u00130 : constant Version_32 := 16#6342024e#;
   pragma Export (C, u00130, "system__tasking__entry_callsS");
   u00131 : constant Version_32 := 16#4c4c7e7a#;
   pragma Export (C, u00131, "system__tasking__initializationB");
   u00132 : constant Version_32 := 16#fc2303e6#;
   pragma Export (C, u00132, "system__tasking__initializationS");
   u00133 : constant Version_32 := 16#5795a89c#;
   pragma Export (C, u00133, "system__soft_links__taskingB");
   u00134 : constant Version_32 := 16#e939497e#;
   pragma Export (C, u00134, "system__soft_links__taskingS");
   u00135 : constant Version_32 := 16#3880736e#;
   pragma Export (C, u00135, "ada__exceptions__is_null_occurrenceB");
   u00136 : constant Version_32 := 16#6fde25af#;
   pragma Export (C, u00136, "ada__exceptions__is_null_occurrenceS");
   u00137 : constant Version_32 := 16#244333e7#;
   pragma Export (C, u00137, "system__tasking__task_attributesB");
   u00138 : constant Version_32 := 16#4c97674c#;
   pragma Export (C, u00138, "system__tasking__task_attributesS");
   u00139 : constant Version_32 := 16#7d12d4bb#;
   pragma Export (C, u00139, "system__tasking__protected_objectsB");
   u00140 : constant Version_32 := 16#15001baf#;
   pragma Export (C, u00140, "system__tasking__protected_objectsS");
   u00141 : constant Version_32 := 16#7010f8c6#;
   pragma Export (C, u00141, "system__tasking__protected_objects__entriesB");
   u00142 : constant Version_32 := 16#7daf93e7#;
   pragma Export (C, u00142, "system__tasking__protected_objects__entriesS");
   u00143 : constant Version_32 := 16#81b5daee#;
   pragma Export (C, u00143, "system__tasking__protected_objects__operationsB");
   u00144 : constant Version_32 := 16#343fde45#;
   pragma Export (C, u00144, "system__tasking__protected_objects__operationsS");
   u00145 : constant Version_32 := 16#cc950a30#;
   pragma Export (C, u00145, "system__tasking__queuingB");
   u00146 : constant Version_32 := 16#6dba2805#;
   pragma Export (C, u00146, "system__tasking__queuingS");
   u00147 : constant Version_32 := 16#e9f46e92#;
   pragma Export (C, u00147, "system__tasking__utilitiesB");
   u00148 : constant Version_32 := 16#0f670827#;
   pragma Export (C, u00148, "system__tasking__utilitiesS");
   u00149 : constant Version_32 := 16#05fd86e6#;
   pragma Export (C, u00149, "system__tasking__stagesB");
   u00150 : constant Version_32 := 16#14e0647c#;
   pragma Export (C, u00150, "system__tasking__stagesS");
   u00151 : constant Version_32 := 16#e31b7c4e#;
   pragma Export (C, u00151, "system__memoryB");
   u00152 : constant Version_32 := 16#2e9b3d76#;
   pragma Export (C, u00152, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  system.img_enum_new%s
   --  system.img_enum_new%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.img_lli%s
   --  system.img_lli%b
   --  system.io%s
   --  system.io%b
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.stack_usage%s
   --  system.stack_usage%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_3%s
   --  system.concat_3%b
   --  system.concat_4%s
   --  system.concat_4%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.secondary_stack%s
   --  system.standard_library%s
   --  ada.exceptions%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.soft_links%s
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  ada.exceptions.traceback%b
   --  system.address_image%s
   --  system.address_image%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.memory%s
   --  system.memory%b
   --  system.secondary_stack%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  system.standard_library%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  ada.exceptions.is_null_occurrence%s
   --  ada.exceptions.is_null_occurrence%b
   --  ada.io_exceptions%s
   --  interfaces.c%s
   --  interfaces.c%b
   --  system.case_util%s
   --  system.case_util%b
   --  system.linux%s
   --  system.multiprocessors%s
   --  system.multiprocessors%b
   --  system.os_constants%s
   --  system.os_interface%s
   --  system.os_interface%b
   --  system.os_lib%s
   --  system.os_lib%b
   --  system.task_info%s
   --  system.task_info%b
   --  system.task_primitives%s
   --  system.interrupt_management%s
   --  system.interrupt_management%b
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_llu%s
   --  system.val_llu%b
   --  ada.tags%s
   --  ada.tags%b
   --  ada.streams%s
   --  ada.streams%b
   --  system.file_control_block%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.file_io%s
   --  system.file_io%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.delays%s
   --  ada.calendar.delays%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.tasking%s
   --  system.task_primitives.operations%s
   --  system.tasking.debug%s
   --  system.tasking.debug%b
   --  system.task_primitives.operations%b
   --  system.tasking%b
   --  ada.real_time%s
   --  ada.real_time%b
   --  system.soft_links.tasking%s
   --  system.soft_links.tasking%b
   --  system.tasking.initialization%s
   --  system.tasking.task_attributes%s
   --  system.tasking.task_attributes%b
   --  system.tasking.initialization%b
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.tasking.protected_objects.entries%s
   --  system.tasking.protected_objects.entries%b
   --  system.tasking.queuing%s
   --  system.tasking.queuing%b
   --  system.tasking.utilities%s
   --  system.tasking.utilities%b
   --  system.tasking.entry_calls%s
   --  system.tasking.rendezvous%s
   --  system.tasking.protected_objects.operations%s
   --  system.tasking.protected_objects.operations%b
   --  system.tasking.entry_calls%b
   --  system.tasking.rendezvous%b
   --  system.tasking.stages%s
   --  system.tasking.stages%b
   --  main%b
   --  END ELABORATION ORDER

end ada_main;
