; ModuleID = 'arch/x86/kernel/early-quirks.c'
source_filename = "arch/x86/kernel/early-quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_intel_graphics_stolen_res: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad intel_graphics_stolen_res ; .previous"

%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.chipset = type { i32, i32, i32, i32, i32, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.intel_early_ops = type { ptr, ptr }

@intel_graphics_stolen_res = hidden global %struct.resource { i64 0, i64 -1, ptr null, i64 512, i64 0, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 8, !dbg !0
@__UNIQUE_ID___addressable_intel_graphics_stolen_res305 = internal global ptr @intel_graphics_stolen_res, section ".discard.addressable", align 8, !dbg !50
@early_qrk = internal global [12 x %struct.chipset] [%struct.chipset { i32 4318, i32 -1, i32 1540, i32 -1, i32 1, ptr @nvidia_bugs }, %struct.chipset { i32 4358, i32 -1, i32 1540, i32 -1, i32 1, ptr @via_bugs }, %struct.chipset { i32 4130, i32 4352, i32 1536, i32 -1, i32 0, ptr @fix_hypertransport_config }, %struct.chipset { i32 4098, i32 17266, i32 3077, i32 -1, i32 0, ptr @ati_bugs }, %struct.chipset { i32 4098, i32 17285, i32 3077, i32 -1, i32 0, ptr @ati_bugs_contd }, %struct.chipset { i32 32902, i32 13315, i32 1536, i32 6, i32 0, ptr @intel_remapping_check }, %struct.chipset { i32 32902, i32 13317, i32 1536, i32 6, i32 0, ptr @intel_remapping_check }, %struct.chipset { i32 32902, i32 13318, i32 1536, i32 6, i32 0, ptr @intel_remapping_check }, %struct.chipset { i32 32902, i32 -1, i32 768, i32 -1, i32 0, ptr @intel_graphics_quirks }, %struct.chipset { i32 32902, i32 3840, i32 1536, i32 -1, i32 0, ptr @force_disable_hpet }, %struct.chipset { i32 5348, i32 17201, i32 640, i32 -1, i32 0, ptr @apple_airport_reset }, %struct.chipset zeroinitializer], section ".init.data", align 16, !dbg !52
@acpi_use_timer_override = external dso_local global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"HPET\00", align 1, !dbg !70
@acpi_skip_timer_override = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"\016Nvidia board detected. Ignoring ACPI timer override.\0A\00", align 1, !dbg !76
@.str.2 = private unnamed_addr constant [56 x i8] c"\016If you got timer trouble try acpi_use_timer_override\0A\00", align 1, !dbg !81
@.str.3 = private unnamed_addr constant [59 x i8] c"\016Detected use of extended apic ids on hypertransport bus\0A\00", align 1, !dbg !83
@.str.4 = private unnamed_addr constant [61 x i8] c"\016Enabling hypertransport extended apic interrupt broadcast\0A\00", align 1, !dbg !88
@.str.5 = private unnamed_addr constant [58 x i8] c"\016Note this is a bios bug, please contact your hw vendor\0A\00", align 1, !dbg !93
@.str.6 = private unnamed_addr constant [23 x i8] c"\016SB4X0 revision 0x%x\0A\00", align 1, !dbg !98
@.str.7 = private unnamed_addr constant [33 x i8] c"\016Ignoring ACPI timer override.\0A\00", align 1, !dbg !103
@acpi_fix_pin2_polarity = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"\016SB600 revision 0x%x\0A\00", align 1, !dbg !108
@intel_early_ids = internal constant [329 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 13687, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @i830_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 9570, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @i845_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 13698, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @i85x_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 13710, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @i85x_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 9586, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @i865_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 9602, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 9610, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 9618, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 10098, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 10146, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 10158, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3888, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3889, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3890, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3891, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 40961, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 40977, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 10610, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 10626, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 10642, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 10658, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 10674, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 10690, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 10706, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 10754, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 10770, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 10818, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 11778, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 11794, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 11810, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 11826, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 11842, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 11922, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 66, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 70, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen3_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 258, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 266, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 274, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 290, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 262, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 278, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 294, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 342, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 358, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 338, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 346, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 354, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 362, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 2562, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 2566, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 2570, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 2571, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 2574, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 1026, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 1030, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 1034, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 1035, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 1038, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3074, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3078, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3082, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3083, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3086, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3330, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3334, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3338, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3339, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3342, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 2578, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 2582, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 2586, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 2587, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 2590, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 1042, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 1046, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 1050, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 1051, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 1054, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3090, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3094, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3098, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3099, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3102, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3346, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3350, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3354, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3355, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3358, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 2594, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 2598, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 2602, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 2603, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 2606, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 1058, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 1062, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 1066, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 1067, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 1070, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3106, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3110, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3114, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3115, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3118, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3362, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3366, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3370, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3371, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 3374, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen6_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5638, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5643, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5646, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5634, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5642, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5645, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5654, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5659, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5662, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5650, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5658, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5661, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5670, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5675, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5678, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5666, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5674, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5677, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5686, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5691, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5694, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5682, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5690, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 5693, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen8_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 8880, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @chv_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 8881, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @chv_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 8882, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @chv_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 8883, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @chv_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6406, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6419, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6414, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6421, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6402, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6410, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6411, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6423, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6422, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6433, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6430, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6418, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6426, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6427, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6429, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6435, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6438, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6439, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6442, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6443, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6445, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6450, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6458, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6459, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6461, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 2692, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6788, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 6789, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 23172, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 23173, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22790, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22803, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22798, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22805, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22786, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22792, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22794, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22795, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22806, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22817, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22814, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22802, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22807, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22810, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22811, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22813, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22822, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22819, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22823, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22843, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 22812, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 34752, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16016, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16019, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16025, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16017, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16018, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16022, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16024, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16026, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16028, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16020, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16027, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16041, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16037, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16038, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16039, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16040, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16033, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16036, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16032, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16035, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 16034, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 34762, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39842, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39844, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39845, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39848, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39874, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39876, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39877, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39878, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39880, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39910, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39926, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39713, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39850, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39852, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39745, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39882, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39884, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 12676, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 12677, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 23108, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 23116, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 23124, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 23132, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 23104, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 23105, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 23106, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 23113, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 23114, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 23120, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 23121, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 23122, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 23129, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 23130, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen9_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 35408, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 35410, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 35411, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 35412, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 35414, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 35415, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 35416, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 35417, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 35418, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 35419, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 35420, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 35440, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 35441, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 35409, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 35421, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 17729, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 17745, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 17749, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 17751, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 17776, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 17777, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 20049, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 20053, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 20055, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 20065, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 20081, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39520, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39528, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39536, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39488, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39497, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39513, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39544, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39616, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39625, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39641, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 39672, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 19584, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 19594, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 19595, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 19596, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 19600, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 19610, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18048, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18050, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18056, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18058, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18059, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18064, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18066, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18067, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18080, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18081, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18082, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18083, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18086, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18088, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18090, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 17962, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 17958, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 17960, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18096, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18097, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18098, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18099, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18112, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18113, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18114, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18115, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18128, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18129, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 18130, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 42880, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 42881, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 42882, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 42883, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 42888, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 42889, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 42890, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 42891, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 42785, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 42913, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 42921, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 42784, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 42912, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }, %struct.pci_device_id { i32 32902, i32 42920, i32 -1, i32 -1, i32 196608, i32 16711680, i64 ptrtoint (ptr @gen11_early_ops to i64), i32 0 }], section ".init.rodata", align 16, !dbg !110
@i830_early_ops = internal constant %struct.intel_early_ops { ptr @i830_stolen_size, ptr @i830_stolen_base }, section ".init.rodata", align 8, !dbg !128
@i845_early_ops = internal constant %struct.intel_early_ops { ptr @i830_stolen_size, ptr @i845_stolen_base }, section ".init.rodata", align 8, !dbg !140
@i85x_early_ops = internal constant %struct.intel_early_ops { ptr @gen3_stolen_size, ptr @i85x_stolen_base }, section ".init.rodata", align 8, !dbg !147
@i865_early_ops = internal constant %struct.intel_early_ops { ptr @gen3_stolen_size, ptr @i865_stolen_base }, section ".init.rodata", align 8, !dbg !149
@gen3_early_ops = internal constant %struct.intel_early_ops { ptr @gen3_stolen_size, ptr @gen3_stolen_base }, section ".init.rodata", align 8, !dbg !151
@gen6_early_ops = internal constant %struct.intel_early_ops { ptr @gen6_stolen_size, ptr @gen3_stolen_base }, section ".init.rodata", align 8, !dbg !153
@gen8_early_ops = internal constant %struct.intel_early_ops { ptr @gen8_stolen_size, ptr @gen3_stolen_base }, section ".init.rodata", align 8, !dbg !155
@chv_early_ops = internal constant %struct.intel_early_ops { ptr @chv_stolen_size, ptr @gen3_stolen_base }, section ".init.rodata", align 8, !dbg !157
@gen9_early_ops = internal constant %struct.intel_early_ops { ptr @gen9_stolen_size, ptr @gen3_stolen_base }, section ".init.rodata", align 8, !dbg !159
@gen11_early_ops = internal constant %struct.intel_early_ops { ptr @gen9_stolen_size, ptr @gen11_stolen_base }, section ".init.rodata", align 8, !dbg !161
@.str.9 = private unnamed_addr constant [30 x i8] c"Unknown GMCH_CTRL value: %x!\0A\00", align 1, !dbg !130
@.str.10 = private unnamed_addr constant [31 x i8] c"arch/x86/kernel/early-quirks.c\00", align 1, !dbg !135
@.str.11 = private unnamed_addr constant [28 x i8] c"Unknown ESMRAMC value: %x!\0A\00", align 1, !dbg !142
@.str.12 = private unnamed_addr constant [42 x i8] c"\016Reserving Intel graphics memory at %pR\0A\00", align 1, !dbg !163
@e820_table = external dso_local global ptr, align 8
@boot_hpet_disable = external dso_local global i8, align 1
@.str.13 = private unnamed_addr constant [79 x i8] c"\016x86/hpet: Will disable the HPET for this platform because it's not reliable\0A\00", align 1, !dbg !168
@x86_apple_machine = external dso_local global i8, align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"\013pci 0000:%02x:%02x.%d: Cannot power up Apple AirPort card\0A\00", align 1, !dbg !173
@.str.15 = private unnamed_addr constant [58 x i8] c"\013pci 0000:%02x:%02x.%d: Cannot iomap Apple AirPort card\0A\00", align 1, !dbg !175
@.str.16 = private unnamed_addr constant [54 x i8] c"\016Resetting Apple AirPort card (left enabled by EFI)\0A\00", align 1, !dbg !177
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_intel_graphics_stolen_res305], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @early_quirks() #0 section ".init.text" align 16 !dbg !205 {
entry:
  %call = call i32 @early_pci_allowed() #8, !dbg !208
  %tobool = icmp ne i32 %call, 0, !dbg !208
  br i1 %tobool, label %if.end, label %if.then, !dbg !210

if.then:                                          ; preds = %entry
  br label %return, !dbg !211

if.end:                                           ; preds = %entry
  call void @early_pci_scan_bus(i32 noundef 0) #9, !dbg !212
  br label %return, !dbg !213

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !213
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !214 dso_local i32 @early_pci_allowed() #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @early_pci_scan_bus(i32 noundef %bus) #0 section ".init.text" align 16 !dbg !218 {
entry:
  %bus.addr = alloca i32, align 4
  %slot = alloca i32, align 4
  %func = alloca i32, align 4
  store i32 %bus, ptr %bus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !222, metadata !DIExpression()), !dbg !225
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #10, !dbg !226
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !223, metadata !DIExpression()), !dbg !227
  call void @llvm.lifetime.start.p0(i64 4, ptr %func) #10, !dbg !226
  call void @llvm.dbg.declare(metadata ptr %func, metadata !224, metadata !DIExpression()), !dbg !228
  store i32 0, ptr %slot, align 4, !dbg !229
  br label %for.cond, !dbg !231

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %slot, align 4, !dbg !232
  %cmp = icmp slt i32 %0, 32, !dbg !234
  br i1 %cmp, label %for.body, label %for.end6, !dbg !235

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %func, align 4, !dbg !236
  br label %for.cond1, !dbg !238

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %func, align 4, !dbg !239
  %cmp2 = icmp slt i32 %1, 8, !dbg !241
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !242

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %bus.addr, align 4, !dbg !243
  %3 = load i32, ptr %slot, align 4, !dbg !246
  %4 = load i32, ptr %func, align 4, !dbg !247
  %call = call i32 @check_dev_quirk(i32 noundef %2, i32 noundef %3, i32 noundef %4) #9, !dbg !248
  %tobool = icmp ne i32 %call, 0, !dbg !248
  br i1 %tobool, label %if.then, label %if.end, !dbg !249

if.then:                                          ; preds = %for.body3
  br label %for.end, !dbg !250

if.end:                                           ; preds = %for.body3
  br label %for.inc, !dbg !251

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %func, align 4, !dbg !252
  %inc = add i32 %5, 1, !dbg !252
  store i32 %inc, ptr %func, align 4, !dbg !252
  br label %for.cond1, !dbg !253, !llvm.loop !254

for.end:                                          ; preds = %if.then, %for.cond1
  br label %for.inc4, !dbg !255

for.inc4:                                         ; preds = %for.end
  %6 = load i32, ptr %slot, align 4, !dbg !258
  %inc5 = add i32 %6, 1, !dbg !258
  store i32 %inc5, ptr %slot, align 4, !dbg !258
  br label %for.cond, !dbg !259, !llvm.loop !260

for.end6:                                         ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %func) #10, !dbg !262
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #10, !dbg !262
  ret void, !dbg !262
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @check_dev_quirk(i32 noundef %num, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !263 {
entry:
  %retval = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %class = alloca i16, align 2
  %vendor = alloca i16, align 2
  %device = alloca i16, align 2
  %type = alloca i8, align 1
  %sec = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !267, metadata !DIExpression()), !dbg !282
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !268, metadata !DIExpression()), !dbg !283
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !269, metadata !DIExpression()), !dbg !284
  call void @llvm.lifetime.start.p0(i64 2, ptr %class) #10, !dbg !285
  call void @llvm.dbg.declare(metadata ptr %class, metadata !270, metadata !DIExpression()), !dbg !286
  call void @llvm.lifetime.start.p0(i64 2, ptr %vendor) #10, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %vendor, metadata !274, metadata !DIExpression()), !dbg !288
  call void @llvm.lifetime.start.p0(i64 2, ptr %device) #10, !dbg !289
  call void @llvm.dbg.declare(metadata ptr %device, metadata !275, metadata !DIExpression()), !dbg !290
  call void @llvm.lifetime.start.p0(i64 1, ptr %type) #10, !dbg !291
  call void @llvm.dbg.declare(metadata ptr %type, metadata !276, metadata !DIExpression()), !dbg !292
  call void @llvm.lifetime.start.p0(i64 1, ptr %sec) #10, !dbg !293
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !280, metadata !DIExpression()), !dbg !294
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %i, metadata !281, metadata !DIExpression()), !dbg !296
  %0 = load i32, ptr %num.addr, align 4, !dbg !297
  %conv = trunc i32 %0 to i8, !dbg !297
  %1 = load i32, ptr %slot.addr, align 4, !dbg !298
  %conv1 = trunc i32 %1 to i8, !dbg !298
  %2 = load i32, ptr %func.addr, align 4, !dbg !299
  %conv2 = trunc i32 %2 to i8, !dbg !299
  %call = call zeroext i16 @read_pci_config_16(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, i8 noundef zeroext 10) #8, !dbg !300
  store i16 %call, ptr %class, align 2, !dbg !301
  %3 = load i16, ptr %class, align 2, !dbg !302
  %conv3 = zext i16 %3 to i32, !dbg !302
  %cmp = icmp eq i32 %conv3, 65535, !dbg !304
  br i1 %cmp, label %if.then, label %if.end, !dbg !305

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !306

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %num.addr, align 4, !dbg !307
  %conv5 = trunc i32 %4 to i8, !dbg !307
  %5 = load i32, ptr %slot.addr, align 4, !dbg !308
  %conv6 = trunc i32 %5 to i8, !dbg !308
  %6 = load i32, ptr %func.addr, align 4, !dbg !309
  %conv7 = trunc i32 %6 to i8, !dbg !309
  %call8 = call zeroext i16 @read_pci_config_16(i8 noundef zeroext %conv5, i8 noundef zeroext %conv6, i8 noundef zeroext %conv7, i8 noundef zeroext 0) #8, !dbg !310
  store i16 %call8, ptr %vendor, align 2, !dbg !311
  %7 = load i32, ptr %num.addr, align 4, !dbg !312
  %conv9 = trunc i32 %7 to i8, !dbg !312
  %8 = load i32, ptr %slot.addr, align 4, !dbg !313
  %conv10 = trunc i32 %8 to i8, !dbg !313
  %9 = load i32, ptr %func.addr, align 4, !dbg !314
  %conv11 = trunc i32 %9 to i8, !dbg !314
  %call12 = call zeroext i16 @read_pci_config_16(i8 noundef zeroext %conv9, i8 noundef zeroext %conv10, i8 noundef zeroext %conv11, i8 noundef zeroext 2) #8, !dbg !315
  store i16 %call12, ptr %device, align 2, !dbg !316
  store i32 0, ptr %i, align 4, !dbg !317
  br label %for.cond, !dbg !319

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %i, align 4, !dbg !320
  %idxprom = sext i32 %10 to i64, !dbg !322
  %arrayidx = getelementptr [12 x %struct.chipset], ptr @early_qrk, i64 0, i64 %idxprom, !dbg !322
  %f = getelementptr inbounds %struct.chipset, ptr %arrayidx, i32 0, i32 5, !dbg !323
  %11 = load ptr, ptr %f, align 8, !dbg !323
  %cmp13 = icmp ne ptr %11, null, !dbg !324
  br i1 %cmp13, label %for.body, label %for.end, !dbg !325

for.body:                                         ; preds = %for.cond
  %12 = load i32, ptr %i, align 4, !dbg !326
  %idxprom15 = sext i32 %12 to i64, !dbg !329
  %arrayidx16 = getelementptr [12 x %struct.chipset], ptr @early_qrk, i64 0, i64 %idxprom15, !dbg !329
  %vendor17 = getelementptr inbounds %struct.chipset, ptr %arrayidx16, i32 0, i32 0, !dbg !330
  %13 = load i32, ptr %vendor17, align 16, !dbg !330
  %cmp18 = icmp eq i32 %13, -1, !dbg !331
  br i1 %cmp18, label %land.lhs.true, label %lor.lhs.false, !dbg !332

lor.lhs.false:                                    ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !dbg !333
  %idxprom20 = sext i32 %14 to i64, !dbg !334
  %arrayidx21 = getelementptr [12 x %struct.chipset], ptr @early_qrk, i64 0, i64 %idxprom20, !dbg !334
  %vendor22 = getelementptr inbounds %struct.chipset, ptr %arrayidx21, i32 0, i32 0, !dbg !335
  %15 = load i32, ptr %vendor22, align 16, !dbg !335
  %16 = load i16, ptr %vendor, align 2, !dbg !336
  %conv23 = zext i16 %16 to i32, !dbg !336
  %cmp24 = icmp eq i32 %15, %conv23, !dbg !337
  br i1 %cmp24, label %land.lhs.true, label %if.end59, !dbg !338

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %17 = load i32, ptr %i, align 4, !dbg !339
  %idxprom26 = sext i32 %17 to i64, !dbg !340
  %arrayidx27 = getelementptr [12 x %struct.chipset], ptr @early_qrk, i64 0, i64 %idxprom26, !dbg !340
  %device28 = getelementptr inbounds %struct.chipset, ptr %arrayidx27, i32 0, i32 1, !dbg !341
  %18 = load i32, ptr %device28, align 4, !dbg !341
  %cmp29 = icmp eq i32 %18, -1, !dbg !342
  br i1 %cmp29, label %land.lhs.true38, label %lor.lhs.false31, !dbg !343

lor.lhs.false31:                                  ; preds = %land.lhs.true
  %19 = load i32, ptr %i, align 4, !dbg !344
  %idxprom32 = sext i32 %19 to i64, !dbg !345
  %arrayidx33 = getelementptr [12 x %struct.chipset], ptr @early_qrk, i64 0, i64 %idxprom32, !dbg !345
  %device34 = getelementptr inbounds %struct.chipset, ptr %arrayidx33, i32 0, i32 1, !dbg !346
  %20 = load i32, ptr %device34, align 4, !dbg !346
  %21 = load i16, ptr %device, align 2, !dbg !347
  %conv35 = zext i16 %21 to i32, !dbg !347
  %cmp36 = icmp eq i32 %20, %conv35, !dbg !348
  br i1 %cmp36, label %land.lhs.true38, label %if.end59, !dbg !349

land.lhs.true38:                                  ; preds = %lor.lhs.false31, %land.lhs.true
  %22 = load i32, ptr %i, align 4, !dbg !350
  %idxprom39 = sext i32 %22 to i64, !dbg !351
  %arrayidx40 = getelementptr [12 x %struct.chipset], ptr @early_qrk, i64 0, i64 %idxprom39, !dbg !351
  %class41 = getelementptr inbounds %struct.chipset, ptr %arrayidx40, i32 0, i32 2, !dbg !352
  %23 = load i32, ptr %class41, align 8, !dbg !352
  %24 = load i16, ptr %class, align 2, !dbg !353
  %conv42 = zext i16 %24 to i32, !dbg !353
  %xor = xor i32 %23, %conv42, !dbg !354
  %25 = load i32, ptr %i, align 4, !dbg !355
  %idxprom43 = sext i32 %25 to i64, !dbg !356
  %arrayidx44 = getelementptr [12 x %struct.chipset], ptr @early_qrk, i64 0, i64 %idxprom43, !dbg !356
  %class_mask = getelementptr inbounds %struct.chipset, ptr %arrayidx44, i32 0, i32 3, !dbg !357
  %26 = load i32, ptr %class_mask, align 4, !dbg !357
  %and = and i32 %xor, %26, !dbg !358
  %tobool = icmp ne i32 %and, 0, !dbg !358
  br i1 %tobool, label %if.end59, label %if.then45, !dbg !359

if.then45:                                        ; preds = %land.lhs.true38
  %27 = load i32, ptr %i, align 4, !dbg !360
  %idxprom46 = sext i32 %27 to i64, !dbg !363
  %arrayidx47 = getelementptr [12 x %struct.chipset], ptr @early_qrk, i64 0, i64 %idxprom46, !dbg !363
  %flags = getelementptr inbounds %struct.chipset, ptr %arrayidx47, i32 0, i32 4, !dbg !364
  %28 = load i32, ptr %flags, align 16, !dbg !364
  %and48 = and i32 %28, 3, !dbg !365
  %cmp49 = icmp ne i32 %and48, 3, !dbg !366
  br i1 %cmp49, label %if.then51, label %if.end55, !dbg !367

if.then51:                                        ; preds = %if.then45
  %29 = load i32, ptr %i, align 4, !dbg !368
  %idxprom52 = sext i32 %29 to i64, !dbg !369
  %arrayidx53 = getelementptr [12 x %struct.chipset], ptr @early_qrk, i64 0, i64 %idxprom52, !dbg !369
  %f54 = getelementptr inbounds %struct.chipset, ptr %arrayidx53, i32 0, i32 5, !dbg !370
  %30 = load ptr, ptr %f54, align 8, !dbg !370
  %31 = load i32, ptr %num.addr, align 4, !dbg !371
  %32 = load i32, ptr %slot.addr, align 4, !dbg !372
  %33 = load i32, ptr %func.addr, align 4, !dbg !373
  call void %30(i32 noundef %31, i32 noundef %32, i32 noundef %33) #8, !dbg !369
  br label %if.end55, !dbg !369

if.end55:                                         ; preds = %if.then51, %if.then45
  %34 = load i32, ptr %i, align 4, !dbg !374
  %idxprom56 = sext i32 %34 to i64, !dbg !375
  %arrayidx57 = getelementptr [12 x %struct.chipset], ptr @early_qrk, i64 0, i64 %idxprom56, !dbg !375
  %flags58 = getelementptr inbounds %struct.chipset, ptr %arrayidx57, i32 0, i32 4, !dbg !376
  %35 = load i32, ptr %flags58, align 16, !dbg !377
  %or = or i32 %35, 2, !dbg !377
  store i32 %or, ptr %flags58, align 16, !dbg !377
  br label %if.end59, !dbg !378

if.end59:                                         ; preds = %if.end55, %land.lhs.true38, %lor.lhs.false31, %lor.lhs.false
  br label %for.inc, !dbg !379

for.inc:                                          ; preds = %if.end59
  %36 = load i32, ptr %i, align 4, !dbg !380
  %inc = add i32 %36, 1, !dbg !380
  store i32 %inc, ptr %i, align 4, !dbg !380
  br label %for.cond, !dbg !381, !llvm.loop !382

for.end:                                          ; preds = %for.cond
  %37 = load i32, ptr %num.addr, align 4, !dbg !384
  %conv60 = trunc i32 %37 to i8, !dbg !384
  %38 = load i32, ptr %slot.addr, align 4, !dbg !385
  %conv61 = trunc i32 %38 to i8, !dbg !385
  %39 = load i32, ptr %func.addr, align 4, !dbg !386
  %conv62 = trunc i32 %39 to i8, !dbg !386
  %call63 = call zeroext i8 @read_pci_config_byte(i8 noundef zeroext %conv60, i8 noundef zeroext %conv61, i8 noundef zeroext %conv62, i8 noundef zeroext 14) #8, !dbg !387
  store i8 %call63, ptr %type, align 1, !dbg !388
  %40 = load i8, ptr %type, align 1, !dbg !389
  %conv64 = zext i8 %40 to i32, !dbg !389
  %and65 = and i32 %conv64, 127, !dbg !391
  %cmp66 = icmp eq i32 %and65, 1, !dbg !392
  br i1 %cmp66, label %if.then68, label %if.end79, !dbg !393

if.then68:                                        ; preds = %for.end
  %41 = load i32, ptr %num.addr, align 4, !dbg !394
  %conv69 = trunc i32 %41 to i8, !dbg !394
  %42 = load i32, ptr %slot.addr, align 4, !dbg !396
  %conv70 = trunc i32 %42 to i8, !dbg !396
  %43 = load i32, ptr %func.addr, align 4, !dbg !397
  %conv71 = trunc i32 %43 to i8, !dbg !397
  %call72 = call zeroext i8 @read_pci_config_byte(i8 noundef zeroext %conv69, i8 noundef zeroext %conv70, i8 noundef zeroext %conv71, i8 noundef zeroext 25) #8, !dbg !398
  store i8 %call72, ptr %sec, align 1, !dbg !399
  %44 = load i8, ptr %sec, align 1, !dbg !400
  %conv73 = zext i8 %44 to i32, !dbg !400
  %45 = load i32, ptr %num.addr, align 4, !dbg !402
  %cmp74 = icmp sgt i32 %conv73, %45, !dbg !403
  br i1 %cmp74, label %if.then76, label %if.end78, !dbg !404

if.then76:                                        ; preds = %if.then68
  %46 = load i8, ptr %sec, align 1, !dbg !405
  %conv77 = zext i8 %46 to i32, !dbg !405
  call void @early_pci_scan_bus(i32 noundef %conv77) #9, !dbg !406
  br label %if.end78, !dbg !406

if.end78:                                         ; preds = %if.then76, %if.then68
  br label %if.end79, !dbg !407

if.end79:                                         ; preds = %if.end78, %for.end
  %47 = load i8, ptr %type, align 1, !dbg !408
  %conv80 = zext i8 %47 to i32, !dbg !408
  %and81 = and i32 %conv80, 128, !dbg !410
  %tobool82 = icmp ne i32 %and81, 0, !dbg !410
  br i1 %tobool82, label %if.end84, label %if.then83, !dbg !411

if.then83:                                        ; preds = %if.end79
  store i32 -1, ptr %retval, align 4, !dbg !412
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !412

if.end84:                                         ; preds = %if.end79
  store i32 0, ptr %retval, align 4, !dbg !413
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !413

cleanup:                                          ; preds = %if.end84, %if.then83, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !414
  call void @llvm.lifetime.end.p0(i64 1, ptr %sec) #10, !dbg !414
  call void @llvm.lifetime.end.p0(i64 1, ptr %type) #10, !dbg !414
  call void @llvm.lifetime.end.p0(i64 2, ptr %device) #10, !dbg !414
  call void @llvm.lifetime.end.p0(i64 2, ptr %vendor) #10, !dbg !414
  call void @llvm.lifetime.end.p0(i64 2, ptr %class) #10, !dbg !414
  %48 = load i32, ptr %retval, align 4, !dbg !414
  ret i32 %48, !dbg !414
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !415 dso_local zeroext i16 @read_pci_config_16(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !418 dso_local zeroext i8 @read_pci_config_byte(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @nvidia_bugs(i32 noundef %num, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !421 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !423, metadata !DIExpression()), !dbg !426
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !424, metadata !DIExpression()), !dbg !427
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !425, metadata !DIExpression()), !dbg !428
  %0 = load i32, ptr %num.addr, align 4, !dbg !429
  %tobool = icmp ne i32 %0, 0, !dbg !429
  br i1 %tobool, label %if.then, label %if.end, !dbg !431

if.then:                                          ; preds = %entry
  br label %if.end11, !dbg !432

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @acpi_use_timer_override, align 4, !dbg !433
  %tobool1 = icmp ne i32 %1, 0, !dbg !433
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !435

if.then2:                                         ; preds = %if.end
  br label %if.end11, !dbg !436

if.end3:                                          ; preds = %if.end
  %call = call i32 @acpi_table_parse(ptr noundef @.str, ptr noundef @nvidia_hpet_check) #8, !dbg !437
  %tobool4 = icmp ne i32 %call, 0, !dbg !437
  br i1 %tobool4, label %if.then5, label %if.end11, !dbg !439

if.then5:                                         ; preds = %if.end3
  store i32 1, ptr @acpi_skip_timer_override, align 4, !dbg !440
  br label %do.body, !dbg !442

do.body:                                          ; preds = %if.then5
  br label %do.end, !dbg !444

do.end:                                           ; preds = %do.body
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #9, !dbg !442
  store i32 %call6, ptr %tmp, align 4, !dbg !444
  %2 = load i32, ptr %tmp, align 4, !dbg !442
  br label %do.body7, !dbg !446

do.body7:                                         ; preds = %do.end
  br label %do.end8, !dbg !448

do.end8:                                          ; preds = %do.body7
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #9, !dbg !446
  store i32 %call10, ptr %tmp9, align 4, !dbg !448
  %3 = load i32, ptr %tmp9, align 4, !dbg !446
  br label %if.end11, !dbg !450

if.end11:                                         ; preds = %if.then, %if.then2, %do.end8, %if.end3
  ret void, !dbg !451
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @via_bugs(i32 noundef %num, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !452 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !454, metadata !DIExpression()), !dbg !457
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !455, metadata !DIExpression()), !dbg !458
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !456, metadata !DIExpression()), !dbg !459
  ret void, !dbg !460
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @fix_hypertransport_config(i32 noundef %num, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !461 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %htcfg = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !463, metadata !DIExpression()), !dbg !467
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !464, metadata !DIExpression()), !dbg !468
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !465, metadata !DIExpression()), !dbg !469
  call void @llvm.lifetime.start.p0(i64 4, ptr %htcfg) #10, !dbg !470
  call void @llvm.dbg.declare(metadata ptr %htcfg, metadata !466, metadata !DIExpression()), !dbg !471
  %0 = load i32, ptr %num.addr, align 4, !dbg !472
  %conv = trunc i32 %0 to i8, !dbg !472
  %1 = load i32, ptr %slot.addr, align 4, !dbg !473
  %conv1 = trunc i32 %1 to i8, !dbg !473
  %2 = load i32, ptr %func.addr, align 4, !dbg !474
  %conv2 = trunc i32 %2 to i8, !dbg !474
  %call = call i32 @read_pci_config(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, i8 noundef zeroext 104) #8, !dbg !475
  store i32 %call, ptr %htcfg, align 4, !dbg !476
  %3 = load i32, ptr %htcfg, align 4, !dbg !477
  %and = and i32 %3, 262144, !dbg !479
  %tobool = icmp ne i32 %and, 0, !dbg !479
  br i1 %tobool, label %if.then, label %if.end20, !dbg !480

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !481

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !484

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !484

do.end:                                           ; preds = %do.cond
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #9, !dbg !481
  store i32 %call3, ptr %tmp, align 4, !dbg !484
  %4 = load i32, ptr %tmp, align 4, !dbg !481
  %5 = load i32, ptr %htcfg, align 4, !dbg !486
  %and4 = and i32 %5, 131072, !dbg !488
  %cmp = icmp eq i32 %and4, 0, !dbg !489
  br i1 %cmp, label %if.then6, label %if.end, !dbg !490

if.then6:                                         ; preds = %do.end
  br label %do.body7, !dbg !491

do.body7:                                         ; preds = %if.then6
  br label %do.cond8, !dbg !494

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !494

do.end9:                                          ; preds = %do.cond8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #9, !dbg !491
  store i32 %call11, ptr %tmp10, align 4, !dbg !494
  %6 = load i32, ptr %tmp10, align 4, !dbg !491
  br label %do.body12, !dbg !496

do.body12:                                        ; preds = %do.end9
  br label %do.cond13, !dbg !498

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !498

do.end14:                                         ; preds = %do.cond13
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #9, !dbg !496
  store i32 %call16, ptr %tmp15, align 4, !dbg !498
  %7 = load i32, ptr %tmp15, align 4, !dbg !496
  %8 = load i32, ptr %htcfg, align 4, !dbg !500
  %or = or i32 %8, 131072, !dbg !500
  store i32 %or, ptr %htcfg, align 4, !dbg !500
  %9 = load i32, ptr %num.addr, align 4, !dbg !501
  %conv17 = trunc i32 %9 to i8, !dbg !501
  %10 = load i32, ptr %slot.addr, align 4, !dbg !502
  %conv18 = trunc i32 %10 to i8, !dbg !502
  %11 = load i32, ptr %func.addr, align 4, !dbg !503
  %conv19 = trunc i32 %11 to i8, !dbg !503
  %12 = load i32, ptr %htcfg, align 4, !dbg !504
  call void @write_pci_config(i8 noundef zeroext %conv17, i8 noundef zeroext %conv18, i8 noundef zeroext %conv19, i8 noundef zeroext 104, i32 noundef %12) #8, !dbg !505
  br label %if.end, !dbg !506

if.end:                                           ; preds = %do.end14, %do.end
  br label %if.end20, !dbg !507

if.end20:                                         ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %htcfg) #10, !dbg !508
  ret void, !dbg !508
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @ati_bugs(i32 noundef %num, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !509 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %d = alloca i32, align 4
  %b = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !511, metadata !DIExpression()), !dbg !516
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !512, metadata !DIExpression()), !dbg !517
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !513, metadata !DIExpression()), !dbg !518
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #10, !dbg !519
  call void @llvm.dbg.declare(metadata ptr %d, metadata !514, metadata !DIExpression()), !dbg !520
  call void @llvm.lifetime.start.p0(i64 1, ptr %b) #10, !dbg !521
  call void @llvm.dbg.declare(metadata ptr %b, metadata !515, metadata !DIExpression()), !dbg !522
  %0 = load i32, ptr @acpi_use_timer_override, align 4, !dbg !523
  %tobool = icmp ne i32 %0, 0, !dbg !523
  br i1 %tobool, label %if.then, label %if.end, !dbg !525

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !526

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %num.addr, align 4, !dbg !527
  %2 = load i32, ptr %slot.addr, align 4, !dbg !528
  %3 = load i32, ptr %func.addr, align 4, !dbg !529
  %call = call i32 @ati_ixp4x0_rev(i32 noundef %1, i32 noundef %2, i32 noundef %3) #9, !dbg !530
  store i32 %call, ptr %d, align 4, !dbg !531
  %4 = load i32, ptr %d, align 4, !dbg !532
  %cmp = icmp ult i32 %4, 130, !dbg !534
  br i1 %cmp, label %if.then1, label %if.else, !dbg !535

if.then1:                                         ; preds = %if.end
  store i32 1, ptr @acpi_skip_timer_override, align 4, !dbg !536
  br label %if.end6, !dbg !537

if.else:                                          ; preds = %if.end
  call void @__outb(i8 noundef zeroext 114, i16 noundef zeroext 3286) #8, !dbg !538
  %call2 = call zeroext i8 @__inb(i16 noundef zeroext 3287) #8, !dbg !540
  store i8 %call2, ptr %b, align 1, !dbg !541
  %5 = load i8, ptr %b, align 1, !dbg !542
  %conv = zext i8 %5 to i32, !dbg !542
  %and = and i32 %conv, 2, !dbg !544
  %tobool3 = icmp ne i32 %and, 0, !dbg !544
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !545

if.then4:                                         ; preds = %if.else
  store i32 1, ptr @acpi_skip_timer_override, align 4, !dbg !546
  br label %if.end5, !dbg !547

if.end5:                                          ; preds = %if.then4, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.then1
  %6 = load i32, ptr @acpi_skip_timer_override, align 4, !dbg !548
  %tobool7 = icmp ne i32 %6, 0, !dbg !548
  br i1 %tobool7, label %if.then8, label %if.end20, !dbg !550

if.then8:                                         ; preds = %if.end6
  br label %do.body, !dbg !551

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !554

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !554

do.end:                                           ; preds = %do.cond
  %7 = load i32, ptr %d, align 4, !dbg !551
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i32 noundef %7) #9, !dbg !551
  store i32 %call9, ptr %tmp, align 4, !dbg !554
  %8 = load i32, ptr %tmp, align 4, !dbg !551
  br label %do.body10, !dbg !556

do.body10:                                        ; preds = %do.end
  br label %do.cond11, !dbg !558

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !558

do.end12:                                         ; preds = %do.cond11
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #9, !dbg !556
  store i32 %call14, ptr %tmp13, align 4, !dbg !558
  %9 = load i32, ptr %tmp13, align 4, !dbg !556
  br label %do.body15, !dbg !560

do.body15:                                        ; preds = %do.end12
  br label %do.cond16, !dbg !562

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !562

do.end17:                                         ; preds = %do.cond16
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #9, !dbg !560
  store i32 %call19, ptr %tmp18, align 4, !dbg !562
  %10 = load i32, ptr %tmp18, align 4, !dbg !560
  br label %if.end20, !dbg !564

if.end20:                                         ; preds = %do.end17, %if.end6
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !565
  br label %cleanup, !dbg !565

cleanup:                                          ; preds = %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %b) #10, !dbg !565
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #10, !dbg !565
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !565

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @ati_bugs_contd(i32 noundef %num, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !566 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %d = alloca i32, align 4
  %rev = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !568, metadata !DIExpression()), !dbg !573
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !569, metadata !DIExpression()), !dbg !574
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !570, metadata !DIExpression()), !dbg !575
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #10, !dbg !576
  call void @llvm.dbg.declare(metadata ptr %d, metadata !571, metadata !DIExpression()), !dbg !577
  call void @llvm.lifetime.start.p0(i64 4, ptr %rev) #10, !dbg !576
  call void @llvm.dbg.declare(metadata ptr %rev, metadata !572, metadata !DIExpression()), !dbg !578
  %0 = load i32, ptr %num.addr, align 4, !dbg !579
  %1 = load i32, ptr %slot.addr, align 4, !dbg !580
  %2 = load i32, ptr %func.addr, align 4, !dbg !581
  %call = call i32 @ati_sbx00_rev(i32 noundef %0, i32 noundef %1, i32 noundef %2) #9, !dbg !582
  store i32 %call, ptr %rev, align 4, !dbg !583
  %3 = load i32, ptr %rev, align 4, !dbg !584
  %cmp = icmp uge i32 %3, 64, !dbg !586
  br i1 %cmp, label %if.then, label %if.end, !dbg !587

if.then:                                          ; preds = %entry
  store i32 1, ptr @acpi_fix_pin2_polarity, align 4, !dbg !588
  br label %if.end, !dbg !589

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %rev, align 4, !dbg !590
  %cmp1 = icmp uge i32 %4, 57, !dbg !592
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !593

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !594

if.end3:                                          ; preds = %if.end
  %5 = load i32, ptr @acpi_use_timer_override, align 4, !dbg !595
  %tobool = icmp ne i32 %5, 0, !dbg !595
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !597

if.then4:                                         ; preds = %if.end3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !598

if.end5:                                          ; preds = %if.end3
  %6 = load i32, ptr %num.addr, align 4, !dbg !599
  %conv = trunc i32 %6 to i8, !dbg !599
  %7 = load i32, ptr %slot.addr, align 4, !dbg !600
  %conv6 = trunc i32 %7 to i8, !dbg !600
  %8 = load i32, ptr %func.addr, align 4, !dbg !601
  %conv7 = trunc i32 %8 to i8, !dbg !601
  %call8 = call i32 @read_pci_config(i8 noundef zeroext %conv, i8 noundef zeroext %conv6, i8 noundef zeroext %conv7, i8 noundef zeroext 100) #8, !dbg !602
  store i32 %call8, ptr %d, align 4, !dbg !603
  %9 = load i32, ptr %d, align 4, !dbg !604
  %and = and i32 %9, 16384, !dbg !606
  %tobool9 = icmp ne i32 %and, 0, !dbg !606
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !607

if.then10:                                        ; preds = %if.end5
  store i32 1, ptr @acpi_skip_timer_override, align 4, !dbg !608
  br label %if.end11, !dbg !609

if.end11:                                         ; preds = %if.then10, %if.end5
  %10 = load i32, ptr @acpi_skip_timer_override, align 4, !dbg !610
  %tobool12 = icmp ne i32 %10, 0, !dbg !610
  br i1 %tobool12, label %if.then13, label %if.end25, !dbg !612

if.then13:                                        ; preds = %if.end11
  br label %do.body, !dbg !613

do.body:                                          ; preds = %if.then13
  br label %do.cond, !dbg !616

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !616

do.end:                                           ; preds = %do.cond
  %11 = load i32, ptr %rev, align 4, !dbg !613
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, i32 noundef %11) #9, !dbg !613
  store i32 %call14, ptr %tmp, align 4, !dbg !616
  %12 = load i32, ptr %tmp, align 4, !dbg !613
  br label %do.body15, !dbg !618

do.body15:                                        ; preds = %do.end
  br label %do.cond16, !dbg !620

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !620

do.end17:                                         ; preds = %do.cond16
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #9, !dbg !618
  store i32 %call19, ptr %tmp18, align 4, !dbg !620
  %13 = load i32, ptr %tmp18, align 4, !dbg !618
  br label %do.body20, !dbg !622

do.body20:                                        ; preds = %do.end17
  br label %do.cond21, !dbg !624

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !624

do.end22:                                         ; preds = %do.cond21
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #9, !dbg !622
  store i32 %call24, ptr %tmp23, align 4, !dbg !624
  %14 = load i32, ptr %tmp23, align 4, !dbg !622
  br label %if.end25, !dbg !626

if.end25:                                         ; preds = %do.end22, %if.end11
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !627
  br label %cleanup, !dbg !627

cleanup:                                          ; preds = %if.end25, %if.then4, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %rev) #10, !dbg !627
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #10, !dbg !627
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !627

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @intel_remapping_check(i32 noundef %num, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !628 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %revision = alloca i8, align 1
  %device = alloca i16, align 2
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !630, metadata !DIExpression()), !dbg !635
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !631, metadata !DIExpression()), !dbg !636
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !632, metadata !DIExpression()), !dbg !637
  call void @llvm.lifetime.start.p0(i64 1, ptr %revision) #10, !dbg !638
  call void @llvm.dbg.declare(metadata ptr %revision, metadata !633, metadata !DIExpression()), !dbg !639
  call void @llvm.lifetime.start.p0(i64 2, ptr %device) #10, !dbg !640
  call void @llvm.dbg.declare(metadata ptr %device, metadata !634, metadata !DIExpression()), !dbg !641
  %0 = load i32, ptr %num.addr, align 4, !dbg !642
  %conv = trunc i32 %0 to i8, !dbg !642
  %1 = load i32, ptr %slot.addr, align 4, !dbg !643
  %conv1 = trunc i32 %1 to i8, !dbg !643
  %2 = load i32, ptr %func.addr, align 4, !dbg !644
  %conv2 = trunc i32 %2 to i8, !dbg !644
  %call = call zeroext i16 @read_pci_config_16(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, i8 noundef zeroext 2) #8, !dbg !645
  store i16 %call, ptr %device, align 2, !dbg !646
  %3 = load i32, ptr %num.addr, align 4, !dbg !647
  %conv3 = trunc i32 %3 to i8, !dbg !647
  %4 = load i32, ptr %slot.addr, align 4, !dbg !648
  %conv4 = trunc i32 %4 to i8, !dbg !648
  %5 = load i32, ptr %func.addr, align 4, !dbg !649
  %conv5 = trunc i32 %5 to i8, !dbg !649
  %call6 = call zeroext i8 @read_pci_config_byte(i8 noundef zeroext %conv3, i8 noundef zeroext %conv4, i8 noundef zeroext %conv5, i8 noundef zeroext 8) #8, !dbg !650
  store i8 %call6, ptr %revision, align 1, !dbg !651
  %6 = load i8, ptr %revision, align 1, !dbg !652
  %conv7 = zext i8 %6 to i32, !dbg !652
  %cmp = icmp sle i32 %conv7, 19, !dbg !654
  br i1 %cmp, label %if.then, label %if.else, !dbg !655

if.then:                                          ; preds = %entry
  call void @set_irq_remapping_broken() #8, !dbg !656
  br label %if.end16, !dbg !656

if.else:                                          ; preds = %entry
  %7 = load i16, ptr %device, align 2, !dbg !657
  %conv9 = zext i16 %7 to i32, !dbg !657
  %cmp10 = icmp eq i32 %conv9, 13317, !dbg !659
  br i1 %cmp10, label %land.lhs.true, label %if.end, !dbg !660

land.lhs.true:                                    ; preds = %if.else
  %8 = load i8, ptr %revision, align 1, !dbg !661
  %conv12 = zext i8 %8 to i32, !dbg !661
  %cmp13 = icmp eq i32 %conv12, 34, !dbg !662
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !663

if.then15:                                        ; preds = %land.lhs.true
  call void @set_irq_remapping_broken() #8, !dbg !664
  br label %if.end, !dbg !664

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %device) #10, !dbg !665
  call void @llvm.lifetime.end.p0(i64 1, ptr %revision) #10, !dbg !665
  ret void, !dbg !665
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @intel_graphics_quirks(i32 noundef %num, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !666 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %early_ops = alloca ptr, align 8
  %device = alloca i16, align 2
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %driver_data = alloca i64, align 8
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !668, metadata !DIExpression()), !dbg !678
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !669, metadata !DIExpression()), !dbg !679
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !670, metadata !DIExpression()), !dbg !680
  call void @llvm.lifetime.start.p0(i64 8, ptr %early_ops) #10, !dbg !681
  call void @llvm.dbg.declare(metadata ptr %early_ops, metadata !671, metadata !DIExpression()), !dbg !682
  call void @llvm.lifetime.start.p0(i64 2, ptr %device) #10, !dbg !683
  call void @llvm.dbg.declare(metadata ptr %device, metadata !672, metadata !DIExpression()), !dbg !684
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !685
  call void @llvm.dbg.declare(metadata ptr %i, metadata !673, metadata !DIExpression()), !dbg !686
  %call = call i64 @resource_size(ptr noundef @intel_graphics_stolen_res) #8, !dbg !687
  %tobool = icmp ne i64 %call, 0, !dbg !687
  br i1 %tobool, label %if.then, label %if.end, !dbg !689

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !690

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %num.addr, align 4, !dbg !691
  %conv = trunc i32 %0 to i8, !dbg !691
  %1 = load i32, ptr %slot.addr, align 4, !dbg !692
  %conv1 = trunc i32 %1 to i8, !dbg !692
  %2 = load i32, ptr %func.addr, align 4, !dbg !693
  %conv2 = trunc i32 %2 to i8, !dbg !693
  %call3 = call zeroext i16 @read_pci_config_16(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, i8 noundef zeroext 2) #8, !dbg !694
  store i16 %call3, ptr %device, align 2, !dbg !695
  store i32 0, ptr %i, align 4, !dbg !696
  br label %for.cond, !dbg !697

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !698
  %conv4 = sext i32 %3 to i64, !dbg !698
  %cmp = icmp ult i64 %conv4, 329, !dbg !699
  br i1 %cmp, label %for.body, label %for.end, !dbg !700

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %driver_data) #10, !dbg !701
  call void @llvm.dbg.declare(metadata ptr %driver_data, metadata !674, metadata !DIExpression()), !dbg !702
  %4 = load i32, ptr %i, align 4, !dbg !703
  %idxprom = sext i32 %4 to i64, !dbg !704
  %arrayidx = getelementptr [329 x %struct.pci_device_id], ptr @intel_early_ids, i64 0, i64 %idxprom, !dbg !704
  %driver_data6 = getelementptr inbounds %struct.pci_device_id, ptr %arrayidx, i32 0, i32 6, !dbg !705
  %5 = load i64, ptr %driver_data6, align 8, !dbg !705
  store i64 %5, ptr %driver_data, align 8, !dbg !702
  %6 = load i32, ptr %i, align 4, !dbg !706
  %idxprom7 = sext i32 %6 to i64, !dbg !708
  %arrayidx8 = getelementptr [329 x %struct.pci_device_id], ptr @intel_early_ids, i64 0, i64 %idxprom7, !dbg !708
  %device9 = getelementptr inbounds %struct.pci_device_id, ptr %arrayidx8, i32 0, i32 1, !dbg !709
  %7 = load i32, ptr %device9, align 4, !dbg !709
  %8 = load i16, ptr %device, align 2, !dbg !710
  %conv10 = zext i16 %8 to i32, !dbg !710
  %cmp11 = icmp ne i32 %7, %conv10, !dbg !711
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !712

if.then13:                                        ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !713

if.end14:                                         ; preds = %for.body
  %9 = load i64, ptr %driver_data, align 8, !dbg !714
  %10 = inttoptr i64 %9 to ptr, !dbg !715
  store ptr %10, ptr %early_ops, align 8, !dbg !716
  %11 = load i32, ptr %num.addr, align 4, !dbg !717
  %12 = load i32, ptr %slot.addr, align 4, !dbg !718
  %13 = load i32, ptr %func.addr, align 4, !dbg !719
  %14 = load ptr, ptr %early_ops, align 8, !dbg !720
  call void @intel_graphics_stolen(i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %14) #9, !dbg !721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !722

cleanup:                                          ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %driver_data) #10, !dbg !723
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  %15 = load i32, ptr %i, align 4, !dbg !724
  %inc = add i32 %15, 1, !dbg !724
  store i32 %inc, ptr %i, align 4, !dbg !724
  br label %for.cond, !dbg !725, !llvm.loop !726

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !728
  br label %cleanup15, !dbg !728

cleanup15:                                        ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !728
  call void @llvm.lifetime.end.p0(i64 2, ptr %device) #10, !dbg !728
  call void @llvm.lifetime.end.p0(i64 8, ptr %early_ops) #10, !dbg !728
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup15, %cleanup15
  ret void, !dbg !728

unreachable:                                      ; preds = %cleanup15
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @force_disable_hpet(i32 noundef %num, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !729 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !731, metadata !DIExpression()), !dbg !734
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !732, metadata !DIExpression()), !dbg !735
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !733, metadata !DIExpression()), !dbg !736
  store i8 1, ptr @boot_hpet_disable, align 1, !dbg !737
  br label %do.body, !dbg !738

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !740

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #9, !dbg !738
  store i32 %call, ptr %tmp, align 4, !dbg !740
  %0 = load i32, ptr %tmp, align 4, !dbg !738
  ret void, !dbg !742
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @apple_airport_reset(i32 noundef %bus, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !743 {
entry:
  %bus.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %mmio = alloca ptr, align 8
  %pmcsr = alloca i16, align 2
  %addr = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ms = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  store i32 %bus, ptr %bus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !745, metadata !DIExpression()), !dbg !756
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !746, metadata !DIExpression()), !dbg !757
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !747, metadata !DIExpression()), !dbg !758
  call void @llvm.lifetime.start.p0(i64 8, ptr %mmio) #10, !dbg !759
  call void @llvm.dbg.declare(metadata ptr %mmio, metadata !748, metadata !DIExpression()), !dbg !760
  call void @llvm.lifetime.start.p0(i64 2, ptr %pmcsr) #10, !dbg !761
  call void @llvm.dbg.declare(metadata ptr %pmcsr, metadata !749, metadata !DIExpression()), !dbg !762
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #10, !dbg !763
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !750, metadata !DIExpression()), !dbg !764
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !765
  call void @llvm.dbg.declare(metadata ptr %i, metadata !751, metadata !DIExpression()), !dbg !766
  %0 = load i8, ptr @x86_apple_machine, align 1, !dbg !767, !range !769, !noundef !770
  %tobool = trunc i8 %0 to i1, !dbg !767
  br i1 %tobool, label %if.end, label %if.then, !dbg !771

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !772

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %bus.addr, align 4, !dbg !773
  %conv = trunc i32 %1 to i8, !dbg !773
  %2 = load i32, ptr %slot.addr, align 4, !dbg !774
  %conv1 = trunc i32 %2 to i8, !dbg !774
  %3 = load i32, ptr %func.addr, align 4, !dbg !775
  %conv2 = trunc i32 %3 to i8, !dbg !775
  %call = call zeroext i16 @read_pci_config_16(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, i8 noundef zeroext 68) #8, !dbg !776
  store i16 %call, ptr %pmcsr, align 2, !dbg !777
  %4 = load i16, ptr %pmcsr, align 2, !dbg !778
  %conv3 = zext i16 %4 to i32, !dbg !778
  %and = and i32 %conv3, 3, !dbg !779
  %cmp = icmp ne i32 %and, 0, !dbg !780
  br i1 %cmp, label %if.then5, label %if.end24, !dbg !781

if.then5:                                         ; preds = %if.end
  %5 = load i16, ptr %pmcsr, align 2, !dbg !782
  %conv6 = zext i16 %5 to i32, !dbg !782
  %and7 = and i32 %conv6, -4, !dbg !782
  %conv8 = trunc i32 %and7 to i16, !dbg !782
  store i16 %conv8, ptr %pmcsr, align 2, !dbg !782
  %6 = load i32, ptr %bus.addr, align 4, !dbg !783
  %conv9 = trunc i32 %6 to i8, !dbg !783
  %7 = load i32, ptr %slot.addr, align 4, !dbg !784
  %conv10 = trunc i32 %7 to i8, !dbg !784
  %8 = load i32, ptr %func.addr, align 4, !dbg !785
  %conv11 = trunc i32 %8 to i8, !dbg !785
  %9 = load i16, ptr %pmcsr, align 2, !dbg !786
  call void @write_pci_config_16(i8 noundef zeroext %conv9, i8 noundef zeroext %conv10, i8 noundef zeroext %conv11, i8 noundef zeroext 68, i16 noundef zeroext %9) #8, !dbg !787
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ms) #10, !dbg !788
  call void @llvm.dbg.declare(metadata ptr %__ms, metadata !752, metadata !DIExpression()), !dbg !788
  store i64 10, ptr %__ms, align 8, !dbg !788
  br label %while.cond, !dbg !788

while.cond:                                       ; preds = %while.body, %if.then5
  %10 = load i64, ptr %__ms, align 8, !dbg !788
  %dec = add i64 %10, -1, !dbg !788
  store i64 %dec, ptr %__ms, align 8, !dbg !788
  %tobool12 = icmp ne i64 %10, 0, !dbg !788
  br i1 %tobool12, label %while.body, label %while.end, !dbg !788

while.body:                                       ; preds = %while.cond
  call void @__const_udelay(i64 noundef 4295000) #8, !dbg !789
  br label %while.cond, !dbg !788, !llvm.loop !794

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ms) #10, !dbg !795
  %11 = load i32, ptr %bus.addr, align 4, !dbg !796
  %conv13 = trunc i32 %11 to i8, !dbg !796
  %12 = load i32, ptr %slot.addr, align 4, !dbg !797
  %conv14 = trunc i32 %12 to i8, !dbg !797
  %13 = load i32, ptr %func.addr, align 4, !dbg !798
  %conv15 = trunc i32 %13 to i8, !dbg !798
  %call16 = call zeroext i16 @read_pci_config_16(i8 noundef zeroext %conv13, i8 noundef zeroext %conv14, i8 noundef zeroext %conv15, i8 noundef zeroext 68) #8, !dbg !799
  store i16 %call16, ptr %pmcsr, align 2, !dbg !800
  %14 = load i16, ptr %pmcsr, align 2, !dbg !801
  %conv17 = zext i16 %14 to i32, !dbg !801
  %and18 = and i32 %conv17, 3, !dbg !803
  %cmp19 = icmp ne i32 %and18, 0, !dbg !804
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !805

if.then21:                                        ; preds = %while.end
  br label %do.body, !dbg !806

do.body:                                          ; preds = %if.then21
  br label %do.cond, !dbg !809

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !809

do.end:                                           ; preds = %do.cond
  %15 = load i32, ptr %bus.addr, align 4, !dbg !806
  %16 = load i32, ptr %slot.addr, align 4, !dbg !806
  %17 = load i32, ptr %func.addr, align 4, !dbg !806
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14, i32 noundef %15, i32 noundef %16, i32 noundef %17) #9, !dbg !806
  store i32 %call22, ptr %tmp, align 4, !dbg !809
  %18 = load i32, ptr %tmp, align 4, !dbg !806
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !811

if.end23:                                         ; preds = %while.end
  br label %if.end24, !dbg !812

if.end24:                                         ; preds = %if.end23, %if.end
  %19 = load i32, ptr %bus.addr, align 4, !dbg !813
  %conv25 = trunc i32 %19 to i8, !dbg !813
  %20 = load i32, ptr %slot.addr, align 4, !dbg !814
  %conv26 = trunc i32 %20 to i8, !dbg !814
  %21 = load i32, ptr %func.addr, align 4, !dbg !815
  %conv27 = trunc i32 %21 to i8, !dbg !815
  %call28 = call i32 @read_pci_config(i8 noundef zeroext %conv25, i8 noundef zeroext %conv26, i8 noundef zeroext %conv27, i8 noundef zeroext 16) #8, !dbg !816
  %conv29 = zext i32 %call28 to i64, !dbg !816
  store i64 %conv29, ptr %addr, align 8, !dbg !817
  %22 = load i32, ptr %bus.addr, align 4, !dbg !818
  %conv30 = trunc i32 %22 to i8, !dbg !818
  %23 = load i32, ptr %slot.addr, align 4, !dbg !819
  %conv31 = trunc i32 %23 to i8, !dbg !819
  %24 = load i32, ptr %func.addr, align 4, !dbg !820
  %conv32 = trunc i32 %24 to i8, !dbg !820
  %call33 = call i32 @read_pci_config(i8 noundef zeroext %conv30, i8 noundef zeroext %conv31, i8 noundef zeroext %conv32, i8 noundef zeroext 20) #8, !dbg !821
  %conv34 = zext i32 %call33 to i64, !dbg !822
  %shl = shl i64 %conv34, 32, !dbg !823
  %25 = load i64, ptr %addr, align 8, !dbg !824
  %or = or i64 %25, %shl, !dbg !824
  store i64 %or, ptr %addr, align 8, !dbg !824
  %26 = load i64, ptr %addr, align 8, !dbg !825
  %and35 = and i64 %26, -16, !dbg !825
  store i64 %and35, ptr %addr, align 8, !dbg !825
  %27 = load i64, ptr %addr, align 8, !dbg !826
  %call36 = call ptr @early_ioremap(i64 noundef %27, i64 noundef 16384) #8, !dbg !827
  store ptr %call36, ptr %mmio, align 8, !dbg !828
  %28 = load ptr, ptr %mmio, align 8, !dbg !829
  %tobool37 = icmp ne ptr %28, null, !dbg !829
  br i1 %tobool37, label %if.end44, label %if.then38, !dbg !831

if.then38:                                        ; preds = %if.end24
  br label %do.body39, !dbg !832

do.body39:                                        ; preds = %if.then38
  br label %do.cond40, !dbg !835

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !835

do.end41:                                         ; preds = %do.cond40
  %29 = load i32, ptr %bus.addr, align 4, !dbg !832
  %30 = load i32, ptr %slot.addr, align 4, !dbg !832
  %31 = load i32, ptr %func.addr, align 4, !dbg !832
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef @.str.15, i32 noundef %29, i32 noundef %30, i32 noundef %31) #9, !dbg !832
  store i32 %call43, ptr %tmp42, align 4, !dbg !835
  %32 = load i32, ptr %tmp42, align 4, !dbg !832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !837

if.end44:                                         ; preds = %if.end24
  br label %do.body45, !dbg !838

do.body45:                                        ; preds = %if.end44
  br label %do.cond46, !dbg !840

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !840

do.end47:                                         ; preds = %do.cond46
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef @.str.16) #9, !dbg !838
  store i32 %call49, ptr %tmp48, align 4, !dbg !840
  %33 = load i32, ptr %tmp48, align 4, !dbg !838
  store i32 0, ptr %i, align 4, !dbg !842
  br label %for.cond, !dbg !844

for.cond:                                         ; preds = %for.inc, %do.end47
  %34 = load ptr, ptr %mmio, align 8, !dbg !845
  %add.ptr = getelementptr i8, ptr %34, i64 4096, !dbg !845
  %add.ptr50 = getelementptr i8, ptr %add.ptr, i64 2052, !dbg !845
  %call51 = call i32 @ioread32(ptr noundef %add.ptr50) #8, !dbg !845
  %tobool52 = icmp ne i32 %call51, 0, !dbg !845
  br i1 %tobool52, label %land.rhs, label %land.end, !dbg !847

land.rhs:                                         ; preds = %for.cond
  %35 = load i32, ptr %i, align 4, !dbg !848
  %cmp53 = icmp slt i32 %35, 30, !dbg !849
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %36 = phi i1 [ false, %for.cond ], [ %cmp53, %land.rhs ], !dbg !850
  br i1 %36, label %for.body, label %for.end, !dbg !851

for.body:                                         ; preds = %land.end
  call void @__const_udelay(i64 noundef 42950) #8, !dbg !852
  br label %for.inc, !dbg !857

for.inc:                                          ; preds = %for.body
  %37 = load i32, ptr %i, align 4, !dbg !858
  %inc = add i32 %37, 1, !dbg !858
  store i32 %inc, ptr %i, align 4, !dbg !858
  br label %for.cond, !dbg !859, !llvm.loop !860

for.end:                                          ; preds = %land.end
  %38 = load ptr, ptr %mmio, align 8, !dbg !862
  %add.ptr55 = getelementptr i8, ptr %38, i64 4096, !dbg !862
  %add.ptr56 = getelementptr i8, ptr %add.ptr55, i64 2048, !dbg !862
  call void @iowrite32(i32 noundef 1, ptr noundef %add.ptr56) #8, !dbg !862
  %39 = load ptr, ptr %mmio, align 8, !dbg !863
  %add.ptr57 = getelementptr i8, ptr %39, i64 4096, !dbg !863
  %add.ptr58 = getelementptr i8, ptr %add.ptr57, i64 2048, !dbg !863
  %call59 = call i32 @ioread32(ptr noundef %add.ptr58) #8, !dbg !863
  call void @__const_udelay(i64 noundef 4295) #8, !dbg !864
  %40 = load ptr, ptr %mmio, align 8, !dbg !869
  %add.ptr60 = getelementptr i8, ptr %40, i64 4096, !dbg !869
  %add.ptr61 = getelementptr i8, ptr %add.ptr60, i64 2048, !dbg !869
  call void @iowrite32(i32 noundef 0, ptr noundef %add.ptr61) #8, !dbg !869
  %41 = load ptr, ptr %mmio, align 8, !dbg !870
  %add.ptr62 = getelementptr i8, ptr %41, i64 4096, !dbg !870
  %add.ptr63 = getelementptr i8, ptr %add.ptr62, i64 2048, !dbg !870
  %call64 = call i32 @ioread32(ptr noundef %add.ptr63) #8, !dbg !870
  call void @__const_udelay(i64 noundef 42950) #8, !dbg !871
  %42 = load ptr, ptr %mmio, align 8, !dbg !876
  call void @early_iounmap(ptr noundef %42, i64 noundef 16384) #8, !dbg !877
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !878
  br label %cleanup, !dbg !878

cleanup:                                          ; preds = %for.end, %do.end41, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !878
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #10, !dbg !878
  call void @llvm.lifetime.end.p0(i64 2, ptr %pmcsr) #10, !dbg !878
  call void @llvm.lifetime.end.p0(i64 8, ptr %mmio) #10, !dbg !878
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !878

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !879 dso_local i32 @acpi_table_parse(ptr noundef, ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @nvidia_hpet_check(ptr noundef %header) #0 section ".init.text" align 16 !dbg !910 {
entry:
  %header.addr = alloca ptr, align 8
  store ptr %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !912, metadata !DIExpression()), !dbg !913
  ret i32 0, !dbg !914
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !915 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !919 dso_local i32 @read_pci_config(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !922 dso_local void @write_pci_config(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @ati_ixp4x0_rev(i32 noundef %num, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !925 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %d = alloca i32, align 4
  %b = alloca i8, align 1
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !929, metadata !DIExpression()), !dbg !934
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !930, metadata !DIExpression()), !dbg !935
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !931, metadata !DIExpression()), !dbg !936
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #10, !dbg !937
  call void @llvm.dbg.declare(metadata ptr %d, metadata !932, metadata !DIExpression()), !dbg !938
  call void @llvm.lifetime.start.p0(i64 1, ptr %b) #10, !dbg !939
  call void @llvm.dbg.declare(metadata ptr %b, metadata !933, metadata !DIExpression()), !dbg !940
  %0 = load i32, ptr %num.addr, align 4, !dbg !941
  %conv = trunc i32 %0 to i8, !dbg !941
  %1 = load i32, ptr %slot.addr, align 4, !dbg !942
  %conv1 = trunc i32 %1 to i8, !dbg !942
  %2 = load i32, ptr %func.addr, align 4, !dbg !943
  %conv2 = trunc i32 %2 to i8, !dbg !943
  %call = call zeroext i8 @read_pci_config_byte(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, i8 noundef zeroext -84) #8, !dbg !944
  store i8 %call, ptr %b, align 1, !dbg !945
  %3 = load i8, ptr %b, align 1, !dbg !946
  %conv3 = zext i8 %3 to i32, !dbg !946
  %and = and i32 %conv3, -33, !dbg !946
  %conv4 = trunc i32 %and to i8, !dbg !946
  store i8 %conv4, ptr %b, align 1, !dbg !946
  %4 = load i32, ptr %num.addr, align 4, !dbg !947
  %conv5 = trunc i32 %4 to i8, !dbg !947
  %5 = load i32, ptr %slot.addr, align 4, !dbg !948
  %conv6 = trunc i32 %5 to i8, !dbg !948
  %6 = load i32, ptr %func.addr, align 4, !dbg !949
  %conv7 = trunc i32 %6 to i8, !dbg !949
  %7 = load i8, ptr %b, align 1, !dbg !950
  call void @write_pci_config_byte(i8 noundef zeroext %conv5, i8 noundef zeroext %conv6, i8 noundef zeroext %conv7, i8 noundef zeroext -84, i8 noundef zeroext %7) #8, !dbg !951
  %8 = load i32, ptr %num.addr, align 4, !dbg !952
  %conv8 = trunc i32 %8 to i8, !dbg !952
  %9 = load i32, ptr %slot.addr, align 4, !dbg !953
  %conv9 = trunc i32 %9 to i8, !dbg !953
  %10 = load i32, ptr %func.addr, align 4, !dbg !954
  %conv10 = trunc i32 %10 to i8, !dbg !954
  %call11 = call i32 @read_pci_config(i8 noundef zeroext %conv8, i8 noundef zeroext %conv9, i8 noundef zeroext %conv10, i8 noundef zeroext 112) #8, !dbg !955
  store i32 %call11, ptr %d, align 4, !dbg !956
  %11 = load i32, ptr %d, align 4, !dbg !957
  %or = or i32 %11, 256, !dbg !957
  store i32 %or, ptr %d, align 4, !dbg !957
  %12 = load i32, ptr %num.addr, align 4, !dbg !958
  %conv12 = trunc i32 %12 to i8, !dbg !958
  %13 = load i32, ptr %slot.addr, align 4, !dbg !959
  %conv13 = trunc i32 %13 to i8, !dbg !959
  %14 = load i32, ptr %func.addr, align 4, !dbg !960
  %conv14 = trunc i32 %14 to i8, !dbg !960
  %15 = load i32, ptr %d, align 4, !dbg !961
  call void @write_pci_config(i8 noundef zeroext %conv12, i8 noundef zeroext %conv13, i8 noundef zeroext %conv14, i8 noundef zeroext 112, i32 noundef %15) #8, !dbg !962
  %16 = load i32, ptr %num.addr, align 4, !dbg !963
  %conv15 = trunc i32 %16 to i8, !dbg !963
  %17 = load i32, ptr %slot.addr, align 4, !dbg !964
  %conv16 = trunc i32 %17 to i8, !dbg !964
  %18 = load i32, ptr %func.addr, align 4, !dbg !965
  %conv17 = trunc i32 %18 to i8, !dbg !965
  %call18 = call i32 @read_pci_config(i8 noundef zeroext %conv15, i8 noundef zeroext %conv16, i8 noundef zeroext %conv17, i8 noundef zeroext 8) #8, !dbg !966
  store i32 %call18, ptr %d, align 4, !dbg !967
  %19 = load i32, ptr %d, align 4, !dbg !968
  %and19 = and i32 %19, 255, !dbg !968
  store i32 %and19, ptr %d, align 4, !dbg !968
  %20 = load i32, ptr %d, align 4, !dbg !969
  call void @llvm.lifetime.end.p0(i64 1, ptr %b) #10, !dbg !970
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #10, !dbg !970
  ret i32 %20, !dbg !971
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outb(i8 noundef zeroext %value, i16 noundef zeroext %port) #5 align 16 !dbg !972 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !977, metadata !DIExpression()), !dbg !979
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !978, metadata !DIExpression()), !dbg !979
  %0 = load i8, ptr %value.addr, align 1, !dbg !979
  %1 = load i16, ptr %port.addr, align 2, !dbg !979
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i16 %1) #10, !dbg !979, !srcloc !980
  ret void, !dbg !979
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__inb(i16 noundef zeroext %port) #5 align 16 !dbg !981 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !985, metadata !DIExpression()), !dbg !987
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #10, !dbg !987
  call void @llvm.dbg.declare(metadata ptr %value, metadata !986, metadata !DIExpression()), !dbg !987
  %0 = load i16, ptr %port.addr, align 2, !dbg !987
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #10, !dbg !987, !srcloc !988
  store i8 %1, ptr %value, align 1, !dbg !987
  %2 = load i8, ptr %value, align 1, !dbg !987
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #10, !dbg !987
  ret i8 %2, !dbg !987
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !989 dso_local void @write_pci_config_byte(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @ati_sbx00_rev(i32 noundef %num, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !992 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !994, metadata !DIExpression()), !dbg !998
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !995, metadata !DIExpression()), !dbg !999
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !996, metadata !DIExpression()), !dbg !1000
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #10, !dbg !1001
  call void @llvm.dbg.declare(metadata ptr %d, metadata !997, metadata !DIExpression()), !dbg !1002
  %0 = load i32, ptr %num.addr, align 4, !dbg !1003
  %conv = trunc i32 %0 to i8, !dbg !1003
  %1 = load i32, ptr %slot.addr, align 4, !dbg !1004
  %conv1 = trunc i32 %1 to i8, !dbg !1004
  %2 = load i32, ptr %func.addr, align 4, !dbg !1005
  %conv2 = trunc i32 %2 to i8, !dbg !1005
  %call = call i32 @read_pci_config(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, i8 noundef zeroext 8) #8, !dbg !1006
  store i32 %call, ptr %d, align 4, !dbg !1007
  %3 = load i32, ptr %d, align 4, !dbg !1008
  %and = and i32 %3, 255, !dbg !1008
  store i32 %and, ptr %d, align 4, !dbg !1008
  %4 = load i32, ptr %d, align 4, !dbg !1009
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #10, !dbg !1010
  ret i32 %4, !dbg !1011
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_irq_remapping_broken() #6 align 16 !dbg !1012 {
entry:
  ret void, !dbg !1014
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_size(ptr noundef %res) #6 align 16 !dbg !1015 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !1021, metadata !DIExpression()), !dbg !1022
  %0 = load ptr, ptr %res.addr, align 8, !dbg !1023
  %end = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1, !dbg !1024
  %1 = load i64, ptr %end, align 8, !dbg !1024
  %2 = load ptr, ptr %res.addr, align 8, !dbg !1025
  %start = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 0, !dbg !1026
  %3 = load i64, ptr %start, align 8, !dbg !1026
  %sub = sub i64 %1, %3, !dbg !1027
  %add = add i64 %sub, 1, !dbg !1028
  ret i64 %add, !dbg !1029
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @intel_graphics_stolen(i32 noundef %num, i32 noundef %slot, i32 noundef %func, ptr noundef %early_ops) #0 section ".init.text" align 16 !dbg !1030 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %early_ops.addr = alloca ptr, align 8
  %base = alloca i64, align 8
  %size = alloca i64, align 8
  %end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !1034, metadata !DIExpression()), !dbg !1041
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1035, metadata !DIExpression()), !dbg !1042
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1036, metadata !DIExpression()), !dbg !1043
  store ptr %early_ops, ptr %early_ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %early_ops.addr, metadata !1037, metadata !DIExpression()), !dbg !1044
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #10, !dbg !1045
  call void @llvm.dbg.declare(metadata ptr %base, metadata !1038, metadata !DIExpression()), !dbg !1046
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #10, !dbg !1045
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1039, metadata !DIExpression()), !dbg !1047
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #10, !dbg !1048
  call void @llvm.dbg.declare(metadata ptr %end, metadata !1040, metadata !DIExpression()), !dbg !1049
  %0 = load ptr, ptr %early_ops.addr, align 8, !dbg !1050
  %stolen_size = getelementptr inbounds %struct.intel_early_ops, ptr %0, i32 0, i32 0, !dbg !1051
  %1 = load ptr, ptr %stolen_size, align 8, !dbg !1051
  %2 = load i32, ptr %num.addr, align 4, !dbg !1052
  %3 = load i32, ptr %slot.addr, align 4, !dbg !1053
  %4 = load i32, ptr %func.addr, align 4, !dbg !1054
  %call = call i64 %1(i32 noundef %2, i32 noundef %3, i32 noundef %4) #8, !dbg !1050
  store i64 %call, ptr %size, align 8, !dbg !1055
  %5 = load ptr, ptr %early_ops.addr, align 8, !dbg !1056
  %stolen_base = getelementptr inbounds %struct.intel_early_ops, ptr %5, i32 0, i32 1, !dbg !1057
  %6 = load ptr, ptr %stolen_base, align 8, !dbg !1057
  %7 = load i32, ptr %num.addr, align 4, !dbg !1058
  %8 = load i32, ptr %slot.addr, align 4, !dbg !1059
  %9 = load i32, ptr %func.addr, align 4, !dbg !1060
  %10 = load i64, ptr %size, align 8, !dbg !1061
  %call1 = call i64 %6(i32 noundef %7, i32 noundef %8, i32 noundef %9, i64 noundef %10) #8, !dbg !1056
  store i64 %call1, ptr %base, align 8, !dbg !1062
  %11 = load i64, ptr %size, align 8, !dbg !1063
  %tobool = icmp ne i64 %11, 0, !dbg !1063
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1065

lor.lhs.false:                                    ; preds = %entry
  %12 = load i64, ptr %base, align 8, !dbg !1066
  %tobool2 = icmp ne i64 %12, 0, !dbg !1066
  br i1 %tobool2, label %if.end, label %if.then, !dbg !1067

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1068

if.end:                                           ; preds = %lor.lhs.false
  %13 = load i64, ptr %base, align 8, !dbg !1069
  %14 = load i64, ptr %size, align 8, !dbg !1070
  %add = add i64 %13, %14, !dbg !1071
  %sub = sub i64 %add, 1, !dbg !1072
  store i64 %sub, ptr %end, align 8, !dbg !1073
  %15 = load i64, ptr %base, align 8, !dbg !1074
  store i64 %15, ptr @intel_graphics_stolen_res, align 8, !dbg !1075
  %16 = load i64, ptr %end, align 8, !dbg !1076
  store i64 %16, ptr getelementptr inbounds (%struct.resource, ptr @intel_graphics_stolen_res, i32 0, i32 1), align 8, !dbg !1077
  br label %do.body, !dbg !1078

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !1080

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1080

do.end:                                           ; preds = %do.cond
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, ptr noundef @intel_graphics_stolen_res) #9, !dbg !1078
  store i32 %call3, ptr %tmp, align 4, !dbg !1080
  %17 = load i32, ptr %tmp, align 4, !dbg !1078
  %18 = load i64, ptr %base, align 8, !dbg !1082
  %19 = load i64, ptr %size, align 8, !dbg !1083
  call void @e820__range_add(i64 noundef %18, i64 noundef %19, i32 noundef 2) #8, !dbg !1084
  %20 = load ptr, ptr @e820_table, align 8, !dbg !1085
  %call4 = call i32 @e820__update_table(ptr noundef %20) #8, !dbg !1086
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1087
  br label %cleanup, !dbg !1087

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #10, !dbg !1087
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #10, !dbg !1087
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #10, !dbg !1087
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1087

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @i830_stolen_size(i32 noundef %num, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !1088 {
entry:
  %retval = alloca i64, align 8
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %gmch_ctrl = alloca i16, align 2
  %gms = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !1090, metadata !DIExpression()), !dbg !1102
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1091, metadata !DIExpression()), !dbg !1103
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1092, metadata !DIExpression()), !dbg !1104
  call void @llvm.lifetime.start.p0(i64 2, ptr %gmch_ctrl) #10, !dbg !1105
  call void @llvm.dbg.declare(metadata ptr %gmch_ctrl, metadata !1093, metadata !DIExpression()), !dbg !1106
  call void @llvm.lifetime.start.p0(i64 2, ptr %gms) #10, !dbg !1107
  call void @llvm.dbg.declare(metadata ptr %gms, metadata !1094, metadata !DIExpression()), !dbg !1108
  %call = call zeroext i16 @read_pci_config_16(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 82) #8, !dbg !1109
  store i16 %call, ptr %gmch_ctrl, align 2, !dbg !1110
  %0 = load i16, ptr %gmch_ctrl, align 2, !dbg !1111
  %conv = zext i16 %0 to i32, !dbg !1111
  %and = and i32 %conv, 112, !dbg !1112
  %conv1 = trunc i32 %and to i16, !dbg !1111
  store i16 %conv1, ptr %gms, align 2, !dbg !1113
  %1 = load i16, ptr %gms, align 2, !dbg !1114
  %conv2 = zext i16 %1 to i32, !dbg !1114
  switch i32 %conv2, label %sw.default [
    i32 32, label %sw.bb
    i32 48, label %sw.bb3
    i32 64, label %sw.bb4
    i32 16, label %sw.bb5
  ], !dbg !1115

sw.bb:                                            ; preds = %entry
  store i64 524288, ptr %retval, align 8, !dbg !1116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1116

sw.bb3:                                           ; preds = %entry
  store i64 1048576, ptr %retval, align 8, !dbg !1117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1117

sw.bb4:                                           ; preds = %entry
  store i64 8388608, ptr %retval, align 8, !dbg !1118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1118

sw.bb5:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !1119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1119

sw.default:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1095, metadata !DIExpression()), !dbg !1120
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !1120
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !1121
  %tobool = icmp ne i32 %2, 0, !dbg !1121
  %lnot = xor i1 %tobool, true, !dbg !1121
  %lnot6 = xor i1 %lnot, true, !dbg !1121
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !1121
  %conv7 = sext i32 %lnot.ext to i64, !dbg !1121
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !1121
  %tobool8 = icmp ne i64 %expval, 0, !dbg !1121
  br i1 %tobool8, label %if.then, label %if.end, !dbg !1120

if.then:                                          ; preds = %sw.default
  br label %do.body, !dbg !1121

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !1122

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !1123

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !1123

do.end:                                           ; preds = %do.cond
  %3 = load i16, ptr %gmch_ctrl, align 2, !dbg !1122
  %conv10 = zext i16 %3 to i32, !dbg !1122
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.9, i32 noundef %conv10) #8, !dbg !1122
  br label %do.body11, !dbg !1122

do.body11:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !1125
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1098, metadata !DIExpression()), !dbg !1125
  store i32 2313, ptr %__flags, align 4, !dbg !1125
  br label %do.body12, !dbg !1125

do.body12:                                        ; preds = %do.body11
  br label %do.cond13, !dbg !1126

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !1126

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !1125

do.body15:                                        ; preds = %do.end14
  %4 = load i32, ptr %__flags, align 4, !dbg !1128
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 369, i32 %4, i64 12) #10, !dbg !1128, !srcloc !1130
  br label %do.cond16, !dbg !1128

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !1128

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !1125

do.body18:                                        ; preds = %do.end17
  br label %do.cond19, !dbg !1131

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !1131

do.end20:                                         ; preds = %do.cond19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !1122
  br label %do.cond21, !dbg !1125

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !1125

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !1122

do.body23:                                        ; preds = %do.end22
  br label %do.cond24, !dbg !1133

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !1133

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !1122

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !1122

do.end27:                                         ; preds = %do.cond26
  br label %if.end, !dbg !1122

if.end:                                           ; preds = %do.end27, %sw.default
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !1120
  %tobool28 = icmp ne i32 %5, 0, !dbg !1120
  %lnot29 = xor i1 %tobool28, true, !dbg !1120
  %lnot31 = xor i1 %lnot29, true, !dbg !1120
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !1120
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !1120
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !1120
  store i64 %expval34, ptr %tmp, align 8, !dbg !1121
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !1135
  %6 = load i64, ptr %tmp, align 8, !dbg !1120
  br label %sw.epilog, !dbg !1136

sw.epilog:                                        ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !1137
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1137

cleanup:                                          ; preds = %sw.epilog, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb
  call void @llvm.lifetime.end.p0(i64 2, ptr %gms) #10, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 2, ptr %gmch_ctrl) #10, !dbg !1138
  %7 = load i64, ptr %retval, align 8, !dbg !1138
  ret i64 %7, !dbg !1138
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @i830_stolen_base(i32 noundef %num, i32 noundef %slot, i32 noundef %func, i64 noundef %stolen_size) #0 section ".init.text" align 16 !dbg !1139 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %stolen_size.addr = alloca i64, align 8
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !1141, metadata !DIExpression()), !dbg !1145
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1142, metadata !DIExpression()), !dbg !1146
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1143, metadata !DIExpression()), !dbg !1147
  store i64 %stolen_size, ptr %stolen_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stolen_size.addr, metadata !1144, metadata !DIExpression()), !dbg !1148
  %call = call i64 @i830_mem_size() #9, !dbg !1149
  %call1 = call i64 @i830_tseg_size() #9, !dbg !1150
  %sub = sub i64 %call, %call1, !dbg !1151
  %0 = load i64, ptr %stolen_size.addr, align 8, !dbg !1152
  %sub2 = sub i64 %sub, %0, !dbg !1153
  ret i64 %sub2, !dbg !1154
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1155 dso_local void @__warn_printk(ptr noundef, ...) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @i830_mem_size() #0 section ".init.text" align 16 !dbg !1159 {
entry:
  %call = call zeroext i8 @read_pci_config_byte(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 99) #8, !dbg !1162
  %conv = zext i8 %call to i64, !dbg !1162
  %mul = mul i64 %conv, 33554432, !dbg !1163
  ret i64 %mul, !dbg !1164
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @i830_tseg_size() #0 section ".init.text" align 16 !dbg !1165 {
entry:
  %retval = alloca i64, align 8
  %esmramc = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %esmramc) #10, !dbg !1168
  call void @llvm.dbg.declare(metadata ptr %esmramc, metadata !1167, metadata !DIExpression()), !dbg !1169
  %call = call zeroext i8 @read_pci_config_byte(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -111) #8, !dbg !1170
  store i8 %call, ptr %esmramc, align 1, !dbg !1169
  %0 = load i8, ptr %esmramc, align 1, !dbg !1171
  %conv = zext i8 %0 to i32, !dbg !1171
  %and = and i32 %conv, 1, !dbg !1173
  %tobool = icmp ne i32 %and, 0, !dbg !1173
  br i1 %tobool, label %if.end, label %if.then, !dbg !1174

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !1175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1175

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %esmramc, align 1, !dbg !1176
  %conv1 = zext i8 %1 to i32, !dbg !1176
  %and2 = and i32 %conv1, 2, !dbg !1178
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1178
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !1179

if.then4:                                         ; preds = %if.end
  store i64 1048576, ptr %retval, align 8, !dbg !1180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1180

if.else:                                          ; preds = %if.end
  store i64 524288, ptr %retval, align 8, !dbg !1181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1181

cleanup:                                          ; preds = %if.else, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %esmramc) #10, !dbg !1182
  %2 = load i64, ptr %retval, align 8, !dbg !1182
  ret i64 %2, !dbg !1182
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @i845_stolen_base(i32 noundef %num, i32 noundef %slot, i32 noundef %func, i64 noundef %stolen_size) #0 section ".init.text" align 16 !dbg !1183 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %stolen_size.addr = alloca i64, align 8
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !1185, metadata !DIExpression()), !dbg !1189
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1186, metadata !DIExpression()), !dbg !1190
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1187, metadata !DIExpression()), !dbg !1191
  store i64 %stolen_size, ptr %stolen_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stolen_size.addr, metadata !1188, metadata !DIExpression()), !dbg !1192
  %call = call i64 @i830_mem_size() #9, !dbg !1193
  %call1 = call i64 @i845_tseg_size() #9, !dbg !1194
  %sub = sub i64 %call, %call1, !dbg !1195
  %0 = load i64, ptr %stolen_size.addr, align 8, !dbg !1196
  %sub2 = sub i64 %sub, %0, !dbg !1197
  ret i64 %sub2, !dbg !1198
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @i845_tseg_size() #0 section ".init.text" align 16 !dbg !1199 {
entry:
  %retval = alloca i64, align 8
  %esmramc = alloca i8, align 1
  %tseg_size = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %esmramc) #10, !dbg !1210
  call void @llvm.dbg.declare(metadata ptr %esmramc, metadata !1201, metadata !DIExpression()), !dbg !1211
  %call = call zeroext i8 @read_pci_config_byte(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -98) #8, !dbg !1212
  store i8 %call, ptr %esmramc, align 1, !dbg !1211
  call void @llvm.lifetime.start.p0(i64 1, ptr %tseg_size) #10, !dbg !1213
  call void @llvm.dbg.declare(metadata ptr %tseg_size, metadata !1202, metadata !DIExpression()), !dbg !1214
  %0 = load i8, ptr %esmramc, align 1, !dbg !1215
  %conv = zext i8 %0 to i32, !dbg !1215
  %and = and i32 %conv, 6, !dbg !1216
  %conv1 = trunc i32 %and to i8, !dbg !1215
  store i8 %conv1, ptr %tseg_size, align 1, !dbg !1214
  %1 = load i8, ptr %esmramc, align 1, !dbg !1217
  %conv2 = zext i8 %1 to i32, !dbg !1217
  %and3 = and i32 %conv2, 1, !dbg !1219
  %tobool = icmp ne i32 %and3, 0, !dbg !1219
  br i1 %tobool, label %if.end, label %if.then, !dbg !1220

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !1221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1221

if.end:                                           ; preds = %entry
  %2 = load i8, ptr %tseg_size, align 1, !dbg !1222
  %conv4 = zext i8 %2 to i32, !dbg !1222
  switch i32 %conv4, label %sw.default [
    i32 4, label %sw.bb
    i32 6, label %sw.bb5
  ], !dbg !1223

sw.bb:                                            ; preds = %if.end
  store i64 524288, ptr %retval, align 8, !dbg !1224
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1224

sw.bb5:                                           ; preds = %if.end
  store i64 1048576, ptr %retval, align 8, !dbg !1225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1225

sw.default:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !1226
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1203, metadata !DIExpression()), !dbg !1226
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !1226
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !1227
  %tobool6 = icmp ne i32 %3, 0, !dbg !1227
  %lnot = xor i1 %tobool6, true, !dbg !1227
  %lnot7 = xor i1 %lnot, true, !dbg !1227
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !1227
  %conv8 = sext i32 %lnot.ext to i64, !dbg !1227
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !1227
  %tobool9 = icmp ne i64 %expval, 0, !dbg !1227
  br i1 %tobool9, label %if.then10, label %if.end30, !dbg !1226

if.then10:                                        ; preds = %sw.default
  br label %do.body, !dbg !1227

do.body:                                          ; preds = %if.then10
  br label %do.body11, !dbg !1228

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !1229

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !1229

do.end:                                           ; preds = %do.cond
  %4 = load i8, ptr %esmramc, align 1, !dbg !1228
  %conv12 = zext i8 %4 to i32, !dbg !1228
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.11, i32 noundef %conv12) #8, !dbg !1228
  br label %do.body13, !dbg !1228

do.body13:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !1231
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1206, metadata !DIExpression()), !dbg !1231
  store i32 2313, ptr %__flags, align 4, !dbg !1231
  br label %do.body14, !dbg !1231

do.body14:                                        ; preds = %do.body13
  br label %do.cond15, !dbg !1232

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !1232

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !1231

do.body17:                                        ; preds = %do.end16
  %5 = load i32, ptr %__flags, align 4, !dbg !1234
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 270, i32 %5, i64 12) #10, !dbg !1234, !srcloc !1236
  br label %do.cond18, !dbg !1234

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !1234

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !1231

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !1237

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !1237

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !1228
  br label %do.cond23, !dbg !1231

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !1231

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !1228

do.body25:                                        ; preds = %do.end24
  br label %do.cond26, !dbg !1239

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !1239

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !1228

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !1228

do.end29:                                         ; preds = %do.cond28
  br label %if.end30, !dbg !1228

if.end30:                                         ; preds = %do.end29, %sw.default
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !1226
  %tobool31 = icmp ne i32 %6, 0, !dbg !1226
  %lnot32 = xor i1 %tobool31, true, !dbg !1226
  %lnot34 = xor i1 %lnot32, true, !dbg !1226
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !1226
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !1226
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !1226
  store i64 %expval37, ptr %tmp, align 8, !dbg !1227
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !1241
  %7 = load i64, ptr %tmp, align 8, !dbg !1226
  br label %sw.epilog, !dbg !1242

sw.epilog:                                        ; preds = %if.end30
  store i64 0, ptr %retval, align 8, !dbg !1243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1243

cleanup:                                          ; preds = %sw.epilog, %sw.bb5, %sw.bb, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %tseg_size) #10, !dbg !1244
  call void @llvm.lifetime.end.p0(i64 1, ptr %esmramc) #10, !dbg !1244
  %8 = load i64, ptr %retval, align 8, !dbg !1244
  ret i64 %8, !dbg !1244
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @gen3_stolen_size(i32 noundef %num, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !1245 {
entry:
  %retval = alloca i64, align 8
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %gmch_ctrl = alloca i16, align 2
  %gms = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !1247, metadata !DIExpression()), !dbg !1259
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1248, metadata !DIExpression()), !dbg !1260
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1249, metadata !DIExpression()), !dbg !1261
  call void @llvm.lifetime.start.p0(i64 2, ptr %gmch_ctrl) #10, !dbg !1262
  call void @llvm.dbg.declare(metadata ptr %gmch_ctrl, metadata !1250, metadata !DIExpression()), !dbg !1263
  call void @llvm.lifetime.start.p0(i64 2, ptr %gms) #10, !dbg !1264
  call void @llvm.dbg.declare(metadata ptr %gms, metadata !1251, metadata !DIExpression()), !dbg !1265
  %call = call zeroext i16 @read_pci_config_16(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 82) #8, !dbg !1266
  store i16 %call, ptr %gmch_ctrl, align 2, !dbg !1267
  %0 = load i16, ptr %gmch_ctrl, align 2, !dbg !1268
  %conv = zext i16 %0 to i32, !dbg !1268
  %and = and i32 %conv, 240, !dbg !1269
  %conv1 = trunc i32 %and to i16, !dbg !1268
  store i16 %conv1, ptr %gms, align 2, !dbg !1270
  %1 = load i16, ptr %gms, align 2, !dbg !1271
  %conv2 = zext i16 %1 to i32, !dbg !1271
  switch i32 %conv2, label %sw.default [
    i32 16, label %sw.bb
    i32 32, label %sw.bb3
    i32 48, label %sw.bb4
    i32 64, label %sw.bb5
    i32 80, label %sw.bb6
    i32 96, label %sw.bb7
    i32 112, label %sw.bb8
    i32 128, label %sw.bb9
    i32 144, label %sw.bb10
    i32 160, label %sw.bb11
    i32 176, label %sw.bb12
    i32 192, label %sw.bb13
    i32 208, label %sw.bb14
  ], !dbg !1272

sw.bb:                                            ; preds = %entry
  store i64 1048576, ptr %retval, align 8, !dbg !1273
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1273

sw.bb3:                                           ; preds = %entry
  store i64 4194304, ptr %retval, align 8, !dbg !1274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1274

sw.bb4:                                           ; preds = %entry
  store i64 8388608, ptr %retval, align 8, !dbg !1275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1275

sw.bb5:                                           ; preds = %entry
  store i64 16777216, ptr %retval, align 8, !dbg !1276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1276

sw.bb6:                                           ; preds = %entry
  store i64 33554432, ptr %retval, align 8, !dbg !1277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1277

sw.bb7:                                           ; preds = %entry
  store i64 50331648, ptr %retval, align 8, !dbg !1278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1278

sw.bb8:                                           ; preds = %entry
  store i64 67108864, ptr %retval, align 8, !dbg !1279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1279

sw.bb9:                                           ; preds = %entry
  store i64 134217728, ptr %retval, align 8, !dbg !1280
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1280

sw.bb10:                                          ; preds = %entry
  store i64 268435456, ptr %retval, align 8, !dbg !1281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1281

sw.bb11:                                          ; preds = %entry
  store i64 100663296, ptr %retval, align 8, !dbg !1282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1282

sw.bb12:                                          ; preds = %entry
  store i64 167772160, ptr %retval, align 8, !dbg !1283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1283

sw.bb13:                                          ; preds = %entry
  store i64 234881024, ptr %retval, align 8, !dbg !1284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1284

sw.bb14:                                          ; preds = %entry
  store i64 369098752, ptr %retval, align 8, !dbg !1285
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1285

sw.default:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !1286
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1252, metadata !DIExpression()), !dbg !1286
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !1286
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !1287
  %tobool = icmp ne i32 %2, 0, !dbg !1287
  %lnot = xor i1 %tobool, true, !dbg !1287
  %lnot15 = xor i1 %lnot, true, !dbg !1287
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !1287
  %conv16 = sext i32 %lnot.ext to i64, !dbg !1287
  %expval = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !1287
  %tobool17 = icmp ne i64 %expval, 0, !dbg !1287
  br i1 %tobool17, label %if.then, label %if.end, !dbg !1286

if.then:                                          ; preds = %sw.default
  br label %do.body, !dbg !1287

do.body:                                          ; preds = %if.then
  br label %do.body18, !dbg !1288

do.body18:                                        ; preds = %do.body
  br label %do.cond, !dbg !1289

do.cond:                                          ; preds = %do.body18
  br label %do.end, !dbg !1289

do.end:                                           ; preds = %do.cond
  %3 = load i16, ptr %gmch_ctrl, align 2, !dbg !1288
  %conv19 = zext i16 %3 to i32, !dbg !1288
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.9, i32 noundef %conv19) #8, !dbg !1288
  br label %do.body20, !dbg !1288

do.body20:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !1291
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1255, metadata !DIExpression()), !dbg !1291
  store i32 2313, ptr %__flags, align 4, !dbg !1291
  br label %do.body21, !dbg !1291

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !1292

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !1292

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !1291

do.body24:                                        ; preds = %do.end23
  %4 = load i32, ptr %__flags, align 4, !dbg !1294
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 398, i32 %4, i64 12) #10, !dbg !1294, !srcloc !1296
  br label %do.cond25, !dbg !1294

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !1294

do.end26:                                         ; preds = %do.cond25
  br label %do.body27, !dbg !1291

do.body27:                                        ; preds = %do.end26
  br label %do.cond28, !dbg !1297

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !1297

do.end29:                                         ; preds = %do.cond28
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !1288
  br label %do.cond30, !dbg !1291

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !1291

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !1288

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !1299

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !1299

do.end34:                                         ; preds = %do.cond33
  br label %do.cond35, !dbg !1288

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !1288

do.end36:                                         ; preds = %do.cond35
  br label %if.end, !dbg !1288

if.end:                                           ; preds = %do.end36, %sw.default
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !1286
  %tobool37 = icmp ne i32 %5, 0, !dbg !1286
  %lnot38 = xor i1 %tobool37, true, !dbg !1286
  %lnot40 = xor i1 %lnot38, true, !dbg !1286
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !1286
  %conv42 = sext i32 %lnot.ext41 to i64, !dbg !1286
  %expval43 = call i64 @llvm.expect.i64(i64 %conv42, i64 0), !dbg !1286
  store i64 %expval43, ptr %tmp, align 8, !dbg !1287
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !1301
  %6 = load i64, ptr %tmp, align 8, !dbg !1286
  br label %sw.epilog, !dbg !1302

sw.epilog:                                        ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !1303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1303

cleanup:                                          ; preds = %sw.epilog, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb
  call void @llvm.lifetime.end.p0(i64 2, ptr %gms) #10, !dbg !1304
  call void @llvm.lifetime.end.p0(i64 2, ptr %gmch_ctrl) #10, !dbg !1304
  %7 = load i64, ptr %retval, align 8, !dbg !1304
  ret i64 %7, !dbg !1304
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @i85x_stolen_base(i32 noundef %num, i32 noundef %slot, i32 noundef %func, i64 noundef %stolen_size) #0 section ".init.text" align 16 !dbg !1305 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %stolen_size.addr = alloca i64, align 8
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !1307, metadata !DIExpression()), !dbg !1311
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1308, metadata !DIExpression()), !dbg !1312
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1309, metadata !DIExpression()), !dbg !1313
  store i64 %stolen_size, ptr %stolen_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stolen_size.addr, metadata !1310, metadata !DIExpression()), !dbg !1314
  %call = call i64 @i85x_mem_size() #9, !dbg !1315
  %call1 = call i64 @i85x_tseg_size() #9, !dbg !1316
  %sub = sub i64 %call, %call1, !dbg !1317
  %0 = load i64, ptr %stolen_size.addr, align 8, !dbg !1318
  %sub2 = sub i64 %sub, %0, !dbg !1319
  ret i64 %sub2, !dbg !1320
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @i85x_mem_size() #0 section ".init.text" align 16 !dbg !1321 {
entry:
  %call = call zeroext i8 @read_pci_config_byte(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 67) #8, !dbg !1322
  %conv = zext i8 %call to i64, !dbg !1322
  %mul = mul i64 %conv, 33554432, !dbg !1323
  ret i64 %mul, !dbg !1324
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @i85x_tseg_size() #0 section ".init.text" align 16 !dbg !1325 {
entry:
  %retval = alloca i64, align 8
  %esmramc = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %esmramc) #10, !dbg !1328
  call void @llvm.dbg.declare(metadata ptr %esmramc, metadata !1327, metadata !DIExpression()), !dbg !1329
  %call = call zeroext i8 @read_pci_config_byte(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 97) #8, !dbg !1330
  store i8 %call, ptr %esmramc, align 1, !dbg !1329
  %0 = load i8, ptr %esmramc, align 1, !dbg !1331
  %conv = zext i8 %0 to i32, !dbg !1331
  %and = and i32 %conv, 1, !dbg !1333
  %tobool = icmp ne i32 %and, 0, !dbg !1333
  br i1 %tobool, label %if.end, label %if.then, !dbg !1334

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !1335
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1335

if.end:                                           ; preds = %entry
  store i64 1048576, ptr %retval, align 8, !dbg !1336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1336

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %esmramc) #10, !dbg !1337
  %1 = load i64, ptr %retval, align 8, !dbg !1337
  ret i64 %1, !dbg !1337
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @i865_stolen_base(i32 noundef %num, i32 noundef %slot, i32 noundef %func, i64 noundef %stolen_size) #0 section ".init.text" align 16 !dbg !1338 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %stolen_size.addr = alloca i64, align 8
  %toud = alloca i16, align 2
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !1340, metadata !DIExpression()), !dbg !1345
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1341, metadata !DIExpression()), !dbg !1346
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1342, metadata !DIExpression()), !dbg !1347
  store i64 %stolen_size, ptr %stolen_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stolen_size.addr, metadata !1343, metadata !DIExpression()), !dbg !1348
  call void @llvm.lifetime.start.p0(i64 2, ptr %toud) #10, !dbg !1349
  call void @llvm.dbg.declare(metadata ptr %toud, metadata !1344, metadata !DIExpression()), !dbg !1350
  store i16 0, ptr %toud, align 2, !dbg !1350
  %call = call zeroext i16 @read_pci_config_16(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -60) #8, !dbg !1351
  store i16 %call, ptr %toud, align 2, !dbg !1352
  %0 = load i16, ptr %toud, align 2, !dbg !1353
  %conv = zext i16 %0 to i64, !dbg !1353
  %mul = mul i64 %conv, 65536, !dbg !1354
  %call1 = call i64 @i845_tseg_size() #9, !dbg !1355
  %add = add i64 %mul, %call1, !dbg !1356
  call void @llvm.lifetime.end.p0(i64 2, ptr %toud) #10, !dbg !1357
  ret i64 %add, !dbg !1358
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @gen3_stolen_base(i32 noundef %num, i32 noundef %slot, i32 noundef %func, i64 noundef %stolen_size) #0 section ".init.text" align 16 !dbg !1359 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %stolen_size.addr = alloca i64, align 8
  %bsm = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !1361, metadata !DIExpression()), !dbg !1366
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1362, metadata !DIExpression()), !dbg !1367
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1363, metadata !DIExpression()), !dbg !1368
  store i64 %stolen_size, ptr %stolen_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stolen_size.addr, metadata !1364, metadata !DIExpression()), !dbg !1369
  call void @llvm.lifetime.start.p0(i64 4, ptr %bsm) #10, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %bsm, metadata !1365, metadata !DIExpression()), !dbg !1371
  %0 = load i32, ptr %num.addr, align 4, !dbg !1372
  %conv = trunc i32 %0 to i8, !dbg !1372
  %1 = load i32, ptr %slot.addr, align 4, !dbg !1373
  %conv1 = trunc i32 %1 to i8, !dbg !1373
  %2 = load i32, ptr %func.addr, align 4, !dbg !1374
  %conv2 = trunc i32 %2 to i8, !dbg !1374
  %call = call i32 @read_pci_config(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, i8 noundef zeroext 92) #8, !dbg !1375
  store i32 %call, ptr %bsm, align 4, !dbg !1376
  %3 = load i32, ptr %bsm, align 4, !dbg !1377
  %and = and i32 %3, -1048576, !dbg !1378
  %conv3 = zext i32 %and to i64, !dbg !1377
  call void @llvm.lifetime.end.p0(i64 4, ptr %bsm) #10, !dbg !1379
  ret i64 %conv3, !dbg !1380
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @gen6_stolen_size(i32 noundef %num, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !1381 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %gmch_ctrl = alloca i16, align 2
  %gms = alloca i16, align 2
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !1383, metadata !DIExpression()), !dbg !1388
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1384, metadata !DIExpression()), !dbg !1389
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1385, metadata !DIExpression()), !dbg !1390
  call void @llvm.lifetime.start.p0(i64 2, ptr %gmch_ctrl) #10, !dbg !1391
  call void @llvm.dbg.declare(metadata ptr %gmch_ctrl, metadata !1386, metadata !DIExpression()), !dbg !1392
  call void @llvm.lifetime.start.p0(i64 2, ptr %gms) #10, !dbg !1393
  call void @llvm.dbg.declare(metadata ptr %gms, metadata !1387, metadata !DIExpression()), !dbg !1394
  %0 = load i32, ptr %num.addr, align 4, !dbg !1395
  %conv = trunc i32 %0 to i8, !dbg !1395
  %1 = load i32, ptr %slot.addr, align 4, !dbg !1396
  %conv1 = trunc i32 %1 to i8, !dbg !1396
  %2 = load i32, ptr %func.addr, align 4, !dbg !1397
  %conv2 = trunc i32 %2 to i8, !dbg !1397
  %call = call zeroext i16 @read_pci_config_16(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, i8 noundef zeroext 80) #8, !dbg !1398
  store i16 %call, ptr %gmch_ctrl, align 2, !dbg !1399
  %3 = load i16, ptr %gmch_ctrl, align 2, !dbg !1400
  %conv3 = zext i16 %3 to i32, !dbg !1400
  %shr = ashr i32 %conv3, 3, !dbg !1401
  %and = and i32 %shr, 31, !dbg !1402
  %conv4 = trunc i32 %and to i16, !dbg !1403
  store i16 %conv4, ptr %gms, align 2, !dbg !1404
  %4 = load i16, ptr %gms, align 2, !dbg !1405
  %conv5 = zext i16 %4 to i64, !dbg !1405
  %mul = mul i64 %conv5, 33554432, !dbg !1406
  call void @llvm.lifetime.end.p0(i64 2, ptr %gms) #10, !dbg !1407
  call void @llvm.lifetime.end.p0(i64 2, ptr %gmch_ctrl) #10, !dbg !1407
  ret i64 %mul, !dbg !1408
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @gen8_stolen_size(i32 noundef %num, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !1409 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %gmch_ctrl = alloca i16, align 2
  %gms = alloca i16, align 2
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !1411, metadata !DIExpression()), !dbg !1416
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1412, metadata !DIExpression()), !dbg !1417
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1413, metadata !DIExpression()), !dbg !1418
  call void @llvm.lifetime.start.p0(i64 2, ptr %gmch_ctrl) #10, !dbg !1419
  call void @llvm.dbg.declare(metadata ptr %gmch_ctrl, metadata !1414, metadata !DIExpression()), !dbg !1420
  call void @llvm.lifetime.start.p0(i64 2, ptr %gms) #10, !dbg !1421
  call void @llvm.dbg.declare(metadata ptr %gms, metadata !1415, metadata !DIExpression()), !dbg !1422
  %0 = load i32, ptr %num.addr, align 4, !dbg !1423
  %conv = trunc i32 %0 to i8, !dbg !1423
  %1 = load i32, ptr %slot.addr, align 4, !dbg !1424
  %conv1 = trunc i32 %1 to i8, !dbg !1424
  %2 = load i32, ptr %func.addr, align 4, !dbg !1425
  %conv2 = trunc i32 %2 to i8, !dbg !1425
  %call = call zeroext i16 @read_pci_config_16(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, i8 noundef zeroext 80) #8, !dbg !1426
  store i16 %call, ptr %gmch_ctrl, align 2, !dbg !1427
  %3 = load i16, ptr %gmch_ctrl, align 2, !dbg !1428
  %conv3 = zext i16 %3 to i32, !dbg !1428
  %shr = ashr i32 %conv3, 8, !dbg !1429
  %and = and i32 %shr, 255, !dbg !1430
  %conv4 = trunc i32 %and to i16, !dbg !1431
  store i16 %conv4, ptr %gms, align 2, !dbg !1432
  %4 = load i16, ptr %gms, align 2, !dbg !1433
  %conv5 = zext i16 %4 to i64, !dbg !1433
  %mul = mul i64 %conv5, 33554432, !dbg !1434
  call void @llvm.lifetime.end.p0(i64 2, ptr %gms) #10, !dbg !1435
  call void @llvm.lifetime.end.p0(i64 2, ptr %gmch_ctrl) #10, !dbg !1435
  ret i64 %mul, !dbg !1436
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @chv_stolen_size(i32 noundef %num, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !1437 {
entry:
  %retval = alloca i64, align 8
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %gmch_ctrl = alloca i16, align 2
  %gms = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !1439, metadata !DIExpression()), !dbg !1444
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1440, metadata !DIExpression()), !dbg !1445
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1441, metadata !DIExpression()), !dbg !1446
  call void @llvm.lifetime.start.p0(i64 2, ptr %gmch_ctrl) #10, !dbg !1447
  call void @llvm.dbg.declare(metadata ptr %gmch_ctrl, metadata !1442, metadata !DIExpression()), !dbg !1448
  call void @llvm.lifetime.start.p0(i64 2, ptr %gms) #10, !dbg !1449
  call void @llvm.dbg.declare(metadata ptr %gms, metadata !1443, metadata !DIExpression()), !dbg !1450
  %0 = load i32, ptr %num.addr, align 4, !dbg !1451
  %conv = trunc i32 %0 to i8, !dbg !1451
  %1 = load i32, ptr %slot.addr, align 4, !dbg !1452
  %conv1 = trunc i32 %1 to i8, !dbg !1452
  %2 = load i32, ptr %func.addr, align 4, !dbg !1453
  %conv2 = trunc i32 %2 to i8, !dbg !1453
  %call = call zeroext i16 @read_pci_config_16(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, i8 noundef zeroext 80) #8, !dbg !1454
  store i16 %call, ptr %gmch_ctrl, align 2, !dbg !1455
  %3 = load i16, ptr %gmch_ctrl, align 2, !dbg !1456
  %conv3 = zext i16 %3 to i32, !dbg !1456
  %shr = ashr i32 %conv3, 3, !dbg !1457
  %and = and i32 %shr, 31, !dbg !1458
  %conv4 = trunc i32 %and to i16, !dbg !1459
  store i16 %conv4, ptr %gms, align 2, !dbg !1460
  %4 = load i16, ptr %gms, align 2, !dbg !1461
  %conv5 = zext i16 %4 to i32, !dbg !1461
  %cmp = icmp slt i32 %conv5, 17, !dbg !1463
  br i1 %cmp, label %if.then, label %if.else, !dbg !1464

if.then:                                          ; preds = %entry
  %5 = load i16, ptr %gms, align 2, !dbg !1465
  %conv7 = zext i16 %5 to i64, !dbg !1465
  %mul = mul i64 %conv7, 33554432, !dbg !1466
  store i64 %mul, ptr %retval, align 8, !dbg !1467
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1467

if.else:                                          ; preds = %entry
  %6 = load i16, ptr %gms, align 2, !dbg !1468
  %conv8 = zext i16 %6 to i32, !dbg !1468
  %cmp9 = icmp slt i32 %conv8, 23, !dbg !1470
  br i1 %cmp9, label %if.then11, label %if.else15, !dbg !1471

if.then11:                                        ; preds = %if.else
  %7 = load i16, ptr %gms, align 2, !dbg !1472
  %conv12 = zext i16 %7 to i32, !dbg !1472
  %sub = sub i32 %conv12, 17, !dbg !1473
  %conv13 = sext i32 %sub to i64, !dbg !1474
  %mul14 = mul i64 %conv13, 4194304, !dbg !1475
  %add = add i64 %mul14, 8388608, !dbg !1476
  store i64 %add, ptr %retval, align 8, !dbg !1477
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1477

if.else15:                                        ; preds = %if.else
  %8 = load i16, ptr %gms, align 2, !dbg !1478
  %conv16 = zext i16 %8 to i32, !dbg !1478
  %sub17 = sub i32 %conv16, 23, !dbg !1479
  %conv18 = sext i32 %sub17 to i64, !dbg !1480
  %mul19 = mul i64 %conv18, 4194304, !dbg !1481
  %add20 = add i64 %mul19, 37748736, !dbg !1482
  store i64 %add20, ptr %retval, align 8, !dbg !1483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1483

cleanup:                                          ; preds = %if.else15, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %gms) #10, !dbg !1484
  call void @llvm.lifetime.end.p0(i64 2, ptr %gmch_ctrl) #10, !dbg !1484
  %9 = load i64, ptr %retval, align 8, !dbg !1484
  ret i64 %9, !dbg !1484
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @gen9_stolen_size(i32 noundef %num, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !1485 {
entry:
  %retval = alloca i64, align 8
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %gmch_ctrl = alloca i16, align 2
  %gms = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !1487, metadata !DIExpression()), !dbg !1492
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1488, metadata !DIExpression()), !dbg !1493
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1489, metadata !DIExpression()), !dbg !1494
  call void @llvm.lifetime.start.p0(i64 2, ptr %gmch_ctrl) #10, !dbg !1495
  call void @llvm.dbg.declare(metadata ptr %gmch_ctrl, metadata !1490, metadata !DIExpression()), !dbg !1496
  call void @llvm.lifetime.start.p0(i64 2, ptr %gms) #10, !dbg !1497
  call void @llvm.dbg.declare(metadata ptr %gms, metadata !1491, metadata !DIExpression()), !dbg !1498
  %0 = load i32, ptr %num.addr, align 4, !dbg !1499
  %conv = trunc i32 %0 to i8, !dbg !1499
  %1 = load i32, ptr %slot.addr, align 4, !dbg !1500
  %conv1 = trunc i32 %1 to i8, !dbg !1500
  %2 = load i32, ptr %func.addr, align 4, !dbg !1501
  %conv2 = trunc i32 %2 to i8, !dbg !1501
  %call = call zeroext i16 @read_pci_config_16(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, i8 noundef zeroext 80) #8, !dbg !1502
  store i16 %call, ptr %gmch_ctrl, align 2, !dbg !1503
  %3 = load i16, ptr %gmch_ctrl, align 2, !dbg !1504
  %conv3 = zext i16 %3 to i32, !dbg !1504
  %shr = ashr i32 %conv3, 8, !dbg !1505
  %and = and i32 %shr, 255, !dbg !1506
  %conv4 = trunc i32 %and to i16, !dbg !1507
  store i16 %conv4, ptr %gms, align 2, !dbg !1508
  %4 = load i16, ptr %gms, align 2, !dbg !1509
  %conv5 = zext i16 %4 to i32, !dbg !1509
  %cmp = icmp slt i32 %conv5, 240, !dbg !1511
  br i1 %cmp, label %if.then, label %if.else, !dbg !1512

if.then:                                          ; preds = %entry
  %5 = load i16, ptr %gms, align 2, !dbg !1513
  %conv7 = zext i16 %5 to i64, !dbg !1513
  %mul = mul i64 %conv7, 33554432, !dbg !1514
  store i64 %mul, ptr %retval, align 8, !dbg !1515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1515

if.else:                                          ; preds = %entry
  %6 = load i16, ptr %gms, align 2, !dbg !1516
  %conv8 = zext i16 %6 to i32, !dbg !1516
  %sub = sub i32 %conv8, 240, !dbg !1517
  %conv9 = sext i32 %sub to i64, !dbg !1518
  %mul10 = mul i64 %conv9, 4194304, !dbg !1519
  %add = add i64 %mul10, 4194304, !dbg !1520
  store i64 %add, ptr %retval, align 8, !dbg !1521
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1521

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %gms) #10, !dbg !1522
  call void @llvm.lifetime.end.p0(i64 2, ptr %gmch_ctrl) #10, !dbg !1522
  %7 = load i64, ptr %retval, align 8, !dbg !1522
  ret i64 %7, !dbg !1522
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @gen11_stolen_base(i32 noundef %num, i32 noundef %slot, i32 noundef %func, i64 noundef %stolen_size) #0 section ".init.text" align 16 !dbg !1523 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %stolen_size.addr = alloca i64, align 8
  %bsm = alloca i64, align 8
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !1525, metadata !DIExpression()), !dbg !1530
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1526, metadata !DIExpression()), !dbg !1531
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1527, metadata !DIExpression()), !dbg !1532
  store i64 %stolen_size, ptr %stolen_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stolen_size.addr, metadata !1528, metadata !DIExpression()), !dbg !1533
  call void @llvm.lifetime.start.p0(i64 8, ptr %bsm) #10, !dbg !1534
  call void @llvm.dbg.declare(metadata ptr %bsm, metadata !1529, metadata !DIExpression()), !dbg !1535
  %0 = load i32, ptr %num.addr, align 4, !dbg !1536
  %conv = trunc i32 %0 to i8, !dbg !1536
  %1 = load i32, ptr %slot.addr, align 4, !dbg !1537
  %conv1 = trunc i32 %1 to i8, !dbg !1537
  %2 = load i32, ptr %func.addr, align 4, !dbg !1538
  %conv2 = trunc i32 %2 to i8, !dbg !1538
  %call = call i32 @read_pci_config(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, i8 noundef zeroext -64) #8, !dbg !1539
  %conv3 = zext i32 %call to i64, !dbg !1539
  store i64 %conv3, ptr %bsm, align 8, !dbg !1540
  %3 = load i64, ptr %bsm, align 8, !dbg !1541
  %and = and i64 %3, 4293918720, !dbg !1541
  store i64 %and, ptr %bsm, align 8, !dbg !1541
  %4 = load i32, ptr %num.addr, align 4, !dbg !1542
  %conv4 = trunc i32 %4 to i8, !dbg !1542
  %5 = load i32, ptr %slot.addr, align 4, !dbg !1543
  %conv5 = trunc i32 %5 to i8, !dbg !1543
  %6 = load i32, ptr %func.addr, align 4, !dbg !1544
  %conv6 = trunc i32 %6 to i8, !dbg !1544
  %call7 = call i32 @read_pci_config(i8 noundef zeroext %conv4, i8 noundef zeroext %conv5, i8 noundef zeroext %conv6, i8 noundef zeroext -60) #8, !dbg !1545
  %conv8 = zext i32 %call7 to i64, !dbg !1546
  %shl = shl i64 %conv8, 32, !dbg !1547
  %7 = load i64, ptr %bsm, align 8, !dbg !1548
  %or = or i64 %7, %shl, !dbg !1548
  store i64 %or, ptr %bsm, align 8, !dbg !1548
  %8 = load i64, ptr %bsm, align 8, !dbg !1549
  call void @llvm.lifetime.end.p0(i64 8, ptr %bsm) #10, !dbg !1550
  ret i64 %8, !dbg !1551
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1552 dso_local void @e820__range_add(i64 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1556 dso_local i32 @e820__update_table(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1572 dso_local void @write_pci_config_16(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1575 dso_local void @__const_udelay(i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1579 dso_local ptr @early_ioremap(i64 noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1583 dso_local i32 @ioread32(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1589 dso_local void @iowrite32(i32 noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1592 dso_local void @early_iounmap(ptr noundef, i64 noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!196, !197, !198, !199, !200, !201, !202, !203}
!llvm.ident = !{!204}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "intel_graphics_stolen_res", scope: !2, file: !3, line: 564, type: !182, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.early-quirks.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/early-quirks\22 -D KBUILD_BASENAME=\22early_quirks\22 -D KBUILD_MODNAME=\22early_quirks\22 -D __KBUILD_MODNAME=kmod_early_quirks -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/early-quirks.ll arch/x86/kernel/early-quirks.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !23, globals: !49, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/early-quirks.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af24f861e6e2312e7b134f1d872a530c")
!4 = !{!5, !18}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "e820_type", file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./arch/x86/include/asm/e820/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3d4b2499539a4fc8ec760e67f9268a5")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17}
!9 = !DIEnumerator(name: "E820_TYPE_RAM", value: 1)
!10 = !DIEnumerator(name: "E820_TYPE_RESERVED", value: 2)
!11 = !DIEnumerator(name: "E820_TYPE_ACPI", value: 3)
!12 = !DIEnumerator(name: "E820_TYPE_NVS", value: 4)
!13 = !DIEnumerator(name: "E820_TYPE_UNUSABLE", value: 5)
!14 = !DIEnumerator(name: "E820_TYPE_PMEM", value: 7)
!15 = !DIEnumerator(name: "E820_TYPE_PRAM", value: 12)
!16 = !DIEnumerator(name: "E820_TYPE_SOFT_RESERVED", value: 4026531839, isUnsigned: true)
!17 = !DIEnumerator(name: "E820_TYPE_RESERVED_KERN", value: 128)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 10, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "false", value: 0)
!22 = !DIEnumerator(name: "true", value: 1)
!23 = !{!24, !25, !26, !46, !37, !47}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_early_ops", file: !3, line: 463, size: 128, elements: !29)
!29 = !{!30, !42}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "stolen_size", scope: !28, file: !3, line: 464, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !25, !25, !25}
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !35, line: 164, baseType: !36)
!35 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !35, line: 159, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !38, line: 23, baseType: !39)
!38 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !40, line: 31, baseType: !41)
!40 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!41 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "stolen_base", scope: !28, file: !3, line: 465, baseType: !43, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{!34, !25, !25, !25, !34}
!46 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !48, line: 171, baseType: !25)
!48 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!49 = !{!0, !50, !52, !70, !76, !81, !83, !88, !93, !98, !103, !108, !110, !128, !130, !135, !140, !142, !147, !149, !151, !153, !155, !157, !159, !161, !163, !168, !173, !175, !177}
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intel_graphics_stolen_res305", scope: !2, file: !3, line: 565, type: !24, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "early_qrk", scope: !2, file: !3, line: 700, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 3072, elements: !68)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chipset", file: !3, line: 691, size: 256, elements: !56)
!56 = !{!57, !60, !61, !62, !63, !64}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !55, file: !3, line: 692, baseType: !58, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !38, line: 21, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !40, line: 27, baseType: !7)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !55, file: !3, line: 693, baseType: !58, size: 32, offset: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !55, file: !3, line: 694, baseType: !58, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !55, file: !3, line: 695, baseType: !58, size: 32, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !55, file: !3, line: 696, baseType: !58, size: 32, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !55, file: !3, line: 697, baseType: !65, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !25, !25, !25}
!68 = !{!69}
!69 = !DISubrange(count: 12)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 40, elements: !74)
!73 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!74 = !{!75}
!75 = !DISubrange(count: 5)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !3, line: 104, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 448, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 56)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !78, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !3, line: 43, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 472, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 59)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 488, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 61)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !3, line: 48, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 464, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 58)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !3, line: 154, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 184, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 23)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !3, line: 155, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 264, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 33)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !100, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "intel_early_ids", scope: !2, file: !3, line: 520, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 105280, elements: !126)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !115, line: 44, size: 320, elements: !116)
!115 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!116 = !{!117, !118, !119, !120, !121, !122, !123, !125}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !114, file: !115, line: 45, baseType: !59, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !114, file: !115, line: 45, baseType: !59, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !114, file: !115, line: 46, baseType: !59, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !114, file: !115, line: 46, baseType: !59, size: 32, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !114, file: !115, line: 47, baseType: !59, size: 32, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !114, file: !115, line: 47, baseType: !59, size: 32, offset: 160)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !114, file: !115, line: 48, baseType: !124, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !115, line: 15, baseType: !46)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !114, file: !115, line: 49, baseType: !59, size: 32, offset: 256)
!126 = !{!127}
!127 = !DISubrange(count: 329)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "i830_early_ops", scope: !2, file: !3, line: 469, type: !27, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !3, line: 369, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 240, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 30)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !3, line: 369, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 248, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 31)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "i845_early_ops", scope: !2, file: !3, line: 474, type: !27, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !3, line: 270, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 224, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 28)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "i85x_early_ops", scope: !2, file: !3, line: 479, type: !27, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "i865_early_ops", scope: !2, file: !3, line: 484, type: !27, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "gen3_early_ops", scope: !2, file: !3, line: 489, type: !27, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "gen6_early_ops", scope: !2, file: !3, line: 494, type: !27, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "gen8_early_ops", scope: !2, file: !3, line: 499, type: !27, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "chv_early_ops", scope: !2, file: !3, line: 509, type: !27, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "gen9_early_ops", scope: !2, file: !3, line: 504, type: !27, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "gen11_early_ops", scope: !2, file: !3, line: 514, type: !27, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !3, line: 585, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 336, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 42)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !3, line: 626, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 632, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 79)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 655, type: !90, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !3, line: 667, type: !95, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !3, line: 672, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 432, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 54)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !183, line: 21, size: 512, elements: !184)
!183 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!184 = !{!185, !186, !187, !190, !191, !192, !194, !195}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !182, file: !183, line: 22, baseType: !34, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !182, file: !183, line: 23, baseType: !34, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !183, line: 24, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !182, file: !183, line: 25, baseType: !46, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !182, file: !183, line: 26, baseType: !46, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !182, file: !183, line: 27, baseType: !193, size: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !182, file: !183, line: 27, baseType: !193, size: 64, offset: 384)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !182, file: !183, line: 27, baseType: !193, size: 64, offset: 448)
!196 = !{i32 7, !"Dwarf Version", i32 5}
!197 = !{i32 2, !"Debug Info Version", i32 3}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 8, !"cf-protection-branch", i32 1}
!200 = !{i32 4, !"function_return_thunk_extern", i32 1}
!201 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!202 = !{i32 1, !"Code Model", i32 2}
!203 = !{i32 1, !"override-stack-alignment", i32 8}
!204 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!205 = distinct !DISubprogram(name: "early_quirks", scope: !3, file: !3, line: 807, type: !206, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!206 = !DISubroutineType(types: !207)
!207 = !{null}
!208 = !DILocation(line: 809, column: 7, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !3, line: 809, column: 6)
!210 = !DILocation(line: 809, column: 6, scope: !205)
!211 = !DILocation(line: 810, column: 3, scope: !209)
!212 = !DILocation(line: 812, column: 2, scope: !205)
!213 = !DILocation(line: 813, column: 1, scope: !205)
!214 = !DISubprogram(name: "early_pci_allowed", scope: !215, file: !215, line: 17, type: !216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!215 = !DIFile(filename: "./arch/x86/include/asm/pci-direct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09799ff96bfe39e3d200f5cb3dffbc74")
!216 = !DISubroutineType(types: !217)
!217 = !{!25}
!218 = distinct !DISubprogram(name: "early_pci_scan_bus", scope: !3, file: !3, line: 794, type: !219, scopeLine: 795, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !221)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !25}
!221 = !{!222, !223, !224}
!222 = !DILocalVariable(name: "bus", arg: 1, scope: !218, file: !3, line: 794, type: !25)
!223 = !DILocalVariable(name: "slot", scope: !218, file: !3, line: 796, type: !25)
!224 = !DILocalVariable(name: "func", scope: !218, file: !3, line: 796, type: !25)
!225 = !DILocation(line: 794, column: 43, scope: !218)
!226 = !DILocation(line: 796, column: 2, scope: !218)
!227 = !DILocation(line: 796, column: 6, scope: !218)
!228 = !DILocation(line: 796, column: 12, scope: !218)
!229 = !DILocation(line: 799, column: 12, scope: !230)
!230 = distinct !DILexicalBlock(scope: !218, file: !3, line: 799, column: 2)
!231 = !DILocation(line: 799, column: 7, scope: !230)
!232 = !DILocation(line: 799, column: 17, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !3, line: 799, column: 2)
!234 = !DILocation(line: 799, column: 22, scope: !233)
!235 = !DILocation(line: 799, column: 2, scope: !230)
!236 = !DILocation(line: 800, column: 13, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !3, line: 800, column: 3)
!238 = !DILocation(line: 800, column: 8, scope: !237)
!239 = !DILocation(line: 800, column: 18, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !3, line: 800, column: 3)
!241 = !DILocation(line: 800, column: 23, scope: !240)
!242 = !DILocation(line: 800, column: 3, scope: !237)
!243 = !DILocation(line: 802, column: 24, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !3, line: 802, column: 8)
!245 = distinct !DILexicalBlock(scope: !240, file: !3, line: 800, column: 36)
!246 = !DILocation(line: 802, column: 29, scope: !244)
!247 = !DILocation(line: 802, column: 35, scope: !244)
!248 = !DILocation(line: 802, column: 8, scope: !244)
!249 = !DILocation(line: 802, column: 8, scope: !245)
!250 = !DILocation(line: 803, column: 5, scope: !244)
!251 = !DILocation(line: 804, column: 3, scope: !245)
!252 = !DILocation(line: 800, column: 32, scope: !240)
!253 = !DILocation(line: 800, column: 3, scope: !240)
!254 = distinct !{!254, !242, !255, !256, !257}
!255 = !DILocation(line: 804, column: 3, scope: !237)
!256 = !{!"llvm.loop.mustprogress"}
!257 = !{!"llvm.loop.unroll.disable"}
!258 = !DILocation(line: 799, column: 32, scope: !233)
!259 = !DILocation(line: 799, column: 2, scope: !233)
!260 = distinct !{!260, !235, !261, !256, !257}
!261 = !DILocation(line: 804, column: 3, scope: !230)
!262 = !DILocation(line: 805, column: 1, scope: !218)
!263 = distinct !DISubprogram(name: "check_dev_quirk", scope: !3, file: !3, line: 747, type: !264, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{!25, !25, !25, !25}
!266 = !{!267, !268, !269, !270, !274, !275, !276, !280, !281}
!267 = !DILocalVariable(name: "num", arg: 1, scope: !263, file: !3, line: 747, type: !25)
!268 = !DILocalVariable(name: "slot", arg: 2, scope: !263, file: !3, line: 747, type: !25)
!269 = !DILocalVariable(name: "func", arg: 3, scope: !263, file: !3, line: 747, type: !25)
!270 = !DILocalVariable(name: "class", scope: !263, file: !3, line: 749, type: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !38, line: 19, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !40, line: 24, baseType: !273)
!273 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!274 = !DILocalVariable(name: "vendor", scope: !263, file: !3, line: 750, type: !271)
!275 = !DILocalVariable(name: "device", scope: !263, file: !3, line: 751, type: !271)
!276 = !DILocalVariable(name: "type", scope: !263, file: !3, line: 752, type: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !38, line: 17, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !40, line: 21, baseType: !279)
!279 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!280 = !DILocalVariable(name: "sec", scope: !263, file: !3, line: 753, type: !277)
!281 = !DILocalVariable(name: "i", scope: !263, file: !3, line: 754, type: !25)
!282 = !DILocation(line: 747, column: 39, scope: !263)
!283 = !DILocation(line: 747, column: 48, scope: !263)
!284 = !DILocation(line: 747, column: 58, scope: !263)
!285 = !DILocation(line: 749, column: 2, scope: !263)
!286 = !DILocation(line: 749, column: 6, scope: !263)
!287 = !DILocation(line: 750, column: 2, scope: !263)
!288 = !DILocation(line: 750, column: 6, scope: !263)
!289 = !DILocation(line: 751, column: 2, scope: !263)
!290 = !DILocation(line: 751, column: 6, scope: !263)
!291 = !DILocation(line: 752, column: 2, scope: !263)
!292 = !DILocation(line: 752, column: 5, scope: !263)
!293 = !DILocation(line: 753, column: 2, scope: !263)
!294 = !DILocation(line: 753, column: 5, scope: !263)
!295 = !DILocation(line: 754, column: 2, scope: !263)
!296 = !DILocation(line: 754, column: 6, scope: !263)
!297 = !DILocation(line: 756, column: 29, scope: !263)
!298 = !DILocation(line: 756, column: 34, scope: !263)
!299 = !DILocation(line: 756, column: 40, scope: !263)
!300 = !DILocation(line: 756, column: 10, scope: !263)
!301 = !DILocation(line: 756, column: 8, scope: !263)
!302 = !DILocation(line: 758, column: 6, scope: !303)
!303 = distinct !DILexicalBlock(scope: !263, file: !3, line: 758, column: 6)
!304 = !DILocation(line: 758, column: 12, scope: !303)
!305 = !DILocation(line: 758, column: 6, scope: !263)
!306 = !DILocation(line: 759, column: 3, scope: !303)
!307 = !DILocation(line: 761, column: 30, scope: !263)
!308 = !DILocation(line: 761, column: 35, scope: !263)
!309 = !DILocation(line: 761, column: 41, scope: !263)
!310 = !DILocation(line: 761, column: 11, scope: !263)
!311 = !DILocation(line: 761, column: 9, scope: !263)
!312 = !DILocation(line: 763, column: 30, scope: !263)
!313 = !DILocation(line: 763, column: 35, scope: !263)
!314 = !DILocation(line: 763, column: 41, scope: !263)
!315 = !DILocation(line: 763, column: 11, scope: !263)
!316 = !DILocation(line: 763, column: 9, scope: !263)
!317 = !DILocation(line: 765, column: 9, scope: !318)
!318 = distinct !DILexicalBlock(scope: !263, file: !3, line: 765, column: 2)
!319 = !DILocation(line: 765, column: 7, scope: !318)
!320 = !DILocation(line: 765, column: 24, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !3, line: 765, column: 2)
!322 = !DILocation(line: 765, column: 14, scope: !321)
!323 = !DILocation(line: 765, column: 27, scope: !321)
!324 = !DILocation(line: 765, column: 29, scope: !321)
!325 = !DILocation(line: 765, column: 2, scope: !318)
!326 = !DILocation(line: 766, column: 19, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !3, line: 766, column: 7)
!328 = distinct !DILexicalBlock(scope: !321, file: !3, line: 765, column: 43)
!329 = !DILocation(line: 766, column: 9, scope: !327)
!330 = !DILocation(line: 766, column: 22, scope: !327)
!331 = !DILocation(line: 766, column: 29, scope: !327)
!332 = !DILocation(line: 766, column: 44, scope: !327)
!333 = !DILocation(line: 767, column: 15, scope: !327)
!334 = !DILocation(line: 767, column: 5, scope: !327)
!335 = !DILocation(line: 767, column: 18, scope: !327)
!336 = !DILocation(line: 767, column: 28, scope: !327)
!337 = !DILocation(line: 767, column: 25, scope: !327)
!338 = !DILocation(line: 767, column: 37, scope: !327)
!339 = !DILocation(line: 768, column: 16, scope: !327)
!340 = !DILocation(line: 768, column: 6, scope: !327)
!341 = !DILocation(line: 768, column: 19, scope: !327)
!342 = !DILocation(line: 768, column: 26, scope: !327)
!343 = !DILocation(line: 768, column: 41, scope: !327)
!344 = !DILocation(line: 769, column: 15, scope: !327)
!345 = !DILocation(line: 769, column: 5, scope: !327)
!346 = !DILocation(line: 769, column: 18, scope: !327)
!347 = !DILocation(line: 769, column: 28, scope: !327)
!348 = !DILocation(line: 769, column: 25, scope: !327)
!349 = !DILocation(line: 769, column: 37, scope: !327)
!350 = !DILocation(line: 770, column: 18, scope: !327)
!351 = !DILocation(line: 770, column: 8, scope: !327)
!352 = !DILocation(line: 770, column: 21, scope: !327)
!353 = !DILocation(line: 770, column: 29, scope: !327)
!354 = !DILocation(line: 770, column: 27, scope: !327)
!355 = !DILocation(line: 771, column: 18, scope: !327)
!356 = !DILocation(line: 771, column: 8, scope: !327)
!357 = !DILocation(line: 771, column: 21, scope: !327)
!358 = !DILocation(line: 770, column: 36, scope: !327)
!359 = !DILocation(line: 766, column: 7, scope: !328)
!360 = !DILocation(line: 772, column: 20, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !3, line: 772, column: 9)
!362 = distinct !DILexicalBlock(scope: !327, file: !3, line: 771, column: 35)
!363 = !DILocation(line: 772, column: 10, scope: !361)
!364 = !DILocation(line: 772, column: 23, scope: !361)
!365 = !DILocation(line: 772, column: 29, scope: !361)
!366 = !DILocation(line: 773, column: 22, scope: !361)
!367 = !DILocation(line: 772, column: 9, scope: !362)
!368 = !DILocation(line: 774, column: 16, scope: !361)
!369 = !DILocation(line: 774, column: 6, scope: !361)
!370 = !DILocation(line: 774, column: 19, scope: !361)
!371 = !DILocation(line: 774, column: 21, scope: !361)
!372 = !DILocation(line: 774, column: 26, scope: !361)
!373 = !DILocation(line: 774, column: 32, scope: !361)
!374 = !DILocation(line: 775, column: 15, scope: !362)
!375 = !DILocation(line: 775, column: 5, scope: !362)
!376 = !DILocation(line: 775, column: 18, scope: !362)
!377 = !DILocation(line: 775, column: 24, scope: !362)
!378 = !DILocation(line: 776, column: 4, scope: !362)
!379 = !DILocation(line: 777, column: 2, scope: !328)
!380 = !DILocation(line: 765, column: 39, scope: !321)
!381 = !DILocation(line: 765, column: 2, scope: !321)
!382 = distinct !{!382, !325, !383, !256, !257}
!383 = !DILocation(line: 777, column: 2, scope: !318)
!384 = !DILocation(line: 779, column: 30, scope: !263)
!385 = !DILocation(line: 779, column: 35, scope: !263)
!386 = !DILocation(line: 779, column: 41, scope: !263)
!387 = !DILocation(line: 779, column: 9, scope: !263)
!388 = !DILocation(line: 779, column: 7, scope: !263)
!389 = !DILocation(line: 782, column: 7, scope: !390)
!390 = distinct !DILexicalBlock(scope: !263, file: !3, line: 782, column: 6)
!391 = !DILocation(line: 782, column: 12, scope: !390)
!392 = !DILocation(line: 782, column: 20, scope: !390)
!393 = !DILocation(line: 782, column: 6, scope: !263)
!394 = !DILocation(line: 783, column: 30, scope: !395)
!395 = distinct !DILexicalBlock(scope: !390, file: !3, line: 782, column: 47)
!396 = !DILocation(line: 783, column: 35, scope: !395)
!397 = !DILocation(line: 783, column: 41, scope: !395)
!398 = !DILocation(line: 783, column: 9, scope: !395)
!399 = !DILocation(line: 783, column: 7, scope: !395)
!400 = !DILocation(line: 784, column: 7, scope: !401)
!401 = distinct !DILexicalBlock(scope: !395, file: !3, line: 784, column: 7)
!402 = !DILocation(line: 784, column: 13, scope: !401)
!403 = !DILocation(line: 784, column: 11, scope: !401)
!404 = !DILocation(line: 784, column: 7, scope: !395)
!405 = !DILocation(line: 785, column: 23, scope: !401)
!406 = !DILocation(line: 785, column: 4, scope: !401)
!407 = !DILocation(line: 786, column: 2, scope: !395)
!408 = !DILocation(line: 788, column: 8, scope: !409)
!409 = distinct !DILexicalBlock(scope: !263, file: !3, line: 788, column: 6)
!410 = !DILocation(line: 788, column: 13, scope: !409)
!411 = !DILocation(line: 788, column: 6, scope: !263)
!412 = !DILocation(line: 789, column: 3, scope: !409)
!413 = !DILocation(line: 791, column: 2, scope: !263)
!414 = !DILocation(line: 792, column: 1, scope: !263)
!415 = !DISubprogram(name: "read_pci_config_16", scope: !215, file: !215, line: 12, type: !416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!416 = !DISubroutineType(types: !417)
!417 = !{!271, !277, !277, !277, !277}
!418 = !DISubprogram(name: "read_pci_config_byte", scope: !215, file: !215, line: 11, type: !419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!419 = !DISubroutineType(types: !420)
!420 = !{!277, !277, !277, !277, !277}
!421 = distinct !DISubprogram(name: "nvidia_bugs", scope: !3, file: !3, line: 81, type: !66, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !422)
!422 = !{!423, !424, !425}
!423 = !DILocalVariable(name: "num", arg: 1, scope: !421, file: !3, line: 81, type: !25)
!424 = !DILocalVariable(name: "slot", arg: 2, scope: !421, file: !3, line: 81, type: !25)
!425 = !DILocalVariable(name: "func", arg: 3, scope: !421, file: !3, line: 81, type: !25)
!426 = !DILocation(line: 81, column: 36, scope: !421)
!427 = !DILocation(line: 81, column: 45, scope: !421)
!428 = !DILocation(line: 81, column: 55, scope: !421)
!429 = !DILocation(line: 89, column: 6, scope: !430)
!430 = distinct !DILexicalBlock(scope: !421, file: !3, line: 89, column: 6)
!431 = !DILocation(line: 89, column: 6, scope: !421)
!432 = !DILocation(line: 90, column: 3, scope: !430)
!433 = !DILocation(line: 99, column: 6, scope: !434)
!434 = distinct !DILexicalBlock(scope: !421, file: !3, line: 99, column: 6)
!435 = !DILocation(line: 99, column: 6, scope: !421)
!436 = !DILocation(line: 100, column: 3, scope: !434)
!437 = !DILocation(line: 102, column: 6, scope: !438)
!438 = distinct !DILexicalBlock(scope: !421, file: !3, line: 102, column: 6)
!439 = !DILocation(line: 102, column: 6, scope: !421)
!440 = !DILocation(line: 103, column: 28, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !3, line: 102, column: 58)
!442 = !DILocation(line: 104, column: 3, scope: !443)
!443 = distinct !DILexicalBlock(scope: !441, file: !3, line: 104, column: 3)
!444 = !DILocation(line: 104, column: 3, scope: !445)
!445 = distinct !DILexicalBlock(scope: !443, file: !3, line: 104, column: 3)
!446 = !DILocation(line: 107, column: 3, scope: !447)
!447 = distinct !DILexicalBlock(scope: !441, file: !3, line: 107, column: 3)
!448 = !DILocation(line: 107, column: 3, scope: !449)
!449 = distinct !DILexicalBlock(scope: !447, file: !3, line: 107, column: 3)
!450 = !DILocation(line: 109, column: 2, scope: !441)
!451 = !DILocation(line: 114, column: 1, scope: !421)
!452 = distinct !DISubprogram(name: "via_bugs", scope: !3, file: !3, line: 58, type: !66, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !453)
!453 = !{!454, !455, !456}
!454 = !DILocalVariable(name: "num", arg: 1, scope: !452, file: !3, line: 58, type: !25)
!455 = !DILocalVariable(name: "slot", arg: 2, scope: !452, file: !3, line: 58, type: !25)
!456 = !DILocalVariable(name: "func", arg: 3, scope: !452, file: !3, line: 58, type: !25)
!457 = !DILocation(line: 58, column: 34, scope: !452)
!458 = !DILocation(line: 58, column: 43, scope: !452)
!459 = !DILocation(line: 58, column: 53, scope: !452)
!460 = !DILocation(line: 69, column: 1, scope: !452)
!461 = distinct !DISubprogram(name: "fix_hypertransport_config", scope: !3, file: !3, line: 32, type: !66, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !462)
!462 = !{!463, !464, !465, !466}
!463 = !DILocalVariable(name: "num", arg: 1, scope: !461, file: !3, line: 32, type: !25)
!464 = !DILocalVariable(name: "slot", arg: 2, scope: !461, file: !3, line: 32, type: !25)
!465 = !DILocalVariable(name: "func", arg: 3, scope: !461, file: !3, line: 32, type: !25)
!466 = !DILocalVariable(name: "htcfg", scope: !461, file: !3, line: 34, type: !58)
!467 = !DILocation(line: 32, column: 50, scope: !461)
!468 = !DILocation(line: 32, column: 59, scope: !461)
!469 = !DILocation(line: 32, column: 69, scope: !461)
!470 = !DILocation(line: 34, column: 2, scope: !461)
!471 = !DILocation(line: 34, column: 6, scope: !461)
!472 = !DILocation(line: 41, column: 26, scope: !461)
!473 = !DILocation(line: 41, column: 31, scope: !461)
!474 = !DILocation(line: 41, column: 37, scope: !461)
!475 = !DILocation(line: 41, column: 10, scope: !461)
!476 = !DILocation(line: 41, column: 8, scope: !461)
!477 = !DILocation(line: 42, column: 6, scope: !478)
!478 = distinct !DILexicalBlock(scope: !461, file: !3, line: 42, column: 6)
!479 = !DILocation(line: 42, column: 12, scope: !478)
!480 = !DILocation(line: 42, column: 6, scope: !461)
!481 = !DILocation(line: 43, column: 3, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 43, column: 3)
!483 = distinct !DILexicalBlock(scope: !478, file: !3, line: 42, column: 25)
!484 = !DILocation(line: 43, column: 3, scope: !485)
!485 = distinct !DILexicalBlock(scope: !482, file: !3, line: 43, column: 3)
!486 = !DILocation(line: 45, column: 8, scope: !487)
!487 = distinct !DILexicalBlock(scope: !483, file: !3, line: 45, column: 7)
!488 = !DILocation(line: 45, column: 14, scope: !487)
!489 = !DILocation(line: 45, column: 27, scope: !487)
!490 = !DILocation(line: 45, column: 7, scope: !483)
!491 = !DILocation(line: 46, column: 4, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 46, column: 4)
!493 = distinct !DILexicalBlock(scope: !487, file: !3, line: 45, column: 33)
!494 = !DILocation(line: 46, column: 4, scope: !495)
!495 = distinct !DILexicalBlock(scope: !492, file: !3, line: 46, column: 4)
!496 = !DILocation(line: 48, column: 4, scope: !497)
!497 = distinct !DILexicalBlock(scope: !493, file: !3, line: 48, column: 4)
!498 = !DILocation(line: 48, column: 4, scope: !499)
!499 = distinct !DILexicalBlock(scope: !497, file: !3, line: 48, column: 4)
!500 = !DILocation(line: 50, column: 10, scope: !493)
!501 = !DILocation(line: 51, column: 21, scope: !493)
!502 = !DILocation(line: 51, column: 26, scope: !493)
!503 = !DILocation(line: 51, column: 32, scope: !493)
!504 = !DILocation(line: 51, column: 44, scope: !493)
!505 = !DILocation(line: 51, column: 4, scope: !493)
!506 = !DILocation(line: 52, column: 3, scope: !493)
!507 = !DILocation(line: 53, column: 2, scope: !483)
!508 = !DILocation(line: 56, column: 1, scope: !461)
!509 = distinct !DISubprogram(name: "ati_bugs", scope: !3, file: !3, line: 135, type: !66, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !510)
!510 = !{!511, !512, !513, !514, !515}
!511 = !DILocalVariable(name: "num", arg: 1, scope: !509, file: !3, line: 135, type: !25)
!512 = !DILocalVariable(name: "slot", arg: 2, scope: !509, file: !3, line: 135, type: !25)
!513 = !DILocalVariable(name: "func", arg: 3, scope: !509, file: !3, line: 135, type: !25)
!514 = !DILocalVariable(name: "d", scope: !509, file: !3, line: 137, type: !58)
!515 = !DILocalVariable(name: "b", scope: !509, file: !3, line: 138, type: !277)
!516 = !DILocation(line: 135, column: 33, scope: !509)
!517 = !DILocation(line: 135, column: 42, scope: !509)
!518 = !DILocation(line: 135, column: 52, scope: !509)
!519 = !DILocation(line: 137, column: 2, scope: !509)
!520 = !DILocation(line: 137, column: 6, scope: !509)
!521 = !DILocation(line: 138, column: 2, scope: !509)
!522 = !DILocation(line: 138, column: 6, scope: !509)
!523 = !DILocation(line: 140, column: 6, scope: !524)
!524 = distinct !DILexicalBlock(scope: !509, file: !3, line: 140, column: 6)
!525 = !DILocation(line: 140, column: 6, scope: !509)
!526 = !DILocation(line: 141, column: 3, scope: !524)
!527 = !DILocation(line: 143, column: 21, scope: !509)
!528 = !DILocation(line: 143, column: 26, scope: !509)
!529 = !DILocation(line: 143, column: 32, scope: !509)
!530 = !DILocation(line: 143, column: 6, scope: !509)
!531 = !DILocation(line: 143, column: 4, scope: !509)
!532 = !DILocation(line: 144, column: 6, scope: !533)
!533 = distinct !DILexicalBlock(scope: !509, file: !3, line: 144, column: 6)
!534 = !DILocation(line: 144, column: 9, scope: !533)
!535 = !DILocation(line: 144, column: 6, scope: !509)
!536 = !DILocation(line: 145, column: 28, scope: !533)
!537 = !DILocation(line: 145, column: 3, scope: !533)
!538 = !DILocation(line: 148, column: 3, scope: !539)
!539 = distinct !DILexicalBlock(scope: !533, file: !3, line: 146, column: 7)
!540 = !DILocation(line: 148, column: 26, scope: !539)
!541 = !DILocation(line: 148, column: 24, scope: !539)
!542 = !DILocation(line: 149, column: 9, scope: !543)
!543 = distinct !DILexicalBlock(scope: !539, file: !3, line: 149, column: 7)
!544 = !DILocation(line: 149, column: 11, scope: !543)
!545 = !DILocation(line: 149, column: 7, scope: !539)
!546 = !DILocation(line: 150, column: 29, scope: !543)
!547 = !DILocation(line: 150, column: 4, scope: !543)
!548 = !DILocation(line: 153, column: 6, scope: !549)
!549 = distinct !DILexicalBlock(scope: !509, file: !3, line: 153, column: 6)
!550 = !DILocation(line: 153, column: 6, scope: !509)
!551 = !DILocation(line: 154, column: 3, scope: !552)
!552 = distinct !DILexicalBlock(scope: !553, file: !3, line: 154, column: 3)
!553 = distinct !DILexicalBlock(scope: !549, file: !3, line: 153, column: 32)
!554 = !DILocation(line: 154, column: 3, scope: !555)
!555 = distinct !DILexicalBlock(scope: !552, file: !3, line: 154, column: 3)
!556 = !DILocation(line: 155, column: 3, scope: !557)
!557 = distinct !DILexicalBlock(scope: !553, file: !3, line: 155, column: 3)
!558 = !DILocation(line: 155, column: 3, scope: !559)
!559 = distinct !DILexicalBlock(scope: !557, file: !3, line: 155, column: 3)
!560 = !DILocation(line: 156, column: 3, scope: !561)
!561 = distinct !DILexicalBlock(scope: !553, file: !3, line: 156, column: 3)
!562 = !DILocation(line: 156, column: 3, scope: !563)
!563 = distinct !DILexicalBlock(scope: !561, file: !3, line: 156, column: 3)
!564 = !DILocation(line: 158, column: 2, scope: !553)
!565 = !DILocation(line: 159, column: 1, scope: !509)
!566 = distinct !DISubprogram(name: "ati_bugs_contd", scope: !3, file: !3, line: 171, type: !66, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !567)
!567 = !{!568, !569, !570, !571, !572}
!568 = !DILocalVariable(name: "num", arg: 1, scope: !566, file: !3, line: 171, type: !25)
!569 = !DILocalVariable(name: "slot", arg: 2, scope: !566, file: !3, line: 171, type: !25)
!570 = !DILocalVariable(name: "func", arg: 3, scope: !566, file: !3, line: 171, type: !25)
!571 = !DILocalVariable(name: "d", scope: !566, file: !3, line: 173, type: !58)
!572 = !DILocalVariable(name: "rev", scope: !566, file: !3, line: 173, type: !58)
!573 = !DILocation(line: 171, column: 39, scope: !566)
!574 = !DILocation(line: 171, column: 48, scope: !566)
!575 = !DILocation(line: 171, column: 58, scope: !566)
!576 = !DILocation(line: 173, column: 2, scope: !566)
!577 = !DILocation(line: 173, column: 6, scope: !566)
!578 = !DILocation(line: 173, column: 9, scope: !566)
!579 = !DILocation(line: 175, column: 22, scope: !566)
!580 = !DILocation(line: 175, column: 27, scope: !566)
!581 = !DILocation(line: 175, column: 33, scope: !566)
!582 = !DILocation(line: 175, column: 8, scope: !566)
!583 = !DILocation(line: 175, column: 6, scope: !566)
!584 = !DILocation(line: 176, column: 6, scope: !585)
!585 = distinct !DILexicalBlock(scope: !566, file: !3, line: 176, column: 6)
!586 = !DILocation(line: 176, column: 10, scope: !585)
!587 = !DILocation(line: 176, column: 6, scope: !566)
!588 = !DILocation(line: 177, column: 26, scope: !585)
!589 = !DILocation(line: 177, column: 3, scope: !585)
!590 = !DILocation(line: 184, column: 6, scope: !591)
!591 = distinct !DILexicalBlock(scope: !566, file: !3, line: 184, column: 6)
!592 = !DILocation(line: 184, column: 10, scope: !591)
!593 = !DILocation(line: 184, column: 6, scope: !566)
!594 = !DILocation(line: 185, column: 3, scope: !591)
!595 = !DILocation(line: 187, column: 6, scope: !596)
!596 = distinct !DILexicalBlock(scope: !566, file: !3, line: 187, column: 6)
!597 = !DILocation(line: 187, column: 6, scope: !566)
!598 = !DILocation(line: 188, column: 3, scope: !596)
!599 = !DILocation(line: 191, column: 22, scope: !566)
!600 = !DILocation(line: 191, column: 27, scope: !566)
!601 = !DILocation(line: 191, column: 33, scope: !566)
!602 = !DILocation(line: 191, column: 6, scope: !566)
!603 = !DILocation(line: 191, column: 4, scope: !566)
!604 = !DILocation(line: 192, column: 8, scope: !605)
!605 = distinct !DILexicalBlock(scope: !566, file: !3, line: 192, column: 6)
!606 = !DILocation(line: 192, column: 10, scope: !605)
!607 = !DILocation(line: 192, column: 6, scope: !566)
!608 = !DILocation(line: 193, column: 28, scope: !605)
!609 = !DILocation(line: 193, column: 3, scope: !605)
!610 = !DILocation(line: 195, column: 6, scope: !611)
!611 = distinct !DILexicalBlock(scope: !566, file: !3, line: 195, column: 6)
!612 = !DILocation(line: 195, column: 6, scope: !566)
!613 = !DILocation(line: 196, column: 3, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !3, line: 196, column: 3)
!615 = distinct !DILexicalBlock(scope: !611, file: !3, line: 195, column: 32)
!616 = !DILocation(line: 196, column: 3, scope: !617)
!617 = distinct !DILexicalBlock(scope: !614, file: !3, line: 196, column: 3)
!618 = !DILocation(line: 197, column: 3, scope: !619)
!619 = distinct !DILexicalBlock(scope: !615, file: !3, line: 197, column: 3)
!620 = !DILocation(line: 197, column: 3, scope: !621)
!621 = distinct !DILexicalBlock(scope: !619, file: !3, line: 197, column: 3)
!622 = !DILocation(line: 198, column: 3, scope: !623)
!623 = distinct !DILexicalBlock(scope: !615, file: !3, line: 198, column: 3)
!624 = !DILocation(line: 198, column: 3, scope: !625)
!625 = distinct !DILexicalBlock(scope: !623, file: !3, line: 198, column: 3)
!626 = !DILocation(line: 200, column: 2, scope: !615)
!627 = !DILocation(line: 201, column: 1, scope: !566)
!628 = distinct !DISubprogram(name: "intel_remapping_check", scope: !3, file: !3, line: 212, type: !66, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !629)
!629 = !{!630, !631, !632, !633, !634}
!630 = !DILocalVariable(name: "num", arg: 1, scope: !628, file: !3, line: 212, type: !25)
!631 = !DILocalVariable(name: "slot", arg: 2, scope: !628, file: !3, line: 212, type: !25)
!632 = !DILocalVariable(name: "func", arg: 3, scope: !628, file: !3, line: 212, type: !25)
!633 = !DILocalVariable(name: "revision", scope: !628, file: !3, line: 214, type: !277)
!634 = !DILocalVariable(name: "device", scope: !628, file: !3, line: 215, type: !271)
!635 = !DILocation(line: 212, column: 46, scope: !628)
!636 = !DILocation(line: 212, column: 55, scope: !628)
!637 = !DILocation(line: 212, column: 65, scope: !628)
!638 = !DILocation(line: 214, column: 2, scope: !628)
!639 = !DILocation(line: 214, column: 5, scope: !628)
!640 = !DILocation(line: 215, column: 2, scope: !628)
!641 = !DILocation(line: 215, column: 6, scope: !628)
!642 = !DILocation(line: 217, column: 30, scope: !628)
!643 = !DILocation(line: 217, column: 35, scope: !628)
!644 = !DILocation(line: 217, column: 41, scope: !628)
!645 = !DILocation(line: 217, column: 11, scope: !628)
!646 = !DILocation(line: 217, column: 9, scope: !628)
!647 = !DILocation(line: 218, column: 34, scope: !628)
!648 = !DILocation(line: 218, column: 39, scope: !628)
!649 = !DILocation(line: 218, column: 45, scope: !628)
!650 = !DILocation(line: 218, column: 13, scope: !628)
!651 = !DILocation(line: 218, column: 11, scope: !628)
!652 = !DILocation(line: 226, column: 6, scope: !653)
!653 = distinct !DILexicalBlock(scope: !628, file: !3, line: 226, column: 6)
!654 = !DILocation(line: 226, column: 15, scope: !653)
!655 = !DILocation(line: 226, column: 6, scope: !628)
!656 = !DILocation(line: 227, column: 3, scope: !653)
!657 = !DILocation(line: 228, column: 11, scope: !658)
!658 = distinct !DILexicalBlock(scope: !653, file: !3, line: 228, column: 11)
!659 = !DILocation(line: 228, column: 18, scope: !658)
!660 = !DILocation(line: 228, column: 28, scope: !658)
!661 = !DILocation(line: 228, column: 31, scope: !658)
!662 = !DILocation(line: 228, column: 40, scope: !658)
!663 = !DILocation(line: 228, column: 11, scope: !653)
!664 = !DILocation(line: 229, column: 3, scope: !658)
!665 = !DILocation(line: 230, column: 1, scope: !628)
!666 = distinct !DISubprogram(name: "intel_graphics_quirks", scope: !3, file: !3, line: 593, type: !66, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !667)
!667 = !{!668, !669, !670, !671, !672, !673, !674}
!668 = !DILocalVariable(name: "num", arg: 1, scope: !666, file: !3, line: 593, type: !25)
!669 = !DILocalVariable(name: "slot", arg: 2, scope: !666, file: !3, line: 593, type: !25)
!670 = !DILocalVariable(name: "func", arg: 3, scope: !666, file: !3, line: 593, type: !25)
!671 = !DILocalVariable(name: "early_ops", scope: !666, file: !3, line: 595, type: !26)
!672 = !DILocalVariable(name: "device", scope: !666, file: !3, line: 596, type: !271)
!673 = !DILocalVariable(name: "i", scope: !666, file: !3, line: 597, type: !25)
!674 = !DILocalVariable(name: "driver_data", scope: !675, file: !3, line: 609, type: !124)
!675 = distinct !DILexicalBlock(scope: !676, file: !3, line: 608, column: 52)
!676 = distinct !DILexicalBlock(scope: !677, file: !3, line: 608, column: 2)
!677 = distinct !DILexicalBlock(scope: !666, file: !3, line: 608, column: 2)
!678 = !DILocation(line: 593, column: 46, scope: !666)
!679 = !DILocation(line: 593, column: 55, scope: !666)
!680 = !DILocation(line: 593, column: 65, scope: !666)
!681 = !DILocation(line: 595, column: 2, scope: !666)
!682 = !DILocation(line: 595, column: 32, scope: !666)
!683 = !DILocation(line: 596, column: 2, scope: !666)
!684 = !DILocation(line: 596, column: 6, scope: !666)
!685 = !DILocation(line: 597, column: 2, scope: !666)
!686 = !DILocation(line: 597, column: 6, scope: !666)
!687 = !DILocation(line: 603, column: 6, scope: !688)
!688 = distinct !DILexicalBlock(scope: !666, file: !3, line: 603, column: 6)
!689 = !DILocation(line: 603, column: 6, scope: !666)
!690 = !DILocation(line: 604, column: 3, scope: !688)
!691 = !DILocation(line: 606, column: 30, scope: !666)
!692 = !DILocation(line: 606, column: 35, scope: !666)
!693 = !DILocation(line: 606, column: 41, scope: !666)
!694 = !DILocation(line: 606, column: 11, scope: !666)
!695 = !DILocation(line: 606, column: 9, scope: !666)
!696 = !DILocation(line: 608, column: 9, scope: !677)
!697 = !DILocation(line: 608, column: 7, scope: !677)
!698 = !DILocation(line: 608, column: 14, scope: !676)
!699 = !DILocation(line: 608, column: 16, scope: !676)
!700 = !DILocation(line: 608, column: 2, scope: !677)
!701 = !DILocation(line: 609, column: 3, scope: !675)
!702 = !DILocation(line: 609, column: 18, scope: !675)
!703 = !DILocation(line: 609, column: 48, scope: !675)
!704 = !DILocation(line: 609, column: 32, scope: !675)
!705 = !DILocation(line: 609, column: 51, scope: !675)
!706 = !DILocation(line: 611, column: 23, scope: !707)
!707 = distinct !DILexicalBlock(scope: !675, file: !3, line: 611, column: 7)
!708 = !DILocation(line: 611, column: 7, scope: !707)
!709 = !DILocation(line: 611, column: 26, scope: !707)
!710 = !DILocation(line: 611, column: 36, scope: !707)
!711 = !DILocation(line: 611, column: 33, scope: !707)
!712 = !DILocation(line: 611, column: 7, scope: !675)
!713 = !DILocation(line: 612, column: 4, scope: !707)
!714 = !DILocation(line: 614, column: 34, scope: !675)
!715 = !DILocation(line: 614, column: 15, scope: !675)
!716 = !DILocation(line: 614, column: 13, scope: !675)
!717 = !DILocation(line: 616, column: 25, scope: !675)
!718 = !DILocation(line: 616, column: 30, scope: !675)
!719 = !DILocation(line: 616, column: 36, scope: !675)
!720 = !DILocation(line: 616, column: 42, scope: !675)
!721 = !DILocation(line: 616, column: 3, scope: !675)
!722 = !DILocation(line: 618, column: 3, scope: !675)
!723 = !DILocation(line: 619, column: 2, scope: !676)
!724 = !DILocation(line: 608, column: 48, scope: !676)
!725 = !DILocation(line: 608, column: 2, scope: !676)
!726 = distinct !{!726, !700, !727, !256, !257}
!727 = !DILocation(line: 619, column: 2, scope: !677)
!728 = !DILocation(line: 620, column: 1, scope: !666)
!729 = distinct !DISubprogram(name: "force_disable_hpet", scope: !3, file: !3, line: 622, type: !66, scopeLine: 623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !730)
!730 = !{!731, !732, !733}
!731 = !DILocalVariable(name: "num", arg: 1, scope: !729, file: !3, line: 622, type: !25)
!732 = !DILocalVariable(name: "slot", arg: 2, scope: !729, file: !3, line: 622, type: !25)
!733 = !DILocalVariable(name: "func", arg: 3, scope: !729, file: !3, line: 622, type: !25)
!734 = !DILocation(line: 622, column: 43, scope: !729)
!735 = !DILocation(line: 622, column: 52, scope: !729)
!736 = !DILocation(line: 622, column: 62, scope: !729)
!737 = !DILocation(line: 625, column: 20, scope: !729)
!738 = !DILocation(line: 626, column: 2, scope: !739)
!739 = distinct !DILexicalBlock(scope: !729, file: !3, line: 626, column: 2)
!740 = !DILocation(line: 626, column: 2, scope: !741)
!741 = distinct !DILexicalBlock(scope: !739, file: !3, line: 626, column: 2)
!742 = !DILocation(line: 628, column: 1, scope: !729)
!743 = distinct !DISubprogram(name: "apple_airport_reset", scope: !3, file: !3, line: 635, type: !66, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !744)
!744 = !{!745, !746, !747, !748, !749, !750, !751, !752}
!745 = !DILocalVariable(name: "bus", arg: 1, scope: !743, file: !3, line: 635, type: !25)
!746 = !DILocalVariable(name: "slot", arg: 2, scope: !743, file: !3, line: 635, type: !25)
!747 = !DILocalVariable(name: "func", arg: 3, scope: !743, file: !3, line: 635, type: !25)
!748 = !DILocalVariable(name: "mmio", scope: !743, file: !3, line: 637, type: !24)
!749 = !DILocalVariable(name: "pmcsr", scope: !743, file: !3, line: 638, type: !271)
!750 = !DILocalVariable(name: "addr", scope: !743, file: !3, line: 639, type: !37)
!751 = !DILocalVariable(name: "i", scope: !743, file: !3, line: 640, type: !25)
!752 = !DILocalVariable(name: "__ms", scope: !753, file: !3, line: 651, type: !46)
!753 = distinct !DILexicalBlock(scope: !754, file: !3, line: 651, column: 3)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 648, column: 50)
!755 = distinct !DILexicalBlock(scope: !743, file: !3, line: 648, column: 6)
!756 = !DILocation(line: 635, column: 44, scope: !743)
!757 = !DILocation(line: 635, column: 53, scope: !743)
!758 = !DILocation(line: 635, column: 63, scope: !743)
!759 = !DILocation(line: 637, column: 2, scope: !743)
!760 = !DILocation(line: 637, column: 16, scope: !743)
!761 = !DILocation(line: 638, column: 2, scope: !743)
!762 = !DILocation(line: 638, column: 6, scope: !743)
!763 = !DILocation(line: 639, column: 2, scope: !743)
!764 = !DILocation(line: 639, column: 6, scope: !743)
!765 = !DILocation(line: 640, column: 2, scope: !743)
!766 = !DILocation(line: 640, column: 6, scope: !743)
!767 = !DILocation(line: 642, column: 7, scope: !768)
!768 = distinct !DILexicalBlock(scope: !743, file: !3, line: 642, column: 6)
!769 = !{i8 0, i8 2}
!770 = !{}
!771 = !DILocation(line: 642, column: 6, scope: !743)
!772 = !DILocation(line: 643, column: 3, scope: !768)
!773 = !DILocation(line: 646, column: 29, scope: !743)
!774 = !DILocation(line: 646, column: 34, scope: !743)
!775 = !DILocation(line: 646, column: 40, scope: !743)
!776 = !DILocation(line: 646, column: 10, scope: !743)
!777 = !DILocation(line: 646, column: 8, scope: !743)
!778 = !DILocation(line: 648, column: 7, scope: !755)
!779 = !DILocation(line: 648, column: 13, scope: !755)
!780 = !DILocation(line: 648, column: 39, scope: !755)
!781 = !DILocation(line: 648, column: 6, scope: !743)
!782 = !DILocation(line: 649, column: 9, scope: !754)
!783 = !DILocation(line: 650, column: 23, scope: !754)
!784 = !DILocation(line: 650, column: 28, scope: !754)
!785 = !DILocation(line: 650, column: 34, scope: !754)
!786 = !DILocation(line: 650, column: 70, scope: !754)
!787 = !DILocation(line: 650, column: 3, scope: !754)
!788 = !DILocation(line: 651, column: 3, scope: !753)
!789 = !DILocation(line: 651, column: 3, scope: !790)
!790 = distinct !DILexicalBlock(scope: !791, file: !3, line: 651, column: 3)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 651, column: 3)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 651, column: 3)
!793 = distinct !DILexicalBlock(scope: !753, file: !3, line: 651, column: 3)
!794 = distinct !{!794, !788, !788, !256, !257}
!795 = !DILocation(line: 651, column: 3, scope: !754)
!796 = !DILocation(line: 653, column: 30, scope: !754)
!797 = !DILocation(line: 653, column: 35, scope: !754)
!798 = !DILocation(line: 653, column: 41, scope: !754)
!799 = !DILocation(line: 653, column: 11, scope: !754)
!800 = !DILocation(line: 653, column: 9, scope: !754)
!801 = !DILocation(line: 654, column: 8, scope: !802)
!802 = distinct !DILexicalBlock(scope: !754, file: !3, line: 654, column: 7)
!803 = !DILocation(line: 654, column: 14, scope: !802)
!804 = !DILocation(line: 654, column: 40, scope: !802)
!805 = !DILocation(line: 654, column: 7, scope: !754)
!806 = !DILocation(line: 655, column: 4, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !3, line: 655, column: 4)
!808 = distinct !DILexicalBlock(scope: !802, file: !3, line: 654, column: 51)
!809 = !DILocation(line: 655, column: 4, scope: !810)
!810 = distinct !DILexicalBlock(scope: !807, file: !3, line: 655, column: 4)
!811 = !DILocation(line: 657, column: 4, scope: !808)
!812 = !DILocation(line: 659, column: 2, scope: !754)
!813 = !DILocation(line: 661, column: 31, scope: !743)
!814 = !DILocation(line: 661, column: 36, scope: !743)
!815 = !DILocation(line: 661, column: 42, scope: !743)
!816 = !DILocation(line: 661, column: 15, scope: !743)
!817 = !DILocation(line: 661, column: 8, scope: !743)
!818 = !DILocation(line: 662, column: 31, scope: !743)
!819 = !DILocation(line: 662, column: 36, scope: !743)
!820 = !DILocation(line: 662, column: 42, scope: !743)
!821 = !DILocation(line: 662, column: 15, scope: !743)
!822 = !DILocation(line: 662, column: 10, scope: !743)
!823 = !DILocation(line: 662, column: 68, scope: !743)
!824 = !DILocation(line: 662, column: 7, scope: !743)
!825 = !DILocation(line: 663, column: 7, scope: !743)
!826 = !DILocation(line: 665, column: 23, scope: !743)
!827 = !DILocation(line: 665, column: 9, scope: !743)
!828 = !DILocation(line: 665, column: 7, scope: !743)
!829 = !DILocation(line: 666, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !743, file: !3, line: 666, column: 6)
!831 = !DILocation(line: 666, column: 6, scope: !743)
!832 = !DILocation(line: 667, column: 3, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !3, line: 667, column: 3)
!834 = distinct !DILexicalBlock(scope: !830, file: !3, line: 666, column: 13)
!835 = !DILocation(line: 667, column: 3, scope: !836)
!836 = distinct !DILexicalBlock(scope: !833, file: !3, line: 667, column: 3)
!837 = !DILocation(line: 669, column: 3, scope: !834)
!838 = !DILocation(line: 672, column: 2, scope: !839)
!839 = distinct !DILexicalBlock(scope: !743, file: !3, line: 672, column: 2)
!840 = !DILocation(line: 672, column: 2, scope: !841)
!841 = distinct !DILexicalBlock(scope: !839, file: !3, line: 672, column: 2)
!842 = !DILocation(line: 674, column: 9, scope: !843)
!843 = distinct !DILexicalBlock(scope: !743, file: !3, line: 674, column: 2)
!844 = !DILocation(line: 674, column: 7, scope: !843)
!845 = !DILocation(line: 674, column: 14, scope: !846)
!846 = distinct !DILexicalBlock(scope: !843, file: !3, line: 674, column: 2)
!847 = !DILocation(line: 674, column: 42, scope: !846)
!848 = !DILocation(line: 674, column: 45, scope: !846)
!849 = !DILocation(line: 674, column: 47, scope: !846)
!850 = !DILocation(line: 0, scope: !846)
!851 = !DILocation(line: 674, column: 2, scope: !843)
!852 = !DILocation(line: 675, column: 3, scope: !853)
!853 = distinct !DILexicalBlock(scope: !854, file: !3, line: 675, column: 3)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 675, column: 3)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 675, column: 3)
!856 = distinct !DILexicalBlock(scope: !846, file: !3, line: 675, column: 3)
!857 = !DILocation(line: 675, column: 3, scope: !846)
!858 = !DILocation(line: 674, column: 54, scope: !846)
!859 = !DILocation(line: 674, column: 2, scope: !846)
!860 = distinct !{!860, !851, !861, !256, !257}
!861 = !DILocation(line: 675, column: 3, scope: !843)
!862 = !DILocation(line: 677, column: 2, scope: !743)
!863 = !DILocation(line: 678, column: 2, scope: !743)
!864 = !DILocation(line: 679, column: 2, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 679, column: 2)
!866 = distinct !DILexicalBlock(scope: !867, file: !3, line: 679, column: 2)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 679, column: 2)
!868 = distinct !DILexicalBlock(scope: !743, file: !3, line: 679, column: 2)
!869 = !DILocation(line: 681, column: 2, scope: !743)
!870 = !DILocation(line: 682, column: 2, scope: !743)
!871 = !DILocation(line: 683, column: 2, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !3, line: 683, column: 2)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 683, column: 2)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 683, column: 2)
!875 = distinct !DILexicalBlock(scope: !743, file: !3, line: 683, column: 2)
!876 = !DILocation(line: 685, column: 16, scope: !743)
!877 = !DILocation(line: 685, column: 2, scope: !743)
!878 = !DILocation(line: 686, column: 1, scope: !743)
!879 = !DISubprogram(name: "acpi_table_parse", scope: !880, file: !880, line: 242, type: !881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!880 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!881 = !DISubroutineType(types: !882)
!882 = !{!25, !883, !884}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_tbl_table_handler", file: !880, line: 129, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!25, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !890, line: 68, size: 288, elements: !891)
!890 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!891 = !{!892, !896, !897, !898, !899, !903, !907, !908, !909}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !889, file: !890, line: 69, baseType: !893, size: 32)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 32, elements: !894)
!894 = !{!895}
!895 = !DISubrange(count: 4)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !889, file: !890, line: 70, baseType: !58, size: 32, offset: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !889, file: !890, line: 71, baseType: !277, size: 8, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !889, file: !890, line: 72, baseType: !277, size: 8, offset: 72)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !889, file: !890, line: 73, baseType: !900, size: 48, offset: 80)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 48, elements: !901)
!901 = !{!902}
!902 = !DISubrange(count: 6)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !889, file: !890, line: 74, baseType: !904, size: 64, offset: 128)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !905)
!905 = !{!906}
!906 = !DISubrange(count: 8)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !889, file: !890, line: 75, baseType: !58, size: 32, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !889, file: !890, line: 76, baseType: !893, size: 32, offset: 224)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !889, file: !890, line: 77, baseType: !58, size: 32, offset: 256)
!910 = distinct !DISubprogram(name: "nvidia_hpet_check", scope: !3, file: !3, line: 74, type: !886, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !911)
!911 = !{!912}
!912 = !DILocalVariable(name: "header", arg: 1, scope: !910, file: !3, line: 74, type: !888)
!913 = !DILocation(line: 74, column: 63, scope: !910)
!914 = !DILocation(line: 76, column: 2, scope: !910)
!915 = !DISubprogram(name: "_printk", scope: !916, file: !916, line: 153, type: !917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!916 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!917 = !DISubroutineType(types: !918)
!918 = !{!25, !188, null}
!919 = !DISubprogram(name: "read_pci_config", scope: !215, file: !215, line: 10, type: !920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!920 = !DISubroutineType(types: !921)
!921 = !{!58, !277, !277, !277, !277}
!922 = !DISubprogram(name: "write_pci_config", scope: !215, file: !215, line: 13, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !277, !277, !277, !277, !58}
!925 = distinct !DISubprogram(name: "ati_ixp4x0_rev", scope: !3, file: !3, line: 117, type: !926, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !928)
!926 = !DISubroutineType(types: !927)
!927 = !{!58, !25, !25, !25}
!928 = !{!929, !930, !931, !932, !933}
!929 = !DILocalVariable(name: "num", arg: 1, scope: !925, file: !3, line: 117, type: !25)
!930 = !DILocalVariable(name: "slot", arg: 2, scope: !925, file: !3, line: 117, type: !25)
!931 = !DILocalVariable(name: "func", arg: 3, scope: !925, file: !3, line: 117, type: !25)
!932 = !DILocalVariable(name: "d", scope: !925, file: !3, line: 119, type: !58)
!933 = !DILocalVariable(name: "b", scope: !925, file: !3, line: 120, type: !277)
!934 = !DILocation(line: 117, column: 38, scope: !925)
!935 = !DILocation(line: 117, column: 47, scope: !925)
!936 = !DILocation(line: 117, column: 57, scope: !925)
!937 = !DILocation(line: 119, column: 2, scope: !925)
!938 = !DILocation(line: 119, column: 6, scope: !925)
!939 = !DILocation(line: 120, column: 2, scope: !925)
!940 = !DILocation(line: 120, column: 6, scope: !925)
!941 = !DILocation(line: 122, column: 27, scope: !925)
!942 = !DILocation(line: 122, column: 32, scope: !925)
!943 = !DILocation(line: 122, column: 38, scope: !925)
!944 = !DILocation(line: 122, column: 6, scope: !925)
!945 = !DILocation(line: 122, column: 4, scope: !925)
!946 = !DILocation(line: 123, column: 4, scope: !925)
!947 = !DILocation(line: 124, column: 24, scope: !925)
!948 = !DILocation(line: 124, column: 29, scope: !925)
!949 = !DILocation(line: 124, column: 35, scope: !925)
!950 = !DILocation(line: 124, column: 47, scope: !925)
!951 = !DILocation(line: 124, column: 2, scope: !925)
!952 = !DILocation(line: 126, column: 22, scope: !925)
!953 = !DILocation(line: 126, column: 27, scope: !925)
!954 = !DILocation(line: 126, column: 33, scope: !925)
!955 = !DILocation(line: 126, column: 6, scope: !925)
!956 = !DILocation(line: 126, column: 4, scope: !925)
!957 = !DILocation(line: 127, column: 4, scope: !925)
!958 = !DILocation(line: 128, column: 19, scope: !925)
!959 = !DILocation(line: 128, column: 24, scope: !925)
!960 = !DILocation(line: 128, column: 30, scope: !925)
!961 = !DILocation(line: 128, column: 42, scope: !925)
!962 = !DILocation(line: 128, column: 2, scope: !925)
!963 = !DILocation(line: 130, column: 22, scope: !925)
!964 = !DILocation(line: 130, column: 27, scope: !925)
!965 = !DILocation(line: 130, column: 33, scope: !925)
!966 = !DILocation(line: 130, column: 6, scope: !925)
!967 = !DILocation(line: 130, column: 4, scope: !925)
!968 = !DILocation(line: 131, column: 4, scope: !925)
!969 = !DILocation(line: 132, column: 9, scope: !925)
!970 = !DILocation(line: 133, column: 1, scope: !925)
!971 = !DILocation(line: 132, column: 2, scope: !925)
!972 = distinct !DISubprogram(name: "__outb", scope: !973, file: !973, line: 22, type: !974, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !976)
!973 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!974 = !DISubroutineType(types: !975)
!975 = !{null, !277, !271}
!976 = !{!977, !978}
!977 = !DILocalVariable(name: "value", arg: 1, scope: !972, file: !973, line: 22, type: !277)
!978 = !DILocalVariable(name: "port", arg: 2, scope: !972, file: !973, line: 22, type: !271)
!979 = !DILocation(line: 22, column: 1, scope: !972)
!980 = !{i64 2152792168}
!981 = distinct !DISubprogram(name: "__inb", scope: !973, file: !973, line: 22, type: !982, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !984)
!982 = !DISubroutineType(types: !983)
!983 = !{!277, !271}
!984 = !{!985, !986}
!985 = !DILocalVariable(name: "port", arg: 1, scope: !981, file: !973, line: 22, type: !271)
!986 = !DILocalVariable(name: "value", scope: !981, file: !973, line: 22, type: !277)
!987 = !DILocation(line: 22, column: 1, scope: !981)
!988 = !{i64 2152792364}
!989 = !DISubprogram(name: "write_pci_config_byte", scope: !215, file: !215, line: 14, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !277, !277, !277, !277, !277}
!992 = distinct !DISubprogram(name: "ati_sbx00_rev", scope: !3, file: !3, line: 161, type: !926, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !993)
!993 = !{!994, !995, !996, !997}
!994 = !DILocalVariable(name: "num", arg: 1, scope: !992, file: !3, line: 161, type: !25)
!995 = !DILocalVariable(name: "slot", arg: 2, scope: !992, file: !3, line: 161, type: !25)
!996 = !DILocalVariable(name: "func", arg: 3, scope: !992, file: !3, line: 161, type: !25)
!997 = !DILocalVariable(name: "d", scope: !992, file: !3, line: 163, type: !58)
!998 = !DILocation(line: 161, column: 37, scope: !992)
!999 = !DILocation(line: 161, column: 46, scope: !992)
!1000 = !DILocation(line: 161, column: 56, scope: !992)
!1001 = !DILocation(line: 163, column: 2, scope: !992)
!1002 = !DILocation(line: 163, column: 6, scope: !992)
!1003 = !DILocation(line: 165, column: 22, scope: !992)
!1004 = !DILocation(line: 165, column: 27, scope: !992)
!1005 = !DILocation(line: 165, column: 33, scope: !992)
!1006 = !DILocation(line: 165, column: 6, scope: !992)
!1007 = !DILocation(line: 165, column: 4, scope: !992)
!1008 = !DILocation(line: 166, column: 4, scope: !992)
!1009 = !DILocation(line: 168, column: 9, scope: !992)
!1010 = !DILocation(line: 169, column: 1, scope: !992)
!1011 = !DILocation(line: 168, column: 2, scope: !992)
!1012 = distinct !DISubprogram(name: "set_irq_remapping_broken", scope: !1013, file: !1013, line: 56, type: !206, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1013 = !DIFile(filename: "./arch/x86/include/asm/irq_remapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d134e2978e90b219732acb7afcfa9cd2")
!1014 = !DILocation(line: 56, column: 53, scope: !1012)
!1015 = distinct !DISubprogram(name: "resource_size", scope: !183, file: !183, line: 219, type: !1016, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1020)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!34, !1018}
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!1020 = !{!1021}
!1021 = !DILocalVariable(name: "res", arg: 1, scope: !1015, file: !183, line: 219, type: !1018)
!1022 = !DILocation(line: 219, column: 68, scope: !1015)
!1023 = !DILocation(line: 221, column: 9, scope: !1015)
!1024 = !DILocation(line: 221, column: 14, scope: !1015)
!1025 = !DILocation(line: 221, column: 20, scope: !1015)
!1026 = !DILocation(line: 221, column: 25, scope: !1015)
!1027 = !DILocation(line: 221, column: 18, scope: !1015)
!1028 = !DILocation(line: 221, column: 31, scope: !1015)
!1029 = !DILocation(line: 221, column: 2, scope: !1015)
!1030 = distinct !DISubprogram(name: "intel_graphics_stolen", scope: !3, file: !3, line: 568, type: !1031, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1033)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !25, !25, !25, !26}
!1033 = !{!1034, !1035, !1036, !1037, !1038, !1039, !1040}
!1034 = !DILocalVariable(name: "num", arg: 1, scope: !1030, file: !3, line: 568, type: !25)
!1035 = !DILocalVariable(name: "slot", arg: 2, scope: !1030, file: !3, line: 568, type: !25)
!1036 = !DILocalVariable(name: "func", arg: 3, scope: !1030, file: !3, line: 568, type: !25)
!1037 = !DILocalVariable(name: "early_ops", arg: 4, scope: !1030, file: !3, line: 569, type: !26)
!1038 = !DILocalVariable(name: "base", scope: !1030, file: !3, line: 571, type: !34)
!1039 = !DILocalVariable(name: "size", scope: !1030, file: !3, line: 571, type: !34)
!1040 = !DILocalVariable(name: "end", scope: !1030, file: !3, line: 572, type: !34)
!1041 = !DILocation(line: 568, column: 27, scope: !1030)
!1042 = !DILocation(line: 568, column: 36, scope: !1030)
!1043 = !DILocation(line: 568, column: 46, scope: !1030)
!1044 = !DILocation(line: 569, column: 39, scope: !1030)
!1045 = !DILocation(line: 571, column: 2, scope: !1030)
!1046 = !DILocation(line: 571, column: 18, scope: !1030)
!1047 = !DILocation(line: 571, column: 24, scope: !1030)
!1048 = !DILocation(line: 572, column: 2, scope: !1030)
!1049 = !DILocation(line: 572, column: 18, scope: !1030)
!1050 = !DILocation(line: 574, column: 9, scope: !1030)
!1051 = !DILocation(line: 574, column: 20, scope: !1030)
!1052 = !DILocation(line: 574, column: 32, scope: !1030)
!1053 = !DILocation(line: 574, column: 37, scope: !1030)
!1054 = !DILocation(line: 574, column: 43, scope: !1030)
!1055 = !DILocation(line: 574, column: 7, scope: !1030)
!1056 = !DILocation(line: 575, column: 9, scope: !1030)
!1057 = !DILocation(line: 575, column: 20, scope: !1030)
!1058 = !DILocation(line: 575, column: 32, scope: !1030)
!1059 = !DILocation(line: 575, column: 37, scope: !1030)
!1060 = !DILocation(line: 575, column: 43, scope: !1030)
!1061 = !DILocation(line: 575, column: 49, scope: !1030)
!1062 = !DILocation(line: 575, column: 7, scope: !1030)
!1063 = !DILocation(line: 577, column: 7, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 577, column: 6)
!1065 = !DILocation(line: 577, column: 12, scope: !1064)
!1066 = !DILocation(line: 577, column: 16, scope: !1064)
!1067 = !DILocation(line: 577, column: 6, scope: !1030)
!1068 = !DILocation(line: 578, column: 3, scope: !1064)
!1069 = !DILocation(line: 580, column: 8, scope: !1030)
!1070 = !DILocation(line: 580, column: 15, scope: !1030)
!1071 = !DILocation(line: 580, column: 13, scope: !1030)
!1072 = !DILocation(line: 580, column: 20, scope: !1030)
!1073 = !DILocation(line: 580, column: 6, scope: !1030)
!1074 = !DILocation(line: 582, column: 36, scope: !1030)
!1075 = !DILocation(line: 582, column: 34, scope: !1030)
!1076 = !DILocation(line: 583, column: 34, scope: !1030)
!1077 = !DILocation(line: 583, column: 32, scope: !1030)
!1078 = !DILocation(line: 585, column: 2, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 585, column: 2)
!1080 = !DILocation(line: 585, column: 2, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 585, column: 2)
!1082 = !DILocation(line: 589, column: 18, scope: !1030)
!1083 = !DILocation(line: 589, column: 24, scope: !1030)
!1084 = !DILocation(line: 589, column: 2, scope: !1030)
!1085 = !DILocation(line: 590, column: 21, scope: !1030)
!1086 = !DILocation(line: 590, column: 2, scope: !1030)
!1087 = !DILocation(line: 591, column: 1, scope: !1030)
!1088 = distinct !DISubprogram(name: "i830_stolen_size", scope: !3, file: !3, line: 354, type: !32, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1089)
!1089 = !{!1090, !1091, !1092, !1093, !1094, !1095, !1098}
!1090 = !DILocalVariable(name: "num", arg: 1, scope: !1088, file: !3, line: 354, type: !25)
!1091 = !DILocalVariable(name: "slot", arg: 2, scope: !1088, file: !3, line: 354, type: !25)
!1092 = !DILocalVariable(name: "func", arg: 3, scope: !1088, file: !3, line: 354, type: !25)
!1093 = !DILocalVariable(name: "gmch_ctrl", scope: !1088, file: !3, line: 356, type: !271)
!1094 = !DILocalVariable(name: "gms", scope: !1088, file: !3, line: 357, type: !271)
!1095 = !DILocalVariable(name: "__ret_warn_on", scope: !1096, file: !3, line: 369, type: !25)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 369, column: 3)
!1097 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 362, column: 15)
!1098 = !DILocalVariable(name: "__flags", scope: !1099, file: !3, line: 369, type: !25)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 369, column: 3)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 369, column: 3)
!1101 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 369, column: 3)
!1102 = !DILocation(line: 354, column: 52, scope: !1088)
!1103 = !DILocation(line: 354, column: 61, scope: !1088)
!1104 = !DILocation(line: 354, column: 71, scope: !1088)
!1105 = !DILocation(line: 356, column: 2, scope: !1088)
!1106 = !DILocation(line: 356, column: 6, scope: !1088)
!1107 = !DILocation(line: 357, column: 2, scope: !1088)
!1108 = !DILocation(line: 357, column: 6, scope: !1088)
!1109 = !DILocation(line: 359, column: 14, scope: !1088)
!1110 = !DILocation(line: 359, column: 12, scope: !1088)
!1111 = !DILocation(line: 360, column: 8, scope: !1088)
!1112 = !DILocation(line: 360, column: 18, scope: !1088)
!1113 = !DILocation(line: 360, column: 6, scope: !1088)
!1114 = !DILocation(line: 362, column: 10, scope: !1088)
!1115 = !DILocation(line: 362, column: 2, scope: !1088)
!1116 = !DILocation(line: 363, column: 33, scope: !1097)
!1117 = !DILocation(line: 364, column: 34, scope: !1097)
!1118 = !DILocation(line: 365, column: 34, scope: !1097)
!1119 = !DILocation(line: 367, column: 28, scope: !1097)
!1120 = !DILocation(line: 369, column: 3, scope: !1096)
!1121 = !DILocation(line: 369, column: 3, scope: !1101)
!1122 = !DILocation(line: 369, column: 3, scope: !1100)
!1123 = !DILocation(line: 369, column: 3, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 369, column: 3)
!1125 = !DILocation(line: 369, column: 3, scope: !1099)
!1126 = !DILocation(line: 369, column: 3, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 369, column: 3)
!1128 = !DILocation(line: 369, column: 3, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 369, column: 3)
!1130 = !{i64 2156359063, i64 2156359092, i64 2156359138, i64 2156359196, i64 2156359250, i64 2156359304, i64 2156359359, i64 2156359390, i64 2156359698, i64 2156359704, i64 2156359751, i64 2156359774, i64 2156359800}
!1131 = !DILocation(line: 369, column: 3, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 369, column: 3)
!1133 = !DILocation(line: 369, column: 3, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 369, column: 3)
!1135 = !DILocation(line: 369, column: 3, scope: !1097)
!1136 = !DILocation(line: 370, column: 2, scope: !1097)
!1137 = !DILocation(line: 372, column: 2, scope: !1088)
!1138 = !DILocation(line: 373, column: 1, scope: !1088)
!1139 = distinct !DISubprogram(name: "i830_stolen_base", scope: !3, file: !3, line: 299, type: !44, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1140)
!1140 = !{!1141, !1142, !1143, !1144}
!1141 = !DILocalVariable(name: "num", arg: 1, scope: !1139, file: !3, line: 299, type: !25)
!1142 = !DILocalVariable(name: "slot", arg: 2, scope: !1139, file: !3, line: 299, type: !25)
!1143 = !DILocalVariable(name: "func", arg: 3, scope: !1139, file: !3, line: 299, type: !25)
!1144 = !DILocalVariable(name: "stolen_size", arg: 4, scope: !1139, file: !3, line: 300, type: !34)
!1145 = !DILocation(line: 299, column: 52, scope: !1139)
!1146 = !DILocation(line: 299, column: 61, scope: !1139)
!1147 = !DILocation(line: 299, column: 71, scope: !1139)
!1148 = !DILocation(line: 300, column: 29, scope: !1139)
!1149 = !DILocation(line: 302, column: 9, scope: !1139)
!1150 = !DILocation(line: 302, column: 27, scope: !1139)
!1151 = !DILocation(line: 302, column: 25, scope: !1139)
!1152 = !DILocation(line: 302, column: 46, scope: !1139)
!1153 = !DILocation(line: 302, column: 44, scope: !1139)
!1154 = !DILocation(line: 302, column: 2, scope: !1139)
!1155 = !DISubprogram(name: "__warn_printk", scope: !1156, file: !1156, line: 93, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1156 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !188, null}
!1159 = distinct !DISubprogram(name: "i830_mem_size", scope: !3, file: !3, line: 285, type: !1160, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!34}
!1162 = !DILocation(line: 287, column: 9, scope: !1159)
!1163 = !DILocation(line: 287, column: 50, scope: !1159)
!1164 = !DILocation(line: 287, column: 2, scope: !1159)
!1165 = distinct !DISubprogram(name: "i830_tseg_size", scope: !3, file: !3, line: 245, type: !1160, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1166)
!1166 = !{!1167}
!1167 = !DILocalVariable(name: "esmramc", scope: !1165, file: !3, line: 247, type: !277)
!1168 = !DILocation(line: 247, column: 2, scope: !1165)
!1169 = !DILocation(line: 247, column: 5, scope: !1165)
!1170 = !DILocation(line: 247, column: 15, scope: !1165)
!1171 = !DILocation(line: 249, column: 8, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 249, column: 6)
!1173 = !DILocation(line: 249, column: 16, scope: !1172)
!1174 = !DILocation(line: 249, column: 6, scope: !1165)
!1175 = !DILocation(line: 250, column: 3, scope: !1172)
!1176 = !DILocation(line: 252, column: 6, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 252, column: 6)
!1178 = !DILocation(line: 252, column: 14, scope: !1177)
!1179 = !DILocation(line: 252, column: 6, scope: !1165)
!1180 = !DILocation(line: 253, column: 3, scope: !1177)
!1181 = !DILocation(line: 255, column: 3, scope: !1177)
!1182 = !DILocation(line: 256, column: 1, scope: !1165)
!1183 = distinct !DISubprogram(name: "i845_stolen_base", scope: !3, file: !3, line: 305, type: !44, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1184)
!1184 = !{!1185, !1186, !1187, !1188}
!1185 = !DILocalVariable(name: "num", arg: 1, scope: !1183, file: !3, line: 305, type: !25)
!1186 = !DILocalVariable(name: "slot", arg: 2, scope: !1183, file: !3, line: 305, type: !25)
!1187 = !DILocalVariable(name: "func", arg: 3, scope: !1183, file: !3, line: 305, type: !25)
!1188 = !DILocalVariable(name: "stolen_size", arg: 4, scope: !1183, file: !3, line: 306, type: !34)
!1189 = !DILocation(line: 305, column: 52, scope: !1183)
!1190 = !DILocation(line: 305, column: 61, scope: !1183)
!1191 = !DILocation(line: 305, column: 71, scope: !1183)
!1192 = !DILocation(line: 306, column: 29, scope: !1183)
!1193 = !DILocation(line: 308, column: 9, scope: !1183)
!1194 = !DILocation(line: 308, column: 27, scope: !1183)
!1195 = !DILocation(line: 308, column: 25, scope: !1183)
!1196 = !DILocation(line: 308, column: 46, scope: !1183)
!1197 = !DILocation(line: 308, column: 44, scope: !1183)
!1198 = !DILocation(line: 308, column: 2, scope: !1183)
!1199 = distinct !DISubprogram(name: "i845_tseg_size", scope: !3, file: !3, line: 258, type: !1160, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1200)
!1200 = !{!1201, !1202, !1203, !1206}
!1201 = !DILocalVariable(name: "esmramc", scope: !1199, file: !3, line: 260, type: !277)
!1202 = !DILocalVariable(name: "tseg_size", scope: !1199, file: !3, line: 261, type: !277)
!1203 = !DILocalVariable(name: "__ret_warn_on", scope: !1204, file: !3, line: 270, type: !25)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 270, column: 3)
!1205 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 266, column: 21)
!1206 = !DILocalVariable(name: "__flags", scope: !1207, file: !3, line: 270, type: !25)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 270, column: 3)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 270, column: 3)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 270, column: 3)
!1210 = !DILocation(line: 260, column: 2, scope: !1199)
!1211 = !DILocation(line: 260, column: 5, scope: !1199)
!1212 = !DILocation(line: 260, column: 15, scope: !1199)
!1213 = !DILocation(line: 261, column: 2, scope: !1199)
!1214 = !DILocation(line: 261, column: 5, scope: !1199)
!1215 = !DILocation(line: 261, column: 17, scope: !1199)
!1216 = !DILocation(line: 261, column: 25, scope: !1199)
!1217 = !DILocation(line: 263, column: 8, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 263, column: 6)
!1219 = !DILocation(line: 263, column: 16, scope: !1218)
!1220 = !DILocation(line: 263, column: 6, scope: !1199)
!1221 = !DILocation(line: 264, column: 3, scope: !1218)
!1222 = !DILocation(line: 266, column: 10, scope: !1199)
!1223 = !DILocation(line: 266, column: 2, scope: !1199)
!1224 = !DILocation(line: 267, column: 28, scope: !1205)
!1225 = !DILocation(line: 268, column: 27, scope: !1205)
!1226 = !DILocation(line: 270, column: 3, scope: !1204)
!1227 = !DILocation(line: 270, column: 3, scope: !1209)
!1228 = !DILocation(line: 270, column: 3, scope: !1208)
!1229 = !DILocation(line: 270, column: 3, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 270, column: 3)
!1231 = !DILocation(line: 270, column: 3, scope: !1207)
!1232 = !DILocation(line: 270, column: 3, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 270, column: 3)
!1234 = !DILocation(line: 270, column: 3, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 270, column: 3)
!1236 = !{i64 2156355360, i64 2156355389, i64 2156355435, i64 2156355493, i64 2156355547, i64 2156355601, i64 2156355656, i64 2156355687, i64 2156355995, i64 2156356001, i64 2156356048, i64 2156356071, i64 2156356097}
!1237 = !DILocation(line: 270, column: 3, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 270, column: 3)
!1239 = !DILocation(line: 270, column: 3, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 270, column: 3)
!1241 = !DILocation(line: 270, column: 3, scope: !1205)
!1242 = !DILocation(line: 271, column: 2, scope: !1205)
!1243 = !DILocation(line: 272, column: 2, scope: !1199)
!1244 = !DILocation(line: 273, column: 1, scope: !1199)
!1245 = distinct !DISubprogram(name: "gen3_stolen_size", scope: !3, file: !3, line: 375, type: !32, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1246)
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252, !1255}
!1247 = !DILocalVariable(name: "num", arg: 1, scope: !1245, file: !3, line: 375, type: !25)
!1248 = !DILocalVariable(name: "slot", arg: 2, scope: !1245, file: !3, line: 375, type: !25)
!1249 = !DILocalVariable(name: "func", arg: 3, scope: !1245, file: !3, line: 375, type: !25)
!1250 = !DILocalVariable(name: "gmch_ctrl", scope: !1245, file: !3, line: 377, type: !271)
!1251 = !DILocalVariable(name: "gms", scope: !1245, file: !3, line: 378, type: !271)
!1252 = !DILocalVariable(name: "__ret_warn_on", scope: !1253, file: !3, line: 398, type: !25)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 398, column: 3)
!1254 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 383, column: 15)
!1255 = !DILocalVariable(name: "__flags", scope: !1256, file: !3, line: 398, type: !25)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 398, column: 3)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 398, column: 3)
!1258 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 398, column: 3)
!1259 = !DILocation(line: 375, column: 52, scope: !1245)
!1260 = !DILocation(line: 375, column: 61, scope: !1245)
!1261 = !DILocation(line: 375, column: 71, scope: !1245)
!1262 = !DILocation(line: 377, column: 2, scope: !1245)
!1263 = !DILocation(line: 377, column: 6, scope: !1245)
!1264 = !DILocation(line: 378, column: 2, scope: !1245)
!1265 = !DILocation(line: 378, column: 6, scope: !1245)
!1266 = !DILocation(line: 380, column: 14, scope: !1245)
!1267 = !DILocation(line: 380, column: 12, scope: !1245)
!1268 = !DILocation(line: 381, column: 8, scope: !1245)
!1269 = !DILocation(line: 381, column: 18, scope: !1245)
!1270 = !DILocation(line: 381, column: 6, scope: !1245)
!1271 = !DILocation(line: 383, column: 10, scope: !1245)
!1272 = !DILocation(line: 383, column: 2, scope: !1245)
!1273 = !DILocation(line: 384, column: 32, scope: !1254)
!1274 = !DILocation(line: 385, column: 32, scope: !1254)
!1275 = !DILocation(line: 386, column: 32, scope: !1254)
!1276 = !DILocation(line: 387, column: 33, scope: !1254)
!1277 = !DILocation(line: 388, column: 33, scope: !1254)
!1278 = !DILocation(line: 389, column: 33, scope: !1254)
!1279 = !DILocation(line: 390, column: 33, scope: !1254)
!1280 = !DILocation(line: 391, column: 33, scope: !1254)
!1281 = !DILocation(line: 392, column: 33, scope: !1254)
!1282 = !DILocation(line: 393, column: 34, scope: !1254)
!1283 = !DILocation(line: 394, column: 34, scope: !1254)
!1284 = !DILocation(line: 395, column: 34, scope: !1254)
!1285 = !DILocation(line: 396, column: 34, scope: !1254)
!1286 = !DILocation(line: 398, column: 3, scope: !1253)
!1287 = !DILocation(line: 398, column: 3, scope: !1258)
!1288 = !DILocation(line: 398, column: 3, scope: !1257)
!1289 = !DILocation(line: 398, column: 3, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 398, column: 3)
!1291 = !DILocation(line: 398, column: 3, scope: !1256)
!1292 = !DILocation(line: 398, column: 3, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 398, column: 3)
!1294 = !DILocation(line: 398, column: 3, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 398, column: 3)
!1296 = !{i64 2156362043, i64 2156362072, i64 2156362118, i64 2156362176, i64 2156362230, i64 2156362284, i64 2156362339, i64 2156362370, i64 2156362678, i64 2156362684, i64 2156362731, i64 2156362754, i64 2156362780}
!1297 = !DILocation(line: 398, column: 3, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 398, column: 3)
!1299 = !DILocation(line: 398, column: 3, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 398, column: 3)
!1301 = !DILocation(line: 398, column: 3, scope: !1254)
!1302 = !DILocation(line: 399, column: 2, scope: !1254)
!1303 = !DILocation(line: 401, column: 2, scope: !1245)
!1304 = !DILocation(line: 402, column: 1, scope: !1245)
!1305 = distinct !DISubprogram(name: "i85x_stolen_base", scope: !3, file: !3, line: 311, type: !44, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1306)
!1306 = !{!1307, !1308, !1309, !1310}
!1307 = !DILocalVariable(name: "num", arg: 1, scope: !1305, file: !3, line: 311, type: !25)
!1308 = !DILocalVariable(name: "slot", arg: 2, scope: !1305, file: !3, line: 311, type: !25)
!1309 = !DILocalVariable(name: "func", arg: 3, scope: !1305, file: !3, line: 311, type: !25)
!1310 = !DILocalVariable(name: "stolen_size", arg: 4, scope: !1305, file: !3, line: 312, type: !34)
!1311 = !DILocation(line: 311, column: 52, scope: !1305)
!1312 = !DILocation(line: 311, column: 61, scope: !1305)
!1313 = !DILocation(line: 311, column: 71, scope: !1305)
!1314 = !DILocation(line: 312, column: 29, scope: !1305)
!1315 = !DILocation(line: 314, column: 9, scope: !1305)
!1316 = !DILocation(line: 314, column: 27, scope: !1305)
!1317 = !DILocation(line: 314, column: 25, scope: !1305)
!1318 = !DILocation(line: 314, column: 46, scope: !1305)
!1319 = !DILocation(line: 314, column: 44, scope: !1305)
!1320 = !DILocation(line: 314, column: 2, scope: !1305)
!1321 = distinct !DISubprogram(name: "i85x_mem_size", scope: !3, file: !3, line: 290, type: !1160, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1322 = !DILocation(line: 292, column: 9, scope: !1321)
!1323 = !DILocation(line: 292, column: 50, scope: !1321)
!1324 = !DILocation(line: 292, column: 2, scope: !1321)
!1325 = distinct !DISubprogram(name: "i85x_tseg_size", scope: !3, file: !3, line: 275, type: !1160, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1326)
!1326 = !{!1327}
!1327 = !DILocalVariable(name: "esmramc", scope: !1325, file: !3, line: 277, type: !277)
!1328 = !DILocation(line: 277, column: 2, scope: !1325)
!1329 = !DILocation(line: 277, column: 5, scope: !1325)
!1330 = !DILocation(line: 277, column: 15, scope: !1325)
!1331 = !DILocation(line: 279, column: 8, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 279, column: 6)
!1333 = !DILocation(line: 279, column: 16, scope: !1332)
!1334 = !DILocation(line: 279, column: 6, scope: !1325)
!1335 = !DILocation(line: 280, column: 3, scope: !1332)
!1336 = !DILocation(line: 282, column: 2, scope: !1325)
!1337 = !DILocation(line: 283, column: 1, scope: !1325)
!1338 = distinct !DISubprogram(name: "i865_stolen_base", scope: !3, file: !3, line: 317, type: !44, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1344}
!1340 = !DILocalVariable(name: "num", arg: 1, scope: !1338, file: !3, line: 317, type: !25)
!1341 = !DILocalVariable(name: "slot", arg: 2, scope: !1338, file: !3, line: 317, type: !25)
!1342 = !DILocalVariable(name: "func", arg: 3, scope: !1338, file: !3, line: 317, type: !25)
!1343 = !DILocalVariable(name: "stolen_size", arg: 4, scope: !1338, file: !3, line: 318, type: !34)
!1344 = !DILocalVariable(name: "toud", scope: !1338, file: !3, line: 320, type: !271)
!1345 = !DILocation(line: 317, column: 52, scope: !1338)
!1346 = !DILocation(line: 317, column: 61, scope: !1338)
!1347 = !DILocation(line: 317, column: 71, scope: !1338)
!1348 = !DILocation(line: 318, column: 29, scope: !1338)
!1349 = !DILocation(line: 320, column: 2, scope: !1338)
!1350 = !DILocation(line: 320, column: 6, scope: !1338)
!1351 = !DILocation(line: 322, column: 9, scope: !1338)
!1352 = !DILocation(line: 322, column: 7, scope: !1338)
!1353 = !DILocation(line: 324, column: 9, scope: !1338)
!1354 = !DILocation(line: 324, column: 14, scope: !1338)
!1355 = !DILocation(line: 324, column: 25, scope: !1338)
!1356 = !DILocation(line: 324, column: 23, scope: !1338)
!1357 = !DILocation(line: 325, column: 1, scope: !1338)
!1358 = !DILocation(line: 324, column: 2, scope: !1338)
!1359 = distinct !DISubprogram(name: "gen3_stolen_base", scope: !3, file: !3, line: 327, type: !44, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1365}
!1361 = !DILocalVariable(name: "num", arg: 1, scope: !1359, file: !3, line: 327, type: !25)
!1362 = !DILocalVariable(name: "slot", arg: 2, scope: !1359, file: !3, line: 327, type: !25)
!1363 = !DILocalVariable(name: "func", arg: 3, scope: !1359, file: !3, line: 327, type: !25)
!1364 = !DILocalVariable(name: "stolen_size", arg: 4, scope: !1359, file: !3, line: 328, type: !34)
!1365 = !DILocalVariable(name: "bsm", scope: !1359, file: !3, line: 330, type: !58)
!1366 = !DILocation(line: 327, column: 52, scope: !1359)
!1367 = !DILocation(line: 327, column: 61, scope: !1359)
!1368 = !DILocation(line: 327, column: 71, scope: !1359)
!1369 = !DILocation(line: 328, column: 29, scope: !1359)
!1370 = !DILocation(line: 330, column: 2, scope: !1359)
!1371 = !DILocation(line: 330, column: 6, scope: !1359)
!1372 = !DILocation(line: 337, column: 24, scope: !1359)
!1373 = !DILocation(line: 337, column: 29, scope: !1359)
!1374 = !DILocation(line: 337, column: 35, scope: !1359)
!1375 = !DILocation(line: 337, column: 8, scope: !1359)
!1376 = !DILocation(line: 337, column: 6, scope: !1359)
!1377 = !DILocation(line: 339, column: 9, scope: !1359)
!1378 = !DILocation(line: 339, column: 13, scope: !1359)
!1379 = !DILocation(line: 340, column: 1, scope: !1359)
!1380 = !DILocation(line: 339, column: 2, scope: !1359)
!1381 = distinct !DISubprogram(name: "gen6_stolen_size", scope: !3, file: !3, line: 404, type: !32, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1382)
!1382 = !{!1383, !1384, !1385, !1386, !1387}
!1383 = !DILocalVariable(name: "num", arg: 1, scope: !1381, file: !3, line: 404, type: !25)
!1384 = !DILocalVariable(name: "slot", arg: 2, scope: !1381, file: !3, line: 404, type: !25)
!1385 = !DILocalVariable(name: "func", arg: 3, scope: !1381, file: !3, line: 404, type: !25)
!1386 = !DILocalVariable(name: "gmch_ctrl", scope: !1381, file: !3, line: 406, type: !271)
!1387 = !DILocalVariable(name: "gms", scope: !1381, file: !3, line: 407, type: !271)
!1388 = !DILocation(line: 404, column: 52, scope: !1381)
!1389 = !DILocation(line: 404, column: 61, scope: !1381)
!1390 = !DILocation(line: 404, column: 71, scope: !1381)
!1391 = !DILocation(line: 406, column: 2, scope: !1381)
!1392 = !DILocation(line: 406, column: 6, scope: !1381)
!1393 = !DILocation(line: 407, column: 2, scope: !1381)
!1394 = !DILocation(line: 407, column: 6, scope: !1381)
!1395 = !DILocation(line: 409, column: 33, scope: !1381)
!1396 = !DILocation(line: 409, column: 38, scope: !1381)
!1397 = !DILocation(line: 409, column: 44, scope: !1381)
!1398 = !DILocation(line: 409, column: 14, scope: !1381)
!1399 = !DILocation(line: 409, column: 12, scope: !1381)
!1400 = !DILocation(line: 410, column: 9, scope: !1381)
!1401 = !DILocation(line: 410, column: 19, scope: !1381)
!1402 = !DILocation(line: 410, column: 42, scope: !1381)
!1403 = !DILocation(line: 410, column: 8, scope: !1381)
!1404 = !DILocation(line: 410, column: 6, scope: !1381)
!1405 = !DILocation(line: 412, column: 9, scope: !1381)
!1406 = !DILocation(line: 412, column: 13, scope: !1381)
!1407 = !DILocation(line: 413, column: 1, scope: !1381)
!1408 = !DILocation(line: 412, column: 2, scope: !1381)
!1409 = distinct !DISubprogram(name: "gen8_stolen_size", scope: !3, file: !3, line: 415, type: !32, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1410)
!1410 = !{!1411, !1412, !1413, !1414, !1415}
!1411 = !DILocalVariable(name: "num", arg: 1, scope: !1409, file: !3, line: 415, type: !25)
!1412 = !DILocalVariable(name: "slot", arg: 2, scope: !1409, file: !3, line: 415, type: !25)
!1413 = !DILocalVariable(name: "func", arg: 3, scope: !1409, file: !3, line: 415, type: !25)
!1414 = !DILocalVariable(name: "gmch_ctrl", scope: !1409, file: !3, line: 417, type: !271)
!1415 = !DILocalVariable(name: "gms", scope: !1409, file: !3, line: 418, type: !271)
!1416 = !DILocation(line: 415, column: 52, scope: !1409)
!1417 = !DILocation(line: 415, column: 61, scope: !1409)
!1418 = !DILocation(line: 415, column: 71, scope: !1409)
!1419 = !DILocation(line: 417, column: 2, scope: !1409)
!1420 = !DILocation(line: 417, column: 6, scope: !1409)
!1421 = !DILocation(line: 418, column: 2, scope: !1409)
!1422 = !DILocation(line: 418, column: 6, scope: !1409)
!1423 = !DILocation(line: 420, column: 33, scope: !1409)
!1424 = !DILocation(line: 420, column: 38, scope: !1409)
!1425 = !DILocation(line: 420, column: 44, scope: !1409)
!1426 = !DILocation(line: 420, column: 14, scope: !1409)
!1427 = !DILocation(line: 420, column: 12, scope: !1409)
!1428 = !DILocation(line: 421, column: 9, scope: !1409)
!1429 = !DILocation(line: 421, column: 19, scope: !1409)
!1430 = !DILocation(line: 421, column: 42, scope: !1409)
!1431 = !DILocation(line: 421, column: 8, scope: !1409)
!1432 = !DILocation(line: 421, column: 6, scope: !1409)
!1433 = !DILocation(line: 423, column: 9, scope: !1409)
!1434 = !DILocation(line: 423, column: 13, scope: !1409)
!1435 = !DILocation(line: 424, column: 1, scope: !1409)
!1436 = !DILocation(line: 423, column: 2, scope: !1409)
!1437 = distinct !DISubprogram(name: "chv_stolen_size", scope: !3, file: !3, line: 426, type: !32, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1438)
!1438 = !{!1439, !1440, !1441, !1442, !1443}
!1439 = !DILocalVariable(name: "num", arg: 1, scope: !1437, file: !3, line: 426, type: !25)
!1440 = !DILocalVariable(name: "slot", arg: 2, scope: !1437, file: !3, line: 426, type: !25)
!1441 = !DILocalVariable(name: "func", arg: 3, scope: !1437, file: !3, line: 426, type: !25)
!1442 = !DILocalVariable(name: "gmch_ctrl", scope: !1437, file: !3, line: 428, type: !271)
!1443 = !DILocalVariable(name: "gms", scope: !1437, file: !3, line: 429, type: !271)
!1444 = !DILocation(line: 426, column: 51, scope: !1437)
!1445 = !DILocation(line: 426, column: 60, scope: !1437)
!1446 = !DILocation(line: 426, column: 70, scope: !1437)
!1447 = !DILocation(line: 428, column: 2, scope: !1437)
!1448 = !DILocation(line: 428, column: 6, scope: !1437)
!1449 = !DILocation(line: 429, column: 2, scope: !1437)
!1450 = !DILocation(line: 429, column: 6, scope: !1437)
!1451 = !DILocation(line: 431, column: 33, scope: !1437)
!1452 = !DILocation(line: 431, column: 38, scope: !1437)
!1453 = !DILocation(line: 431, column: 44, scope: !1437)
!1454 = !DILocation(line: 431, column: 14, scope: !1437)
!1455 = !DILocation(line: 431, column: 12, scope: !1437)
!1456 = !DILocation(line: 432, column: 9, scope: !1437)
!1457 = !DILocation(line: 432, column: 19, scope: !1437)
!1458 = !DILocation(line: 432, column: 42, scope: !1437)
!1459 = !DILocation(line: 432, column: 8, scope: !1437)
!1460 = !DILocation(line: 432, column: 6, scope: !1437)
!1461 = !DILocation(line: 439, column: 6, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 439, column: 6)
!1463 = !DILocation(line: 439, column: 10, scope: !1462)
!1464 = !DILocation(line: 439, column: 6, scope: !1437)
!1465 = !DILocation(line: 440, column: 10, scope: !1462)
!1466 = !DILocation(line: 440, column: 14, scope: !1462)
!1467 = !DILocation(line: 440, column: 3, scope: !1462)
!1468 = !DILocation(line: 441, column: 11, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 441, column: 11)
!1470 = !DILocation(line: 441, column: 15, scope: !1469)
!1471 = !DILocation(line: 441, column: 11, scope: !1462)
!1472 = !DILocation(line: 442, column: 11, scope: !1469)
!1473 = !DILocation(line: 442, column: 15, scope: !1469)
!1474 = !DILocation(line: 442, column: 10, scope: !1469)
!1475 = !DILocation(line: 442, column: 23, scope: !1469)
!1476 = !DILocation(line: 442, column: 31, scope: !1469)
!1477 = !DILocation(line: 442, column: 3, scope: !1469)
!1478 = !DILocation(line: 444, column: 11, scope: !1469)
!1479 = !DILocation(line: 444, column: 15, scope: !1469)
!1480 = !DILocation(line: 444, column: 10, scope: !1469)
!1481 = !DILocation(line: 444, column: 23, scope: !1469)
!1482 = !DILocation(line: 444, column: 31, scope: !1469)
!1483 = !DILocation(line: 444, column: 3, scope: !1469)
!1484 = !DILocation(line: 445, column: 1, scope: !1437)
!1485 = distinct !DISubprogram(name: "gen9_stolen_size", scope: !3, file: !3, line: 447, type: !32, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1486)
!1486 = !{!1487, !1488, !1489, !1490, !1491}
!1487 = !DILocalVariable(name: "num", arg: 1, scope: !1485, file: !3, line: 447, type: !25)
!1488 = !DILocalVariable(name: "slot", arg: 2, scope: !1485, file: !3, line: 447, type: !25)
!1489 = !DILocalVariable(name: "func", arg: 3, scope: !1485, file: !3, line: 447, type: !25)
!1490 = !DILocalVariable(name: "gmch_ctrl", scope: !1485, file: !3, line: 449, type: !271)
!1491 = !DILocalVariable(name: "gms", scope: !1485, file: !3, line: 450, type: !271)
!1492 = !DILocation(line: 447, column: 52, scope: !1485)
!1493 = !DILocation(line: 447, column: 61, scope: !1485)
!1494 = !DILocation(line: 447, column: 71, scope: !1485)
!1495 = !DILocation(line: 449, column: 2, scope: !1485)
!1496 = !DILocation(line: 449, column: 6, scope: !1485)
!1497 = !DILocation(line: 450, column: 2, scope: !1485)
!1498 = !DILocation(line: 450, column: 6, scope: !1485)
!1499 = !DILocation(line: 452, column: 33, scope: !1485)
!1500 = !DILocation(line: 452, column: 38, scope: !1485)
!1501 = !DILocation(line: 452, column: 44, scope: !1485)
!1502 = !DILocation(line: 452, column: 14, scope: !1485)
!1503 = !DILocation(line: 452, column: 12, scope: !1485)
!1504 = !DILocation(line: 453, column: 9, scope: !1485)
!1505 = !DILocation(line: 453, column: 19, scope: !1485)
!1506 = !DILocation(line: 453, column: 42, scope: !1485)
!1507 = !DILocation(line: 453, column: 8, scope: !1485)
!1508 = !DILocation(line: 453, column: 6, scope: !1485)
!1509 = !DILocation(line: 457, column: 6, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 457, column: 6)
!1511 = !DILocation(line: 457, column: 10, scope: !1510)
!1512 = !DILocation(line: 457, column: 6, scope: !1485)
!1513 = !DILocation(line: 458, column: 10, scope: !1510)
!1514 = !DILocation(line: 458, column: 14, scope: !1510)
!1515 = !DILocation(line: 458, column: 3, scope: !1510)
!1516 = !DILocation(line: 460, column: 11, scope: !1510)
!1517 = !DILocation(line: 460, column: 15, scope: !1510)
!1518 = !DILocation(line: 460, column: 10, scope: !1510)
!1519 = !DILocation(line: 460, column: 23, scope: !1510)
!1520 = !DILocation(line: 460, column: 31, scope: !1510)
!1521 = !DILocation(line: 460, column: 3, scope: !1510)
!1522 = !DILocation(line: 461, column: 1, scope: !1485)
!1523 = distinct !DISubprogram(name: "gen11_stolen_base", scope: !3, file: !3, line: 342, type: !44, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1524)
!1524 = !{!1525, !1526, !1527, !1528, !1529}
!1525 = !DILocalVariable(name: "num", arg: 1, scope: !1523, file: !3, line: 342, type: !25)
!1526 = !DILocalVariable(name: "slot", arg: 2, scope: !1523, file: !3, line: 342, type: !25)
!1527 = !DILocalVariable(name: "func", arg: 3, scope: !1523, file: !3, line: 342, type: !25)
!1528 = !DILocalVariable(name: "stolen_size", arg: 4, scope: !1523, file: !3, line: 343, type: !34)
!1529 = !DILocalVariable(name: "bsm", scope: !1523, file: !3, line: 345, type: !37)
!1530 = !DILocation(line: 342, column: 53, scope: !1523)
!1531 = !DILocation(line: 342, column: 62, scope: !1523)
!1532 = !DILocation(line: 342, column: 72, scope: !1523)
!1533 = !DILocation(line: 343, column: 23, scope: !1523)
!1534 = !DILocation(line: 345, column: 2, scope: !1523)
!1535 = !DILocation(line: 345, column: 6, scope: !1523)
!1536 = !DILocation(line: 347, column: 24, scope: !1523)
!1537 = !DILocation(line: 347, column: 29, scope: !1523)
!1538 = !DILocation(line: 347, column: 35, scope: !1523)
!1539 = !DILocation(line: 347, column: 8, scope: !1523)
!1540 = !DILocation(line: 347, column: 6, scope: !1523)
!1541 = !DILocation(line: 348, column: 6, scope: !1523)
!1542 = !DILocation(line: 349, column: 30, scope: !1523)
!1543 = !DILocation(line: 349, column: 35, scope: !1523)
!1544 = !DILocation(line: 349, column: 41, scope: !1523)
!1545 = !DILocation(line: 349, column: 14, scope: !1523)
!1546 = !DILocation(line: 349, column: 9, scope: !1523)
!1547 = !DILocation(line: 349, column: 68, scope: !1523)
!1548 = !DILocation(line: 349, column: 6, scope: !1523)
!1549 = !DILocation(line: 351, column: 9, scope: !1523)
!1550 = !DILocation(line: 352, column: 1, scope: !1523)
!1551 = !DILocation(line: 351, column: 2, scope: !1523)
!1552 = !DISubprogram(name: "e820__range_add", scope: !1553, file: !1553, line: 17, type: !1554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1553 = !DIFile(filename: "./arch/x86/include/asm/e820/api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65a6719b6cd64e8daf1f569367f0fcc3")
!1554 = !DISubroutineType(types: !1555)
!1555 = !{null, !37, !37, !5}
!1556 = !DISubprogram(name: "e820__update_table", scope: !1553, file: !1553, line: 22, type: !1557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!25, !1559}
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "e820_table", file: !6, line: 94, size: 51232, elements: !1561)
!1561 = !{!1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_entries", scope: !1560, file: !6, line: 95, baseType: !59, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1560, file: !6, line: 96, baseType: !1564, size: 51200, offset: 32)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1565, size: 51200, elements: !1570)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "e820_entry", file: !6, line: 55, size: 160, elements: !1566)
!1566 = !{!1567, !1568, !1569}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1565, file: !6, line: 56, baseType: !37, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1565, file: !6, line: 57, baseType: !37, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1565, file: !6, line: 58, baseType: !5, size: 32, offset: 128)
!1570 = !{!1571}
!1571 = !DISubrange(count: 320)
!1572 = !DISubprogram(name: "write_pci_config_16", scope: !215, file: !215, line: 15, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !277, !277, !277, !277, !271}
!1575 = !DISubprogram(name: "__const_udelay", scope: !1576, file: !1576, line: 11, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1576 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!1577 = !DISubroutineType(types: !1578)
!1578 = !{null, !46}
!1579 = !DISubprogram(name: "early_ioremap", scope: !1580, file: !1580, line: 11, type: !1581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1580 = !DIFile(filename: "./include/asm-generic/early_ioremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f963a4865cd884f109103123c55bb3b2")
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!24, !34, !46}
!1583 = !DISubprogram(name: "ioread32", scope: !1584, file: !1584, line: 32, type: !1585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1584 = !DIFile(filename: "./include/asm-generic/iomap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2fb4069c6c763a33a87cd5332e9980e8")
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!7, !1587}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1589 = !DISubprogram(name: "iowrite32", scope: !1584, file: !1584, line: 53, type: !1590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !58, !24}
!1592 = !DISubprogram(name: "early_iounmap", scope: !1580, file: !1580, line: 19, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null, !24, !46}
