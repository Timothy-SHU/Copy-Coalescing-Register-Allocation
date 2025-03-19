; ModuleID = 'arch/x86/kernel/reboot.c'
source_filename = "arch/x86/kernel/reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pm_power_off: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pm_power_off ; .previous"
module asm ".section\09\22.initcall1.init..kmod_reboot__360_517_reboot_init\22, \22a\22\09\09"
module asm "__initcall__kmod_reboot__360_517_reboot_init1:\09\09\09"
module asm ".long\09__initstub__kmod_reboot__360_517_reboot_init1 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.x86_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.x86_legacy_features, ptr, ptr, ptr, %struct.x86_hyper_runtime, %struct.x86_guest }
%struct.x86_legacy_features = type { i32, i32, i32, i32, i32, %struct.x86_legacy_devices }
%struct.x86_legacy_devices = type { i32 }
%struct.x86_hyper_runtime = type { ptr, ptr, ptr, ptr }
%struct.x86_guest = type { ptr, ptr, ptr, ptr }
%struct.machine_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcpu_hot = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3, [16 x i8] }
%struct.anon.3 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.nmiaction = type { %struct.list_head, ptr, i64, i64, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.smp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.real_mode_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@pm_power_off = hidden global ptr null, align 8, !dbg !0
@__UNIQUE_ID___addressable_pm_power_off358 = internal global ptr @pm_power_off, section ".discard.addressable", align 8, !dbg !49
@port_cf9_safe = hidden global i8 0, align 1, !dbg !51
@rtc_lock = external dso_local global %struct.spinlock, align 4
@real_mode_header = external dso_local global ptr, align 8
@__func_stack_frame_non_standard_machine_real_restart = internal global ptr @machine_real_restart, section ".discard.func_stack_frame_non_standard", align 8, !dbg !56
@__UNIQUE_ID___addressable___initstub__kmod_reboot__360_517_reboot_init1361 = internal global ptr @__initstub__kmod_reboot__360_517_reboot_init1, section ".discard.addressable", align 8, !dbg !58
@x86_platform = external dso_local global %struct.x86_platform_ops, align 8
@machine_ops = hidden global %struct.machine_ops { ptr @native_machine_restart, ptr @native_machine_halt, ptr @native_machine_power_off, ptr @native_machine_shutdown, ptr @native_machine_crash_shutdown, ptr @native_machine_emergency_restart }, section ".data..ro_after_init", align 8, !dbg !60
@crashing_cpu = hidden global i32 -1, align 4, !dbg !141
@crash_ipi_issued = internal global i32 0, align 4, !dbg !213
@.str = private unnamed_addr constant [25 x i8] c"arch/x86/kernel/reboot.c\00", align 1, !dbg !143
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !148
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@shootdown_callback = internal global ptr null, align 8, !dbg !205
@waiting_for_crash_ipi = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !207
@nmi_shootdown_cpus.crash_nmi_callback_na = internal global %struct.nmiaction { %struct.list_head { ptr @nmi_shootdown_cpus.crash_nmi_callback_na, ptr @nmi_shootdown_cpus.crash_nmi_callback_na }, ptr @crash_nmi_callback, i64 0, i64 1, ptr @.str.2 }, align 8, !dbg !158
@.str.2 = private unnamed_addr constant [6 x i8] c"crash\00", align 1, !dbg !153
@reboot_default = external dso_local global i32, align 4
@reboot_dmi_table = internal constant [39 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @set_kbd_reboot, ptr @.str.3, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Acer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"AOA110\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_efi_reboot, ptr @.str.4, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Acer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"TravelMate X514-51T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_pci_reboot, ptr @.str.5, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBook5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_pci_reboot, ptr @.str.6, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBook6,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_pci_reboot, ptr @.str.7, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_pci_reboot, ptr @.str.8, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Macmini3,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_pci_reboot, ptr @.str.9, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"iMac9,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_pci_reboot, ptr @.str.10, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"iMac10,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_pci_reboot, ptr @.str.11, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"ASRock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"Q1900DC-ITX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bios_reboot, ptr @.str.12, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"ASUSTeK Computer INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"P4S800\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_acpi_reboot, ptr @.str.13, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"X205TA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_acpi_reboot, ptr @.str.14, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"X205TAW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_pci_reboot, ptr @.str.15, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Certec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"BPC600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bios_reboot, ptr @.str.16, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Dell DXP061\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bios_reboot, ptr @.str.17, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Dell DM061\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_pci_reboot, ptr @.str.18, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Latitude E5410\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_pci_reboot, ptr @.str.19, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Latitude E5420\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_pci_reboot, ptr @.str.20, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Latitude E6320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_pci_reboot, ptr @.str.21, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Latitude E6420\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bios_reboot, ptr @.str.22, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"OptiPlex 330\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"0KP561\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bios_reboot, ptr @.str.23, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"OptiPlex 360\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"0T656F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bios_reboot, ptr @.str.24, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"OptiPlex 745\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bios_reboot, ptr @.str.24, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"OptiPlex 745\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"0MM599\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bios_reboot, ptr @.str.24, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"OptiPlex 745\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"0KW626\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bios_reboot, ptr @.str.25, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"OptiPlex 760\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"0G919G\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_pci_reboot, ptr @.str.26, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"OptiPlex 990\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"A0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bios_reboot, ptr @.str.27, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Computer Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"PowerEdge 300/\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bios_reboot, ptr @.str.28, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Computer Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"PowerEdge 1300/\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bios_reboot, ptr @.str.29, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Computer Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"PowerEdge 2400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_pci_reboot, ptr @.str.30, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"C6100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_pci_reboot, ptr @.str.31, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Precision M6600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bios_reboot, ptr @.str.32, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Precision WorkStation T5400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bios_reboot, ptr @.str.33, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Precision WorkStation T7400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bios_reboot, ptr @.str.34, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Dell XPS710\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_acpi_reboot, ptr @.str.35, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"OptiPlex 7450 AIO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bios_reboot, ptr @.str.36, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Hewlett-Packard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"HP Compaq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_pci_reboot, ptr @.str.37, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"NA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ZBOX-CI327NANO-GS-01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bios_reboot, ptr @.str.38, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Sony Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"VGN-Z540N\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], section ".init.rodata", align 16, !dbg !323
@reboot_type = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Acer Aspire One A110\00", align 1, !dbg !215
@.str.4 = private unnamed_addr constant [25 x i8] c"Acer TravelMate X514-51T\00", align 1, !dbg !220
@.str.5 = private unnamed_addr constant [15 x i8] c"Apple MacBook5\00", align 1, !dbg !222
@.str.6 = private unnamed_addr constant [17 x i8] c"Apple MacBook6,1\00", align 1, !dbg !227
@.str.7 = private unnamed_addr constant [18 x i8] c"Apple MacBookPro5\00", align 1, !dbg !232
@.str.8 = private unnamed_addr constant [17 x i8] c"Apple Macmini3,1\00", align 1, !dbg !237
@.str.9 = private unnamed_addr constant [14 x i8] c"Apple iMac9,1\00", align 1, !dbg !239
@.str.10 = private unnamed_addr constant [15 x i8] c"Apple iMac10,1\00", align 1, !dbg !244
@.str.11 = private unnamed_addr constant [19 x i8] c"ASRock Q1900DC-ITX\00", align 1, !dbg !246
@.str.12 = private unnamed_addr constant [12 x i8] c"ASUS P4S800\00", align 1, !dbg !251
@.str.13 = private unnamed_addr constant [20 x i8] c"ASUS EeeBook X205TA\00", align 1, !dbg !256
@.str.14 = private unnamed_addr constant [21 x i8] c"ASUS EeeBook X205TAW\00", align 1, !dbg !261
@.str.15 = private unnamed_addr constant [14 x i8] c"Certec BPC600\00", align 1, !dbg !263
@.str.16 = private unnamed_addr constant [12 x i8] c"Dell DXP061\00", align 1, !dbg !265
@.str.17 = private unnamed_addr constant [10 x i8] c"Dell E520\00", align 1, !dbg !267
@.str.18 = private unnamed_addr constant [20 x i8] c"Dell Latitude E5410\00", align 1, !dbg !272
@.str.19 = private unnamed_addr constant [20 x i8] c"Dell Latitude E5420\00", align 1, !dbg !274
@.str.20 = private unnamed_addr constant [20 x i8] c"Dell Latitude E6320\00", align 1, !dbg !276
@.str.21 = private unnamed_addr constant [20 x i8] c"Dell Latitude E6420\00", align 1, !dbg !278
@.str.22 = private unnamed_addr constant [18 x i8] c"Dell OptiPlex 330\00", align 1, !dbg !280
@.str.23 = private unnamed_addr constant [18 x i8] c"Dell OptiPlex 360\00", align 1, !dbg !282
@.str.24 = private unnamed_addr constant [18 x i8] c"Dell OptiPlex 745\00", align 1, !dbg !284
@.str.25 = private unnamed_addr constant [18 x i8] c"Dell OptiPlex 760\00", align 1, !dbg !286
@.str.26 = private unnamed_addr constant [27 x i8] c"Dell OptiPlex 990 BIOS A0x\00", align 1, !dbg !288
@.str.27 = private unnamed_addr constant [19 x i8] c"Dell PowerEdge 300\00", align 1, !dbg !293
@.str.28 = private unnamed_addr constant [20 x i8] c"Dell PowerEdge 1300\00", align 1, !dbg !295
@.str.29 = private unnamed_addr constant [20 x i8] c"Dell PowerEdge 2400\00", align 1, !dbg !297
@.str.30 = private unnamed_addr constant [21 x i8] c"Dell PowerEdge C6100\00", align 1, !dbg !299
@.str.31 = private unnamed_addr constant [21 x i8] c"Dell Precision M6600\00", align 1, !dbg !301
@.str.32 = private unnamed_addr constant [21 x i8] c"Dell Precision T5400\00", align 1, !dbg !303
@.str.33 = private unnamed_addr constant [21 x i8] c"Dell Precision T7400\00", align 1, !dbg !305
@.str.34 = private unnamed_addr constant [12 x i8] c"Dell XPS710\00", align 1, !dbg !307
@.str.35 = private unnamed_addr constant [23 x i8] c"Dell OptiPlex 7450 AIO\00", align 1, !dbg !309
@.str.36 = private unnamed_addr constant [17 x i8] c"HP Compaq Laptop\00", align 1, !dbg !314
@.str.37 = private unnamed_addr constant [22 x i8] c"Zotac ZBOX CI327 nano\00", align 1, !dbg !316
@.str.38 = private unnamed_addr constant [15 x i8] c"Sony VGN-Z540N\00", align 1, !dbg !321
@.str.39 = private unnamed_addr constant [69 x i8] c"\016reboot: %s series board detected. Selecting %s-method for reboot.\0A\00", align 1, !dbg !352
@.str.40 = private unnamed_addr constant [4 x i8] c"KBD\00", align 1, !dbg !357
@.str.41 = private unnamed_addr constant [70 x i8] c"\016reboot: %s series board detected. Selecting EFI-method for reboot.\0A\00", align 1, !dbg !360
@.str.42 = private unnamed_addr constant [70 x i8] c"\016reboot: %s series board detected. Selecting %s-method for reboots.\0A\00", align 1, !dbg !365
@.str.43 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1, !dbg !367
@.str.44 = private unnamed_addr constant [5 x i8] c"BIOS\00", align 1, !dbg !369
@.str.45 = private unnamed_addr constant [5 x i8] c"ACPI\00", align 1, !dbg !371
@smp_ops = external dso_local global %struct.smp_ops, align 8
@.str.46 = private unnamed_addr constant [27 x i8] c"\015reboot: machine restart\0A\00", align 1, !dbg !373
@reboot_force = external dso_local global i32, align 4
@reboot_emergency = internal global i32 0, align 4, !dbg !380
@reboot_mode = external dso_local global i32, align 4
@page_offset_base = external dso_local global i64, align 8
@.str.47 = private unnamed_addr constant [55 x i8] c"\016reboot: EFI capsule is pending, forcing EFI reboot.\0A\00", align 1, !dbg !375
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@mds_idle_clear = external dso_local global %struct.static_key_false, align 8
@mds_clear_cpu_buffers.ds = internal constant i16 24, align 2, !dbg !382
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_pm_power_off358, ptr @__func_stack_frame_non_standard_machine_real_restart, ptr @__UNIQUE_ID___addressable___initstub__kmod_reboot__360_517_reboot_init1361], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone noreturn nounwind null_pointer_is_valid sspstrong
define hidden void @machine_real_restart(i32 noundef %type) #0 align 16 !dbg !396 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !400, metadata !DIExpression()), !dbg !401
  br label %do.body, !dbg !402

do.body:                                          ; preds = %entry
  call void @arch_local_irq_disable() #11, !dbg !403
  br label %do.end, !dbg !403

do.end:                                           ; preds = %do.body
  call void @spin_lock(ptr noundef @rtc_lock) #11, !dbg !405
  call void @rtc_cmos_write(i8 noundef zeroext 0, i8 noundef zeroext -113) #11, !dbg !406
  call void @spin_unlock(ptr noundef @rtc_lock) #11, !dbg !407
  call void @load_trampoline_pgtable() #11, !dbg !408
  %0 = load ptr, ptr @real_mode_header, align 8, !dbg !409
  %machine_real_restart_asm = getelementptr inbounds %struct.real_mode_header, ptr %0, i32 0, i32 8, !dbg !410
  %1 = load i32, ptr %type.addr, align 4, !dbg !411
  call void asm sideeffect "ljmpl *$0", "*m,{di},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %machine_real_restart_asm, i32 %1) #12, !dbg !412, !srcloc !413
  br label %do.body1, !dbg !414

do.body1:                                         ; preds = %do.end
  call void asm sideeffect "359:\0A\09.pushsection .discard.unreachable\0A\09.long 359b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 359) #12, !dbg !415, !srcloc !418
  unreachable, !dbg !419

do.end2:                                          ; No predecessors!
  unreachable, !dbg !420
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #2 align 16 !dbg !421 {
entry:
  call void @native_irq_disable() #11, !dbg !423
  ret void, !dbg !424
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #2 align 16 !dbg !425 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !463, metadata !DIExpression()), !dbg !464
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !465
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !465
  call void @_raw_spin_lock(ptr noundef %1) #11, !dbg !465
  ret void, !dbg !466
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !467 dso_local void @rtc_cmos_write(i8 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #2 align 16 !dbg !471 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !473, metadata !DIExpression()), !dbg !474
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !475
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !475
  call void @_raw_spin_unlock(ptr noundef %1) #11, !dbg !475
  ret void, !dbg !476
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !477 dso_local void @load_trampoline_pgtable() #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_reboot__360_517_reboot_init1() #4 section ".init.text" align 16 !dbg !479 {
entry:
  %call = call i32 @reboot_init() #13, !dbg !482
  ret i32 %call, !dbg !482
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @reboot_init() #4 section ".init.text" align 16 !dbg !483 {
entry:
  %retval = alloca i32, align 4
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #12, !dbg !486
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !485, metadata !DIExpression()), !dbg !487
  %0 = load i32, ptr @reboot_default, align 4, !dbg !488
  %tobool = icmp ne i32 %0, 0, !dbg !488
  br i1 %tobool, label %if.end, label %if.then, !dbg !490

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !491
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !491

if.end:                                           ; preds = %entry
  %call = call i32 @dmi_check_system(ptr noundef @reboot_dmi_table) #11, !dbg !492
  store i32 %call, ptr %rv, align 4, !dbg !493
  %1 = load i32, ptr %rv, align 4, !dbg !494
  %tobool1 = icmp ne i32 %1, 0, !dbg !494
  br i1 %tobool1, label %if.end6, label %land.lhs.true, !dbg !496

land.lhs.true:                                    ; preds = %if.end
  %call2 = call zeroext i1 @efi_reboot_required() #11, !dbg !497
  br i1 %call2, label %land.lhs.true3, label %if.end6, !dbg !498

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = call zeroext i1 @efi_runtime_disabled() #11, !dbg !499
  br i1 %call4, label %if.end6, label %if.then5, !dbg !500

if.then5:                                         ; preds = %land.lhs.true3
  store i32 101, ptr @reboot_type, align 4, !dbg !501
  br label %if.end6, !dbg !502

if.end6:                                          ; preds = %if.then5, %land.lhs.true3, %land.lhs.true, %if.end
  store i32 0, ptr %retval, align 4, !dbg !503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !503

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #12, !dbg !504
  %2 = load i32, ptr %retval, align 4, !dbg !504
  ret i32 %2, !dbg !504
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden void @mach_reboot_fixups() #5 align 16 !dbg !505 {
entry:
  ret void, !dbg !506
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @native_machine_shutdown() #5 align 16 !dbg !507 {
entry:
  call void @clear_IO_APIC() #11, !dbg !508
  br label %do.body, !dbg !509

do.body:                                          ; preds = %entry
  call void @arch_local_irq_disable() #11, !dbg !510
  br label %do.end, !dbg !510

do.end:                                           ; preds = %do.body
  call void @stop_other_cpus() #11, !dbg !512
  call void @lapic_shutdown() #11, !dbg !513
  call void @restore_boot_irq_mode() #11, !dbg !514
  call void @hpet_disable() #11, !dbg !515
  %0 = load ptr, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 4), align 8, !dbg !516
  call void %0() #11, !dbg !517
  ret void, !dbg !518
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !519 dso_local void @clear_IO_APIC() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stop_other_cpus() #6 align 16 !dbg !521 {
entry:
  %0 = load ptr, ptr getelementptr inbounds (%struct.smp_ops, ptr @smp_ops, i32 0, i32 3), align 8, !dbg !523
  call void %0(i32 noundef 1) #11, !dbg !524
  ret void, !dbg !525
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !526 dso_local void @lapic_shutdown() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !528 dso_local void @restore_boot_irq_mode() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !529 dso_local void @hpet_disable() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_machine_restart(ptr noundef %__unused) #5 align 16 !dbg !531 {
entry:
  %__unused.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !533, metadata !DIExpression()), !dbg !534
  br label %do.body, !dbg !535

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !537

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.46) #13, !dbg !535
  store i32 %call, ptr %tmp, align 4, !dbg !537
  %0 = load i32, ptr %tmp, align 4, !dbg !535
  %1 = load i32, ptr @reboot_force, align 4, !dbg !539
  %tobool = icmp ne i32 %1, 0, !dbg !539
  br i1 %tobool, label %if.end, label %if.then, !dbg !541

if.then:                                          ; preds = %do.end
  call void @machine_shutdown() #11, !dbg !542
  br label %if.end, !dbg !542

if.end:                                           ; preds = %if.then, %do.end
  call void @__machine_emergency_restart(i32 noundef 0) #11, !dbg !543
  ret void, !dbg !544
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_machine_halt() #5 align 16 !dbg !545 {
entry:
  call void @machine_shutdown() #11, !dbg !546
  br label %do.body, !dbg !547

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !548

do.end:                                           ; preds = %do.body
  call void @stop_this_cpu(ptr noundef null) #14, !dbg !550
  unreachable, !dbg !550
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_machine_power_off() #5 align 16 !dbg !551 {
entry:
  %call = call zeroext i1 @kernel_can_power_off() #11, !dbg !552
  br i1 %call, label %if.then, label %if.end2, !dbg !554

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @reboot_force, align 4, !dbg !555
  %tobool = icmp ne i32 %0, 0, !dbg !555
  br i1 %tobool, label %if.end, label %if.then1, !dbg !558

if.then1:                                         ; preds = %if.then
  call void @machine_shutdown() #11, !dbg !559
  br label %if.end, !dbg !559

if.end:                                           ; preds = %if.then1, %if.then
  call void @do_kernel_power_off() #11, !dbg !560
  br label %if.end2, !dbg !561

if.end2:                                          ; preds = %if.end, %entry
  br label %do.body, !dbg !562

do.body:                                          ; preds = %if.end2
  br label %do.end, !dbg !563

do.end:                                           ; preds = %do.body
  ret void, !dbg !565
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @native_machine_crash_shutdown(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_machine_emergency_restart() #5 align 16 !dbg !566 {
entry:
  %i = alloca i32, align 4
  %attempt = alloca i32, align 4
  %orig_reboot_type = alloca i32, align 4
  %mode = alloca i16, align 2
  %tmp = alloca i32, align 4
  %reboot_code = alloca i8, align 1
  %cf9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !580
  call void @llvm.dbg.declare(metadata ptr %i, metadata !568, metadata !DIExpression()), !dbg !581
  call void @llvm.lifetime.start.p0(i64 4, ptr %attempt) #12, !dbg !582
  call void @llvm.dbg.declare(metadata ptr %attempt, metadata !569, metadata !DIExpression()), !dbg !583
  store i32 0, ptr %attempt, align 4, !dbg !583
  call void @llvm.lifetime.start.p0(i64 4, ptr %orig_reboot_type) #12, !dbg !584
  call void @llvm.dbg.declare(metadata ptr %orig_reboot_type, metadata !570, metadata !DIExpression()), !dbg !585
  %0 = load i32, ptr @reboot_type, align 4, !dbg !586
  store i32 %0, ptr %orig_reboot_type, align 4, !dbg !585
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode) #12, !dbg !587
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !571, metadata !DIExpression()), !dbg !588
  %1 = load i32, ptr @reboot_emergency, align 4, !dbg !589
  %tobool = icmp ne i32 %1, 0, !dbg !589
  br i1 %tobool, label %if.then, label %if.end, !dbg !591

if.then:                                          ; preds = %entry
  call void @emergency_reboot_disable_virtualization() #11, !dbg !592
  br label %if.end, !dbg !592

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !593

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !594

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !594

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr @reboot_mode, align 4, !dbg !596
  %cmp = icmp eq i32 %2, 1, !dbg !597
  %3 = zext i1 %cmp to i64, !dbg !596
  %cond = select i1 %cmp, i32 4660, i32 0, !dbg !596
  %conv = trunc i32 %cond to i16, !dbg !596
  store i16 %conv, ptr %mode, align 2, !dbg !598
  %4 = load i16, ptr %mode, align 2, !dbg !599
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !600
  %add = add i64 1138, %5, !dbg !600
  %6 = inttoptr i64 %add to ptr, !dbg !600
  store i16 %4, ptr %6, align 2, !dbg !601
  %call = call zeroext i1 @efi_capsule_pending(ptr noundef null) #11, !dbg !602
  br i1 %call, label %if.then1, label %if.end6, !dbg !604

if.then1:                                         ; preds = %do.end
  br label %do.body2, !dbg !605

do.body2:                                         ; preds = %if.then1
  br label %do.cond3, !dbg !608

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !608

do.end4:                                          ; preds = %do.cond3
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.47) #13, !dbg !605
  store i32 %call5, ptr %tmp, align 4, !dbg !608
  %7 = load i32, ptr %tmp, align 4, !dbg !605
  store i32 101, ptr @reboot_type, align 4, !dbg !610
  br label %if.end6, !dbg !611

if.end6:                                          ; preds = %do.end4, %do.end
  br label %for.cond, !dbg !612

for.cond:                                         ; preds = %sw.epilog, %if.end6
  %8 = load i32, ptr @reboot_type, align 4, !dbg !613
  switch i32 %8, label %sw.epilog [
    i32 97, label %sw.bb
    i32 107, label %sw.bb7
    i32 101, label %sw.bb17
    i32 98, label %sw.bb18
    i32 112, label %sw.bb19
    i32 113, label %sw.bb20
    i32 116, label %sw.bb38
  ], !dbg !614

sw.bb:                                            ; preds = %for.cond
  call void @acpi_reboot() #11, !dbg !615
  store i32 107, ptr @reboot_type, align 4, !dbg !616
  br label %sw.epilog, !dbg !617

sw.bb7:                                           ; preds = %for.cond
  call void @mach_reboot_fixups() #11, !dbg !618
  store i32 0, ptr %i, align 4, !dbg !619
  br label %for.cond8, !dbg !621

for.cond8:                                        ; preds = %for.inc, %sw.bb7
  %9 = load i32, ptr %i, align 4, !dbg !622
  %cmp9 = icmp slt i32 %9, 10, !dbg !624
  br i1 %cmp9, label %for.body, label %for.end, !dbg !625

for.body:                                         ; preds = %for.cond8
  call void @kb_wait() #11, !dbg !626
  call void @__const_udelay(i64 noundef 214750) #11, !dbg !628
  call void @__outb(i8 noundef zeroext -2, i16 noundef zeroext 100) #11, !dbg !633
  call void @__const_udelay(i64 noundef 214750) #11, !dbg !634
  br label %for.inc, !dbg !639

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !dbg !640
  %inc = add i32 %10, 1, !dbg !640
  store i32 %inc, ptr %i, align 4, !dbg !640
  br label %for.cond8, !dbg !641, !llvm.loop !642

for.end:                                          ; preds = %for.cond8
  %11 = load i32, ptr %attempt, align 4, !dbg !646
  %cmp11 = icmp eq i32 %11, 0, !dbg !648
  br i1 %cmp11, label %land.lhs.true, label %if.else, !dbg !649

land.lhs.true:                                    ; preds = %for.end
  %12 = load i32, ptr %orig_reboot_type, align 4, !dbg !650
  %cmp13 = icmp eq i32 %12, 97, !dbg !651
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !652

if.then15:                                        ; preds = %land.lhs.true
  store i32 1, ptr %attempt, align 4, !dbg !653
  store i32 97, ptr @reboot_type, align 4, !dbg !655
  br label %if.end16, !dbg !656

if.else:                                          ; preds = %land.lhs.true, %for.end
  store i32 101, ptr @reboot_type, align 4, !dbg !657
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  br label %sw.epilog, !dbg !659

sw.bb17:                                          ; preds = %for.cond
  %13 = load i32, ptr @reboot_mode, align 4, !dbg !660
  call void @efi_reboot(i32 noundef %13, ptr noundef null) #11, !dbg !661
  store i32 98, ptr @reboot_type, align 4, !dbg !662
  br label %sw.epilog, !dbg !663

sw.bb18:                                          ; preds = %for.cond
  call void @machine_real_restart(i32 noundef 0) #14, !dbg !664
  unreachable, !dbg !664

sw.bb19:                                          ; preds = %for.cond
  store i8 1, ptr @port_cf9_safe, align 1, !dbg !665
  br label %sw.bb20, !dbg !666

sw.bb20:                                          ; preds = %for.cond, %sw.bb19
  %14 = load i8, ptr @port_cf9_safe, align 1, !dbg !667, !range !668, !noundef !669
  %tobool21 = trunc i8 %14 to i1, !dbg !667
  br i1 %tobool21, label %if.then22, label %if.end37, !dbg !670

if.then22:                                        ; preds = %sw.bb20
  call void @llvm.lifetime.start.p0(i64 1, ptr %reboot_code) #12, !dbg !671
  call void @llvm.dbg.declare(metadata ptr %reboot_code, metadata !572, metadata !DIExpression()), !dbg !672
  %15 = load i32, ptr @reboot_mode, align 4, !dbg !673
  %cmp23 = icmp eq i32 %15, 1, !dbg !674
  %16 = zext i1 %cmp23 to i64, !dbg !673
  %cond25 = select i1 %cmp23, i32 6, i32 14, !dbg !673
  %conv26 = trunc i32 %cond25 to i8, !dbg !673
  store i8 %conv26, ptr %reboot_code, align 1, !dbg !672
  call void @llvm.lifetime.start.p0(i64 1, ptr %cf9) #12, !dbg !675
  call void @llvm.dbg.declare(metadata ptr %cf9, metadata !579, metadata !DIExpression()), !dbg !676
  %call27 = call zeroext i8 @__inb(i16 noundef zeroext 3321) #11, !dbg !677
  %conv28 = zext i8 %call27 to i32, !dbg !677
  %17 = load i8, ptr %reboot_code, align 1, !dbg !678
  %conv29 = zext i8 %17 to i32, !dbg !678
  %not = xor i32 %conv29, -1, !dbg !679
  %and = and i32 %conv28, %not, !dbg !680
  %conv30 = trunc i32 %and to i8, !dbg !677
  store i8 %conv30, ptr %cf9, align 1, !dbg !676
  %18 = load i8, ptr %cf9, align 1, !dbg !681
  %conv31 = zext i8 %18 to i32, !dbg !681
  %or = or i32 %conv31, 2, !dbg !682
  %conv32 = trunc i32 %or to i8, !dbg !681
  call void @__outb(i8 noundef zeroext %conv32, i16 noundef zeroext 3321) #11, !dbg !683
  call void @__const_udelay(i64 noundef 214750) #11, !dbg !684
  %19 = load i8, ptr %cf9, align 1, !dbg !689
  %conv33 = zext i8 %19 to i32, !dbg !689
  %20 = load i8, ptr %reboot_code, align 1, !dbg !690
  %conv34 = zext i8 %20 to i32, !dbg !690
  %or35 = or i32 %conv33, %conv34, !dbg !691
  %conv36 = trunc i32 %or35 to i8, !dbg !689
  call void @__outb(i8 noundef zeroext %conv36, i16 noundef zeroext 3321) #11, !dbg !692
  call void @__const_udelay(i64 noundef 214750) #11, !dbg !693
  call void @llvm.lifetime.end.p0(i64 1, ptr %cf9) #12, !dbg !698
  call void @llvm.lifetime.end.p0(i64 1, ptr %reboot_code) #12, !dbg !698
  br label %if.end37, !dbg !699

if.end37:                                         ; preds = %if.then22, %sw.bb20
  store i32 116, ptr @reboot_type, align 4, !dbg !700
  br label %sw.epilog, !dbg !701

sw.bb38:                                          ; preds = %for.cond
  call void @idt_invalidate() #11, !dbg !702
  call void asm sideeffect "int3", "~{dirflag},~{fpsr},~{flags}"() #12, !dbg !703, !srcloc !704
  store i32 107, ptr @reboot_type, align 4, !dbg !705
  br label %sw.epilog, !dbg !706

sw.epilog:                                        ; preds = %for.cond, %sw.bb38, %if.end37, %sw.bb17, %if.end16, %sw.bb
  br label %for.cond, !dbg !707, !llvm.loop !708
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @machine_power_off() #5 align 16 !dbg !711 {
entry:
  %0 = load ptr, ptr getelementptr inbounds (%struct.machine_ops, ptr @machine_ops, i32 0, i32 2), align 8, !dbg !712
  call void %0() #11, !dbg !713
  ret void, !dbg !714
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @machine_shutdown() #5 align 16 !dbg !715 {
entry:
  %0 = load ptr, ptr getelementptr inbounds (%struct.machine_ops, ptr @machine_ops, i32 0, i32 3), align 8, !dbg !716
  call void %0() #11, !dbg !717
  ret void, !dbg !718
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @machine_emergency_restart() #5 align 16 !dbg !719 {
entry:
  call void @__machine_emergency_restart(i32 noundef 1) #11, !dbg !720
  ret void, !dbg !721
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__machine_emergency_restart(i32 noundef %emergency) #5 align 16 !dbg !722 {
entry:
  %emergency.addr = alloca i32, align 4
  store i32 %emergency, ptr %emergency.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %emergency.addr, metadata !726, metadata !DIExpression()), !dbg !727
  %0 = load i32, ptr %emergency.addr, align 4, !dbg !728
  store i32 %0, ptr @reboot_emergency, align 4, !dbg !729
  %1 = load ptr, ptr getelementptr inbounds (%struct.machine_ops, ptr @machine_ops, i32 0, i32 5), align 8, !dbg !730
  call void %1() #11, !dbg !731
  ret void, !dbg !732
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @machine_restart(ptr noundef %cmd) #5 align 16 !dbg !733 {
entry:
  %cmd.addr = alloca ptr, align 8
  store ptr %cmd, ptr %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !735, metadata !DIExpression()), !dbg !736
  %0 = load ptr, ptr @machine_ops, align 8, !dbg !737
  %1 = load ptr, ptr %cmd.addr, align 8, !dbg !738
  call void %0(ptr noundef %1) #11, !dbg !739
  ret void, !dbg !740
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @machine_halt() #5 align 16 !dbg !741 {
entry:
  %0 = load ptr, ptr getelementptr inbounds (%struct.machine_ops, ptr @machine_ops, i32 0, i32 1), align 8, !dbg !742
  call void %0() #11, !dbg !743
  ret void, !dbg !744
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @machine_crash_shutdown(ptr noundef %regs) #5 align 16 !dbg !745 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !747, metadata !DIExpression()), !dbg !748
  %0 = load ptr, ptr getelementptr inbounds (%struct.machine_ops, ptr @machine_ops, i32 0, i32 4), align 8, !dbg !749
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !750
  call void %0(ptr noundef %1) #11, !dbg !751
  ret void, !dbg !752
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @nmi_shootdown_cpus(ptr noundef %callback) #5 align 16 !dbg !160 {
entry:
  %callback.addr = alloca ptr, align 8
  %msecs = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  store ptr %callback, ptr %callback.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callback.addr, metadata !168, metadata !DIExpression()), !dbg !753
  call void @llvm.lifetime.start.p0(i64 8, ptr %msecs) #12, !dbg !754
  call void @llvm.dbg.declare(metadata ptr %msecs, metadata !169, metadata !DIExpression()), !dbg !755
  br label %do.body, !dbg !756

do.body:                                          ; preds = %entry
  call void @arch_local_irq_disable() #11, !dbg !757
  br label %do.cond, !dbg !757

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !757

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !759
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !170, metadata !DIExpression()), !dbg !759
  %0 = load i32, ptr @crash_ipi_issued, align 4, !dbg !759
  %tobool = icmp ne i32 %0, 0, !dbg !759
  %lnot = xor i1 %tobool, true, !dbg !759
  %lnot1 = xor i1 %lnot, true, !dbg !759
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !759
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !759
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !760
  %tobool2 = icmp ne i32 %1, 0, !dbg !760
  %lnot3 = xor i1 %tobool2, true, !dbg !760
  %lnot5 = xor i1 %lnot3, true, !dbg !760
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !760
  %conv = sext i32 %lnot.ext6 to i64, !dbg !760
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !760
  %tobool7 = icmp ne i64 %expval, 0, !dbg !760
  br i1 %tobool7, label %if.then, label %if.end, !dbg !759

if.then:                                          ; preds = %do.end
  br label %do.body8, !dbg !760

do.body8:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !761
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !173, metadata !DIExpression()), !dbg !761
  store i32 2307, ptr %__flags, align 4, !dbg !761
  br label %do.body9, !dbg !761

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !762

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !762

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !761

do.body12:                                        ; preds = %do.end11
  %2 = load i32, ptr %__flags, align 4, !dbg !764
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 902, i32 %2, i64 12) #12, !dbg !764, !srcloc !766
  br label %do.cond13, !dbg !764

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !764

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !761

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !767

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !767

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !760
  br label %do.cond18, !dbg !761

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !761

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !761

if.end:                                           ; preds = %do.end19, %do.end
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !759
  %tobool20 = icmp ne i32 %3, 0, !dbg !759
  %lnot21 = xor i1 %tobool20, true, !dbg !759
  %lnot23 = xor i1 %lnot21, true, !dbg !759
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !759
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !759
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !759
  store i64 %expval26, ptr %tmp, align 8, !dbg !760
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !769
  %4 = load i64, ptr %tmp, align 8, !dbg !759
  %tobool27 = icmp ne i64 %4, 0, !dbg !769
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !770

if.then28:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !771

if.end29:                                         ; preds = %if.end
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #11, !dbg !772
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !773
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !176, metadata !DIExpression()), !dbg !773
  br label %do.body31, !dbg !773

do.body31:                                        ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !774
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !179, metadata !DIExpression()), !dbg !774
  store ptr null, ptr %__vpp_verify, align 8, !dbg !774
  %5 = load ptr, ptr %__vpp_verify, align 8, !dbg !774
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !773
  br label %do.cond32, !dbg !774

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !774

do.end33:                                         ; preds = %do.cond32
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !775
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !183, metadata !DIExpression()), !dbg !775
  %6 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !775, !srcloc !776
  store i32 %6, ptr %pfo_val__, align 4, !dbg !775
  %7 = load i32, ptr %pfo_val__, align 4, !dbg !775
  %conv35 = zext i32 %7 to i64, !dbg !775
  %conv36 = trunc i64 %conv35 to i32, !dbg !775
  store i32 %conv36, ptr %tmp34, align 4, !dbg !775
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !773
  %8 = load i32, ptr %tmp34, align 4, !dbg !775
  store i32 %8, ptr %pscr_ret__, align 4, !dbg !773
  %9 = load i32, ptr %pscr_ret__, align 4, !dbg !773
  store i32 %9, ptr %tmp37, align 4, !dbg !773
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !772
  %10 = load i32, ptr %tmp37, align 4, !dbg !773
  store i32 %10, ptr %tmp30, align 4, !dbg !772
  %11 = load i32, ptr %tmp30, align 4, !dbg !772
  store i32 %11, ptr @crashing_cpu, align 4, !dbg !777
  %12 = load ptr, ptr %callback.addr, align 8, !dbg !778
  store ptr %12, ptr @shootdown_callback, align 8, !dbg !779
  %call = call i32 @num_online_cpus() #11, !dbg !780
  %sub = sub i32 %call, 1, !dbg !781
  call void @atomic_set(ptr noundef @waiting_for_crash_ipi, i32 noundef %sub) #11, !dbg !782
  %call39 = call i32 @__register_nmi_handler(i32 noundef 0, ptr noundef @nmi_shootdown_cpus.crash_nmi_callback_na) #11, !dbg !783
  store i32 %call39, ptr %tmp38, align 4, !dbg !783
  %13 = load i32, ptr %tmp38, align 4, !dbg !783
  %tobool40 = icmp ne i32 %13, 0, !dbg !786
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !787

if.then41:                                        ; preds = %do.end33
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !788

if.end42:                                         ; preds = %do.end33
  br label %do.body43, !dbg !789

do.body43:                                        ; preds = %if.end42
  br label %do.body44, !dbg !790

do.body44:                                        ; preds = %do.body43
  br label %do.cond45, !dbg !792

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !792

do.end46:                                         ; preds = %do.cond45
  call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !790, !srcloc !794
  br label %do.cond47, !dbg !790

do.cond47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !790

do.end48:                                         ; preds = %do.cond47
  call void @apic_send_IPI_allbutself(i32 noundef 2) #11, !dbg !795
  br label %do.body49, !dbg !796

do.body49:                                        ; preds = %do.end48
  br label %do.body50, !dbg !797

do.body50:                                        ; preds = %do.body49
  br label %do.cond51, !dbg !799

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !799

do.end52:                                         ; preds = %do.cond51
  br label %do.body53, !dbg !797

do.body53:                                        ; preds = %do.end52
  store volatile i32 1, ptr @crash_ipi_issued, align 4, !dbg !801
  br label %do.cond54, !dbg !801

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !801

do.end55:                                         ; preds = %do.cond54
  br label %do.cond56, !dbg !797

do.cond56:                                        ; preds = %do.end55
  br label %do.end57, !dbg !797

do.end57:                                         ; preds = %do.cond56
  store i64 1000, ptr %msecs, align 8, !dbg !803
  br label %while.cond, !dbg !804

while.cond:                                       ; preds = %while.body, %do.end57
  %call58 = call i32 @atomic_read(ptr noundef @waiting_for_crash_ipi) #11, !dbg !805
  %cmp = icmp sgt i32 %call58, 0, !dbg !806
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !807

land.rhs:                                         ; preds = %while.cond
  %14 = load i64, ptr %msecs, align 8, !dbg !808
  %tobool60 = icmp ne i64 %14, 0, !dbg !807
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %tobool60, %land.rhs ], !dbg !809
  br i1 %15, label %while.body, label %while.end, !dbg !804

while.body:                                       ; preds = %land.end
  call void @__const_udelay(i64 noundef 4295000) #11, !dbg !810
  %16 = load i64, ptr %msecs, align 8, !dbg !816
  %dec = add i64 %16, -1, !dbg !816
  store i64 %dec, ptr %msecs, align 8, !dbg !816
  br label %while.cond, !dbg !804, !llvm.loop !817

while.end:                                        ; preds = %land.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !819
  br label %cleanup, !dbg !819

cleanup:                                          ; preds = %while.end, %if.then41, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %msecs) #12, !dbg !819
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !819

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #2 align 16 !dbg !820 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !825, metadata !DIExpression()), !dbg !826
  ret void, !dbg !827
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #2 align 16 !dbg !828 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !834, metadata !DIExpression()), !dbg !836
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !835, metadata !DIExpression()), !dbg !837
  %0 = load ptr, ptr %v.addr, align 8, !dbg !838
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #11, !dbg !839
  %1 = load ptr, ptr %v.addr, align 8, !dbg !840
  %2 = load i32, ptr %i.addr, align 4, !dbg !841
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #11, !dbg !842
  ret void, !dbg !843
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @num_online_cpus() #2 align 16 !dbg !844 {
entry:
  %call = call i32 @raw_atomic_read(ptr noundef @__num_online_cpus) #11, !dbg !848
  ret i32 %call, !dbg !849
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crash_nmi_callback(i32 noundef %val, ptr noundef %regs) #5 align 16 !dbg !850 {
entry:
  %val.addr = alloca i32, align 4
  %regs.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !852, metadata !DIExpression()), !dbg !861
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !853, metadata !DIExpression()), !dbg !862
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #12, !dbg !863
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !854, metadata !DIExpression()), !dbg !864
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !865
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !855, metadata !DIExpression()), !dbg !865
  br label %do.body, !dbg !865

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !866
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !857, metadata !DIExpression()), !dbg !866
  store ptr null, ptr %__vpp_verify, align 8, !dbg !866
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !866
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !865
  br label %do.cond, !dbg !866

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !866

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !867
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !859, metadata !DIExpression()), !dbg !867
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !867, !srcloc !868
  store i32 %1, ptr %pfo_val__, align 4, !dbg !867
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !867
  %conv = zext i32 %2 to i64, !dbg !867
  %conv1 = trunc i64 %conv to i32, !dbg !867
  store i32 %conv1, ptr %tmp, align 4, !dbg !867
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !865
  %3 = load i32, ptr %tmp, align 4, !dbg !867
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !865
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !865
  store i32 %4, ptr %tmp2, align 4, !dbg !865
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !869
  %5 = load i32, ptr %tmp2, align 4, !dbg !865
  store i32 %5, ptr %cpu, align 4, !dbg !870
  %6 = load i32, ptr %cpu, align 4, !dbg !871
  %7 = load i32, ptr @crashing_cpu, align 4, !dbg !873
  %cmp = icmp eq i32 %6, %7, !dbg !874
  br i1 %cmp, label %if.then, label %if.end, !dbg !875

if.then:                                          ; preds = %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #12, !dbg !876
  ret i32 1, !dbg !877

if.end:                                           ; preds = %do.end
  br label %do.body4, !dbg !878

do.body4:                                         ; preds = %if.end
  call void @arch_local_irq_disable() #11, !dbg !879
  br label %do.cond5, !dbg !879

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !879

do.end6:                                          ; preds = %do.cond5
  %8 = load ptr, ptr @shootdown_callback, align 8, !dbg !881
  %tobool = icmp ne ptr %8, null, !dbg !881
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !883

if.then7:                                         ; preds = %do.end6
  %9 = load ptr, ptr @shootdown_callback, align 8, !dbg !884
  %10 = load i32, ptr %cpu, align 4, !dbg !885
  %11 = load ptr, ptr %regs.addr, align 8, !dbg !886
  call void %9(i32 noundef %10, ptr noundef %11) #11, !dbg !884
  br label %if.end8, !dbg !884

if.end8:                                          ; preds = %if.then7, %do.end6
  call void @cpu_emergency_disable_virtualization() #11, !dbg !887
  call void @atomic_dec(ptr noundef @waiting_for_crash_ipi) #11, !dbg !888
  call void @halt() #11, !dbg !889
  br label %for.cond, !dbg !890

for.cond:                                         ; preds = %for.cond, %if.end8
  call void @cpu_relax() #11, !dbg !891
  br label %for.cond, !dbg !894, !llvm.loop !895
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !898 dso_local i32 @__register_nmi_handler(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !902 dso_local void @apic_send_IPI_allbutself(i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #2 align 16 !dbg !903 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !909, metadata !DIExpression()), !dbg !910
  %0 = load ptr, ptr %v.addr, align 8, !dbg !911
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #11, !dbg !912
  %1 = load ptr, ptr %v.addr, align 8, !dbg !913
  %call = call i32 @raw_atomic_read(ptr noundef %1) #11, !dbg !914
  ret i32 %call, !dbg !915
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !916 dso_local void @__const_udelay(i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @run_crash_ipi_callback(ptr noundef %regs) #5 align 16 !dbg !920 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !922, metadata !DIExpression()), !dbg !923
  %0 = load i32, ptr @crash_ipi_issued, align 4, !dbg !924
  %tobool = icmp ne i32 %0, 0, !dbg !924
  br i1 %tobool, label %if.then, label %if.end, !dbg !926

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !927
  %call = call i32 @crash_nmi_callback(i32 noundef 0, ptr noundef %1) #11, !dbg !928
  br label %if.end, !dbg !928

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !929
}

; Function Attrs: fn_ret_thunk_extern noredzone noreturn nounwind null_pointer_is_valid sspstrong
define hidden void @nmi_panic_self_stop(ptr noundef %regs) #0 align 16 !dbg !930 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !932, metadata !DIExpression()), !dbg !933
  br label %while.body, !dbg !934

while.body:                                       ; preds = %entry, %while.body
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !935
  call void @run_crash_ipi_callback(ptr noundef %0) #11, !dbg !937
  call void @cpu_relax() #11, !dbg !938
  br label %while.body, !dbg !934, !llvm.loop !939
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #2 align 16 !dbg !941 {
entry:
  call void @rep_nop() #11, !dbg !943
  ret void, !dbg !944
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #2 align 16 !dbg !945 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !946, !srcloc !947
  ret void, !dbg !948
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !949 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !955 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !956 dso_local i32 @dmi_check_system(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !958 dso_local zeroext i1 @efi_reboot_required() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !962 dso_local zeroext i1 @efi_runtime_disabled() #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @set_kbd_reboot(ptr noundef %d) #4 section ".init.text" align 16 !dbg !964 {
entry:
  %d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !966, metadata !DIExpression()), !dbg !967
  %0 = load i32, ptr @reboot_type, align 4, !dbg !968
  %cmp = icmp ne i32 %0, 107, !dbg !970
  br i1 %cmp, label %if.then, label %if.end, !dbg !971

if.then:                                          ; preds = %entry
  store i32 107, ptr @reboot_type, align 4, !dbg !972
  br label %do.body, !dbg !974

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !976

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %d.addr, align 8, !dbg !974
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %1, i32 0, i32 1, !dbg !974
  %2 = load ptr, ptr %ident, align 8, !dbg !974
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.39, ptr noundef %2, ptr noundef @.str.40) #13, !dbg !974
  store i32 %call, ptr %tmp, align 4, !dbg !976
  %3 = load i32, ptr %tmp, align 4, !dbg !974
  br label %if.end, !dbg !978

if.end:                                           ; preds = %do.end, %entry
  ret i32 0, !dbg !979
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @set_efi_reboot(ptr noundef %d) #4 section ".init.text" align 16 !dbg !980 {
entry:
  %d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !982, metadata !DIExpression()), !dbg !983
  %0 = load i32, ptr @reboot_type, align 4, !dbg !984
  %cmp = icmp ne i32 %0, 101, !dbg !986
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !987

land.lhs.true:                                    ; preds = %entry
  %call = call zeroext i1 @efi_runtime_disabled() #11, !dbg !988
  br i1 %call, label %if.end, label %if.then, !dbg !989

if.then:                                          ; preds = %land.lhs.true
  store i32 101, ptr @reboot_type, align 4, !dbg !990
  br label %do.body, !dbg !992

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !994

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %d.addr, align 8, !dbg !992
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %1, i32 0, i32 1, !dbg !992
  %2 = load ptr, ptr %ident, align 8, !dbg !992
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.41, ptr noundef %2) #13, !dbg !992
  store i32 %call1, ptr %tmp, align 4, !dbg !994
  %3 = load i32, ptr %tmp, align 4, !dbg !992
  br label %if.end, !dbg !996

if.end:                                           ; preds = %do.end, %land.lhs.true, %entry
  ret i32 0, !dbg !997
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @set_pci_reboot(ptr noundef %d) #4 section ".init.text" align 16 !dbg !998 {
entry:
  %d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !1000, metadata !DIExpression()), !dbg !1001
  %0 = load i32, ptr @reboot_type, align 4, !dbg !1002
  %cmp = icmp ne i32 %0, 112, !dbg !1004
  br i1 %cmp, label %if.then, label %if.end, !dbg !1005

if.then:                                          ; preds = %entry
  store i32 112, ptr @reboot_type, align 4, !dbg !1006
  br label %do.body, !dbg !1008

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !1010

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %d.addr, align 8, !dbg !1008
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %1, i32 0, i32 1, !dbg !1008
  %2 = load ptr, ptr %ident, align 8, !dbg !1008
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.42, ptr noundef %2, ptr noundef @.str.43) #13, !dbg !1008
  store i32 %call, ptr %tmp, align 4, !dbg !1010
  %3 = load i32, ptr %tmp, align 4, !dbg !1008
  br label %if.end, !dbg !1012

if.end:                                           ; preds = %do.end, %entry
  ret i32 0, !dbg !1013
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @set_bios_reboot(ptr noundef %d) #4 section ".init.text" align 16 !dbg !1014 {
entry:
  %d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !1016, metadata !DIExpression()), !dbg !1017
  %0 = load i32, ptr @reboot_type, align 4, !dbg !1018
  %cmp = icmp ne i32 %0, 98, !dbg !1020
  br i1 %cmp, label %if.then, label %if.end, !dbg !1021

if.then:                                          ; preds = %entry
  store i32 98, ptr @reboot_type, align 4, !dbg !1022
  br label %do.body, !dbg !1024

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !1026

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %d.addr, align 8, !dbg !1024
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %1, i32 0, i32 1, !dbg !1024
  %2 = load ptr, ptr %ident, align 8, !dbg !1024
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.42, ptr noundef %2, ptr noundef @.str.44) #13, !dbg !1024
  store i32 %call, ptr %tmp, align 4, !dbg !1026
  %3 = load i32, ptr %tmp, align 4, !dbg !1024
  br label %if.end, !dbg !1028

if.end:                                           ; preds = %do.end, %entry
  ret i32 0, !dbg !1029
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @set_acpi_reboot(ptr noundef %d) #4 section ".init.text" align 16 !dbg !1030 {
entry:
  %d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !1032, metadata !DIExpression()), !dbg !1033
  %0 = load i32, ptr @reboot_type, align 4, !dbg !1034
  %cmp = icmp ne i32 %0, 97, !dbg !1036
  br i1 %cmp, label %if.then, label %if.end, !dbg !1037

if.then:                                          ; preds = %entry
  store i32 97, ptr @reboot_type, align 4, !dbg !1038
  br label %do.body, !dbg !1040

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !1042

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %d.addr, align 8, !dbg !1040
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %1, i32 0, i32 1, !dbg !1040
  %2 = load ptr, ptr %ident, align 8, !dbg !1040
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.42, ptr noundef %2, ptr noundef @.str.45) #13, !dbg !1040
  store i32 %call, ptr %tmp, align 4, !dbg !1042
  %3 = load i32, ptr %tmp, align 4, !dbg !1040
  br label %if.end, !dbg !1044

if.end:                                           ; preds = %do.end, %entry
  ret i32 0, !dbg !1045
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1046 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1050 dso_local void @stop_this_cpu(ptr noundef) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1054 dso_local zeroext i1 @kernel_can_power_off() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1055 dso_local void @do_kernel_power_off() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @emergency_reboot_disable_virtualization() #5 align 16 !dbg !1056 {
entry:
  ret void, !dbg !1057
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @efi_capsule_pending(ptr noundef %reset_type) #6 align 16 !dbg !1058 {
entry:
  %reset_type.addr = alloca ptr, align 8
  store ptr %reset_type, ptr %reset_type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reset_type.addr, metadata !1062, metadata !DIExpression()), !dbg !1063
  ret i1 false, !dbg !1064
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1065 dso_local void @acpi_reboot() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kb_wait() #6 align 16 !dbg !1067 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1070
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1069, metadata !DIExpression()), !dbg !1071
  store i32 0, ptr %i, align 4, !dbg !1072
  br label %for.cond, !dbg !1074

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1075
  %cmp = icmp slt i32 %0, 65536, !dbg !1077
  br i1 %cmp, label %for.body, label %for.end, !dbg !1078

for.body:                                         ; preds = %for.cond
  %call = call zeroext i8 @__inb(i16 noundef zeroext 100) #11, !dbg !1079
  %conv = zext i8 %call to i32, !dbg !1079
  %and = and i32 %conv, 2, !dbg !1082
  %cmp1 = icmp eq i32 %and, 0, !dbg !1083
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1084

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !1085

if.end:                                           ; preds = %for.body
  call void @__const_udelay(i64 noundef 8590) #11, !dbg !1086
  br label %for.inc, !dbg !1091

for.inc:                                          ; preds = %if.end
  %1 = load i32, ptr %i, align 4, !dbg !1092
  %inc = add i32 %1, 1, !dbg !1092
  store i32 %inc, ptr %i, align 4, !dbg !1092
  br label %for.cond, !dbg !1093, !llvm.loop !1094

for.end:                                          ; preds = %if.then, %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1096
  ret void, !dbg !1096
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outb(i8 noundef zeroext %value, i16 noundef zeroext %port) #2 align 16 !dbg !1097 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1102, metadata !DIExpression()), !dbg !1104
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !1103, metadata !DIExpression()), !dbg !1104
  %0 = load i8, ptr %value.addr, align 1, !dbg !1104
  %1 = load i16, ptr %port.addr, align 2, !dbg !1104
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i16 %1) #12, !dbg !1104, !srcloc !1105
  ret void, !dbg !1104
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1106 dso_local void @efi_reboot(i32 noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__inb(i16 noundef zeroext %port) #2 align 16 !dbg !1109 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !1113, metadata !DIExpression()), !dbg !1115
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #12, !dbg !1115
  call void @llvm.dbg.declare(metadata ptr %value, metadata !1114, metadata !DIExpression()), !dbg !1115
  %0 = load i16, ptr %port.addr, align 2, !dbg !1115
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #12, !dbg !1115, !srcloc !1116
  store i8 %1, ptr %value, align 1, !dbg !1115
  %2 = load i8, ptr %value, align 1, !dbg !1115
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #12, !dbg !1115
  ret i8 %2, !dbg !1115
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1117 dso_local void @idt_invalidate() #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !1119 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1131, metadata !DIExpression()), !dbg !1133
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1132, metadata !DIExpression()), !dbg !1134
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1135
  %1 = load i64, ptr %size.addr, align 8, !dbg !1136
  %conv = trunc i64 %1 to i32, !dbg !1136
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !1137
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1138
  %3 = load i64, ptr %size.addr, align 8, !dbg !1138
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #11, !dbg !1138
  ret void, !dbg !1139
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #2 align 16 !dbg !1140 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1143, metadata !DIExpression()), !dbg !1145
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1144, metadata !DIExpression()), !dbg !1146
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1147
  %1 = load i32, ptr %i.addr, align 4, !dbg !1148
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #11, !dbg !1149
  ret void, !dbg !1150
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !1151 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1156, metadata !DIExpression()), !dbg !1158
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1157, metadata !DIExpression()), !dbg !1159
  ret i1 true, !dbg !1160
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !1161 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1166, metadata !DIExpression()), !dbg !1169
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1167, metadata !DIExpression()), !dbg !1170
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1168, metadata !DIExpression()), !dbg !1171
  ret void, !dbg !1172
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #2 align 16 !dbg !1173 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1176, metadata !DIExpression()), !dbg !1178
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1177, metadata !DIExpression()), !dbg !1179
  br label %do.body, !dbg !1180

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !1181
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1181
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !1181
  store volatile i32 %0, ptr %counter, align 4, !dbg !1181
  br label %do.end, !dbg !1181

do.end:                                           ; preds = %do.body
  ret void, !dbg !1183
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #2 align 16 !dbg !1184 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1186, metadata !DIExpression()), !dbg !1187
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1188
  %call = call i32 @arch_atomic_read(ptr noundef %0) #11, !dbg !1189
  ret i32 %call, !dbg !1190
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #2 align 16 !dbg !1191 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1193, metadata !DIExpression()), !dbg !1194
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1195
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !1195
  %1 = load volatile i32, ptr %counter, align 4, !dbg !1195
  ret i32 %1, !dbg !1196
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_emergency_disable_virtualization() #6 align 16 !dbg !1197 {
entry:
  ret void, !dbg !1198
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #2 align 16 !dbg !1199 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1203, metadata !DIExpression()), !dbg !1204
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1205
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !1206
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1207
  call void @raw_atomic_dec(ptr noundef %1) #11, !dbg !1208
  ret void, !dbg !1209
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @halt() #2 align 16 !dbg !1210 {
entry:
  call void @native_halt() #11, !dbg !1211
  ret void, !dbg !1212
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !1213 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1215, metadata !DIExpression()), !dbg !1217
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1216, metadata !DIExpression()), !dbg !1218
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1219
  %1 = load i64, ptr %size.addr, align 8, !dbg !1220
  %conv = trunc i64 %1 to i32, !dbg !1220
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !1221
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1222
  %3 = load i64, ptr %size.addr, align 8, !dbg !1222
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #11, !dbg !1222
  ret void, !dbg !1223
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #2 align 16 !dbg !1224 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1226, metadata !DIExpression()), !dbg !1227
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1228
  call void @arch_atomic_dec(ptr noundef %0) #11, !dbg !1229
  ret void, !dbg !1230
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #2 align 16 !dbg !1231 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1233, metadata !DIExpression()), !dbg !1234
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1235
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !1236
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #12, !dbg !1237, !srcloc !1238
  ret void, !dbg !1239
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_halt() #2 align 16 !dbg !1240 {
entry:
  call void @mds_idle_clear_cpu_buffers() #11, !dbg !1241
  call void asm sideeffect "hlt", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !1242, !srcloc !1243
  ret void, !dbg !1244
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mds_idle_clear_cpu_buffers() #2 align 16 !dbg !1245 {
entry:
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #12, !dbg !1250
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !1247, metadata !DIExpression()), !dbg !1250
  %call = call zeroext i1 @arch_static_branch_jump(ptr noundef @mds_idle_clear, i1 noundef zeroext true) #11, !dbg !1251
  %lnot = xor i1 %call, true, !dbg !1251
  %frombool = zext i1 %lnot to i8, !dbg !1251
  store i8 %frombool, ptr %branch, align 1, !dbg !1251
  %0 = load i8, ptr %branch, align 1, !dbg !1250, !range !668, !noundef !669
  %tobool = trunc i8 %0 to i1, !dbg !1250
  %lnot1 = xor i1 %tobool, true, !dbg !1250
  %lnot2 = xor i1 %lnot1, true, !dbg !1250
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1250
  %conv = sext i32 %lnot.ext to i64, !dbg !1250
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1250
  store i64 %expval, ptr %tmp, align 8, !dbg !1254
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #12, !dbg !1255
  %1 = load i64, ptr %tmp, align 8, !dbg !1250
  %tobool3 = icmp ne i64 %1, 0, !dbg !1255
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1256

if.then:                                          ; preds = %entry
  call void @mds_clear_cpu_buffers() #11, !dbg !1257
  br label %if.end, !dbg !1257

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1258
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch_jump(ptr noundef %key, i1 noundef zeroext %branch) #2 align 16 !dbg !1259 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1288, metadata !DIExpression()), !dbg !1291
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !1289, metadata !DIExpression()), !dbg !1292
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1293
  %1 = load i8, ptr %branch.addr, align 1, !dbg !1294, !range !668, !noundef !669
  %tobool = trunc i8 %1 to i1, !dbg !1294
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i1 %tobool) #12
          to label %asm.fallthrough [label %l_yes], !dbg !1295, !srcloc !1296

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1297
  br label %return, !dbg !1297

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !1290), !dbg !1298
  store i1 true, ptr %retval, align 1, !dbg !1299
  br label %return, !dbg !1299

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !1300
  ret i1 %2, !dbg !1300
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mds_clear_cpu_buffers() #2 align 16 !dbg !384 {
entry:
  call void asm sideeffect "verw $0", "*m,~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) @mds_clear_cpu_buffers.ds) #12, !dbg !1301, !srcloc !1302
  ret void, !dbg !1303
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !1304 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1306, metadata !DIExpression()), !dbg !1308
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1307, metadata !DIExpression()), !dbg !1309
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1310
  %1 = load i64, ptr %size.addr, align 8, !dbg !1311
  %conv = trunc i64 %1 to i32, !dbg !1311
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !1312
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1313
  %3 = load i64, ptr %size.addr, align 8, !dbg !1313
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !1313
  ret void, !dbg !1314
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !1315 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1317, metadata !DIExpression()), !dbg !1319
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1318, metadata !DIExpression()), !dbg !1320
  ret i1 true, !dbg !1321
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #2 align 16 !dbg !1322 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !1323, !srcloc !1324
  ret void, !dbg !1325
}

attributes #0 = { fn_ret_thunk_extern noredzone noreturn nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone }
attributes #12 = { nounwind }
attributes #13 = { cold noredzone }
attributes #14 = { noredzone noreturn }
attributes #15 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!387, !388, !389, !390, !391, !392, !393, !394}
!llvm.ident = !{!395}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pm_power_off", scope: !2, file: !3, line: 38, type: !72, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.reboot.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/reboot\22 -D KBUILD_BASENAME=\22reboot\22 -D KBUILD_MODNAME=\22reboot\22 -D __KBUILD_MODNAME=kmod_reboot -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/reboot.ll arch/x86/kernel/reboot.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !38, globals: !48, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/reboot.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ddc62e8f66b288536b3477ec99e79d2")
!4 = !{!5, !14, !24, !33}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./arch/x86/include/asm/nmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df2487e90a9e90d681c12ee58edd9a47")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "NMI_LOCAL", value: 0)
!10 = !DIEnumerator(name: "NMI_UNKNOWN", value: 1)
!11 = !DIEnumerator(name: "NMI_SERR", value: 2)
!12 = !DIEnumerator(name: "NMI_IO_CHECK", value: 3)
!13 = !DIEnumerator(name: "NMI_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reboot_type", file: !15, line: 28, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/reboot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7764077571b3c42d5acdba437f8cc057")
!16 = !{!17, !18, !19, !20, !21, !22, !23}
!17 = !DIEnumerator(name: "BOOT_TRIPLE", value: 116)
!18 = !DIEnumerator(name: "BOOT_KBD", value: 107)
!19 = !DIEnumerator(name: "BOOT_BIOS", value: 98)
!20 = !DIEnumerator(name: "BOOT_ACPI", value: 97)
!21 = !DIEnumerator(name: "BOOT_EFI", value: 101)
!22 = !DIEnumerator(name: "BOOT_CF9_FORCE", value: 112)
!23 = !DIEnumerator(name: "BOOT_CF9_SAFE", value: 113)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reboot_mode", file: !15, line: 17, baseType: !25, size: 32, elements: !26)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{!27, !28, !29, !30, !31, !32}
!27 = !DIEnumerator(name: "REBOOT_UNDEFINED", value: -1)
!28 = !DIEnumerator(name: "REBOOT_COLD", value: 0)
!29 = !DIEnumerator(name: "REBOOT_WARM", value: 1)
!30 = !DIEnumerator(name: "REBOOT_HARD", value: 2)
!31 = !DIEnumerator(name: "REBOOT_SOFT", value: 3)
!32 = !DIEnumerator(name: "REBOOT_GPIO", value: 4)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !34, line: 10, baseType: !7, size: 32, elements: !35)
!34 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!35 = !{!36, !37}
!36 = !DIEnumerator(name: "false", value: 0)
!37 = !DIEnumerator(name: "true", value: 1)
!38 = !{!39, !40, !25, !41, !42, !44, !46}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!41 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!48 = !{!49, !51, !56, !58, !60, !141, !143, !148, !153, !158, !0, !205, !207, !213, !215, !220, !222, !227, !232, !237, !239, !244, !246, !251, !256, !261, !263, !265, !267, !272, !274, !276, !278, !280, !282, !284, !286, !288, !293, !295, !297, !299, !301, !303, !305, !307, !309, !314, !316, !321, !323, !352, !357, !360, !365, !367, !369, !371, !373, !375, !380, !382}
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pm_power_off358", scope: !2, file: !3, line: 39, type: !39, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "port_cf9_safe", scope: !2, file: !3, line: 49, type: !53, isLocal: false, isDefinition: true)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !54, line: 35, baseType: !55)
!54 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!55 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "__func_stack_frame_non_standard_machine_real_restart", scope: !2, file: !3, line: 134, type: !39, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_reboot__360_517_reboot_init1361", scope: !2, file: !3, line: 517, type: !39, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "machine_ops", scope: !2, file: !3, line: 793, type: !62, isLocal: false, isDefinition: true)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_ops", file: !63, line: 9, size: 384, elements: !64)
!63 = !DIFile(filename: "./arch/x86/include/asm/reboot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3f621f1b649e8b50e39ca18d5be2f80")
!64 = !{!65, !71, !75, !76, !77, !140}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "restart", scope: !62, file: !63, line: 10, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "halt", scope: !62, file: !63, line: 11, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "power_off", scope: !62, file: !63, line: 12, baseType: !72, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !62, file: !63, line: 13, baseType: !72, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "crash_shutdown", scope: !62, file: !63, line: 14, baseType: !78, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !83, line: 103, size: 1344, elements: !84)
!83 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !120, !121, !122}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !82, file: !83, line: 109, baseType: !41, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !82, file: !83, line: 110, baseType: !41, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !82, file: !83, line: 111, baseType: !41, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !82, file: !83, line: 112, baseType: !41, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !82, file: !83, line: 113, baseType: !41, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !82, file: !83, line: 114, baseType: !41, size: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !82, file: !83, line: 117, baseType: !41, size: 64, offset: 384)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !82, file: !83, line: 118, baseType: !41, size: 64, offset: 448)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !82, file: !83, line: 119, baseType: !41, size: 64, offset: 512)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !82, file: !83, line: 120, baseType: !41, size: 64, offset: 576)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !82, file: !83, line: 121, baseType: !41, size: 64, offset: 640)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !82, file: !83, line: 122, baseType: !41, size: 64, offset: 704)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !82, file: !83, line: 123, baseType: !41, size: 64, offset: 768)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !82, file: !83, line: 124, baseType: !41, size: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !82, file: !83, line: 125, baseType: !41, size: 64, offset: 896)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !82, file: !83, line: 139, baseType: !41, size: 64, offset: 960)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !82, file: !83, line: 142, baseType: !41, size: 64, offset: 1024)
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !83, line: 144, baseType: !103, size: 64, offset: 1088)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !82, file: !83, line: 144, size: 64, elements: !104)
!104 = !{!105, !110, !114}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !103, file: !83, line: 146, baseType: !106, size: 16)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !107, line: 19, baseType: !108)
!107 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !109, line: 24, baseType: !45)
!109 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!110 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !103, file: !83, line: 148, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !107, line: 23, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !109, line: 31, baseType: !113)
!113 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !103, file: !83, line: 150, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !83, line: 59, size: 64, elements: !116)
!116 = !{!117, !118, !119}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !115, file: !83, line: 61, baseType: !111, size: 16, flags: DIFlagBitField, extraData: i64 0)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !115, file: !83, line: 63, baseType: !111, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !115, file: !83, line: 65, baseType: !111, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !83, line: 153, baseType: !41, size: 64, offset: 1152)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !82, file: !83, line: 154, baseType: !41, size: 64, offset: 1216)
!122 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !83, line: 156, baseType: !123, size: 64, offset: 1280)
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !82, file: !83, line: 156, size: 64, elements: !124)
!124 = !{!125, !126, !127}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !123, file: !83, line: 158, baseType: !106, size: 16)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !123, file: !83, line: 160, baseType: !111, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !123, file: !83, line: 162, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !83, line: 69, size: 64, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !128, file: !83, line: 71, baseType: !111, size: 16, flags: DIFlagBitField, extraData: i64 0)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !128, file: !83, line: 73, baseType: !111, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !128, file: !83, line: 75, baseType: !111, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !128, file: !83, line: 77, baseType: !111, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !128, file: !83, line: 80, baseType: !111, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !128, file: !83, line: 83, baseType: !111, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !128, file: !83, line: 86, baseType: !111, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !128, file: !83, line: 88, baseType: !111, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !128, file: !83, line: 93, baseType: !111, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !128, file: !83, line: 100, baseType: !111, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "emergency_restart", scope: !62, file: !63, line: 15, baseType: !72, size: 64, offset: 320)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "crashing_cpu", scope: !2, file: !3, line: 837, type: !25, isLocal: false, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !3, line: 902, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 200, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 25)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !3, line: 906, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 40, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 5)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !3, line: 912, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 48, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 6)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "crash_nmi_callback_na", scope: !160, file: !3, line: 912, type: !187, isLocal: true, isDefinition: true)
!160 = distinct !DISubprogram(name: "nmi_shootdown_cpus", scope: !3, file: !3, line: 891, type: !161, scopeLine: 892, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !167)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !163}
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "nmi_shootdown_cb", file: !63, line: 37, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !25, !81}
!167 = !{!168, !169, !170, !173, !176, !179, !183}
!168 = !DILocalVariable(name: "callback", arg: 1, scope: !160, file: !3, line: 891, type: !163)
!169 = !DILocalVariable(name: "msecs", scope: !160, file: !3, line: 893, type: !41)
!170 = !DILocalVariable(name: "__ret_warn_on", scope: !171, file: !3, line: 902, type: !25)
!171 = distinct !DILexicalBlock(scope: !172, file: !3, line: 902, column: 6)
!172 = distinct !DILexicalBlock(scope: !160, file: !3, line: 902, column: 6)
!173 = !DILocalVariable(name: "__flags", scope: !174, file: !3, line: 902, type: !25)
!174 = distinct !DILexicalBlock(scope: !175, file: !3, line: 902, column: 6)
!175 = distinct !DILexicalBlock(scope: !171, file: !3, line: 902, column: 6)
!176 = !DILocalVariable(name: "pscr_ret__", scope: !177, file: !3, line: 906, type: !25)
!177 = distinct !DILexicalBlock(scope: !178, file: !3, line: 906, column: 17)
!178 = distinct !DILexicalBlock(scope: !160, file: !3, line: 906, column: 17)
!179 = !DILocalVariable(name: "__vpp_verify", scope: !180, file: !3, line: 906, type: !181)
!180 = distinct !DILexicalBlock(scope: !177, file: !3, line: 906, column: 17)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!183 = !DILocalVariable(name: "pfo_val__", scope: !184, file: !3, line: 906, type: !185)
!184 = distinct !DILexicalBlock(scope: !177, file: !3, line: 906, column: 17)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !107, line: 21, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !109, line: 27, baseType: !7)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nmiaction", file: !6, line: 39, size: 384, elements: !188)
!188 = !{!189, !195, !200, !201, !202}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !187, file: !6, line: 40, baseType: !190, size: 128)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !54, line: 190, size: 128, elements: !191)
!191 = !{!192, !194}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !54, line: 191, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !190, file: !54, line: 191, baseType: !193, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !187, file: !6, line: 41, baseType: !196, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "nmi_handler_t", file: !6, line: 37, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!25, !7, !81}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "max_duration", scope: !187, file: !6, line: 42, baseType: !111, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !187, file: !6, line: 43, baseType: !41, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !187, file: !6, line: 44, baseType: !203, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "shootdown_callback", scope: !2, file: !3, line: 841, type: !163, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "waiting_for_crash_ipi", scope: !2, file: !3, line: 843, type: !209, isLocal: true, isDefinition: true)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !54, line: 174, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 172, size: 32, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !210, file: !54, line: 173, baseType: !25, size: 32)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "crash_ipi_issued", scope: !2, file: !3, line: 844, type: !25, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !3, line: 167, type: !217, isLocal: true, isDefinition: true)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 168, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 21)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !145, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !3, line: 185, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 120, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 15)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !3, line: 193, type: !229, isLocal: true, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 136, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 17)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !3, line: 201, type: !234, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 144, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 18)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !3, line: 209, type: !229, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !3, line: 217, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 112, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 14)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !3, line: 225, type: !224, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !3, line: 235, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 152, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 19)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !3, line: 245, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 96, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 12)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !3, line: 253, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 160, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 20)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !3, line: 261, type: !217, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !3, line: 271, type: !241, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !3, line: 281, type: !253, isLocal: true, isDefinition: true)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !3, line: 289, type: !269, isLocal: true, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 80, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 10)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !3, line: 297, type: !258, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !3, line: 305, type: !258, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !3, line: 313, type: !258, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !3, line: 321, type: !258, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !3, line: 329, type: !234, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !3, line: 338, type: !234, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !3, line: 347, type: !234, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !3, line: 373, type: !234, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !3, line: 382, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 216, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 27)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !3, line: 391, type: !248, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !3, line: 399, type: !258, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !3, line: 407, type: !258, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !3, line: 415, type: !217, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !3, line: 423, type: !217, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !3, line: 431, type: !217, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !3, line: 439, type: !217, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !3, line: 447, type: !253, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !3, line: 455, type: !311, isLocal: true, isDefinition: true)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 184, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 23)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !3, line: 465, type: !229, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !3, line: 474, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 176, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 22)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !3, line: 484, type: !224, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(name: "reboot_dmi_table", scope: !2, file: !3, line: 162, type: !325, isLocal: true, isDefinition: true)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 107328, elements: !350)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !328, line: 587, size: 2752, elements: !329)
!328 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!329 = !{!330, !335, !336, !349}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !327, file: !328, line: 588, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!25, !334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !327, file: !328, line: 589, baseType: !203, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !327, file: !328, line: 590, baseType: !337, size: 2560, offset: 128)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 2560, elements: !347)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !328, line: 581, size: 640, elements: !339)
!339 = !{!340, !342, !343}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !338, file: !328, line: 582, baseType: !341, size: 7, flags: DIFlagBitField, extraData: i64 0)
!341 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !338, file: !328, line: 583, baseType: !341, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !338, file: !328, line: 584, baseType: !344, size: 632, offset: 8)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 632, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 79)
!347 = !{!348}
!348 = !DISubrange(count: 4)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !327, file: !328, line: 591, baseType: !39, size: 64, offset: 2688)
!350 = !{!351}
!351 = !DISubrange(count: 39)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !3, line: 153, type: !354, isLocal: true, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 552, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 69)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !3, line: 153, type: !359, isLocal: true, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 32, elements: !347)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !362, isLocal: true, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 560, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 70)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !362, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !359, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !150, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !3, line: 63, type: !150, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !3, line: 765, type: !290, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !3, line: 648, type: !377, isLocal: true, isDefinition: true)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 440, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 55)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "reboot_emergency", scope: !2, file: !3, line: 46, type: !25, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "ds", scope: !384, file: !385, line: 608, type: !386, isLocal: true, isDefinition: true)
!384 = distinct !DISubprogram(name: "mds_clear_cpu_buffers", scope: !385, file: !385, line: 606, type: !73, scopeLine: 607, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!385 = !DIFile(filename: "./arch/x86/include/asm/nospec-branch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f9617eaa9a9e58d8d33cc8c440e36ce0")
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!387 = !{i32 7, !"Dwarf Version", i32 5}
!388 = !{i32 2, !"Debug Info Version", i32 3}
!389 = !{i32 1, !"wchar_size", i32 2}
!390 = !{i32 8, !"cf-protection-branch", i32 1}
!391 = !{i32 4, !"function_return_thunk_extern", i32 1}
!392 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!393 = !{i32 1, !"Code Model", i32 2}
!394 = !{i32 1, !"override-stack-alignment", i32 8}
!395 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!396 = distinct !DISubprogram(name: "machine_real_restart", scope: !3, file: !3, line: 96, type: !397, scopeLine: 97, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !399)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !7}
!399 = !{!400}
!400 = !DILocalVariable(name: "type", arg: 1, scope: !396, file: !3, line: 96, type: !7)
!401 = !DILocation(line: 96, column: 51, scope: !396)
!402 = !DILocation(line: 98, column: 2, scope: !396)
!403 = !DILocation(line: 98, column: 2, scope: !404)
!404 = distinct !DILexicalBlock(scope: !396, file: !3, line: 98, column: 2)
!405 = !DILocation(line: 110, column: 2, scope: !396)
!406 = !DILocation(line: 111, column: 2, scope: !396)
!407 = !DILocation(line: 112, column: 2, scope: !396)
!408 = !DILocation(line: 117, column: 2, scope: !396)
!409 = !DILocation(line: 126, column: 13, scope: !396)
!410 = !DILocation(line: 126, column: 31, scope: !396)
!411 = !DILocation(line: 127, column: 13, scope: !396)
!412 = !DILocation(line: 125, column: 2, scope: !396)
!413 = !{i64 3336}
!414 = !DILocation(line: 129, column: 2, scope: !396)
!415 = !DILocation(line: 129, column: 2, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 129, column: 2)
!417 = distinct !DILexicalBlock(scope: !396, file: !3, line: 129, column: 2)
!418 = !{i64 2156282861, i64 2156282686, i64 2156282737, i64 2156282789, i64 2156282817}
!419 = !DILocation(line: 129, column: 2, scope: !417)
!420 = !DILocation(line: 130, column: 1, scope: !396)
!421 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !422, file: !422, line: 70, type: !73, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!422 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!423 = !DILocation(line: 72, column: 2, scope: !421)
!424 = !DILocation(line: 73, column: 1, scope: !421)
!425 = distinct !DISubprogram(name: "spin_lock", scope: !426, file: !426, line: 349, type: !427, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !462)
!426 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!427 = !DISubroutineType(types: !428)
!428 = !{null, !429}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !431, line: 29, baseType: !432)
!431 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !431, line: 17, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !431, line: 18, baseType: !435, size: 32)
!435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !431, line: 18, size: 32, elements: !436)
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !435, file: !431, line: 19, baseType: !438, size: 32)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !439, line: 14, size: 32, elements: !440)
!439 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !438, file: !439, line: 15, baseType: !442, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !443, line: 44, baseType: !444)
!443 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !443, line: 14, size: 32, elements: !445)
!445 = !{!446}
!446 = !DIDerivedType(tag: DW_TAG_member, scope: !444, file: !443, line: 15, baseType: !447, size: 32)
!447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !444, file: !443, line: 15, size: 32, elements: !448)
!448 = !{!449, !450, !457}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !447, file: !443, line: 16, baseType: !209, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !443, line: 24, baseType: !451, size: 16)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !447, file: !443, line: 24, size: 16, elements: !452)
!452 = !{!453, !456}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !451, file: !443, line: 25, baseType: !454, size: 8)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !107, line: 17, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !109, line: 21, baseType: !341)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !451, file: !443, line: 26, baseType: !454, size: 8, offset: 8)
!457 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !443, line: 28, baseType: !458, size: 32)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !447, file: !443, line: 28, size: 32, elements: !459)
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !458, file: !443, line: 29, baseType: !106, size: 16)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !458, file: !443, line: 30, baseType: !106, size: 16, offset: 16)
!462 = !{!463}
!463 = !DILocalVariable(name: "lock", arg: 1, scope: !425, file: !426, line: 349, type: !429)
!464 = !DILocation(line: 349, column: 51, scope: !425)
!465 = !DILocation(line: 351, column: 2, scope: !425)
!466 = !DILocation(line: 352, column: 1, scope: !425)
!467 = !DISubprogram(name: "rtc_cmos_write", scope: !468, file: !468, line: 96, type: !469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!468 = !DIFile(filename: "./arch/x86/include/asm/mc146818rtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcbd5e3b55fc68b6e5a552bc57e3029b")
!469 = !DISubroutineType(types: !470)
!470 = !{null, !341, !341}
!471 = distinct !DISubprogram(name: "spin_unlock", scope: !426, file: !426, line: 389, type: !427, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !472)
!472 = !{!473}
!473 = !DILocalVariable(name: "lock", arg: 1, scope: !471, file: !426, line: 389, type: !429)
!474 = !DILocation(line: 389, column: 53, scope: !471)
!475 = !DILocation(line: 391, column: 2, scope: !471)
!476 = !DILocation(line: 392, column: 1, scope: !471)
!477 = !DISubprogram(name: "load_trampoline_pgtable", scope: !478, file: !478, line: 95, type: !73, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!478 = !DIFile(filename: "./arch/x86/include/asm/realmode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f98f3fced78572afc86d24ec2fc3fcda")
!479 = distinct !DISubprogram(name: "__initstub__kmod_reboot__360_517_reboot_init1", scope: !3, file: !3, line: 517, type: !480, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!480 = !DISubroutineType(types: !481)
!481 = !{!25}
!482 = !DILocation(line: 517, column: 1, scope: !479)
!483 = distinct !DISubprogram(name: "reboot_init", scope: !3, file: !3, line: 494, type: !480, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !484)
!484 = !{!485}
!485 = !DILocalVariable(name: "rv", scope: !483, file: !3, line: 496, type: !25)
!486 = !DILocation(line: 496, column: 2, scope: !483)
!487 = !DILocation(line: 496, column: 6, scope: !483)
!488 = !DILocation(line: 502, column: 7, scope: !489)
!489 = distinct !DILexicalBlock(scope: !483, file: !3, line: 502, column: 6)
!490 = !DILocation(line: 502, column: 6, scope: !483)
!491 = !DILocation(line: 503, column: 3, scope: !489)
!492 = !DILocation(line: 510, column: 7, scope: !483)
!493 = !DILocation(line: 510, column: 5, scope: !483)
!494 = !DILocation(line: 512, column: 7, scope: !495)
!495 = distinct !DILexicalBlock(scope: !483, file: !3, line: 512, column: 6)
!496 = !DILocation(line: 512, column: 10, scope: !495)
!497 = !DILocation(line: 512, column: 13, scope: !495)
!498 = !DILocation(line: 512, column: 35, scope: !495)
!499 = !DILocation(line: 512, column: 39, scope: !495)
!500 = !DILocation(line: 512, column: 6, scope: !483)
!501 = !DILocation(line: 513, column: 15, scope: !495)
!502 = !DILocation(line: 513, column: 3, scope: !495)
!503 = !DILocation(line: 515, column: 2, scope: !483)
!504 = !DILocation(line: 516, column: 1, scope: !483)
!505 = distinct !DISubprogram(name: "mach_reboot_fixups", scope: !3, file: !3, line: 604, type: !73, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!506 = !DILocation(line: 606, column: 1, scope: !505)
!507 = distinct !DISubprogram(name: "native_machine_shutdown", scope: !3, file: !3, line: 717, type: !73, scopeLine: 718, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!508 = !DILocation(line: 732, column: 2, scope: !507)
!509 = !DILocation(line: 741, column: 2, scope: !507)
!510 = !DILocation(line: 741, column: 2, scope: !511)
!511 = distinct !DILexicalBlock(scope: !507, file: !3, line: 741, column: 2)
!512 = !DILocation(line: 742, column: 2, scope: !507)
!513 = !DILocation(line: 745, column: 2, scope: !507)
!514 = !DILocation(line: 746, column: 2, scope: !507)
!515 = !DILocation(line: 749, column: 2, scope: !507)
!516 = !DILocation(line: 753, column: 15, scope: !507)
!517 = !DILocation(line: 753, column: 2, scope: !507)
!518 = !DILocation(line: 755, column: 1, scope: !507)
!519 = !DISubprogram(name: "clear_IO_APIC", scope: !520, file: !520, line: 173, type: !73, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!520 = !DIFile(filename: "./arch/x86/include/asm/io_apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c646052d57aa5ccfb364bced6a46c18")
!521 = distinct !DISubprogram(name: "stop_other_cpus", scope: !522, file: !522, line: 59, type: !73, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!522 = !DIFile(filename: "./arch/x86/include/asm/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9466013197f61ce2fbb2e675d22e6f5")
!523 = !DILocation(line: 61, column: 10, scope: !521)
!524 = !DILocation(line: 61, column: 2, scope: !521)
!525 = !DILocation(line: 62, column: 1, scope: !521)
!526 = !DISubprogram(name: "lapic_shutdown", scope: !527, file: !527, line: 129, type: !73, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!527 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!528 = !DISubprogram(name: "restore_boot_irq_mode", scope: !520, file: !520, line: 174, type: !73, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!529 = !DISubprogram(name: "hpet_disable", scope: !530, file: !530, line: 73, type: !73, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!530 = !DIFile(filename: "./arch/x86/include/asm/hpet.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bf2ddcd811b6804706aefc6f053a8835")
!531 = distinct !DISubprogram(name: "native_machine_restart", scope: !3, file: !3, line: 763, type: !67, scopeLine: 764, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !532)
!532 = !{!533}
!533 = !DILocalVariable(name: "__unused", arg: 1, scope: !531, file: !3, line: 763, type: !69)
!534 = !DILocation(line: 763, column: 42, scope: !531)
!535 = !DILocation(line: 765, column: 2, scope: !536)
!536 = distinct !DILexicalBlock(scope: !531, file: !3, line: 765, column: 2)
!537 = !DILocation(line: 765, column: 2, scope: !538)
!538 = distinct !DILexicalBlock(scope: !536, file: !3, line: 765, column: 2)
!539 = !DILocation(line: 767, column: 7, scope: !540)
!540 = distinct !DILexicalBlock(scope: !531, file: !3, line: 767, column: 6)
!541 = !DILocation(line: 767, column: 6, scope: !531)
!542 = !DILocation(line: 768, column: 3, scope: !540)
!543 = !DILocation(line: 769, column: 2, scope: !531)
!544 = !DILocation(line: 770, column: 1, scope: !531)
!545 = distinct !DISubprogram(name: "native_machine_halt", scope: !3, file: !3, line: 772, type: !73, scopeLine: 773, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!546 = !DILocation(line: 775, column: 2, scope: !545)
!547 = !DILocation(line: 777, column: 2, scope: !545)
!548 = !DILocation(line: 777, column: 2, scope: !549)
!549 = distinct !DILexicalBlock(scope: !545, file: !3, line: 777, column: 2)
!550 = !DILocation(line: 779, column: 2, scope: !545)
!551 = distinct !DISubprogram(name: "native_machine_power_off", scope: !3, file: !3, line: 782, type: !73, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!552 = !DILocation(line: 784, column: 6, scope: !553)
!553 = distinct !DILexicalBlock(scope: !551, file: !3, line: 784, column: 6)
!554 = !DILocation(line: 784, column: 6, scope: !551)
!555 = !DILocation(line: 785, column: 8, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !3, line: 785, column: 7)
!557 = distinct !DILexicalBlock(scope: !553, file: !3, line: 784, column: 30)
!558 = !DILocation(line: 785, column: 7, scope: !557)
!559 = !DILocation(line: 786, column: 4, scope: !556)
!560 = !DILocation(line: 787, column: 3, scope: !557)
!561 = !DILocation(line: 788, column: 2, scope: !557)
!562 = !DILocation(line: 790, column: 2, scope: !551)
!563 = !DILocation(line: 790, column: 2, scope: !564)
!564 = distinct !DILexicalBlock(scope: !551, file: !3, line: 790, column: 2)
!565 = !DILocation(line: 791, column: 1, scope: !551)
!566 = distinct !DISubprogram(name: "native_machine_emergency_restart", scope: !3, file: !3, line: 627, type: !73, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !567)
!567 = !{!568, !569, !570, !571, !572, !579}
!568 = !DILocalVariable(name: "i", scope: !566, file: !3, line: 629, type: !25)
!569 = !DILocalVariable(name: "attempt", scope: !566, file: !3, line: 630, type: !25)
!570 = !DILocalVariable(name: "orig_reboot_type", scope: !566, file: !3, line: 631, type: !25)
!571 = !DILocalVariable(name: "mode", scope: !566, file: !3, line: 632, type: !45)
!572 = !DILocalVariable(name: "reboot_code", scope: !573, file: !3, line: 695, type: !454)
!573 = distinct !DILexicalBlock(scope: !574, file: !3, line: 694, column: 23)
!574 = distinct !DILexicalBlock(scope: !575, file: !3, line: 694, column: 8)
!575 = distinct !DILexicalBlock(scope: !576, file: !3, line: 654, column: 24)
!576 = distinct !DILexicalBlock(scope: !577, file: !3, line: 652, column: 11)
!577 = distinct !DILexicalBlock(scope: !578, file: !3, line: 652, column: 2)
!578 = distinct !DILexicalBlock(scope: !566, file: !3, line: 652, column: 2)
!579 = !DILocalVariable(name: "cf9", scope: !573, file: !3, line: 696, type: !454)
!580 = !DILocation(line: 629, column: 2, scope: !566)
!581 = !DILocation(line: 629, column: 6, scope: !566)
!582 = !DILocation(line: 630, column: 2, scope: !566)
!583 = !DILocation(line: 630, column: 6, scope: !566)
!584 = !DILocation(line: 631, column: 2, scope: !566)
!585 = !DILocation(line: 631, column: 6, scope: !566)
!586 = !DILocation(line: 631, column: 25, scope: !566)
!587 = !DILocation(line: 632, column: 2, scope: !566)
!588 = !DILocation(line: 632, column: 17, scope: !566)
!589 = !DILocation(line: 634, column: 6, scope: !590)
!590 = distinct !DILexicalBlock(scope: !566, file: !3, line: 634, column: 6)
!591 = !DILocation(line: 634, column: 6, scope: !566)
!592 = !DILocation(line: 635, column: 3, scope: !590)
!593 = !DILocation(line: 637, column: 2, scope: !566)
!594 = !DILocation(line: 637, column: 2, scope: !595)
!595 = distinct !DILexicalBlock(scope: !566, file: !3, line: 637, column: 2)
!596 = !DILocation(line: 640, column: 9, scope: !566)
!597 = !DILocation(line: 640, column: 21, scope: !566)
!598 = !DILocation(line: 640, column: 7, scope: !566)
!599 = !DILocation(line: 641, column: 37, scope: !566)
!600 = !DILocation(line: 641, column: 22, scope: !566)
!601 = !DILocation(line: 641, column: 35, scope: !566)
!602 = !DILocation(line: 647, column: 6, scope: !603)
!603 = distinct !DILexicalBlock(scope: !566, file: !3, line: 647, column: 6)
!604 = !DILocation(line: 647, column: 6, scope: !566)
!605 = !DILocation(line: 648, column: 3, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !3, line: 648, column: 3)
!607 = distinct !DILexicalBlock(scope: !603, file: !3, line: 647, column: 33)
!608 = !DILocation(line: 648, column: 3, scope: !609)
!609 = distinct !DILexicalBlock(scope: !606, file: !3, line: 648, column: 3)
!610 = !DILocation(line: 649, column: 15, scope: !607)
!611 = !DILocation(line: 650, column: 2, scope: !607)
!612 = !DILocation(line: 652, column: 2, scope: !566)
!613 = !DILocation(line: 654, column: 11, scope: !576)
!614 = !DILocation(line: 654, column: 3, scope: !576)
!615 = !DILocation(line: 656, column: 4, scope: !575)
!616 = !DILocation(line: 657, column: 16, scope: !575)
!617 = !DILocation(line: 658, column: 4, scope: !575)
!618 = !DILocation(line: 661, column: 4, scope: !575)
!619 = !DILocation(line: 663, column: 11, scope: !620)
!620 = distinct !DILexicalBlock(scope: !575, file: !3, line: 663, column: 4)
!621 = !DILocation(line: 663, column: 9, scope: !620)
!622 = !DILocation(line: 663, column: 16, scope: !623)
!623 = distinct !DILexicalBlock(scope: !620, file: !3, line: 663, column: 4)
!624 = !DILocation(line: 663, column: 18, scope: !623)
!625 = !DILocation(line: 663, column: 4, scope: !620)
!626 = !DILocation(line: 664, column: 5, scope: !627)
!627 = distinct !DILexicalBlock(scope: !623, file: !3, line: 663, column: 29)
!628 = !DILocation(line: 665, column: 5, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !3, line: 665, column: 5)
!630 = distinct !DILexicalBlock(scope: !631, file: !3, line: 665, column: 5)
!631 = distinct !DILexicalBlock(scope: !632, file: !3, line: 665, column: 5)
!632 = distinct !DILexicalBlock(scope: !627, file: !3, line: 665, column: 5)
!633 = !DILocation(line: 666, column: 5, scope: !627)
!634 = !DILocation(line: 667, column: 5, scope: !635)
!635 = distinct !DILexicalBlock(scope: !636, file: !3, line: 667, column: 5)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 667, column: 5)
!637 = distinct !DILexicalBlock(scope: !638, file: !3, line: 667, column: 5)
!638 = distinct !DILexicalBlock(scope: !627, file: !3, line: 667, column: 5)
!639 = !DILocation(line: 668, column: 4, scope: !627)
!640 = !DILocation(line: 663, column: 25, scope: !623)
!641 = !DILocation(line: 663, column: 4, scope: !623)
!642 = distinct !{!642, !625, !643, !644, !645}
!643 = !DILocation(line: 668, column: 4, scope: !620)
!644 = !{!"llvm.loop.mustprogress"}
!645 = !{!"llvm.loop.unroll.disable"}
!646 = !DILocation(line: 669, column: 8, scope: !647)
!647 = distinct !DILexicalBlock(scope: !575, file: !3, line: 669, column: 8)
!648 = !DILocation(line: 669, column: 16, scope: !647)
!649 = !DILocation(line: 669, column: 21, scope: !647)
!650 = !DILocation(line: 669, column: 24, scope: !647)
!651 = !DILocation(line: 669, column: 41, scope: !647)
!652 = !DILocation(line: 669, column: 8, scope: !575)
!653 = !DILocation(line: 670, column: 13, scope: !654)
!654 = distinct !DILexicalBlock(scope: !647, file: !3, line: 669, column: 55)
!655 = !DILocation(line: 671, column: 17, scope: !654)
!656 = !DILocation(line: 672, column: 4, scope: !654)
!657 = !DILocation(line: 673, column: 17, scope: !658)
!658 = distinct !DILexicalBlock(scope: !647, file: !3, line: 672, column: 11)
!659 = !DILocation(line: 675, column: 4, scope: !575)
!660 = !DILocation(line: 678, column: 15, scope: !575)
!661 = !DILocation(line: 678, column: 4, scope: !575)
!662 = !DILocation(line: 679, column: 16, scope: !575)
!663 = !DILocation(line: 680, column: 4, scope: !575)
!664 = !DILocation(line: 683, column: 4, scope: !575)
!665 = !DILocation(line: 690, column: 18, scope: !575)
!666 = !DILocation(line: 690, column: 4, scope: !575)
!667 = !DILocation(line: 694, column: 8, scope: !574)
!668 = !{i8 0, i8 2}
!669 = !{}
!670 = !DILocation(line: 694, column: 8, scope: !575)
!671 = !DILocation(line: 695, column: 5, scope: !573)
!672 = !DILocation(line: 695, column: 8, scope: !573)
!673 = !DILocation(line: 695, column: 22, scope: !573)
!674 = !DILocation(line: 695, column: 34, scope: !573)
!675 = !DILocation(line: 696, column: 5, scope: !573)
!676 = !DILocation(line: 696, column: 8, scope: !573)
!677 = !DILocation(line: 696, column: 14, scope: !573)
!678 = !DILocation(line: 696, column: 28, scope: !573)
!679 = !DILocation(line: 696, column: 27, scope: !573)
!680 = !DILocation(line: 696, column: 25, scope: !573)
!681 = !DILocation(line: 697, column: 10, scope: !573)
!682 = !DILocation(line: 697, column: 13, scope: !573)
!683 = !DILocation(line: 697, column: 5, scope: !573)
!684 = !DILocation(line: 698, column: 5, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !3, line: 698, column: 5)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 698, column: 5)
!687 = distinct !DILexicalBlock(scope: !688, file: !3, line: 698, column: 5)
!688 = distinct !DILexicalBlock(scope: !573, file: !3, line: 698, column: 5)
!689 = !DILocation(line: 700, column: 10, scope: !573)
!690 = !DILocation(line: 700, column: 14, scope: !573)
!691 = !DILocation(line: 700, column: 13, scope: !573)
!692 = !DILocation(line: 700, column: 5, scope: !573)
!693 = !DILocation(line: 701, column: 5, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 701, column: 5)
!695 = distinct !DILexicalBlock(scope: !696, file: !3, line: 701, column: 5)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 701, column: 5)
!697 = distinct !DILexicalBlock(scope: !573, file: !3, line: 701, column: 5)
!698 = !DILocation(line: 702, column: 4, scope: !574)
!699 = !DILocation(line: 702, column: 4, scope: !573)
!700 = !DILocation(line: 703, column: 16, scope: !575)
!701 = !DILocation(line: 704, column: 4, scope: !575)
!702 = !DILocation(line: 707, column: 4, scope: !575)
!703 = !DILocation(line: 708, column: 4, scope: !575)
!704 = !{i64 19535}
!705 = !DILocation(line: 711, column: 16, scope: !575)
!706 = !DILocation(line: 712, column: 4, scope: !575)
!707 = !DILocation(line: 652, column: 2, scope: !577)
!708 = distinct !{!708, !709, !710, !645}
!709 = !DILocation(line: 652, column: 2, scope: !578)
!710 = !DILocation(line: 714, column: 2, scope: !578)
!711 = distinct !DISubprogram(name: "machine_power_off", scope: !3, file: !3, line: 804, type: !73, scopeLine: 805, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!712 = !DILocation(line: 806, column: 14, scope: !711)
!713 = !DILocation(line: 806, column: 2, scope: !711)
!714 = !DILocation(line: 807, column: 1, scope: !711)
!715 = distinct !DISubprogram(name: "machine_shutdown", scope: !3, file: !3, line: 809, type: !73, scopeLine: 810, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!716 = !DILocation(line: 811, column: 14, scope: !715)
!717 = !DILocation(line: 811, column: 2, scope: !715)
!718 = !DILocation(line: 812, column: 1, scope: !715)
!719 = distinct !DISubprogram(name: "machine_emergency_restart", scope: !3, file: !3, line: 814, type: !73, scopeLine: 815, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!720 = !DILocation(line: 816, column: 2, scope: !719)
!721 = !DILocation(line: 817, column: 1, scope: !719)
!722 = distinct !DISubprogram(name: "__machine_emergency_restart", scope: !3, file: !3, line: 757, type: !723, scopeLine: 758, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !725)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !25}
!725 = !{!726}
!726 = !DILocalVariable(name: "emergency", arg: 1, scope: !722, file: !3, line: 757, type: !25)
!727 = !DILocation(line: 757, column: 45, scope: !722)
!728 = !DILocation(line: 759, column: 21, scope: !722)
!729 = !DILocation(line: 759, column: 19, scope: !722)
!730 = !DILocation(line: 760, column: 14, scope: !722)
!731 = !DILocation(line: 760, column: 2, scope: !722)
!732 = !DILocation(line: 761, column: 1, scope: !722)
!733 = distinct !DISubprogram(name: "machine_restart", scope: !3, file: !3, line: 819, type: !67, scopeLine: 820, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !734)
!734 = !{!735}
!735 = !DILocalVariable(name: "cmd", arg: 1, scope: !733, file: !3, line: 819, type: !69)
!736 = !DILocation(line: 819, column: 28, scope: !733)
!737 = !DILocation(line: 821, column: 14, scope: !733)
!738 = !DILocation(line: 821, column: 22, scope: !733)
!739 = !DILocation(line: 821, column: 2, scope: !733)
!740 = !DILocation(line: 822, column: 1, scope: !733)
!741 = distinct !DISubprogram(name: "machine_halt", scope: !3, file: !3, line: 824, type: !73, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!742 = !DILocation(line: 826, column: 14, scope: !741)
!743 = !DILocation(line: 826, column: 2, scope: !741)
!744 = !DILocation(line: 827, column: 1, scope: !741)
!745 = distinct !DISubprogram(name: "machine_crash_shutdown", scope: !3, file: !3, line: 830, type: !79, scopeLine: 831, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !746)
!746 = !{!747}
!747 = !DILocalVariable(name: "regs", arg: 1, scope: !745, file: !3, line: 830, type: !81)
!748 = !DILocation(line: 830, column: 45, scope: !745)
!749 = !DILocation(line: 832, column: 14, scope: !745)
!750 = !DILocation(line: 832, column: 29, scope: !745)
!751 = !DILocation(line: 832, column: 2, scope: !745)
!752 = !DILocation(line: 833, column: 1, scope: !745)
!753 = !DILocation(line: 891, column: 42, scope: !160)
!754 = !DILocation(line: 893, column: 2, scope: !160)
!755 = !DILocation(line: 893, column: 16, scope: !160)
!756 = !DILocation(line: 895, column: 2, scope: !160)
!757 = !DILocation(line: 895, column: 2, scope: !758)
!758 = distinct !DILexicalBlock(scope: !160, file: !3, line: 895, column: 2)
!759 = !DILocation(line: 902, column: 6, scope: !171)
!760 = !DILocation(line: 902, column: 6, scope: !175)
!761 = !DILocation(line: 902, column: 6, scope: !174)
!762 = !DILocation(line: 902, column: 6, scope: !763)
!763 = distinct !DILexicalBlock(scope: !174, file: !3, line: 902, column: 6)
!764 = !DILocation(line: 902, column: 6, scope: !765)
!765 = distinct !DILexicalBlock(scope: !174, file: !3, line: 902, column: 6)
!766 = !{i64 2156303776, i64 2156303805, i64 2156303851, i64 2156303909, i64 2156303963, i64 2156304017, i64 2156304072, i64 2156304103, i64 2156304411, i64 2156304417, i64 2156304464, i64 2156304487, i64 2156304513}
!767 = !DILocation(line: 902, column: 6, scope: !768)
!768 = distinct !DILexicalBlock(scope: !174, file: !3, line: 902, column: 6)
!769 = !DILocation(line: 902, column: 6, scope: !172)
!770 = !DILocation(line: 902, column: 6, scope: !160)
!771 = !DILocation(line: 903, column: 3, scope: !172)
!772 = !DILocation(line: 906, column: 17, scope: !178)
!773 = !DILocation(line: 906, column: 17, scope: !177)
!774 = !DILocation(line: 906, column: 17, scope: !180)
!775 = !DILocation(line: 906, column: 17, scope: !184)
!776 = !{i64 2156307418}
!777 = !DILocation(line: 906, column: 15, scope: !160)
!778 = !DILocation(line: 908, column: 23, scope: !160)
!779 = !DILocation(line: 908, column: 21, scope: !160)
!780 = !DILocation(line: 910, column: 37, scope: !160)
!781 = !DILocation(line: 910, column: 55, scope: !160)
!782 = !DILocation(line: 910, column: 2, scope: !160)
!783 = !DILocation(line: 912, column: 6, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 912, column: 6)
!785 = distinct !DILexicalBlock(scope: !160, file: !3, line: 912, column: 6)
!786 = !DILocation(line: 912, column: 6, scope: !785)
!787 = !DILocation(line: 912, column: 6, scope: !160)
!788 = !DILocation(line: 914, column: 3, scope: !785)
!789 = !DILocation(line: 919, column: 2, scope: !160)
!790 = !DILocation(line: 919, column: 2, scope: !791)
!791 = distinct !DILexicalBlock(scope: !160, file: !3, line: 919, column: 2)
!792 = !DILocation(line: 919, column: 2, scope: !793)
!793 = distinct !DILexicalBlock(scope: !791, file: !3, line: 919, column: 2)
!794 = !{i64 2156308720}
!795 = !DILocation(line: 921, column: 2, scope: !160)
!796 = !DILocation(line: 924, column: 2, scope: !160)
!797 = !DILocation(line: 924, column: 2, scope: !798)
!798 = distinct !DILexicalBlock(scope: !160, file: !3, line: 924, column: 2)
!799 = !DILocation(line: 924, column: 2, scope: !800)
!800 = distinct !DILexicalBlock(scope: !798, file: !3, line: 924, column: 2)
!801 = !DILocation(line: 924, column: 2, scope: !802)
!802 = distinct !DILexicalBlock(scope: !798, file: !3, line: 924, column: 2)
!803 = !DILocation(line: 926, column: 8, scope: !160)
!804 = !DILocation(line: 927, column: 2, scope: !160)
!805 = !DILocation(line: 927, column: 10, scope: !160)
!806 = !DILocation(line: 927, column: 46, scope: !160)
!807 = !DILocation(line: 927, column: 51, scope: !160)
!808 = !DILocation(line: 927, column: 54, scope: !160)
!809 = !DILocation(line: 0, scope: !160)
!810 = !DILocation(line: 928, column: 3, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 928, column: 3)
!812 = distinct !DILexicalBlock(scope: !813, file: !3, line: 928, column: 3)
!813 = distinct !DILexicalBlock(scope: !814, file: !3, line: 928, column: 3)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 928, column: 3)
!815 = distinct !DILexicalBlock(scope: !160, file: !3, line: 927, column: 61)
!816 = !DILocation(line: 929, column: 8, scope: !815)
!817 = distinct !{!817, !804, !818, !644, !645}
!818 = !DILocation(line: 930, column: 2, scope: !160)
!819 = !DILocation(line: 937, column: 1, scope: !160)
!820 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !821, file: !821, line: 313, type: !822, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !824)
!821 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!822 = !DISubroutineType(types: !823)
!823 = !{null, !203}
!824 = !{!825}
!825 = !DILocalVariable(name: "op", arg: 1, scope: !820, file: !821, line: 313, type: !203)
!826 = !DILocation(line: 313, column: 66, scope: !820)
!827 = !DILocation(line: 313, column: 72, scope: !820)
!828 = distinct !DISubprogram(name: "atomic_set", scope: !829, file: !829, line: 65, type: !830, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !833)
!829 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!830 = !DISubroutineType(types: !831)
!831 = !{null, !832, !25}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!833 = !{!834, !835}
!834 = !DILocalVariable(name: "v", arg: 1, scope: !828, file: !829, line: 65, type: !832)
!835 = !DILocalVariable(name: "i", arg: 2, scope: !828, file: !829, line: 65, type: !25)
!836 = !DILocation(line: 65, column: 22, scope: !828)
!837 = !DILocation(line: 65, column: 29, scope: !828)
!838 = !DILocation(line: 67, column: 26, scope: !828)
!839 = !DILocation(line: 67, column: 2, scope: !828)
!840 = !DILocation(line: 68, column: 17, scope: !828)
!841 = !DILocation(line: 68, column: 20, scope: !828)
!842 = !DILocation(line: 68, column: 2, scope: !828)
!843 = !DILocation(line: 69, column: 1, scope: !828)
!844 = distinct !DISubprogram(name: "num_online_cpus", scope: !845, file: !845, line: 1072, type: !846, scopeLine: 1073, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!845 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!846 = !DISubroutineType(types: !847)
!847 = !{!7}
!848 = !DILocation(line: 1074, column: 9, scope: !844)
!849 = !DILocation(line: 1074, column: 2, scope: !844)
!850 = distinct !DISubprogram(name: "crash_nmi_callback", scope: !3, file: !3, line: 846, type: !198, scopeLine: 847, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !851)
!851 = !{!852, !853, !854, !855, !857, !859}
!852 = !DILocalVariable(name: "val", arg: 1, scope: !850, file: !3, line: 846, type: !7)
!853 = !DILocalVariable(name: "regs", arg: 2, scope: !850, file: !3, line: 846, type: !81)
!854 = !DILocalVariable(name: "cpu", scope: !850, file: !3, line: 848, type: !25)
!855 = !DILocalVariable(name: "pscr_ret__", scope: !856, file: !3, line: 850, type: !25)
!856 = distinct !DILexicalBlock(scope: !850, file: !3, line: 850, column: 8)
!857 = !DILocalVariable(name: "__vpp_verify", scope: !858, file: !3, line: 850, type: !181)
!858 = distinct !DILexicalBlock(scope: !856, file: !3, line: 850, column: 8)
!859 = !DILocalVariable(name: "pfo_val__", scope: !860, file: !3, line: 850, type: !185)
!860 = distinct !DILexicalBlock(scope: !856, file: !3, line: 850, column: 8)
!861 = !DILocation(line: 846, column: 44, scope: !850)
!862 = !DILocation(line: 846, column: 65, scope: !850)
!863 = !DILocation(line: 848, column: 2, scope: !850)
!864 = !DILocation(line: 848, column: 6, scope: !850)
!865 = !DILocation(line: 850, column: 8, scope: !856)
!866 = !DILocation(line: 850, column: 8, scope: !858)
!867 = !DILocation(line: 850, column: 8, scope: !860)
!868 = !{i64 2156302298}
!869 = !DILocation(line: 850, column: 8, scope: !850)
!870 = !DILocation(line: 850, column: 6, scope: !850)
!871 = !DILocation(line: 857, column: 6, scope: !872)
!872 = distinct !DILexicalBlock(scope: !850, file: !3, line: 857, column: 6)
!873 = !DILocation(line: 857, column: 13, scope: !872)
!874 = !DILocation(line: 857, column: 10, scope: !872)
!875 = !DILocation(line: 857, column: 6, scope: !850)
!876 = !DILocation(line: 877, column: 1, scope: !850)
!877 = !DILocation(line: 858, column: 3, scope: !872)
!878 = !DILocation(line: 859, column: 2, scope: !850)
!879 = !DILocation(line: 859, column: 2, scope: !880)
!880 = distinct !DILexicalBlock(scope: !850, file: !3, line: 859, column: 2)
!881 = !DILocation(line: 861, column: 6, scope: !882)
!882 = distinct !DILexicalBlock(scope: !850, file: !3, line: 861, column: 6)
!883 = !DILocation(line: 861, column: 6, scope: !850)
!884 = !DILocation(line: 862, column: 3, scope: !882)
!885 = !DILocation(line: 862, column: 22, scope: !882)
!886 = !DILocation(line: 862, column: 27, scope: !882)
!887 = !DILocation(line: 868, column: 2, scope: !850)
!888 = !DILocation(line: 870, column: 2, scope: !850)
!889 = !DILocation(line: 872, column: 2, scope: !850)
!890 = !DILocation(line: 873, column: 2, scope: !850)
!891 = !DILocation(line: 874, column: 3, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !3, line: 873, column: 2)
!893 = distinct !DILexicalBlock(scope: !850, file: !3, line: 873, column: 2)
!894 = !DILocation(line: 873, column: 2, scope: !892)
!895 = distinct !{!895, !896, !897, !645}
!896 = !DILocation(line: 873, column: 2, scope: !893)
!897 = !DILocation(line: 874, column: 13, scope: !893)
!898 = !DISubprogram(name: "__register_nmi_handler", scope: !6, file: !6, line: 58, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!899 = !DISubroutineType(types: !900)
!900 = !{!25, !7, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!902 = !DISubprogram(name: "apic_send_IPI_allbutself", scope: !527, file: !527, line: 171, type: !397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!903 = distinct !DISubprogram(name: "atomic_read", scope: !829, file: !829, line: 30, type: !904, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !908)
!904 = !DISubroutineType(types: !905)
!905 = !{!25, !906}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!908 = !{!909}
!909 = !DILocalVariable(name: "v", arg: 1, scope: !903, file: !829, line: 30, type: !906)
!910 = !DILocation(line: 30, column: 29, scope: !903)
!911 = !DILocation(line: 32, column: 25, scope: !903)
!912 = !DILocation(line: 32, column: 2, scope: !903)
!913 = !DILocation(line: 33, column: 25, scope: !903)
!914 = !DILocation(line: 33, column: 9, scope: !903)
!915 = !DILocation(line: 33, column: 2, scope: !903)
!916 = !DISubprogram(name: "__const_udelay", scope: !917, file: !917, line: 11, type: !918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!917 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!918 = !DISubroutineType(types: !919)
!919 = !{null, !41}
!920 = distinct !DISubprogram(name: "run_crash_ipi_callback", scope: !3, file: !3, line: 950, type: !79, scopeLine: 951, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !921)
!921 = !{!922}
!922 = !DILocalVariable(name: "regs", arg: 1, scope: !920, file: !3, line: 950, type: !81)
!923 = !DILocation(line: 950, column: 45, scope: !920)
!924 = !DILocation(line: 952, column: 6, scope: !925)
!925 = distinct !DILexicalBlock(scope: !920, file: !3, line: 952, column: 6)
!926 = !DILocation(line: 952, column: 6, scope: !920)
!927 = !DILocation(line: 953, column: 25, scope: !925)
!928 = !DILocation(line: 953, column: 3, scope: !925)
!929 = !DILocation(line: 954, column: 1, scope: !920)
!930 = distinct !DISubprogram(name: "nmi_panic_self_stop", scope: !3, file: !3, line: 957, type: !79, scopeLine: 958, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !931)
!931 = !{!932}
!932 = !DILocalVariable(name: "regs", arg: 1, scope: !930, file: !3, line: 957, type: !81)
!933 = !DILocation(line: 957, column: 53, scope: !930)
!934 = !DILocation(line: 959, column: 2, scope: !930)
!935 = !DILocation(line: 961, column: 26, scope: !936)
!936 = distinct !DILexicalBlock(scope: !930, file: !3, line: 959, column: 12)
!937 = !DILocation(line: 961, column: 3, scope: !936)
!938 = !DILocation(line: 962, column: 3, scope: !936)
!939 = distinct !{!939, !934, !940, !645}
!940 = !DILocation(line: 963, column: 2, scope: !930)
!941 = distinct !DISubprogram(name: "cpu_relax", scope: !942, file: !942, line: 16, type: !73, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!942 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!943 = !DILocation(line: 18, column: 2, scope: !941)
!944 = !DILocation(line: 19, column: 1, scope: !941)
!945 = distinct !DISubprogram(name: "native_irq_disable", scope: !422, file: !422, line: 35, type: !73, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!946 = !DILocation(line: 37, column: 2, scope: !945)
!947 = !{i64 1950022}
!948 = !DILocation(line: 38, column: 1, scope: !945)
!949 = !DISubprogram(name: "_raw_spin_lock", scope: !950, file: !950, line: 22, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!950 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!951 = !DISubroutineType(types: !952)
!952 = !{null, !953}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !439, line: 23, baseType: !438)
!955 = !DISubprogram(name: "_raw_spin_unlock", scope: !950, file: !950, line: 39, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!956 = !DISubprogram(name: "dmi_check_system", scope: !957, file: !957, line: 100, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!957 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!958 = !DISubprogram(name: "efi_reboot_required", scope: !959, file: !959, line: 377, type: !960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DIFile(filename: "./arch/x86/include/asm/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4b467ae7390bce7623c86c5f172fa43")
!960 = !DISubroutineType(types: !961)
!961 = !{!53}
!962 = !DISubprogram(name: "efi_runtime_disabled", scope: !963, file: !963, line: 1129, type: !960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!963 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!964 = distinct !DISubprogram(name: "set_kbd_reboot", scope: !3, file: !3, line: 149, type: !332, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !965)
!965 = !{!966}
!966 = !DILocalVariable(name: "d", arg: 1, scope: !964, file: !3, line: 149, type: !334)
!967 = !DILocation(line: 149, column: 62, scope: !964)
!968 = !DILocation(line: 151, column: 6, scope: !969)
!969 = distinct !DILexicalBlock(scope: !964, file: !3, line: 151, column: 6)
!970 = !DILocation(line: 151, column: 18, scope: !969)
!971 = !DILocation(line: 151, column: 6, scope: !964)
!972 = !DILocation(line: 152, column: 15, scope: !973)
!973 = distinct !DILexicalBlock(scope: !969, file: !3, line: 151, column: 31)
!974 = !DILocation(line: 153, column: 3, scope: !975)
!975 = distinct !DILexicalBlock(scope: !973, file: !3, line: 153, column: 3)
!976 = !DILocation(line: 153, column: 3, scope: !977)
!977 = distinct !DILexicalBlock(scope: !975, file: !3, line: 153, column: 3)
!978 = !DILocation(line: 155, column: 2, scope: !973)
!979 = !DILocation(line: 156, column: 2, scope: !964)
!980 = distinct !DISubprogram(name: "set_efi_reboot", scope: !3, file: !3, line: 87, type: !332, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !981)
!981 = !{!982}
!982 = !DILocalVariable(name: "d", arg: 1, scope: !980, file: !3, line: 87, type: !334)
!983 = !DILocation(line: 87, column: 62, scope: !980)
!984 = !DILocation(line: 89, column: 6, scope: !985)
!985 = distinct !DILexicalBlock(scope: !980, file: !3, line: 89, column: 6)
!986 = !DILocation(line: 89, column: 18, scope: !985)
!987 = !DILocation(line: 89, column: 30, scope: !985)
!988 = !DILocation(line: 89, column: 34, scope: !985)
!989 = !DILocation(line: 89, column: 6, scope: !980)
!990 = !DILocation(line: 90, column: 15, scope: !991)
!991 = distinct !DILexicalBlock(scope: !985, file: !3, line: 89, column: 58)
!992 = !DILocation(line: 91, column: 3, scope: !993)
!993 = distinct !DILexicalBlock(scope: !991, file: !3, line: 91, column: 3)
!994 = !DILocation(line: 91, column: 3, scope: !995)
!995 = distinct !DILexicalBlock(scope: !993, file: !3, line: 91, column: 3)
!996 = !DILocation(line: 92, column: 2, scope: !991)
!997 = !DILocation(line: 93, column: 2, scope: !980)
!998 = distinct !DISubprogram(name: "set_pci_reboot", scope: !3, file: !3, line: 139, type: !332, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !999)
!999 = !{!1000}
!1000 = !DILocalVariable(name: "d", arg: 1, scope: !998, file: !3, line: 139, type: !334)
!1001 = !DILocation(line: 139, column: 62, scope: !998)
!1002 = !DILocation(line: 141, column: 6, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !998, file: !3, line: 141, column: 6)
!1004 = !DILocation(line: 141, column: 18, scope: !1003)
!1005 = !DILocation(line: 141, column: 6, scope: !998)
!1006 = !DILocation(line: 142, column: 15, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 141, column: 37)
!1008 = !DILocation(line: 143, column: 3, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 143, column: 3)
!1010 = !DILocation(line: 143, column: 3, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 143, column: 3)
!1012 = !DILocation(line: 145, column: 2, scope: !1007)
!1013 = !DILocation(line: 146, column: 2, scope: !998)
!1014 = distinct !DISubprogram(name: "set_bios_reboot", scope: !3, file: !3, line: 73, type: !332, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1015)
!1015 = !{!1016}
!1016 = !DILocalVariable(name: "d", arg: 1, scope: !1014, file: !3, line: 73, type: !334)
!1017 = !DILocation(line: 73, column: 63, scope: !1014)
!1018 = !DILocation(line: 75, column: 6, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 75, column: 6)
!1020 = !DILocation(line: 75, column: 18, scope: !1019)
!1021 = !DILocation(line: 75, column: 6, scope: !1014)
!1022 = !DILocation(line: 76, column: 15, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 75, column: 32)
!1024 = !DILocation(line: 77, column: 3, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 77, column: 3)
!1026 = !DILocation(line: 77, column: 3, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 77, column: 3)
!1028 = !DILocation(line: 79, column: 2, scope: !1023)
!1029 = !DILocation(line: 80, column: 2, scope: !1014)
!1030 = distinct !DISubprogram(name: "set_acpi_reboot", scope: !3, file: !3, line: 59, type: !332, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1031)
!1031 = !{!1032}
!1032 = !DILocalVariable(name: "d", arg: 1, scope: !1030, file: !3, line: 59, type: !334)
!1033 = !DILocation(line: 59, column: 63, scope: !1030)
!1034 = !DILocation(line: 61, column: 6, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 61, column: 6)
!1036 = !DILocation(line: 61, column: 18, scope: !1035)
!1037 = !DILocation(line: 61, column: 6, scope: !1030)
!1038 = !DILocation(line: 62, column: 15, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 61, column: 32)
!1040 = !DILocation(line: 63, column: 3, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 63, column: 3)
!1042 = !DILocation(line: 63, column: 3, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 63, column: 3)
!1044 = !DILocation(line: 65, column: 2, scope: !1039)
!1045 = !DILocation(line: 66, column: 2, scope: !1030)
!1046 = !DISubprogram(name: "_printk", scope: !1047, file: !1047, line: 153, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1047 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!25, !203, null}
!1050 = !DISubprogram(name: "stop_this_cpu", scope: !1051, file: !1051, line: 721, type: !1052, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1051 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1052 = !DISubroutineType(types: !1053)
!1053 = !{null, !39}
!1054 = !DISubprogram(name: "kernel_can_power_off", scope: !15, file: !15, line: 171, type: !960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1055 = !DISubprogram(name: "do_kernel_power_off", scope: !15, file: !15, line: 66, type: !73, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1056 = distinct !DISubprogram(name: "emergency_reboot_disable_virtualization", scope: !3, file: !3, line: 601, type: !73, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1057 = !DILocation(line: 601, column: 61, scope: !1056)
!1058 = distinct !DISubprogram(name: "efi_capsule_pending", scope: !963, file: !963, line: 1125, type: !1059, scopeLine: 1125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1061)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!53, !40}
!1061 = !{!1062}
!1062 = !DILocalVariable(name: "reset_type", arg: 1, scope: !1058, file: !963, line: 1125, type: !40)
!1063 = !DILocation(line: 1125, column: 45, scope: !1058)
!1064 = !DILocation(line: 1125, column: 59, scope: !1058)
!1065 = !DISubprogram(name: "acpi_reboot", scope: !1066, file: !1066, line: 6, type: !73, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1066 = !DIFile(filename: "./include/acpi/reboot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a475e65262d638bdbabce719ca9a181")
!1067 = distinct !DISubprogram(name: "kb_wait", scope: !3, file: !3, line: 519, type: !73, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1068)
!1068 = !{!1069}
!1069 = !DILocalVariable(name: "i", scope: !1067, file: !3, line: 521, type: !25)
!1070 = !DILocation(line: 521, column: 2, scope: !1067)
!1071 = !DILocation(line: 521, column: 6, scope: !1067)
!1072 = !DILocation(line: 523, column: 9, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 523, column: 2)
!1074 = !DILocation(line: 523, column: 7, scope: !1073)
!1075 = !DILocation(line: 523, column: 14, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 523, column: 2)
!1077 = !DILocation(line: 523, column: 16, scope: !1076)
!1078 = !DILocation(line: 523, column: 2, scope: !1073)
!1079 = !DILocation(line: 524, column: 8, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 524, column: 7)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 523, column: 32)
!1082 = !DILocation(line: 524, column: 18, scope: !1080)
!1083 = !DILocation(line: 524, column: 26, scope: !1080)
!1084 = !DILocation(line: 524, column: 7, scope: !1081)
!1085 = !DILocation(line: 525, column: 4, scope: !1080)
!1086 = !DILocation(line: 526, column: 3, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 526, column: 3)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 526, column: 3)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 526, column: 3)
!1090 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 526, column: 3)
!1091 = !DILocation(line: 527, column: 2, scope: !1081)
!1092 = !DILocation(line: 523, column: 28, scope: !1076)
!1093 = !DILocation(line: 523, column: 2, scope: !1076)
!1094 = distinct !{!1094, !1078, !1095, !644, !645}
!1095 = !DILocation(line: 527, column: 2, scope: !1073)
!1096 = !DILocation(line: 528, column: 1, scope: !1067)
!1097 = distinct !DISubprogram(name: "__outb", scope: !1098, file: !1098, line: 22, type: !1099, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1101)
!1098 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !454, !106}
!1101 = !{!1102, !1103}
!1102 = !DILocalVariable(name: "value", arg: 1, scope: !1097, file: !1098, line: 22, type: !454)
!1103 = !DILocalVariable(name: "port", arg: 2, scope: !1097, file: !1098, line: 22, type: !106)
!1104 = !DILocation(line: 22, column: 1, scope: !1097)
!1105 = !{i64 2154351453}
!1106 = !DISubprogram(name: "efi_reboot", scope: !963, file: !963, line: 884, type: !1107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{null, !24, !203}
!1109 = distinct !DISubprogram(name: "__inb", scope: !1098, file: !1098, line: 22, type: !1110, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1112)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!454, !106}
!1112 = !{!1113, !1114}
!1113 = !DILocalVariable(name: "port", arg: 1, scope: !1109, file: !1098, line: 22, type: !106)
!1114 = !DILocalVariable(name: "value", scope: !1109, file: !1098, line: 22, type: !454)
!1115 = !DILocation(line: 22, column: 1, scope: !1109)
!1116 = !{i64 2154351649}
!1117 = !DISubprogram(name: "idt_invalidate", scope: !1118, file: !1118, line: 449, type: !73, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1118 = !DIFile(filename: "./arch/x86/include/asm/desc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ce8a8e19f799ab03a132d4ddc6cfe6d")
!1119 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !1120, file: !1120, line: 80, type: !1121, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1130)
!1120 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !1123, !1126}
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !54, line: 61, baseType: !1127)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1128, line: 72, baseType: !1129)
!1128 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1128, line: 16, baseType: !41)
!1130 = !{!1131, !1132}
!1131 = !DILocalVariable(name: "v", arg: 1, scope: !1119, file: !1120, line: 80, type: !1123)
!1132 = !DILocalVariable(name: "size", arg: 2, scope: !1119, file: !1120, line: 80, type: !1126)
!1133 = !DILocation(line: 80, column: 74, scope: !1119)
!1134 = !DILocation(line: 80, column: 84, scope: !1119)
!1135 = !DILocation(line: 82, column: 20, scope: !1119)
!1136 = !DILocation(line: 82, column: 23, scope: !1119)
!1137 = !DILocation(line: 82, column: 2, scope: !1119)
!1138 = !DILocation(line: 83, column: 2, scope: !1119)
!1139 = !DILocation(line: 84, column: 1, scope: !1119)
!1140 = distinct !DISubprogram(name: "raw_atomic_set", scope: !1141, file: !1141, line: 488, type: !830, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1142)
!1141 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!1142 = !{!1143, !1144}
!1143 = !DILocalVariable(name: "v", arg: 1, scope: !1140, file: !1141, line: 488, type: !832)
!1144 = !DILocalVariable(name: "i", arg: 2, scope: !1140, file: !1141, line: 488, type: !25)
!1145 = !DILocation(line: 488, column: 26, scope: !1140)
!1146 = !DILocation(line: 488, column: 33, scope: !1140)
!1147 = !DILocation(line: 490, column: 18, scope: !1140)
!1148 = !DILocation(line: 490, column: 21, scope: !1140)
!1149 = !DILocation(line: 490, column: 2, scope: !1140)
!1150 = !DILocation(line: 491, column: 1, scope: !1140)
!1151 = distinct !DISubprogram(name: "kasan_check_write", scope: !1152, file: !1152, line: 44, type: !1153, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1155)
!1152 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!53, !1123, !7}
!1155 = !{!1156, !1157}
!1156 = !DILocalVariable(name: "p", arg: 1, scope: !1151, file: !1152, line: 44, type: !1123)
!1157 = !DILocalVariable(name: "size", arg: 2, scope: !1151, file: !1152, line: 44, type: !7)
!1158 = !DILocation(line: 44, column: 59, scope: !1151)
!1159 = !DILocation(line: 44, column: 75, scope: !1151)
!1160 = !DILocation(line: 46, column: 2, scope: !1151)
!1161 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1162, file: !1162, line: 229, type: !1163, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1165)
!1162 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1163 = !DISubroutineType(types: !1164)
!1164 = !{null, !1123, !1126, !25}
!1165 = !{!1166, !1167, !1168}
!1166 = !DILocalVariable(name: "ptr", arg: 1, scope: !1161, file: !1162, line: 229, type: !1123)
!1167 = !DILocalVariable(name: "size", arg: 2, scope: !1161, file: !1162, line: 229, type: !1126)
!1168 = !DILocalVariable(name: "type", arg: 3, scope: !1161, file: !1162, line: 230, type: !25)
!1169 = !DILocation(line: 229, column: 60, scope: !1161)
!1170 = !DILocation(line: 229, column: 72, scope: !1161)
!1171 = !DILocation(line: 230, column: 15, scope: !1161)
!1172 = !DILocation(line: 230, column: 23, scope: !1161)
!1173 = distinct !DISubprogram(name: "arch_atomic_set", scope: !1174, file: !1174, line: 26, type: !830, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1175)
!1174 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!1175 = !{!1176, !1177}
!1176 = !DILocalVariable(name: "v", arg: 1, scope: !1173, file: !1174, line: 26, type: !832)
!1177 = !DILocalVariable(name: "i", arg: 2, scope: !1173, file: !1174, line: 26, type: !25)
!1178 = !DILocation(line: 26, column: 55, scope: !1173)
!1179 = !DILocation(line: 26, column: 62, scope: !1173)
!1180 = !DILocation(line: 28, column: 2, scope: !1173)
!1181 = !DILocation(line: 28, column: 2, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1173, file: !1174, line: 28, column: 2)
!1183 = !DILocation(line: 29, column: 1, scope: !1173)
!1184 = distinct !DISubprogram(name: "raw_atomic_read", scope: !1141, file: !1141, line: 442, type: !904, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1185)
!1185 = !{!1186}
!1186 = !DILocalVariable(name: "v", arg: 1, scope: !1184, file: !1141, line: 442, type: !906)
!1187 = !DILocation(line: 442, column: 33, scope: !1184)
!1188 = !DILocation(line: 444, column: 26, scope: !1184)
!1189 = !DILocation(line: 444, column: 9, scope: !1184)
!1190 = !DILocation(line: 444, column: 2, scope: !1184)
!1191 = distinct !DISubprogram(name: "arch_atomic_read", scope: !1174, file: !1174, line: 17, type: !904, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1192)
!1192 = !{!1193}
!1193 = !DILocalVariable(name: "v", arg: 1, scope: !1191, file: !1174, line: 17, type: !906)
!1194 = !DILocation(line: 17, column: 61, scope: !1191)
!1195 = !DILocation(line: 23, column: 9, scope: !1191)
!1196 = !DILocation(line: 23, column: 2, scope: !1191)
!1197 = distinct !DISubprogram(name: "cpu_emergency_disable_virtualization", scope: !63, file: !63, line: 34, type: !73, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1198 = !DILocation(line: 34, column: 64, scope: !1197)
!1199 = distinct !DISubprogram(name: "atomic_dec", scope: !829, file: !829, line: 590, type: !1200, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1202)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !832}
!1202 = !{!1203}
!1203 = !DILocalVariable(name: "v", arg: 1, scope: !1199, file: !829, line: 590, type: !832)
!1204 = !DILocation(line: 590, column: 22, scope: !1199)
!1205 = !DILocation(line: 592, column: 31, scope: !1199)
!1206 = !DILocation(line: 592, column: 2, scope: !1199)
!1207 = !DILocation(line: 593, column: 17, scope: !1199)
!1208 = !DILocation(line: 593, column: 2, scope: !1199)
!1209 = !DILocation(line: 594, column: 1, scope: !1199)
!1210 = distinct !DISubprogram(name: "halt", scope: !422, file: !422, line: 93, type: !73, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1211 = !DILocation(line: 95, column: 2, scope: !1210)
!1212 = !DILocation(line: 96, column: 1, scope: !1210)
!1213 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !1120, file: !1120, line: 94, type: !1121, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1214)
!1214 = !{!1215, !1216}
!1215 = !DILocalVariable(name: "v", arg: 1, scope: !1213, file: !1120, line: 94, type: !1123)
!1216 = !DILocalVariable(name: "size", arg: 2, scope: !1213, file: !1120, line: 94, type: !1126)
!1217 = !DILocation(line: 94, column: 79, scope: !1213)
!1218 = !DILocation(line: 94, column: 89, scope: !1213)
!1219 = !DILocation(line: 96, column: 20, scope: !1213)
!1220 = !DILocation(line: 96, column: 23, scope: !1213)
!1221 = !DILocation(line: 96, column: 2, scope: !1213)
!1222 = !DILocation(line: 97, column: 2, scope: !1213)
!1223 = !DILocation(line: 98, column: 1, scope: !1213)
!1224 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !1141, file: !1141, line: 1194, type: !1200, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1225)
!1225 = !{!1226}
!1226 = !DILocalVariable(name: "v", arg: 1, scope: !1224, file: !1141, line: 1194, type: !832)
!1227 = !DILocation(line: 1194, column: 26, scope: !1224)
!1228 = !DILocation(line: 1197, column: 18, scope: !1224)
!1229 = !DILocation(line: 1197, column: 2, scope: !1224)
!1230 = !DILocation(line: 1201, column: 1, scope: !1224)
!1231 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !1174, file: !1174, line: 58, type: !1200, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1232)
!1232 = !{!1233}
!1233 = !DILocalVariable(name: "v", arg: 1, scope: !1231, file: !1174, line: 58, type: !832)
!1234 = !DILocation(line: 58, column: 55, scope: !1231)
!1235 = !DILocation(line: 61, column: 16, scope: !1231)
!1236 = !DILocation(line: 61, column: 19, scope: !1231)
!1237 = !DILocation(line: 60, column: 2, scope: !1231)
!1238 = !{i64 2148490731, i64 2148490770, i64 2148490791, i64 2148490828, i64 2148490851, i64 2148490721}
!1239 = !DILocation(line: 62, column: 1, scope: !1231)
!1240 = distinct !DISubprogram(name: "native_halt", scope: !422, file: !422, line: 51, type: !73, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1241 = !DILocation(line: 53, column: 2, scope: !1240)
!1242 = !DILocation(line: 54, column: 2, scope: !1240)
!1243 = !{i64 1950358}
!1244 = !DILocation(line: 55, column: 1, scope: !1240)
!1245 = distinct !DISubprogram(name: "mds_idle_clear_cpu_buffers", scope: !385, file: !385, line: 627, type: !73, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1246)
!1246 = !{!1247}
!1247 = !DILocalVariable(name: "branch", scope: !1248, file: !385, line: 629, type: !53)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !385, line: 629, column: 6)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !385, line: 629, column: 6)
!1250 = !DILocation(line: 629, column: 6, scope: !1248)
!1251 = !DILocation(line: 629, column: 6, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !385, line: 629, column: 6)
!1253 = distinct !DILexicalBlock(scope: !1248, file: !385, line: 629, column: 6)
!1254 = !DILocation(line: 629, column: 6, scope: !1253)
!1255 = !DILocation(line: 629, column: 6, scope: !1249)
!1256 = !DILocation(line: 629, column: 6, scope: !1245)
!1257 = !DILocation(line: 630, column: 3, scope: !1249)
!1258 = !DILocation(line: 631, column: 1, scope: !1245)
!1259 = distinct !DISubprogram(name: "arch_static_branch_jump", scope: !1260, file: !1260, line: 53, type: !1261, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1287)
!1260 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!53, !1263, !1286}
!1263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1264)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1266, line: 85, size: 128, elements: !1267)
!1266 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1267 = !{!1268, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1265, file: !1266, line: 86, baseType: !209, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, scope: !1265, file: !1266, line: 101, baseType: !1270, size: 64, offset: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1265, file: !1266, line: 101, size: 64, elements: !1271)
!1271 = !{!1272, !1273, !1283}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1270, file: !1266, line: 102, baseType: !41, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1270, file: !1266, line: 103, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1266, line: 117, size: 128, elements: !1276)
!1276 = !{!1277, !1280, !1281}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1275, file: !1266, line: 118, baseType: !1278, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !107, line: 20, baseType: !1279)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !109, line: 26, baseType: !25)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1275, file: !1266, line: 119, baseType: !1278, size: 32, offset: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1275, file: !1266, line: 120, baseType: !1282, size: 64, offset: 64)
!1282 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1270, file: !1266, line: 104, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1266, line: 104, flags: DIFlagFwdDecl)
!1286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!1287 = !{!1288, !1289, !1290}
!1288 = !DILocalVariable(name: "key", arg: 1, scope: !1259, file: !1260, line: 53, type: !1263)
!1289 = !DILocalVariable(name: "branch", arg: 2, scope: !1259, file: !1260, line: 53, type: !1286)
!1290 = !DILabel(scope: !1259, name: "l_yes", file: !1260, line: 61)
!1291 = !DILocation(line: 53, column: 79, scope: !1259)
!1292 = !DILocation(line: 53, column: 95, scope: !1259)
!1293 = !DILocation(line: 58, column: 13, scope: !1259)
!1294 = !DILocation(line: 58, column: 24, scope: !1259)
!1295 = !DILocation(line: 55, column: 2, scope: !1259)
!1296 = !{i64 963703, i64 963726, i64 2148448473, i64 2148448494, i64 2148448520, i64 2148448553, i64 2148448587, i64 2148448611}
!1297 = !DILocation(line: 60, column: 2, scope: !1259)
!1298 = !DILocation(line: 61, column: 1, scope: !1259)
!1299 = !DILocation(line: 62, column: 2, scope: !1259)
!1300 = !DILocation(line: 63, column: 1, scope: !1259)
!1301 = !DILocation(line: 619, column: 2, scope: !384)
!1302 = !{i64 1813835}
!1303 = !DILocation(line: 620, column: 1, scope: !384)
!1304 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1120, file: !1120, line: 66, type: !1121, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1305)
!1305 = !{!1306, !1307}
!1306 = !DILocalVariable(name: "v", arg: 1, scope: !1304, file: !1120, line: 66, type: !1123)
!1307 = !DILocalVariable(name: "size", arg: 2, scope: !1304, file: !1120, line: 66, type: !1126)
!1308 = !DILocation(line: 66, column: 73, scope: !1304)
!1309 = !DILocation(line: 66, column: 83, scope: !1304)
!1310 = !DILocation(line: 68, column: 19, scope: !1304)
!1311 = !DILocation(line: 68, column: 22, scope: !1304)
!1312 = !DILocation(line: 68, column: 2, scope: !1304)
!1313 = !DILocation(line: 69, column: 2, scope: !1304)
!1314 = !DILocation(line: 70, column: 1, scope: !1304)
!1315 = distinct !DISubprogram(name: "kasan_check_read", scope: !1152, file: !1152, line: 40, type: !1153, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1316)
!1316 = !{!1317, !1318}
!1317 = !DILocalVariable(name: "p", arg: 1, scope: !1315, file: !1152, line: 40, type: !1123)
!1318 = !DILocalVariable(name: "size", arg: 2, scope: !1315, file: !1152, line: 40, type: !7)
!1319 = !DILocation(line: 40, column: 58, scope: !1315)
!1320 = !DILocation(line: 40, column: 74, scope: !1315)
!1321 = !DILocation(line: 42, column: 2, scope: !1315)
!1322 = distinct !DISubprogram(name: "rep_nop", scope: !942, file: !942, line: 11, type: !73, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1323 = !DILocation(line: 13, column: 2, scope: !1322)
!1324 = !{i64 1991682}
!1325 = !DILocation(line: 14, column: 1, scope: !1322)
