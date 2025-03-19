; ModuleID = 'drivers/acpi/osi.c'
source_filename = "drivers/acpi/osi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_osi_is_win8: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_osi_is_win8 ; .previous"

%struct.acpi_osi_config = type { i8, i8, [2 x i8] }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.acpi_osi_entry = type { [64 x i8], i8 }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }

@acpi_gbl_create_osi_method = external dso_local global i8, align 1
@.str = private unnamed_addr constant [30 x i8] c"\016ACPI: _OSI method disabled\0A\00", align 1, !dbg !0
@osi_config = internal global %struct.acpi_osi_config zeroinitializer, align 4, !dbg !7
@__setup_str_osi_setup = internal constant [10 x i8] c"acpi_osi=\00", section ".init.rodata", align 1, !dbg !52
@__setup_osi_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_osi_setup, ptr @osi_setup, i32 0 }, section ".init.setup", align 8, !dbg !20
@acpi_gbl_osi_data = external dso_local global i8, align 1
@__UNIQUE_ID___addressable_acpi_osi_is_win8206 = internal global ptr @acpi_osi_is_win8, section ".discard.addressable", align 8, !dbg !35
@osi_setup_entries = internal global <{ %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, [12 x %struct.acpi_osi_entry] }> <{ %struct.acpi_osi_entry { [64 x i8] c"Module Device\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1 }, %struct.acpi_osi_entry { [64 x i8] c"Processor Device\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1 }, %struct.acpi_osi_entry { [64 x i8] c"3.0 _SCP Extensions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1 }, %struct.acpi_osi_entry { [64 x i8] c"Processor Aggregator Device\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1 }, [12 x %struct.acpi_osi_entry] zeroinitializer }>, section ".init.data", align 16, !dbg !37
@.str.2 = private unnamed_addr constant [6 x i8] c"Linux\00", align 1, !dbg !57
@.str.3 = private unnamed_addr constant [7 x i8] c"!Linux\00", align 1, !dbg !62
@.str.4 = private unnamed_addr constant [7 x i8] c"Darwin\00", align 1, !dbg !67
@.str.5 = private unnamed_addr constant [8 x i8] c"!Darwin\00", align 1, !dbg !69
@.str.6 = private unnamed_addr constant [2 x i8] c"!\00", align 1, !dbg !74
@.str.7 = private unnamed_addr constant [3 x i8] c"!!\00", align 1, !dbg !79
@acpi_osi_dmi_table = internal constant [18 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @dmi_disable_osi_vista, ptr @.str.8, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"FUJITSU SIEMENS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ESPRIMO Mobile V5505\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_disable_osi_vista, ptr @.str.9, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Micro-Star International\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"GX723\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_disable_osi_vista, ptr @.str.10, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Sony Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"VGN-NS10J_S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_disable_osi_vista, ptr @.str.11, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Sony Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"VGN-SR290J\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_disable_osi_vista, ptr @.str.12, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Sony Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"VGN-NS50B_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_disable_osi_vista, ptr @.str.13, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Sony Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"VGN-SR19XN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_disable_osi_vista, ptr @.str.14, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"TOSHIBA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 8, [79 x i8] c"Satellite L355\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_disable_osi_win7, ptr @.str.15, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK Computer Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"K50IJ\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_disable_osi_vista, ptr @.str.16, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"TOSHIBA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Satellite P305D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_disable_osi_vista, ptr @.str.17, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"TOSHIBA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"NB100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_disable_osi_win8, ptr @.str.18, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Inspiron 7737\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_disable_osi_win8, ptr @.str.19, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Inspiron 7537\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_disable_osi_win8, ptr @.str.20, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Inspiron 5437\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_disable_osi_win8, ptr @.str.21, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Inspiron 3437\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_disable_osi_win8, ptr @.str.22, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Vostro 3446\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_disable_osi_win8, ptr @.str.23, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Vostro 3546\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_enable_osi_linux, ptr @.str.24, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK Computer INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"1015PX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], section ".init.rodata", align 16, !dbg !138
@x86_apple_machine = external dso_local global i8, align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Fujitsu Siemens\00", align 1, !dbg !84
@.str.9 = private unnamed_addr constant [10 x i8] c"MSI GX723\00", align 1, !dbg !87
@.str.10 = private unnamed_addr constant [17 x i8] c"Sony VGN-NS10J_S\00", align 1, !dbg !90
@.str.11 = private unnamed_addr constant [16 x i8] c"Sony VGN-SR290J\00", align 1, !dbg !95
@.str.12 = private unnamed_addr constant [12 x i8] c"VGN-NS50B_L\00", align 1, !dbg !97
@.str.13 = private unnamed_addr constant [11 x i8] c"VGN-SR19XN\00", align 1, !dbg !102
@.str.14 = private unnamed_addr constant [23 x i8] c"Toshiba Satellite L355\00", align 1, !dbg !107
@.str.15 = private unnamed_addr constant [11 x i8] c"ASUS K50IJ\00", align 1, !dbg !112
@.str.16 = private unnamed_addr constant [14 x i8] c"Toshiba P305D\00", align 1, !dbg !114
@.str.17 = private unnamed_addr constant [14 x i8] c"Toshiba NB100\00", align 1, !dbg !119
@.str.18 = private unnamed_addr constant [19 x i8] c"Dell Inspiron 7737\00", align 1, !dbg !121
@.str.19 = private unnamed_addr constant [19 x i8] c"Dell Inspiron 7537\00", align 1, !dbg !126
@.str.20 = private unnamed_addr constant [19 x i8] c"Dell Inspiron 5437\00", align 1, !dbg !128
@.str.21 = private unnamed_addr constant [19 x i8] c"Dell Inspiron 3437\00", align 1, !dbg !130
@.str.22 = private unnamed_addr constant [17 x i8] c"Dell Vostro 3446\00", align 1, !dbg !132
@.str.23 = private unnamed_addr constant [17 x i8] c"Dell Vostro 3546\00", align 1, !dbg !134
@.str.24 = private unnamed_addr constant [19 x i8] c"Asus EEE PC 1015PX\00", align 1, !dbg !136
@.str.25 = private unnamed_addr constant [26 x i8] c"\015ACPI: DMI detected: %s\0A\00", align 1, !dbg !167
@.str.26 = private unnamed_addr constant [14 x i8] c"!Windows 2006\00", align 1, !dbg !172
@.str.27 = private unnamed_addr constant [18 x i8] c"!Windows 2006 SP1\00", align 1, !dbg !174
@.str.28 = private unnamed_addr constant [18 x i8] c"!Windows 2006 SP2\00", align 1, !dbg !177
@.str.29 = private unnamed_addr constant [14 x i8] c"!Windows 2009\00", align 1, !dbg !179
@.str.30 = private unnamed_addr constant [14 x i8] c"!Windows 2012\00", align 1, !dbg !181
@.str.31 = private unnamed_addr constant [49 x i8] c"\015ACPI: DMI detected to setup _OSI(\22Linux\22): %s\0A\00", align 1, !dbg !183
@.str.32 = private unnamed_addr constant [62 x i8] c"\015ACPI: DMI detected to setup _OSI(\22Darwin\22): Apple hardware\0A\00", align 1, !dbg !188
@acpi_osi_handler.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !193
@.str.33 = private unnamed_addr constant [53 x i8] c"\015ACPI: [Firmware Bug]: BIOS _OSI(Linux) query %s%s\0A\00", align 1, !dbg !223
@.str.34 = private unnamed_addr constant [8 x i8] c"honored\00", align 1, !dbg !228
@.str.35 = private unnamed_addr constant [8 x i8] c"ignored\00", align 1, !dbg !230
@.str.36 = private unnamed_addr constant [13 x i8] c" via cmdline\00", align 1, !dbg !232
@.str.37 = private unnamed_addr constant [9 x i8] c" via DMI\00", align 1, !dbg !237
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !242
@acpi_osi_handler.__already_done.39 = internal global i8 0, section ".data..once", align 1, !dbg !247
@.str.40 = private unnamed_addr constant [38 x i8] c"\015ACPI: BIOS _OSI(Darwin) query %s%s\0A\00", align 1, !dbg !249
@.str.41 = private unnamed_addr constant [40 x i8] c"\016ACPI: Disabled all _OSI OS vendors%s\0A\00", align 1, !dbg !254
@.str.42 = private unnamed_addr constant [20 x i8] c" and feature groups\00", align 1, !dbg !259
@.str.43 = private unnamed_addr constant [24 x i8] c"\016ACPI: Added _OSI(%s)\0A\00", align 1, !dbg !264
@.str.44 = private unnamed_addr constant [26 x i8] c"\016ACPI: Deleted _OSI(%s)\0A\00", align 1, !dbg !269
@llvm.compiler.used = appending global [2 x ptr] [ptr @__setup_osi_setup, ptr @__UNIQUE_ID___addressable_acpi_osi_is_win8206], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @acpi_osi_setup(ptr noundef %str) #0 section ".init.text" align 16 !dbg !291 {
entry:
  %str.addr = alloca ptr, align 8
  %osi = alloca ptr, align 8
  %enable = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !295, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 8, ptr %osi) #7, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %osi, metadata !296, metadata !DIExpression()), !dbg !302
  call void @llvm.lifetime.start.p0(i64 1, ptr %enable) #7, !dbg !303
  call void @llvm.dbg.declare(metadata ptr %enable, metadata !298, metadata !DIExpression()), !dbg !304
  store i8 1, ptr %enable, align 1, !dbg !304
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %i, metadata !299, metadata !DIExpression()), !dbg !306
  %0 = load i8, ptr @acpi_gbl_create_osi_method, align 1, !dbg !307
  %tobool = icmp ne i8 %0, 0, !dbg !307
  br i1 %tobool, label %if.end, label %if.then, !dbg !309

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !310

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !311
  %cmp = icmp eq ptr %1, null, !dbg !313
  br i1 %cmp, label %if.then3, label %lor.lhs.false, !dbg !314

lor.lhs.false:                                    ; preds = %if.end
  %2 = load ptr, ptr %str.addr, align 8, !dbg !315
  %3 = load i8, ptr %2, align 1, !dbg !316
  %conv = zext i8 %3 to i32, !dbg !316
  %cmp1 = icmp eq i32 %conv, 0, !dbg !317
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !318

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  br label %do.body, !dbg !319

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !322

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !322

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str) #8, !dbg !319
  store i32 %call, ptr %tmp, align 4, !dbg !322
  %4 = load i32, ptr %tmp, align 4, !dbg !319
  store i8 0, ptr @acpi_gbl_create_osi_method, align 1, !dbg !324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !325

if.end4:                                          ; preds = %lor.lhs.false
  %5 = load ptr, ptr %str.addr, align 8, !dbg !326
  %6 = load i8, ptr %5, align 1, !dbg !328
  %conv5 = zext i8 %6 to i32, !dbg !328
  %cmp6 = icmp eq i32 %conv5, 33, !dbg !329
  br i1 %cmp6, label %if.then8, label %if.end31, !dbg !330

if.then8:                                         ; preds = %if.end4
  %7 = load ptr, ptr %str.addr, align 8, !dbg !331
  %incdec.ptr = getelementptr i8, ptr %7, i32 1, !dbg !331
  store ptr %incdec.ptr, ptr %str.addr, align 8, !dbg !331
  %8 = load ptr, ptr %str.addr, align 8, !dbg !333
  %9 = load i8, ptr %8, align 1, !dbg !335
  %conv9 = zext i8 %9 to i32, !dbg !335
  %cmp10 = icmp eq i32 %conv9, 0, !dbg !336
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !337

if.then12:                                        ; preds = %if.then8
  %10 = load i8, ptr @osi_config, align 4, !dbg !338
  %tobool13 = icmp ne i8 %10, 0, !dbg !341
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !342

if.then14:                                        ; preds = %if.then12
  store i8 5, ptr @osi_config, align 4, !dbg !343
  br label %if.end15, !dbg !344

if.end15:                                         ; preds = %if.then14, %if.then12
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !345

if.else:                                          ; preds = %if.then8
  %11 = load ptr, ptr %str.addr, align 8, !dbg !346
  %12 = load i8, ptr %11, align 1, !dbg !348
  %conv16 = zext i8 %12 to i32, !dbg !348
  %cmp17 = icmp eq i32 %conv16, 42, !dbg !349
  br i1 %cmp17, label %if.then19, label %if.else23, !dbg !350

if.then19:                                        ; preds = %if.else
  store i8 7, ptr @osi_config, align 4, !dbg !351
  store i32 0, ptr %i, align 4, !dbg !353
  br label %for.cond, !dbg !355

for.cond:                                         ; preds = %for.inc, %if.then19
  %13 = load i32, ptr %i, align 4, !dbg !356
  %cmp20 = icmp slt i32 %13, 16, !dbg !358
  br i1 %cmp20, label %for.body, label %for.end, !dbg !359

for.body:                                         ; preds = %for.cond
  %14 = load i32, ptr %i, align 4, !dbg !360
  %idxprom = sext i32 %14 to i64, !dbg !362
  %arrayidx = getelementptr [16 x %struct.acpi_osi_entry], ptr @osi_setup_entries, i64 0, i64 %idxprom, !dbg !362
  store ptr %arrayidx, ptr %osi, align 8, !dbg !363
  %15 = load ptr, ptr %osi, align 8, !dbg !364
  %enable22 = getelementptr inbounds %struct.acpi_osi_entry, ptr %15, i32 0, i32 1, !dbg !365
  store i8 0, ptr %enable22, align 1, !dbg !366
  br label %for.inc, !dbg !367

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !dbg !368
  %inc = add i32 %16, 1, !dbg !368
  store i32 %inc, ptr %i, align 4, !dbg !368
  br label %for.cond, !dbg !369, !llvm.loop !370

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !374

if.else23:                                        ; preds = %if.else
  %17 = load ptr, ptr %str.addr, align 8, !dbg !375
  %18 = load i8, ptr %17, align 1, !dbg !377
  %conv24 = zext i8 %18 to i32, !dbg !377
  %cmp25 = icmp eq i32 %conv24, 33, !dbg !378
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !379

if.then27:                                        ; preds = %if.else23
  store i8 0, ptr @osi_config, align 4, !dbg !380
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !382

if.end28:                                         ; preds = %if.else23
  br label %if.end29

if.end29:                                         ; preds = %if.end28
  br label %if.end30

if.end30:                                         ; preds = %if.end29
  store i8 0, ptr %enable, align 1, !dbg !383
  br label %if.end31, !dbg !384

if.end31:                                         ; preds = %if.end30, %if.end4
  store i32 0, ptr %i, align 4, !dbg !385
  br label %for.cond32, !dbg !387

for.cond32:                                       ; preds = %for.inc58, %if.end31
  %19 = load i32, ptr %i, align 4, !dbg !388
  %cmp33 = icmp slt i32 %19, 16, !dbg !390
  br i1 %cmp33, label %for.body35, label %for.end60, !dbg !391

for.body35:                                       ; preds = %for.cond32
  %20 = load i32, ptr %i, align 4, !dbg !392
  %idxprom36 = sext i32 %20 to i64, !dbg !394
  %arrayidx37 = getelementptr [16 x %struct.acpi_osi_entry], ptr @osi_setup_entries, i64 0, i64 %idxprom36, !dbg !394
  store ptr %arrayidx37, ptr %osi, align 8, !dbg !395
  %21 = load ptr, ptr %osi, align 8, !dbg !396
  %string = getelementptr inbounds %struct.acpi_osi_entry, ptr %21, i32 0, i32 0, !dbg !398
  %arraydecay = getelementptr inbounds [64 x i8], ptr %string, i64 0, i64 0, !dbg !396
  %22 = load ptr, ptr %str.addr, align 8, !dbg !399
  %call38 = call i32 @strcmp(ptr noundef %arraydecay, ptr noundef %22) #9, !dbg !400
  %tobool39 = icmp ne i32 %call38, 0, !dbg !400
  br i1 %tobool39, label %if.else43, label %if.then40, !dbg !401

if.then40:                                        ; preds = %for.body35
  %23 = load i8, ptr %enable, align 1, !dbg !402, !range !404, !noundef !405
  %tobool41 = trunc i8 %23 to i1, !dbg !402
  %24 = load ptr, ptr %osi, align 8, !dbg !406
  %enable42 = getelementptr inbounds %struct.acpi_osi_entry, ptr %24, i32 0, i32 1, !dbg !407
  %frombool = zext i1 %tobool41 to i8, !dbg !408
  store i8 %frombool, ptr %enable42, align 1, !dbg !408
  br label %for.end60, !dbg !409

if.else43:                                        ; preds = %for.body35
  %25 = load ptr, ptr %osi, align 8, !dbg !410
  %string44 = getelementptr inbounds %struct.acpi_osi_entry, ptr %25, i32 0, i32 0, !dbg !412
  %arrayidx45 = getelementptr [64 x i8], ptr %string44, i64 0, i64 0, !dbg !410
  %26 = load i8, ptr %arrayidx45, align 1, !dbg !410
  %conv46 = zext i8 %26 to i32, !dbg !410
  %cmp47 = icmp eq i32 %conv46, 0, !dbg !413
  br i1 %cmp47, label %if.then49, label %if.end56, !dbg !414

if.then49:                                        ; preds = %if.else43
  %27 = load i8, ptr %enable, align 1, !dbg !415, !range !404, !noundef !405
  %tobool50 = trunc i8 %27 to i1, !dbg !415
  %28 = load ptr, ptr %osi, align 8, !dbg !417
  %enable51 = getelementptr inbounds %struct.acpi_osi_entry, ptr %28, i32 0, i32 1, !dbg !418
  %frombool52 = zext i1 %tobool50 to i8, !dbg !419
  store i8 %frombool52, ptr %enable51, align 1, !dbg !419
  %29 = load ptr, ptr %osi, align 8, !dbg !420
  %string53 = getelementptr inbounds %struct.acpi_osi_entry, ptr %29, i32 0, i32 0, !dbg !421
  %arraydecay54 = getelementptr inbounds [64 x i8], ptr %string53, i64 0, i64 0, !dbg !420
  %30 = load ptr, ptr %str.addr, align 8, !dbg !422
  %call55 = call ptr @strncpy(ptr noundef %arraydecay54, ptr noundef %30, i64 noundef 64) #9, !dbg !423
  br label %for.end60, !dbg !424

if.end56:                                         ; preds = %if.else43
  br label %if.end57

if.end57:                                         ; preds = %if.end56
  br label %for.inc58, !dbg !425

for.inc58:                                        ; preds = %if.end57
  %31 = load i32, ptr %i, align 4, !dbg !426
  %inc59 = add i32 %31, 1, !dbg !426
  store i32 %inc59, ptr %i, align 4, !dbg !426
  br label %for.cond32, !dbg !427, !llvm.loop !428

for.end60:                                        ; preds = %if.then49, %if.then40, %for.cond32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !430
  br label %cleanup, !dbg !430

cleanup:                                          ; preds = %for.end60, %if.then27, %for.end, %if.end15, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !430
  call void @llvm.lifetime.end.p0(i64 1, ptr %enable) #7, !dbg !430
  call void @llvm.lifetime.end.p0(i64 8, ptr %osi) #7, !dbg !430
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !430

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !431 dso_local i32 @_printk(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !435 dso_local i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !439 dso_local ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @osi_setup(ptr noundef %str) #0 section ".init.text" align 16 !dbg !446 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !448, metadata !DIExpression()), !dbg !449
  %0 = load ptr, ptr %str.addr, align 8, !dbg !450
  %tobool = icmp ne ptr %0, null, !dbg !450
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !452

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !453
  %call = call i32 @strcmp(ptr noundef @.str.2, ptr noundef %1) #9, !dbg !454
  %tobool1 = icmp ne i32 %call, 0, !dbg !454
  br i1 %tobool1, label %if.else, label %if.then, !dbg !455

if.then:                                          ; preds = %land.lhs.true
  call void @acpi_osi_setup_linux(i1 noundef zeroext true) #8, !dbg !456
  br label %if.end22, !dbg !456

if.else:                                          ; preds = %land.lhs.true, %entry
  %2 = load ptr, ptr %str.addr, align 8, !dbg !457
  %tobool2 = icmp ne ptr %2, null, !dbg !457
  br i1 %tobool2, label %land.lhs.true3, label %if.else7, !dbg !459

land.lhs.true3:                                   ; preds = %if.else
  %3 = load ptr, ptr %str.addr, align 8, !dbg !460
  %call4 = call i32 @strcmp(ptr noundef @.str.3, ptr noundef %3) #9, !dbg !461
  %tobool5 = icmp ne i32 %call4, 0, !dbg !461
  br i1 %tobool5, label %if.else7, label %if.then6, !dbg !462

if.then6:                                         ; preds = %land.lhs.true3
  call void @acpi_osi_setup_linux(i1 noundef zeroext false) #8, !dbg !463
  br label %if.end21, !dbg !463

if.else7:                                         ; preds = %land.lhs.true3, %if.else
  %4 = load ptr, ptr %str.addr, align 8, !dbg !464
  %tobool8 = icmp ne ptr %4, null, !dbg !464
  br i1 %tobool8, label %land.lhs.true9, label %if.else13, !dbg !466

land.lhs.true9:                                   ; preds = %if.else7
  %5 = load ptr, ptr %str.addr, align 8, !dbg !467
  %call10 = call i32 @strcmp(ptr noundef @.str.4, ptr noundef %5) #9, !dbg !468
  %tobool11 = icmp ne i32 %call10, 0, !dbg !468
  br i1 %tobool11, label %if.else13, label %if.then12, !dbg !469

if.then12:                                        ; preds = %land.lhs.true9
  call void @acpi_osi_setup_darwin(i1 noundef zeroext true) #8, !dbg !470
  br label %if.end20, !dbg !470

if.else13:                                        ; preds = %land.lhs.true9, %if.else7
  %6 = load ptr, ptr %str.addr, align 8, !dbg !471
  %tobool14 = icmp ne ptr %6, null, !dbg !471
  br i1 %tobool14, label %land.lhs.true15, label %if.else19, !dbg !473

land.lhs.true15:                                  ; preds = %if.else13
  %7 = load ptr, ptr %str.addr, align 8, !dbg !474
  %call16 = call i32 @strcmp(ptr noundef @.str.5, ptr noundef %7) #9, !dbg !475
  %tobool17 = icmp ne i32 %call16, 0, !dbg !475
  br i1 %tobool17, label %if.else19, label %if.then18, !dbg !476

if.then18:                                        ; preds = %land.lhs.true15
  call void @acpi_osi_setup_darwin(i1 noundef zeroext false) #8, !dbg !477
  br label %if.end, !dbg !477

if.else19:                                        ; preds = %land.lhs.true15, %if.else13
  %8 = load ptr, ptr %str.addr, align 8, !dbg !478
  call void @acpi_osi_setup(ptr noundef %8) #8, !dbg !479
  br label %if.end

if.end:                                           ; preds = %if.else19, %if.then18
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then12
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then6
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then
  ret i32 1, !dbg !480
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @acpi_osi_is_win8() #5 align 16 !dbg !481 {
entry:
  %0 = load i8, ptr @acpi_gbl_osi_data, align 1, !dbg !484
  %conv = zext i8 %0 to i32, !dbg !484
  %cmp = icmp sge i32 %conv, 12, !dbg !485
  ret i1 %cmp, !dbg !486
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @early_acpi_osi_init() #0 section ".init.text" align 16 !dbg !487 {
entry:
  call void @acpi_osi_dmi_blacklisted() #8, !dbg !490
  ret i32 0, !dbg !491
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @acpi_osi_dmi_blacklisted() #0 section ".init.text" align 16 !dbg !492 {
entry:
  %call = call i32 @dmi_check_system(ptr noundef @acpi_osi_dmi_table) #9, !dbg !495
  %0 = load i8, ptr @x86_apple_machine, align 1, !dbg !496, !range !404, !noundef !405
  %tobool = trunc i8 %0 to i1, !dbg !496
  br i1 %tobool, label %if.then, label %if.end, !dbg !498

if.then:                                          ; preds = %entry
  call void @acpi_osi_dmi_darwin() #8, !dbg !499
  br label %if.end, !dbg !499

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !500
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_osi_init() #0 section ".init.text" align 16 !dbg !501 {
entry:
  %call = call i32 @acpi_install_interface_handler(ptr noundef @acpi_osi_handler) #9, !dbg !502
  call void @acpi_osi_setup_late() #8, !dbg !503
  ret i32 0, !dbg !504
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !505 dso_local i32 @acpi_install_interface_handler(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_osi_handler(ptr noundef %interface, i32 noundef %supported) #5 align 16 !dbg !195 {
entry:
  %interface.addr = alloca ptr, align 8
  %supported.addr = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp19 = alloca i32, align 4
  %tmp34 = alloca i64, align 8
  %__ret_do_once46 = alloca i8, align 1
  %__ret_cond47 = alloca i8, align 1
  %__ret_once54 = alloca i8, align 1
  %tmp71 = alloca i64, align 8
  %tmp84 = alloca i32, align 4
  %tmp108 = alloca i64, align 8
  store ptr %interface, ptr %interface.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %interface.addr, metadata !205, metadata !DIExpression()), !dbg !512
  store i32 %supported, ptr %supported.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %supported.addr, metadata !206, metadata !DIExpression()), !dbg !513
  %0 = load ptr, ptr %interface.addr, align 8, !dbg !514
  %call = call i32 @strcmp(ptr noundef @.str.2, ptr noundef %0) #9, !dbg !515
  %tobool = icmp ne i32 %call, 0, !dbg !515
  br i1 %tobool, label %if.end42, label %if.then, !dbg !516

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #7, !dbg !517
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !207, metadata !DIExpression()), !dbg !517
  store i8 1, ptr %__ret_do_once, align 1, !dbg !517
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #7, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !211, metadata !DIExpression()), !dbg !518
  %1 = load i8, ptr %__ret_do_once, align 1, !dbg !518, !range !404, !noundef !405
  %tobool1 = trunc i8 %1 to i1, !dbg !518
  %lnot = xor i1 %tobool1, true, !dbg !518
  %lnot2 = xor i1 %lnot, true, !dbg !518
  %frombool = zext i1 %lnot2 to i8, !dbg !518
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !518
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #7, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !214, metadata !DIExpression()), !dbg !518
  store i8 0, ptr %__ret_once, align 1, !dbg !518
  %2 = load i8, ptr %__ret_cond, align 1, !dbg !519, !range !404, !noundef !405
  %tobool3 = trunc i8 %2 to i1, !dbg !519
  br i1 %tobool3, label %land.rhs, label %land.end, !dbg !519

land.rhs:                                         ; preds = %if.then
  %3 = load i8, ptr @acpi_osi_handler.__already_done, align 1, !dbg !519, !range !404, !noundef !405
  %tobool4 = trunc i8 %3 to i1, !dbg !519
  %lnot5 = xor i1 %tobool4, true, !dbg !519
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %4 = phi i1 [ false, %if.then ], [ %lnot5, %land.rhs ], !dbg !521
  %lnot6 = xor i1 %4, true, !dbg !519
  %lnot7 = xor i1 %lnot6, true, !dbg !519
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !519
  %conv = sext i32 %lnot.ext to i64, !dbg !519
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !519
  %tobool8 = icmp ne i64 %expval, 0, !dbg !519
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !518

if.then9:                                         ; preds = %land.end
  store i8 1, ptr @acpi_osi_handler.__already_done, align 1, !dbg !522
  store i8 1, ptr %__ret_once, align 1, !dbg !522
  br label %if.end, !dbg !522

if.end:                                           ; preds = %if.then9, %land.end
  %5 = load i8, ptr %__ret_once, align 1, !dbg !518, !range !404, !noundef !405
  %tobool10 = trunc i8 %5 to i1, !dbg !518
  %lnot11 = xor i1 %tobool10, true, !dbg !518
  %lnot13 = xor i1 %lnot11, true, !dbg !518
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !518
  %conv15 = sext i32 %lnot.ext14 to i64, !dbg !518
  %expval16 = call i64 @llvm.expect.i64(i64 %conv15, i64 0), !dbg !518
  store i64 %expval16, ptr %tmp, align 8, !dbg !519
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #7, !dbg !524
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #7, !dbg !524
  %6 = load i64, ptr %tmp, align 8, !dbg !518
  %tobool17 = icmp ne i64 %6, 0, !dbg !524
  br i1 %tobool17, label %if.then18, label %if.end33, !dbg !517

if.then18:                                        ; preds = %if.end
  br label %do.body, !dbg !525

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !527

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !527

do.end:                                           ; preds = %do.cond
  %bf.load = load i8, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !525
  %bf.clear = and i8 %bf.load, 1, !dbg !525
  %bf.cast = zext i8 %bf.clear to i32, !dbg !525
  %tobool20 = icmp ne i32 %bf.cast, 0, !dbg !525
  %7 = zext i1 %tobool20 to i64, !dbg !525
  %cond = select i1 %tobool20, ptr @.str.34, ptr @.str.35, !dbg !525
  %bf.load21 = load i8, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !525
  %bf.lshr = lshr i8 %bf.load21, 2, !dbg !525
  %bf.clear22 = and i8 %bf.lshr, 1, !dbg !525
  %bf.cast23 = zext i8 %bf.clear22 to i32, !dbg !525
  %tobool24 = icmp ne i32 %bf.cast23, 0, !dbg !525
  br i1 %tobool24, label %cond.true, label %cond.false, !dbg !525

cond.true:                                        ; preds = %do.end
  br label %cond.end, !dbg !525

cond.false:                                       ; preds = %do.end
  %bf.load25 = load i8, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !525
  %bf.lshr26 = lshr i8 %bf.load25, 1, !dbg !525
  %bf.clear27 = and i8 %bf.lshr26, 1, !dbg !525
  %bf.cast28 = zext i8 %bf.clear27 to i32, !dbg !525
  %tobool29 = icmp ne i32 %bf.cast28, 0, !dbg !525
  %8 = zext i1 %tobool29 to i64, !dbg !525
  %cond30 = select i1 %tobool29, ptr @.str.37, ptr @.str.38, !dbg !525
  br label %cond.end, !dbg !525

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond31 = phi ptr [ @.str.36, %cond.true ], [ %cond30, %cond.false ], !dbg !525
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef @.str.33, ptr noundef %cond, ptr noundef %cond31) #8, !dbg !525
  store i32 %call32, ptr %tmp19, align 4, !dbg !527
  %9 = load i32, ptr %tmp19, align 4, !dbg !525
  br label %if.end33, !dbg !524

if.end33:                                         ; preds = %cond.end, %if.end
  %10 = load i8, ptr %__ret_do_once, align 1, !dbg !517, !range !404, !noundef !405
  %tobool35 = trunc i8 %10 to i1, !dbg !517
  %lnot36 = xor i1 %tobool35, true, !dbg !517
  %lnot38 = xor i1 %lnot36, true, !dbg !517
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !517
  %conv40 = sext i32 %lnot.ext39 to i64, !dbg !517
  %expval41 = call i64 @llvm.expect.i64(i64 %conv40, i64 0), !dbg !517
  store i64 %expval41, ptr %tmp34, align 8, !dbg !524
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #7, !dbg !529
  %11 = load i64, ptr %tmp34, align 8, !dbg !517
  br label %if.end42, !dbg !530

if.end42:                                         ; preds = %if.end33, %entry
  %12 = load ptr, ptr %interface.addr, align 8, !dbg !531
  %call43 = call i32 @strcmp(ptr noundef @.str.4, ptr noundef %12) #9, !dbg !532
  %tobool44 = icmp ne i32 %call43, 0, !dbg !532
  br i1 %tobool44, label %if.end116, label %if.then45, !dbg !533

if.then45:                                        ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once46) #7, !dbg !534
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once46, metadata !215, metadata !DIExpression()), !dbg !534
  store i8 1, ptr %__ret_do_once46, align 1, !dbg !534
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond47) #7, !dbg !535
  call void @llvm.dbg.declare(metadata ptr %__ret_cond47, metadata !219, metadata !DIExpression()), !dbg !535
  %13 = load i8, ptr %__ret_do_once46, align 1, !dbg !535, !range !404, !noundef !405
  %tobool48 = trunc i8 %13 to i1, !dbg !535
  %lnot49 = xor i1 %tobool48, true, !dbg !535
  %lnot51 = xor i1 %lnot49, true, !dbg !535
  %frombool53 = zext i1 %lnot51 to i8, !dbg !535
  store i8 %frombool53, ptr %__ret_cond47, align 1, !dbg !535
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once54) #7, !dbg !535
  call void @llvm.dbg.declare(metadata ptr %__ret_once54, metadata !222, metadata !DIExpression()), !dbg !535
  store i8 0, ptr %__ret_once54, align 1, !dbg !535
  %14 = load i8, ptr %__ret_cond47, align 1, !dbg !536, !range !404, !noundef !405
  %tobool55 = trunc i8 %14 to i1, !dbg !536
  br i1 %tobool55, label %land.rhs57, label %land.end61, !dbg !536

land.rhs57:                                       ; preds = %if.then45
  %15 = load i8, ptr @acpi_osi_handler.__already_done.39, align 1, !dbg !536, !range !404, !noundef !405
  %tobool58 = trunc i8 %15 to i1, !dbg !536
  %lnot59 = xor i1 %tobool58, true, !dbg !536
  br label %land.end61

land.end61:                                       ; preds = %land.rhs57, %if.then45
  %16 = phi i1 [ false, %if.then45 ], [ %lnot59, %land.rhs57 ], !dbg !538
  %lnot62 = xor i1 %16, true, !dbg !536
  %lnot64 = xor i1 %lnot62, true, !dbg !536
  %lnot.ext65 = zext i1 %lnot64 to i32, !dbg !536
  %conv66 = sext i32 %lnot.ext65 to i64, !dbg !536
  %expval67 = call i64 @llvm.expect.i64(i64 %conv66, i64 0), !dbg !536
  %tobool68 = icmp ne i64 %expval67, 0, !dbg !536
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !535

if.then69:                                        ; preds = %land.end61
  store i8 1, ptr @acpi_osi_handler.__already_done.39, align 1, !dbg !539
  store i8 1, ptr %__ret_once54, align 1, !dbg !539
  br label %if.end70, !dbg !539

if.end70:                                         ; preds = %if.then69, %land.end61
  %17 = load i8, ptr %__ret_once54, align 1, !dbg !535, !range !404, !noundef !405
  %tobool72 = trunc i8 %17 to i1, !dbg !535
  %lnot73 = xor i1 %tobool72, true, !dbg !535
  %lnot75 = xor i1 %lnot73, true, !dbg !535
  %lnot.ext76 = zext i1 %lnot75 to i32, !dbg !535
  %conv77 = sext i32 %lnot.ext76 to i64, !dbg !535
  %expval78 = call i64 @llvm.expect.i64(i64 %conv77, i64 0), !dbg !535
  store i64 %expval78, ptr %tmp71, align 8, !dbg !536
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once54) #7, !dbg !541
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond47) #7, !dbg !541
  %18 = load i64, ptr %tmp71, align 8, !dbg !535
  %tobool79 = icmp ne i64 %18, 0, !dbg !541
  br i1 %tobool79, label %if.then80, label %if.end107, !dbg !534

if.then80:                                        ; preds = %if.end70
  br label %do.body81, !dbg !542

do.body81:                                        ; preds = %if.then80
  br label %do.cond82, !dbg !544

do.cond82:                                        ; preds = %do.body81
  br label %do.end83, !dbg !544

do.end83:                                         ; preds = %do.cond82
  %bf.load85 = load i8, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !542
  %bf.lshr86 = lshr i8 %bf.load85, 3, !dbg !542
  %bf.clear87 = and i8 %bf.lshr86, 1, !dbg !542
  %bf.cast88 = zext i8 %bf.clear87 to i32, !dbg !542
  %tobool89 = icmp ne i32 %bf.cast88, 0, !dbg !542
  %19 = zext i1 %tobool89 to i64, !dbg !542
  %cond90 = select i1 %tobool89, ptr @.str.34, ptr @.str.35, !dbg !542
  %bf.load91 = load i8, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !542
  %bf.lshr92 = lshr i8 %bf.load91, 5, !dbg !542
  %bf.clear93 = and i8 %bf.lshr92, 1, !dbg !542
  %bf.cast94 = zext i8 %bf.clear93 to i32, !dbg !542
  %tobool95 = icmp ne i32 %bf.cast94, 0, !dbg !542
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !542

cond.true96:                                      ; preds = %do.end83
  br label %cond.end104, !dbg !542

cond.false97:                                     ; preds = %do.end83
  %bf.load98 = load i8, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !542
  %bf.lshr99 = lshr i8 %bf.load98, 4, !dbg !542
  %bf.clear100 = and i8 %bf.lshr99, 1, !dbg !542
  %bf.cast101 = zext i8 %bf.clear100 to i32, !dbg !542
  %tobool102 = icmp ne i32 %bf.cast101, 0, !dbg !542
  %20 = zext i1 %tobool102 to i64, !dbg !542
  %cond103 = select i1 %tobool102, ptr @.str.37, ptr @.str.38, !dbg !542
  br label %cond.end104, !dbg !542

cond.end104:                                      ; preds = %cond.false97, %cond.true96
  %cond105 = phi ptr [ @.str.36, %cond.true96 ], [ %cond103, %cond.false97 ], !dbg !542
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef @.str.40, ptr noundef %cond90, ptr noundef %cond105) #8, !dbg !542
  store i32 %call106, ptr %tmp84, align 4, !dbg !544
  %21 = load i32, ptr %tmp84, align 4, !dbg !542
  br label %if.end107, !dbg !541

if.end107:                                        ; preds = %cond.end104, %if.end70
  %22 = load i8, ptr %__ret_do_once46, align 1, !dbg !534, !range !404, !noundef !405
  %tobool109 = trunc i8 %22 to i1, !dbg !534
  %lnot110 = xor i1 %tobool109, true, !dbg !534
  %lnot112 = xor i1 %lnot110, true, !dbg !534
  %lnot.ext113 = zext i1 %lnot112 to i32, !dbg !534
  %conv114 = sext i32 %lnot.ext113 to i64, !dbg !534
  %expval115 = call i64 @llvm.expect.i64(i64 %conv114, i64 0), !dbg !534
  store i64 %expval115, ptr %tmp108, align 8, !dbg !541
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once46) #7, !dbg !546
  %23 = load i64, ptr %tmp108, align 8, !dbg !534
  br label %if.end116, !dbg !547

if.end116:                                        ; preds = %if.end107, %if.end42
  %24 = load i32, ptr %supported.addr, align 4, !dbg !548
  ret i32 %24, !dbg !549
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @acpi_osi_setup_late() #0 section ".init.text" align 16 !dbg !550 {
entry:
  %osi = alloca ptr, align 8
  %str = alloca ptr, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp21 = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %osi) #7, !dbg !556
  call void @llvm.dbg.declare(metadata ptr %osi, metadata !552, metadata !DIExpression()), !dbg !557
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #7, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %str, metadata !553, metadata !DIExpression()), !dbg !559
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !560
  call void @llvm.dbg.declare(metadata ptr %i, metadata !554, metadata !DIExpression()), !dbg !561
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #7, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %status, metadata !555, metadata !DIExpression()), !dbg !563
  %0 = load i8, ptr @osi_config, align 4, !dbg !564
  %tobool = icmp ne i8 %0, 0, !dbg !566
  br i1 %tobool, label %if.then, label %if.end5, !dbg !567

if.then:                                          ; preds = %entry
  %1 = load i8, ptr @osi_config, align 4, !dbg !568
  %call = call i32 @acpi_update_interfaces(i8 noundef zeroext %1) #9, !dbg !570
  store i32 %call, ptr %status, align 4, !dbg !571
  %2 = load i32, ptr %status, align 4, !dbg !572
  %tobool1 = icmp ne i32 %2, 0, !dbg !572
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !574

if.then2:                                         ; preds = %if.then
  br label %do.body, !dbg !575

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !577

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !577

do.end:                                           ; preds = %do.cond
  %3 = load i8, ptr @osi_config, align 4, !dbg !575
  %conv = zext i8 %3 to i32, !dbg !575
  %cmp = icmp eq i32 %conv, 7, !dbg !575
  %4 = zext i1 %cmp to i64, !dbg !575
  %cond = select i1 %cmp, ptr @.str.42, ptr @.str.38, !dbg !575
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.41, ptr noundef %cond) #8, !dbg !575
  store i32 %call4, ptr %tmp, align 4, !dbg !577
  %5 = load i32, ptr %tmp, align 4, !dbg !575
  br label %if.end, !dbg !579

if.end:                                           ; preds = %do.end, %if.then
  br label %if.end5, !dbg !580

if.end5:                                          ; preds = %if.end, %entry
  store i32 0, ptr %i, align 4, !dbg !581
  br label %for.cond, !dbg !583

for.cond:                                         ; preds = %for.inc, %if.end5
  %6 = load i32, ptr %i, align 4, !dbg !584
  %cmp6 = icmp slt i32 %6, 16, !dbg !586
  br i1 %cmp6, label %for.body, label %for.end, !dbg !587

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %i, align 4, !dbg !588
  %idxprom = sext i32 %7 to i64, !dbg !590
  %arrayidx = getelementptr [16 x %struct.acpi_osi_entry], ptr @osi_setup_entries, i64 0, i64 %idxprom, !dbg !590
  store ptr %arrayidx, ptr %osi, align 8, !dbg !591
  %8 = load ptr, ptr %osi, align 8, !dbg !592
  %string = getelementptr inbounds %struct.acpi_osi_entry, ptr %8, i32 0, i32 0, !dbg !593
  %arraydecay = getelementptr inbounds [64 x i8], ptr %string, i64 0, i64 0, !dbg !592
  store ptr %arraydecay, ptr %str, align 8, !dbg !594
  %9 = load ptr, ptr %str, align 8, !dbg !595
  %10 = load i8, ptr %9, align 1, !dbg !597
  %conv8 = zext i8 %10 to i32, !dbg !597
  %cmp9 = icmp eq i32 %conv8, 0, !dbg !598
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !599

if.then11:                                        ; preds = %for.body
  br label %for.end, !dbg !600

if.end12:                                         ; preds = %for.body
  %11 = load ptr, ptr %osi, align 8, !dbg !601
  %enable = getelementptr inbounds %struct.acpi_osi_entry, ptr %11, i32 0, i32 1, !dbg !603
  %12 = load i8, ptr %enable, align 1, !dbg !603, !range !404, !noundef !405
  %tobool13 = trunc i8 %12 to i1, !dbg !603
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !604

if.then14:                                        ; preds = %if.end12
  %13 = load ptr, ptr %str, align 8, !dbg !605
  %call15 = call i32 @acpi_install_interface(ptr noundef %13) #9, !dbg !607
  store i32 %call15, ptr %status, align 4, !dbg !608
  %14 = load i32, ptr %status, align 4, !dbg !609
  %tobool16 = icmp ne i32 %14, 0, !dbg !609
  br i1 %tobool16, label %if.end23, label %if.then17, !dbg !611

if.then17:                                        ; preds = %if.then14
  br label %do.body18, !dbg !612

do.body18:                                        ; preds = %if.then17
  br label %do.cond19, !dbg !614

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !614

do.end20:                                         ; preds = %do.cond19
  %15 = load ptr, ptr %str, align 8, !dbg !612
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef @.str.43, ptr noundef %15) #8, !dbg !612
  store i32 %call22, ptr %tmp21, align 4, !dbg !614
  %16 = load i32, ptr %tmp21, align 4, !dbg !612
  br label %if.end23, !dbg !616

if.end23:                                         ; preds = %do.end20, %if.then14
  br label %if.end33, !dbg !617

if.else:                                          ; preds = %if.end12
  %17 = load ptr, ptr %str, align 8, !dbg !618
  %call24 = call i32 @acpi_remove_interface(ptr noundef %17) #9, !dbg !620
  store i32 %call24, ptr %status, align 4, !dbg !621
  %18 = load i32, ptr %status, align 4, !dbg !622
  %tobool25 = icmp ne i32 %18, 0, !dbg !622
  br i1 %tobool25, label %if.end32, label %if.then26, !dbg !624

if.then26:                                        ; preds = %if.else
  br label %do.body27, !dbg !625

do.body27:                                        ; preds = %if.then26
  br label %do.cond28, !dbg !627

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !627

do.end29:                                         ; preds = %do.cond28
  %19 = load ptr, ptr %str, align 8, !dbg !625
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef @.str.44, ptr noundef %19) #8, !dbg !625
  store i32 %call31, ptr %tmp30, align 4, !dbg !627
  %20 = load i32, ptr %tmp30, align 4, !dbg !625
  br label %if.end32, !dbg !629

if.end32:                                         ; preds = %do.end29, %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end23
  br label %for.inc, !dbg !630

for.inc:                                          ; preds = %if.end33
  %21 = load i32, ptr %i, align 4, !dbg !631
  %inc = add i32 %21, 1, !dbg !631
  store i32 %inc, ptr %i, align 4, !dbg !631
  br label %for.cond, !dbg !632, !llvm.loop !633

for.end:                                          ; preds = %if.then11, %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #7, !dbg !635
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !635
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #7, !dbg !635
  call void @llvm.lifetime.end.p0(i64 8, ptr %osi) #7, !dbg !635
  ret void, !dbg !635
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @acpi_osi_setup_linux(i1 noundef zeroext %enable) #0 section ".init.text" align 16 !dbg !636 {
entry:
  %enable.addr = alloca i8, align 1
  %frombool = zext i1 %enable to i8
  store i8 %frombool, ptr %enable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enable.addr, metadata !640, metadata !DIExpression()), !dbg !641
  %bf.load = load i8, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !642
  %bf.clear = and i8 %bf.load, -3, !dbg !642
  %bf.set = or i8 %bf.clear, 0, !dbg !642
  store i8 %bf.set, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !642
  %bf.load1 = load i8, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !643
  %bf.clear2 = and i8 %bf.load1, -5, !dbg !643
  %bf.set3 = or i8 %bf.clear2, 4, !dbg !643
  store i8 %bf.set3, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !643
  %0 = load i8, ptr %enable.addr, align 1, !dbg !644, !range !404, !noundef !405
  %tobool = trunc i8 %0 to i1, !dbg !644
  call void @__acpi_osi_setup_linux(i1 noundef zeroext %tobool) #8, !dbg !645
  ret void, !dbg !646
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @acpi_osi_setup_darwin(i1 noundef zeroext %enable) #0 section ".init.text" align 16 !dbg !647 {
entry:
  %enable.addr = alloca i8, align 1
  %frombool = zext i1 %enable to i8
  store i8 %frombool, ptr %enable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enable.addr, metadata !649, metadata !DIExpression()), !dbg !650
  %bf.load = load i8, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !651
  %bf.clear = and i8 %bf.load, -17, !dbg !651
  %bf.set = or i8 %bf.clear, 0, !dbg !651
  store i8 %bf.set, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !651
  %bf.load1 = load i8, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !652
  %bf.clear2 = and i8 %bf.load1, -33, !dbg !652
  %bf.set3 = or i8 %bf.clear2, 32, !dbg !652
  store i8 %bf.set3, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !652
  %0 = load i8, ptr %enable.addr, align 1, !dbg !653, !range !404, !noundef !405
  %tobool = trunc i8 %0 to i1, !dbg !653
  call void @__acpi_osi_setup_darwin(i1 noundef zeroext %tobool) #8, !dbg !654
  ret void, !dbg !655
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @__acpi_osi_setup_linux(i1 noundef zeroext %enable) #0 section ".init.text" align 16 !dbg !656 {
entry:
  %enable.addr = alloca i8, align 1
  %frombool = zext i1 %enable to i8
  store i8 %frombool, ptr %enable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enable.addr, metadata !658, metadata !DIExpression()), !dbg !659
  %0 = load i8, ptr %enable.addr, align 1, !dbg !660, !range !404, !noundef !405
  %tobool = trunc i8 %0 to i1, !dbg !660
  %lnot = xor i1 %tobool, true, !dbg !661
  %lnot1 = xor i1 %lnot, true, !dbg !662
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !662
  %1 = trunc i32 %lnot.ext to i8, !dbg !663
  %bf.load = load i8, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !663
  %bf.value = and i8 %1, 1, !dbg !663
  %bf.clear = and i8 %bf.load, -2, !dbg !663
  %bf.set = or i8 %bf.clear, %bf.value, !dbg !663
  store i8 %bf.set, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !663
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !663
  %2 = load i8, ptr %enable.addr, align 1, !dbg !664, !range !404, !noundef !405
  %tobool2 = trunc i8 %2 to i1, !dbg !664
  br i1 %tobool2, label %if.then, label %if.else, !dbg !666

if.then:                                          ; preds = %entry
  call void @acpi_osi_setup(ptr noundef @.str.2) #8, !dbg !667
  br label %if.end, !dbg !667

if.else:                                          ; preds = %entry
  call void @acpi_osi_setup(ptr noundef @.str.3) #8, !dbg !668
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !669
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @__acpi_osi_setup_darwin(i1 noundef zeroext %enable) #0 section ".init.text" align 16 !dbg !670 {
entry:
  %enable.addr = alloca i8, align 1
  %frombool = zext i1 %enable to i8
  store i8 %frombool, ptr %enable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enable.addr, metadata !672, metadata !DIExpression()), !dbg !673
  %0 = load i8, ptr %enable.addr, align 1, !dbg !674, !range !404, !noundef !405
  %tobool = trunc i8 %0 to i1, !dbg !674
  %lnot = xor i1 %tobool, true, !dbg !675
  %lnot1 = xor i1 %lnot, true, !dbg !676
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !676
  %1 = trunc i32 %lnot.ext to i8, !dbg !677
  %bf.load = load i8, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !677
  %bf.value = and i8 %1, 1, !dbg !677
  %bf.shl = shl i8 %bf.value, 3, !dbg !677
  %bf.clear = and i8 %bf.load, -9, !dbg !677
  %bf.set = or i8 %bf.clear, %bf.shl, !dbg !677
  store i8 %bf.set, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !677
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !677
  %2 = load i8, ptr %enable.addr, align 1, !dbg !678, !range !404, !noundef !405
  %tobool2 = trunc i8 %2 to i1, !dbg !678
  br i1 %tobool2, label %if.then, label %if.else, !dbg !680

if.then:                                          ; preds = %entry
  call void @acpi_osi_setup(ptr noundef @.str.6) #8, !dbg !681
  call void @acpi_osi_setup(ptr noundef @.str.4) #8, !dbg !683
  br label %if.end, !dbg !684

if.else:                                          ; preds = %entry
  call void @acpi_osi_setup(ptr noundef @.str.7) #8, !dbg !685
  call void @acpi_osi_setup(ptr noundef @.str.5) #8, !dbg !687
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !688
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !689 dso_local i32 @dmi_check_system(ptr noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @acpi_osi_dmi_darwin() #0 section ".init.text" align 16 !dbg !691 {
entry:
  %tmp = alloca i32, align 4
  br label %do.body, !dbg !692

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !694

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.32) #8, !dbg !692
  store i32 %call, ptr %tmp, align 4, !dbg !694
  %0 = load i32, ptr %tmp, align 4, !dbg !692
  %bf.load = load i8, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !696
  %bf.clear = and i8 %bf.load, -17, !dbg !696
  %bf.set = or i8 %bf.clear, 16, !dbg !696
  store i8 %bf.set, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !696
  call void @__acpi_osi_setup_darwin(i1 noundef zeroext true) #8, !dbg !697
  ret void, !dbg !698
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @dmi_disable_osi_vista(ptr noundef %d) #0 section ".init.text" align 16 !dbg !699 {
entry:
  %d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !701, metadata !DIExpression()), !dbg !702
  br label %do.body, !dbg !703

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !705

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %d.addr, align 8, !dbg !703
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %0, i32 0, i32 1, !dbg !703
  %1 = load ptr, ptr %ident, align 8, !dbg !703
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.25, ptr noundef %1) #8, !dbg !703
  store i32 %call, ptr %tmp, align 4, !dbg !705
  %2 = load i32, ptr %tmp, align 4, !dbg !703
  call void @acpi_osi_setup(ptr noundef @.str.26) #8, !dbg !707
  call void @acpi_osi_setup(ptr noundef @.str.27) #8, !dbg !708
  call void @acpi_osi_setup(ptr noundef @.str.28) #8, !dbg !709
  ret i32 0, !dbg !710
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @dmi_disable_osi_win7(ptr noundef %d) #0 section ".init.text" align 16 !dbg !711 {
entry:
  %d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !713, metadata !DIExpression()), !dbg !714
  br label %do.body, !dbg !715

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !717

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %d.addr, align 8, !dbg !715
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %0, i32 0, i32 1, !dbg !715
  %1 = load ptr, ptr %ident, align 8, !dbg !715
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.25, ptr noundef %1) #8, !dbg !715
  store i32 %call, ptr %tmp, align 4, !dbg !717
  %2 = load i32, ptr %tmp, align 4, !dbg !715
  call void @acpi_osi_setup(ptr noundef @.str.29) #8, !dbg !719
  ret i32 0, !dbg !720
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @dmi_disable_osi_win8(ptr noundef %d) #0 section ".init.text" align 16 !dbg !721 {
entry:
  %d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !723, metadata !DIExpression()), !dbg !724
  br label %do.body, !dbg !725

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !727

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %d.addr, align 8, !dbg !725
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %0, i32 0, i32 1, !dbg !725
  %1 = load ptr, ptr %ident, align 8, !dbg !725
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.25, ptr noundef %1) #8, !dbg !725
  store i32 %call, ptr %tmp, align 4, !dbg !727
  %2 = load i32, ptr %tmp, align 4, !dbg !725
  call void @acpi_osi_setup(ptr noundef @.str.30) #8, !dbg !729
  ret i32 0, !dbg !730
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @dmi_enable_osi_linux(ptr noundef %d) #0 section ".init.text" align 16 !dbg !731 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !733, metadata !DIExpression()), !dbg !734
  %0 = load ptr, ptr %d.addr, align 8, !dbg !735
  call void @acpi_osi_dmi_linux(i1 noundef zeroext true, ptr noundef %0) #8, !dbg !736
  ret i32 0, !dbg !737
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @acpi_osi_dmi_linux(i1 noundef zeroext %enable, ptr noundef %d) #0 section ".init.text" align 16 !dbg !738 {
entry:
  %enable.addr = alloca i8, align 1
  %d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %frombool = zext i1 %enable to i8
  store i8 %frombool, ptr %enable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enable.addr, metadata !742, metadata !DIExpression()), !dbg !744
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !743, metadata !DIExpression()), !dbg !745
  br label %do.body, !dbg !746

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !748

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %d.addr, align 8, !dbg !746
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %0, i32 0, i32 1, !dbg !746
  %1 = load ptr, ptr %ident, align 8, !dbg !746
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.31, ptr noundef %1) #8, !dbg !746
  store i32 %call, ptr %tmp, align 4, !dbg !748
  %2 = load i32, ptr %tmp, align 4, !dbg !746
  %bf.load = load i8, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !750
  %bf.clear = and i8 %bf.load, -3, !dbg !750
  %bf.set = or i8 %bf.clear, 2, !dbg !750
  store i8 %bf.set, ptr getelementptr inbounds (%struct.acpi_osi_config, ptr @osi_config, i32 0, i32 1), align 1, !dbg !750
  %3 = load i8, ptr %enable.addr, align 1, !dbg !751, !range !404, !noundef !405
  %tobool = trunc i8 %3 to i1, !dbg !751
  call void @__acpi_osi_setup_linux(i1 noundef zeroext %tobool) #8, !dbg !752
  ret void, !dbg !753
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !754 dso_local i32 @acpi_update_interfaces(i8 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !757 dso_local i32 @acpi_install_interface(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !760 dso_local i32 @acpi_remove_interface(ptr noundef) #4

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!282, !283, !284, !285, !286, !287, !288, !289}
!llvm.ident = !{!290}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/osi.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29769a26b9c8fb0f97e6adba90a4a20b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "osi_config", scope: !9, file: !2, line: 40, type: !271, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.osi.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22osi\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/osi.ll drivers/acpi/osi.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !17, globals: !19, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 10, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "false", value: 0)
!16 = !DIEnumerator(name: "true", value: 1)
!17 = !{!18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !{!0, !20, !35, !7, !37, !52, !57, !62, !67, !69, !74, !79, !84, !87, !90, !95, !97, !102, !107, !112, !114, !119, !121, !126, !128, !130, !132, !134, !136, !138, !167, !172, !174, !177, !179, !181, !183, !188, !193, !223, !228, !230, !232, !237, !242, !247, !249, !254, !259, !264, !269}
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "__setup_osi_setup", scope: !9, file: !2, line: 240, type: !22, isLocal: true, isDefinition: true, align: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !23, line: 324, size: 192, elements: !24)
!23 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!24 = !{!25, !28, !34}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !22, file: !23, line: 325, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !22, file: !23, line: 326, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !33}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !22, file: !23, line: 327, baseType: !32, size: 32, offset: 128)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_osi_is_win8206", scope: !9, file: !2, line: 246, type: !18, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "osi_setup_entries", scope: !9, file: !2, line: 42, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 8320, elements: !50)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_osi_entry", file: !2, line: 25, size: 520, elements: !41)
!41 = !{!42, !46}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !40, file: !2, line: 26, baseType: !43, size: 512)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !40, file: !2, line: 27, baseType: !47, size: 8, offset: 512)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !48, line: 35, baseType: !49)
!48 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!49 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!50 = !{!51}
!51 = !DISubrange(count: 16)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "__setup_str_osi_setup", scope: !9, file: !2, line: 240, type: !54, isLocal: true, isDefinition: true, align: 8)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 80, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 10)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 6)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 7)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 231, type: !64, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 233, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 8)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 2)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 3)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 305, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !50)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 322, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !55)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 330, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 17)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 338, type: !86, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 346, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 12)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 354, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 11)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 362, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 23)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 370, type: !104, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 378, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 14)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 386, type: !116, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 399, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 19)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 407, type: !123, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 415, type: !123, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !2, line: 423, type: !123, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !2, line: 431, type: !92, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !2, line: 439, type: !92, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !2, line: 458, type: !123, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "acpi_osi_dmi_table", scope: !9, file: !2, line: 302, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 49536, elements: !165)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !143, line: 587, size: 2752, elements: !144)
!143 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!144 = !{!145, !150, !151, !164}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !142, file: !143, line: 588, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!32, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !142, file: !143, line: 589, baseType: !26, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !142, file: !143, line: 590, baseType: !152, size: 2560, offset: 128)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 2560, elements: !162)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !143, line: 581, size: 640, elements: !154)
!154 = !{!155, !157, !158}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !153, file: !143, line: 582, baseType: !156, size: 7, flags: DIFlagBitField, extraData: i64 0)
!156 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !153, file: !143, line: 583, baseType: !156, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !153, file: !143, line: 584, baseType: !159, size: 632, offset: 8)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 79)
!162 = !{!163}
!163 = !DISubrange(count: 4)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !142, file: !143, line: 591, baseType: !18, size: 64, offset: 2688)
!165 = !{!166}
!166 = !DISubrange(count: 18)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 272, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 26)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !2, line: 273, type: !116, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 274, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !165)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !2, line: 275, type: !176, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 283, type: !116, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !116, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !2, line: 258, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 49)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !2, line: 250, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 62)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "__already_done", scope: !195, file: !2, line: 52, type: !47, isLocal: true, isDefinition: true)
!195 = distinct !DISubprogram(name: "acpi_osi_handler", scope: !2, file: !2, line: 49, type: !196, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !204)
!196 = !DISubroutineType(types: !197)
!197 = !{!198, !202, !198}
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !199, line: 21, baseType: !200)
!199 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !201, line: 27, baseType: !13)
!201 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !203, line: 423, baseType: !33)
!203 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!204 = !{!205, !206, !207, !211, !214, !215, !219, !222}
!205 = !DILocalVariable(name: "interface", arg: 1, scope: !195, file: !2, line: 49, type: !202)
!206 = !DILocalVariable(name: "supported", arg: 2, scope: !195, file: !2, line: 49, type: !198)
!207 = !DILocalVariable(name: "__ret_do_once", scope: !208, file: !2, line: 52, type: !47)
!208 = distinct !DILexicalBlock(scope: !209, file: !2, line: 52, column: 3)
!209 = distinct !DILexicalBlock(scope: !210, file: !2, line: 51, column: 35)
!210 = distinct !DILexicalBlock(scope: !195, file: !2, line: 51, column: 6)
!211 = !DILocalVariable(name: "__ret_cond", scope: !212, file: !2, line: 52, type: !47)
!212 = distinct !DILexicalBlock(scope: !213, file: !2, line: 52, column: 3)
!213 = distinct !DILexicalBlock(scope: !208, file: !2, line: 52, column: 3)
!214 = !DILocalVariable(name: "__ret_once", scope: !212, file: !2, line: 52, type: !47)
!215 = !DILocalVariable(name: "__ret_do_once", scope: !216, file: !2, line: 59, type: !47)
!216 = distinct !DILexicalBlock(scope: !217, file: !2, line: 59, column: 3)
!217 = distinct !DILexicalBlock(scope: !218, file: !2, line: 58, column: 36)
!218 = distinct !DILexicalBlock(scope: !195, file: !2, line: 58, column: 6)
!219 = !DILocalVariable(name: "__ret_cond", scope: !220, file: !2, line: 59, type: !47)
!220 = distinct !DILexicalBlock(scope: !221, file: !2, line: 59, column: 3)
!221 = distinct !DILexicalBlock(scope: !216, file: !2, line: 59, column: 3)
!222 = !DILocalVariable(name: "__ret_once", scope: !220, file: !2, line: 59, type: !47)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 53)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !71, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !71, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !234, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 13)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !239, isLocal: true, isDefinition: true)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 9)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 1)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "__already_done", scope: !195, file: !2, line: 59, type: !47, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !251, isLocal: true, isDefinition: true)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 38)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !256, isLocal: true, isDefinition: true)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 40)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !261, isLocal: true, isDefinition: true)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 20)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !2, line: 216, type: !266, isLocal: true, isDefinition: true)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 24)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !2, line: 220, type: !169, isLocal: true, isDefinition: true)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_osi_config", file: !2, line: 30, size: 32, elements: !272)
!272 = !{!273, !276, !277, !278, !279, !280, !281}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "default_disabling", scope: !271, file: !2, line: 31, baseType: !274, size: 8)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !199, line: 17, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !201, line: 21, baseType: !156)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "linux_enable", scope: !271, file: !2, line: 32, baseType: !13, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "linux_dmi", scope: !271, file: !2, line: 33, baseType: !13, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "linux_cmdline", scope: !271, file: !2, line: 34, baseType: !13, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "darwin_enable", scope: !271, file: !2, line: 35, baseType: !13, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "darwin_dmi", scope: !271, file: !2, line: 36, baseType: !13, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "darwin_cmdline", scope: !271, file: !2, line: 37, baseType: !13, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!282 = !{i32 7, !"Dwarf Version", i32 5}
!283 = !{i32 2, !"Debug Info Version", i32 3}
!284 = !{i32 1, !"wchar_size", i32 2}
!285 = !{i32 8, !"cf-protection-branch", i32 1}
!286 = !{i32 4, !"function_return_thunk_extern", i32 1}
!287 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!288 = !{i32 1, !"Code Model", i32 2}
!289 = !{i32 1, !"override-stack-alignment", i32 8}
!290 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!291 = distinct !DISubprogram(name: "acpi_osi_setup", scope: !2, file: !2, line: 69, type: !292, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !294)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !33}
!294 = !{!295, !296, !298, !299}
!295 = !DILocalVariable(name: "str", arg: 1, scope: !291, file: !2, line: 69, type: !33)
!296 = !DILocalVariable(name: "osi", scope: !291, file: !2, line: 71, type: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!298 = !DILocalVariable(name: "enable", scope: !291, file: !2, line: 72, type: !47)
!299 = !DILocalVariable(name: "i", scope: !291, file: !2, line: 73, type: !32)
!300 = !DILocation(line: 69, column: 34, scope: !291)
!301 = !DILocation(line: 71, column: 2, scope: !291)
!302 = !DILocation(line: 71, column: 25, scope: !291)
!303 = !DILocation(line: 72, column: 2, scope: !291)
!304 = !DILocation(line: 72, column: 7, scope: !291)
!305 = !DILocation(line: 73, column: 2, scope: !291)
!306 = !DILocation(line: 73, column: 6, scope: !291)
!307 = !DILocation(line: 75, column: 7, scope: !308)
!308 = distinct !DILexicalBlock(scope: !291, file: !2, line: 75, column: 6)
!309 = !DILocation(line: 75, column: 6, scope: !291)
!310 = !DILocation(line: 76, column: 3, scope: !308)
!311 = !DILocation(line: 78, column: 6, scope: !312)
!312 = distinct !DILexicalBlock(scope: !291, file: !2, line: 78, column: 6)
!313 = !DILocation(line: 78, column: 10, scope: !312)
!314 = !DILocation(line: 78, column: 18, scope: !312)
!315 = !DILocation(line: 78, column: 22, scope: !312)
!316 = !DILocation(line: 78, column: 21, scope: !312)
!317 = !DILocation(line: 78, column: 26, scope: !312)
!318 = !DILocation(line: 78, column: 6, scope: !291)
!319 = !DILocation(line: 79, column: 3, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !2, line: 79, column: 3)
!321 = distinct !DILexicalBlock(scope: !312, file: !2, line: 78, column: 35)
!322 = !DILocation(line: 79, column: 3, scope: !323)
!323 = distinct !DILexicalBlock(scope: !320, file: !2, line: 79, column: 3)
!324 = !DILocation(line: 80, column: 30, scope: !321)
!325 = !DILocation(line: 81, column: 3, scope: !321)
!326 = !DILocation(line: 84, column: 7, scope: !327)
!327 = distinct !DILexicalBlock(scope: !291, file: !2, line: 84, column: 6)
!328 = !DILocation(line: 84, column: 6, scope: !327)
!329 = !DILocation(line: 84, column: 11, scope: !327)
!330 = !DILocation(line: 84, column: 6, scope: !291)
!331 = !DILocation(line: 85, column: 6, scope: !332)
!332 = distinct !DILexicalBlock(scope: !327, file: !2, line: 84, column: 19)
!333 = !DILocation(line: 86, column: 8, scope: !334)
!334 = distinct !DILexicalBlock(scope: !332, file: !2, line: 86, column: 7)
!335 = !DILocation(line: 86, column: 7, scope: !334)
!336 = !DILocation(line: 86, column: 12, scope: !334)
!337 = !DILocation(line: 86, column: 7, scope: !332)
!338 = !DILocation(line: 88, column: 20, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !2, line: 88, column: 8)
!340 = distinct !DILexicalBlock(scope: !334, file: !2, line: 86, column: 21)
!341 = !DILocation(line: 88, column: 9, scope: !339)
!342 = !DILocation(line: 88, column: 8, scope: !340)
!343 = !DILocation(line: 89, column: 34, scope: !339)
!344 = !DILocation(line: 89, column: 5, scope: !339)
!345 = !DILocation(line: 91, column: 4, scope: !340)
!346 = !DILocation(line: 92, column: 15, scope: !347)
!347 = distinct !DILexicalBlock(scope: !334, file: !2, line: 92, column: 14)
!348 = !DILocation(line: 92, column: 14, scope: !347)
!349 = !DILocation(line: 92, column: 19, scope: !347)
!350 = !DILocation(line: 92, column: 14, scope: !334)
!351 = !DILocation(line: 93, column: 33, scope: !352)
!352 = distinct !DILexicalBlock(scope: !347, file: !2, line: 92, column: 27)
!353 = !DILocation(line: 94, column: 11, scope: !354)
!354 = distinct !DILexicalBlock(scope: !352, file: !2, line: 94, column: 4)
!355 = !DILocation(line: 94, column: 9, scope: !354)
!356 = !DILocation(line: 94, column: 16, scope: !357)
!357 = distinct !DILexicalBlock(scope: !354, file: !2, line: 94, column: 4)
!358 = !DILocation(line: 94, column: 18, scope: !357)
!359 = !DILocation(line: 94, column: 4, scope: !354)
!360 = !DILocation(line: 95, column: 30, scope: !361)
!361 = distinct !DILexicalBlock(scope: !357, file: !2, line: 94, column: 49)
!362 = !DILocation(line: 95, column: 12, scope: !361)
!363 = !DILocation(line: 95, column: 9, scope: !361)
!364 = !DILocation(line: 96, column: 5, scope: !361)
!365 = !DILocation(line: 96, column: 10, scope: !361)
!366 = !DILocation(line: 96, column: 17, scope: !361)
!367 = !DILocation(line: 97, column: 4, scope: !361)
!368 = !DILocation(line: 94, column: 45, scope: !357)
!369 = !DILocation(line: 94, column: 4, scope: !357)
!370 = distinct !{!370, !359, !371, !372, !373}
!371 = !DILocation(line: 97, column: 4, scope: !354)
!372 = !{!"llvm.loop.mustprogress"}
!373 = !{!"llvm.loop.unroll.disable"}
!374 = !DILocation(line: 98, column: 4, scope: !352)
!375 = !DILocation(line: 99, column: 15, scope: !376)
!376 = distinct !DILexicalBlock(scope: !347, file: !2, line: 99, column: 14)
!377 = !DILocation(line: 99, column: 14, scope: !376)
!378 = !DILocation(line: 99, column: 19, scope: !376)
!379 = !DILocation(line: 99, column: 14, scope: !347)
!380 = !DILocation(line: 100, column: 33, scope: !381)
!381 = distinct !DILexicalBlock(scope: !376, file: !2, line: 99, column: 27)
!382 = !DILocation(line: 101, column: 4, scope: !381)
!383 = !DILocation(line: 103, column: 10, scope: !332)
!384 = !DILocation(line: 104, column: 2, scope: !332)
!385 = !DILocation(line: 106, column: 9, scope: !386)
!386 = distinct !DILexicalBlock(scope: !291, file: !2, line: 106, column: 2)
!387 = !DILocation(line: 106, column: 7, scope: !386)
!388 = !DILocation(line: 106, column: 14, scope: !389)
!389 = distinct !DILexicalBlock(scope: !386, file: !2, line: 106, column: 2)
!390 = !DILocation(line: 106, column: 16, scope: !389)
!391 = !DILocation(line: 106, column: 2, scope: !386)
!392 = !DILocation(line: 107, column: 28, scope: !393)
!393 = distinct !DILexicalBlock(scope: !389, file: !2, line: 106, column: 47)
!394 = !DILocation(line: 107, column: 10, scope: !393)
!395 = !DILocation(line: 107, column: 7, scope: !393)
!396 = !DILocation(line: 108, column: 15, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !2, line: 108, column: 7)
!398 = !DILocation(line: 108, column: 20, scope: !397)
!399 = !DILocation(line: 108, column: 28, scope: !397)
!400 = !DILocation(line: 108, column: 8, scope: !397)
!401 = !DILocation(line: 108, column: 7, scope: !393)
!402 = !DILocation(line: 109, column: 18, scope: !403)
!403 = distinct !DILexicalBlock(scope: !397, file: !2, line: 108, column: 34)
!404 = !{i8 0, i8 2}
!405 = !{}
!406 = !DILocation(line: 109, column: 4, scope: !403)
!407 = !DILocation(line: 109, column: 9, scope: !403)
!408 = !DILocation(line: 109, column: 16, scope: !403)
!409 = !DILocation(line: 110, column: 4, scope: !403)
!410 = !DILocation(line: 111, column: 14, scope: !411)
!411 = distinct !DILexicalBlock(scope: !397, file: !2, line: 111, column: 14)
!412 = !DILocation(line: 111, column: 19, scope: !411)
!413 = !DILocation(line: 111, column: 29, scope: !411)
!414 = !DILocation(line: 111, column: 14, scope: !397)
!415 = !DILocation(line: 112, column: 18, scope: !416)
!416 = distinct !DILexicalBlock(scope: !411, file: !2, line: 111, column: 38)
!417 = !DILocation(line: 112, column: 4, scope: !416)
!418 = !DILocation(line: 112, column: 9, scope: !416)
!419 = !DILocation(line: 112, column: 16, scope: !416)
!420 = !DILocation(line: 113, column: 12, scope: !416)
!421 = !DILocation(line: 113, column: 17, scope: !416)
!422 = !DILocation(line: 113, column: 25, scope: !416)
!423 = !DILocation(line: 113, column: 4, scope: !416)
!424 = !DILocation(line: 114, column: 4, scope: !416)
!425 = !DILocation(line: 116, column: 2, scope: !393)
!426 = !DILocation(line: 106, column: 43, scope: !389)
!427 = !DILocation(line: 106, column: 2, scope: !389)
!428 = distinct !{!428, !391, !429, !372, !373}
!429 = !DILocation(line: 116, column: 2, scope: !386)
!430 = !DILocation(line: 117, column: 1, scope: !291)
!431 = !DISubprogram(name: "_printk", scope: !432, file: !432, line: 153, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!432 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!433 = !DISubroutineType(types: !434)
!434 = !{!32, !26, null}
!435 = !DISubprogram(name: "strcmp", scope: !436, file: !436, line: 88, type: !437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!437 = !DISubroutineType(types: !438)
!438 = !{!32, !26, !26}
!439 = !DISubprogram(name: "strncpy", scope: !436, file: !436, line: 66, type: !440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!440 = !DISubroutineType(types: !441)
!441 = !{!33, !33, !26, !442}
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !443, line: 72, baseType: !444)
!443 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !443, line: 16, baseType: !445)
!445 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!446 = distinct !DISubprogram(name: "osi_setup", scope: !2, file: !2, line: 225, type: !30, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !447)
!447 = !{!448}
!448 = !DILocalVariable(name: "str", arg: 1, scope: !446, file: !2, line: 225, type: !33)
!449 = !DILocation(line: 225, column: 35, scope: !446)
!450 = !DILocation(line: 227, column: 6, scope: !451)
!451 = distinct !DILexicalBlock(scope: !446, file: !2, line: 227, column: 6)
!452 = !DILocation(line: 227, column: 10, scope: !451)
!453 = !DILocation(line: 227, column: 30, scope: !451)
!454 = !DILocation(line: 227, column: 14, scope: !451)
!455 = !DILocation(line: 227, column: 6, scope: !446)
!456 = !DILocation(line: 228, column: 3, scope: !451)
!457 = !DILocation(line: 229, column: 11, scope: !458)
!458 = distinct !DILexicalBlock(scope: !451, file: !2, line: 229, column: 11)
!459 = !DILocation(line: 229, column: 15, scope: !458)
!460 = !DILocation(line: 229, column: 36, scope: !458)
!461 = !DILocation(line: 229, column: 19, scope: !458)
!462 = !DILocation(line: 229, column: 11, scope: !451)
!463 = !DILocation(line: 230, column: 3, scope: !458)
!464 = !DILocation(line: 231, column: 11, scope: !465)
!465 = distinct !DILexicalBlock(scope: !458, file: !2, line: 231, column: 11)
!466 = !DILocation(line: 231, column: 15, scope: !465)
!467 = !DILocation(line: 231, column: 36, scope: !465)
!468 = !DILocation(line: 231, column: 19, scope: !465)
!469 = !DILocation(line: 231, column: 11, scope: !458)
!470 = !DILocation(line: 232, column: 3, scope: !465)
!471 = !DILocation(line: 233, column: 11, scope: !472)
!472 = distinct !DILexicalBlock(scope: !465, file: !2, line: 233, column: 11)
!473 = !DILocation(line: 233, column: 15, scope: !472)
!474 = !DILocation(line: 233, column: 37, scope: !472)
!475 = !DILocation(line: 233, column: 19, scope: !472)
!476 = !DILocation(line: 233, column: 11, scope: !465)
!477 = !DILocation(line: 234, column: 3, scope: !472)
!478 = !DILocation(line: 236, column: 18, scope: !472)
!479 = !DILocation(line: 236, column: 3, scope: !472)
!480 = !DILocation(line: 238, column: 2, scope: !446)
!481 = distinct !DISubprogram(name: "acpi_osi_is_win8", scope: !2, file: !2, line: 242, type: !482, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!482 = !DISubroutineType(types: !483)
!483 = !{!47}
!484 = !DILocation(line: 244, column: 9, scope: !481)
!485 = !DILocation(line: 244, column: 27, scope: !481)
!486 = !DILocation(line: 244, column: 2, scope: !481)
!487 = distinct !DISubprogram(name: "early_acpi_osi_init", scope: !2, file: !2, line: 476, type: !488, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!488 = !DISubroutineType(types: !489)
!489 = !{!32}
!490 = !DILocation(line: 478, column: 2, scope: !487)
!491 = !DILocation(line: 480, column: 2, scope: !487)
!492 = distinct !DISubprogram(name: "acpi_osi_dmi_blacklisted", scope: !2, file: !2, line: 467, type: !493, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!493 = !DISubroutineType(types: !494)
!494 = !{null}
!495 = !DILocation(line: 469, column: 2, scope: !492)
!496 = !DILocation(line: 472, column: 6, scope: !497)
!497 = distinct !DILexicalBlock(scope: !492, file: !2, line: 472, column: 6)
!498 = !DILocation(line: 472, column: 6, scope: !492)
!499 = !DILocation(line: 473, column: 3, scope: !497)
!500 = !DILocation(line: 474, column: 1, scope: !492)
!501 = distinct !DISubprogram(name: "acpi_osi_init", scope: !2, file: !2, line: 483, type: !488, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!502 = !DILocation(line: 485, column: 2, scope: !501)
!503 = !DILocation(line: 486, column: 2, scope: !501)
!504 = !DILocation(line: 488, column: 2, scope: !501)
!505 = !DISubprogram(name: "acpi_install_interface_handler", scope: !506, file: !506, line: 676, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!506 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!507 = !DISubroutineType(types: !508)
!508 = !{!509, !510}
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !203, line: 421, baseType: !198)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interface_handler", file: !203, line: 1140, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!512 = !DILocation(line: 49, column: 41, scope: !195)
!513 = !DILocation(line: 49, column: 56, scope: !195)
!514 = !DILocation(line: 51, column: 23, scope: !210)
!515 = !DILocation(line: 51, column: 7, scope: !210)
!516 = !DILocation(line: 51, column: 6, scope: !195)
!517 = !DILocation(line: 52, column: 3, scope: !208)
!518 = !DILocation(line: 52, column: 3, scope: !212)
!519 = !DILocation(line: 52, column: 3, scope: !520)
!520 = distinct !DILexicalBlock(scope: !212, file: !2, line: 52, column: 3)
!521 = !DILocation(line: 0, scope: !520)
!522 = !DILocation(line: 52, column: 3, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !2, line: 52, column: 3)
!524 = !DILocation(line: 52, column: 3, scope: !213)
!525 = !DILocation(line: 52, column: 3, scope: !526)
!526 = distinct !DILexicalBlock(scope: !213, file: !2, line: 52, column: 3)
!527 = !DILocation(line: 52, column: 3, scope: !528)
!528 = distinct !DILexicalBlock(scope: !526, file: !2, line: 52, column: 3)
!529 = !DILocation(line: 52, column: 3, scope: !209)
!530 = !DILocation(line: 57, column: 2, scope: !209)
!531 = !DILocation(line: 58, column: 24, scope: !218)
!532 = !DILocation(line: 58, column: 7, scope: !218)
!533 = !DILocation(line: 58, column: 6, scope: !195)
!534 = !DILocation(line: 59, column: 3, scope: !216)
!535 = !DILocation(line: 59, column: 3, scope: !220)
!536 = !DILocation(line: 59, column: 3, scope: !537)
!537 = distinct !DILexicalBlock(scope: !220, file: !2, line: 59, column: 3)
!538 = !DILocation(line: 0, scope: !537)
!539 = !DILocation(line: 59, column: 3, scope: !540)
!540 = distinct !DILexicalBlock(scope: !537, file: !2, line: 59, column: 3)
!541 = !DILocation(line: 59, column: 3, scope: !221)
!542 = !DILocation(line: 59, column: 3, scope: !543)
!543 = distinct !DILexicalBlock(scope: !221, file: !2, line: 59, column: 3)
!544 = !DILocation(line: 59, column: 3, scope: !545)
!545 = distinct !DILexicalBlock(scope: !543, file: !2, line: 59, column: 3)
!546 = !DILocation(line: 59, column: 3, scope: !217)
!547 = !DILocation(line: 64, column: 2, scope: !217)
!548 = !DILocation(line: 66, column: 9, scope: !195)
!549 = !DILocation(line: 66, column: 2, scope: !195)
!550 = distinct !DISubprogram(name: "acpi_osi_setup_late", scope: !2, file: !2, line: 192, type: !493, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !551)
!551 = !{!552, !553, !554, !555}
!552 = !DILocalVariable(name: "osi", scope: !550, file: !2, line: 194, type: !297)
!553 = !DILocalVariable(name: "str", scope: !550, file: !2, line: 195, type: !33)
!554 = !DILocalVariable(name: "i", scope: !550, file: !2, line: 196, type: !32)
!555 = !DILocalVariable(name: "status", scope: !550, file: !2, line: 197, type: !509)
!556 = !DILocation(line: 194, column: 2, scope: !550)
!557 = !DILocation(line: 194, column: 25, scope: !550)
!558 = !DILocation(line: 195, column: 2, scope: !550)
!559 = !DILocation(line: 195, column: 8, scope: !550)
!560 = !DILocation(line: 196, column: 2, scope: !550)
!561 = !DILocation(line: 196, column: 6, scope: !550)
!562 = !DILocation(line: 197, column: 2, scope: !550)
!563 = !DILocation(line: 197, column: 14, scope: !550)
!564 = !DILocation(line: 199, column: 17, scope: !565)
!565 = distinct !DILexicalBlock(scope: !550, file: !2, line: 199, column: 6)
!566 = !DILocation(line: 199, column: 6, scope: !565)
!567 = !DILocation(line: 199, column: 6, scope: !550)
!568 = !DILocation(line: 200, column: 46, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !2, line: 199, column: 36)
!570 = !DILocation(line: 200, column: 12, scope: !569)
!571 = !DILocation(line: 200, column: 10, scope: !569)
!572 = !DILocation(line: 201, column: 7, scope: !573)
!573 = distinct !DILexicalBlock(scope: !569, file: !2, line: 201, column: 7)
!574 = !DILocation(line: 201, column: 7, scope: !569)
!575 = !DILocation(line: 202, column: 4, scope: !576)
!576 = distinct !DILexicalBlock(scope: !573, file: !2, line: 202, column: 4)
!577 = !DILocation(line: 202, column: 4, scope: !578)
!578 = distinct !DILexicalBlock(scope: !576, file: !2, line: 202, column: 4)
!579 = !DILocation(line: 202, column: 4, scope: !573)
!580 = !DILocation(line: 206, column: 2, scope: !569)
!581 = !DILocation(line: 208, column: 9, scope: !582)
!582 = distinct !DILexicalBlock(scope: !550, file: !2, line: 208, column: 2)
!583 = !DILocation(line: 208, column: 7, scope: !582)
!584 = !DILocation(line: 208, column: 14, scope: !585)
!585 = distinct !DILexicalBlock(scope: !582, file: !2, line: 208, column: 2)
!586 = !DILocation(line: 208, column: 16, scope: !585)
!587 = !DILocation(line: 208, column: 2, scope: !582)
!588 = !DILocation(line: 209, column: 28, scope: !589)
!589 = distinct !DILexicalBlock(scope: !585, file: !2, line: 208, column: 47)
!590 = !DILocation(line: 209, column: 10, scope: !589)
!591 = !DILocation(line: 209, column: 7, scope: !589)
!592 = !DILocation(line: 210, column: 9, scope: !589)
!593 = !DILocation(line: 210, column: 14, scope: !589)
!594 = !DILocation(line: 210, column: 7, scope: !589)
!595 = !DILocation(line: 211, column: 8, scope: !596)
!596 = distinct !DILexicalBlock(scope: !589, file: !2, line: 211, column: 7)
!597 = !DILocation(line: 211, column: 7, scope: !596)
!598 = !DILocation(line: 211, column: 12, scope: !596)
!599 = !DILocation(line: 211, column: 7, scope: !589)
!600 = !DILocation(line: 212, column: 4, scope: !596)
!601 = !DILocation(line: 213, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !589, file: !2, line: 213, column: 7)
!603 = !DILocation(line: 213, column: 12, scope: !602)
!604 = !DILocation(line: 213, column: 7, scope: !589)
!605 = !DILocation(line: 214, column: 36, scope: !606)
!606 = distinct !DILexicalBlock(scope: !602, file: !2, line: 213, column: 20)
!607 = !DILocation(line: 214, column: 13, scope: !606)
!608 = !DILocation(line: 214, column: 11, scope: !606)
!609 = !DILocation(line: 215, column: 8, scope: !610)
!610 = distinct !DILexicalBlock(scope: !606, file: !2, line: 215, column: 8)
!611 = !DILocation(line: 215, column: 8, scope: !606)
!612 = !DILocation(line: 216, column: 5, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !2, line: 216, column: 5)
!614 = !DILocation(line: 216, column: 5, scope: !615)
!615 = distinct !DILexicalBlock(scope: !613, file: !2, line: 216, column: 5)
!616 = !DILocation(line: 216, column: 5, scope: !610)
!617 = !DILocation(line: 217, column: 3, scope: !606)
!618 = !DILocation(line: 218, column: 35, scope: !619)
!619 = distinct !DILexicalBlock(scope: !602, file: !2, line: 217, column: 10)
!620 = !DILocation(line: 218, column: 13, scope: !619)
!621 = !DILocation(line: 218, column: 11, scope: !619)
!622 = !DILocation(line: 219, column: 8, scope: !623)
!623 = distinct !DILexicalBlock(scope: !619, file: !2, line: 219, column: 8)
!624 = !DILocation(line: 219, column: 8, scope: !619)
!625 = !DILocation(line: 220, column: 5, scope: !626)
!626 = distinct !DILexicalBlock(scope: !623, file: !2, line: 220, column: 5)
!627 = !DILocation(line: 220, column: 5, scope: !628)
!628 = distinct !DILexicalBlock(scope: !626, file: !2, line: 220, column: 5)
!629 = !DILocation(line: 220, column: 5, scope: !623)
!630 = !DILocation(line: 222, column: 2, scope: !589)
!631 = !DILocation(line: 208, column: 43, scope: !585)
!632 = !DILocation(line: 208, column: 2, scope: !585)
!633 = distinct !{!633, !587, !634, !372, !373}
!634 = !DILocation(line: 222, column: 2, scope: !582)
!635 = !DILocation(line: 223, column: 1, scope: !550)
!636 = distinct !DISubprogram(name: "acpi_osi_setup_linux", scope: !2, file: !2, line: 177, type: !637, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !639)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !47}
!639 = !{!640}
!640 = !DILocalVariable(name: "enable", arg: 1, scope: !636, file: !2, line: 177, type: !47)
!641 = !DILocation(line: 177, column: 46, scope: !636)
!642 = !DILocation(line: 180, column: 23, scope: !636)
!643 = !DILocation(line: 181, column: 27, scope: !636)
!644 = !DILocation(line: 182, column: 25, scope: !636)
!645 = !DILocation(line: 182, column: 2, scope: !636)
!646 = !DILocation(line: 183, column: 1, scope: !636)
!647 = distinct !DISubprogram(name: "acpi_osi_setup_darwin", scope: !2, file: !2, line: 131, type: !637, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !648)
!648 = !{!649}
!649 = !DILocalVariable(name: "enable", arg: 1, scope: !647, file: !2, line: 131, type: !47)
!650 = !DILocation(line: 131, column: 47, scope: !647)
!651 = !DILocation(line: 134, column: 24, scope: !647)
!652 = !DILocation(line: 135, column: 28, scope: !647)
!653 = !DILocation(line: 136, column: 26, scope: !647)
!654 = !DILocation(line: 136, column: 2, scope: !647)
!655 = !DILocation(line: 137, column: 1, scope: !647)
!656 = distinct !DISubprogram(name: "__acpi_osi_setup_linux", scope: !2, file: !2, line: 168, type: !637, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !657)
!657 = !{!658}
!658 = !DILocalVariable(name: "enable", arg: 1, scope: !656, file: !2, line: 168, type: !47)
!659 = !DILocation(line: 168, column: 48, scope: !656)
!660 = !DILocation(line: 170, column: 30, scope: !656)
!661 = !DILocation(line: 170, column: 29, scope: !656)
!662 = !DILocation(line: 170, column: 28, scope: !656)
!663 = !DILocation(line: 170, column: 26, scope: !656)
!664 = !DILocation(line: 171, column: 6, scope: !665)
!665 = distinct !DILexicalBlock(scope: !656, file: !2, line: 171, column: 6)
!666 = !DILocation(line: 171, column: 6, scope: !656)
!667 = !DILocation(line: 172, column: 3, scope: !665)
!668 = !DILocation(line: 174, column: 3, scope: !665)
!669 = !DILocation(line: 175, column: 1, scope: !656)
!670 = distinct !DISubprogram(name: "__acpi_osi_setup_darwin", scope: !2, file: !2, line: 119, type: !637, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !671)
!671 = !{!672}
!672 = !DILocalVariable(name: "enable", arg: 1, scope: !670, file: !2, line: 119, type: !47)
!673 = !DILocation(line: 119, column: 49, scope: !670)
!674 = !DILocation(line: 121, column: 31, scope: !670)
!675 = !DILocation(line: 121, column: 30, scope: !670)
!676 = !DILocation(line: 121, column: 29, scope: !670)
!677 = !DILocation(line: 121, column: 27, scope: !670)
!678 = !DILocation(line: 122, column: 6, scope: !679)
!679 = distinct !DILexicalBlock(scope: !670, file: !2, line: 122, column: 6)
!680 = !DILocation(line: 122, column: 6, scope: !670)
!681 = !DILocation(line: 123, column: 3, scope: !682)
!682 = distinct !DILexicalBlock(scope: !679, file: !2, line: 122, column: 14)
!683 = !DILocation(line: 124, column: 3, scope: !682)
!684 = !DILocation(line: 125, column: 2, scope: !682)
!685 = !DILocation(line: 126, column: 3, scope: !686)
!686 = distinct !DILexicalBlock(scope: !679, file: !2, line: 125, column: 9)
!687 = !DILocation(line: 127, column: 3, scope: !686)
!688 = !DILocation(line: 129, column: 1, scope: !670)
!689 = !DISubprogram(name: "dmi_check_system", scope: !690, file: !690, line: 100, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!690 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!691 = distinct !DISubprogram(name: "acpi_osi_dmi_darwin", scope: !2, file: !2, line: 248, type: !493, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!692 = !DILocation(line: 250, column: 2, scope: !693)
!693 = distinct !DILexicalBlock(scope: !691, file: !2, line: 250, column: 2)
!694 = !DILocation(line: 250, column: 2, scope: !695)
!695 = distinct !DILexicalBlock(scope: !693, file: !2, line: 250, column: 2)
!696 = !DILocation(line: 251, column: 24, scope: !691)
!697 = !DILocation(line: 252, column: 2, scope: !691)
!698 = !DILocation(line: 253, column: 1, scope: !691)
!699 = distinct !DISubprogram(name: "dmi_disable_osi_vista", scope: !2, file: !2, line: 270, type: !147, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !700)
!700 = !{!701}
!701 = !DILocalVariable(name: "d", arg: 1, scope: !699, file: !2, line: 270, type: !149)
!702 = !DILocation(line: 270, column: 69, scope: !699)
!703 = !DILocation(line: 272, column: 2, scope: !704)
!704 = distinct !DILexicalBlock(scope: !699, file: !2, line: 272, column: 2)
!705 = !DILocation(line: 272, column: 2, scope: !706)
!706 = distinct !DILexicalBlock(scope: !704, file: !2, line: 272, column: 2)
!707 = !DILocation(line: 273, column: 2, scope: !699)
!708 = !DILocation(line: 274, column: 2, scope: !699)
!709 = !DILocation(line: 275, column: 2, scope: !699)
!710 = !DILocation(line: 277, column: 2, scope: !699)
!711 = distinct !DISubprogram(name: "dmi_disable_osi_win7", scope: !2, file: !2, line: 280, type: !147, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !712)
!712 = !{!713}
!713 = !DILocalVariable(name: "d", arg: 1, scope: !711, file: !2, line: 280, type: !149)
!714 = !DILocation(line: 280, column: 68, scope: !711)
!715 = !DILocation(line: 282, column: 2, scope: !716)
!716 = distinct !DILexicalBlock(scope: !711, file: !2, line: 282, column: 2)
!717 = !DILocation(line: 282, column: 2, scope: !718)
!718 = distinct !DILexicalBlock(scope: !716, file: !2, line: 282, column: 2)
!719 = !DILocation(line: 283, column: 2, scope: !711)
!720 = !DILocation(line: 285, column: 2, scope: !711)
!721 = distinct !DISubprogram(name: "dmi_disable_osi_win8", scope: !2, file: !2, line: 288, type: !147, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !722)
!722 = !{!723}
!723 = !DILocalVariable(name: "d", arg: 1, scope: !721, file: !2, line: 288, type: !149)
!724 = !DILocation(line: 288, column: 68, scope: !721)
!725 = !DILocation(line: 290, column: 2, scope: !726)
!726 = distinct !DILexicalBlock(scope: !721, file: !2, line: 290, column: 2)
!727 = !DILocation(line: 290, column: 2, scope: !728)
!728 = distinct !DILexicalBlock(scope: !726, file: !2, line: 290, column: 2)
!729 = !DILocation(line: 291, column: 2, scope: !721)
!730 = !DILocation(line: 293, column: 2, scope: !721)
!731 = distinct !DISubprogram(name: "dmi_enable_osi_linux", scope: !2, file: !2, line: 263, type: !147, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !732)
!732 = !{!733}
!733 = !DILocalVariable(name: "d", arg: 1, scope: !731, file: !2, line: 263, type: !149)
!734 = !DILocation(line: 263, column: 68, scope: !731)
!735 = !DILocation(line: 265, column: 27, scope: !731)
!736 = !DILocation(line: 265, column: 2, scope: !731)
!737 = !DILocation(line: 267, column: 2, scope: !731)
!738 = distinct !DISubprogram(name: "acpi_osi_dmi_linux", scope: !2, file: !2, line: 255, type: !739, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !741)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !47, !149}
!741 = !{!742, !743}
!742 = !DILocalVariable(name: "enable", arg: 1, scope: !738, file: !2, line: 255, type: !47)
!743 = !DILocalVariable(name: "d", arg: 2, scope: !738, file: !2, line: 256, type: !149)
!744 = !DILocation(line: 255, column: 44, scope: !738)
!745 = !DILocation(line: 256, column: 39, scope: !738)
!746 = !DILocation(line: 258, column: 2, scope: !747)
!747 = distinct !DILexicalBlock(scope: !738, file: !2, line: 258, column: 2)
!748 = !DILocation(line: 258, column: 2, scope: !749)
!749 = distinct !DILexicalBlock(scope: !747, file: !2, line: 258, column: 2)
!750 = !DILocation(line: 259, column: 23, scope: !738)
!751 = !DILocation(line: 260, column: 25, scope: !738)
!752 = !DILocation(line: 260, column: 2, scope: !738)
!753 = !DILocation(line: 261, column: 1, scope: !738)
!754 = !DISubprogram(name: "acpi_update_interfaces", scope: !506, file: !506, line: 439, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!755 = !DISubroutineType(types: !756)
!756 = !{!509, !274}
!757 = !DISubprogram(name: "acpi_install_interface", scope: !506, file: !506, line: 434, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!758 = !DISubroutineType(types: !759)
!759 = !{!509, !202}
!760 = !DISubprogram(name: "acpi_remove_interface", scope: !506, file: !506, line: 437, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
