; ModuleID = 'arch/x86/pci/common.c'
source_filename = "arch/x86/pci/common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.cpuinfo_x86 = type { %union.anon.16, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.18, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.16 = type { i32 }
%union.anon.18 = type { i64, [88 x i8] }
%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.edid_info = type { [128 x i8] }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type <{ i64, i64, i32 }>
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon.19, %union.anon.26, i8, i8 }>
%union.anon.19 = type { %struct.anon.22 }
%struct.anon.22 = type { i64 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { i8, i8, i16, i32, i64 }
%struct.pci_raw_ops = type { ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.13, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }
%struct.pci_sysdata = type { i32, i32, ptr, ptr, ptr }
%struct.setup_data = type { i64, i32, i32, [0 x i8] }
%struct.pci_setup_rom = type { %struct.setup_data, i16, i16, i64, i64, i64, i64, i64, [0 x i8] }
%struct.dmi_header = type { i8, i8, i16 }

@pci_probe = hidden global i32 15, align 4, !dbg !0
@noioapicreroute = hidden global i32 0, align 4, !dbg !5082
@pcibios_last_bus = hidden global i32 -1, align 4, !dbg !5084
@raw_pci_ops = hidden global ptr null, section ".data..read_mostly", align 8, !dbg !5188
@raw_pci_ext_ops = hidden global ptr null, section ".data..read_mostly", align 8, !dbg !5202
@pci_root_ops = hidden global %struct.pci_ops { ptr null, ptr null, ptr null, ptr @pci_read, ptr @pci_write }, align 8, !dbg !5086
@pci_config_lock = hidden global %struct.raw_spinlock zeroinitializer, align 4, !dbg !5088
@can_skip_pciprobe_dmi_table = internal constant [4 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @can_skip_ioresource_align, ptr @.str.31, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"IBM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"x3800\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @can_skip_ioresource_align, ptr @.str.32, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"IBM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"x3850\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @can_skip_ioresource_align, ptr @.str.33, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"IBM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"x3950\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], section ".init.rodata", align 16, !dbg !5213
@pciprobe_dmi_table = internal constant [25 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.35, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"PowerEdge 1950\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.36, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"PowerEdge 1955\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.37, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"PowerEdge 2900\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.38, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"PowerEdge 2950\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.39, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"PowerEdge R900\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @find_sort_method, ptr @.str.40, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.41, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"HP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ProLiant BL20p G3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.42, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"HP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ProLiant BL20p G4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.43, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"HP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ProLiant BL30p G1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.44, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"HP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ProLiant BL25p G1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.45, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"HP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ProLiant BL35p G1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.46, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"HP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ProLiant BL45p G1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.47, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"HP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ProLiant BL45p G2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.48, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"HP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ProLiant BL460c G1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.49, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"HP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ProLiant BL465c G1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.50, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"HP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ProLiant BL480c G1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.51, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"HP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ProLiant BL685c G1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.52, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"HP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ProLiant DL360\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.53, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"HP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ProLiant DL380\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.54, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"HP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ProLiant DL385 G2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_bf_sort, ptr @.str.55, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"HP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ProLiant DL585 G2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_scan_all, ptr @.str.56, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Stratus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ftServer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_scan_all, ptr @.str.56, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"NEC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Express5800/R32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_scan_all, ptr @.str.56, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"NEC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Express5800/R31\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], section ".init.rodata", align 16, !dbg !5272
@.str = private unnamed_addr constant [35 x i8] c"\013PCI: OOM, skipping PCI bus %02x\0A\00", align 1, !dbg !5090
@.str.1 = private unnamed_addr constant [40 x i8] c"\017PCI: Probing PCI hardware (bus %02x)\0A\00", align 1, !dbg !5095
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@pci_dfl_cache_line_size = external dso_local global i8, align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\017PCI: pci_cache_line_size set to %d bytes\0A\00", align 1, !dbg !5100
@.str.3 = private unnamed_addr constant [52 x i8] c"\017PCI: Unknown cacheline size. Setting to 32 bytes\0A\00", align 1, !dbg !5105
@.str.4 = private unnamed_addr constant [36 x i8] c"\014PCI: System does not support PCI\0A\00", align 1, !dbg !5108
@pci_bf_sort = internal global i32 0, align 4, !dbg !5180
@.str.5 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !5113
@.str.6 = private unnamed_addr constant [7 x i8] c"bfsort\00", align 1, !dbg !5116
@.str.7 = private unnamed_addr constant [9 x i8] c"nobfsort\00", align 1, !dbg !5119
@.str.8 = private unnamed_addr constant [6 x i8] c"conf1\00", align 1, !dbg !5124
@.str.9 = private unnamed_addr constant [6 x i8] c"conf2\00", align 1, !dbg !5126
@.str.10 = private unnamed_addr constant [9 x i8] c"nommconf\00", align 1, !dbg !5128
@.str.11 = private unnamed_addr constant [24 x i8] c"check_enable_amd_mmconf\00", align 1, !dbg !5130
@.str.12 = private unnamed_addr constant [7 x i8] c"noacpi\00", align 1, !dbg !5135
@.str.13 = private unnamed_addr constant [8 x i8] c"noearly\00", align 1, !dbg !5137
@.str.14 = private unnamed_addr constant [12 x i8] c"usepirqmask\00", align 1, !dbg !5139
@.str.15 = private unnamed_addr constant [9 x i8] c"irqmask=\00", align 1, !dbg !5142
@pcibios_irq_mask = external dso_local global i32, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"lastbus=\00", align 1, !dbg !5144
@.str.17 = private unnamed_addr constant [4 x i8] c"rom\00", align 1, !dbg !5146
@.str.18 = private unnamed_addr constant [6 x i8] c"norom\00", align 1, !dbg !5148
@.str.19 = private unnamed_addr constant [6 x i8] c"nobar\00", align 1, !dbg !5150
@.str.20 = private unnamed_addr constant [14 x i8] c"assign-busses\00", align 1, !dbg !5152
@.str.21 = private unnamed_addr constant [8 x i8] c"use_crs\00", align 1, !dbg !5157
@.str.22 = private unnamed_addr constant [6 x i8] c"nocrs\00", align 1, !dbg !5159
@.str.23 = private unnamed_addr constant [9 x i8] c"use_e820\00", align 1, !dbg !5161
@.str.24 = private unnamed_addr constant [8 x i8] c"no_e820\00", align 1, !dbg !5163
@.str.25 = private unnamed_addr constant [16 x i8] c"big_root_window\00", align 1, !dbg !5165
@.str.26 = private unnamed_addr constant [9 x i8] c"routeirq\00", align 1, !dbg !5167
@pci_routeirq = hidden global i32 0, align 4, !dbg !5182
@.str.27 = private unnamed_addr constant [15 x i8] c"skip_isa_align\00", align 1, !dbg !5169
@.str.28 = private unnamed_addr constant [14 x i8] c"noioapicquirk\00", align 1, !dbg !5174
@noioapicquirk = hidden global i32 0, align 4, !dbg !5184
@.str.29 = private unnamed_addr constant [14 x i8] c"ioapicreroute\00", align 1, !dbg !5176
@.str.30 = private unnamed_addr constant [16 x i8] c"noioapicreroute\00", align 1, !dbg !5178
@boot_params = external dso_local global %struct.boot_params, align 1
@x86_pci_msi_default_domain = external dso_local global ptr, align 8
@pcibios_enable_irq = external dso_local global ptr, align 8
@pcibios_disable_irq = external dso_local global ptr, align 8
@pirq_table_addr = hidden global i64 0, align 8, !dbg !5186
@.str.31 = private unnamed_addr constant [17 x i8] c"IBM System x3800\00", align 1, !dbg !5204
@.str.32 = private unnamed_addr constant [17 x i8] c"IBM System x3850\00", align 1, !dbg !5209
@.str.33 = private unnamed_addr constant [17 x i8] c"IBM System x3950\00", align 1, !dbg !5211
@.str.34 = private unnamed_addr constant [44 x i8] c"\016PCI: %s detected, can skip ISA alignment\0A\00", align 1, !dbg !5216
@.str.35 = private unnamed_addr constant [20 x i8] c"Dell PowerEdge 1950\00", align 1, !dbg !5218
@.str.36 = private unnamed_addr constant [20 x i8] c"Dell PowerEdge 1955\00", align 1, !dbg !5221
@.str.37 = private unnamed_addr constant [20 x i8] c"Dell PowerEdge 2900\00", align 1, !dbg !5223
@.str.38 = private unnamed_addr constant [20 x i8] c"Dell PowerEdge 2950\00", align 1, !dbg !5225
@.str.39 = private unnamed_addr constant [20 x i8] c"Dell PowerEdge R900\00", align 1, !dbg !5227
@.str.40 = private unnamed_addr constant [12 x i8] c"Dell System\00", align 1, !dbg !5229
@.str.41 = private unnamed_addr constant [21 x i8] c"HP ProLiant BL20p G3\00", align 1, !dbg !5231
@.str.42 = private unnamed_addr constant [21 x i8] c"HP ProLiant BL20p G4\00", align 1, !dbg !5236
@.str.43 = private unnamed_addr constant [21 x i8] c"HP ProLiant BL30p G1\00", align 1, !dbg !5238
@.str.44 = private unnamed_addr constant [21 x i8] c"HP ProLiant BL25p G1\00", align 1, !dbg !5240
@.str.45 = private unnamed_addr constant [21 x i8] c"HP ProLiant BL35p G1\00", align 1, !dbg !5242
@.str.46 = private unnamed_addr constant [21 x i8] c"HP ProLiant BL45p G1\00", align 1, !dbg !5244
@.str.47 = private unnamed_addr constant [21 x i8] c"HP ProLiant BL45p G2\00", align 1, !dbg !5246
@.str.48 = private unnamed_addr constant [22 x i8] c"HP ProLiant BL460c G1\00", align 1, !dbg !5248
@.str.49 = private unnamed_addr constant [22 x i8] c"HP ProLiant BL465c G1\00", align 1, !dbg !5253
@.str.50 = private unnamed_addr constant [22 x i8] c"HP ProLiant BL480c G1\00", align 1, !dbg !5255
@.str.51 = private unnamed_addr constant [22 x i8] c"HP ProLiant BL685c G1\00", align 1, !dbg !5257
@.str.52 = private unnamed_addr constant [18 x i8] c"HP ProLiant DL360\00", align 1, !dbg !5259
@.str.53 = private unnamed_addr constant [18 x i8] c"HP ProLiant DL380\00", align 1, !dbg !5264
@.str.54 = private unnamed_addr constant [21 x i8] c"HP ProLiant DL385 G2\00", align 1, !dbg !5266
@.str.55 = private unnamed_addr constant [21 x i8] c"HP ProLiant DL585 G2\00", align 1, !dbg !5268
@.str.56 = private unnamed_addr constant [21 x i8] c"Stratus/NEC ftServer\00", align 1, !dbg !5270
@.str.57 = private unnamed_addr constant [42 x i8] c"\016PCI: %s detected, enabling pci=bfsort.\0A\00", align 1, !dbg !5277
@.str.58 = private unnamed_addr constant [48 x i8] c"\016PCI: %s detected, enabling pci=pcie_scan_all\0A\00", align 1, !dbg !5282
@pci_flags = external dso_local global i32, align 4
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.59 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5284
@acpi_noirq = external dso_local global i32, align 4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @raw_pci_read(i32 noundef %domain, i32 noundef %bus, i32 noundef %devfn, i32 noundef %reg, i32 noundef %len, ptr noundef %val) #0 align 16 !dbg !5295 {
entry:
  %retval = alloca i32, align 4
  %domain.addr = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %devfn.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  store i32 %domain, ptr %domain.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !5297, metadata !DIExpression()), !dbg !5303
  store i32 %bus, ptr %bus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5298, metadata !DIExpression()), !dbg !5304
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !5299, metadata !DIExpression()), !dbg !5305
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5300, metadata !DIExpression()), !dbg !5306
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5301, metadata !DIExpression()), !dbg !5307
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5302, metadata !DIExpression()), !dbg !5308
  %0 = load i32, ptr %domain.addr, align 4, !dbg !5309
  %cmp = icmp eq i32 %0, 0, !dbg !5311
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5312

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %reg.addr, align 4, !dbg !5313
  %cmp1 = icmp slt i32 %1, 256, !dbg !5314
  br i1 %cmp1, label %land.lhs.true2, label %if.end, !dbg !5315

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr @raw_pci_ops, align 8, !dbg !5316
  %tobool = icmp ne ptr %2, null, !dbg !5316
  br i1 %tobool, label %if.then, label %if.end, !dbg !5317

if.then:                                          ; preds = %land.lhs.true2
  %3 = load ptr, ptr @raw_pci_ops, align 8, !dbg !5318
  %read = getelementptr inbounds %struct.pci_raw_ops, ptr %3, i32 0, i32 0, !dbg !5319
  %4 = load ptr, ptr %read, align 8, !dbg !5319
  %5 = load i32, ptr %domain.addr, align 4, !dbg !5320
  %6 = load i32, ptr %bus.addr, align 4, !dbg !5321
  %7 = load i32, ptr %devfn.addr, align 4, !dbg !5322
  %8 = load i32, ptr %reg.addr, align 4, !dbg !5323
  %9 = load i32, ptr %len.addr, align 4, !dbg !5324
  %10 = load ptr, ptr %val.addr, align 8, !dbg !5325
  %call = call i32 %4(i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10) #15, !dbg !5318
  store i32 %call, ptr %retval, align 4, !dbg !5326
  br label %return, !dbg !5326

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %11 = load ptr, ptr @raw_pci_ext_ops, align 8, !dbg !5327
  %tobool3 = icmp ne ptr %11, null, !dbg !5327
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !5329

if.then4:                                         ; preds = %if.end
  %12 = load ptr, ptr @raw_pci_ext_ops, align 8, !dbg !5330
  %read5 = getelementptr inbounds %struct.pci_raw_ops, ptr %12, i32 0, i32 0, !dbg !5331
  %13 = load ptr, ptr %read5, align 8, !dbg !5331
  %14 = load i32, ptr %domain.addr, align 4, !dbg !5332
  %15 = load i32, ptr %bus.addr, align 4, !dbg !5333
  %16 = load i32, ptr %devfn.addr, align 4, !dbg !5334
  %17 = load i32, ptr %reg.addr, align 4, !dbg !5335
  %18 = load i32, ptr %len.addr, align 4, !dbg !5336
  %19 = load ptr, ptr %val.addr, align 8, !dbg !5337
  %call6 = call i32 %13(i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, ptr noundef %19) #15, !dbg !5330
  store i32 %call6, ptr %retval, align 4, !dbg !5338
  br label %return, !dbg !5338

if.end7:                                          ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5339
  br label %return, !dbg !5339

return:                                           ; preds = %if.end7, %if.then4, %if.then
  %20 = load i32, ptr %retval, align 4, !dbg !5340
  ret i32 %20, !dbg !5340
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @raw_pci_write(i32 noundef %domain, i32 noundef %bus, i32 noundef %devfn, i32 noundef %reg, i32 noundef %len, i32 noundef %val) #0 align 16 !dbg !5341 {
entry:
  %retval = alloca i32, align 4
  %domain.addr = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %devfn.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store i32 %domain, ptr %domain.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !5343, metadata !DIExpression()), !dbg !5349
  store i32 %bus, ptr %bus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5344, metadata !DIExpression()), !dbg !5350
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !5345, metadata !DIExpression()), !dbg !5351
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5346, metadata !DIExpression()), !dbg !5352
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5347, metadata !DIExpression()), !dbg !5353
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5348, metadata !DIExpression()), !dbg !5354
  %0 = load i32, ptr %domain.addr, align 4, !dbg !5355
  %cmp = icmp eq i32 %0, 0, !dbg !5357
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5358

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %reg.addr, align 4, !dbg !5359
  %cmp1 = icmp slt i32 %1, 256, !dbg !5360
  br i1 %cmp1, label %land.lhs.true2, label %if.end, !dbg !5361

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr @raw_pci_ops, align 8, !dbg !5362
  %tobool = icmp ne ptr %2, null, !dbg !5362
  br i1 %tobool, label %if.then, label %if.end, !dbg !5363

if.then:                                          ; preds = %land.lhs.true2
  %3 = load ptr, ptr @raw_pci_ops, align 8, !dbg !5364
  %write = getelementptr inbounds %struct.pci_raw_ops, ptr %3, i32 0, i32 1, !dbg !5365
  %4 = load ptr, ptr %write, align 8, !dbg !5365
  %5 = load i32, ptr %domain.addr, align 4, !dbg !5366
  %6 = load i32, ptr %bus.addr, align 4, !dbg !5367
  %7 = load i32, ptr %devfn.addr, align 4, !dbg !5368
  %8 = load i32, ptr %reg.addr, align 4, !dbg !5369
  %9 = load i32, ptr %len.addr, align 4, !dbg !5370
  %10 = load i32, ptr %val.addr, align 4, !dbg !5371
  %call = call i32 %4(i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #15, !dbg !5364
  store i32 %call, ptr %retval, align 4, !dbg !5372
  br label %return, !dbg !5372

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %11 = load ptr, ptr @raw_pci_ext_ops, align 8, !dbg !5373
  %tobool3 = icmp ne ptr %11, null, !dbg !5373
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !5375

if.then4:                                         ; preds = %if.end
  %12 = load ptr, ptr @raw_pci_ext_ops, align 8, !dbg !5376
  %write5 = getelementptr inbounds %struct.pci_raw_ops, ptr %12, i32 0, i32 1, !dbg !5377
  %13 = load ptr, ptr %write5, align 8, !dbg !5377
  %14 = load i32, ptr %domain.addr, align 4, !dbg !5378
  %15 = load i32, ptr %bus.addr, align 4, !dbg !5379
  %16 = load i32, ptr %devfn.addr, align 4, !dbg !5380
  %17 = load i32, ptr %reg.addr, align 4, !dbg !5381
  %18 = load i32, ptr %len.addr, align 4, !dbg !5382
  %19 = load i32, ptr %val.addr, align 4, !dbg !5383
  %call6 = call i32 %13(i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19) #15, !dbg !5376
  store i32 %call6, ptr %retval, align 4, !dbg !5384
  br label %return, !dbg !5384

if.end7:                                          ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5385
  br label %return, !dbg !5385

return:                                           ; preds = %if.end7, %if.then4, %if.then
  %20 = load i32, ptr %retval, align 4, !dbg !5386
  ret i32 %20, !dbg !5386
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_read(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %value) #0 align 16 !dbg !5387 {
entry:
  %bus.addr = alloca ptr, align 8
  %devfn.addr = alloca i32, align 4
  %where.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5389, metadata !DIExpression()), !dbg !5394
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !5390, metadata !DIExpression()), !dbg !5395
  store i32 %where, ptr %where.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !5391, metadata !DIExpression()), !dbg !5396
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5392, metadata !DIExpression()), !dbg !5397
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5393, metadata !DIExpression()), !dbg !5398
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5399
  %call = call i32 @pci_domain_nr(ptr noundef %0) #15, !dbg !5400
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5401
  %number = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 12, !dbg !5402
  %2 = load i8, ptr %number, align 8, !dbg !5402
  %conv = zext i8 %2 to i32, !dbg !5401
  %3 = load i32, ptr %devfn.addr, align 4, !dbg !5403
  %4 = load i32, ptr %where.addr, align 4, !dbg !5404
  %5 = load i32, ptr %size.addr, align 4, !dbg !5405
  %6 = load ptr, ptr %value.addr, align 8, !dbg !5406
  %call1 = call i32 @raw_pci_read(i32 noundef %call, i32 noundef %conv, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #15, !dbg !5407
  ret i32 %call1, !dbg !5408
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_write(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %value) #0 align 16 !dbg !5409 {
entry:
  %bus.addr = alloca ptr, align 8
  %devfn.addr = alloca i32, align 4
  %where.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5411, metadata !DIExpression()), !dbg !5416
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !5412, metadata !DIExpression()), !dbg !5417
  store i32 %where, ptr %where.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !5413, metadata !DIExpression()), !dbg !5418
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5414, metadata !DIExpression()), !dbg !5419
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5415, metadata !DIExpression()), !dbg !5420
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5421
  %call = call i32 @pci_domain_nr(ptr noundef %0) #15, !dbg !5422
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5423
  %number = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 12, !dbg !5424
  %2 = load i8, ptr %number, align 8, !dbg !5424
  %conv = zext i8 %2 to i32, !dbg !5423
  %3 = load i32, ptr %devfn.addr, align 4, !dbg !5425
  %4 = load i32, ptr %where.addr, align 4, !dbg !5426
  %5 = load i32, ptr %size.addr, align 4, !dbg !5427
  %6 = load i32, ptr %value.addr, align 4, !dbg !5428
  %call1 = call i32 @raw_pci_write(i32 noundef %call, i32 noundef %conv, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #15, !dbg !5429
  ret i32 %call1, !dbg !5430
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @dmi_check_skip_isa_align() #2 section ".init.text" align 16 !dbg !5431 {
entry:
  %call = call i32 @dmi_check_system(ptr noundef @can_skip_pciprobe_dmi_table) #15, !dbg !5432
  ret void, !dbg !5433
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5434 dso_local i32 @dmi_check_system(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pcibios_fixup_bus(ptr noundef %b) #0 align 16 !dbg !5436 {
entry:
  %b.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !5438, metadata !DIExpression()), !dbg !5446
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !5447
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5439, metadata !DIExpression()), !dbg !5448
  %0 = load ptr, ptr %b.addr, align 8, !dbg !5449
  call void @pci_read_bridge_bases(ptr noundef %0) #15, !dbg !5450
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5451
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5440, metadata !DIExpression()), !dbg !5451
  %1 = load ptr, ptr %b.addr, align 8, !dbg !5451
  %devices = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 3, !dbg !5451
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !5451
  %2 = load ptr, ptr %next, align 8, !dbg !5451
  store ptr %2, ptr %__mptr, align 8, !dbg !5451
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5451
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !5451
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5451
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5452
  %4 = load ptr, ptr %tmp, align 8, !dbg !5451
  store ptr %4, ptr %dev, align 8, !dbg !5452
  br label %for.cond, !dbg !5452

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %dev, align 8, !dbg !5453
  %bus_list = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 0, !dbg !5453
  %6 = load ptr, ptr %b.addr, align 8, !dbg !5453
  %devices1 = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 3, !dbg !5453
  %cmp = icmp eq ptr %bus_list, %devices1, !dbg !5453
  %lnot = xor i1 %cmp, true, !dbg !5453
  br i1 %lnot, label %for.body, label %for.end, !dbg !5452

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %dev, align 8, !dbg !5454
  call void @pcibios_fixup_device_resources(ptr noundef %7) #15, !dbg !5455
  br label %for.inc, !dbg !5455

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #16, !dbg !5456
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !5443, metadata !DIExpression()), !dbg !5456
  %8 = load ptr, ptr %dev, align 8, !dbg !5456
  %bus_list3 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 0, !dbg !5456
  %next4 = getelementptr inbounds %struct.list_head, ptr %bus_list3, i32 0, i32 0, !dbg !5456
  %9 = load ptr, ptr %next4, align 8, !dbg !5456
  store ptr %9, ptr %__mptr2, align 8, !dbg !5456
  %10 = load ptr, ptr %__mptr2, align 8, !dbg !5456
  %add.ptr6 = getelementptr i8, ptr %10, i64 0, !dbg !5456
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !5456
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #16, !dbg !5453
  %11 = load ptr, ptr %tmp5, align 8, !dbg !5456
  store ptr %11, ptr %dev, align 8, !dbg !5453
  br label %for.cond, !dbg !5453, !llvm.loop !5457

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !5461
  ret void, !dbg !5461
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5462 dso_local void @pci_read_bridge_bases(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcibios_fixup_device_resources(ptr noundef %dev) #0 align 16 !dbg !5463 {
entry:
  %dev.addr = alloca ptr, align 8
  %rom_r = alloca ptr, align 8
  %bar_r = alloca ptr, align 8
  %bar = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5465, metadata !DIExpression()), !dbg !5469
  call void @llvm.lifetime.start.p0(i64 8, ptr %rom_r) #16, !dbg !5470
  call void @llvm.dbg.declare(metadata ptr %rom_r, metadata !5466, metadata !DIExpression()), !dbg !5471
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5472
  %resource = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 40, !dbg !5473
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 6, !dbg !5472
  store ptr %arrayidx, ptr %rom_r, align 8, !dbg !5471
  call void @llvm.lifetime.start.p0(i64 8, ptr %bar_r) #16, !dbg !5474
  call void @llvm.dbg.declare(metadata ptr %bar_r, metadata !5467, metadata !DIExpression()), !dbg !5475
  call void @llvm.lifetime.start.p0(i64 4, ptr %bar) #16, !dbg !5476
  call void @llvm.dbg.declare(metadata ptr %bar, metadata !5468, metadata !DIExpression()), !dbg !5477
  %1 = load i32, ptr @pci_probe, align 4, !dbg !5478
  %and = and i32 %1, 2097152, !dbg !5480
  %tobool = icmp ne i32 %and, 0, !dbg !5480
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5481

if.then:                                          ; preds = %entry
  store i32 0, ptr %bar, align 4, !dbg !5482
  br label %for.cond, !dbg !5485

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %bar, align 4, !dbg !5486
  %cmp = icmp slt i32 %2, 6, !dbg !5488
  br i1 %cmp, label %for.body, label %for.end, !dbg !5489

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5490
  %resource1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 40, !dbg !5492
  %4 = load i32, ptr %bar, align 4, !dbg !5493
  %idxprom = sext i32 %4 to i64, !dbg !5490
  %arrayidx2 = getelementptr [11 x %struct.resource], ptr %resource1, i64 0, i64 %idxprom, !dbg !5490
  store ptr %arrayidx2, ptr %bar_r, align 8, !dbg !5494
  %5 = load ptr, ptr %bar_r, align 8, !dbg !5495
  %start = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 0, !dbg !5497
  %6 = load i64, ptr %start, align 8, !dbg !5497
  %cmp3 = icmp eq i64 %6, 0, !dbg !5498
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !5499

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %bar_r, align 8, !dbg !5500
  %end = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1, !dbg !5501
  %8 = load i64, ptr %end, align 8, !dbg !5501
  %cmp4 = icmp ne i64 %8, 0, !dbg !5502
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !5503

if.then5:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %bar_r, align 8, !dbg !5504
  %flags = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 3, !dbg !5506
  store i64 0, ptr %flags, align 8, !dbg !5507
  %10 = load ptr, ptr %bar_r, align 8, !dbg !5508
  %end6 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1, !dbg !5509
  store i64 0, ptr %end6, align 8, !dbg !5510
  br label %if.end, !dbg !5511

if.end:                                           ; preds = %if.then5, %land.lhs.true, %for.body
  br label %for.inc, !dbg !5512

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %bar, align 4, !dbg !5513
  %inc = add i32 %11, 1, !dbg !5513
  store i32 %inc, ptr %bar, align 4, !dbg !5513
  br label %for.cond, !dbg !5514, !llvm.loop !5515

for.end:                                          ; preds = %for.cond
  br label %if.end7, !dbg !5517

if.end7:                                          ; preds = %for.end, %entry
  %12 = load i32, ptr @pci_probe, align 4, !dbg !5518
  %and8 = and i32 %12, 524288, !dbg !5520
  %tobool9 = icmp ne i32 %and8, 0, !dbg !5520
  br i1 %tobool9, label %if.then10, label %if.end21, !dbg !5521

if.then10:                                        ; preds = %if.end7
  %13 = load ptr, ptr %rom_r, align 8, !dbg !5522
  %parent = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 5, !dbg !5525
  %14 = load ptr, ptr %parent, align 8, !dbg !5525
  %tobool11 = icmp ne ptr %14, null, !dbg !5522
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !5526

if.then12:                                        ; preds = %if.then10
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5527

if.end13:                                         ; preds = %if.then10
  %15 = load ptr, ptr %rom_r, align 8, !dbg !5528
  %start14 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 0, !dbg !5530
  %16 = load i64, ptr %start14, align 8, !dbg !5530
  %tobool15 = icmp ne i64 %16, 0, !dbg !5528
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5531

if.then16:                                        ; preds = %if.end13
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5532

if.end17:                                         ; preds = %if.end13
  %17 = load ptr, ptr %rom_r, align 8, !dbg !5534
  %flags18 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 3, !dbg !5535
  store i64 0, ptr %flags18, align 8, !dbg !5536
  %18 = load ptr, ptr %rom_r, align 8, !dbg !5537
  %end19 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 1, !dbg !5538
  store i64 0, ptr %end19, align 8, !dbg !5539
  %19 = load ptr, ptr %rom_r, align 8, !dbg !5540
  %start20 = getelementptr inbounds %struct.resource, ptr %19, i32 0, i32 0, !dbg !5541
  store i64 0, ptr %start20, align 8, !dbg !5542
  br label %if.end21, !dbg !5543

if.end21:                                         ; preds = %if.end17, %if.end7
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5544
  br label %cleanup, !dbg !5544

cleanup:                                          ; preds = %if.end21, %if.then16, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %bar) #16, !dbg !5544
  call void @llvm.lifetime.end.p0(i64 8, ptr %bar_r) #16, !dbg !5544
  call void @llvm.lifetime.end.p0(i64 8, ptr %rom_r) #16, !dbg !5544
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5544

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pcibios_add_bus(ptr noundef %bus) #0 align 16 !dbg !5545 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5547, metadata !DIExpression()), !dbg !5548
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5549
  call void @acpi_pci_add_bus(ptr noundef %0) #15, !dbg !5550
  ret void, !dbg !5551
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5552 dso_local void @acpi_pci_add_bus(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pcibios_remove_bus(ptr noundef %bus) #0 align 16 !dbg !5554 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5556, metadata !DIExpression()), !dbg !5557
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5558
  call void @acpi_pci_remove_bus(ptr noundef %0) #15, !dbg !5559
  ret void, !dbg !5560
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5561 dso_local void @acpi_pci_remove_bus(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @dmi_check_pciprobe() #2 section ".init.text" align 16 !dbg !5562 {
entry:
  %call = call i32 @dmi_check_system(ptr noundef @pciprobe_dmi_table) #15, !dbg !5563
  ret void, !dbg !5564
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pcibios_scan_root(i32 noundef %busnum) #0 align 16 !dbg !5565 {
entry:
  %busnum.addr = alloca i32, align 4
  %bus = alloca ptr, align 8
  %sd = alloca ptr, align 8
  %resources = alloca %struct.list_head, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  store i32 %busnum, ptr %busnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %busnum.addr, metadata !5567, metadata !DIExpression()), !dbg !5834
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #16, !dbg !5835
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5568, metadata !DIExpression()), !dbg !5836
  call void @llvm.lifetime.start.p0(i64 8, ptr %sd) #16, !dbg !5837
  call void @llvm.dbg.declare(metadata ptr %sd, metadata !5569, metadata !DIExpression()), !dbg !5838
  call void @llvm.lifetime.start.p0(i64 16, ptr %resources) #16, !dbg !5839
  call void @llvm.dbg.declare(metadata ptr %resources, metadata !5833, metadata !DIExpression()), !dbg !5839
  %next = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 0, !dbg !5839
  store ptr %resources, ptr %next, align 8, !dbg !5839
  %prev = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 1, !dbg !5839
  store ptr %resources, ptr %prev, align 8, !dbg !5839
  %call = call noalias ptr @kzalloc(i64 noundef 32, i32 noundef 3264) #17, !dbg !5840
  store ptr %call, ptr %sd, align 8, !dbg !5841
  %0 = load ptr, ptr %sd, align 8, !dbg !5842
  %tobool = icmp ne ptr %0, null, !dbg !5842
  br i1 %tobool, label %if.end, label %if.then, !dbg !5844

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5845

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5848

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5848

do.end:                                           ; preds = %do.cond
  %1 = load i32, ptr %busnum.addr, align 4, !dbg !5845
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %1) #18, !dbg !5845
  store i32 %call1, ptr %tmp, align 4, !dbg !5848
  %2 = load i32, ptr %tmp, align 4, !dbg !5845
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5850

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %busnum.addr, align 4, !dbg !5851
  %call2 = call i32 @x86_pci_root_bus_node(i32 noundef %3) #15, !dbg !5852
  %4 = load ptr, ptr %sd, align 8, !dbg !5853
  %node = getelementptr inbounds %struct.pci_sysdata, ptr %4, i32 0, i32 1, !dbg !5854
  store i32 %call2, ptr %node, align 4, !dbg !5855
  %5 = load i32, ptr %busnum.addr, align 4, !dbg !5856
  call void @x86_pci_root_bus_resources(i32 noundef %5, ptr noundef %resources) #15, !dbg !5857
  br label %do.body3, !dbg !5858

do.body3:                                         ; preds = %if.end
  br label %do.cond4, !dbg !5860

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !5860

do.end5:                                          ; preds = %do.cond4
  %6 = load i32, ptr %busnum.addr, align 4, !dbg !5858
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %6) #18, !dbg !5858
  store i32 %call7, ptr %tmp6, align 4, !dbg !5860
  %7 = load i32, ptr %tmp6, align 4, !dbg !5858
  %8 = load i32, ptr %busnum.addr, align 4, !dbg !5862
  %9 = load ptr, ptr %sd, align 8, !dbg !5863
  %call8 = call ptr @pci_scan_root_bus(ptr noundef null, i32 noundef %8, ptr noundef @pci_root_ops, ptr noundef %9, ptr noundef %resources) #15, !dbg !5864
  store ptr %call8, ptr %bus, align 8, !dbg !5865
  %10 = load ptr, ptr %bus, align 8, !dbg !5866
  %tobool9 = icmp ne ptr %10, null, !dbg !5866
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !5868

if.then10:                                        ; preds = %do.end5
  call void @pci_free_resource_list(ptr noundef %resources) #15, !dbg !5869
  %11 = load ptr, ptr %sd, align 8, !dbg !5871
  call void @kfree(ptr noundef %11) #15, !dbg !5872
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5873

if.end11:                                         ; preds = %do.end5
  %12 = load ptr, ptr %bus, align 8, !dbg !5874
  call void @pci_bus_add_devices(ptr noundef %12) #15, !dbg !5875
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5876
  br label %cleanup, !dbg !5876

cleanup:                                          ; preds = %if.end11, %if.then10, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr %resources) #16, !dbg !5876
  call void @llvm.lifetime.end.p0(i64 8, ptr %sd) #16, !dbg !5876
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #16, !dbg !5876
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5876

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !5877 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5881, metadata !DIExpression()), !dbg !5883
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5882, metadata !DIExpression()), !dbg !5884
  %0 = load i64, ptr %size.addr, align 8, !dbg !5885
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5886
  %or = or i32 %1, 256, !dbg !5887
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !5888
  ret ptr %call, !dbg !5889
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5890 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5894 dso_local i32 @x86_pci_root_bus_node(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5896 dso_local void @x86_pci_root_bus_resources(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5899 dso_local ptr @pci_scan_root_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5902 dso_local void @pci_free_resource_list(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5905 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5908 dso_local void @pci_bus_add_devices(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @pcibios_set_cache_line_size() #2 section ".init.text" align 16 !dbg !5913 {
entry:
  %c = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #16, !dbg !5972
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5915, metadata !DIExpression()), !dbg !5973
  store ptr @boot_cpu_data, ptr %c, align 8, !dbg !5973
  %0 = load ptr, ptr %c, align 8, !dbg !5974
  %x86_clflush_size = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 24, !dbg !5976
  %1 = load i16, ptr %x86_clflush_size, align 2, !dbg !5976
  %conv = zext i16 %1 to i32, !dbg !5974
  %cmp = icmp sgt i32 %conv, 0, !dbg !5977
  br i1 %cmp, label %if.then, label %if.else, !dbg !5978

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %c, align 8, !dbg !5979
  %x86_clflush_size2 = getelementptr inbounds %struct.cpuinfo_x86, ptr %2, i32 0, i32 24, !dbg !5981
  %3 = load i16, ptr %x86_clflush_size2, align 2, !dbg !5981
  %conv3 = zext i16 %3 to i32, !dbg !5979
  %shr = ashr i32 %conv3, 2, !dbg !5982
  %conv4 = trunc i32 %shr to i8, !dbg !5979
  store i8 %conv4, ptr @pci_dfl_cache_line_size, align 1, !dbg !5983
  br label %do.body, !dbg !5984

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5986

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5986

do.end:                                           ; preds = %do.cond
  %4 = load i8, ptr @pci_dfl_cache_line_size, align 1, !dbg !5984
  %conv5 = zext i8 %4 to i32, !dbg !5984
  %shl = shl i32 %conv5, 2, !dbg !5984
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %shl) #18, !dbg !5984
  store i32 %call, ptr %tmp, align 4, !dbg !5986
  %5 = load i32, ptr %tmp, align 4, !dbg !5984
  br label %if.end, !dbg !5988

if.else:                                          ; preds = %entry
  store i8 8, ptr @pci_dfl_cache_line_size, align 1, !dbg !5989
  br label %do.body6, !dbg !5991

do.body6:                                         ; preds = %if.else
  br label %do.cond7, !dbg !5993

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5993

do.end8:                                          ; preds = %do.cond7
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #18, !dbg !5991
  store i32 %call10, ptr %tmp9, align 4, !dbg !5993
  %6 = load i32, ptr %tmp9, align 4, !dbg !5991
  br label %if.end

if.end:                                           ; preds = %do.end8, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #16, !dbg !5995
  ret void, !dbg !5995
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @pcibios_init() #2 section ".init.text" align 16 !dbg !5996 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca i32, align 4
  %0 = load ptr, ptr @raw_pci_ops, align 8, !dbg !5997
  %tobool = icmp ne ptr %0, null, !dbg !5997
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5999

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr @raw_pci_ext_ops, align 8, !dbg !6000
  %tobool1 = icmp ne ptr %1, null, !dbg !6000
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6001

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !6002

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !6005

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #18, !dbg !6002
  store i32 %call, ptr %tmp, align 4, !dbg !6005
  %2 = load i32, ptr %tmp, align 4, !dbg !6002
  store i32 0, ptr %retval, align 4, !dbg !6007
  br label %return, !dbg !6007

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @pcibios_set_cache_line_size() #18, !dbg !6008
  call void @pcibios_resource_survey() #15, !dbg !6009
  %3 = load i32, ptr @pci_bf_sort, align 4, !dbg !6010
  %cmp = icmp sge i32 %3, 2, !dbg !6012
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6013

if.then2:                                         ; preds = %if.end
  call void @pci_sort_breadthfirst() #15, !dbg !6014
  br label %if.end3, !dbg !6014

if.end3:                                          ; preds = %if.then2, %if.end
  store i32 0, ptr %retval, align 4, !dbg !6015
  br label %return, !dbg !6015

return:                                           ; preds = %if.end3, %do.end
  %4 = load i32, ptr %retval, align 4, !dbg !6016
  ret i32 %4, !dbg !6016
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6017 dso_local void @pcibios_resource_survey() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6018 dso_local void @pci_sort_breadthfirst() #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @pcibios_setup(ptr noundef %str) #2 section ".init.text" align 16 !dbg !6019 {
entry:
  %retval = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !6023, metadata !DIExpression()), !dbg !6024
  %0 = load ptr, ptr %str.addr, align 8, !dbg !6025
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.5) #15, !dbg !6027
  %tobool = icmp ne i32 %call, 0, !dbg !6027
  br i1 %tobool, label %if.else, label %if.then, !dbg !6028

if.then:                                          ; preds = %entry
  store i32 0, ptr @pci_probe, align 4, !dbg !6029
  store ptr null, ptr %retval, align 8, !dbg !6031
  br label %return, !dbg !6031

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !6032
  %call1 = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.6) #15, !dbg !6034
  %tobool2 = icmp ne i32 %call1, 0, !dbg !6034
  br i1 %tobool2, label %if.else4, label %if.then3, !dbg !6035

if.then3:                                         ; preds = %if.else
  store i32 2, ptr @pci_bf_sort, align 4, !dbg !6036
  store ptr null, ptr %retval, align 8, !dbg !6038
  br label %return, !dbg !6038

if.else4:                                         ; preds = %if.else
  %2 = load ptr, ptr %str.addr, align 8, !dbg !6039
  %call5 = call i32 @strcmp(ptr noundef %2, ptr noundef @.str.7) #15, !dbg !6041
  %tobool6 = icmp ne i32 %call5, 0, !dbg !6041
  br i1 %tobool6, label %if.else8, label %if.then7, !dbg !6042

if.then7:                                         ; preds = %if.else4
  store i32 1, ptr @pci_bf_sort, align 4, !dbg !6043
  store ptr null, ptr %retval, align 8, !dbg !6045
  br label %return, !dbg !6045

if.else8:                                         ; preds = %if.else4
  %3 = load ptr, ptr %str.addr, align 8, !dbg !6046
  %call9 = call i32 @strcmp(ptr noundef %3, ptr noundef @.str.8) #15, !dbg !6048
  %tobool10 = icmp ne i32 %call9, 0, !dbg !6048
  br i1 %tobool10, label %if.else12, label %if.then11, !dbg !6049

if.then11:                                        ; preds = %if.else8
  store i32 1026, ptr @pci_probe, align 4, !dbg !6050
  store ptr null, ptr %retval, align 8, !dbg !6052
  br label %return, !dbg !6052

if.else12:                                        ; preds = %if.else8
  %4 = load ptr, ptr %str.addr, align 8, !dbg !6053
  %call13 = call i32 @strcmp(ptr noundef %4, ptr noundef @.str.9) #15, !dbg !6055
  %tobool14 = icmp ne i32 %call13, 0, !dbg !6055
  br i1 %tobool14, label %if.else16, label %if.then15, !dbg !6056

if.then15:                                        ; preds = %if.else12
  store i32 1028, ptr @pci_probe, align 4, !dbg !6057
  store ptr null, ptr %retval, align 8, !dbg !6059
  br label %return, !dbg !6059

if.else16:                                        ; preds = %if.else12
  %5 = load ptr, ptr %str.addr, align 8, !dbg !6060
  %call17 = call i32 @strcmp(ptr noundef %5, ptr noundef @.str.10) #15, !dbg !6062
  %tobool18 = icmp ne i32 %call17, 0, !dbg !6062
  br i1 %tobool18, label %if.else20, label %if.then19, !dbg !6063

if.then19:                                        ; preds = %if.else16
  %6 = load i32, ptr @pci_probe, align 4, !dbg !6064
  %and = and i32 %6, -9, !dbg !6064
  store i32 %and, ptr @pci_probe, align 4, !dbg !6064
  store ptr null, ptr %retval, align 8, !dbg !6066
  br label %return, !dbg !6066

if.else20:                                        ; preds = %if.else16
  %7 = load ptr, ptr %str.addr, align 8, !dbg !6067
  %call21 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.11) #15, !dbg !6069
  %tobool22 = icmp ne i32 %call21, 0, !dbg !6069
  br i1 %tobool22, label %if.else24, label %if.then23, !dbg !6070

if.then23:                                        ; preds = %if.else20
  %8 = load i32, ptr @pci_probe, align 4, !dbg !6071
  %or = or i32 %8, 131072, !dbg !6071
  store i32 %or, ptr @pci_probe, align 4, !dbg !6071
  store ptr null, ptr %retval, align 8, !dbg !6073
  br label %return, !dbg !6073

if.else24:                                        ; preds = %if.else20
  %9 = load ptr, ptr %str.addr, align 8, !dbg !6074
  %call25 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.12) #15, !dbg !6076
  %tobool26 = icmp ne i32 %call25, 0, !dbg !6076
  br i1 %tobool26, label %if.else28, label %if.then27, !dbg !6077

if.then27:                                        ; preds = %if.else24
  call void @acpi_noirq_set() #15, !dbg !6078
  store ptr null, ptr %retval, align 8, !dbg !6080
  br label %return, !dbg !6080

if.else28:                                        ; preds = %if.else24
  %10 = load ptr, ptr %str.addr, align 8, !dbg !6081
  %call29 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.13) #15, !dbg !6083
  %tobool30 = icmp ne i32 %call29, 0, !dbg !6083
  br i1 %tobool30, label %if.else33, label %if.then31, !dbg !6084

if.then31:                                        ; preds = %if.else28
  %11 = load i32, ptr @pci_probe, align 4, !dbg !6085
  %or32 = or i32 %11, 16, !dbg !6085
  store i32 %or32, ptr @pci_probe, align 4, !dbg !6085
  store ptr null, ptr %retval, align 8, !dbg !6087
  br label %return, !dbg !6087

if.else33:                                        ; preds = %if.else28
  %12 = load ptr, ptr %str.addr, align 8, !dbg !6088
  %call34 = call i32 @strcmp(ptr noundef %12, ptr noundef @.str.14) #15, !dbg !6090
  %tobool35 = icmp ne i32 %call34, 0, !dbg !6090
  br i1 %tobool35, label %if.else38, label %if.then36, !dbg !6091

if.then36:                                        ; preds = %if.else33
  %13 = load i32, ptr @pci_probe, align 4, !dbg !6092
  %or37 = or i32 %13, 2048, !dbg !6092
  store i32 %or37, ptr @pci_probe, align 4, !dbg !6092
  store ptr null, ptr %retval, align 8, !dbg !6094
  br label %return, !dbg !6094

if.else38:                                        ; preds = %if.else33
  %14 = load ptr, ptr %str.addr, align 8, !dbg !6095
  %call39 = call i32 @strncmp(ptr noundef %14, ptr noundef @.str.15, i64 noundef 8) #15, !dbg !6097
  %tobool40 = icmp ne i32 %call39, 0, !dbg !6097
  br i1 %tobool40, label %if.else43, label %if.then41, !dbg !6098

if.then41:                                        ; preds = %if.else38
  %15 = load ptr, ptr %str.addr, align 8, !dbg !6099
  %add.ptr = getelementptr i8, ptr %15, i64 8, !dbg !6101
  %call42 = call i64 @simple_strtol(ptr noundef %add.ptr, ptr noundef null, i32 noundef 0) #15, !dbg !6102
  %conv = trunc i64 %call42 to i32, !dbg !6102
  store i32 %conv, ptr @pcibios_irq_mask, align 4, !dbg !6103
  store ptr null, ptr %retval, align 8, !dbg !6104
  br label %return, !dbg !6104

if.else43:                                        ; preds = %if.else38
  %16 = load ptr, ptr %str.addr, align 8, !dbg !6105
  %call44 = call i32 @strncmp(ptr noundef %16, ptr noundef @.str.16, i64 noundef 8) #15, !dbg !6107
  %tobool45 = icmp ne i32 %call44, 0, !dbg !6107
  br i1 %tobool45, label %if.else50, label %if.then46, !dbg !6108

if.then46:                                        ; preds = %if.else43
  %17 = load ptr, ptr %str.addr, align 8, !dbg !6109
  %add.ptr47 = getelementptr i8, ptr %17, i64 8, !dbg !6111
  %call48 = call i64 @simple_strtol(ptr noundef %add.ptr47, ptr noundef null, i32 noundef 0) #15, !dbg !6112
  %conv49 = trunc i64 %call48 to i32, !dbg !6112
  store i32 %conv49, ptr @pcibios_last_bus, align 4, !dbg !6113
  store ptr null, ptr %retval, align 8, !dbg !6114
  br label %return, !dbg !6114

if.else50:                                        ; preds = %if.else43
  %18 = load ptr, ptr %str.addr, align 8, !dbg !6115
  %call51 = call i32 @strcmp(ptr noundef %18, ptr noundef @.str.17) #15, !dbg !6117
  %tobool52 = icmp ne i32 %call51, 0, !dbg !6117
  br i1 %tobool52, label %if.else55, label %if.then53, !dbg !6118

if.then53:                                        ; preds = %if.else50
  %19 = load i32, ptr @pci_probe, align 4, !dbg !6119
  %or54 = or i32 %19, 4096, !dbg !6119
  store i32 %or54, ptr @pci_probe, align 4, !dbg !6119
  store ptr null, ptr %retval, align 8, !dbg !6121
  br label %return, !dbg !6121

if.else55:                                        ; preds = %if.else50
  %20 = load ptr, ptr %str.addr, align 8, !dbg !6122
  %call56 = call i32 @strcmp(ptr noundef %20, ptr noundef @.str.18) #15, !dbg !6124
  %tobool57 = icmp ne i32 %call56, 0, !dbg !6124
  br i1 %tobool57, label %if.else60, label %if.then58, !dbg !6125

if.then58:                                        ; preds = %if.else55
  %21 = load i32, ptr @pci_probe, align 4, !dbg !6126
  %or59 = or i32 %21, 524288, !dbg !6126
  store i32 %or59, ptr @pci_probe, align 4, !dbg !6126
  store ptr null, ptr %retval, align 8, !dbg !6128
  br label %return, !dbg !6128

if.else60:                                        ; preds = %if.else55
  %22 = load ptr, ptr %str.addr, align 8, !dbg !6129
  %call61 = call i32 @strcmp(ptr noundef %22, ptr noundef @.str.19) #15, !dbg !6131
  %tobool62 = icmp ne i32 %call61, 0, !dbg !6131
  br i1 %tobool62, label %if.else65, label %if.then63, !dbg !6132

if.then63:                                        ; preds = %if.else60
  %23 = load i32, ptr @pci_probe, align 4, !dbg !6133
  %or64 = or i32 %23, 2097152, !dbg !6133
  store i32 %or64, ptr @pci_probe, align 4, !dbg !6133
  store ptr null, ptr %retval, align 8, !dbg !6135
  br label %return, !dbg !6135

if.else65:                                        ; preds = %if.else60
  %24 = load ptr, ptr %str.addr, align 8, !dbg !6136
  %call66 = call i32 @strcmp(ptr noundef %24, ptr noundef @.str.20) #15, !dbg !6138
  %tobool67 = icmp ne i32 %call66, 0, !dbg !6138
  br i1 %tobool67, label %if.else70, label %if.then68, !dbg !6139

if.then68:                                        ; preds = %if.else65
  %25 = load i32, ptr @pci_probe, align 4, !dbg !6140
  %or69 = or i32 %25, 16384, !dbg !6140
  store i32 %or69, ptr @pci_probe, align 4, !dbg !6140
  store ptr null, ptr %retval, align 8, !dbg !6142
  br label %return, !dbg !6142

if.else70:                                        ; preds = %if.else65
  %26 = load ptr, ptr %str.addr, align 8, !dbg !6143
  %call71 = call i32 @strcmp(ptr noundef %26, ptr noundef @.str.21) #15, !dbg !6145
  %tobool72 = icmp ne i32 %call71, 0, !dbg !6145
  br i1 %tobool72, label %if.else75, label %if.then73, !dbg !6146

if.then73:                                        ; preds = %if.else70
  %27 = load i32, ptr @pci_probe, align 4, !dbg !6147
  %or74 = or i32 %27, 65536, !dbg !6147
  store i32 %or74, ptr @pci_probe, align 4, !dbg !6147
  store ptr null, ptr %retval, align 8, !dbg !6149
  br label %return, !dbg !6149

if.else75:                                        ; preds = %if.else70
  %28 = load ptr, ptr %str.addr, align 8, !dbg !6150
  %call76 = call i32 @strcmp(ptr noundef %28, ptr noundef @.str.22) #15, !dbg !6152
  %tobool77 = icmp ne i32 %call76, 0, !dbg !6152
  br i1 %tobool77, label %if.else80, label %if.then78, !dbg !6153

if.then78:                                        ; preds = %if.else75
  %29 = load i32, ptr @pci_probe, align 4, !dbg !6154
  %or79 = or i32 %29, 1048576, !dbg !6154
  store i32 %or79, ptr @pci_probe, align 4, !dbg !6154
  store ptr null, ptr %retval, align 8, !dbg !6156
  br label %return, !dbg !6156

if.else80:                                        ; preds = %if.else75
  %30 = load ptr, ptr %str.addr, align 8, !dbg !6157
  %call81 = call i32 @strcmp(ptr noundef %30, ptr noundef @.str.23) #15, !dbg !6159
  %tobool82 = icmp ne i32 %call81, 0, !dbg !6159
  br i1 %tobool82, label %if.else85, label %if.then83, !dbg !6160

if.then83:                                        ; preds = %if.else80
  %31 = load i32, ptr @pci_probe, align 4, !dbg !6161
  %or84 = or i32 %31, 8388608, !dbg !6161
  store i32 %or84, ptr @pci_probe, align 4, !dbg !6161
  call void @add_taint(i32 noundef 11, i32 noundef 0) #15, !dbg !6163
  store ptr null, ptr %retval, align 8, !dbg !6164
  br label %return, !dbg !6164

if.else85:                                        ; preds = %if.else80
  %32 = load ptr, ptr %str.addr, align 8, !dbg !6165
  %call86 = call i32 @strcmp(ptr noundef %32, ptr noundef @.str.24) #15, !dbg !6167
  %tobool87 = icmp ne i32 %call86, 0, !dbg !6167
  br i1 %tobool87, label %if.else90, label %if.then88, !dbg !6168

if.then88:                                        ; preds = %if.else85
  %33 = load i32, ptr @pci_probe, align 4, !dbg !6169
  %or89 = or i32 %33, 16777216, !dbg !6169
  store i32 %or89, ptr @pci_probe, align 4, !dbg !6169
  call void @add_taint(i32 noundef 11, i32 noundef 0) #15, !dbg !6171
  store ptr null, ptr %retval, align 8, !dbg !6172
  br label %return, !dbg !6172

if.else90:                                        ; preds = %if.else85
  %34 = load ptr, ptr %str.addr, align 8, !dbg !6173
  %call91 = call i32 @strcmp(ptr noundef %34, ptr noundef @.str.25) #15, !dbg !6175
  %tobool92 = icmp ne i32 %call91, 0, !dbg !6175
  br i1 %tobool92, label %if.else95, label %if.then93, !dbg !6176

if.then93:                                        ; preds = %if.else90
  %35 = load i32, ptr @pci_probe, align 4, !dbg !6177
  %or94 = or i32 %35, 4194304, !dbg !6177
  store i32 %or94, ptr @pci_probe, align 4, !dbg !6177
  store ptr null, ptr %retval, align 8, !dbg !6179
  br label %return, !dbg !6179

if.else95:                                        ; preds = %if.else90
  %36 = load ptr, ptr %str.addr, align 8, !dbg !6180
  %call96 = call i32 @strcmp(ptr noundef %36, ptr noundef @.str.26) #15, !dbg !6182
  %tobool97 = icmp ne i32 %call96, 0, !dbg !6182
  br i1 %tobool97, label %if.else99, label %if.then98, !dbg !6183

if.then98:                                        ; preds = %if.else95
  store i32 1, ptr @pci_routeirq, align 4, !dbg !6184
  store ptr null, ptr %retval, align 8, !dbg !6186
  br label %return, !dbg !6186

if.else99:                                        ; preds = %if.else95
  %37 = load ptr, ptr %str.addr, align 8, !dbg !6187
  %call100 = call i32 @strcmp(ptr noundef %37, ptr noundef @.str.27) #15, !dbg !6189
  %tobool101 = icmp ne i32 %call100, 0, !dbg !6189
  br i1 %tobool101, label %if.else104, label %if.then102, !dbg !6190

if.then102:                                       ; preds = %if.else99
  %38 = load i32, ptr @pci_probe, align 4, !dbg !6191
  %or103 = or i32 %38, 32768, !dbg !6191
  store i32 %or103, ptr @pci_probe, align 4, !dbg !6191
  store ptr null, ptr %retval, align 8, !dbg !6193
  br label %return, !dbg !6193

if.else104:                                       ; preds = %if.else99
  %39 = load ptr, ptr %str.addr, align 8, !dbg !6194
  %call105 = call i32 @strcmp(ptr noundef %39, ptr noundef @.str.28) #15, !dbg !6196
  %tobool106 = icmp ne i32 %call105, 0, !dbg !6196
  br i1 %tobool106, label %if.else108, label %if.then107, !dbg !6197

if.then107:                                       ; preds = %if.else104
  store i32 1, ptr @noioapicquirk, align 4, !dbg !6198
  store ptr null, ptr %retval, align 8, !dbg !6200
  br label %return, !dbg !6200

if.else108:                                       ; preds = %if.else104
  %40 = load ptr, ptr %str.addr, align 8, !dbg !6201
  %call109 = call i32 @strcmp(ptr noundef %40, ptr noundef @.str.29) #15, !dbg !6203
  %tobool110 = icmp ne i32 %call109, 0, !dbg !6203
  br i1 %tobool110, label %if.else114, label %if.then111, !dbg !6204

if.then111:                                       ; preds = %if.else108
  %41 = load i32, ptr @noioapicreroute, align 4, !dbg !6205
  %cmp = icmp ne i32 %41, -1, !dbg !6208
  br i1 %cmp, label %if.then113, label %if.end, !dbg !6209

if.then113:                                       ; preds = %if.then111
  store i32 0, ptr @noioapicreroute, align 4, !dbg !6210
  br label %if.end, !dbg !6211

if.end:                                           ; preds = %if.then113, %if.then111
  store ptr null, ptr %retval, align 8, !dbg !6212
  br label %return, !dbg !6212

if.else114:                                       ; preds = %if.else108
  %42 = load ptr, ptr %str.addr, align 8, !dbg !6213
  %call115 = call i32 @strcmp(ptr noundef %42, ptr noundef @.str.30) #15, !dbg !6215
  %tobool116 = icmp ne i32 %call115, 0, !dbg !6215
  br i1 %tobool116, label %if.end122, label %if.then117, !dbg !6216

if.then117:                                       ; preds = %if.else114
  %43 = load i32, ptr @noioapicreroute, align 4, !dbg !6217
  %cmp118 = icmp ne i32 %43, -1, !dbg !6220
  br i1 %cmp118, label %if.then120, label %if.end121, !dbg !6221

if.then120:                                       ; preds = %if.then117
  store i32 1, ptr @noioapicreroute, align 4, !dbg !6222
  br label %if.end121, !dbg !6223

if.end121:                                        ; preds = %if.then120, %if.then117
  store ptr null, ptr %retval, align 8, !dbg !6224
  br label %return, !dbg !6224

if.end122:                                        ; preds = %if.else114
  br label %if.end123

if.end123:                                        ; preds = %if.end122
  br label %if.end124

if.end124:                                        ; preds = %if.end123
  br label %if.end125

if.end125:                                        ; preds = %if.end124
  br label %if.end126

if.end126:                                        ; preds = %if.end125
  br label %if.end127

if.end127:                                        ; preds = %if.end126
  br label %if.end128

if.end128:                                        ; preds = %if.end127
  br label %if.end129

if.end129:                                        ; preds = %if.end128
  br label %if.end130

if.end130:                                        ; preds = %if.end129
  br label %if.end131

if.end131:                                        ; preds = %if.end130
  br label %if.end132

if.end132:                                        ; preds = %if.end131
  br label %if.end133

if.end133:                                        ; preds = %if.end132
  br label %if.end134

if.end134:                                        ; preds = %if.end133
  br label %if.end135

if.end135:                                        ; preds = %if.end134
  br label %if.end136

if.end136:                                        ; preds = %if.end135
  br label %if.end137

if.end137:                                        ; preds = %if.end136
  br label %if.end138

if.end138:                                        ; preds = %if.end137
  br label %if.end139

if.end139:                                        ; preds = %if.end138
  br label %if.end140

if.end140:                                        ; preds = %if.end139
  br label %if.end141

if.end141:                                        ; preds = %if.end140
  br label %if.end142

if.end142:                                        ; preds = %if.end141
  br label %if.end143

if.end143:                                        ; preds = %if.end142
  br label %if.end144

if.end144:                                        ; preds = %if.end143
  br label %if.end145

if.end145:                                        ; preds = %if.end144
  br label %if.end146

if.end146:                                        ; preds = %if.end145
  br label %if.end147

if.end147:                                        ; preds = %if.end146
  %44 = load ptr, ptr %str.addr, align 8, !dbg !6225
  store ptr %44, ptr %retval, align 8, !dbg !6226
  br label %return, !dbg !6226

return:                                           ; preds = %if.end147, %if.end121, %if.end, %if.then107, %if.then102, %if.then98, %if.then93, %if.then88, %if.then83, %if.then78, %if.then73, %if.then68, %if.then63, %if.then58, %if.then53, %if.then46, %if.then41, %if.then36, %if.then31, %if.then27, %if.then23, %if.then19, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %45 = load ptr, ptr %retval, align 8, !dbg !6227
  ret ptr %45, !dbg !6227
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6228 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_noirq_set() #7 align 16 !dbg !6232 {
entry:
  store i32 1, ptr @acpi_noirq, align 4, !dbg !6234
  ret void, !dbg !6235
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6236 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6239 dso_local i64 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6244 dso_local void @add_taint(i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pcibios_assign_all_busses() #0 align 16 !dbg !6247 {
entry:
  %0 = load i32, ptr @pci_probe, align 4, !dbg !6250
  %and = and i32 %0, 16384, !dbg !6251
  %tobool = icmp ne i32 %and, 0, !dbg !6252
  %1 = zext i1 %tobool to i64, !dbg !6252
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !6252
  ret i32 %cond, !dbg !6253
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pcibios_device_add(ptr noundef %dev) #0 align 16 !dbg !6254 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %rom = alloca ptr, align 8
  %msidom = alloca ptr, align 8
  %data = alloca ptr, align 8
  %pa_data = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6256, metadata !DIExpression()), !dbg !6262
  call void @llvm.lifetime.start.p0(i64 8, ptr %rom) #16, !dbg !6263
  call void @llvm.dbg.declare(metadata ptr %rom, metadata !6257, metadata !DIExpression()), !dbg !6264
  call void @llvm.lifetime.start.p0(i64 8, ptr %msidom) #16, !dbg !6265
  call void @llvm.dbg.declare(metadata ptr %msidom, metadata !6258, metadata !DIExpression()), !dbg !6266
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !6267
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6259, metadata !DIExpression()), !dbg !6268
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa_data) #16, !dbg !6269
  call void @llvm.dbg.declare(metadata ptr %pa_data, metadata !6261, metadata !DIExpression()), !dbg !6270
  %0 = load i64, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 34), align 1, !dbg !6271
  store i64 %0, ptr %pa_data, align 8, !dbg !6272
  br label %while.cond, !dbg !6273

while.cond:                                       ; preds = %if.end36, %entry
  %1 = load i64, ptr %pa_data, align 8, !dbg !6274
  %tobool = icmp ne i64 %1, 0, !dbg !6273
  br i1 %tobool, label %while.body, label %while.end, !dbg !6273

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %pa_data, align 8, !dbg !6275
  %call = call ptr @memremap(i64 noundef %2, i64 noundef 64, i64 noundef 1) #15, !dbg !6277
  store ptr %call, ptr %data, align 8, !dbg !6278
  %3 = load ptr, ptr %data, align 8, !dbg !6279
  %tobool1 = icmp ne ptr %3, null, !dbg !6279
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6281

if.then:                                          ; preds = %while.body
  store i32 -12, ptr %retval, align 4, !dbg !6282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6282

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %data, align 8, !dbg !6283
  %type = getelementptr inbounds %struct.setup_data, ptr %4, i32 0, i32 1, !dbg !6285
  %5 = load i32, ptr %type, align 8, !dbg !6285
  %cmp = icmp eq i32 %5, 3, !dbg !6286
  br i1 %cmp, label %if.then2, label %if.end36, !dbg !6287

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %data, align 8, !dbg !6288
  store ptr %6, ptr %rom, align 8, !dbg !6290
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !6291
  %bus = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 1, !dbg !6293
  %8 = load ptr, ptr %bus, align 8, !dbg !6293
  %call3 = call i32 @pci_domain_nr(ptr noundef %8) #15, !dbg !6294
  %conv = sext i32 %call3 to i64, !dbg !6294
  %9 = load ptr, ptr %rom, align 8, !dbg !6295
  %segment = getelementptr inbounds %struct.pci_setup_rom, ptr %9, i32 0, i32 4, !dbg !6296
  %10 = load i64, ptr %segment, align 8, !dbg !6296
  %cmp4 = icmp eq i64 %conv, %10, !dbg !6297
  br i1 %cmp4, label %land.lhs.true, label %if.end35, !dbg !6298

land.lhs.true:                                    ; preds = %if.then2
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !6299
  %bus6 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 1, !dbg !6300
  %12 = load ptr, ptr %bus6, align 8, !dbg !6300
  %number = getelementptr inbounds %struct.pci_bus, ptr %12, i32 0, i32 12, !dbg !6301
  %13 = load i8, ptr %number, align 8, !dbg !6301
  %conv7 = zext i8 %13 to i64, !dbg !6299
  %14 = load ptr, ptr %rom, align 8, !dbg !6302
  %bus8 = getelementptr inbounds %struct.pci_setup_rom, ptr %14, i32 0, i32 5, !dbg !6303
  %15 = load i64, ptr %bus8, align 8, !dbg !6303
  %cmp9 = icmp eq i64 %conv7, %15, !dbg !6304
  br i1 %cmp9, label %land.lhs.true11, label %if.end35, !dbg !6305

land.lhs.true11:                                  ; preds = %land.lhs.true
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !6306
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 6, !dbg !6306
  %17 = load i32, ptr %devfn, align 8, !dbg !6306
  %shr = lshr i32 %17, 3, !dbg !6306
  %and = and i32 %shr, 31, !dbg !6306
  %conv12 = zext i32 %and to i64, !dbg !6306
  %18 = load ptr, ptr %rom, align 8, !dbg !6307
  %device = getelementptr inbounds %struct.pci_setup_rom, ptr %18, i32 0, i32 6, !dbg !6308
  %19 = load i64, ptr %device, align 8, !dbg !6308
  %cmp13 = icmp eq i64 %conv12, %19, !dbg !6309
  br i1 %cmp13, label %land.lhs.true15, label %if.end35, !dbg !6310

land.lhs.true15:                                  ; preds = %land.lhs.true11
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !6311
  %devfn16 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 6, !dbg !6311
  %21 = load i32, ptr %devfn16, align 8, !dbg !6311
  %and17 = and i32 %21, 7, !dbg !6311
  %conv18 = zext i32 %and17 to i64, !dbg !6311
  %22 = load ptr, ptr %rom, align 8, !dbg !6312
  %function = getelementptr inbounds %struct.pci_setup_rom, ptr %22, i32 0, i32 7, !dbg !6313
  %23 = load i64, ptr %function, align 8, !dbg !6313
  %cmp19 = icmp eq i64 %conv18, %23, !dbg !6314
  br i1 %cmp19, label %land.lhs.true21, label %if.end35, !dbg !6315

land.lhs.true21:                                  ; preds = %land.lhs.true15
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !6316
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 7, !dbg !6317
  %25 = load i16, ptr %vendor, align 4, !dbg !6317
  %conv22 = zext i16 %25 to i32, !dbg !6316
  %26 = load ptr, ptr %rom, align 8, !dbg !6318
  %vendor23 = getelementptr inbounds %struct.pci_setup_rom, ptr %26, i32 0, i32 1, !dbg !6319
  %27 = load i16, ptr %vendor23, align 8, !dbg !6319
  %conv24 = zext i16 %27 to i32, !dbg !6318
  %cmp25 = icmp eq i32 %conv22, %conv24, !dbg !6320
  br i1 %cmp25, label %land.lhs.true27, label %if.end35, !dbg !6321

land.lhs.true27:                                  ; preds = %land.lhs.true21
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !6322
  %device28 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 8, !dbg !6323
  %29 = load i16, ptr %device28, align 2, !dbg !6323
  %conv29 = zext i16 %29 to i32, !dbg !6322
  %30 = load ptr, ptr %rom, align 8, !dbg !6324
  %devid = getelementptr inbounds %struct.pci_setup_rom, ptr %30, i32 0, i32 2, !dbg !6325
  %31 = load i16, ptr %devid, align 2, !dbg !6325
  %conv30 = zext i16 %31 to i32, !dbg !6324
  %cmp31 = icmp eq i32 %conv29, %conv30, !dbg !6326
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !6327

if.then33:                                        ; preds = %land.lhs.true27
  %32 = load i64, ptr %pa_data, align 8, !dbg !6328
  %add = add i64 %32, 64, !dbg !6330
  %33 = load ptr, ptr %dev.addr, align 8, !dbg !6331
  %rom34 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 63, !dbg !6332
  store i64 %add, ptr %rom34, align 8, !dbg !6333
  %34 = load ptr, ptr %rom, align 8, !dbg !6334
  %pcilen = getelementptr inbounds %struct.pci_setup_rom, ptr %34, i32 0, i32 3, !dbg !6335
  %35 = load i64, ptr %pcilen, align 8, !dbg !6335
  %36 = load ptr, ptr %dev.addr, align 8, !dbg !6336
  %romlen = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 64, !dbg !6337
  store i64 %35, ptr %romlen, align 8, !dbg !6338
  br label %if.end35, !dbg !6339

if.end35:                                         ; preds = %if.then33, %land.lhs.true27, %land.lhs.true21, %land.lhs.true15, %land.lhs.true11, %land.lhs.true, %if.then2
  br label %if.end36, !dbg !6340

if.end36:                                         ; preds = %if.end35, %if.end
  %37 = load ptr, ptr %data, align 8, !dbg !6341
  %next = getelementptr inbounds %struct.setup_data, ptr %37, i32 0, i32 0, !dbg !6342
  %38 = load i64, ptr %next, align 8, !dbg !6342
  store i64 %38, ptr %pa_data, align 8, !dbg !6343
  %39 = load ptr, ptr %data, align 8, !dbg !6344
  call void @memunmap(ptr noundef %39) #15, !dbg !6345
  br label %while.cond, !dbg !6273, !llvm.loop !6346

while.end:                                        ; preds = %while.cond
  %40 = load ptr, ptr %dev.addr, align 8, !dbg !6348
  call void @set_dev_domain_options(ptr noundef %40) #15, !dbg !6349
  %41 = load ptr, ptr %dev.addr, align 8, !dbg !6350
  %bus37 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 1, !dbg !6351
  %42 = load ptr, ptr %bus37, align 8, !dbg !6351
  %dev38 = getelementptr inbounds %struct.pci_bus, ptr %42, i32 0, i32 20, !dbg !6352
  %call39 = call ptr @dev_get_msi_domain(ptr noundef %dev38) #15, !dbg !6353
  store ptr %call39, ptr %msidom, align 8, !dbg !6354
  %43 = load ptr, ptr %msidom, align 8, !dbg !6355
  %tobool40 = icmp ne ptr %43, null, !dbg !6355
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !6357

if.then41:                                        ; preds = %while.end
  %44 = load ptr, ptr @x86_pci_msi_default_domain, align 8, !dbg !6358
  store ptr %44, ptr %msidom, align 8, !dbg !6359
  br label %if.end42, !dbg !6360

if.end42:                                         ; preds = %if.then41, %while.end
  %45 = load ptr, ptr %dev.addr, align 8, !dbg !6361
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 37, !dbg !6362
  %46 = load ptr, ptr %msidom, align 8, !dbg !6363
  call void @dev_set_msi_domain(ptr noundef %dev43, ptr noundef %46) #15, !dbg !6364
  store i32 0, ptr %retval, align 4, !dbg !6365
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6365

cleanup:                                          ; preds = %if.end42, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa_data) #16, !dbg !6366
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !6366
  call void @llvm.lifetime.end.p0(i64 8, ptr %msidom) #16, !dbg !6366
  call void @llvm.lifetime.end.p0(i64 8, ptr %rom) #16, !dbg !6366
  %47 = load i32, ptr %retval, align 4, !dbg !6366
  ret i32 %47, !dbg !6366
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6367 dso_local ptr @memremap(i64 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_domain_nr(ptr noundef %bus) #7 align 16 !dbg !6370 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6372, metadata !DIExpression()), !dbg !6373
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6374
  %call = call ptr @to_pci_sysdata(ptr noundef %0) #15, !dbg !6375
  %domain = getelementptr inbounds %struct.pci_sysdata, ptr %call, i32 0, i32 0, !dbg !6376
  %1 = load i32, ptr %domain, align 8, !dbg !6376
  ret i32 %1, !dbg !6377
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6378 dso_local void @memunmap(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_dev_domain_options(ptr noundef %pdev) #0 align 16 !dbg !6379 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6381, metadata !DIExpression()), !dbg !6382
  ret void, !dbg !6383
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_msi_domain(ptr noundef %dev) #7 align 16 !dbg !6384 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6388, metadata !DIExpression()), !dbg !6389
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6390
  %msi = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 13, !dbg !6391
  %domain = getelementptr inbounds %struct.dev_msi_info, ptr %msi, i32 0, i32 0, !dbg !6392
  %1 = load ptr, ptr %domain, align 8, !dbg !6392
  ret ptr %1, !dbg !6393
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_set_msi_domain(ptr noundef %dev, ptr noundef %d) #7 align 16 !dbg !6394 {
entry:
  %dev.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6398, metadata !DIExpression()), !dbg !6400
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !6399, metadata !DIExpression()), !dbg !6401
  %0 = load ptr, ptr %d.addr, align 8, !dbg !6402
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6403
  %msi = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 13, !dbg !6404
  %domain = getelementptr inbounds %struct.dev_msi_info, ptr %msi, i32 0, i32 0, !dbg !6405
  store ptr %0, ptr %domain, align 8, !dbg !6406
  ret void, !dbg !6407
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pcibios_enable_device(ptr noundef %dev, i32 noundef %mask) #0 align 16 !dbg !6408 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6410, metadata !DIExpression()), !dbg !6413
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6411, metadata !DIExpression()), !dbg !6414
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !6415
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6412, metadata !DIExpression()), !dbg !6416
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6417
  %1 = load i32, ptr %mask.addr, align 4, !dbg !6419
  %call = call i32 @pci_enable_resources(ptr noundef %0, i32 noundef %1) #15, !dbg !6420
  store i32 %call, ptr %err, align 4, !dbg !6421
  %cmp = icmp slt i32 %call, 0, !dbg !6422
  br i1 %cmp, label %if.then, label %if.end, !dbg !6423

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !6424
  store i32 %2, ptr %retval, align 4, !dbg !6425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6425

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6426
  %call1 = call zeroext i1 @pci_dev_msi_enabled(ptr noundef %3) #15, !dbg !6428
  br i1 %call1, label %if.end4, label %if.then2, !dbg !6429

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr @pcibios_enable_irq, align 8, !dbg !6430
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !6431
  %call3 = call i32 %4(ptr noundef %5) #15, !dbg !6430
  store i32 %call3, ptr %retval, align 4, !dbg !6432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6432

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6433

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !6434
  %6 = load i32, ptr %retval, align 4, !dbg !6434
  ret i32 %6, !dbg !6434
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6435 dso_local i32 @pci_enable_resources(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_dev_msi_enabled(ptr noundef %pci_dev) #7 align 16 !dbg !6436 {
entry:
  %pci_dev.addr = alloca ptr, align 8
  store ptr %pci_dev, ptr %pci_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_dev.addr, metadata !6440, metadata !DIExpression()), !dbg !6441
  %0 = load ptr, ptr %pci_dev.addr, align 8, !dbg !6442
  %msi_enabled = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43, !dbg !6443
  %bf.load = load i40, ptr %msi_enabled, align 1, !dbg !6443
  %bf.lshr = lshr i40 %bf.load, 12, !dbg !6443
  %bf.clear = and i40 %bf.lshr, 1, !dbg !6443
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !6443
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6442
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !6444

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %pci_dev.addr, align 8, !dbg !6445
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43, !dbg !6446
  %bf.load1 = load i40, ptr %msix_enabled, align 1, !dbg !6446
  %bf.lshr2 = lshr i40 %bf.load1, 13, !dbg !6446
  %bf.clear3 = and i40 %bf.lshr2, 1, !dbg !6446
  %bf.cast4 = trunc i40 %bf.clear3 to i32, !dbg !6446
  %tobool5 = icmp ne i32 %bf.cast4, 0, !dbg !6444
  br label %lor.end, !dbg !6444

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool5, %lor.rhs ]
  ret i1 %2, !dbg !6447
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pcibios_disable_device(ptr noundef %dev) #0 align 16 !dbg !6448 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6450, metadata !DIExpression()), !dbg !6451
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6452
  %call = call zeroext i1 @pci_dev_msi_enabled(ptr noundef %0) #15, !dbg !6454
  br i1 %call, label %if.end, label %land.lhs.true, !dbg !6455

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr @pcibios_disable_irq, align 8, !dbg !6456
  %tobool = icmp ne ptr %1, null, !dbg !6456
  br i1 %tobool, label %if.then, label %if.end, !dbg !6457

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr @pcibios_disable_irq, align 8, !dbg !6458
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6459
  call void %2(ptr noundef %3) #15, !dbg !6458
  br label %if.end, !dbg !6458

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !6460
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pcibios_release_device(ptr noundef %dev) #0 align 16 !dbg !6461 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6463, metadata !DIExpression()), !dbg !6464
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6465
  %enable_cnt = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 45, !dbg !6467
  %call = call i32 @atomic_dec_return(ptr noundef %enable_cnt) #15, !dbg !6468
  %cmp = icmp sge i32 %call, 0, !dbg !6469
  br i1 %cmp, label %if.then, label %if.end, !dbg !6470

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6471
  call void @pcibios_disable_device(ptr noundef %1) #15, !dbg !6472
  br label %if.end, !dbg !6472

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6473
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_dec_return(ptr noundef %v) #8 align 16 !dbg !6474 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6480, metadata !DIExpression()), !dbg !6481
  br label %do.body, !dbg !6482

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6483

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6485
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #15, !dbg !6486
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6487
  %call = call i32 @raw_atomic_dec_return(ptr noundef %1) #15, !dbg !6488
  ret i32 %call, !dbg !6489
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_ext_cfg_avail() #0 align 16 !dbg !6490 {
entry:
  %retval = alloca i32, align 4
  %0 = load ptr, ptr @raw_pci_ext_ops, align 8, !dbg !6491
  %tobool = icmp ne ptr %0, null, !dbg !6491
  br i1 %tobool, label %if.then, label %if.else, !dbg !6493

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !6494
  br label %return, !dbg !6494

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6495
  br label %return, !dbg !6495

return:                                           ; preds = %if.else, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !6496
  ret i32 %1, !dbg !6496
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @can_skip_ioresource_align(ptr noundef %d) #2 section ".init.text" align 16 !dbg !6497 {
entry:
  %d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !6499, metadata !DIExpression()), !dbg !6500
  %0 = load i32, ptr @pci_probe, align 4, !dbg !6501
  %or = or i32 %0, 32768, !dbg !6501
  store i32 %or, ptr @pci_probe, align 4, !dbg !6501
  br label %do.body, !dbg !6502

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6504

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %d.addr, align 8, !dbg !6502
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %1, i32 0, i32 1, !dbg !6502
  %2 = load ptr, ptr %ident, align 8, !dbg !6502
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.34, ptr noundef %2) #18, !dbg !6502
  store i32 %call, ptr %tmp, align 4, !dbg !6504
  %3 = load i32, ptr %tmp, align 4, !dbg !6502
  ret i32 0, !dbg !6506
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @set_bf_sort(ptr noundef %d) #2 section ".init.text" align 16 !dbg !6507 {
entry:
  %d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !6509, metadata !DIExpression()), !dbg !6510
  %0 = load i32, ptr @pci_bf_sort, align 4, !dbg !6511
  %cmp = icmp eq i32 %0, 0, !dbg !6513
  br i1 %cmp, label %if.then, label %if.end, !dbg !6514

if.then:                                          ; preds = %entry
  store i32 3, ptr @pci_bf_sort, align 4, !dbg !6515
  br label %do.body, !dbg !6517

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !6519

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %d.addr, align 8, !dbg !6517
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %1, i32 0, i32 1, !dbg !6517
  %2 = load ptr, ptr %ident, align 8, !dbg !6517
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.57, ptr noundef %2) #18, !dbg !6517
  store i32 %call, ptr %tmp, align 4, !dbg !6519
  %3 = load i32, ptr %tmp, align 4, !dbg !6517
  br label %if.end, !dbg !6521

if.end:                                           ; preds = %do.end, %entry
  ret i32 0, !dbg !6522
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @find_sort_method(ptr noundef %d) #2 section ".init.text" align 16 !dbg !6523 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !6525, metadata !DIExpression()), !dbg !6526
  %0 = load ptr, ptr %d.addr, align 8, !dbg !6527
  %call = call i32 @dmi_walk(ptr noundef @read_dmi_type_b1, ptr noundef %0) #15, !dbg !6528
  ret i32 0, !dbg !6529
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @set_scan_all(ptr noundef %d) #2 section ".init.text" align 16 !dbg !6530 {
entry:
  %d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !6532, metadata !DIExpression()), !dbg !6533
  br label %do.body, !dbg !6534

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6536

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %d.addr, align 8, !dbg !6534
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %0, i32 0, i32 1, !dbg !6534
  %1 = load ptr, ptr %ident, align 8, !dbg !6534
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.58, ptr noundef %1) #18, !dbg !6534
  store i32 %call, ptr %tmp, align 4, !dbg !6536
  %2 = load i32, ptr %tmp, align 4, !dbg !6534
  call void @pci_add_flags(i32 noundef 64) #15, !dbg !6538
  ret i32 0, !dbg !6539
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6540 dso_local i32 @dmi_walk(ptr noundef, ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @read_dmi_type_b1(ptr noundef %dm, ptr noundef %private_data) #2 section ".init.text" align 16 !dbg !6553 {
entry:
  %dm.addr = alloca ptr, align 8
  %private_data.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dm, ptr %dm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dm.addr, metadata !6555, metadata !DIExpression()), !dbg !6558
  store ptr %private_data, ptr %private_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %private_data.addr, metadata !6556, metadata !DIExpression()), !dbg !6559
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !6560
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6557, metadata !DIExpression()), !dbg !6561
  %0 = load ptr, ptr %dm.addr, align 8, !dbg !6562
  %add.ptr = getelementptr i8, ptr %0, i64 4, !dbg !6563
  store ptr %add.ptr, ptr %data, align 8, !dbg !6561
  %1 = load ptr, ptr %dm.addr, align 8, !dbg !6564
  %type = getelementptr inbounds %struct.dmi_header, ptr %1, i32 0, i32 0, !dbg !6566
  %2 = load i8, ptr %type, align 1, !dbg !6566
  %conv = zext i8 %2 to i32, !dbg !6564
  %cmp = icmp ne i32 %conv, 177, !dbg !6567
  br i1 %cmp, label %if.then, label %if.end, !dbg !6568

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6569

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %data, align 8, !dbg !6570
  %4 = load i32, ptr %3, align 4, !dbg !6572
  %shr = lshr i32 %4, 9, !dbg !6573
  %and = and i32 %shr, 3, !dbg !6574
  %cmp2 = icmp eq i32 %and, 1, !dbg !6575
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !6576

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %private_data.addr, align 8, !dbg !6577
  %call = call i32 @set_bf_sort(ptr noundef %5) #18, !dbg !6578
  br label %if.end5, !dbg !6578

if.end5:                                          ; preds = %if.then4, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6579
  br label %cleanup, !dbg !6579

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !6579
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6579

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_add_flags(i32 noundef %flags) #7 align 16 !dbg !6580 {
entry:
  %flags.addr = alloca i32, align 4
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6582, metadata !DIExpression()), !dbg !6583
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6584
  %1 = load i32, ptr @pci_flags, align 4, !dbg !6585
  %or = or i32 %1, %0, !dbg !6585
  store i32 %or, ptr @pci_flags, align 4, !dbg !6585
  ret void, !dbg !6586
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !6587 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6589, metadata !DIExpression()), !dbg !6594
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6590, metadata !DIExpression()), !dbg !6595
  %0 = load i64, ptr %size.addr, align 8, !dbg !6596
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6597
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6598

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6599
  %tobool = icmp ne i64 %2, 0, !dbg !6599
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6600

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6601
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6591, metadata !DIExpression()), !dbg !6602
  %3 = load i64, ptr %size.addr, align 8, !dbg !6603
  %cmp = icmp ugt i64 %3, 8192, !dbg !6605
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6606

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6607
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6608
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !6609
  store ptr %call, ptr %retval, align 8, !dbg !6610
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6610

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6611
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !6611
  store i32 %call2, ptr %index, align 4, !dbg !6612
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6613
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6614
  %9 = ptrtoint ptr %8 to i64, !dbg !6614
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !6615
  %idxprom = zext i32 %call3 to i64, !dbg !6616
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6616
  %10 = load i32, ptr %index, align 4, !dbg !6617
  %idxprom4 = zext i32 %10 to i64, !dbg !6616
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6616
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6616
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6618
  %13 = load i64, ptr %size.addr, align 8, !dbg !6619
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !6620
  store ptr %call6, ptr %retval, align 8, !dbg !6621
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6621

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6622
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6623
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6624
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !6625
  store ptr %call8, ptr %retval, align 8, !dbg !6626
  br label %return, !dbg !6626

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6627
  ret ptr %16, !dbg !6627
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6628 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !6629 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6633, metadata !DIExpression()), !dbg !6635
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6634, metadata !DIExpression()), !dbg !6636
  %0 = load i64, ptr %size.addr, align 8, !dbg !6637
  %tobool = icmp ne i64 %0, 0, !dbg !6637
  br i1 %tobool, label %if.end, label %if.then, !dbg !6639

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6640
  br label %return, !dbg !6640

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6641
  %cmp = icmp ule i64 %1, 8, !dbg !6643
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6644

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6645
  br label %return, !dbg !6645

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6646
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6648
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6649

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6650
  %cmp4 = icmp ule i64 %3, 96, !dbg !6651
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6652

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6653
  br label %return, !dbg !6653

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6654
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6656
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6657

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6658
  %cmp9 = icmp ule i64 %5, 192, !dbg !6659
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6660

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6661
  br label %return, !dbg !6661

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6662
  %cmp12 = icmp ule i64 %6, 8, !dbg !6664
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6665

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6666
  br label %return, !dbg !6666

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6667
  %cmp15 = icmp ule i64 %7, 16, !dbg !6669
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6670

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6671
  br label %return, !dbg !6671

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6672
  %cmp18 = icmp ule i64 %8, 32, !dbg !6674
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6675

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6676
  br label %return, !dbg !6676

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6677
  %cmp21 = icmp ule i64 %9, 64, !dbg !6679
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6680

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6681
  br label %return, !dbg !6681

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6682
  %cmp24 = icmp ule i64 %10, 128, !dbg !6684
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6685

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6686
  br label %return, !dbg !6686

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6687
  %cmp27 = icmp ule i64 %11, 256, !dbg !6689
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6690

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6691
  br label %return, !dbg !6691

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6692
  %cmp30 = icmp ule i64 %12, 512, !dbg !6694
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6695

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6696
  br label %return, !dbg !6696

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6697
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6699
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6700

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6701
  br label %return, !dbg !6701

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6702
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6704
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6705

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6706
  br label %return, !dbg !6706

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6707
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6709
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6710

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6711
  br label %return, !dbg !6711

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6712
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6714
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6715

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6716
  br label %return, !dbg !6716

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6717
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6719
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6720

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6721
  br label %return, !dbg !6721

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6722
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6724
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6725

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6726
  br label %return, !dbg !6726

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6727
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6729
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6730

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6731
  br label %return, !dbg !6731

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6732
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6734
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6735

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6736
  br label %return, !dbg !6736

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6737
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6739
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6740

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6741
  br label %return, !dbg !6741

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6742
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6744
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6745

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6746
  br label %return, !dbg !6746

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6747
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6749
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6750

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6751
  br label %return, !dbg !6751

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6752
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6754
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6755

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6756
  br label %return, !dbg !6756

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6757, !range !6759, !noundef !1022
  %tobool69 = trunc i8 %25 to i1, !dbg !6757
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6760

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6761

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #20, !dbg !6762, !srcloc !6765
  unreachable, !dbg !6762

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6766

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6767

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6768

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6770

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6768

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.59, i32 480, i32 0, i64 12) #16, !dbg !6772, !srcloc !6774
  br label %do.end75, !dbg !6772

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6768

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6775
  br label %return, !dbg !6775

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6776
  ret i32 %26, !dbg !6776
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6777 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !6783 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6787, metadata !DIExpression()), !dbg !6789
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6788, metadata !DIExpression()), !dbg !6790
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6791
  %and = and i32 %0, 17, !dbg !6791
  %cmp = icmp eq i32 %and, 0, !dbg !6791
  %lnot = xor i1 %cmp, true, !dbg !6791
  %lnot1 = xor i1 %lnot, true, !dbg !6791
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6791
  %conv = sext i32 %lnot.ext to i64, !dbg !6791
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6791
  %tobool = icmp ne i64 %expval, 0, !dbg !6791
  br i1 %tobool, label %if.then, label %if.end, !dbg !6793

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6794
  br label %return, !dbg !6794

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6795
  %and2 = and i32 %1, 1, !dbg !6797
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6797
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6798

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6799
  br label %return, !dbg !6799

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6800
  br label %return, !dbg !6800

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6802
  ret i32 %2, !dbg !6802
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6803 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6804 dso_local void @__compiletime_assert_204() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_pci_sysdata(ptr noundef %bus) #7 align 16 !dbg !6805 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6809, metadata !DIExpression()), !dbg !6810
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6811
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10, !dbg !6812
  %1 = load ptr, ptr %sysdata, align 8, !dbg !6812
  ret ptr %1, !dbg !6813
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !6814 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6822, metadata !DIExpression()), !dbg !6824
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6823, metadata !DIExpression()), !dbg !6825
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6826
  %1 = load i64, ptr %size.addr, align 8, !dbg !6827
  %conv = trunc i64 %1 to i32, !dbg !6827
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !6828
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6829
  %3 = load i64, ptr %size.addr, align 8, !dbg !6829
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #15, !dbg !6829
  ret void, !dbg !6830
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_dec_return(ptr noundef %v) #8 align 16 !dbg !6831 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6834, metadata !DIExpression()), !dbg !6835
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6836
  %call = call i32 @raw_atomic_sub_return(i32 noundef 1, ptr noundef %0) #15, !dbg !6837
  ret i32 %call, !dbg !6838
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !6839 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6844, metadata !DIExpression()), !dbg !6846
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6845, metadata !DIExpression()), !dbg !6847
  ret i1 true, !dbg !6848
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !6849 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6854, metadata !DIExpression()), !dbg !6857
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6855, metadata !DIExpression()), !dbg !6858
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6856, metadata !DIExpression()), !dbg !6859
  ret void, !dbg !6860
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_sub_return(i32 noundef %i, ptr noundef %v) #8 align 16 !dbg !6861 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6865, metadata !DIExpression()), !dbg !6867
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6866, metadata !DIExpression()), !dbg !6868
  %0 = load i32, ptr %i.addr, align 4, !dbg !6869
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6870
  %call = call i32 @arch_atomic_sub_return(i32 noundef %0, ptr noundef %1) #15, !dbg !6871
  ret i32 %call, !dbg !6872
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_sub_return(i32 noundef %i, ptr noundef %v) #8 align 16 !dbg !6873 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6876, metadata !DIExpression()), !dbg !6878
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6877, metadata !DIExpression()), !dbg !6879
  %0 = load i32, ptr %i.addr, align 4, !dbg !6880
  %sub = sub i32 0, %0, !dbg !6881
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6882
  %call = call i32 @arch_atomic_add_return(i32 noundef %sub, ptr noundef %1) #15, !dbg !6883
  ret i32 %call, !dbg !6884
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #8 align 16 !dbg !6885 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6887, metadata !DIExpression()), !dbg !6891
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6888, metadata !DIExpression()), !dbg !6892
  %0 = load i32, ptr %i.addr, align 4, !dbg !6893
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !6894
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6889, metadata !DIExpression()), !dbg !6894
  %1 = load i32, ptr %i.addr, align 4, !dbg !6894
  store i32 %1, ptr %__ret, align 4, !dbg !6894
  %2 = load i32, ptr %__ret, align 4, !dbg !6894
  %3 = load ptr, ptr %v.addr, align 8, !dbg !6894
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !6894
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #16, !dbg !6894, !srcloc !6895
  store i32 %4, ptr %__ret, align 4, !dbg !6894
  %5 = load i32, ptr %__ret, align 4, !dbg !6894
  store i32 %5, ptr %tmp, align 4, !dbg !6894
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !6896
  %6 = load i32, ptr %tmp, align 4, !dbg !6894
  %add = add i32 %0, %6, !dbg !6897
  ret i32 %add, !dbg !6898
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone }
attributes #16 = { nounwind }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293}
!llvm.ident = !{!5294}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pci_probe", scope: !2, file: !3, line: 24, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/pci/.common.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/pci/common\22 -D KBUILD_BASENAME=\22common\22 -D KBUILD_MODNAME=\22common\22 -D __KBUILD_MODNAME=kmod_common -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/pci/common.ll arch/x86/pci/common.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !220, globals: !5081, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/pci/common.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a11023e9b75ccd027bc6b43915a02563")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !94, !102, !110, !116, !135, !144, !149, !154, !160, !166, !173, !178, !186, !196, !205, !210}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !30, line: 9, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!33 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!34 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!35 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!36 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !38, line: 1325, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!40 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!41 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!42 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!43 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!44 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!45 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!46 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!47 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!48 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!49 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!50 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!51 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!52 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !54, line: 68, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!57 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!58 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !88, line: 487, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!89 = !{!90, !91, !92, !93}
!90 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!91 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!92 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!93 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !95, line: 620, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!96 = !{!97, !98, !99, !100, !101}
!97 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!98 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!99 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!100 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!101 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !95, line: 597, baseType: !103, size: 32, elements: !104)
!103 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!104 = !{!105, !106, !107, !108, !109}
!105 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!106 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!107 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!108 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!109 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !111, line: 30, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!112 = !{!113, !114, !115}
!113 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!114 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!115 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !117, line: 12, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/irqdomain_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "168aa78cd6535dbcc4cf99c0f8004653")
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!119 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0)
!120 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1)
!121 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2)
!122 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3)
!123 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4)
!124 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5)
!125 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6)
!126 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7)
!127 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8)
!128 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9)
!129 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10)
!130 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSI", value: 11)
!131 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSIX", value: 12)
!132 = !DIEnumerator(name: "DOMAIN_BUS_DMAR", value: 13)
!133 = !DIEnumerator(name: "DOMAIN_BUS_AMDVI", value: 14)
!134 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_IMS", value: 15)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !88, line: 547, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !143}
!137 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!138 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!139 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!140 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!141 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!142 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!143 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !88, line: 564, baseType: !7, size: 32, elements: !145)
!145 = !{!146, !147, !148}
!146 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!147 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!148 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !88, line: 577, baseType: !7, size: 32, elements: !150)
!150 = !{!151, !152, !153}
!151 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!152 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!153 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !88, line: 503, baseType: !7, size: 32, elements: !155)
!155 = !{!156, !157, !158, !159}
!156 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!157 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!158 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!159 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !161, line: 45, baseType: !7, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!162 = !{!163, !164, !165}
!163 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!164 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!165 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci_bf_sort_state", file: !167, line: 51, baseType: !7, size: 32, elements: !168)
!167 = !DIFile(filename: "./arch/x86/include/asm/pci_x86.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c32a69340c2514dde4670e44e5a823b3")
!168 = !{!169, !170, !171, !172}
!169 = !DIEnumerator(name: "pci_bf_sort_default", value: 0)
!170 = !DIEnumerator(name: "pci_force_nobf", value: 1)
!171 = !DIEnumerator(name: "pci_force_bf", value: 2)
!172 = !DIEnumerator(name: "pci_dmi_bf", value: 3)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdep_ok", file: !174, line: 87, baseType: !7, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!175 = !{!176, !177}
!176 = !DIEnumerator(name: "LOCKDEP_STILL_OK", value: 0)
!177 = !DIEnumerator(name: "LOCKDEP_NOW_UNRELIABLE", value: 1)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !179, line: 140, baseType: !7, size: 32, elements: !180)
!179 = !DIFile(filename: "./include/linux/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9069a71c5724a11302a774eef2b1f711")
!180 = !{!181, !182, !183, !184, !185}
!181 = !DIEnumerator(name: "MEMREMAP_WB", value: 1)
!182 = !DIEnumerator(name: "MEMREMAP_WT", value: 2)
!183 = !DIEnumerator(name: "MEMREMAP_WC", value: 4)
!184 = !DIEnumerator(name: "MEMREMAP_ENC", value: 8)
!185 = !DIEnumerator(name: "MEMREMAP_DEC", value: 16)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !187, line: 96, baseType: !7, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!188 = !{!189, !190, !191, !192, !193, !194, !195}
!189 = !DIEnumerator(name: "PCI_STD_RESOURCES", value: 0)
!190 = !DIEnumerator(name: "PCI_STD_RESOURCE_END", value: 5)
!191 = !DIEnumerator(name: "PCI_ROM_RESOURCE", value: 6)
!192 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCES", value: 7)
!193 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCE_END", value: 10)
!194 = !DIEnumerator(name: "PCI_NUM_RESOURCES", value: 11)
!195 = !DIEnumerator(name: "DEVICE_COUNT_RESOURCE", value: 11)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !187, line: 1042, baseType: !7, size: 32, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204}
!198 = !DIEnumerator(name: "PCI_REASSIGN_ALL_RSRC", value: 1)
!199 = !DIEnumerator(name: "PCI_REASSIGN_ALL_BUS", value: 2)
!200 = !DIEnumerator(name: "PCI_PROBE_ONLY", value: 4)
!201 = !DIEnumerator(name: "PCI_CAN_SKIP_ISA_ALIGN", value: 8)
!202 = !DIEnumerator(name: "PCI_ENABLE_PROC_DOMAINS", value: 16)
!203 = !DIEnumerator(name: "PCI_COMPAT_DOMAIN_0", value: 32)
!204 = !DIEnumerator(name: "PCI_SCAN_ALL_PCIE_DEVS", value: 64)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !206, line: 10, baseType: !7, size: 32, elements: !207)
!206 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!207 = !{!208, !209}
!208 = !DIEnumerator(name: "false", value: 0)
!209 = !DIEnumerator(name: "true", value: 1)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !211, line: 364, baseType: !7, size: 32, elements: !212)
!211 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!212 = !{!213, !214, !215, !216, !217, !218, !219}
!213 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!214 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!215 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!216 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!217 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!218 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!219 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!220 = !{!221, !222, !1247, !5035, !5060, !291, !5061, !262}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !187, line: 322, size: 16640, elements: !224)
!224 = !{!225, !232, !4811, !4812, !4813, !4814, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4920, !4921, !4922, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4999, !5000, !5001, !5002, !5003, !5005, !5006, !5007, !5008, !5014, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !223, file: !187, line: 323, baseType: !226, size: 128)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !227, line: 190, size: 128, elements: !228)
!227 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!228 = !{!229, !231}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !227, line: 191, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !226, file: !227, line: 191, baseType: !230, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !223, file: !187, line: 324, baseType: !233, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !187, line: 647, size: 8256, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !269, !270, !271, !298, !299, !303, !305, !306, !307, !308, !312, !314, !316, !4806, !4807, !4808, !4809, !4810}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !234, file: !187, line: 648, baseType: !226, size: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !234, file: !187, line: 649, baseType: !233, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !234, file: !187, line: 650, baseType: !226, size: 128, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !234, file: !187, line: 651, baseType: !226, size: 128, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !234, file: !187, line: 652, baseType: !222, size: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !234, file: !187, line: 653, baseType: !226, size: 128, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !234, file: !187, line: 655, baseType: !243, size: 256, offset: 640)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 256, elements: !267)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !246, line: 21, size: 512, elements: !247)
!246 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!247 = !{!248, !256, !257, !261, !263, !264, !265, !266}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !245, file: !246, line: 22, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !227, line: 164, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !227, line: 159, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !252, line: 23, baseType: !253)
!252 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !254, line: 31, baseType: !255)
!254 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!255 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !245, file: !246, line: 23, baseType: !249, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !246, line: 24, baseType: !258, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !245, file: !246, line: 25, baseType: !262, size: 64, offset: 192)
!262 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !245, file: !246, line: 26, baseType: !262, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !245, file: !246, line: 27, baseType: !244, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !245, file: !246, line: 27, baseType: !244, size: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !245, file: !246, line: 27, baseType: !244, size: 64, offset: 448)
!267 = !{!268}
!268 = !DISubrange(count: 4)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !234, file: !187, line: 656, baseType: !226, size: 128, offset: 896)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !234, file: !187, line: 657, baseType: !245, size: 512, offset: 1024)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !234, file: !187, line: 659, baseType: !272, size: 64, offset: 1536)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !187, line: 773, size: 320, elements: !274)
!274 = !{!275, !279, !283, !287, !294}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !273, file: !187, line: 774, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!103, !233}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !273, file: !187, line: 775, baseType: !280, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !233}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !273, file: !187, line: 776, baseType: !284, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!221, !233, !7, !103}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !273, file: !187, line: 777, baseType: !288, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!103, !233, !7, !103, !103, !291}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !252, line: 21, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !254, line: 27, baseType: !7)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !273, file: !187, line: 778, baseType: !295, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!103, !233, !7, !103, !103, !292}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !234, file: !187, line: 660, baseType: !221, size: 64, offset: 1600)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !234, file: !187, line: 661, baseType: !300, size: 64, offset: 1664)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !302, line: 131, flags: DIFlagFwdDecl)
!302 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!303 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !234, file: !187, line: 663, baseType: !304, size: 8, offset: 1728)
!304 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !234, file: !187, line: 664, baseType: !304, size: 8, offset: 1736)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !234, file: !187, line: 665, baseType: !304, size: 8, offset: 1744)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !234, file: !187, line: 666, baseType: !304, size: 8, offset: 1752)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !234, file: !187, line: 671, baseType: !309, size: 384, offset: 1760)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 384, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 48)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !234, file: !187, line: 673, baseType: !313, size: 16, offset: 2144)
!313 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !234, file: !187, line: 674, baseType: !315, size: 16, offset: 2160)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !187, line: 255, baseType: !313)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !234, file: !187, line: 675, baseType: !317, size: 64, offset: 2176)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !88, line: 705, size: 5824, elements: !319)
!319 = !{!320, !4243, !4244, !4247, !4248, !4301, !4386, !4387, !4388, !4389, !4390, !4397, !4489, !4502, !4720, !4724, !4726, !4727, !4728, !4732, !4739, !4740, !4743, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4783, !4784, !4785, !4788, !4791, !4800, !4801, !4802, !4803, !4804, !4805}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !318, file: !88, line: 706, baseType: !321, size: 512)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !322, line: 64, size: 512, elements: !323)
!322 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!323 = !{!324, !325, !326, !328, !413, !4130, !4233, !4238, !4239, !4240, !4241, !4242}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !321, file: !322, line: 65, baseType: !258, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !321, file: !322, line: 66, baseType: !226, size: 128, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !321, file: !322, line: 67, baseType: !327, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !321, file: !322, line: 68, baseType: !329, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !322, line: 168, size: 768, elements: !331)
!331 = !{!332, !333, !372, !373}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !330, file: !322, line: 169, baseType: !226, size: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !330, file: !322, line: 170, baseType: !334, size: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !335, line: 29, baseType: !336)
!335 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !335, line: 17, size: 32, elements: !337)
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !335, line: 18, baseType: !339, size: 32)
!339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !336, file: !335, line: 18, size: 32, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !339, file: !335, line: 19, baseType: !342, size: 32)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !343, line: 14, size: 32, elements: !344)
!343 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !342, file: !343, line: 15, baseType: !346, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !347, line: 44, baseType: !348)
!347 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !347, line: 14, size: 32, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, scope: !348, file: !347, line: 15, baseType: !351, size: 32)
!351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !348, file: !347, line: 15, size: 32, elements: !352)
!352 = !{!353, !358, !365}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !351, file: !347, line: 16, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !227, line: 174, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 172, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !355, file: !227, line: 173, baseType: !103, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !347, line: 24, baseType: !359, size: 16)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !351, file: !347, line: 24, size: 16, elements: !360)
!360 = !{!361, !364}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !359, file: !347, line: 25, baseType: !362, size: 8)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !252, line: 17, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !254, line: 21, baseType: !304)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !359, file: !347, line: 26, baseType: !362, size: 8, offset: 8)
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !347, line: 28, baseType: !366, size: 32)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !351, file: !347, line: 28, size: 32, elements: !367)
!367 = !{!368, !371}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !366, file: !347, line: 29, baseType: !369, size: 16)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !252, line: 19, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !254, line: 24, baseType: !313)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !366, file: !347, line: 30, baseType: !369, size: 16, offset: 16)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !330, file: !322, line: 171, baseType: !321, size: 512, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !330, file: !322, line: 172, baseType: !374, size: 64, offset: 704)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !322, line: 133, size: 192, elements: !377)
!377 = !{!378, !385, !390}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !376, file: !322, line: 134, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!103, !383}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !376, file: !322, line: 135, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!258, !383}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !376, file: !322, line: 136, baseType: !391, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!103, !383, !395}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !322, line: 125, size: 20736, elements: !397)
!397 = !{!398, !403, !407, !408, !412}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !396, file: !322, line: 126, baseType: !399, size: 192)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 192, elements: !401)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!401 = !{!402}
!402 = !DISubrange(count: 3)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !396, file: !322, line: 127, baseType: !404, size: 4096, offset: 192)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 4096, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !396, file: !322, line: 128, baseType: !103, size: 32, offset: 4288)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !396, file: !322, line: 129, baseType: !409, size: 16384, offset: 4320)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 16384, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 2048)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !396, file: !322, line: 130, baseType: !103, size: 32, offset: 20704)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !321, file: !322, line: 69, baseType: !414, size: 64, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !322, line: 116, size: 384, elements: !417)
!417 = !{!418, !422, !450, !4092, !4120, !4124}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !416, file: !322, line: 117, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !327}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !416, file: !322, line: 118, baseType: !423, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !426, line: 254, size: 128, elements: !427)
!426 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!427 = !{!428, !443}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !425, file: !426, line: 255, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!432, !327, !437, !400}
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !227, line: 66, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !434, line: 73, baseType: !435)
!434 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !434, line: 15, baseType: !436)
!436 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !426, line: 30, size: 128, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !438, file: !426, line: 31, baseType: !258, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !438, file: !426, line: 32, baseType: !442, size: 16, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !227, line: 24, baseType: !313)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !425, file: !426, line: 256, baseType: !444, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!432, !327, !437, !258, !447}
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !227, line: 61, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !434, line: 72, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !434, line: 16, baseType: !262)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !416, file: !322, line: 119, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !426, line: 84, size: 320, elements: !455)
!455 = !{!456, !457, !461, !4088, !4090}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !454, file: !426, line: 85, baseType: !258, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !454, file: !426, line: 86, baseType: !458, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!442, !327, !437, !103}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !454, file: !426, line: 88, baseType: !462, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!442, !327, !465, !103}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !426, line: 175, size: 512, elements: !467)
!467 = !{!468, !469, !470, !471, !4079, !4083, !4084}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !466, file: !426, line: 176, baseType: !438, size: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !466, file: !426, line: 177, baseType: !447, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !466, file: !426, line: 178, baseType: !221, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !466, file: !426, line: 179, baseType: !472, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !477)
!477 = !{!478, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !4073, !4074, !4075, !4076, !4077, !4078}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !476, file: !14, line: 473, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !481)
!481 = !{!482, !483, !484, !492, !493, !500, !501, !504, !505, !3852, !3853, !3854, !3855, !3856, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3896, !3899, !3900, !3901, !3910, !3911, !3912, !3913}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !480, file: !14, line: 642, baseType: !442, size: 16)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !480, file: !14, line: 643, baseType: !313, size: 16, offset: 16)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !480, file: !14, line: 644, baseType: !485, size: 32, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !486, line: 23, baseType: !487)
!486 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !486, line: 21, size: 32, elements: !488)
!488 = !{!489}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !487, file: !486, line: 22, baseType: !490, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !227, line: 37, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !434, line: 49, baseType: !7)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !480, file: !14, line: 645, baseType: !226, size: 128, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !480, file: !14, line: 646, baseType: !494, size: 32, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !486, line: 28, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !486, line: 26, size: 32, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !495, file: !486, line: 27, baseType: !498, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !227, line: 38, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !434, line: 50, baseType: !7)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !480, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !480, file: !14, line: 650, baseType: !502, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !480, file: !14, line: 651, baseType: !502, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !480, file: !14, line: 654, baseType: !506, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !509)
!509 = !{!510, !3680, !3690, !3694, !3698, !3702, !3706, !3710, !3714, !3718, !3722, !3723, !3727, !3731, !3768, !3797, !3801, !3807, !3811, !3815, !3819, !3823, !3827, !3833, !3837}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !508, file: !14, line: 1967, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!514, !479, !514, !7}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !516, line: 82, size: 1536, elements: !517)
!516 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!517 = !{!518, !519, !529, !537, !538, !553, !554, !558, !571, !3663, !3664, !3665, !3666, !3672, !3673, !3674}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !515, file: !516, line: 84, baseType: !7, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !515, file: !516, line: 85, baseType: !520, size: 32, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !521, line: 275, baseType: !522)
!521 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !521, line: 275, size: 32, elements: !523)
!523 = !{!524}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !522, file: !521, line: 275, baseType: !525, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !521, line: 69, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !521, line: 64, size: 32, elements: !527)
!527 = !{!528}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !526, file: !521, line: 65, baseType: !7, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !515, file: !516, line: 86, baseType: !530, size: 128, offset: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !531, line: 38, size: 128, elements: !532)
!531 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!532 = !{!533, !535}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !530, file: !531, line: 39, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !530, file: !531, line: 39, baseType: !536, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !515, file: !516, line: 87, baseType: !514, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !515, file: !516, line: 88, baseType: !539, size: 128, offset: 256)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !516, line: 49, size: 128, elements: !540)
!540 = !{!541, !550}
!541 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !516, line: 50, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !516, line: 50, size: 64, elements: !543)
!543 = !{!544, !549}
!544 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !516, line: 51, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !542, file: !516, line: 51, size: 64, elements: !546)
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !545, file: !516, line: 52, baseType: !292, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !545, file: !516, line: 52, baseType: !292, size: 32, offset: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !542, file: !516, line: 54, baseType: !251, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !539, file: !516, line: 56, baseType: !551, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !515, file: !516, line: 89, baseType: !479, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !515, file: !516, line: 91, baseType: !555, size: 256, offset: 448)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 256, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !515, file: !516, line: 94, baseType: !559, size: 64, offset: 704)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !560, line: 25, size: 64, elements: !561)
!560 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, scope: !559, file: !560, line: 26, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !560, line: 26, size: 64, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !563, file: !560, line: 28, baseType: !253, size: 64, align: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, scope: !563, file: !560, line: 30, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !563, file: !560, line: 30, size: 64, elements: !568)
!568 = !{!569, !570}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !567, file: !560, line: 31, baseType: !334, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !567, file: !560, line: 32, baseType: !103, size: 32, offset: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !515, file: !516, line: 95, baseType: !572, size: 64, offset: 768)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !516, line: 128, size: 1024, align: 512, elements: !575)
!575 = !{!576, !580, !581, !588, !594, !598, !602, !606, !607, !611, !615, !3653, !3657}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !574, file: !516, line: 129, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!103, !514, !7}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !574, file: !516, line: 130, baseType: !577, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !574, file: !516, line: 131, baseType: !582, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!103, !585, !587}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !574, file: !516, line: 132, baseType: !589, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!103, !585, !7, !258, !592}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !574, file: !516, line: 134, baseType: !595, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!103, !585}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !574, file: !516, line: 135, baseType: !599, size: 64, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!103, !514}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !574, file: !516, line: 136, baseType: !603, size: 64, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !514}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !574, file: !516, line: 137, baseType: !603, size: 64, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !574, file: !516, line: 138, baseType: !608, size: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !514, !479}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !574, file: !516, line: 139, baseType: !612, size: 64, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!400, !514, !400, !103}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !574, file: !516, line: 140, baseType: !616, size: 64, offset: 640)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!619, !3652}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !621, line: 70, size: 256, elements: !622)
!621 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!622 = !{!623, !624, !3648, !3649}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !620, file: !621, line: 71, baseType: !514, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !620, file: !621, line: 72, baseType: !625, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !627)
!627 = !{!628, !629, !632, !633, !634, !638, !1116, !1256, !1296, !1386, !1390, !1391, !1392, !1393, !1394, !1403, !1404, !1405, !1406, !1411, !1415, !1416, !1419, !1422, !1425, !1428, !1429, !1430, !1471, !3581, !3582, !3583, !3584, !3585, !3586, !3589, !3591, !3598, !3599, !3600, !3601, !3602, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !626, file: !14, line: 1191, baseType: !226, size: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !626, file: !14, line: 1192, baseType: !630, size: 32, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !227, line: 21, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !227, line: 18, baseType: !292)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !626, file: !14, line: 1193, baseType: !304, size: 8, offset: 160)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !626, file: !14, line: 1194, baseType: !262, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !626, file: !14, line: 1195, baseType: !635, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !227, line: 52, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !434, line: 88, baseType: !637)
!637 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !626, file: !14, line: 1196, baseType: !639, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !641)
!641 = !{!642, !643, !644, !651, !655, !659, !663, !1101, !1102, !1106, !1108, !1109, !1110, !1112, !1113, !1114, !1115}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !640, file: !14, line: 2367, baseType: !258, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !640, file: !14, line: 2368, baseType: !103, size: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !640, file: !14, line: 2376, baseType: !645, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!103, !648}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !650, line: 32, flags: DIFlagFwdDecl)
!650 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!651 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !640, file: !14, line: 2377, baseType: !652, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !640, file: !14, line: 2378, baseType: !656, size: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!514, !639, !103, !258, !221}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !640, file: !14, line: 2380, baseType: !660, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !625}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !640, file: !14, line: 2381, baseType: !664, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !666)
!666 = !{!667, !668, !669, !673, !695, !721, !722, !723, !724, !728, !733, !734, !754, !810, !811, !812, !813, !814, !817, !818, !819, !827, !831, !858, !879, !880, !881, !882, !891, !914, !915, !918, !921, !922, !923, !924, !925, !926, !927, !932, !933, !1059, !1067, !1068, !1069, !1071, !1075, !1076, !1080, !1081, !1082, !1083, !1085, !1086, !1087, !1094, !1095, !1096, !1100}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !665, file: !6, line: 403, baseType: !5, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !665, file: !6, line: 406, baseType: !226, size: 128, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !665, file: !6, line: 409, baseType: !670, size: 448, offset: 192)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 448, elements: !671)
!671 = !{!672}
!672 = !DISubrange(count: 56)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !665, file: !6, line: 417, baseType: !674, size: 768, offset: 640)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !675)
!675 = !{!676, !677, !678, !679, !682}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !674, file: !6, line: 46, baseType: !321, size: 512)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !674, file: !6, line: 47, baseType: !664, size: 64, offset: 512)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !674, file: !6, line: 48, baseType: !327, size: 64, offset: 576)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !674, file: !6, line: 49, baseType: !680, size: 64, offset: 640)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !674, file: !6, line: 50, baseType: !683, size: 64, offset: 704)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !685, line: 26, size: 256, elements: !686)
!685 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !684, file: !685, line: 27, baseType: !7, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !684, file: !685, line: 28, baseType: !689, size: 192, offset: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !690, line: 43, size: 192, elements: !691)
!690 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!691 = !{!692, !694}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !689, file: !690, line: 44, baseType: !693, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !343, line: 23, baseType: !342)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !689, file: !690, line: 45, baseType: !226, size: 128, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !665, file: !6, line: 418, baseType: !696, size: 64, offset: 1408)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !698)
!698 = !{!699, !700, !705, !709, !713, !717}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !697, file: !6, line: 54, baseType: !438, size: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !697, file: !6, line: 55, baseType: !701, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!432, !696, !704, !400}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !697, file: !6, line: 57, baseType: !706, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!432, !696, !704, !258, !447}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !697, file: !6, line: 59, baseType: !710, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !664, !258}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !697, file: !6, line: 60, baseType: !714, size: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!103, !664}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !697, file: !6, line: 61, baseType: !718, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !664}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !665, file: !6, line: 419, baseType: !258, size: 64, offset: 1472)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !665, file: !6, line: 420, baseType: !258, size: 64, offset: 1536)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !665, file: !6, line: 421, baseType: !327, size: 64, offset: 1600)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !665, file: !6, line: 424, baseType: !725, size: 64, offset: 1664)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !727)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !665, file: !6, line: 425, baseType: !729, size: 64, offset: 1728)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !252, line: 20, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !254, line: 26, baseType: !103)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !665, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !665, file: !6, line: 435, baseType: !735, size: 256, offset: 1856)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !736, line: 66, size: 256, elements: !737)
!736 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!737 = !{!738, !747, !748, !753}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !735, file: !736, line: 67, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !740, line: 13, baseType: !741)
!740 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !227, line: 181, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 179, size: 64, elements: !743)
!743 = !{!744}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !742, file: !227, line: 180, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !252, line: 22, baseType: !746)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !254, line: 30, baseType: !637)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !735, file: !736, line: 68, baseType: !693, size: 32, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !735, file: !736, line: 70, baseType: !749, size: 32, offset: 96)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !750, line: 15, size: 32, elements: !751)
!750 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !749, file: !750, line: 20, baseType: !354, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !735, file: !736, line: 72, baseType: !226, size: 128, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !665, file: !6, line: 437, baseType: !755, size: 64, offset: 2112)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !757, line: 69, size: 320, elements: !758)
!757 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!758 = !{!759, !760, !761, !781, !783, !787, !788}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !756, file: !757, line: 70, baseType: !258, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !756, file: !757, line: 71, baseType: !664, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !756, file: !757, line: 72, baseType: !762, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !757, line: 47, size: 256, elements: !765)
!765 = !{!766, !767, !773, !777}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !757, line: 49, baseType: !7, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !764, file: !757, line: 51, baseType: !768, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!103, !258, !771}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !764, file: !757, line: 53, baseType: !774, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!103, !400, !771}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !764, file: !757, line: 55, baseType: !778, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !221}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !756, file: !757, line: 73, baseType: !782, size: 16, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !756, file: !757, line: 74, baseType: !784, size: 8, offset: 208)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !252, line: 16, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !254, line: 20, baseType: !786)
!786 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !756, file: !757, line: 75, baseType: !362, size: 8, offset: 216)
!788 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !757, line: 76, baseType: !789, size: 64, offset: 256)
!789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !757, line: 76, size: 64, elements: !790)
!790 = !{!791, !792, !799}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !789, file: !757, line: 77, baseType: !221, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !789, file: !757, line: 78, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !757, line: 86, size: 128, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !795, file: !757, line: 87, baseType: !7, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !795, file: !757, line: 88, baseType: !400, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !789, file: !757, line: 79, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !757, line: 92, size: 256, elements: !803)
!803 = !{!804, !805, !806, !808, !809}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !802, file: !757, line: 94, baseType: !7, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !802, file: !757, line: 95, baseType: !7, size: 32, offset: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !802, file: !757, line: 96, baseType: !807, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !802, file: !757, line: 97, baseType: !762, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !802, file: !757, line: 98, baseType: !221, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !665, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !665, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !665, file: !6, line: 442, baseType: !725, size: 64, offset: 2240)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !665, file: !6, line: 443, baseType: !729, size: 64, offset: 2304)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !665, file: !6, line: 444, baseType: !815, size: 8, offset: 2368)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !227, line: 35, baseType: !816)
!816 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !665, file: !6, line: 451, baseType: !815, size: 8, offset: 2376)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !665, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !665, file: !6, line: 455, baseType: !820, size: 64, offset: 2432)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !822, line: 23, size: 96, elements: !823)
!822 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!823 = !{!824, !825, !826}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !821, file: !822, line: 24, baseType: !103, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !821, file: !822, line: 24, baseType: !103, size: 32, offset: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !821, file: !822, line: 24, baseType: !103, size: 32, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !665, file: !6, line: 458, baseType: !828, size: 64, offset: 2496)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!103}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !665, file: !6, line: 460, baseType: !832, size: 4032, align: 512, offset: 2560)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !833, size: 4032, elements: !856)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !834)
!834 = !{!835, !836, !837}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !833, file: !6, line: 363, baseType: !221, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !833, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !833, file: !6, line: 367, baseType: !838, size: 448, offset: 128)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !838, file: !6, line: 320, baseType: !664, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !838, file: !6, line: 321, baseType: !842, size: 384, offset: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !843, line: 40, size: 384, elements: !844)
!843 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!844 = !{!845}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !842, file: !843, line: 41, baseType: !846, size: 384, align: 64)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !847, size: 384, align: 64, elements: !854)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !848, line: 5, size: 192, align: 64, elements: !849)
!848 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!849 = !{!850, !851, !853}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !847, file: !848, line: 6, baseType: !262, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !847, file: !848, line: 7, baseType: !852, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !847, file: !848, line: 8, baseType: !852, size: 64, offset: 128)
!854 = !{!855}
!855 = !DISubrange(count: 2)
!856 = !{!857}
!857 = !DISubrange(count: 7)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !665, file: !6, line: 463, baseType: !859, size: 192, offset: 6592)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !860, line: 8, size: 192, elements: !861)
!860 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!861 = !{!862, !863, !865}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !859, file: !860, line: 10, baseType: !7, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !859, file: !860, line: 11, baseType: !864, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !859, file: !860, line: 12, baseType: !866, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !868, line: 59, size: 48, elements: !869)
!868 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!869 = !{!870, !874, !875, !876, !877, !878}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !867, file: !868, line: 60, baseType: !871, size: 16)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !252, line: 18, baseType: !872)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !254, line: 23, baseType: !873)
!873 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !867, file: !868, line: 61, baseType: !871, size: 16, offset: 16)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !867, file: !868, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !867, file: !868, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !867, file: !868, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !867, file: !868, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !665, file: !6, line: 465, baseType: !262, size: 64, offset: 6784)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !665, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !665, file: !6, line: 470, baseType: !226, size: 128, offset: 6912)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !665, file: !6, line: 471, baseType: !883, size: 64, offset: 7040)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !885, line: 33, size: 96, elements: !886)
!885 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!886 = !{!887, !888, !889, !890}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !884, file: !885, line: 37, baseType: !103, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !884, file: !885, line: 43, baseType: !103, size: 32, offset: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !884, file: !885, line: 45, baseType: !313, size: 16, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !884, file: !885, line: 47, baseType: !313, size: 16, offset: 80)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !665, file: !6, line: 476, baseType: !892, size: 64, offset: 7104)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !894)
!894 = !{!895, !911, !912, !913}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !893, file: !6, line: 379, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !898, line: 204, baseType: !899)
!898 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !898, line: 197, size: 192, elements: !900)
!900 = !{!901, !903, !904, !905, !907, !909}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !899, file: !898, line: 198, baseType: !902, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !898, line: 21, baseType: !293)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !899, file: !898, line: 199, baseType: !304, size: 8, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !899, file: !898, line: 200, baseType: !304, size: 8, offset: 40)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !899, file: !898, line: 201, baseType: !906, size: 16, offset: 48)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !898, line: 17, baseType: !370)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !899, file: !898, line: 202, baseType: !908, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !898, line: 16, baseType: !253)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !899, file: !898, line: 203, baseType: !910, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !898, line: 22, baseType: !253)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !893, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !893, file: !6, line: 381, baseType: !400, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !893, file: !6, line: 382, baseType: !400, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !665, file: !6, line: 477, baseType: !893, size: 256, offset: 7168)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !665, file: !6, line: 480, baseType: !916, size: 64, offset: 7424)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !665, file: !6, line: 483, baseType: !919, size: 64, offset: 7488)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !665, file: !6, line: 488, baseType: !400, size: 64, offset: 7552)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !665, file: !6, line: 492, baseType: !221, size: 64, offset: 7616)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !665, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !665, file: !6, line: 495, baseType: !221, size: 64, offset: 7744)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !665, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !665, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !665, file: !6, line: 500, baseType: !928, size: 64, offset: 7872)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !930, line: 45, baseType: !931)
!930 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !665, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !665, file: !6, line: 504, baseType: !934, size: 64, offset: 8000)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !937, line: 96, size: 192, elements: !938)
!937 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!938 = !{!939, !940, !1019, !1023}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !936, file: !937, line: 97, baseType: !7, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !936, file: !937, line: 98, baseType: !941, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !937, line: 24, size: 3072, elements: !943)
!943 = !{!944, !946, !947, !948, !949, !971, !972, !973, !974, !992, !1004, !1005, !1016, !1017, !1018}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !942, file: !937, line: 26, baseType: !945, size: 128)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 128, elements: !854)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !942, file: !937, line: 27, baseType: !945, size: 128, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !942, file: !937, line: 28, baseType: !103, size: 32, offset: 256)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !942, file: !937, line: 31, baseType: !334, size: 32, align: 512, offset: 512)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !942, file: !937, line: 32, baseType: !950, size: 960, offset: 576)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !951, line: 206, size: 960, elements: !952)
!951 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!952 = !{!953, !962, !965, !967, !968, !970}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !950, file: !951, line: 207, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !227, line: 232, size: 128, align: 64, elements: !956)
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !955, file: !227, line: 233, baseType: !954, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !955, file: !227, line: 234, baseType: !959, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{null, !954}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !950, file: !951, line: 208, baseType: !963, size: 256, offset: 64)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !964, size: 256, elements: !267)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !950, file: !951, line: 209, baseType: !966, size: 256, offset: 320)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 256, elements: !267)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !950, file: !951, line: 213, baseType: !436, size: 64, offset: 576)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !950, file: !951, line: 215, baseType: !969, size: 256, offset: 640)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 256, elements: !267)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !950, file: !951, line: 216, baseType: !362, size: 8, offset: 896)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !942, file: !937, line: 33, baseType: !262, size: 64, offset: 1536)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !942, file: !937, line: 34, baseType: !262, size: 64, offset: 1600)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !942, file: !937, line: 35, baseType: !815, size: 8, offset: 1664)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !942, file: !937, line: 36, baseType: !975, size: 320, offset: 1728)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !976, line: 11, size: 320, elements: !977)
!976 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!977 = !{!978, !985, !986, !991}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !975, file: !976, line: 16, baseType: !979, size: 128)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !227, line: 198, size: 128, elements: !980)
!980 = !{!981, !983}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !979, file: !227, line: 199, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !979, file: !227, line: 199, baseType: !984, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !975, file: !976, line: 17, baseType: !262, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !975, file: !976, line: 18, baseType: !987, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !990}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !975, file: !976, line: 19, baseType: !292, size: 32, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !942, file: !937, line: 37, baseType: !993, size: 256, offset: 2048)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !994, line: 98, size: 256, elements: !995)
!994 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!995 = !{!996, !997, !998}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !993, file: !994, line: 99, baseType: !739, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !993, file: !994, line: 100, baseType: !226, size: 128, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !993, file: !994, line: 101, baseType: !999, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !994, line: 21, baseType: !1000)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{null, !1003}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !942, file: !937, line: 38, baseType: !955, size: 128, align: 64, offset: 2304)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !942, file: !937, line: 39, baseType: !1006, size: 64, offset: 2432)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !937, line: 49, size: 768, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012, !1013, !1014, !1015}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1007, file: !937, line: 50, baseType: !334, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1007, file: !937, line: 51, baseType: !966, size: 256, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1007, file: !937, line: 53, baseType: !966, size: 256, offset: 320)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1007, file: !937, line: 54, baseType: !262, size: 64, offset: 576)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1007, file: !937, line: 55, baseType: !1006, size: 64, offset: 640)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1007, file: !937, line: 56, baseType: !103, size: 32, offset: 704)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1007, file: !937, line: 57, baseType: !103, size: 32, offset: 736)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !942, file: !937, line: 40, baseType: !262, size: 64, offset: 2496)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !942, file: !937, line: 42, baseType: !103, size: 32, offset: 2560)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !942, file: !937, line: 43, baseType: !935, size: 64, offset: 2624)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !936, file: !937, line: 99, baseType: !1020, offset: 128)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1021, line: 211, elements: !1022)
!1021 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1022 = !{}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !936, file: !937, line: 100, baseType: !1024, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !937, line: 63, size: 3008, elements: !1026)
!1026 = !{!1027, !1028, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1058}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1025, file: !937, line: 64, baseType: !1006, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1025, file: !937, line: 65, baseType: !1029, size: 192, offset: 64)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1006, size: 192, elements: !401)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1025, file: !937, line: 67, baseType: !103, size: 32, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1025, file: !937, line: 68, baseType: !735, size: 256, offset: 320)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1025, file: !937, line: 69, baseType: !334, size: 32, offset: 576)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1025, file: !937, line: 70, baseType: !735, size: 256, offset: 640)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1025, file: !937, line: 71, baseType: !262, size: 64, offset: 896)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1025, file: !937, line: 72, baseType: !262, size: 64, offset: 960)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1025, file: !937, line: 73, baseType: !262, size: 64, offset: 1024)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1025, file: !937, line: 74, baseType: !262, size: 64, offset: 1088)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1025, file: !937, line: 75, baseType: !262, size: 64, offset: 1152)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1025, file: !937, line: 76, baseType: !262, size: 64, offset: 1216)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1025, file: !937, line: 77, baseType: !262, size: 64, offset: 1280)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1025, file: !937, line: 78, baseType: !262, size: 64, offset: 1344)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1025, file: !937, line: 79, baseType: !815, size: 8, offset: 1408)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1025, file: !937, line: 80, baseType: !262, size: 64, offset: 1472)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1025, file: !937, line: 81, baseType: !735, size: 256, offset: 1536)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1025, file: !937, line: 82, baseType: !684, size: 256, offset: 1792)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1025, file: !937, line: 84, baseType: !354, size: 32, offset: 2048)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1025, file: !937, line: 87, baseType: !262, size: 64, offset: 2112)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1025, file: !937, line: 88, baseType: !262, size: 64, offset: 2176)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1025, file: !937, line: 89, baseType: !1050, size: 704, offset: 2240)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !994, line: 111, size: 704, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1057}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1050, file: !994, line: 112, baseType: !993, size: 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1050, file: !994, line: 113, baseType: !975, size: 320, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1050, file: !994, line: 116, baseType: !1055, size: 64, offset: 576)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !994, line: 18, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1050, file: !994, line: 117, baseType: !103, size: 32, offset: 640)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1025, file: !937, line: 90, baseType: !935, size: 64, offset: 2944)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !665, file: !6, line: 515, baseType: !1060, size: 64, offset: 8064)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1062, line: 117, size: 128, elements: !1063)
!1062 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1063 = !{!1064, !1065, !1066}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1061, file: !1062, line: 118, baseType: !731, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1061, file: !1062, line: 119, baseType: !731, size: 32, offset: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1061, file: !1062, line: 120, baseType: !436, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !665, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !665, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !665, file: !6, line: 520, baseType: !1070, size: 64, offset: 8192)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !665, file: !6, line: 523, baseType: !1072, size: 64, offset: 8256)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !665, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !665, file: !6, line: 525, baseType: !1077, size: 64, offset: 8384)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !665, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !665, file: !6, line: 533, baseType: !221, size: 64, offset: 8512)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !665, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !665, file: !6, line: 535, baseType: !1084, size: 64, offset: 8640)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !665, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !665, file: !6, line: 539, baseType: !103, size: 32, offset: 8736)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !665, file: !6, line: 540, baseType: !1088, size: 64, offset: 8768)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1090, line: 32, size: 64, elements: !1091)
!1090 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1089, file: !1090, line: 33, baseType: !731, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1089, file: !1090, line: 34, baseType: !731, size: 32, offset: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !665, file: !6, line: 563, baseType: !226, size: 128, offset: 8832)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !665, file: !6, line: 565, baseType: !226, size: 128, offset: 8960)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !665, file: !6, line: 568, baseType: !1097, size: 64, offset: 9088)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !665, file: !6, line: 570, baseType: !354, size: 32, offset: 9152)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !640, file: !14, line: 2382, baseType: !639, size: 64, offset: 448)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !640, file: !14, line: 2383, baseType: !1103, size: 64, offset: 512)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !227, line: 194, size: 64, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1103, file: !227, line: 195, baseType: !982, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !640, file: !14, line: 2385, baseType: !1107, offset: 576)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1021, line: 206, elements: !1022)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !640, file: !14, line: 2386, baseType: !1107, offset: 576)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !640, file: !14, line: 2387, baseType: !1107, offset: 576)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !640, file: !14, line: 2388, baseType: !1111, offset: 576)
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1107, elements: !401)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !640, file: !14, line: 2390, baseType: !1107, offset: 576)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !640, file: !14, line: 2391, baseType: !1107, offset: 576)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !640, file: !14, line: 2392, baseType: !1107, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !640, file: !14, line: 2393, baseType: !1107, offset: 576)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !626, file: !14, line: 1197, baseType: !1117, size: 64, offset: 384)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1119)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1120)
!1120 = !{!1121, !1125, !1129, !1130, !1134, !1140, !1144, !1145, !1146, !1150, !1154, !1158, !1159, !1160, !1166, !1170, !1171, !1178, !1179, !1180, !1181, !1185, !1189, !1238, !1254, !1255}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1119, file: !14, line: 2058, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!479, !625}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1119, file: !14, line: 2059, baseType: !1126, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !479}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1119, file: !14, line: 2060, baseType: !1126, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1119, file: !14, line: 2062, baseType: !1131, size: 64, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !479, !103}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1119, file: !14, line: 2063, baseType: !1135, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!103, !479, !1138}
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1119, file: !14, line: 2064, baseType: !1141, size: 64, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!103, !479}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1119, file: !14, line: 2065, baseType: !1126, size: 64, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1119, file: !14, line: 2066, baseType: !660, size: 64, offset: 448)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1119, file: !14, line: 2067, baseType: !1147, size: 64, offset: 512)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!103, !625, !103}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1119, file: !14, line: 2068, baseType: !1151, size: 64, offset: 576)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!103, !625, !13}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1119, file: !14, line: 2069, baseType: !1155, size: 64, offset: 640)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!103, !625}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1119, file: !14, line: 2070, baseType: !1151, size: 64, offset: 704)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1119, file: !14, line: 2071, baseType: !1155, size: 64, offset: 768)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1119, file: !14, line: 2072, baseType: !1161, size: 64, offset: 832)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!103, !514, !1164}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1119, file: !14, line: 2073, baseType: !1167, size: 64, offset: 896)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!103, !625, !864, !400}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1119, file: !14, line: 2074, baseType: !660, size: 64, offset: 960)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1119, file: !14, line: 2076, baseType: !1172, size: 64, offset: 1024)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!103, !1175, !514}
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1177, line: 66, flags: DIFlagFwdDecl)
!1177 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1119, file: !14, line: 2077, baseType: !1172, size: 64, offset: 1088)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1119, file: !14, line: 2078, baseType: !1172, size: 64, offset: 1152)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1119, file: !14, line: 2079, baseType: !1172, size: 64, offset: 1216)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1119, file: !14, line: 2081, baseType: !1182, size: 64, offset: 1280)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!432, !625, !103, !400, !447, !635}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1119, file: !14, line: 2082, baseType: !1186, size: 64, offset: 1344)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!432, !625, !103, !258, !447, !635}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1119, file: !14, line: 2083, baseType: !1190, size: 64, offset: 1408)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!1193, !479}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1221, !1222, !1223}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1195, file: !19, line: 297, baseType: !979, size: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1195, file: !19, line: 298, baseType: !226, size: 128, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1195, file: !19, line: 299, baseType: !226, size: 128, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1195, file: !19, line: 300, baseType: !226, size: 128, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1195, file: !19, line: 301, baseType: !735, size: 256, offset: 512)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1195, file: !19, line: 302, baseType: !334, size: 32, offset: 768)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1195, file: !19, line: 303, baseType: !354, size: 32, offset: 800)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1195, file: !19, line: 304, baseType: !625, size: 64, offset: 832)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1195, file: !19, line: 305, baseType: !1206, size: 64, offset: 896)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1207)
!1207 = !{!1208, !1220}
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1206, file: !19, line: 69, baseType: !1209, size: 32)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1206, file: !19, line: 69, size: 32, elements: !1210)
!1210 = !{!1211, !1212, !1213}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1209, file: !19, line: 70, baseType: !485, size: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1209, file: !19, line: 71, baseType: !494, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1209, file: !19, line: 72, baseType: !1214, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1215, line: 24, baseType: !1216)
!1215 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1215, line: 22, size: 32, elements: !1217)
!1217 = !{!1218}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1216, file: !1215, line: 23, baseType: !1219, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1215, line: 20, baseType: !491)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1206, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1195, file: !19, line: 306, baseType: !635, size: 64, offset: 960)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1195, file: !19, line: 307, baseType: !262, size: 64, offset: 1024)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1195, file: !19, line: 308, baseType: !1224, size: 576, offset: 1088)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1225)
!1225 = !{!1226, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1237}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1224, file: !19, line: 206, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !637)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1224, file: !19, line: 207, baseType: !1227, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1224, file: !19, line: 208, baseType: !1227, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1224, file: !19, line: 209, baseType: !1227, size: 64, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1224, file: !19, line: 210, baseType: !1227, size: 64, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1224, file: !19, line: 211, baseType: !1227, size: 64, offset: 320)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1224, file: !19, line: 212, baseType: !1227, size: 64, offset: 384)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1224, file: !19, line: 213, baseType: !1235, size: 64, offset: 448)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1236, line: 8, baseType: !746)
!1236 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1224, file: !19, line: 214, baseType: !1235, size: 64, offset: 512)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1119, file: !14, line: 2085, baseType: !1239, size: 64, offset: 1472)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!436, !625, !1242}
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1244, line: 15, size: 256, elements: !1245)
!1244 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1245 = !{!1246, !1248, !1249, !1250, !1251}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1243, file: !1244, line: 16, baseType: !1247, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !227, line: 154, baseType: !7)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1243, file: !1244, line: 19, baseType: !103, size: 32, offset: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1243, file: !1244, line: 26, baseType: !262, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1243, file: !1244, line: 33, baseType: !262, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1243, file: !1244, line: 36, baseType: !1252, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1119, file: !14, line: 2087, baseType: !1239, size: 64, offset: 1536)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1119, file: !14, line: 2089, baseType: !660, size: 64, offset: 1600)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !626, file: !14, line: 1198, baseType: !1257, size: 64, offset: 448)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1260)
!1260 = !{!1261, !1265, !1269, !1273, !1274, !1275, !1276, !1277, !1282, !1287, !1291}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1259, file: !19, line: 325, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!103, !1194}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1259, file: !19, line: 326, baseType: !1266, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!1194, !625, !103}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1259, file: !19, line: 327, baseType: !1270, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{null, !1194}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1259, file: !19, line: 328, baseType: !1262, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1259, file: !19, line: 329, baseType: !1262, size: 64, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1259, file: !19, line: 330, baseType: !1262, size: 64, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1259, file: !19, line: 331, baseType: !1147, size: 64, offset: 384)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1259, file: !19, line: 334, baseType: !1278, size: 64, offset: 448)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!1281, !479}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1259, file: !19, line: 335, baseType: !1283, size: 64, offset: 512)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!103, !479, !1286}
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1259, file: !19, line: 337, baseType: !1288, size: 64, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!103, !479, !1281}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1259, file: !19, line: 339, baseType: !1292, size: 64, offset: 640)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!103, !625, !1295}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !626, file: !14, line: 1199, baseType: !1297, size: 64, offset: 512)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1299)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1300)
!1300 = !{!1301, !1312, !1313, !1317, !1318, !1319, !1334, !1357, !1361, !1362, !1385}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1299, file: !19, line: 431, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!103, !625, !103, !103, !1305}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1307)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1308, line: 8, size: 128, elements: !1309)
!1308 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1309 = !{!1310, !1311}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1307, file: !1308, line: 9, baseType: !619, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1307, file: !1308, line: 10, baseType: !514, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1299, file: !19, line: 432, baseType: !1147, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1299, file: !19, line: 433, baseType: !1314, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!103, !625, !7}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1299, file: !19, line: 434, baseType: !1314, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1299, file: !19, line: 435, baseType: !1147, size: 64, offset: 256)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1299, file: !19, line: 436, baseType: !1320, size: 64, offset: 320)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!103, !625, !103, !1323}
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1324, file: !19, line: 418, baseType: !103, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1324, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1324, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1324, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1324, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1324, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1324, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1324, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1299, file: !19, line: 437, baseType: !1335, size: 64, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!103, !625, !1206, !1338}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1340)
!1340 = !{!1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1339, file: !19, line: 346, baseType: !103, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1339, file: !19, line: 347, baseType: !251, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1339, file: !19, line: 348, baseType: !251, size: 64, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1339, file: !19, line: 349, baseType: !251, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1339, file: !19, line: 350, baseType: !251, size: 64, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1339, file: !19, line: 351, baseType: !251, size: 64, offset: 320)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1339, file: !19, line: 352, baseType: !251, size: 64, offset: 384)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1339, file: !19, line: 353, baseType: !745, size: 64, offset: 448)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1339, file: !19, line: 355, baseType: !745, size: 64, offset: 512)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1339, file: !19, line: 356, baseType: !103, size: 32, offset: 576)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1339, file: !19, line: 357, baseType: !103, size: 32, offset: 608)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1339, file: !19, line: 358, baseType: !251, size: 64, offset: 640)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1339, file: !19, line: 359, baseType: !251, size: 64, offset: 704)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1339, file: !19, line: 360, baseType: !251, size: 64, offset: 768)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1339, file: !19, line: 361, baseType: !745, size: 64, offset: 832)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1339, file: !19, line: 362, baseType: !103, size: 32, offset: 896)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1299, file: !19, line: 438, baseType: !1358, size: 64, offset: 448)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!103, !625, !1295, !1338}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1299, file: !19, line: 440, baseType: !1335, size: 64, offset: 512)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1299, file: !19, line: 441, baseType: !1363, size: 64, offset: 576)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!103, !625, !1366}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1368)
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1367, file: !19, line: 412, baseType: !7, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1367, file: !19, line: 413, baseType: !1371, size: 1344, offset: 64)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1372, size: 1344, elements: !401)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1384}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1372, file: !19, line: 398, baseType: !7, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1372, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1372, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1372, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1372, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1372, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1372, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1372, file: !19, line: 406, baseType: !255, size: 64, offset: 256)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1372, file: !19, line: 407, baseType: !1383, size: 64, offset: 320)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !227, line: 132, baseType: !251)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1372, file: !19, line: 408, baseType: !1383, size: 64, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1299, file: !19, line: 442, baseType: !1314, size: 64, offset: 640)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !626, file: !14, line: 1200, baseType: !1387, size: 64, offset: 576)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1389)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !626, file: !14, line: 1201, baseType: !262, size: 64, offset: 640)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !626, file: !14, line: 1202, baseType: !262, size: 64, offset: 704)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !626, file: !14, line: 1203, baseType: !262, size: 64, offset: 768)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !626, file: !14, line: 1204, baseType: !514, size: 64, offset: 832)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !626, file: !14, line: 1205, baseType: !1395, size: 320, offset: 896)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1396, line: 48, size: 320, elements: !1397)
!1396 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1397 = !{!1398, !1399, !1400, !1401, !1402}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1395, file: !1396, line: 49, baseType: !739, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1395, file: !1396, line: 55, baseType: !739, size: 64, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1395, file: !1396, line: 57, baseType: !749, size: 32, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1395, file: !1396, line: 59, baseType: !693, size: 32, offset: 160)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1395, file: !1396, line: 60, baseType: !226, size: 128, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !626, file: !14, line: 1206, baseType: !103, size: 32, offset: 1216)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !626, file: !14, line: 1207, baseType: !354, size: 32, offset: 1248)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !626, file: !14, line: 1209, baseType: !221, size: 64, offset: 1280)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !626, file: !14, line: 1211, baseType: !1407, size: 64, offset: 1344)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1410)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !626, file: !14, line: 1223, baseType: !1412, size: 64, offset: 1408)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !531, line: 34, size: 64, elements: !1413)
!1413 = !{!1414}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1412, file: !531, line: 35, baseType: !534, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !626, file: !14, line: 1224, baseType: !226, size: 128, offset: 1472)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !626, file: !14, line: 1225, baseType: !1417, size: 64, offset: 1600)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !626, file: !14, line: 1226, baseType: !1420, size: 64, offset: 1664)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !626, file: !14, line: 1227, baseType: !1423, size: 64, offset: 1728)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !626, file: !14, line: 1228, baseType: !1426, size: 64, offset: 1792)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !626, file: !14, line: 1229, baseType: !979, size: 128, offset: 1856)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !626, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !626, file: !14, line: 1231, baseType: !1431, size: 2496, offset: 2048)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1432)
!1432 = !{!1433, !1434, !1435, !1437, !1469}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1431, file: !19, line: 522, baseType: !7, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1431, file: !19, line: 523, baseType: !1395, size: 320, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1431, file: !19, line: 524, baseType: !1436, size: 192, offset: 384)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 192, elements: !401)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1431, file: !19, line: 525, baseType: !1438, size: 1728, offset: 576)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1439, size: 1728, elements: !401)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1440)
!1440 = !{!1441, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1439, file: !19, line: 223, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1444)
!1444 = !{!1445, !1446, !1459, !1460}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1443, file: !19, line: 446, baseType: !103, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1443, file: !19, line: 447, baseType: !1447, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1449)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1450)
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1449, file: !19, line: 313, baseType: !1147, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1449, file: !19, line: 314, baseType: !1147, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1449, file: !19, line: 315, baseType: !1147, size: 64, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1449, file: !19, line: 316, baseType: !1147, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1449, file: !19, line: 317, baseType: !1262, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1449, file: !19, line: 318, baseType: !1262, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1449, file: !19, line: 319, baseType: !1262, size: 64, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1449, file: !19, line: 320, baseType: !1292, size: 64, offset: 448)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1443, file: !19, line: 448, baseType: !664, size: 64, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1443, file: !19, line: 449, baseType: !1442, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1439, file: !19, line: 224, baseType: !103, size: 32, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1439, file: !19, line: 226, baseType: !226, size: 128, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1439, file: !19, line: 227, baseType: !262, size: 64, offset: 256)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1439, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1439, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1439, file: !19, line: 230, baseType: !1227, size: 64, offset: 384)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1439, file: !19, line: 231, baseType: !1227, size: 64, offset: 448)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1439, file: !19, line: 232, baseType: !221, size: 64, offset: 512)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1431, file: !19, line: 526, baseType: !1470, size: 192, offset: 2304)
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1447, size: 192, elements: !401)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !626, file: !14, line: 1233, baseType: !1472, size: 2368, offset: 4544)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1473)
!1473 = !{!1474, !1475, !1476}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1472, file: !14, line: 1185, baseType: !313, size: 16)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1472, file: !14, line: 1186, baseType: !313, size: 16, offset: 16)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1472, file: !14, line: 1187, baseType: !1477, size: 2304, offset: 64)
!1477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1478, size: 2304, elements: !401)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1479, line: 12, size: 768, elements: !1480)
!1479 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1480 = !{!1481, !1495, !1496, !3579, !3580}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1478, file: !1479, line: 13, baseType: !1482, size: 384)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1483, line: 17, size: 384, elements: !1484)
!1483 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1484 = !{!1485, !1486, !1487, !1494}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1482, file: !1483, line: 18, baseType: !103, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1482, file: !1483, line: 19, baseType: !103, size: 32, offset: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1482, file: !1483, line: 20, baseType: !1488, size: 192, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1489, line: 41, baseType: !1490)
!1489 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1489, line: 37, size: 192, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1490, file: !1489, line: 38, baseType: !334, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1490, file: !1489, line: 39, baseType: !226, size: 128, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1482, file: !1483, line: 22, baseType: !955, size: 128, align: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1478, file: !1479, line: 14, baseType: !807, size: 64, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1478, file: !1479, line: 15, baseType: !1497, size: 64, offset: 448)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1498, line: 16, size: 64, elements: !1499)
!1498 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1499 = !{!1500}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1497, file: !1498, line: 17, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1177, line: 746, size: 58368, elements: !1503)
!1503 = !{!1504, !1512, !1513, !1514, !1520, !1521, !1522, !1523, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1594, !1605, !1700, !1704, !1707, !1738, !1739, !1740, !1741, !1752, !1754, !1755, !1756, !1757, !1758, !1759, !1770, !1771, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1788, !1789, !1796, !1797, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2755, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2803, !2809, !2810, !2811, !2812, !2813, !2817, !2820, !2827, !2832, !2835, !2838, !2841, !2844, !2982, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3020, !3021, !3022, !3031, !3039, !3040, !3041, !3042, !3043, !3048, !3049, !3050, !3053, !3054, !3057, !3060, !3063, !3071, !3074, !3075, !3161, !3162, !3163, !3164, !3165, !3171, !3172, !3173, !3174, !3177, !3178, !3181, !3184, !3185, !3188, !3189, !3190, !3193, !3194, !3195, !3196, !3197, !3198, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3230, !3231, !3237, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3249, !3321, !3323, !3324, !3325, !3326, !3327, !3328, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3356, !3357, !3358}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1502, file: !1177, line: 752, baseType: !1505, size: 192)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1506, line: 56, size: 192, elements: !1507)
!1506 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1507 = !{!1508, !1509, !1510, !1511}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1505, file: !1506, line: 57, baseType: !262, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1505, file: !1506, line: 58, baseType: !262, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1505, file: !1506, line: 59, baseType: !292, size: 32, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1505, file: !1506, line: 61, baseType: !292, size: 32, offset: 160)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1502, file: !1177, line: 754, baseType: !7, size: 32, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1502, file: !1177, line: 767, baseType: !221, size: 64, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1502, file: !1177, line: 768, baseType: !1515, size: 32, offset: 320)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1516, line: 113, baseType: !1517)
!1516 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1516, line: 111, size: 32, elements: !1518)
!1518 = !{!1519}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1517, file: !1516, line: 112, baseType: !354, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1502, file: !1177, line: 770, baseType: !7, size: 32, offset: 352)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1502, file: !1177, line: 771, baseType: !7, size: 32, offset: 384)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1502, file: !1177, line: 774, baseType: !103, size: 32, offset: 416)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1502, file: !1177, line: 775, baseType: !1524, size: 128, offset: 448)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1525, line: 58, size: 128, elements: !1526)
!1525 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1526 = !{!1527, !1533, !1538, !1539}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1524, file: !1525, line: 59, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1529, line: 60, size: 64, elements: !1530)
!1529 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1530 = !{!1531}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1528, file: !1529, line: 61, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, scope: !1524, file: !1525, line: 60, baseType: !1534, size: 32, offset: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1524, file: !1525, line: 60, size: 32, elements: !1535)
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1534, file: !1525, line: 61, baseType: !7, size: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1534, file: !1525, line: 62, baseType: !354, size: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1524, file: !1525, line: 65, baseType: !369, size: 16, offset: 96)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1524, file: !1525, line: 65, baseType: !369, size: 16, offset: 112)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1502, file: !1177, line: 776, baseType: !7, size: 32, offset: 576)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1502, file: !1177, line: 777, baseType: !262, size: 64, offset: 640)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1502, file: !1177, line: 778, baseType: !1501, size: 64, offset: 704)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1502, file: !1177, line: 787, baseType: !103, size: 32, offset: 768)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1502, file: !1177, line: 788, baseType: !103, size: 32, offset: 800)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1502, file: !1177, line: 790, baseType: !103, size: 32, offset: 832)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1502, file: !1177, line: 792, baseType: !103, size: 32, offset: 864)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1502, file: !1177, line: 793, baseType: !103, size: 32, offset: 896)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1502, file: !1177, line: 794, baseType: !103, size: 32, offset: 928)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1502, file: !1177, line: 795, baseType: !7, size: 32, offset: 960)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1502, file: !1177, line: 797, baseType: !1551, size: 2048, offset: 1024)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1177, line: 551, size: 2048, elements: !1552)
!1552 = !{!1553, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1573, !1576, !1577, !1578}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1551, file: !1177, line: 553, baseType: !1554, size: 128)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1177, line: 411, size: 128, elements: !1555)
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1554, file: !1177, line: 412, baseType: !262, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1554, file: !1177, line: 413, baseType: !292, size: 32, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1551, file: !1177, line: 554, baseType: !847, size: 192, align: 64, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1551, file: !1177, line: 555, baseType: !251, size: 64, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1551, file: !1177, line: 556, baseType: !251, size: 64, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1551, file: !1177, line: 558, baseType: !226, size: 128, offset: 448)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1551, file: !1177, line: 559, baseType: !7, size: 32, offset: 576)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1551, file: !1177, line: 561, baseType: !251, size: 64, offset: 640)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1551, file: !1177, line: 562, baseType: !251, size: 64, offset: 704)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1551, file: !1177, line: 563, baseType: !251, size: 64, offset: 768)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1551, file: !1177, line: 564, baseType: !251, size: 64, offset: 832)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1551, file: !1177, line: 565, baseType: !745, size: 64, offset: 896)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1551, file: !1177, line: 566, baseType: !251, size: 64, offset: 960)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1551, file: !1177, line: 568, baseType: !251, size: 64, offset: 1024)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1551, file: !1177, line: 571, baseType: !103, size: 32, offset: 1088)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1551, file: !1177, line: 572, baseType: !1572, size: 64, offset: 1152)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1551, file: !1177, line: 574, baseType: !1574, size: 64, offset: 1216)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1177, line: 49, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1551, file: !1177, line: 576, baseType: !1574, size: 64, offset: 1280)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1551, file: !1177, line: 578, baseType: !262, size: 64, offset: 1344)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1551, file: !1177, line: 588, baseType: !1579, size: 512, align: 512, offset: 1536)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1177, line: 497, size: 512, align: 512, elements: !1580)
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1579, file: !1177, line: 498, baseType: !251, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1579, file: !1177, line: 499, baseType: !251, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1579, file: !1177, line: 500, baseType: !251, size: 64, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1579, file: !1177, line: 501, baseType: !292, size: 32, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1579, file: !1177, line: 502, baseType: !292, size: 32, offset: 224)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1579, file: !1177, line: 503, baseType: !262, size: 64, offset: 256)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1579, file: !1177, line: 504, baseType: !262, size: 64, offset: 320)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1579, file: !1177, line: 505, baseType: !262, size: 64, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1579, file: !1177, line: 506, baseType: !1590, size: 64, align: 64, offset: 448)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1177, line: 445, size: 64, align: 64, elements: !1591)
!1591 = !{!1592, !1593}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1590, file: !1177, line: 446, baseType: !7, size: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1590, file: !1177, line: 447, baseType: !7, size: 32, offset: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1502, file: !1177, line: 798, baseType: !1595, size: 384, offset: 3072)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1177, line: 592, size: 384, elements: !1596)
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1602, !1603}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1595, file: !1177, line: 593, baseType: !226, size: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1595, file: !1177, line: 594, baseType: !262, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1595, file: !1177, line: 595, baseType: !262, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1595, file: !1177, line: 596, baseType: !7, size: 32, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1595, file: !1177, line: 597, baseType: !313, size: 16, offset: 288)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1595, file: !1177, line: 598, baseType: !313, size: 16, offset: 304)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1595, file: !1177, line: 600, baseType: !1604, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1502, file: !1177, line: 799, baseType: !1606, size: 1792, offset: 3456)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1177, line: 610, size: 1792, elements: !1607)
!1607 = !{!1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1697, !1698}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1606, file: !1177, line: 611, baseType: !847, size: 192, align: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1606, file: !1177, line: 618, baseType: !251, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1606, file: !1177, line: 619, baseType: !251, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1606, file: !1177, line: 620, baseType: !251, size: 64, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1606, file: !1177, line: 621, baseType: !251, size: 64, offset: 384)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1606, file: !1177, line: 622, baseType: !251, size: 64, offset: 448)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1606, file: !1177, line: 629, baseType: !745, size: 64, offset: 512)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1606, file: !1177, line: 630, baseType: !251, size: 64, offset: 576)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1606, file: !1177, line: 631, baseType: !7, size: 32, offset: 640)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1606, file: !1177, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1606, file: !1177, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1606, file: !1177, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1606, file: !1177, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1606, file: !1177, line: 662, baseType: !1622, size: 512, offset: 704)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1623)
!1623 = !{!1624, !1632, !1633, !1638, !1693, !1694, !1695, !1696}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1622, file: !25, line: 119, baseType: !1625, size: 256)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1626, line: 9, size: 256, elements: !1627)
!1626 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1625, file: !1626, line: 10, baseType: !847, size: 192, align: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1625, file: !1626, line: 11, baseType: !1630, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1631, line: 29, baseType: !745)
!1631 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1622, file: !25, line: 120, baseType: !1630, size: 64, offset: 256)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1622, file: !25, line: 121, baseType: !1634, size: 64, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!24, !1637}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1622, file: !25, line: 122, baseType: !1639, size: 64, offset: 384)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1641)
!1641 = !{!1642, !1667, !1668, !1671, !1676, !1677, !1688, !1692}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1640, file: !25, line: 160, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1645)
!1645 = !{!1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1644, file: !25, line: 216, baseType: !693, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1644, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1644, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1644, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1644, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1644, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1644, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1644, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1644, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1644, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1644, file: !25, line: 227, baseType: !313, size: 16, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1644, file: !25, line: 228, baseType: !313, size: 16, offset: 208)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1644, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1644, file: !25, line: 235, baseType: !1630, size: 64, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1644, file: !25, line: 236, baseType: !1637, size: 64, offset: 320)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1644, file: !25, line: 237, baseType: !1630, size: 64, offset: 384)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1644, file: !25, line: 238, baseType: !1637, size: 64, offset: 448)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1644, file: !25, line: 239, baseType: !1664, size: 4096, align: 512, offset: 512)
!1664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1640, size: 4096, align: 512, elements: !1665)
!1665 = !{!1666}
!1666 = !DISubrange(count: 8)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1640, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1640, file: !25, line: 162, baseType: !1669, size: 32, offset: 96)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !227, line: 32, baseType: !1670)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !434, line: 96, baseType: !103)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1640, file: !25, line: 163, baseType: !1672, size: 32, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !521, line: 274, baseType: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !521, line: 274, size: 32, elements: !1674)
!1674 = !{!1675}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1673, file: !521, line: 274, baseType: !525, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1640, file: !25, line: 164, baseType: !1637, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1640, file: !25, line: 165, baseType: !1678, size: 128, offset: 256)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1626, line: 14, size: 128, elements: !1679)
!1679 = !{!1680}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1678, file: !1626, line: 15, baseType: !1681, size: 128)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !848, line: 26, size: 128, elements: !1682)
!1682 = !{!1683, !1687}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1681, file: !848, line: 27, baseType: !1684, size: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !848, line: 12, size: 64, elements: !1685)
!1685 = !{!1686}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1684, file: !848, line: 13, baseType: !852, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1681, file: !848, line: 28, baseType: !852, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1640, file: !25, line: 166, baseType: !1689, size: 64, offset: 384)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!1630}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1640, file: !25, line: 167, baseType: !1630, size: 64, offset: 448)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1622, file: !25, line: 123, baseType: !362, size: 8, offset: 448)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1622, file: !25, line: 124, baseType: !362, size: 8, offset: 456)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1622, file: !25, line: 125, baseType: !362, size: 8, offset: 464)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1622, file: !25, line: 126, baseType: !362, size: 8, offset: 472)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1606, file: !1177, line: 671, baseType: !1622, size: 512, offset: 1216)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1606, file: !1177, line: 679, baseType: !1699, size: 64, offset: 1728)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1502, file: !1177, line: 800, baseType: !1701, size: 64, offset: 5248)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1703)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1177, line: 800, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1502, file: !1177, line: 809, baseType: !1705, size: 64, offset: 5312)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1177, line: 70, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1502, file: !1177, line: 825, baseType: !1708, size: 2048, align: 512, offset: 5632)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1177, line: 509, size: 2048, align: 512, elements: !1709)
!1709 = !{!1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1708, file: !1177, line: 511, baseType: !251, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1708, file: !1177, line: 512, baseType: !251, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1708, file: !1177, line: 513, baseType: !251, size: 64, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1708, file: !1177, line: 514, baseType: !251, size: 64, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1708, file: !1177, line: 515, baseType: !251, size: 64, offset: 256)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1708, file: !1177, line: 516, baseType: !251, size: 64, offset: 320)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1708, file: !1177, line: 518, baseType: !251, size: 64, offset: 384)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1708, file: !1177, line: 519, baseType: !251, size: 64, offset: 448)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1708, file: !1177, line: 520, baseType: !745, size: 64, offset: 512)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1708, file: !1177, line: 522, baseType: !251, size: 64, offset: 576)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1708, file: !1177, line: 523, baseType: !251, size: 64, offset: 640)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1708, file: !1177, line: 524, baseType: !745, size: 64, offset: 704)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1708, file: !1177, line: 526, baseType: !745, size: 64, offset: 768)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1708, file: !1177, line: 527, baseType: !251, size: 64, offset: 832)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1708, file: !1177, line: 529, baseType: !251, size: 64, offset: 896)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1708, file: !1177, line: 530, baseType: !251, size: 64, offset: 960)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1708, file: !1177, line: 531, baseType: !251, size: 64, offset: 1024)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1708, file: !1177, line: 532, baseType: !251, size: 64, offset: 1088)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1708, file: !1177, line: 533, baseType: !251, size: 64, offset: 1152)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1708, file: !1177, line: 535, baseType: !251, size: 64, offset: 1216)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1708, file: !1177, line: 536, baseType: !251, size: 64, offset: 1280)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1708, file: !1177, line: 537, baseType: !251, size: 64, offset: 1344)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1708, file: !1177, line: 538, baseType: !251, size: 64, offset: 1408)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1708, file: !1177, line: 539, baseType: !251, size: 64, offset: 1472)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1708, file: !1177, line: 540, baseType: !251, size: 64, offset: 1536)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1708, file: !1177, line: 541, baseType: !251, size: 64, offset: 1600)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1708, file: !1177, line: 542, baseType: !251, size: 64, offset: 1664)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1708, file: !1177, line: 543, baseType: !251, size: 64, offset: 1728)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1502, file: !1177, line: 833, baseType: !7, size: 32, offset: 7680)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1502, file: !1177, line: 836, baseType: !7, size: 32, offset: 7712)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1502, file: !1177, line: 837, baseType: !103, size: 32, offset: 7744)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1502, file: !1177, line: 838, baseType: !1742, size: 64, offset: 7808)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1744)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1745, line: 19, baseType: !1746)
!1745 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1745, line: 19, size: 64, elements: !1747)
!1747 = !{!1748}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1746, file: !1745, line: 19, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 64, elements: !1750)
!1750 = !{!1751}
!1751 = !DISubrange(count: 1)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1502, file: !1177, line: 839, baseType: !1753, size: 64, offset: 7872)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1502, file: !1177, line: 840, baseType: !1744, size: 64, offset: 7936)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1502, file: !1177, line: 841, baseType: !221, size: 64, offset: 8000)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1502, file: !1177, line: 843, baseType: !313, size: 16, offset: 8064)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1502, file: !1177, line: 845, baseType: !313, size: 16, offset: 8080)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1502, file: !1177, line: 848, baseType: !103, size: 32, offset: 8096)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1502, file: !1177, line: 849, baseType: !1760, size: 32, offset: 8128)
!1760 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1177, line: 718, size: 32, elements: !1761)
!1761 = !{!1762, !1769}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1760, file: !1177, line: 724, baseType: !1763, size: 32)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1760, file: !1177, line: 719, size: 32, elements: !1764)
!1764 = !{!1765, !1766, !1767, !1768}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1763, file: !1177, line: 720, baseType: !362, size: 8)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1763, file: !1177, line: 721, baseType: !362, size: 8, offset: 8)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1763, file: !1177, line: 722, baseType: !362, size: 8, offset: 16)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1763, file: !1177, line: 723, baseType: !362, size: 8, offset: 24)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1760, file: !1177, line: 725, baseType: !292, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1502, file: !1177, line: 850, baseType: !226, size: 128, offset: 8192)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1502, file: !1177, line: 851, baseType: !1772, size: 64, offset: 8320)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1177, line: 60, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1502, file: !1177, line: 855, baseType: !262, size: 64, offset: 8384)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1502, file: !1177, line: 856, baseType: !362, size: 8, offset: 8448)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1502, file: !1177, line: 857, baseType: !362, size: 8, offset: 8456)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1502, file: !1177, line: 858, baseType: !103, size: 32, offset: 8480)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1502, file: !1177, line: 859, baseType: !226, size: 128, offset: 8512)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1502, file: !1177, line: 860, baseType: !103, size: 32, offset: 8640)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1502, file: !1177, line: 861, baseType: !226, size: 128, offset: 8704)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1502, file: !1177, line: 873, baseType: !1782, size: 256, offset: 8832)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1177, line: 376, size: 256, elements: !1783)
!1783 = !{!1784, !1785, !1786, !1787}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1782, file: !1177, line: 381, baseType: !262, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1782, file: !1177, line: 384, baseType: !255, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1782, file: !1177, line: 389, baseType: !255, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1782, file: !1177, line: 392, baseType: !255, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1502, file: !1177, line: 875, baseType: !226, size: 128, offset: 9088)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1502, file: !1177, line: 877, baseType: !1790, size: 320, offset: 9216)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1791, line: 86, size: 320, elements: !1792)
!1791 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1792 = !{!1793, !1794, !1795}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1790, file: !1791, line: 87, baseType: !103, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1790, file: !1791, line: 88, baseType: !226, size: 128, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1790, file: !1791, line: 89, baseType: !226, size: 128, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1502, file: !1177, line: 878, baseType: !847, size: 192, align: 64, offset: 9536)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1502, file: !1177, line: 881, baseType: !1798, size: 64, offset: 9728)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1800)
!1800 = !{!1801, !2675}
!1801 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !38, line: 734, baseType: !1802, size: 10240)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1799, file: !38, line: 734, size: 10240, elements: !1803)
!1803 = !{!1804, !1808, !1821, !2552, !2553, !2554, !2555, !2556, !2557, !2564, !2565, !2566, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2605, !2607, !2610, !2655, !2656, !2657, !2660, !2661, !2662, !2665, !2666, !2667, !2673, !2674}
!1804 = !DIDerivedType(tag: DW_TAG_member, scope: !1802, file: !38, line: 739, baseType: !1805, size: 512, align: 512)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1802, file: !38, line: 739, size: 512, align: 512, elements: !1806)
!1806 = !{!1807}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1805, file: !38, line: 747, baseType: !354, size: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1802, file: !38, line: 750, baseType: !1809, size: 128, offset: 512)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1810, line: 218, size: 128, elements: !1811)
!1810 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1811 = !{!1812, !1819, !1820}
!1812 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !1810, line: 219, baseType: !1813, size: 32)
!1813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1809, file: !1810, line: 219, size: 32, elements: !1814)
!1814 = !{!1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1813, file: !1810, line: 220, baseType: !334, size: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1813, file: !1810, line: 221, baseType: !1817)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1810, line: 197, baseType: !1818)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1810, line: 197, elements: !1022)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1809, file: !1810, line: 223, baseType: !7, size: 32, offset: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1809, file: !1810, line: 224, baseType: !221, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1802, file: !38, line: 752, baseType: !1822, size: 64, offset: 640)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!262, !1825, !262, !262, !262, !262}
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1827)
!1827 = !{!1828, !1834, !1835, !1837, !1838, !1839, !1840, !1841, !1891, !2081, !2090, !2091, !2092, !2542, !2543, !2544, !2545, !2547, !2548, !2551}
!1828 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !14, line: 995, baseType: !1829, size: 128)
!1829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1826, file: !14, line: 995, size: 128, elements: !1830)
!1830 = !{!1831, !1832, !1833}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1829, file: !14, line: 996, baseType: !1528, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1829, file: !14, line: 997, baseType: !955, size: 128, align: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1829, file: !14, line: 998, baseType: !7, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1826, file: !14, line: 1005, baseType: !334, size: 32, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1826, file: !14, line: 1006, baseType: !1836, size: 32, offset: 160)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !227, line: 156, baseType: !7)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1826, file: !14, line: 1007, baseType: !739, size: 64, offset: 192)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1826, file: !14, line: 1008, baseType: !735, size: 256, offset: 256)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1826, file: !14, line: 1009, baseType: !635, size: 64, offset: 512)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1826, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1826, file: !14, line: 1011, baseType: !1842, size: 256, offset: 640)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1843)
!1843 = !{!1844, !1865, !1887, !1888, !1889, !1890}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1842, file: !14, line: 949, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1846, line: 34, baseType: !1847)
!1846 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1846, line: 25, size: 64, elements: !1848)
!1848 = !{!1849}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1847, file: !1846, line: 26, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1851, line: 27, baseType: !1852)
!1851 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1851, line: 13, size: 64, elements: !1853)
!1853 = !{!1854, !1864}
!1854 = !DIDerivedType(tag: DW_TAG_member, scope: !1852, file: !1851, line: 14, baseType: !1855, size: 32)
!1855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1852, file: !1851, line: 14, size: 32, elements: !1856)
!1856 = !{!1857, !1858}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1855, file: !1851, line: 15, baseType: !354, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !1851, line: 16, baseType: !1859, size: 32)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1851, line: 16, size: 32, elements: !1860)
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1859, file: !1851, line: 18, baseType: !362, size: 8)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1859, file: !1851, line: 19, baseType: !1863, size: 24, offset: 8)
!1863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 24, elements: !401)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1852, file: !1851, line: 26, baseType: !346, size: 32, offset: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1842, file: !14, line: 950, baseType: !1866, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1868)
!1868 = !{!1869, !1870, !1871, !1872, !1874, !1875, !1876, !1877}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1867, file: !30, line: 61, baseType: !1515, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1867, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1867, file: !30, line: 63, baseType: !334, size: 32, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1867, file: !30, line: 65, baseType: !1873, size: 256, offset: 128)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1103, size: 256, elements: !267)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1867, file: !30, line: 66, baseType: !1103, size: 64, offset: 384)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1867, file: !30, line: 68, baseType: !1488, size: 192, offset: 448)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1867, file: !30, line: 69, baseType: !955, size: 128, align: 64, offset: 640)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1867, file: !30, line: 70, baseType: !1878, offset: 768)
!1878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1879, elements: !1885)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1880)
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1879, file: !30, line: 55, baseType: !103, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1879, file: !30, line: 56, baseType: !1883, size: 64, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1885 = !{!1886}
!1886 = !DISubrange(count: -1)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1842, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1842, file: !14, line: 952, baseType: !485, size: 32, offset: 160)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1842, file: !14, line: 952, baseType: !485, size: 32, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1842, file: !14, line: 953, baseType: !103, size: 32, offset: 224)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1826, file: !14, line: 1012, baseType: !1892, size: 64, offset: 896)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1894)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1895, line: 110, size: 1472, elements: !1896)
!1895 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1896 = !{!1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1913, !1914, !1915, !1916, !1917, !1918, !2026, !2027, !2028, !2029, !2030, !2061, !2064, !2068, !2076}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1894, file: !1895, line: 111, baseType: !739, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1894, file: !1895, line: 112, baseType: !485, size: 32, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1894, file: !1895, line: 113, baseType: !494, size: 32, offset: 96)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1894, file: !1895, line: 114, baseType: !485, size: 32, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1894, file: !1895, line: 115, baseType: !494, size: 32, offset: 160)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1894, file: !1895, line: 116, baseType: !485, size: 32, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1894, file: !1895, line: 117, baseType: !494, size: 32, offset: 224)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1894, file: !1895, line: 118, baseType: !485, size: 32, offset: 256)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1894, file: !1895, line: 119, baseType: !494, size: 32, offset: 288)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1894, file: !1895, line: 120, baseType: !7, size: 32, offset: 320)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1894, file: !1895, line: 121, baseType: !1908, size: 64, offset: 384)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1909, line: 24, baseType: !1910)
!1909 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1909, line: 24, size: 64, elements: !1911)
!1911 = !{!1912}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1910, file: !1909, line: 24, baseType: !251, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1894, file: !1895, line: 122, baseType: !1908, size: 64, offset: 448)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1894, file: !1895, line: 123, baseType: !1908, size: 64, offset: 512)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1894, file: !1895, line: 124, baseType: !1908, size: 64, offset: 576)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1894, file: !1895, line: 125, baseType: !1908, size: 64, offset: 640)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1894, file: !1895, line: 127, baseType: !304, size: 8, offset: 704)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1894, file: !1895, line: 129, baseType: !1919, size: 64, offset: 768)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1921, line: 195, size: 1728, elements: !1922)
!1921 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1922 = !{!1923, !1924, !1927, !1932, !1933, !1936, !1937, !1942, !1943, !1944, !1945, !1948, !1949, !1950, !1951, !1952, !1990, !2011}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1920, file: !1921, line: 196, baseType: !1515, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1920, file: !1921, line: 197, baseType: !1925, size: 32, offset: 32)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1921, line: 28, baseType: !1926)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !227, line: 104, baseType: !731)
!1927 = !DIDerivedType(tag: DW_TAG_member, scope: !1920, file: !1921, line: 198, baseType: !1928, size: 192, offset: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1920, file: !1921, line: 198, size: 192, elements: !1929)
!1929 = !{!1930, !1931}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1928, file: !1921, line: 199, baseType: !226, size: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1928, file: !1921, line: 200, baseType: !847, size: 192, align: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1920, file: !1921, line: 205, baseType: !1395, size: 320, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1920, file: !1921, line: 206, baseType: !1934, size: 64, offset: 576)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1921, line: 206, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1920, file: !1921, line: 207, baseType: !221, size: 64, offset: 640)
!1937 = !DIDerivedType(tag: DW_TAG_member, scope: !1920, file: !1921, line: 208, baseType: !1938, size: 64, offset: 704)
!1938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1920, file: !1921, line: 208, size: 64, elements: !1939)
!1939 = !{!1940, !1941}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1938, file: !1921, line: 209, baseType: !1235, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1938, file: !1921, line: 210, baseType: !1235, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1920, file: !1921, line: 212, baseType: !1235, size: 64, offset: 768)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1920, file: !1921, line: 213, baseType: !485, size: 32, offset: 832)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1920, file: !1921, line: 214, baseType: !494, size: 32, offset: 864)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1920, file: !1921, line: 215, baseType: !1946, size: 32, offset: 896)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1921, line: 31, baseType: !1947)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !227, line: 110, baseType: !292)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1920, file: !1921, line: 216, baseType: !313, size: 16, offset: 928)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1920, file: !1921, line: 217, baseType: !313, size: 16, offset: 944)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1920, file: !1921, line: 221, baseType: !873, size: 16, offset: 960)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1920, file: !1921, line: 228, baseType: !262, size: 64, offset: 1024)
!1952 = !DIDerivedType(tag: DW_TAG_member, scope: !1920, file: !1921, line: 245, baseType: !1953, size: 320, offset: 1088)
!1953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1920, file: !1921, line: 245, size: 320, elements: !1954)
!1954 = !{!1955, !1982}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1953, file: !1921, line: 246, baseType: !1956, size: 320)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1921, line: 114, size: 320, elements: !1957)
!1957 = !{!1958, !1959, !1971, !1974, !1981}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1956, file: !1921, line: 116, baseType: !262, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, scope: !1956, file: !1921, line: 117, baseType: !1960, size: 64, offset: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1956, file: !1921, line: 117, size: 64, elements: !1961)
!1961 = !{!1962, !1970}
!1962 = !DIDerivedType(tag: DW_TAG_member, scope: !1960, file: !1921, line: 118, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1960, file: !1921, line: 118, size: 64, elements: !1964)
!1964 = !{!1965, !1966}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1963, file: !1921, line: 120, baseType: !369, size: 16)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1963, file: !1921, line: 121, baseType: !1967, size: 48, offset: 16)
!1967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 48, elements: !1968)
!1968 = !{!1969}
!1969 = !DISubrange(count: 6)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1960, file: !1921, line: 127, baseType: !262, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1956, file: !1921, line: 129, baseType: !1972, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1921, line: 102, flags: DIFlagFwdDecl)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1956, file: !1921, line: 130, baseType: !1975, size: 64, offset: 192)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1921, line: 108, size: 192, elements: !1977)
!1977 = !{!1978, !1979, !1980}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1976, file: !1921, line: 109, baseType: !955, size: 128, align: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1976, file: !1921, line: 110, baseType: !1515, size: 32, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1976, file: !1921, line: 111, baseType: !815, size: 8, offset: 160)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1956, file: !1921, line: 131, baseType: !258, size: 64, offset: 256)
!1982 = !DIDerivedType(tag: DW_TAG_member, scope: !1953, file: !1921, line: 247, baseType: !1983, size: 320)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1953, file: !1921, line: 247, size: 320, elements: !1984)
!1984 = !{!1985, !1986, !1987, !1988, !1989}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1983, file: !1921, line: 248, baseType: !262, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1983, file: !1921, line: 249, baseType: !262, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1983, file: !1921, line: 250, baseType: !1972, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1983, file: !1921, line: 251, baseType: !1975, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1983, file: !1921, line: 252, baseType: !400, size: 64, offset: 256)
!1990 = !DIDerivedType(tag: DW_TAG_member, scope: !1920, file: !1921, line: 260, baseType: !1991, size: 256, offset: 1408)
!1991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1920, file: !1921, line: 260, size: 256, elements: !1992)
!1992 = !{!1993, !1999}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1991, file: !1921, line: 261, baseType: !1994, size: 256)
!1994 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1921, line: 134, size: 256, elements: !1995)
!1995 = !{!1996, !1997}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1994, file: !1921, line: 135, baseType: !221, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1994, file: !1921, line: 136, baseType: !1998, size: 256)
!1998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 256, elements: !267)
!1999 = !DIDerivedType(tag: DW_TAG_member, scope: !1991, file: !1921, line: 262, baseType: !2000, size: 256)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1991, file: !1921, line: 262, size: 256, elements: !2001)
!2001 = !{!2002, !2003}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2000, file: !1921, line: 264, baseType: !226, size: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2000, file: !1921, line: 265, baseType: !2004, size: 128, offset: 128)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2005, line: 22, size: 128, elements: !2006)
!2005 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2006 = !{!2007, !2010}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2004, file: !2005, line: 23, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2005, line: 23, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2004, file: !2005, line: 24, baseType: !262, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1920, file: !1921, line: 280, baseType: !2012, size: 64, offset: 1664)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1921, line: 176, size: 192, elements: !2014)
!2014 = !{!2015, !2024, !2025}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2013, file: !1921, line: 177, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1921, line: 171, baseType: !2017)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!103, !1919, !2020, !2022, !1919}
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1973)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1994)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2013, file: !1921, line: 178, baseType: !1919, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2013, file: !1921, line: 179, baseType: !1972, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1894, file: !1895, line: 130, baseType: !1919, size: 64, offset: 832)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1894, file: !1895, line: 131, baseType: !1919, size: 64, offset: 896)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1894, file: !1895, line: 132, baseType: !1919, size: 64, offset: 960)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1894, file: !1895, line: 135, baseType: !221, size: 64, offset: 1024)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1894, file: !1895, line: 137, baseType: !2031, size: 64, offset: 1088)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2033, line: 14, size: 1088, elements: !2034)
!2033 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2034 = !{!2035, !2036, !2045, !2046, !2047, !2048, !2049, !2050}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2032, file: !2033, line: 15, baseType: !1515, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2032, file: !2033, line: 17, baseType: !2037, size: 320, offset: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2038, line: 22, size: 320, elements: !2039)
!2038 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2039 = !{!2040, !2041, !2042, !2043}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2037, file: !2038, line: 23, baseType: !693, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2037, file: !2038, line: 24, baseType: !745, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2037, file: !2038, line: 26, baseType: !226, size: 128, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2037, file: !2038, line: 28, baseType: !2044, size: 64, offset: 256)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2032, file: !2033, line: 19, baseType: !262, size: 64, offset: 384)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2032, file: !2033, line: 20, baseType: !739, size: 64, offset: 448)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2032, file: !2033, line: 23, baseType: !979, size: 128, offset: 512)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2032, file: !2033, line: 24, baseType: !485, size: 32, offset: 640)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2032, file: !2033, line: 29, baseType: !739, size: 64, offset: 704)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2032, file: !2033, line: 36, baseType: !2051, size: 320, offset: 768)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2052, line: 15, size: 320, elements: !2053)
!2052 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2053 = !{!2054, !2055, !2056, !2057, !2058, !2059, !2060}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2051, file: !2052, line: 16, baseType: !693, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2051, file: !2052, line: 18, baseType: !103, size: 32, offset: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2051, file: !2052, line: 19, baseType: !103, size: 32, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2051, file: !2052, line: 20, baseType: !103, size: 32, offset: 96)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2051, file: !2052, line: 21, baseType: !103, size: 32, offset: 128)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2051, file: !2052, line: 22, baseType: !262, size: 64, offset: 192)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2051, file: !2052, line: 23, baseType: !262, size: 64, offset: 256)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1894, file: !1895, line: 138, baseType: !2062, size: 64, offset: 1152)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !486, line: 18, flags: DIFlagFwdDecl)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1894, file: !1895, line: 139, baseType: !2065, size: 64, offset: 1216)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2067, line: 16, flags: DIFlagFwdDecl)
!2067 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1894, file: !1895, line: 140, baseType: !2069, size: 64, offset: 1280)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1895, line: 25, size: 64, elements: !2071)
!2071 = !{!2072, !2073, !2074}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2070, file: !1895, line: 26, baseType: !354, size: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2070, file: !1895, line: 27, baseType: !103, size: 32, offset: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2070, file: !1895, line: 28, baseType: !2075, offset: 64)
!2075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, elements: !1885)
!2076 = !DIDerivedType(tag: DW_TAG_member, scope: !1894, file: !1895, line: 142, baseType: !2077, size: 128, offset: 1344)
!2077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1894, file: !1895, line: 142, size: 128, elements: !2078)
!2078 = !{!2079, !2080}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2077, file: !1895, line: 143, baseType: !103, size: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2077, file: !1895, line: 144, baseType: !955, size: 128, align: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1826, file: !14, line: 1013, baseType: !2082, size: 256, offset: 960)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2083)
!2083 = !{!2084, !2085, !2086, !2087, !2088, !2089}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2082, file: !14, line: 971, baseType: !262, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2082, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2082, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2082, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2082, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2082, file: !14, line: 976, baseType: !635, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1826, file: !14, line: 1014, baseType: !1307, size: 128, offset: 1216)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1826, file: !14, line: 1015, baseType: !479, size: 64, offset: 1344)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1826, file: !14, line: 1016, baseType: !2093, size: 64, offset: 1408)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2095)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2096)
!2096 = !{!2097, !2098, !2102, !2107, !2111, !2140, !2141, !2147, !2160, !2168, !2172, !2173, !2464, !2465, !2469, !2474, !2475, !2479, !2483, !2489, !2490, !2494, !2495, !2501, !2505, !2509, !2515, !2519, !2523, !2527, !2531, !2532, !2538}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2095, file: !14, line: 1915, baseType: !664, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2095, file: !14, line: 1916, baseType: !2099, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!635, !1825, !635, !103}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2095, file: !14, line: 1917, baseType: !2103, size: 64, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!432, !1825, !400, !447, !2106}
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2095, file: !14, line: 1918, baseType: !2108, size: 64, offset: 192)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!432, !1825, !258, !447, !2106}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2095, file: !14, line: 1919, baseType: !2112, size: 64, offset: 256)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!432, !2115, !2137}
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2117)
!2117 = !{!2118, !2119, !2120, !2124, !2125, !2126, !2127}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2116, file: !14, line: 374, baseType: !1825, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2116, file: !14, line: 375, baseType: !635, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2116, file: !14, line: 376, baseType: !2121, size: 64, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null, !2115, !436}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2116, file: !14, line: 377, baseType: !221, size: 64, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2116, file: !14, line: 378, baseType: !103, size: 32, offset: 256)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2116, file: !14, line: 379, baseType: !369, size: 16, offset: 288)
!2127 = !DIDerivedType(tag: DW_TAG_member, scope: !2116, file: !14, line: 380, baseType: !2128, size: 64, offset: 320)
!2128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2116, file: !14, line: 380, size: 64, elements: !2129)
!2129 = !{!2130, !2133}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2128, file: !14, line: 386, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2128, file: !14, line: 395, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!432, !221}
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2139, line: 17, flags: DIFlagFwdDecl)
!2139 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2095, file: !14, line: 1920, baseType: !2112, size: 64, offset: 320)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2095, file: !14, line: 1921, baseType: !2142, size: 64, offset: 384)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!103, !2115, !2145, !7}
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2095, file: !14, line: 1923, baseType: !2148, size: 64, offset: 448)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!103, !1825, !2151}
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2153)
!2153 = !{!2154, !2159}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2152, file: !14, line: 1859, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2156)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!815, !2151, !258, !103, !635, !251, !7}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2152, file: !14, line: 1860, baseType: !635, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2095, file: !14, line: 1924, baseType: !2161, size: 64, offset: 512)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!2164, !1825, !2166}
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2165, line: 59, baseType: !7)
!2165 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !650, line: 31, flags: DIFlagFwdDecl)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2095, file: !14, line: 1925, baseType: !2169, size: 64, offset: 576)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!436, !1825, !7, !262}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2095, file: !14, line: 1926, baseType: !2169, size: 64, offset: 640)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2095, file: !14, line: 1927, baseType: !2174, size: 64, offset: 704)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!103, !1825, !2177}
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2179)
!2179 = !{!2180, !2189, !2190, !2198, !2205, !2206, !2211, !2212, !2217, !2218, !2221, !2457, !2458, !2459, !2460, !2461, !2462}
!2180 = !DIDerivedType(tag: DW_TAG_member, scope: !2178, file: !38, line: 628, baseType: !2181, size: 128)
!2181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2178, file: !38, line: 628, size: 128, elements: !2182)
!2182 = !{!2183, !2188}
!2183 = !DIDerivedType(tag: DW_TAG_member, scope: !2181, file: !38, line: 629, baseType: !2184, size: 128)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2181, file: !38, line: 629, size: 128, elements: !2185)
!2185 = !{!2186, !2187}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2184, file: !38, line: 631, baseType: !262, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2184, file: !38, line: 632, baseType: !262, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2181, file: !38, line: 635, baseType: !955, size: 128, align: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2178, file: !38, line: 639, baseType: !1798, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2178, file: !38, line: 640, baseType: !2191, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2192, line: 297, baseType: !2193)
!2192 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2192, line: 297, size: 64, elements: !2194)
!2194 = !{!2195}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2193, file: !2192, line: 297, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2197, line: 19, baseType: !262)
!2197 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2198 = !DIDerivedType(tag: DW_TAG_member, scope: !2178, file: !38, line: 646, baseType: !2199, size: 64, offset: 256)
!2199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2178, file: !38, line: 646, size: 64, elements: !2200)
!2200 = !{!2201, !2204}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2199, file: !38, line: 647, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2203)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !262)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2199, file: !38, line: 648, baseType: !2203, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2178, file: !38, line: 666, baseType: !103, size: 32, offset: 320)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2178, file: !38, line: 667, baseType: !2207, size: 64, offset: 384)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2209)
!2209 = !{!2210}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2208, file: !38, line: 580, baseType: !1395, size: 320)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2178, file: !38, line: 670, baseType: !815, size: 8, offset: 448)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2178, file: !38, line: 681, baseType: !2213, size: 256, offset: 512)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !38, line: 678, size: 256, elements: !2214)
!2214 = !{!2215, !2216}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2213, file: !38, line: 679, baseType: !847, size: 192, align: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2213, file: !38, line: 680, baseType: !262, size: 64, offset: 192)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2178, file: !38, line: 689, baseType: !226, size: 128, offset: 768)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2178, file: !38, line: 691, baseType: !2219, size: 64, offset: 896)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2178, file: !38, line: 694, baseType: !2222, size: 64, offset: 960)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2224)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2225, line: 563, size: 1024, elements: !2226)
!2225 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2226 = !{!2227, !2231, !2232, !2236, !2240, !2244, !2421, !2425, !2429, !2433, !2434, !2435, !2439, !2443, !2449, !2453}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2224, file: !2225, line: 564, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{null, !2177}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2224, file: !2225, line: 569, baseType: !2228, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2224, file: !2225, line: 571, baseType: !2233, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!103, !2177, !262}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2224, file: !2225, line: 572, baseType: !2237, size: 64, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!103, !2177}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2224, file: !2225, line: 578, baseType: !2241, size: 64, offset: 256)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!103, !2177, !262, !262, !262}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2224, file: !2225, line: 580, baseType: !2245, size: 64, offset: 320)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!2248, !2249}
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2225, line: 512, size: 896, elements: !2251)
!2251 = !{!2252, !2260, !2261, !2268, !2275, !2285, !2414, !2415, !2417, !2419}
!2252 = !DIDerivedType(tag: DW_TAG_member, scope: !2250, file: !2225, line: 513, baseType: !2253, size: 320)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2250, file: !2225, line: 513, size: 320, elements: !2254)
!2254 = !{!2255, !2256, !2257, !2258, !2259}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2253, file: !2225, line: 514, baseType: !2177, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2253, file: !2225, line: 515, baseType: !1247, size: 32, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2253, file: !2225, line: 516, baseType: !262, size: 64, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2253, file: !2225, line: 517, baseType: !262, size: 64, offset: 192)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2253, file: !2225, line: 518, baseType: !262, size: 64, offset: 256)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2250, file: !2225, line: 520, baseType: !37, size: 32, offset: 320)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2250, file: !2225, line: 522, baseType: !2262, size: 64, offset: 384)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2197, line: 22, baseType: !2264)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2197, line: 22, size: 64, elements: !2265)
!2265 = !{!2266}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2264, file: !2197, line: 22, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2197, line: 15, baseType: !262)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2250, file: !2225, line: 524, baseType: !2269, size: 64, offset: 448)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2192, line: 372, baseType: !2271)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2192, line: 372, size: 64, elements: !2272)
!2272 = !{!2273}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2271, file: !2192, line: 372, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2197, line: 16, baseType: !262)
!2275 = !DIDerivedType(tag: DW_TAG_member, scope: !2250, file: !2225, line: 527, baseType: !2276, size: 64, offset: 512)
!2276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2250, file: !2225, line: 527, size: 64, elements: !2277)
!2277 = !{!2278, !2284}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2276, file: !2225, line: 528, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2197, line: 21, baseType: !2280)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2197, line: 21, size: 64, elements: !2281)
!2281 = !{!2282}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2280, file: !2197, line: 21, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2197, line: 14, baseType: !262)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2276, file: !2225, line: 529, baseType: !2263, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2250, file: !2225, line: 534, baseType: !2286, size: 64, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2288)
!2288 = !{!2289, !2290, !2408, !2413}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2287, file: !38, line: 75, baseType: !262, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, scope: !2287, file: !38, line: 83, baseType: !2291, size: 320, offset: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2287, file: !38, line: 83, size: 320, elements: !2292)
!2292 = !{!2293, !2314, !2328, !2332, !2407}
!2293 = !DIDerivedType(tag: DW_TAG_member, scope: !2291, file: !38, line: 84, baseType: !2294, size: 320)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2291, file: !38, line: 84, size: 320, elements: !2295)
!2295 = !{!2296, !2307, !2308, !2313}
!2296 = !DIDerivedType(tag: DW_TAG_member, scope: !2294, file: !38, line: 90, baseType: !2297, size: 128)
!2297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2294, file: !38, line: 90, size: 128, elements: !2298)
!2298 = !{!2299, !2300, !2305, !2306}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2297, file: !38, line: 91, baseType: !226, size: 128)
!2300 = !DIDerivedType(tag: DW_TAG_member, scope: !2297, file: !38, line: 94, baseType: !2301, size: 128)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2297, file: !38, line: 94, size: 128, elements: !2302)
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2301, file: !38, line: 96, baseType: !221, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2301, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2297, file: !38, line: 102, baseType: !226, size: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2297, file: !38, line: 103, baseType: !226, size: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2294, file: !38, line: 106, baseType: !475, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, scope: !2294, file: !38, line: 107, baseType: !2309, size: 64, offset: 192)
!2309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2294, file: !38, line: 107, size: 64, elements: !2310)
!2310 = !{!2311, !2312}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2309, file: !38, line: 108, baseType: !262, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2309, file: !38, line: 109, baseType: !262, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2294, file: !38, line: 117, baseType: !262, size: 64, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, scope: !2291, file: !38, line: 119, baseType: !2315, size: 320)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2291, file: !38, line: 119, size: 320, elements: !2316)
!2316 = !{!2317, !2318, !2321, !2322, !2323}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2315, file: !38, line: 124, baseType: !262, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2315, file: !38, line: 125, baseType: !2319, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2315, file: !38, line: 126, baseType: !262, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2315, file: !38, line: 127, baseType: !262, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, scope: !2315, file: !38, line: 128, baseType: !2324, size: 64, offset: 256)
!2324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2315, file: !38, line: 128, size: 64, elements: !2325)
!2325 = !{!2326, !2327}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2324, file: !38, line: 133, baseType: !262, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2324, file: !38, line: 138, baseType: !739, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, scope: !2291, file: !38, line: 141, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2291, file: !38, line: 141, size: 64, elements: !2330)
!2330 = !{!2331}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2329, file: !38, line: 142, baseType: !262, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, scope: !2291, file: !38, line: 144, baseType: !2333, size: 128)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2291, file: !38, line: 144, size: 128, elements: !2334)
!2334 = !{!2335, !2406}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2333, file: !38, line: 146, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2338)
!2338 = !{!2339, !2349, !2370, !2371, !2372, !2373, !2374, !2388, !2389, !2390}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2337, file: !54, line: 127, baseType: !2340, size: 384)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2341)
!2341 = !{!2342, !2343, !2345, !2346, !2347, !2348}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2340, file: !54, line: 22, baseType: !262, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2340, file: !54, line: 23, baseType: !2344, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2340, file: !54, line: 24, baseType: !2344, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2340, file: !54, line: 25, baseType: !262, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2340, file: !54, line: 26, baseType: !262, size: 64, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2340, file: !54, line: 27, baseType: !262, size: 64, offset: 320)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2337, file: !54, line: 128, baseType: !2350, size: 128, offset: 384)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2351, line: 105, size: 128, elements: !2352)
!2351 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2352 = !{!2353, !2354}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2350, file: !2351, line: 110, baseType: !262, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2350, file: !2351, line: 118, baseType: !2355, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2351, line: 95, size: 448, elements: !2357)
!2357 = !{!2358, !2359, !2365, !2366, !2367, !2368, !2369}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2356, file: !2351, line: 96, baseType: !739, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2356, file: !2351, line: 97, baseType: !2360, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2351, line: 60, baseType: !2362)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !2364}
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2356, file: !2351, line: 98, baseType: !2360, size: 64, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2356, file: !2351, line: 99, baseType: !815, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2356, file: !2351, line: 100, baseType: !815, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2356, file: !2351, line: 101, baseType: !955, size: 128, align: 64, offset: 256)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2356, file: !2351, line: 102, baseType: !2364, size: 64, offset: 384)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2337, file: !54, line: 129, baseType: !684, size: 256, offset: 512)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2337, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2337, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2337, file: !54, line: 132, baseType: !262, size: 64, offset: 832)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2337, file: !54, line: 133, baseType: !2375, size: 64, offset: 896)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2377)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2378)
!2378 = !{!2379, !2383, !2384}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2377, file: !54, line: 83, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{null, !2286}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2377, file: !54, line: 89, baseType: !2245, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2377, file: !54, line: 100, baseType: !2385, size: 64, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!103, !2336, !262, !262, !103}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2337, file: !54, line: 134, baseType: !221, size: 64, offset: 960)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2337, file: !54, line: 135, baseType: !103, size: 32, offset: 1024)
!2390 = !DIDerivedType(tag: DW_TAG_member, scope: !2337, file: !54, line: 136, baseType: !2391, size: 128, offset: 1088)
!2391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2337, file: !54, line: 136, size: 128, elements: !2392)
!2392 = !{!2393, !2399}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2391, file: !54, line: 137, baseType: !2394, size: 128)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2395, line: 6, size: 128, elements: !2396)
!2395 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2396 = !{!2397, !2398}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2394, file: !2395, line: 7, baseType: !251, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2394, file: !2395, line: 8, baseType: !251, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, scope: !2391, file: !54, line: 138, baseType: !2400)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2391, file: !54, line: 138, elements: !2401)
!2401 = !{!2402, !2404}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2400, file: !54, line: 138, baseType: !2403)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2400, file: !54, line: 138, elements: !1022)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2400, file: !54, line: 138, baseType: !2405)
!2405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2394, elements: !1885)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2333, file: !38, line: 147, baseType: !221, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2291, file: !38, line: 161, baseType: !955, size: 128, align: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, scope: !2287, file: !38, line: 164, baseType: !2409, size: 32, offset: 384)
!2409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2287, file: !38, line: 164, size: 32, elements: !2410)
!2410 = !{!2411, !2412}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2409, file: !38, line: 169, baseType: !354, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2409, file: !38, line: 177, baseType: !7, size: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2287, file: !38, line: 181, baseType: !354, size: 32, offset: 416)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2250, file: !2225, line: 535, baseType: !2286, size: 64, offset: 640)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2250, file: !2225, line: 541, baseType: !2416, size: 64, offset: 704)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2250, file: !2225, line: 545, baseType: !2418, size: 64, offset: 768)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2250, file: !2225, line: 549, baseType: !2420, size: 64, offset: 832)
!2420 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2192, line: 520, baseType: !2286)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2224, file: !2225, line: 581, baseType: !2422, size: 64, offset: 384)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!2248, !2249, !7}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2224, file: !2225, line: 582, baseType: !2426, size: 64, offset: 448)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!2248, !2249, !262, !262}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2224, file: !2225, line: 584, baseType: !2430, size: 64, offset: 512)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!262, !2177}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2224, file: !2225, line: 588, baseType: !2245, size: 64, offset: 576)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2224, file: !2225, line: 591, baseType: !2245, size: 64, offset: 640)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2224, file: !2225, line: 597, baseType: !2436, size: 64, offset: 704)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!103, !2177, !262, !221, !103, !103}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2224, file: !2225, line: 603, baseType: !2440, size: 64, offset: 768)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!258, !2177}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2224, file: !2225, line: 613, baseType: !2444, size: 64, offset: 832)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!103, !2177, !2447}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1177, line: 54, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2224, file: !2225, line: 625, baseType: !2450, size: 64, offset: 896)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!2447, !2177, !262}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2224, file: !2225, line: 633, baseType: !2454, size: 64, offset: 960)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!2286, !2177, !262}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2178, file: !38, line: 697, baseType: !262, size: 64, offset: 1024)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2178, file: !38, line: 699, baseType: !1825, size: 64, offset: 1088)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2178, file: !38, line: 700, baseType: !221, size: 64, offset: 1152)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2178, file: !38, line: 711, baseType: !739, size: 64, offset: 1216)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2178, file: !38, line: 717, baseType: !2447, size: 64, offset: 1280)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2178, file: !38, line: 722, baseType: !2463, offset: 1344)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !1022)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2095, file: !14, line: 1928, baseType: !262, size: 64, offset: 768)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2095, file: !14, line: 1929, baseType: !2466, size: 64, offset: 832)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!103, !479, !1825}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2095, file: !14, line: 1930, baseType: !2470, size: 64, offset: 896)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!103, !1825, !2473}
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !221)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2095, file: !14, line: 1931, baseType: !2466, size: 64, offset: 960)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2095, file: !14, line: 1932, baseType: !2476, size: 64, offset: 1024)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!103, !1825, !635, !635, !103}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2095, file: !14, line: 1933, baseType: !2480, size: 64, offset: 1088)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!103, !103, !1825, !103}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2095, file: !14, line: 1934, baseType: !2484, size: 64, offset: 1152)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!103, !1825, !103, !2487}
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2095, file: !14, line: 1935, baseType: !1822, size: 64, offset: 1216)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2095, file: !14, line: 1936, baseType: !2491, size: 64, offset: 1280)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!103, !103}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2095, file: !14, line: 1937, baseType: !2484, size: 64, offset: 1344)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2095, file: !14, line: 1938, baseType: !2496, size: 64, offset: 1408)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!432, !2499, !1825, !2106, !447, !7}
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1177, line: 59, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2095, file: !14, line: 1939, baseType: !2502, size: 64, offset: 1472)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!432, !1825, !2106, !2499, !447, !7}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2095, file: !14, line: 1940, baseType: !2506, size: 64, offset: 1536)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{null, !1825}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2095, file: !14, line: 1941, baseType: !2510, size: 64, offset: 1600)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!103, !1825, !103, !2513, !2514}
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2095, file: !14, line: 1942, baseType: !2516, size: 64, offset: 1664)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!436, !1825, !103, !635, !635}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2095, file: !14, line: 1944, baseType: !2520, size: 64, offset: 1728)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{null, !1175, !1825}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2095, file: !14, line: 1948, baseType: !2524, size: 64, offset: 1792)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!432, !1825, !635, !1825, !635, !447, !7}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2095, file: !14, line: 1950, baseType: !2528, size: 64, offset: 1856)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!635, !1825, !635, !1825, !635, !635, !7}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2095, file: !14, line: 1953, baseType: !2476, size: 64, offset: 1920)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2095, file: !14, line: 1954, baseType: !2533, size: 64, offset: 1984)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!103, !2536, !7}
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2095, file: !14, line: 1955, baseType: !2539, size: 64, offset: 2048)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!103, !2536, !2145, !7}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1826, file: !14, line: 1018, baseType: !251, size: 64, offset: 1472)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1826, file: !14, line: 1020, baseType: !221, size: 64, offset: 1536)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1826, file: !14, line: 1023, baseType: !221, size: 64, offset: 1600)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1826, file: !14, line: 1027, baseType: !2546, size: 64, offset: 1664)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1826, file: !14, line: 1029, baseType: !475, size: 64, offset: 1728)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1826, file: !14, line: 1030, baseType: !2549, size: 32, offset: 1792)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2550, line: 8, baseType: !292)
!2550 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1826, file: !14, line: 1031, baseType: !2549, size: 32, offset: 1824)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1802, file: !38, line: 756, baseType: !262, size: 64, offset: 704)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1802, file: !38, line: 757, baseType: !262, size: 64, offset: 768)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1802, file: !38, line: 760, baseType: !262, size: 64, offset: 832)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1802, file: !38, line: 761, baseType: !262, size: 64, offset: 896)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1802, file: !38, line: 763, baseType: !262, size: 64, offset: 960)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1802, file: !38, line: 764, baseType: !2558, size: 64, offset: 1024)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2192, line: 299, baseType: !2560)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2192, line: 299, size: 64, elements: !2561)
!2561 = !{!2562}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2560, file: !2192, line: 299, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2197, line: 18, baseType: !262)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1802, file: !38, line: 773, baseType: !354, size: 32, offset: 1088)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1802, file: !38, line: 785, baseType: !354, size: 32, offset: 1120)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1802, file: !38, line: 795, baseType: !2567, size: 64, offset: 1152)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2569)
!2569 = !{!2570, !2571}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2568, file: !38, line: 727, baseType: !251, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2568, file: !38, line: 728, baseType: !103, size: 32, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1802, file: !38, line: 801, baseType: !262, size: 64, offset: 1216)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1802, file: !38, line: 804, baseType: !739, size: 64, offset: 1280)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1802, file: !38, line: 806, baseType: !103, size: 32, offset: 1344)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1802, file: !38, line: 808, baseType: !334, size: 32, offset: 1376)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1802, file: !38, line: 823, baseType: !1395, size: 320, offset: 1408)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1802, file: !38, line: 825, baseType: !226, size: 128, offset: 1728)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1802, file: !38, line: 845, baseType: !103, size: 32, offset: 1856)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1802, file: !38, line: 849, baseType: !262, size: 64, offset: 1920)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1802, file: !38, line: 850, baseType: !262, size: 64, offset: 1984)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1802, file: !38, line: 852, baseType: !262, size: 64, offset: 2048)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1802, file: !38, line: 853, baseType: !262, size: 64, offset: 2112)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1802, file: !38, line: 854, baseType: !741, size: 64, offset: 2176)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1802, file: !38, line: 855, baseType: !262, size: 64, offset: 2240)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1802, file: !38, line: 856, baseType: !262, size: 64, offset: 2304)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1802, file: !38, line: 857, baseType: !262, size: 64, offset: 2368)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1802, file: !38, line: 858, baseType: !262, size: 64, offset: 2432)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1802, file: !38, line: 865, baseType: !525, size: 32, offset: 2496)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1802, file: !38, line: 867, baseType: !334, size: 32, offset: 2528)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1802, file: !38, line: 869, baseType: !262, size: 64, offset: 2560)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1802, file: !38, line: 869, baseType: !262, size: 64, offset: 2624)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1802, file: !38, line: 869, baseType: !262, size: 64, offset: 2688)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1802, file: !38, line: 869, baseType: !262, size: 64, offset: 2752)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1802, file: !38, line: 870, baseType: !262, size: 64, offset: 2816)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1802, file: !38, line: 870, baseType: !262, size: 64, offset: 2880)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1802, file: !38, line: 870, baseType: !262, size: 64, offset: 2944)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1802, file: !38, line: 871, baseType: !262, size: 64, offset: 3008)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1802, file: !38, line: 871, baseType: !262, size: 64, offset: 3072)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1802, file: !38, line: 871, baseType: !262, size: 64, offset: 3136)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1802, file: !38, line: 871, baseType: !262, size: 64, offset: 3200)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1802, file: !38, line: 873, baseType: !2602, size: 3328, offset: 3264)
!2602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 3328, elements: !2603)
!2603 = !{!2604}
!2604 = !DISubrange(count: 52)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1802, file: !38, line: 875, baseType: !2606, size: 1280, offset: 6592)
!2606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2037, size: 1280, elements: !267)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1802, file: !38, line: 877, baseType: !2608, size: 64, offset: 7872)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1802, file: !38, line: 880, baseType: !2611, size: 1088, offset: 7936)
!2611 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2612, line: 72, baseType: !2613)
!2612 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2612, line: 23, size: 1088, elements: !2614)
!2614 = !{!2615, !2616, !2617, !2618, !2619, !2622, !2623, !2624, !2625, !2652, !2653, !2654}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2613, file: !2612, line: 28, baseType: !251, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2613, file: !2612, line: 38, baseType: !741, size: 64, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2613, file: !2612, line: 40, baseType: !262, size: 64, offset: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2613, file: !2612, line: 43, baseType: !1395, size: 320, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2613, file: !2612, line: 44, baseType: !2620, size: 64, offset: 512)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2612, line: 44, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2613, file: !2612, line: 48, baseType: !262, size: 64, offset: 576)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2613, file: !2612, line: 59, baseType: !735, size: 256, offset: 640)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2613, file: !2612, line: 60, baseType: !221, size: 64, offset: 896)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2613, file: !2612, line: 61, baseType: !2626, size: 64, offset: 960)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2628)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2629, line: 13, size: 1216, elements: !2630)
!2629 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2636, !2637, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2628, file: !2629, line: 14, baseType: !221, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2628, file: !2629, line: 15, baseType: !262, size: 64, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2628, file: !2629, line: 17, baseType: !262, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2628, file: !2629, line: 17, baseType: !262, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2628, file: !2629, line: 18, baseType: !262, size: 64, offset: 256)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2628, file: !2629, line: 18, baseType: !262, size: 64, offset: 320)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2628, file: !2629, line: 19, baseType: !2638, size: 64, offset: 384)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2628, file: !2629, line: 21, baseType: !436, size: 64, offset: 448)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2628, file: !2629, line: 23, baseType: !436, size: 64, offset: 512)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2628, file: !2629, line: 24, baseType: !436, size: 64, offset: 576)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2628, file: !2629, line: 25, baseType: !436, size: 64, offset: 640)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2628, file: !2629, line: 26, baseType: !436, size: 64, offset: 704)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2628, file: !2629, line: 27, baseType: !436, size: 64, offset: 768)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2628, file: !2629, line: 28, baseType: !436, size: 64, offset: 832)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2628, file: !2629, line: 29, baseType: !436, size: 64, offset: 896)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2628, file: !2629, line: 30, baseType: !436, size: 64, offset: 960)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2628, file: !2629, line: 31, baseType: !436, size: 64, offset: 1024)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2628, file: !2629, line: 32, baseType: !436, size: 64, offset: 1088)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2628, file: !2629, line: 33, baseType: !436, size: 64, offset: 1152)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2613, file: !2612, line: 63, baseType: !354, size: 32, offset: 1024)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2613, file: !2612, line: 69, baseType: !369, size: 16, offset: 1056)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2613, file: !2612, line: 70, baseType: !871, size: 16, offset: 1072)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1802, file: !38, line: 882, baseType: !262, size: 64, offset: 9024)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1802, file: !38, line: 885, baseType: !334, size: 32, offset: 9088)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1802, file: !38, line: 886, baseType: !2658, size: 64, offset: 9152)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1802, file: !38, line: 901, baseType: !2062, size: 64, offset: 9216)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1802, file: !38, line: 904, baseType: !1825, size: 64, offset: 9280)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1802, file: !38, line: 906, baseType: !2663, size: 64, offset: 9344)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1802, file: !38, line: 930, baseType: !354, size: 32, offset: 9408)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1802, file: !38, line: 933, baseType: !354, size: 32, offset: 9440)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1802, file: !38, line: 935, baseType: !2668, size: 64, offset: 9472)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2669)
!2669 = !{!2670}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2668, file: !68, line: 104, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1802, file: !38, line: 940, baseType: !739, size: 64, offset: 9536)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1802, file: !38, line: 942, baseType: !993, size: 256, offset: 9600)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1799, file: !38, line: 986, baseType: !2676, offset: 10240)
!2676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, elements: !1885)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1502, file: !1177, line: 882, baseType: !1798, size: 64, offset: 9792)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1502, file: !1177, line: 884, baseType: !103, size: 32, offset: 9856)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1502, file: !1177, line: 885, baseType: !103, size: 32, offset: 9888)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1502, file: !1177, line: 886, baseType: !103, size: 32, offset: 9920)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1502, file: !1177, line: 888, baseType: !103, size: 32, offset: 9952)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1502, file: !1177, line: 890, baseType: !262, size: 64, offset: 9984)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1502, file: !1177, line: 893, baseType: !7, size: 32, offset: 10048)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1502, file: !1177, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1502, file: !1177, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1502, file: !1177, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1502, file: !1177, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1502, file: !1177, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1502, file: !1177, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1502, file: !1177, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1502, file: !1177, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1502, file: !1177, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1502, file: !1177, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1502, file: !1177, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1502, file: !1177, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1502, file: !1177, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1502, file: !1177, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1502, file: !1177, line: 969, baseType: !262, size: 64, offset: 10176)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1502, file: !1177, line: 971, baseType: !2700, size: 448, offset: 10240)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2701)
!2701 = !{!2702, !2703, !2708}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2700, file: !62, line: 26, baseType: !262, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2700, file: !62, line: 27, baseType: !2704, size: 64, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!436, !2707}
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, scope: !2700, file: !62, line: 28, baseType: !2709, size: 320, offset: 128)
!2709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2700, file: !62, line: 28, size: 320, elements: !2710)
!2710 = !{!2711, !2720, !2745}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2709, file: !62, line: 37, baseType: !2712, size: 320)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2709, file: !62, line: 30, size: 320, elements: !2713)
!2713 = !{!2714, !2715, !2716, !2717, !2718, !2719}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2712, file: !62, line: 31, baseType: !291, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2712, file: !62, line: 32, baseType: !292, size: 32, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2712, file: !62, line: 33, baseType: !292, size: 32, offset: 96)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2712, file: !62, line: 34, baseType: !292, size: 32, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2712, file: !62, line: 35, baseType: !251, size: 64, offset: 192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2712, file: !62, line: 36, baseType: !291, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2709, file: !62, line: 47, baseType: !2721, size: 192)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2709, file: !62, line: 39, size: 192, elements: !2722)
!2722 = !{!2723, !2724, !2725, !2744}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2721, file: !62, line: 40, baseType: !1669, size: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2721, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, scope: !2721, file: !62, line: 42, baseType: !2726, size: 64, offset: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2721, file: !62, line: 42, size: 64, elements: !2727)
!2727 = !{!2728, !2736}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2726, file: !62, line: 43, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2731, line: 7, size: 128, elements: !2732)
!2731 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2732 = !{!2733, !2735}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2730, file: !2731, line: 8, baseType: !2734, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !434, line: 93, baseType: !637)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2730, file: !2731, line: 9, baseType: !637, size: 64, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2726, file: !62, line: 44, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2739, line: 7, size: 64, elements: !2740)
!2739 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2740 = !{!2741, !2743}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2738, file: !2739, line: 8, baseType: !2742, size: 32)
!2742 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2739, line: 5, baseType: !731)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2738, file: !2739, line: 9, baseType: !731, size: 32, offset: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2721, file: !62, line: 46, baseType: !251, size: 64, offset: 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2709, file: !62, line: 55, baseType: !2746, size: 256)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2709, file: !62, line: 49, size: 256, elements: !2747)
!2747 = !{!2748, !2751, !2752, !2753, !2754}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2746, file: !62, line: 50, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2746, file: !62, line: 51, baseType: !103, size: 32, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2746, file: !62, line: 52, baseType: !103, size: 32, offset: 96)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2746, file: !62, line: 53, baseType: !262, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2746, file: !62, line: 54, baseType: !262, size: 64, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1502, file: !1177, line: 973, baseType: !2756, size: 32, offset: 10688)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !227, line: 27, baseType: !2757)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !434, line: 28, baseType: !103)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1502, file: !1177, line: 974, baseType: !2756, size: 32, offset: 10720)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1502, file: !1177, line: 978, baseType: !262, size: 64, offset: 10752)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1502, file: !1177, line: 987, baseType: !1501, size: 64, offset: 10816)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1502, file: !1177, line: 990, baseType: !1501, size: 64, offset: 10880)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1502, file: !1177, line: 995, baseType: !226, size: 128, offset: 10944)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1502, file: !1177, line: 996, baseType: !226, size: 128, offset: 11072)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1502, file: !1177, line: 997, baseType: !1501, size: 64, offset: 11200)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1502, file: !1177, line: 1005, baseType: !226, size: 128, offset: 11264)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1502, file: !1177, line: 1006, baseType: !226, size: 128, offset: 11392)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1502, file: !1177, line: 1009, baseType: !1866, size: 64, offset: 11520)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1502, file: !1177, line: 1010, baseType: !2769, size: 512, offset: 11584)
!2769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !979, size: 512, elements: !267)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1502, file: !1177, line: 1011, baseType: !226, size: 128, offset: 12096)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1502, file: !1177, line: 1012, baseType: !226, size: 128, offset: 12224)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1502, file: !1177, line: 1014, baseType: !683, size: 64, offset: 12352)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1502, file: !1177, line: 1017, baseType: !864, size: 64, offset: 12416)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1502, file: !1177, line: 1020, baseType: !864, size: 64, offset: 12480)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1502, file: !1177, line: 1023, baseType: !221, size: 64, offset: 12544)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1502, file: !1177, line: 1025, baseType: !251, size: 64, offset: 12608)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1502, file: !1177, line: 1026, baseType: !251, size: 64, offset: 12672)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1502, file: !1177, line: 1031, baseType: !251, size: 64, offset: 12736)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1502, file: !1177, line: 1032, baseType: !2780, size: 192, offset: 12800)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1177, line: 324, size: 192, elements: !2781)
!2781 = !{!2782, !2783, !2784}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2780, file: !1177, line: 326, baseType: !251, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2780, file: !1177, line: 327, baseType: !251, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2780, file: !1177, line: 328, baseType: !693, size: 32, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1502, file: !1177, line: 1041, baseType: !262, size: 64, offset: 12992)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1502, file: !1177, line: 1042, baseType: !262, size: 64, offset: 13056)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1502, file: !1177, line: 1045, baseType: !251, size: 64, offset: 13120)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1502, file: !1177, line: 1048, baseType: !251, size: 64, offset: 13184)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1502, file: !1177, line: 1051, baseType: !262, size: 64, offset: 13248)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1502, file: !1177, line: 1052, baseType: !262, size: 64, offset: 13312)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1502, file: !1177, line: 1055, baseType: !2792, size: 640, offset: 13376)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2793, line: 132, size: 640, elements: !2794)
!2793 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2794 = !{!2795, !2801, !2802}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2792, file: !2793, line: 133, baseType: !2796, size: 576)
!2796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2797, size: 576, elements: !401)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2793, line: 117, size: 192, elements: !2798)
!2798 = !{!2799, !2800}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2797, file: !2793, line: 118, baseType: !251, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2797, file: !2793, line: 119, baseType: !1678, size: 128, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2792, file: !2793, line: 134, baseType: !7, size: 32, offset: 576)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2792, file: !2793, line: 135, baseType: !7, size: 32, offset: 608)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1502, file: !1177, line: 1058, baseType: !2804, size: 448, offset: 14016)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2793, line: 144, size: 448, elements: !2805)
!2805 = !{!2806, !2807, !2808}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2804, file: !2793, line: 145, baseType: !955, size: 128, align: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2804, file: !2793, line: 146, baseType: !735, size: 256, offset: 128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2804, file: !2793, line: 147, baseType: !7, size: 32, offset: 384)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1502, file: !1177, line: 1064, baseType: !1892, size: 64, offset: 14464)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1502, file: !1177, line: 1067, baseType: !1892, size: 64, offset: 14528)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1502, file: !1177, line: 1070, baseType: !1892, size: 64, offset: 14592)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1502, file: !1177, line: 1074, baseType: !1919, size: 64, offset: 14656)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1502, file: !1177, line: 1084, baseType: !2814, size: 128, offset: 14720)
!2814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 128, elements: !2815)
!2815 = !{!2816}
!2816 = !DISubrange(count: 16)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1502, file: !1177, line: 1086, baseType: !2818, size: 64, offset: 14848)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1177, line: 55, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1502, file: !1177, line: 1089, baseType: !2821, size: 64, offset: 14912)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2822, line: 12, size: 64, elements: !2823)
!2822 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2823 = !{!2824}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2821, file: !2822, line: 13, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2822, line: 8, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1502, file: !1177, line: 1090, baseType: !2828, size: 128, offset: 14976)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2829, line: 13, size: 128, elements: !2830)
!2829 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2830 = !{!2831}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2828, file: !2829, line: 14, baseType: !226, size: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1502, file: !1177, line: 1097, baseType: !2833, size: 64, offset: 15104)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1177, line: 50, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1502, file: !1177, line: 1100, baseType: !2836, size: 64, offset: 15168)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1177, line: 1100, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1502, file: !1177, line: 1103, baseType: !2839, size: 64, offset: 15232)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1177, line: 53, flags: DIFlagFwdDecl)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1502, file: !1177, line: 1107, baseType: !2842, size: 64, offset: 15296)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1177, line: 56, flags: DIFlagFwdDecl)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1502, file: !1177, line: 1110, baseType: !2845, size: 64, offset: 15360)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2847, line: 93, size: 8768, elements: !2848)
!2847 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2848 = !{!2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2896, !2905, !2906, !2908, !2909, !2910, !2913, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2951, !2952, !2959, !2969, !2972, !2973, !2976, !2977, !2978, !2979, !2980, !2981}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2846, file: !2847, line: 94, baseType: !1515, size: 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2846, file: !2847, line: 95, baseType: !354, size: 32, offset: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2846, file: !2847, line: 96, baseType: !103, size: 32, offset: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2846, file: !2847, line: 97, baseType: !103, size: 32, offset: 96)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2846, file: !2847, line: 98, baseType: !226, size: 128, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2846, file: !2847, line: 100, baseType: !1488, size: 192, offset: 256)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2846, file: !2847, line: 103, baseType: !1501, size: 64, offset: 448)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2846, file: !2847, line: 106, baseType: !2857, size: 192, offset: 512)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2067, line: 32, size: 192, elements: !2858)
!2858 = !{!2859, !2860}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2857, file: !2067, line: 33, baseType: !226, size: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2857, file: !2067, line: 34, baseType: !2861, size: 64, offset: 128)
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2862, line: 25, baseType: !2863)
!2862 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2862, line: 23, size: 64, elements: !2864)
!2864 = !{!2865}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2863, file: !2862, line: 24, baseType: !1749, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2846, file: !2847, line: 109, baseType: !1103, size: 64, offset: 704)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2846, file: !2847, line: 112, baseType: !103, size: 32, offset: 768)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2846, file: !2847, line: 114, baseType: !103, size: 32, offset: 800)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2846, file: !2847, line: 115, baseType: !1501, size: 64, offset: 832)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2846, file: !2847, line: 118, baseType: !103, size: 32, offset: 896)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2846, file: !2847, line: 119, baseType: !7, size: 32, offset: 928)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2846, file: !2847, line: 121, baseType: !2873, size: 64, offset: 960)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2847, line: 80, size: 448, elements: !2875)
!2875 = !{!2876, !2877, !2883}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2874, file: !2847, line: 81, baseType: !354, size: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2874, file: !2847, line: 82, baseType: !2878, size: 128, offset: 64)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2847, line: 75, size: 128, elements: !2879)
!2879 = !{!2880, !2881}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2878, file: !2847, line: 76, baseType: !1501, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2878, file: !2847, line: 77, baseType: !2882, size: 64, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2874, file: !2847, line: 83, baseType: !684, size: 256, offset: 192)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2846, file: !2847, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2846, file: !2847, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2846, file: !2847, line: 138, baseType: !7, size: 32, offset: 1056)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2846, file: !2847, line: 139, baseType: !226, size: 128, offset: 1088)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2846, file: !2847, line: 142, baseType: !1622, size: 512, offset: 1216)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2846, file: !2847, line: 143, baseType: !1630, size: 64, offset: 1728)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2846, file: !2847, line: 150, baseType: !2891, size: 256, offset: 1792)
!2891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2892, size: 256, elements: !854)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2847, line: 38, size: 128, elements: !2893)
!2893 = !{!2894, !2895}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2892, file: !2847, line: 39, baseType: !251, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2892, file: !2847, line: 40, baseType: !251, size: 64, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2846, file: !2847, line: 156, baseType: !2897, size: 192, offset: 2048)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2847, line: 66, size: 192, elements: !2898)
!2898 = !{!2899}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2897, file: !2847, line: 67, baseType: !2900, size: 192)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2847, line: 47, size: 192, elements: !2901)
!2901 = !{!2902, !2903, !2904}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2900, file: !2847, line: 48, baseType: !741, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2900, file: !2847, line: 49, baseType: !741, size: 64, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2900, file: !2847, line: 50, baseType: !741, size: 64, offset: 128)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2846, file: !2847, line: 160, baseType: !2792, size: 640, offset: 2240)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2846, file: !2847, line: 163, baseType: !2907, size: 256, offset: 2880)
!2907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1866, size: 256, elements: !267)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2846, file: !2847, line: 169, baseType: !1866, size: 64, offset: 3136)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2846, file: !2847, line: 172, baseType: !103, size: 32, offset: 3200)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2846, file: !2847, line: 174, baseType: !2911, size: 64, offset: 3264)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2847, line: 174, flags: DIFlagFwdDecl)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2846, file: !2847, line: 185, baseType: !2914, size: 64, offset: 3328)
!2914 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !521, line: 860, baseType: !2915)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !521, line: 853, size: 64, elements: !2916)
!2916 = !{!2917, !2918}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2915, file: !521, line: 858, baseType: !520, size: 32)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2915, file: !521, line: 859, baseType: !334, size: 32, offset: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2846, file: !2847, line: 186, baseType: !251, size: 64, offset: 3392)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2846, file: !2847, line: 186, baseType: !251, size: 64, offset: 3456)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2846, file: !2847, line: 186, baseType: !251, size: 64, offset: 3520)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2846, file: !2847, line: 186, baseType: !251, size: 64, offset: 3584)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2846, file: !2847, line: 187, baseType: !251, size: 64, offset: 3648)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2846, file: !2847, line: 188, baseType: !251, size: 64, offset: 3712)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2846, file: !2847, line: 189, baseType: !2780, size: 192, offset: 3776)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2846, file: !2847, line: 190, baseType: !262, size: 64, offset: 3968)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2846, file: !2847, line: 190, baseType: !262, size: 64, offset: 4032)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2846, file: !2847, line: 190, baseType: !262, size: 64, offset: 4096)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2846, file: !2847, line: 190, baseType: !262, size: 64, offset: 4160)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2846, file: !2847, line: 191, baseType: !262, size: 64, offset: 4224)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2846, file: !2847, line: 191, baseType: !262, size: 64, offset: 4288)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2846, file: !2847, line: 191, baseType: !262, size: 64, offset: 4352)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2846, file: !2847, line: 191, baseType: !262, size: 64, offset: 4416)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2846, file: !2847, line: 192, baseType: !262, size: 64, offset: 4480)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2846, file: !2847, line: 192, baseType: !262, size: 64, offset: 4544)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2846, file: !2847, line: 192, baseType: !262, size: 64, offset: 4608)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2846, file: !2847, line: 192, baseType: !262, size: 64, offset: 4672)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2846, file: !2847, line: 193, baseType: !262, size: 64, offset: 4736)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2846, file: !2847, line: 193, baseType: !262, size: 64, offset: 4800)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2846, file: !2847, line: 194, baseType: !2941, size: 448, offset: 4864)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2942, line: 12, size: 448, elements: !2943)
!2942 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2943 = !{!2944, !2945, !2946, !2947, !2948, !2949, !2950}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2941, file: !2942, line: 15, baseType: !251, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2941, file: !2942, line: 17, baseType: !251, size: 64, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2941, file: !2942, line: 19, baseType: !251, size: 64, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2941, file: !2942, line: 21, baseType: !251, size: 64, offset: 192)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2941, file: !2942, line: 29, baseType: !251, size: 64, offset: 256)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2941, file: !2942, line: 35, baseType: !251, size: 64, offset: 320)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2941, file: !2942, line: 44, baseType: !251, size: 64, offset: 384)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2846, file: !2847, line: 202, baseType: !255, size: 64, offset: 5312)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2846, file: !2847, line: 213, baseType: !2953, size: 2048, offset: 5376)
!2953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2954, size: 2048, elements: !2815)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2955, line: 43, size: 128, elements: !2956)
!2955 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2956 = !{!2957, !2958}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2954, file: !2955, line: 44, baseType: !449, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2954, file: !2955, line: 45, baseType: !449, size: 64, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2846, file: !2847, line: 216, baseType: !2960, size: 448, offset: 7424)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2847, line: 30, size: 448, elements: !2961)
!2961 = !{!2962, !2963, !2964, !2965, !2966, !2967, !2968}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2960, file: !2847, line: 31, baseType: !103, size: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2960, file: !2847, line: 32, baseType: !436, size: 64, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2960, file: !2847, line: 33, baseType: !262, size: 64, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2960, file: !2847, line: 34, baseType: !251, size: 64, offset: 192)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2960, file: !2847, line: 34, baseType: !251, size: 64, offset: 256)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2960, file: !2847, line: 35, baseType: !262, size: 64, offset: 320)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2960, file: !2847, line: 35, baseType: !262, size: 64, offset: 384)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2846, file: !2847, line: 219, baseType: !2970, size: 64, offset: 7872)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2847, line: 219, flags: DIFlagFwdDecl)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2846, file: !2847, line: 222, baseType: !7, size: 32, offset: 7936)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2846, file: !2847, line: 223, baseType: !2974, size: 64, offset: 8000)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2847, line: 223, flags: DIFlagFwdDecl)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2846, file: !2847, line: 230, baseType: !815, size: 8, offset: 8064)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2846, file: !2847, line: 231, baseType: !873, size: 16, offset: 8080)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2846, file: !2847, line: 232, baseType: !873, size: 16, offset: 8096)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2846, file: !2847, line: 234, baseType: !1798, size: 64, offset: 8128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2846, file: !2847, line: 237, baseType: !735, size: 256, offset: 8192)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2846, file: !2847, line: 243, baseType: !1395, size: 320, offset: 8448)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1502, file: !1177, line: 1111, baseType: !2983, size: 64, offset: 15424)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2847, line: 20, size: 16640, elements: !2985)
!2985 = !{!2986, !2987, !2988, !2989}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2984, file: !2847, line: 21, baseType: !334, size: 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2984, file: !2847, line: 22, baseType: !1515, size: 32, offset: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2984, file: !2847, line: 23, baseType: !1488, size: 192, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2984, file: !2847, line: 24, baseType: !2990, size: 16384, offset: 256)
!2990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2991, size: 16384, elements: !405)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2067, line: 51, size: 256, elements: !2992)
!2992 = !{!2993}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2991, file: !2067, line: 52, baseType: !2994, size: 256)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2067, line: 37, size: 256, elements: !2995)
!2995 = !{!2996, !3003, !3004, !3008}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2994, file: !2067, line: 39, baseType: !2997, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2998, line: 83, baseType: !2999)
!2998 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2998, line: 82, baseType: !3001)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{null, !103}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2994, file: !2067, line: 40, baseType: !262, size: 64, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2994, file: !2067, line: 46, baseType: !3005, size: 64, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2998, line: 86, baseType: !3006)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2998, line: 85, baseType: !1098)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2994, file: !2067, line: 48, baseType: !2861, size: 64, offset: 192)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1502, file: !1177, line: 1112, baseType: !2861, size: 64, offset: 15488)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1502, file: !1177, line: 1113, baseType: !2861, size: 64, offset: 15552)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1502, file: !1177, line: 1115, baseType: !2861, size: 64, offset: 15616)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1502, file: !1177, line: 1116, baseType: !2857, size: 192, offset: 15680)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1502, file: !1177, line: 1117, baseType: !262, size: 64, offset: 15872)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1502, file: !1177, line: 1118, baseType: !447, size: 64, offset: 15936)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1502, file: !1177, line: 1119, baseType: !7, size: 32, offset: 16000)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1502, file: !1177, line: 1121, baseType: !954, size: 64, offset: 16064)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1502, file: !1177, line: 1125, baseType: !3018, size: 64, offset: 16128)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1177, line: 43, flags: DIFlagFwdDecl)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1502, file: !1177, line: 1127, baseType: !485, size: 32, offset: 16192)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1502, file: !1177, line: 1128, baseType: !7, size: 32, offset: 16224)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1502, file: !1177, line: 1130, baseType: !3023, size: 128, offset: 16256)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3024, line: 37, size: 128, elements: !3025)
!3024 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3025 = !{!3026, !3027, !3028}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3023, file: !3024, line: 38, baseType: !103, size: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3023, file: !3024, line: 39, baseType: !354, size: 32, offset: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3023, file: !3024, line: 40, baseType: !3029, size: 64, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3024, line: 24, flags: DIFlagFwdDecl)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1502, file: !1177, line: 1131, baseType: !3032, size: 256, offset: 16384)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3033, line: 12, size: 256, elements: !3034)
!3033 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3034 = !{!3035, !3036, !3037, !3038}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3032, file: !3033, line: 13, baseType: !400, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3032, file: !3033, line: 14, baseType: !262, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3032, file: !3033, line: 15, baseType: !262, size: 64, offset: 128)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3032, file: !3033, line: 16, baseType: !815, size: 8, offset: 192)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1502, file: !1177, line: 1134, baseType: !251, size: 64, offset: 16640)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1502, file: !1177, line: 1135, baseType: !251, size: 64, offset: 16704)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1502, file: !1177, line: 1138, baseType: !334, size: 32, offset: 16768)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1502, file: !1177, line: 1141, baseType: !693, size: 32, offset: 16800)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1502, file: !1177, line: 1143, baseType: !3044, size: 64, offset: 16832)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1177, line: 735, size: 64, elements: !3045)
!3045 = !{!3046}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3044, file: !1177, line: 736, baseType: !3047, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1502, file: !1177, line: 1147, baseType: !1681, size: 128, offset: 16896)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1502, file: !1177, line: 1149, baseType: !1501, size: 64, offset: 17024)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1502, file: !1177, line: 1151, baseType: !3051, size: 64, offset: 17088)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1177, line: 1151, flags: DIFlagFwdDecl)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1502, file: !1177, line: 1188, baseType: !221, size: 64, offset: 17152)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1502, file: !1177, line: 1191, baseType: !3055, size: 64, offset: 17216)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1177, line: 44, flags: DIFlagFwdDecl)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1502, file: !1177, line: 1194, baseType: !3058, size: 64, offset: 17280)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1177, line: 45, flags: DIFlagFwdDecl)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1502, file: !1177, line: 1197, baseType: !3061, size: 64, offset: 17344)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1177, line: 61, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1502, file: !1177, line: 1199, baseType: !3064, size: 64, offset: 17408)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3066, line: 99, size: 128, elements: !3067)
!3066 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3067 = !{!3068, !3069, !3070}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3065, file: !3066, line: 100, baseType: !739, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3065, file: !3066, line: 101, baseType: !354, size: 32, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3065, file: !3066, line: 103, baseType: !313, size: 16, offset: 96)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1502, file: !1177, line: 1202, baseType: !3072, size: 64, offset: 17472)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1177, line: 48, flags: DIFlagFwdDecl)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1502, file: !1177, line: 1205, baseType: !262, size: 64, offset: 17536)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1502, file: !1177, line: 1206, baseType: !3076, size: 64, offset: 17600)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2067, line: 14, baseType: !3078)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2067, line: 12, size: 384, elements: !3079)
!3079 = !{!3080}
!3080 = !DIDerivedType(tag: DW_TAG_member, scope: !3078, file: !2067, line: 13, baseType: !3081, size: 384)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3078, file: !2067, line: 13, size: 384, elements: !3082)
!3082 = !{!3083, !3084, !3085, !3086}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3081, file: !2067, line: 13, baseType: !103, size: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3081, file: !2067, line: 13, baseType: !103, size: 32, offset: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3081, file: !2067, line: 13, baseType: !103, size: 32, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3081, file: !2067, line: 13, baseType: !3087, size: 256, offset: 128)
!3087 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3088, line: 37, size: 256, elements: !3089)
!3088 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3089 = !{!3090, !3095, !3108, !3114, !3123, !3150, !3155}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3087, file: !3088, line: 42, baseType: !3091, size: 64)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3087, file: !3088, line: 39, size: 64, elements: !3092)
!3092 = !{!3093, !3094}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3091, file: !3088, line: 40, baseType: !2757, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3091, file: !3088, line: 41, baseType: !491, size: 32, offset: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3087, file: !3088, line: 50, baseType: !3096, size: 192)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3087, file: !3088, line: 45, size: 192, elements: !3097)
!3097 = !{!3098, !3100, !3101, !3107}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3096, file: !3088, line: 46, baseType: !3099, size: 32)
!3099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !434, line: 95, baseType: !103)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3096, file: !3088, line: 47, baseType: !103, size: 32, offset: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3096, file: !3088, line: 48, baseType: !3102, size: 64, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3088, line: 11, baseType: !3103)
!3103 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3088, line: 8, size: 64, elements: !3104)
!3104 = !{!3105, !3106}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3103, file: !3088, line: 9, baseType: !103, size: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3103, file: !3088, line: 10, baseType: !221, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3096, file: !3088, line: 49, baseType: !103, size: 32, offset: 128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3087, file: !3088, line: 57, baseType: !3109, size: 128)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3087, file: !3088, line: 53, size: 128, elements: !3110)
!3110 = !{!3111, !3112, !3113}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3109, file: !3088, line: 54, baseType: !2757, size: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3109, file: !3088, line: 55, baseType: !491, size: 32, offset: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3109, file: !3088, line: 56, baseType: !3102, size: 64, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3087, file: !3088, line: 66, baseType: !3115, size: 256)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3087, file: !3088, line: 60, size: 256, elements: !3116)
!3116 = !{!3117, !3118, !3119, !3120, !3122}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3115, file: !3088, line: 61, baseType: !2757, size: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3115, file: !3088, line: 62, baseType: !491, size: 32, offset: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3115, file: !3088, line: 63, baseType: !103, size: 32, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3115, file: !3088, line: 64, baseType: !3121, size: 64, offset: 128)
!3121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !434, line: 94, baseType: !435)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3115, file: !3088, line: 65, baseType: !3121, size: 64, offset: 192)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3087, file: !3088, line: 105, baseType: !3124, size: 256)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3087, file: !3088, line: 69, size: 256, elements: !3125)
!3125 = !{!3126, !3127}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3124, file: !3088, line: 70, baseType: !221, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, scope: !3124, file: !3088, line: 79, baseType: !3128, size: 192, offset: 64)
!3128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3124, file: !3088, line: 79, size: 192, elements: !3129)
!3129 = !{!3130, !3131, !3132, !3139, !3144}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3128, file: !3088, line: 81, baseType: !103, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3128, file: !3088, line: 86, baseType: !873, size: 16)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3128, file: !3088, line: 92, baseType: !3133, size: 192)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3128, file: !3088, line: 88, size: 192, elements: !3134)
!3134 = !{!3135, !3137, !3138}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3133, file: !3088, line: 89, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 64, elements: !1665)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3133, file: !3088, line: 90, baseType: !221, size: 64, offset: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3133, file: !3088, line: 91, baseType: !221, size: 64, offset: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3128, file: !3088, line: 97, baseType: !3140, size: 96)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3128, file: !3088, line: 94, size: 96, elements: !3141)
!3141 = !{!3142, !3143}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3140, file: !3088, line: 95, baseType: !3136, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3140, file: !3088, line: 96, baseType: !293, size: 32, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3128, file: !3088, line: 103, baseType: !3145, size: 128)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3128, file: !3088, line: 99, size: 128, elements: !3146)
!3146 = !{!3147, !3148, !3149}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3145, file: !3088, line: 100, baseType: !262, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3145, file: !3088, line: 101, baseType: !293, size: 32, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3145, file: !3088, line: 102, baseType: !293, size: 32, offset: 96)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3087, file: !3088, line: 111, baseType: !3151, size: 128)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3087, file: !3088, line: 108, size: 128, elements: !3152)
!3152 = !{!3153, !3154}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3151, file: !3088, line: 109, baseType: !436, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3151, file: !3088, line: 110, baseType: !103, size: 32, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3087, file: !3088, line: 118, baseType: !3156, size: 128)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3087, file: !3088, line: 114, size: 128, elements: !3157)
!3157 = !{!3158, !3159, !3160}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3156, file: !3088, line: 115, baseType: !221, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3156, file: !3088, line: 116, baseType: !103, size: 32, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3156, file: !3088, line: 117, baseType: !7, size: 32, offset: 96)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1502, file: !1177, line: 1208, baseType: !2941, size: 448, offset: 17664)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1502, file: !1177, line: 1215, baseType: !251, size: 64, offset: 18112)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1502, file: !1177, line: 1217, baseType: !251, size: 64, offset: 18176)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1502, file: !1177, line: 1219, baseType: !251, size: 64, offset: 18240)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1502, file: !1177, line: 1223, baseType: !3166, size: 64, offset: 18304)
!3166 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3167, line: 99, baseType: !3168)
!3167 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3167, line: 99, size: 64, elements: !3169)
!3169 = !{!3170}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3168, file: !3167, line: 99, baseType: !1749, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1502, file: !1177, line: 1225, baseType: !520, size: 32, offset: 18368)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1502, file: !1177, line: 1226, baseType: !103, size: 32, offset: 18400)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1502, file: !1177, line: 1227, baseType: !103, size: 32, offset: 18432)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1502, file: !1177, line: 1231, baseType: !3175, size: 64, offset: 18496)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1177, line: 1231, flags: DIFlagFwdDecl)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1502, file: !1177, line: 1233, baseType: !226, size: 128, offset: 18560)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1502, file: !1177, line: 1240, baseType: !3179, size: 64, offset: 18688)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1177, line: 62, flags: DIFlagFwdDecl)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1502, file: !1177, line: 1242, baseType: !3182, size: 64, offset: 18752)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1177, line: 1242, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1502, file: !1177, line: 1244, baseType: !226, size: 128, offset: 18816)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1502, file: !1177, line: 1245, baseType: !3186, size: 64, offset: 18944)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1177, line: 51, flags: DIFlagFwdDecl)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1502, file: !1177, line: 1246, baseType: !735, size: 256, offset: 19008)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1502, file: !1177, line: 1247, baseType: !7, size: 32, offset: 19264)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1502, file: !1177, line: 1250, baseType: !3191, size: 64, offset: 19328)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1177, line: 57, flags: DIFlagFwdDecl)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1502, file: !1177, line: 1251, baseType: !735, size: 256, offset: 19392)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1502, file: !1177, line: 1252, baseType: !226, size: 128, offset: 19648)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1502, file: !1177, line: 1259, baseType: !2447, size: 64, offset: 19776)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1502, file: !1177, line: 1260, baseType: !873, size: 16, offset: 19840)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1502, file: !1177, line: 1261, baseType: !873, size: 16, offset: 19856)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1502, file: !1177, line: 1314, baseType: !3199, size: 64, offset: 19904)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3201, line: 62, size: 256, align: 256, elements: !3202)
!3201 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3202 = !{!3203, !3204, !3205, !3206, !3207, !3208, !3209}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3200, file: !3201, line: 75, baseType: !293, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3200, file: !3201, line: 90, baseType: !293, size: 32, offset: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3200, file: !3201, line: 112, baseType: !253, size: 64, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3200, file: !3201, line: 132, baseType: !293, size: 32, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3200, file: !3201, line: 140, baseType: !293, size: 32, offset: 160)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3200, file: !3201, line: 149, baseType: !293, size: 32, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3200, file: !3201, line: 154, baseType: !3210, offset: 224)
!3210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, elements: !1885)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1502, file: !1177, line: 1315, baseType: !292, size: 32, offset: 19968)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1502, file: !1177, line: 1316, baseType: !292, size: 32, offset: 20000)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1502, file: !1177, line: 1321, baseType: !262, size: 64, offset: 20032)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1502, file: !1177, line: 1325, baseType: !103, size: 32, offset: 20096)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1502, file: !1177, line: 1326, baseType: !103, size: 32, offset: 20128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1502, file: !1177, line: 1327, baseType: !103, size: 32, offset: 20160)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1502, file: !1177, line: 1328, baseType: !103, size: 32, offset: 20192)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1502, file: !1177, line: 1329, baseType: !955, size: 128, align: 64, offset: 20224)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1502, file: !1177, line: 1332, baseType: !3220, size: 128, offset: 20352)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3221, line: 51, size: 128, elements: !3222)
!3221 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3222 = !{!3223, !3228, !3229}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3220, file: !3221, line: 60, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3225, line: 7, size: 64, elements: !3226)
!3225 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3226 = !{!3227}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3224, file: !3225, line: 12, baseType: !1746, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3220, file: !3221, line: 63, baseType: !815, size: 8, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3220, file: !3221, line: 70, baseType: !815, size: 8, offset: 72)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1502, file: !1177, line: 1335, baseType: !2499, size: 64, offset: 20480)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1502, file: !1177, line: 1337, baseType: !3232, size: 128, offset: 20544)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3221, line: 39, size: 128, elements: !3233)
!3233 = !{!3234, !3235, !3236}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3232, file: !3221, line: 40, baseType: !2286, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3232, file: !3221, line: 42, baseType: !293, size: 32, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3232, file: !3221, line: 43, baseType: !293, size: 32, offset: 96)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1502, file: !1177, line: 1340, baseType: !3238, size: 64, offset: 20672)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1177, line: 69, flags: DIFlagFwdDecl)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1502, file: !1177, line: 1351, baseType: !103, size: 32, offset: 20736)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1502, file: !1177, line: 1352, baseType: !103, size: 32, offset: 20768)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1502, file: !1177, line: 1354, baseType: !262, size: 64, offset: 20800)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1502, file: !1177, line: 1364, baseType: !251, size: 64, offset: 20864)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1502, file: !1177, line: 1365, baseType: !251, size: 64, offset: 20928)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1502, file: !1177, line: 1412, baseType: !262, size: 64, offset: 20992)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1502, file: !1177, line: 1453, baseType: !3247, size: 64, offset: 21056)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1177, line: 1453, flags: DIFlagFwdDecl)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1502, file: !1177, line: 1457, baseType: !3250, size: 64, offset: 21120)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3252)
!3252 = !{!3253, !3254, !3273, !3276, !3277, !3310, !3320}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3251, file: !68, line: 62, baseType: !67, size: 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, scope: !3251, file: !68, line: 64, baseType: !3255, size: 192, offset: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3251, file: !68, line: 64, size: 192, elements: !3256)
!3256 = !{!3257, !3268}
!3257 = !DIDerivedType(tag: DW_TAG_member, scope: !3255, file: !68, line: 65, baseType: !3258, size: 192)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3255, file: !68, line: 65, size: 192, elements: !3259)
!3259 = !{!3260, !3267}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3258, file: !68, line: 66, baseType: !3261, size: 128)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3262, line: 50, size: 128, elements: !3263)
!3262 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3263 = !{!3264, !3265, !3266}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3261, file: !3262, line: 52, baseType: !262, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3261, file: !3262, line: 54, baseType: !7, size: 32, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3261, file: !3262, line: 55, baseType: !7, size: 32, offset: 96)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3258, file: !68, line: 67, baseType: !262, size: 64, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, scope: !3255, file: !68, line: 70, baseType: !3269, size: 192)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3255, file: !68, line: 70, size: 192, elements: !3270)
!3270 = !{!3271, !3272}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3269, file: !68, line: 71, baseType: !955, size: 128, align: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3269, file: !68, line: 72, baseType: !262, size: 64, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3251, file: !68, line: 76, baseType: !3274, size: 64, offset: 256)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3251, file: !68, line: 77, baseType: !262, size: 64, offset: 320)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3251, file: !68, line: 79, baseType: !3278, size: 64, offset: 384)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3262, line: 25, size: 256, elements: !3280)
!3280 = !{!3281, !3287, !3291}
!3281 = !DIDerivedType(tag: DW_TAG_member, scope: !3279, file: !3262, line: 26, baseType: !3282, size: 128)
!3282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3279, file: !3262, line: 26, size: 128, elements: !3283)
!3283 = !{!3284, !3286}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3282, file: !3262, line: 27, baseType: !3285, size: 128)
!3285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 128, elements: !2815)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3282, file: !3262, line: 28, baseType: !3285, size: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3279, file: !3262, line: 31, baseType: !3288, size: 64, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3290)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3262, line: 23, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, scope: !3279, file: !3262, line: 33, baseType: !3292, size: 64, offset: 192)
!3292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3279, file: !3262, line: 33, size: 64, elements: !3293)
!3293 = !{!3294, !3300, !3305}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3292, file: !3262, line: 38, baseType: !3295, size: 64)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3292, file: !3262, line: 34, size: 64, elements: !3296)
!3296 = !{!3297, !3298, !3299}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3295, file: !3262, line: 35, baseType: !731, size: 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3295, file: !3262, line: 36, baseType: !362, size: 8, offset: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3295, file: !3262, line: 37, baseType: !362, size: 8, offset: 40)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3292, file: !3262, line: 42, baseType: !3301, size: 16)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3292, file: !3262, line: 39, size: 16, elements: !3302)
!3302 = !{!3303, !3304}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3301, file: !3262, line: 40, baseType: !362, size: 8)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3301, file: !3262, line: 41, baseType: !362, size: 8, offset: 8)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3292, file: !3262, line: 46, baseType: !3306, size: 16)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3292, file: !3262, line: 43, size: 16, elements: !3307)
!3307 = !{!3308, !3309}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3306, file: !3262, line: 44, baseType: !362, size: 8)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3306, file: !3262, line: 45, baseType: !362, size: 8, offset: 8)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3251, file: !68, line: 81, baseType: !3311, size: 64, offset: 448)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3313)
!3313 = !{!3314, !3315, !3316, !3317, !3318, !3319}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3312, file: !68, line: 86, baseType: !3274, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3312, file: !68, line: 87, baseType: !262, size: 64, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3312, file: !68, line: 88, baseType: !262, size: 64, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3312, file: !68, line: 89, baseType: !262, size: 64, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3312, file: !68, line: 90, baseType: !815, size: 8, offset: 256)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3312, file: !68, line: 92, baseType: !3311, size: 64, offset: 320)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3251, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1502, file: !1177, line: 1463, baseType: !3322, offset: 21184)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1177, line: 739, elements: !1022)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1502, file: !1177, line: 1470, baseType: !955, size: 128, align: 64, offset: 21184)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1502, file: !1177, line: 1471, baseType: !1515, size: 32, offset: 21312)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1502, file: !1177, line: 1472, baseType: !103, size: 32, offset: 21344)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1502, file: !1177, line: 1474, baseType: !1501, size: 64, offset: 21376)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1502, file: !1177, line: 1475, baseType: !975, size: 320, offset: 21440)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1502, file: !1177, line: 1478, baseType: !3329, size: 64, offset: 21760)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2139, line: 49, size: 512, elements: !3331)
!3331 = !{!3332, !3333, !3334, !3335, !3336, !3338, !3339, !3340, !3341}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3330, file: !2139, line: 50, baseType: !3329, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3330, file: !2139, line: 51, baseType: !221, size: 64, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3330, file: !2139, line: 52, baseType: !262, size: 64, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3330, file: !2139, line: 53, baseType: !262, size: 64, offset: 192)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3330, file: !2139, line: 54, baseType: !3337, size: 64, offset: 256)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3330, file: !2139, line: 56, baseType: !7, size: 32, offset: 320)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3330, file: !2139, line: 58, baseType: !7, size: 32, offset: 352)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3330, file: !2139, line: 59, baseType: !250, size: 64, offset: 384)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3330, file: !2139, line: 60, baseType: !2638, size: 64, offset: 448)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1502, file: !1177, line: 1482, baseType: !1515, size: 32, offset: 21824)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1502, file: !1177, line: 1489, baseType: !221, size: 64, offset: 21888)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1502, file: !1177, line: 1504, baseType: !221, size: 64, offset: 21952)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1502, file: !1177, line: 1505, baseType: !253, size: 64, offset: 22016)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1502, file: !1177, line: 1506, baseType: !251, size: 64, offset: 22080)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1502, file: !1177, line: 1507, baseType: !253, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1502, file: !1177, line: 1508, baseType: !253, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1502, file: !1177, line: 1509, baseType: !253, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1502, file: !1177, line: 1510, baseType: !955, size: 128, align: 64, offset: 22208)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1502, file: !1177, line: 1511, baseType: !103, size: 32, offset: 22336)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1502, file: !1177, line: 1515, baseType: !3353, size: 64, offset: 22400)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1529, line: 56, size: 64, elements: !3354)
!3354 = !{!3355}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3353, file: !1529, line: 57, baseType: !1532, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1502, file: !1177, line: 1518, baseType: !3353, size: 64, offset: 22464)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1502, file: !1177, line: 1528, baseType: !955, size: 128, align: 64, offset: 22528)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1502, file: !1177, line: 1552, baseType: !3359, size: 35328, offset: 23040)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3360, line: 430, size: 35328, elements: !3361)
!3360 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3361 = !{!3362, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3391, !3392, !3393, !3394, !3395, !3396, !3399, !3400, !3401, !3402}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3359, file: !3360, line: 432, baseType: !3363, size: 192)
!3363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3364, size: 192, elements: !401)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3365, line: 16, size: 64, elements: !3366)
!3365 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3366 = !{!3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3364, file: !3365, line: 17, baseType: !369, size: 16)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3364, file: !3365, line: 18, baseType: !369, size: 16, offset: 16)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3364, file: !3365, line: 19, baseType: !369, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3364, file: !3365, line: 19, baseType: !369, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3364, file: !3365, line: 19, baseType: !369, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3364, file: !3365, line: 19, baseType: !369, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3364, file: !3365, line: 19, baseType: !369, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3364, file: !3365, line: 20, baseType: !369, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3364, file: !3365, line: 20, baseType: !369, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3364, file: !3365, line: 20, baseType: !369, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3364, file: !3365, line: 20, baseType: !369, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3364, file: !3365, line: 20, baseType: !369, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3364, file: !3365, line: 20, baseType: !369, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3359, file: !3360, line: 436, baseType: !262, size: 64, offset: 192)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3359, file: !3360, line: 440, baseType: !313, size: 16, offset: 256)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3359, file: !3360, line: 441, baseType: !313, size: 16, offset: 272)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3359, file: !3360, line: 442, baseType: !313, size: 16, offset: 288)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3359, file: !3360, line: 443, baseType: !313, size: 16, offset: 304)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3359, file: !3360, line: 447, baseType: !262, size: 64, offset: 320)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3359, file: !3360, line: 448, baseType: !262, size: 64, offset: 384)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3359, file: !3360, line: 459, baseType: !3388, size: 256, offset: 448)
!3388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3389, size: 256, elements: !267)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3360, line: 428, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3359, file: !3360, line: 461, baseType: !262, size: 64, offset: 704)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3359, file: !3360, line: 463, baseType: !262, size: 64, offset: 768)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3359, file: !3360, line: 465, baseType: !262, size: 64, offset: 832)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3359, file: !3360, line: 466, baseType: !262, size: 64, offset: 896)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3359, file: !3360, line: 467, baseType: !262, size: 64, offset: 960)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3359, file: !3360, line: 473, baseType: !3397, size: 64, offset: 1024)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3360, line: 10, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3359, file: !3360, line: 480, baseType: !262, size: 64, offset: 1088)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3359, file: !3360, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3359, file: !3360, line: 491, baseType: !292, size: 32, offset: 1184)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3359, file: !3360, line: 501, baseType: !3403, size: 33792, offset: 1536)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3404, line: 448, size: 33792, elements: !3405)
!3404 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3405 = !{!3406, !3407, !3408, !3570, !3571, !3577, !3578}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3403, file: !3404, line: 461, baseType: !7, size: 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3403, file: !3404, line: 468, baseType: !262, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3403, file: !3404, line: 476, baseType: !3409, size: 64, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3404, line: 356, size: 33280, align: 512, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3410, file: !3404, line: 358, baseType: !7, size: 32)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3410, file: !3404, line: 361, baseType: !7, size: 32, offset: 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3410, file: !3404, line: 364, baseType: !251, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3410, file: !3404, line: 367, baseType: !251, size: 64, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3410, file: !3404, line: 370, baseType: !251, size: 64, offset: 192)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3410, file: !3404, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3410, file: !3404, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3410, file: !3404, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3410, file: !3404, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3410, file: !3404, line: 397, baseType: !3422, size: 32768, offset: 512)
!3422 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3404, line: 348, size: 32768, elements: !3423)
!3423 = !{!3424, !3439, !3476, !3553, !3566}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3422, file: !3404, line: 349, baseType: !3425, size: 896)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3404, line: 12, size: 896, elements: !3426)
!3426 = !{!3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3438}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3425, file: !3404, line: 13, baseType: !292, size: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3425, file: !3404, line: 14, baseType: !292, size: 32, offset: 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3425, file: !3404, line: 15, baseType: !292, size: 32, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3425, file: !3404, line: 16, baseType: !292, size: 32, offset: 96)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3425, file: !3404, line: 17, baseType: !292, size: 32, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3425, file: !3404, line: 18, baseType: !292, size: 32, offset: 160)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3425, file: !3404, line: 19, baseType: !292, size: 32, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3425, file: !3404, line: 22, baseType: !3435, size: 640, offset: 224)
!3435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 640, elements: !3436)
!3436 = !{!3437}
!3437 = !DISubrange(count: 20)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3425, file: !3404, line: 25, baseType: !292, size: 32, offset: 864)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3422, file: !3404, line: 350, baseType: !3440, size: 4096, align: 128)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3404, line: 34, size: 4096, align: 128, elements: !3441)
!3441 = !{!3442, !3443, !3444, !3445, !3446, !3461, !3462, !3463, !3465, !3467, !3471}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3440, file: !3404, line: 35, baseType: !369, size: 16)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3440, file: !3404, line: 36, baseType: !369, size: 16, offset: 16)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3440, file: !3404, line: 37, baseType: !369, size: 16, offset: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3440, file: !3404, line: 38, baseType: !369, size: 16, offset: 48)
!3446 = !DIDerivedType(tag: DW_TAG_member, scope: !3440, file: !3404, line: 39, baseType: !3447, size: 128, offset: 64)
!3447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3440, file: !3404, line: 39, size: 128, elements: !3448)
!3448 = !{!3449, !3454}
!3449 = !DIDerivedType(tag: DW_TAG_member, scope: !3447, file: !3404, line: 40, baseType: !3450, size: 128)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3447, file: !3404, line: 40, size: 128, elements: !3451)
!3451 = !{!3452, !3453}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3450, file: !3404, line: 41, baseType: !251, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3450, file: !3404, line: 42, baseType: !251, size: 64, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, scope: !3447, file: !3404, line: 44, baseType: !3455, size: 128)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3447, file: !3404, line: 44, size: 128, elements: !3456)
!3456 = !{!3457, !3458, !3459, !3460}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3455, file: !3404, line: 45, baseType: !292, size: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3455, file: !3404, line: 46, baseType: !292, size: 32, offset: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3455, file: !3404, line: 47, baseType: !292, size: 32, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3455, file: !3404, line: 48, baseType: !292, size: 32, offset: 96)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3440, file: !3404, line: 51, baseType: !292, size: 32, offset: 192)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3440, file: !3404, line: 52, baseType: !292, size: 32, offset: 224)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3440, file: !3404, line: 55, baseType: !3464, size: 1024, offset: 256)
!3464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 1024, elements: !556)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3440, file: !3404, line: 58, baseType: !3466, size: 2048, offset: 1280)
!3466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 2048, elements: !405)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3440, file: !3404, line: 60, baseType: !3468, size: 384, offset: 3328)
!3468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 384, elements: !3469)
!3469 = !{!3470}
!3470 = !DISubrange(count: 12)
!3471 = !DIDerivedType(tag: DW_TAG_member, scope: !3440, file: !3404, line: 62, baseType: !3472, size: 384, offset: 3712)
!3472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3440, file: !3404, line: 62, size: 384, elements: !3473)
!3473 = !{!3474, !3475}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3472, file: !3404, line: 63, baseType: !3468, size: 384)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3472, file: !3404, line: 64, baseType: !3468, size: 384)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3422, file: !3404, line: 351, baseType: !3477, size: 1088)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3404, line: 79, size: 1088, elements: !3478)
!3478 = !{!3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3552}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3477, file: !3404, line: 80, baseType: !292, size: 32)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3477, file: !3404, line: 81, baseType: !292, size: 32, offset: 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3477, file: !3404, line: 82, baseType: !292, size: 32, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3477, file: !3404, line: 83, baseType: !292, size: 32, offset: 96)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3477, file: !3404, line: 84, baseType: !292, size: 32, offset: 128)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3477, file: !3404, line: 85, baseType: !292, size: 32, offset: 160)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3477, file: !3404, line: 86, baseType: !292, size: 32, offset: 192)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3477, file: !3404, line: 88, baseType: !3435, size: 640, offset: 224)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3477, file: !3404, line: 89, baseType: !362, size: 8, offset: 864)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3477, file: !3404, line: 90, baseType: !362, size: 8, offset: 872)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3477, file: !3404, line: 91, baseType: !362, size: 8, offset: 880)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3477, file: !3404, line: 92, baseType: !362, size: 8, offset: 888)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3477, file: !3404, line: 93, baseType: !362, size: 8, offset: 896)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3477, file: !3404, line: 94, baseType: !362, size: 8, offset: 904)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3477, file: !3404, line: 95, baseType: !3494, size: 64, offset: 960)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3496, line: 11, size: 128, elements: !3497)
!3496 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3497 = !{!3498, !3499}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3495, file: !3496, line: 12, baseType: !436, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3495, file: !3496, line: 13, baseType: !3500, size: 64, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3502, line: 103, size: 1344, elements: !3503)
!3502 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3503 = !{!3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3532, !3533, !3534}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3501, file: !3502, line: 109, baseType: !262, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3501, file: !3502, line: 110, baseType: !262, size: 64, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3501, file: !3502, line: 111, baseType: !262, size: 64, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3501, file: !3502, line: 112, baseType: !262, size: 64, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3501, file: !3502, line: 113, baseType: !262, size: 64, offset: 256)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3501, file: !3502, line: 114, baseType: !262, size: 64, offset: 320)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3501, file: !3502, line: 117, baseType: !262, size: 64, offset: 384)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3501, file: !3502, line: 118, baseType: !262, size: 64, offset: 448)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3501, file: !3502, line: 119, baseType: !262, size: 64, offset: 512)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3501, file: !3502, line: 120, baseType: !262, size: 64, offset: 576)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3501, file: !3502, line: 121, baseType: !262, size: 64, offset: 640)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3501, file: !3502, line: 122, baseType: !262, size: 64, offset: 704)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3501, file: !3502, line: 123, baseType: !262, size: 64, offset: 768)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3501, file: !3502, line: 124, baseType: !262, size: 64, offset: 832)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3501, file: !3502, line: 125, baseType: !262, size: 64, offset: 896)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3501, file: !3502, line: 139, baseType: !262, size: 64, offset: 960)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3501, file: !3502, line: 142, baseType: !262, size: 64, offset: 1024)
!3521 = !DIDerivedType(tag: DW_TAG_member, scope: !3501, file: !3502, line: 144, baseType: !3522, size: 64, offset: 1088)
!3522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3501, file: !3502, line: 144, size: 64, elements: !3523)
!3523 = !{!3524, !3525, !3526}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3522, file: !3502, line: 146, baseType: !369, size: 16)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3522, file: !3502, line: 148, baseType: !251, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3522, file: !3502, line: 150, baseType: !3527, size: 64)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3502, line: 59, size: 64, elements: !3528)
!3528 = !{!3529, !3530, !3531}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3527, file: !3502, line: 61, baseType: !251, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3527, file: !3502, line: 63, baseType: !251, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3527, file: !3502, line: 65, baseType: !251, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3501, file: !3502, line: 153, baseType: !262, size: 64, offset: 1152)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3501, file: !3502, line: 154, baseType: !262, size: 64, offset: 1216)
!3534 = !DIDerivedType(tag: DW_TAG_member, scope: !3501, file: !3502, line: 156, baseType: !3535, size: 64, offset: 1280)
!3535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3501, file: !3502, line: 156, size: 64, elements: !3536)
!3536 = !{!3537, !3538, !3539}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3535, file: !3502, line: 158, baseType: !369, size: 16)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3535, file: !3502, line: 160, baseType: !251, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3535, file: !3502, line: 162, baseType: !3540, size: 64)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3502, line: 69, size: 64, elements: !3541)
!3541 = !{!3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3540, file: !3502, line: 71, baseType: !251, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3540, file: !3502, line: 73, baseType: !251, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3540, file: !3502, line: 75, baseType: !251, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3540, file: !3502, line: 77, baseType: !251, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3540, file: !3502, line: 80, baseType: !251, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3540, file: !3502, line: 83, baseType: !251, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3540, file: !3502, line: 86, baseType: !251, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3540, file: !3502, line: 88, baseType: !251, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3540, file: !3502, line: 93, baseType: !251, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3540, file: !3502, line: 100, baseType: !251, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3477, file: !3404, line: 96, baseType: !292, size: 32, offset: 1024)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3422, file: !3404, line: 352, baseType: !3554, size: 4608, align: 512)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3404, line: 333, size: 4608, align: 512, elements: !3555)
!3555 = !{!3556, !3557, !3564}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3554, file: !3404, line: 334, baseType: !3440, size: 4096, align: 128)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3554, file: !3404, line: 335, baseType: !3558, size: 512, offset: 4096)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3404, line: 312, size: 512, elements: !3559)
!3559 = !{!3560, !3561, !3562}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3558, file: !3404, line: 313, baseType: !251, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3558, file: !3404, line: 314, baseType: !251, size: 64, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3558, file: !3404, line: 315, baseType: !3563, size: 384, offset: 128)
!3563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 384, elements: !1968)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3554, file: !3404, line: 336, baseType: !3565, offset: 4608)
!3565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, elements: !1885)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3422, file: !3404, line: 353, baseType: !3567, size: 32768)
!3567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 32768, elements: !3568)
!3568 = !{!3569}
!3569 = !DISubrange(count: 4096)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3403, file: !3404, line: 484, baseType: !3409, size: 64, offset: 192)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3403, file: !3404, line: 491, baseType: !3572, size: 128, offset: 256)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3404, line: 404, size: 128, elements: !3573)
!3573 = !{!3574, !3575, !3576}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3572, file: !3404, line: 424, baseType: !251, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3572, file: !3404, line: 432, baseType: !7, size: 32, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3572, file: !3404, line: 440, baseType: !7, size: 32, offset: 96)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3403, file: !3404, line: 498, baseType: !3572, size: 128, offset: 384)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3403, file: !3404, line: 508, baseType: !3410, size: 33280, align: 512, offset: 512)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1478, file: !1479, line: 16, baseType: !1488, size: 192, offset: 512)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1478, file: !1479, line: 17, baseType: !354, size: 32, offset: 704)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !626, file: !14, line: 1240, baseType: !221, size: 64, offset: 6912)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !626, file: !14, line: 1243, baseType: !292, size: 32, offset: 6976)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !626, file: !14, line: 1245, baseType: !1235, size: 64, offset: 7040)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !626, file: !14, line: 1246, baseType: !1235, size: 64, offset: 7104)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !626, file: !14, line: 1248, baseType: !293, size: 32, offset: 7168)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !626, file: !14, line: 1249, baseType: !3587, size: 64, offset: 7232)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !626, file: !14, line: 1252, baseType: !3590, size: 256, offset: 7296)
!3590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 256, elements: !556)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !626, file: !14, line: 1253, baseType: !3592, size: 128, offset: 7552)
!3592 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3593, line: 21, baseType: !3594)
!3593 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3593, line: 19, size: 128, elements: !3595)
!3595 = !{!3596}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3594, file: !3593, line: 20, baseType: !3597, size: 128)
!3597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 128, elements: !2815)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !626, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !626, file: !14, line: 1261, baseType: !735, size: 256, offset: 7744)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !626, file: !14, line: 1267, baseType: !258, size: 64, offset: 8000)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !626, file: !14, line: 1269, baseType: !572, size: 64, offset: 8064)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !626, file: !14, line: 1271, baseType: !3603, size: 448, offset: 8128)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1244, line: 63, size: 448, elements: !3604)
!3604 = !{!3605, !3610, !3611, !3612, !3613, !3614, !3615}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3603, file: !1244, line: 64, baseType: !3606, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!262, !3609, !1242}
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3603, file: !1244, line: 66, baseType: !3606, size: 64, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3603, file: !1244, line: 69, baseType: !436, size: 64, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3603, file: !1244, line: 70, baseType: !103, size: 32, offset: 192)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3603, file: !1244, line: 71, baseType: !7, size: 32, offset: 224)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3603, file: !1244, line: 74, baseType: !226, size: 128, offset: 256)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3603, file: !1244, line: 85, baseType: !3616, size: 64, offset: 384)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !626, file: !14, line: 1274, baseType: !739, size: 64, offset: 8576)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !626, file: !14, line: 1280, baseType: !739, size: 64, offset: 8640)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !626, file: !14, line: 1283, baseType: !103, size: 32, offset: 8704)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !626, file: !14, line: 1286, baseType: !2549, size: 32, offset: 8736)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !626, file: !14, line: 1289, baseType: !1055, size: 64, offset: 8768)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !626, file: !14, line: 1290, baseType: !1103, size: 64, offset: 8832)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !626, file: !14, line: 1297, baseType: !2062, size: 64, offset: 8896)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !626, file: !14, line: 1304, baseType: !3625, size: 64, offset: 8960)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3626, line: 49, size: 64, elements: !3627)
!3626 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3627 = !{!3628}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3625, file: !3626, line: 50, baseType: !3629, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3626, line: 41, size: 512, align: 512, elements: !3631)
!3631 = !{!3632, !3633, !3638}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3630, file: !3626, line: 43, baseType: !334, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3630, file: !3626, line: 45, baseType: !3634, size: 192, offset: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3626, line: 29, size: 192, elements: !3635)
!3635 = !{!3636, !3637}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3634, file: !3626, line: 30, baseType: !226, size: 128)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3634, file: !3626, line: 32, baseType: !436, size: 64, offset: 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3630, file: !3626, line: 46, baseType: !436, size: 64, offset: 256)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !626, file: !14, line: 1305, baseType: !3625, size: 64, offset: 9024)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !626, file: !14, line: 1306, baseType: !955, size: 128, align: 64, offset: 9088)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !626, file: !14, line: 1307, baseType: !993, size: 256, offset: 9216)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !626, file: !14, line: 1309, baseType: !735, size: 256, offset: 9472)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !626, file: !14, line: 1314, baseType: !103, size: 32, offset: 9728)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !626, file: !14, line: 1317, baseType: !334, size: 32, align: 512, offset: 10240)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !626, file: !14, line: 1318, baseType: !226, size: 128, offset: 10304)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !626, file: !14, line: 1320, baseType: !334, size: 32, offset: 10432)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !626, file: !14, line: 1321, baseType: !226, size: 128, offset: 10496)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !620, file: !621, line: 73, baseType: !103, size: 32, offset: 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !620, file: !621, line: 74, baseType: !3650, size: 64, offset: 192)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1909, line: 42, flags: DIFlagFwdDecl)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !574, file: !516, line: 141, baseType: !3654, size: 64, offset: 704)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!103, !1305, !815}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !574, file: !516, line: 142, baseType: !3658, size: 64, offset: 768)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!514, !514, !3661}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !515, file: !516, line: 96, baseType: !625, size: 64, offset: 832)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !515, file: !516, line: 97, baseType: !262, size: 64, offset: 896)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !515, file: !516, line: 98, baseType: !221, size: 64, offset: 960)
!3666 = !DIDerivedType(tag: DW_TAG_member, scope: !515, file: !516, line: 100, baseType: !3667, size: 128, offset: 1024)
!3667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !515, file: !516, line: 100, size: 128, elements: !3668)
!3668 = !{!3669, !3670}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3667, file: !516, line: 101, baseType: !226, size: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3667, file: !516, line: 102, baseType: !3671, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !515, file: !516, line: 104, baseType: !226, size: 128, offset: 1152)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !515, file: !516, line: 105, baseType: !226, size: 128, offset: 1280)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !515, file: !516, line: 113, baseType: !3675, size: 128, offset: 1408)
!3675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !515, file: !516, line: 109, size: 128, elements: !3676)
!3676 = !{!3677, !3678, !3679}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3675, file: !516, line: 110, baseType: !979, size: 128)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3675, file: !516, line: 111, baseType: !530, size: 128)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3675, file: !516, line: 112, baseType: !955, size: 128, align: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !508, file: !14, line: 1968, baseType: !3681, size: 64, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!258, !514, !479, !3684}
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3686, line: 10, size: 128, elements: !3687)
!3686 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3687 = !{!3688, !3689}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3685, file: !3686, line: 11, baseType: !778, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3685, file: !3686, line: 12, baseType: !221, size: 64, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !508, file: !14, line: 1969, baseType: !3691, size: 64, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!103, !3650, !479, !103}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !508, file: !14, line: 1970, baseType: !3695, size: 64, offset: 192)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!502, !479, !103, !815}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !508, file: !14, line: 1972, baseType: !3699, size: 64, offset: 256)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!103, !514, !400, !103}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !508, file: !14, line: 1974, baseType: !3703, size: 64, offset: 320)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!103, !3650, !479, !514, !442, !815}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !508, file: !14, line: 1976, baseType: !3707, size: 64, offset: 384)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!103, !514, !479, !514}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !508, file: !14, line: 1977, baseType: !3711, size: 64, offset: 448)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!103, !479, !514}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !508, file: !14, line: 1978, baseType: !3715, size: 64, offset: 512)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!103, !3650, !479, !514, !258}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !508, file: !14, line: 1980, baseType: !3719, size: 64, offset: 576)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!103, !3650, !479, !514, !442}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !508, file: !14, line: 1982, baseType: !3711, size: 64, offset: 640)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !508, file: !14, line: 1983, baseType: !3724, size: 64, offset: 704)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!103, !3650, !479, !514, !442, !630}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !508, file: !14, line: 1985, baseType: !3728, size: 64, offset: 768)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!103, !3650, !479, !514, !479, !514, !7}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !508, file: !14, line: 1987, baseType: !3732, size: 64, offset: 832)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!103, !3650, !514, !3735}
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3737)
!3737 = !{!3738, !3739, !3740, !3750, !3759, !3760, !3765, !3766, !3767}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3736, file: !14, line: 227, baseType: !7, size: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3736, file: !14, line: 228, baseType: !442, size: 16, offset: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, scope: !3736, file: !14, line: 241, baseType: !3741, size: 32, offset: 64)
!3741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3736, file: !14, line: 241, size: 32, elements: !3742)
!3742 = !{!3743, !3744}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3741, file: !14, line: 242, baseType: !485, size: 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3741, file: !14, line: 243, baseType: !3745, size: 32)
!3745 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3746, line: 16, baseType: !3747)
!3746 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3746, line: 14, size: 32, elements: !3748)
!3748 = !{!3749}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3747, file: !3746, line: 15, baseType: !490, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, scope: !3736, file: !14, line: 245, baseType: !3751, size: 32, offset: 96)
!3751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3736, file: !14, line: 245, size: 32, elements: !3752)
!3752 = !{!3753, !3754}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3751, file: !14, line: 246, baseType: !494, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3751, file: !14, line: 247, baseType: !3755, size: 32)
!3755 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3746, line: 20, baseType: !3756)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3746, line: 18, size: 32, elements: !3757)
!3757 = !{!3758}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3756, file: !3746, line: 19, baseType: !498, size: 32)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3736, file: !14, line: 249, baseType: !635, size: 64, offset: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3736, file: !14, line: 250, baseType: !3761, size: 128, offset: 192)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1236, line: 13, size: 128, elements: !3762)
!3762 = !{!3763, !3764}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3761, file: !1236, line: 14, baseType: !1235, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3761, file: !1236, line: 15, baseType: !436, size: 64, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3736, file: !14, line: 251, baseType: !3761, size: 128, offset: 320)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3736, file: !14, line: 252, baseType: !3761, size: 128, offset: 448)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3736, file: !14, line: 259, baseType: !1825, size: 64, offset: 576)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !508, file: !14, line: 1988, baseType: !3769, size: 64, offset: 896)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!103, !3650, !1305, !3772, !292, !7}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3774, line: 22, size: 1280, elements: !3775)
!3774 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3775 = !{!3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3773, file: !3774, line: 23, baseType: !292, size: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3773, file: !3774, line: 24, baseType: !442, size: 16, offset: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3773, file: !3774, line: 25, baseType: !7, size: 32, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3773, file: !3774, line: 26, baseType: !1947, size: 32, offset: 96)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3773, file: !3774, line: 27, baseType: !251, size: 64, offset: 128)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3773, file: !3774, line: 28, baseType: !251, size: 64, offset: 192)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3773, file: !3774, line: 41, baseType: !251, size: 64, offset: 256)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3773, file: !3774, line: 42, baseType: !630, size: 32, offset: 320)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3773, file: !3774, line: 43, baseType: !630, size: 32, offset: 352)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3773, file: !3774, line: 44, baseType: !485, size: 32, offset: 384)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3773, file: !3774, line: 45, baseType: !494, size: 32, offset: 416)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3773, file: !3774, line: 46, baseType: !635, size: 64, offset: 448)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3773, file: !3774, line: 47, baseType: !3761, size: 128, offset: 512)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3773, file: !3774, line: 48, baseType: !3761, size: 128, offset: 640)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3773, file: !3774, line: 49, baseType: !3761, size: 128, offset: 768)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3773, file: !3774, line: 50, baseType: !3761, size: 128, offset: 896)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3773, file: !3774, line: 51, baseType: !251, size: 64, offset: 1024)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3773, file: !3774, line: 52, baseType: !251, size: 64, offset: 1088)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3773, file: !3774, line: 53, baseType: !292, size: 32, offset: 1152)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3773, file: !3774, line: 54, baseType: !292, size: 32, offset: 1184)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3773, file: !3774, line: 55, baseType: !251, size: 64, offset: 1216)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !508, file: !14, line: 1990, baseType: !3798, size: 64, offset: 960)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!432, !514, !400, !447}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !508, file: !14, line: 1991, baseType: !3802, size: 64, offset: 1024)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!103, !479, !3805, !251, !251}
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !508, file: !14, line: 1993, baseType: !3808, size: 64, offset: 1088)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!103, !479, !103}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !508, file: !14, line: 1994, baseType: !3812, size: 64, offset: 1152)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!103, !479, !514, !1825, !7, !442}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !508, file: !14, line: 1997, baseType: !3816, size: 64, offset: 1216)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!103, !3650, !479, !1825, !442}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !508, file: !14, line: 1999, baseType: !3820, size: 64, offset: 1280)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!502, !3650, !514, !103}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !508, file: !14, line: 2001, baseType: !3824, size: 64, offset: 1344)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!103, !3650, !514, !502, !103}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !508, file: !14, line: 2003, baseType: !3828, size: 64, offset: 1408)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!103, !3650, !514, !3831}
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !508, file: !14, line: 2005, baseType: !3834, size: 64, offset: 1472)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!103, !514, !3831}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !508, file: !14, line: 2006, baseType: !3838, size: 64, offset: 1536)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!3841, !479}
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3843)
!3843 = !{!3844, !3851}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3842, file: !14, line: 3193, baseType: !3845, size: 128)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3846, line: 296, size: 128, elements: !3847)
!3846 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3847 = !{!3848, !3849, !3850}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3845, file: !3846, line: 297, baseType: !334, size: 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3845, file: !3846, line: 299, baseType: !1247, size: 32, offset: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3845, file: !3846, line: 300, baseType: !221, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3842, file: !14, line: 3194, baseType: !292, size: 32, offset: 128)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !480, file: !14, line: 655, baseType: !625, size: 64, offset: 448)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !480, file: !14, line: 656, baseType: !475, size: 64, offset: 512)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !480, file: !14, line: 659, baseType: !221, size: 64, offset: 576)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !480, file: !14, line: 663, baseType: !262, size: 64, offset: 640)
!3856 = !DIDerivedType(tag: DW_TAG_member, scope: !480, file: !14, line: 671, baseType: !3857, size: 32, offset: 704)
!3857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !480, file: !14, line: 671, size: 32, elements: !3858)
!3858 = !{!3859, !3861}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3857, file: !14, line: 672, baseType: !3860, size: 32)
!3860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3857, file: !14, line: 673, baseType: !7, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !480, file: !14, line: 675, baseType: !630, size: 32, offset: 736)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !480, file: !14, line: 676, baseType: !635, size: 64, offset: 768)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !480, file: !14, line: 677, baseType: !3761, size: 128, offset: 832)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !480, file: !14, line: 678, baseType: !3761, size: 128, offset: 960)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !480, file: !14, line: 679, baseType: !3761, size: 128, offset: 1088)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !480, file: !14, line: 680, baseType: !334, size: 32, offset: 1216)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !480, file: !14, line: 681, baseType: !313, size: 16, offset: 1248)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !480, file: !14, line: 682, baseType: !362, size: 8, offset: 1264)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !480, file: !14, line: 683, baseType: !362, size: 8, offset: 1272)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !480, file: !14, line: 684, baseType: !1383, size: 64, offset: 1280)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !480, file: !14, line: 691, baseType: !262, size: 64, offset: 1344)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !480, file: !14, line: 692, baseType: !1395, size: 320, offset: 1408)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !480, file: !14, line: 694, baseType: !262, size: 64, offset: 1728)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !480, file: !14, line: 695, baseType: !262, size: 64, offset: 1792)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !480, file: !14, line: 697, baseType: !979, size: 128, offset: 1856)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !480, file: !14, line: 698, baseType: !226, size: 128, offset: 1984)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !480, file: !14, line: 707, baseType: !226, size: 128, offset: 2112)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !480, file: !14, line: 708, baseType: !226, size: 128, offset: 2240)
!3880 = !DIDerivedType(tag: DW_TAG_member, scope: !480, file: !14, line: 709, baseType: !3881, size: 128, offset: 2368)
!3881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !480, file: !14, line: 709, size: 128, elements: !3882)
!3882 = !{!3883, !3884}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3881, file: !14, line: 710, baseType: !1103, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3881, file: !14, line: 711, baseType: !955, size: 128, align: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !480, file: !14, line: 713, baseType: !741, size: 64, offset: 2496)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !480, file: !14, line: 714, baseType: !741, size: 64, offset: 2560)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !480, file: !14, line: 715, baseType: !354, size: 32, offset: 2624)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !480, file: !14, line: 716, baseType: !354, size: 32, offset: 2656)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !480, file: !14, line: 717, baseType: !354, size: 32, offset: 2688)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !480, file: !14, line: 719, baseType: !354, size: 32, offset: 2720)
!3891 = !DIDerivedType(tag: DW_TAG_member, scope: !480, file: !14, line: 721, baseType: !3892, size: 64, offset: 2752)
!3892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !480, file: !14, line: 721, size: 64, elements: !3893)
!3893 = !{!3894, !3895}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3892, file: !14, line: 722, baseType: !2093, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3892, file: !14, line: 723, baseType: !1126, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !480, file: !14, line: 725, baseType: !3897, size: 64, offset: 2816)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !480, file: !14, line: 726, baseType: !476, size: 1536, align: 64, offset: 2880)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !480, file: !14, line: 727, baseType: !226, size: 128, offset: 4416)
!3901 = !DIDerivedType(tag: DW_TAG_member, scope: !480, file: !14, line: 728, baseType: !3902, size: 64, offset: 4544)
!3902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !480, file: !14, line: 728, size: 64, elements: !3903)
!3903 = !{!3904, !3905, !3908, !3909}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3902, file: !14, line: 729, baseType: !2499, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3902, file: !14, line: 730, baseType: !3906, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3902, file: !14, line: 731, baseType: !400, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3902, file: !14, line: 732, baseType: !7, size: 32)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !480, file: !14, line: 735, baseType: !293, size: 32, offset: 4608)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !480, file: !14, line: 738, baseType: !293, size: 32, offset: 4640)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !480, file: !14, line: 739, baseType: !3587, size: 64, offset: 4672)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !480, file: !14, line: 750, baseType: !221, size: 64, offset: 4736)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !476, file: !14, line: 474, baseType: !3845, size: 128, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !476, file: !14, line: 475, baseType: !1395, size: 320, offset: 192)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !476, file: !14, line: 476, baseType: !1247, size: 32, offset: 512)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !476, file: !14, line: 477, baseType: !354, size: 32, offset: 544)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !476, file: !14, line: 482, baseType: !1681, size: 128, offset: 576)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !476, file: !14, line: 483, baseType: !262, size: 64, offset: 704)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !476, file: !14, line: 484, baseType: !262, size: 64, offset: 768)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !476, file: !14, line: 485, baseType: !3922, size: 64, offset: 832)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3924)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3925)
!3925 = !{!3926, !3930, !4000, !4004, !4008, !4014, !4018, !4022, !4027, !4031, !4035, !4039, !4040, !4044, !4048, !4052, !4057, !4061, !4068, !4069}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3924, file: !14, line: 405, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!103, !2286, !1138}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3924, file: !14, line: 406, baseType: !3931, size: 64, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!103, !1825, !3934}
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3936)
!3936 = !{!3937, !3967, !3981}
!3937 = !DIDerivedType(tag: DW_TAG_member, scope: !3935, file: !38, line: 295, baseType: !3938, size: 512)
!3938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3935, file: !38, line: 295, size: 512, elements: !3939)
!3939 = !{!3940, !3966}
!3940 = !DIDerivedType(tag: DW_TAG_member, scope: !3938, file: !38, line: 296, baseType: !3941, size: 448)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3938, file: !38, line: 296, size: 448, elements: !3942)
!3942 = !{!3943, !3944, !3953, !3954, !3955, !3964, !3965}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3941, file: !38, line: 298, baseType: !262, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, scope: !3941, file: !38, line: 299, baseType: !3945, size: 128, offset: 64)
!3945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3941, file: !38, line: 299, size: 128, elements: !3946)
!3946 = !{!3947, !3948}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3945, file: !38, line: 300, baseType: !226, size: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, scope: !3945, file: !38, line: 302, baseType: !3949, size: 128)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3945, file: !38, line: 302, size: 128, elements: !3950)
!3950 = !{!3951, !3952}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3949, file: !38, line: 303, baseType: !221, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3949, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3941, file: !38, line: 310, baseType: !475, size: 64, offset: 192)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3941, file: !38, line: 311, baseType: !262, size: 64, offset: 256)
!3955 = !DIDerivedType(tag: DW_TAG_member, scope: !3941, file: !38, line: 312, baseType: !3956, size: 64, offset: 320)
!3956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3941, file: !38, line: 312, size: 64, elements: !3957)
!3957 = !{!3958, !3959}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3956, file: !38, line: 313, baseType: !221, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3956, file: !38, line: 314, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3961)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3962)
!3962 = !{!3963}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3961, file: !38, line: 256, baseType: !262, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3941, file: !38, line: 316, baseType: !354, size: 32, offset: 384)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3941, file: !38, line: 317, baseType: !354, size: 32, offset: 416)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3938, file: !38, line: 323, baseType: !2287, size: 512, align: 128)
!3967 = !DIDerivedType(tag: DW_TAG_member, scope: !3935, file: !38, line: 325, baseType: !3968, size: 512, offset: 512)
!3968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3935, file: !38, line: 325, size: 512, elements: !3969)
!3969 = !{!3970, !3980}
!3970 = !DIDerivedType(tag: DW_TAG_member, scope: !3968, file: !38, line: 326, baseType: !3971, size: 320)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3968, file: !38, line: 326, size: 320, elements: !3972)
!3972 = !{!3973, !3974, !3975, !3976, !3977, !3978, !3979}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3971, file: !38, line: 327, baseType: !262, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3971, file: !38, line: 328, baseType: !262, size: 64, offset: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3971, file: !38, line: 329, baseType: !262, size: 64, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3971, file: !38, line: 331, baseType: !354, size: 32, offset: 192)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3971, file: !38, line: 332, baseType: !354, size: 32, offset: 224)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3971, file: !38, line: 333, baseType: !354, size: 32, offset: 256)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3971, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3968, file: !38, line: 339, baseType: !2287, size: 512, align: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, scope: !3935, file: !38, line: 341, baseType: !3982, size: 512, offset: 1024)
!3982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3935, file: !38, line: 341, size: 512, elements: !3983)
!3983 = !{!3984, !3993, !3999}
!3984 = !DIDerivedType(tag: DW_TAG_member, scope: !3982, file: !38, line: 342, baseType: !3985, size: 384)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3982, file: !38, line: 342, size: 384, elements: !3986)
!3986 = !{!3987, !3988, !3989, !3990, !3991, !3992}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3985, file: !38, line: 343, baseType: !262, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3985, file: !38, line: 344, baseType: !262, size: 64, offset: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3985, file: !38, line: 346, baseType: !221, size: 64, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3985, file: !38, line: 347, baseType: !221, size: 64, offset: 192)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3985, file: !38, line: 348, baseType: !221, size: 64, offset: 256)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3985, file: !38, line: 349, baseType: !221, size: 64, offset: 320)
!3993 = !DIDerivedType(tag: DW_TAG_member, scope: !3982, file: !38, line: 352, baseType: !3994, size: 256)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3982, file: !38, line: 352, size: 256, elements: !3995)
!3995 = !{!3996, !3997, !3998}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3994, file: !38, line: 353, baseType: !262, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3994, file: !38, line: 354, baseType: !262, size: 64, offset: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3994, file: !38, line: 356, baseType: !226, size: 128, offset: 128)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3982, file: !38, line: 359, baseType: !2287, size: 512, align: 128)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3924, file: !14, line: 409, baseType: !4001, size: 64, offset: 128)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!103, !475, !1138}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3924, file: !14, line: 412, baseType: !4005, size: 64, offset: 192)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!815, !475, !3934}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3924, file: !14, line: 414, baseType: !4009, size: 64, offset: 256)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{null, !4012}
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3924, file: !14, line: 416, baseType: !4015, size: 64, offset: 320)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!103, !1825, !475, !635, !7, !3337, !2514}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3924, file: !14, line: 419, baseType: !4019, size: 64, offset: 384)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!103, !1825, !475, !635, !7, !7, !2286, !221}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3924, file: !14, line: 424, baseType: !4023, size: 64, offset: 448)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!4026, !475, !4026}
!4026 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !227, line: 131, baseType: !251)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3924, file: !14, line: 425, baseType: !4028, size: 64, offset: 512)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{null, !3934, !447, !447}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3924, file: !14, line: 426, baseType: !4032, size: 64, offset: 576)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!815, !3934, !1247}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3924, file: !14, line: 427, baseType: !4036, size: 64, offset: 640)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{null, !3934}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3924, file: !14, line: 428, baseType: !2112, size: 64, offset: 704)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3924, file: !14, line: 433, baseType: !4041, size: 64, offset: 768)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!103, !475, !3934, !3934, !74}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3924, file: !14, line: 435, baseType: !4045, size: 64, offset: 832)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!103, !3934}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3924, file: !14, line: 436, baseType: !4049, size: 64, offset: 896)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!815, !3934, !447, !447}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3924, file: !14, line: 438, baseType: !4053, size: 64, offset: 960)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{null, !3934, !4056, !4056}
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3924, file: !14, line: 439, baseType: !4058, size: 64, offset: 1024)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!103, !475, !2286}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3924, file: !14, line: 442, baseType: !4062, size: 64, offset: 1088)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!103, !4065, !1825, !4067}
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3924, file: !14, line: 444, baseType: !2506, size: 64, offset: 1152)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3924, file: !14, line: 445, baseType: !4070, size: 64, offset: 1216)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!103, !2115, !2137}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !476, file: !14, line: 486, baseType: !262, size: 64, offset: 896)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !476, file: !14, line: 487, baseType: !1395, size: 320, offset: 960)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !476, file: !14, line: 488, baseType: !2549, size: 32, offset: 1280)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !476, file: !14, line: 489, baseType: !334, size: 32, offset: 1312)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !476, file: !14, line: 490, baseType: !226, size: 128, offset: 1344)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !476, file: !14, line: 491, baseType: !221, size: 64, offset: 1472)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !466, file: !426, line: 180, baseType: !4080, size: 64, offset: 320)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!432, !1825, !327, !465, !400, !635, !447}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !466, file: !426, line: 182, baseType: !4080, size: 64, offset: 384)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !466, file: !426, line: 184, baseType: !4085, size: 64, offset: 448)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!103, !1825, !327, !465, !2177}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !454, file: !426, line: 90, baseType: !4089, size: 64, offset: 192)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !454, file: !426, line: 91, baseType: !4091, size: 64, offset: 256)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !416, file: !322, line: 120, baseType: !4093, size: 64, offset: 192)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!4096, !383}
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4098)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4099)
!4099 = !{!4100, !4101, !4105, !4109, !4115, !4119}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4098, file: !82, line: 40, baseType: !81, size: 32)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4098, file: !82, line: 41, baseType: !4102, size: 64, offset: 64)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!815}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4098, file: !82, line: 42, baseType: !4106, size: 64, offset: 128)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!221}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4098, file: !82, line: 43, baseType: !4110, size: 64, offset: 192)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!2638, !4113}
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4098, file: !82, line: 44, baseType: !4116, size: 64, offset: 256)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!2638}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4098, file: !82, line: 45, baseType: !778, size: 64, offset: 320)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !416, file: !322, line: 121, baseType: !4121, size: 64, offset: 256)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!2638, !383}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !416, file: !322, line: 122, baseType: !4125, size: 64, offset: 320)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{null, !383, !4128, !4129}
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !321, file: !322, line: 70, baseType: !4131, size: 64, offset: 384)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !650, line: 190, size: 1152, elements: !4133)
!4133 = !{!4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4225, !4226, !4227, !4228, !4229, !4232}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4132, file: !650, line: 191, baseType: !354, size: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4132, file: !650, line: 192, baseType: !354, size: 32, offset: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4132, file: !650, line: 202, baseType: !4131, size: 64, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4132, file: !650, line: 203, baseType: !258, size: 64, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4132, file: !650, line: 205, baseType: !847, size: 192, align: 64, offset: 192)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4132, file: !650, line: 207, baseType: !2638, size: 64, offset: 384)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4132, file: !650, line: 208, baseType: !7, size: 32, offset: 448)
!4141 = !DIDerivedType(tag: DW_TAG_member, scope: !4132, file: !650, line: 209, baseType: !4142, size: 256, offset: 512)
!4142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4132, file: !650, line: 209, size: 256, elements: !4143)
!4143 = !{!4144, !4153, !4157}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4142, file: !650, line: 210, baseType: !4145, size: 256)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !650, line: 153, size: 256, elements: !4146)
!4146 = !{!4147, !4148, !4149, !4152}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4145, file: !650, line: 154, baseType: !262, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4145, file: !650, line: 156, baseType: !1684, size: 64, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4145, file: !650, line: 162, baseType: !4150, size: 64, offset: 128)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !650, line: 162, flags: DIFlagFwdDecl)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4145, file: !650, line: 167, baseType: !262, size: 64, offset: 192)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4142, file: !650, line: 211, baseType: !4154, size: 64)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !650, line: 170, size: 64, elements: !4155)
!4155 = !{!4156}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4154, file: !650, line: 171, baseType: !4131, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4142, file: !650, line: 212, baseType: !4158, size: 256)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !650, line: 174, size: 256, elements: !4159)
!4159 = !{!4160, !4220, !4223, !4224}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4158, file: !650, line: 175, baseType: !4161, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4163)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !650, line: 271, size: 768, elements: !4164)
!4164 = !{!4165, !4185, !4189, !4193, !4197, !4201, !4205, !4209, !4210, !4211, !4212, !4216}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4163, file: !650, line: 276, baseType: !4166, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!103, !4169}
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !650, line: 251, size: 1216, elements: !4171)
!4171 = !{!4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4170, file: !650, line: 253, baseType: !4131, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4170, file: !650, line: 254, baseType: !1825, size: 64, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4170, file: !650, line: 255, baseType: !1175, size: 64, offset: 128)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4170, file: !650, line: 256, baseType: !221, size: 64, offset: 192)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4170, file: !650, line: 259, baseType: !735, size: 256, offset: 256)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4170, file: !650, line: 260, baseType: !735, size: 256, offset: 512)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4170, file: !650, line: 261, baseType: !103, size: 32, offset: 768)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4170, file: !650, line: 262, baseType: !226, size: 128, offset: 832)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4170, file: !650, line: 263, baseType: !400, size: 64, offset: 960)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4170, file: !650, line: 265, baseType: !447, size: 64, offset: 1024)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4170, file: !650, line: 266, baseType: !815, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4170, file: !650, line: 267, baseType: !815, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4170, file: !650, line: 268, baseType: !2222, size: 64, offset: 1152)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4163, file: !650, line: 277, baseType: !4186, size: 64, offset: 64)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{null, !4169}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4163, file: !650, line: 290, baseType: !4190, size: 64, offset: 128)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!103, !1175, !221}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4163, file: !650, line: 292, baseType: !4194, size: 64, offset: 192)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!221, !1175, !2106}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4163, file: !650, line: 293, baseType: !4198, size: 64, offset: 256)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!221, !1175, !221, !2106}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4163, file: !650, line: 294, baseType: !4202, size: 64, offset: 320)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{null, !1175, !221}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4163, file: !650, line: 296, baseType: !4206, size: 64, offset: 384)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!432, !4169, !400, !447, !635}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4163, file: !650, line: 306, baseType: !447, size: 64, offset: 448)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4163, file: !650, line: 313, baseType: !815, size: 8, offset: 512)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4163, file: !650, line: 314, baseType: !4206, size: 64, offset: 576)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4163, file: !650, line: 317, baseType: !4213, size: 64, offset: 640)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!2164, !4169, !2166}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4163, file: !650, line: 320, baseType: !4217, size: 64, offset: 704)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!103, !4169, !2177}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4158, file: !650, line: 176, baseType: !4221, size: 64, offset: 64)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !650, line: 35, flags: DIFlagFwdDecl)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4158, file: !650, line: 177, baseType: !635, size: 64, offset: 128)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4158, file: !650, line: 178, baseType: !4131, size: 64, offset: 192)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4132, file: !650, line: 215, baseType: !221, size: 64, offset: 768)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4132, file: !650, line: 221, baseType: !251, size: 64, offset: 832)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4132, file: !650, line: 223, baseType: !313, size: 16, offset: 896)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4132, file: !650, line: 224, baseType: !442, size: 16, offset: 912)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4132, file: !650, line: 225, baseType: !4230, size: 64, offset: 960)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !650, line: 36, flags: DIFlagFwdDecl)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4132, file: !650, line: 227, baseType: !955, size: 128, align: 64, offset: 1024)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !321, file: !322, line: 71, baseType: !4234, size: 32, offset: 448)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4235, line: 19, size: 32, elements: !4236)
!4235 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4236 = !{!4237}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4234, file: !4235, line: 20, baseType: !1515, size: 32)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !321, file: !322, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !321, file: !322, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !321, file: !322, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !321, file: !322, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !321, file: !322, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !318, file: !88, line: 707, baseType: !317, size: 64, offset: 512)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !318, file: !88, line: 709, baseType: !4245, size: 64, offset: 576)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !88, line: 37, flags: DIFlagFwdDecl)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !318, file: !88, line: 711, baseType: !258, size: 64, offset: 640)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !318, file: !88, line: 712, baseType: !4249, size: 64, offset: 704)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4251)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !88, line: 89, size: 384, elements: !4252)
!4252 = !{!4253, !4254, !4255, !4261, !4266, !4270}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4251, file: !88, line: 90, baseType: !258, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4251, file: !88, line: 91, baseType: !451, size: 64, offset: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4251, file: !88, line: 92, baseType: !4256, size: 64, offset: 128)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!103, !4259, !395}
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4251, file: !88, line: 93, baseType: !4262, size: 64, offset: 192)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!400, !4259, !4265, !4128, !4129}
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4251, file: !88, line: 95, baseType: !4267, size: 64, offset: 256)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{null, !317}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4251, file: !88, line: 97, baseType: !4271, size: 64, offset: 320)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4273)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !95, line: 286, size: 1472, elements: !4274)
!4274 = !{!4275, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4273, file: !95, line: 287, baseType: !4276, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!103, !317}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4273, file: !95, line: 288, baseType: !4267, size: 64, offset: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4273, file: !95, line: 289, baseType: !4276, size: 64, offset: 128)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4273, file: !95, line: 290, baseType: !4276, size: 64, offset: 192)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4273, file: !95, line: 291, baseType: !4276, size: 64, offset: 256)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4273, file: !95, line: 292, baseType: !4276, size: 64, offset: 320)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4273, file: !95, line: 293, baseType: !4276, size: 64, offset: 384)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4273, file: !95, line: 294, baseType: !4276, size: 64, offset: 448)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4273, file: !95, line: 295, baseType: !4276, size: 64, offset: 512)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4273, file: !95, line: 296, baseType: !4276, size: 64, offset: 576)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4273, file: !95, line: 297, baseType: !4276, size: 64, offset: 640)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4273, file: !95, line: 298, baseType: !4276, size: 64, offset: 704)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4273, file: !95, line: 299, baseType: !4276, size: 64, offset: 768)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4273, file: !95, line: 300, baseType: !4276, size: 64, offset: 832)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4273, file: !95, line: 301, baseType: !4276, size: 64, offset: 896)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4273, file: !95, line: 302, baseType: !4276, size: 64, offset: 960)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4273, file: !95, line: 303, baseType: !4276, size: 64, offset: 1024)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4273, file: !95, line: 304, baseType: !4276, size: 64, offset: 1088)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4273, file: !95, line: 305, baseType: !4276, size: 64, offset: 1152)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4273, file: !95, line: 306, baseType: !4276, size: 64, offset: 1216)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4273, file: !95, line: 307, baseType: !4276, size: 64, offset: 1280)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4273, file: !95, line: 308, baseType: !4276, size: 64, offset: 1344)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4273, file: !95, line: 309, baseType: !4276, size: 64, offset: 1408)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !318, file: !88, line: 714, baseType: !4302, size: 64, offset: 768)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4304)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4305, line: 80, size: 1344, elements: !4306)
!4305 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4306 = !{!4307, !4308, !4309, !4310, !4311, !4312, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4385}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4304, file: !4305, line: 81, baseType: !258, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4304, file: !4305, line: 82, baseType: !258, size: 64, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4304, file: !4305, line: 83, baseType: !451, size: 64, offset: 128)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4304, file: !4305, line: 84, baseType: !451, size: 64, offset: 192)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4304, file: !4305, line: 85, baseType: !451, size: 64, offset: 256)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4304, file: !4305, line: 87, baseType: !4313, size: 64, offset: 320)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!103, !317, !4316}
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !161, line: 96, size: 1152, elements: !4318)
!4318 = !{!4319, !4320, !4321, !4322, !4323, !4324, !4325, !4338, !4348, !4349, !4350, !4351, !4352, !4360, !4361, !4362, !4363, !4364, !4365}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4317, file: !161, line: 97, baseType: !258, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4317, file: !161, line: 98, baseType: !4302, size: 64, offset: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4317, file: !161, line: 100, baseType: !664, size: 64, offset: 128)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4317, file: !161, line: 101, baseType: !258, size: 64, offset: 192)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4317, file: !161, line: 103, baseType: !815, size: 8, offset: 256)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4317, file: !161, line: 104, baseType: !160, size: 32, offset: 288)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4317, file: !161, line: 106, baseType: !4326, size: 64, offset: 320)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4328)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4329, line: 282, size: 1600, elements: !4330)
!4329 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4330 = !{!4331, !4332, !4333, !4337}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4328, file: !4329, line: 283, baseType: !3590, size: 256)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4328, file: !4329, line: 284, baseType: !3590, size: 256, offset: 256)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4328, file: !4329, line: 285, baseType: !4334, size: 1024, offset: 512)
!4334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 1024, elements: !4335)
!4335 = !{!4336}
!4336 = !DISubrange(count: 128)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4328, file: !4329, line: 286, baseType: !2638, size: 64, offset: 1536)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4317, file: !161, line: 107, baseType: !4339, size: 64, offset: 384)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4341)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4329, line: 217, size: 256, elements: !4342)
!4342 = !{!4343, !4344, !4346, !4347}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4341, file: !4329, line: 218, baseType: !3597, size: 128)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4341, file: !4329, line: 219, baseType: !4345, size: 64, offset: 128)
!4345 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4329, line: 15, baseType: !262)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4341, file: !4329, line: 220, baseType: !293, size: 32, offset: 192)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4341, file: !4329, line: 221, baseType: !293, size: 32, offset: 224)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4317, file: !161, line: 109, baseType: !4276, size: 64, offset: 448)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4317, file: !161, line: 110, baseType: !4267, size: 64, offset: 512)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4317, file: !161, line: 111, baseType: !4276, size: 64, offset: 576)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4317, file: !161, line: 112, baseType: !4267, size: 64, offset: 640)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4317, file: !161, line: 113, baseType: !4353, size: 64, offset: 704)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!103, !317, !4356}
!4356 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !95, line: 60, baseType: !4357)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !95, line: 58, size: 32, elements: !4358)
!4358 = !{!4359}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4357, file: !95, line: 59, baseType: !103, size: 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4317, file: !161, line: 114, baseType: !4276, size: 64, offset: 768)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4317, file: !161, line: 115, baseType: !451, size: 64, offset: 832)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4317, file: !161, line: 116, baseType: !451, size: 64, offset: 896)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4317, file: !161, line: 118, baseType: !4271, size: 64, offset: 960)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4317, file: !161, line: 119, baseType: !4267, size: 64, offset: 1024)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4317, file: !161, line: 121, baseType: !4366, size: 64, offset: 1088)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !161, line: 121, flags: DIFlagFwdDecl)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4304, file: !4305, line: 88, baseType: !4256, size: 64, offset: 384)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4304, file: !4305, line: 89, baseType: !4276, size: 64, offset: 448)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4304, file: !4305, line: 90, baseType: !4267, size: 64, offset: 512)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4304, file: !4305, line: 91, baseType: !4267, size: 64, offset: 576)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4304, file: !4305, line: 92, baseType: !4267, size: 64, offset: 640)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4304, file: !4305, line: 94, baseType: !4276, size: 64, offset: 704)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4304, file: !4305, line: 95, baseType: !4276, size: 64, offset: 768)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4304, file: !4305, line: 97, baseType: !4353, size: 64, offset: 832)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4304, file: !4305, line: 98, baseType: !4276, size: 64, offset: 896)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4304, file: !4305, line: 100, baseType: !4276, size: 64, offset: 960)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4304, file: !4305, line: 102, baseType: !4276, size: 64, offset: 1024)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4304, file: !4305, line: 103, baseType: !4267, size: 64, offset: 1088)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4304, file: !4305, line: 105, baseType: !4271, size: 64, offset: 1152)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4304, file: !4305, line: 107, baseType: !4382, size: 64, offset: 1216)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4384)
!4384 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4305, line: 107, flags: DIFlagFwdDecl)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4304, file: !4305, line: 109, baseType: !815, size: 8, offset: 1280)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !318, file: !88, line: 715, baseType: !4316, size: 64, offset: 832)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !318, file: !88, line: 717, baseType: !221, size: 64, offset: 896)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !318, file: !88, line: 719, baseType: !221, size: 64, offset: 960)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !318, file: !88, line: 721, baseType: !735, size: 256, offset: 1024)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !318, file: !88, line: 725, baseType: !4391, size: 448, offset: 1280)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !88, line: 517, size: 448, elements: !4392)
!4392 = !{!4393, !4394, !4395, !4396}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4391, file: !88, line: 518, baseType: !226, size: 128)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4391, file: !88, line: 519, baseType: !226, size: 128, offset: 128)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4391, file: !88, line: 520, baseType: !226, size: 128, offset: 256)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4391, file: !88, line: 521, baseType: !87, size: 32, offset: 384)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !318, file: !88, line: 726, baseType: !4398, size: 2496, offset: 1728)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !95, line: 663, size: 2496, elements: !4399)
!4399 = !{!4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4482, !4486}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4398, file: !95, line: 664, baseType: !4356, size: 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4398, file: !95, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4398, file: !95, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4398, file: !95, line: 667, baseType: !815, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4398, file: !95, line: 668, baseType: !815, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4398, file: !95, line: 669, baseType: !815, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4398, file: !95, line: 670, baseType: !815, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4398, file: !95, line: 671, baseType: !815, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4398, file: !95, line: 672, baseType: !815, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4398, file: !95, line: 673, baseType: !815, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4398, file: !95, line: 674, baseType: !815, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4398, file: !95, line: 675, baseType: !292, size: 32, offset: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4398, file: !95, line: 676, baseType: !334, size: 32, offset: 96)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4398, file: !95, line: 678, baseType: !226, size: 128, offset: 128)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4398, file: !95, line: 679, baseType: !684, size: 256, offset: 256)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4398, file: !95, line: 680, baseType: !4416, size: 64, offset: 512)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4418, line: 43, size: 1536, elements: !4419)
!4418 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4419 = !{!4420, !4421, !4422, !4423, !4424, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4417, file: !4418, line: 44, baseType: !258, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4417, file: !4418, line: 45, baseType: !103, size: 32, offset: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4417, file: !4418, line: 46, baseType: !226, size: 128, offset: 128)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4417, file: !4418, line: 47, baseType: !334, size: 32, offset: 256)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4417, file: !4418, line: 48, baseType: !4425, size: 64, offset: 320)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !95, line: 629, flags: DIFlagFwdDecl)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4417, file: !4418, line: 49, baseType: !975, size: 320, offset: 384)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4417, file: !4418, line: 50, baseType: !262, size: 64, offset: 704)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4417, file: !4418, line: 51, baseType: !1630, size: 64, offset: 768)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4417, file: !4418, line: 52, baseType: !1630, size: 64, offset: 832)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4417, file: !4418, line: 53, baseType: !1630, size: 64, offset: 896)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4417, file: !4418, line: 54, baseType: !1630, size: 64, offset: 960)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4417, file: !4418, line: 55, baseType: !1630, size: 64, offset: 1024)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4417, file: !4418, line: 56, baseType: !262, size: 64, offset: 1088)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4417, file: !4418, line: 57, baseType: !262, size: 64, offset: 1152)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4417, file: !4418, line: 58, baseType: !262, size: 64, offset: 1216)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4417, file: !4418, line: 59, baseType: !262, size: 64, offset: 1280)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4417, file: !4418, line: 60, baseType: !262, size: 64, offset: 1344)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4417, file: !4418, line: 61, baseType: !317, size: 64, offset: 1408)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4417, file: !4418, line: 62, baseType: !815, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4417, file: !4418, line: 63, baseType: !815, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4398, file: !95, line: 681, baseType: !815, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4398, file: !95, line: 682, baseType: !815, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4398, file: !95, line: 683, baseType: !815, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4398, file: !95, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4398, file: !95, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4398, file: !95, line: 690, baseType: !1622, size: 512, offset: 640)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4398, file: !95, line: 691, baseType: !251, size: 64, offset: 1152)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4398, file: !95, line: 692, baseType: !993, size: 256, offset: 1216)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4398, file: !95, line: 693, baseType: !1488, size: 192, offset: 1472)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4398, file: !95, line: 694, baseType: !4425, size: 64, offset: 1664)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4398, file: !95, line: 695, baseType: !354, size: 32, offset: 1728)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4398, file: !95, line: 696, baseType: !354, size: 32, offset: 1760)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4398, file: !95, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4398, file: !95, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4398, file: !95, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4398, file: !95, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4398, file: !95, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4398, file: !95, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4398, file: !95, line: 703, baseType: !815, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4398, file: !95, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4398, file: !95, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4398, file: !95, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4398, file: !95, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4398, file: !95, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4398, file: !95, line: 709, baseType: !7, size: 32, offset: 1824)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4398, file: !95, line: 710, baseType: !94, size: 32, offset: 1856)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4398, file: !95, line: 711, baseType: !102, size: 32, offset: 1888)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4398, file: !95, line: 712, baseType: !102, size: 32, offset: 1920)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4398, file: !95, line: 713, baseType: !103, size: 32, offset: 1952)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4398, file: !95, line: 714, baseType: !103, size: 32, offset: 1984)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4398, file: !95, line: 715, baseType: !251, size: 64, offset: 2048)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4398, file: !95, line: 716, baseType: !251, size: 64, offset: 2112)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4398, file: !95, line: 717, baseType: !251, size: 64, offset: 2176)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4398, file: !95, line: 718, baseType: !251, size: 64, offset: 2240)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4398, file: !95, line: 720, baseType: !4477, size: 64, offset: 2304)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !95, line: 632, size: 64, elements: !4479)
!4479 = !{!4480, !4481}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4478, file: !95, line: 633, baseType: !334, size: 32)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4478, file: !95, line: 634, baseType: !7, size: 32, offset: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4398, file: !95, line: 721, baseType: !4483, size: 64, offset: 2368)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{null, !317, !731}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4398, file: !95, line: 722, baseType: !4487, size: 64, offset: 2432)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !95, line: 722, flags: DIFlagFwdDecl)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !318, file: !88, line: 727, baseType: !4490, size: 64, offset: 4224)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !95, line: 742, size: 1792, elements: !4492)
!4492 = !{!4493, !4494, !4495, !4499, !4500, !4501}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4491, file: !95, line: 743, baseType: !4273, size: 1472)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4491, file: !95, line: 744, baseType: !4276, size: 64, offset: 1472)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4491, file: !95, line: 745, baseType: !4496, size: 64, offset: 1536)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{null, !317, !815}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4491, file: !95, line: 746, baseType: !4276, size: 64, offset: 1600)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4491, file: !95, line: 747, baseType: !4267, size: 64, offset: 1664)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4491, file: !95, line: 748, baseType: !4267, size: 64, offset: 1728)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !318, file: !88, line: 736, baseType: !4503, size: 128, offset: 4288)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !88, line: 529, size: 128, elements: !4504)
!4504 = !{!4505, !4717}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4503, file: !88, line: 531, baseType: !4506, size: 64)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4508, line: 150, size: 1408, elements: !4509)
!4508 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd3b6d3aac1ec0f42f0ed0e1454dc51c")
!4509 = !{!4510, !4511, !4512, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4705, !4706, !4707, !4708, !4712, !4713, !4714, !4715}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4507, file: !4508, line: 151, baseType: !226, size: 128)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4507, file: !4508, line: 152, baseType: !258, size: 64, offset: 128)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4507, file: !4508, line: 153, baseType: !4513, size: 64, offset: 192)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4515)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !4508, line: 88, size: 640, elements: !4516)
!4516 = !{!4517, !4646, !4657, !4662, !4666, !4672, !4676, !4680, !4687, !4691}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4515, file: !4508, line: 89, baseType: !4518, size: 64)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!103, !4506, !4521, !116}
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4523, line: 48, size: 1152, elements: !4524)
!4523 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!4524 = !{!4525, !4526, !4528, !4529, !4632, !4640, !4641, !4642, !4643, !4644, !4645}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4522, file: !4523, line: 49, baseType: !258, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4522, file: !4523, line: 50, baseType: !4527, size: 32, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4523, line: 25, baseType: !292)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4522, file: !4523, line: 51, baseType: !258, size: 64, offset: 128)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4522, file: !4523, line: 52, baseType: !4530, size: 512, offset: 192)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4531, line: 41, size: 512, elements: !4532)
!4531 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4532 = !{!4533, !4535, !4628, !4629, !4630, !4631}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4530, file: !4531, line: 42, baseType: !4534, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4530, file: !4531, line: 43, baseType: !4536, size: 64, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4538)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4531, line: 125, size: 1408, elements: !4539)
!4539 = !{!4540, !4544, !4548, !4554, !4558, !4559, !4563, !4567, !4571, !4575, !4579, !4580, !4584, !4588, !4592, !4603, !4604, !4605, !4606, !4616, !4620, !4624}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4538, file: !4531, line: 126, baseType: !4541, size: 64)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!4534, !4534}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4538, file: !4531, line: 127, baseType: !4545, size: 64, offset: 64)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{null, !4534}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4538, file: !4531, line: 128, baseType: !4549, size: 64, offset: 128)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!815, !4552}
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4530)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4538, file: !4531, line: 129, baseType: !4555, size: 64, offset: 192)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!2638, !4552, !4259}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4538, file: !4531, line: 131, baseType: !4549, size: 64, offset: 256)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4538, file: !4531, line: 133, baseType: !4560, size: 64, offset: 320)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!110, !4552}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4538, file: !4531, line: 134, baseType: !4564, size: 64, offset: 384)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!815, !4552, !258}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4538, file: !4531, line: 136, baseType: !4568, size: 64, offset: 448)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!103, !4552, !258, !7, !221, !447}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4538, file: !4531, line: 141, baseType: !4572, size: 64, offset: 512)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!103, !4552, !258, !1070, !447}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4538, file: !4531, line: 144, baseType: !4576, size: 64, offset: 576)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!258, !4552}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4538, file: !4531, line: 145, baseType: !4576, size: 64, offset: 640)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4538, file: !4531, line: 146, baseType: !4581, size: 64, offset: 704)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!4534, !4552}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4538, file: !4531, line: 148, baseType: !4585, size: 64, offset: 768)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!4534, !4552, !4534}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4538, file: !4531, line: 151, baseType: !4589, size: 64, offset: 832)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!4534, !4552, !258}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4538, file: !4531, line: 153, baseType: !4593, size: 64, offset: 896)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!103, !4552, !258, !258, !7, !7, !4596}
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4531, line: 94, size: 640, elements: !4598)
!4598 = !{!4599, !4600, !4601}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4597, file: !4531, line: 95, baseType: !4534, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4597, file: !4531, line: 96, baseType: !7, size: 32, offset: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4597, file: !4531, line: 97, baseType: !4602, size: 512, offset: 128)
!4602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 512, elements: !1665)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4538, file: !4531, line: 158, baseType: !4585, size: 64, offset: 960)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4538, file: !4531, line: 161, baseType: !4581, size: 64, offset: 1024)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4538, file: !4531, line: 163, baseType: !4541, size: 64, offset: 1088)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4538, file: !4531, line: 164, baseType: !4607, size: 64, offset: 1152)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!103, !4552, !4610}
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4531, line: 73, size: 128, elements: !4612)
!4612 = !{!4613, !4614, !4615}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4611, file: !4531, line: 74, baseType: !7, size: 32)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4611, file: !4531, line: 75, baseType: !7, size: 32, offset: 32)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4611, file: !4531, line: 76, baseType: !4552, size: 64, offset: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4538, file: !4531, line: 166, baseType: !4617, size: 64, offset: 1216)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!221, !4534, !103}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4538, file: !4531, line: 167, baseType: !4621, size: 64, offset: 1280)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!103, !4552, !7}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4538, file: !4531, line: 168, baseType: !4625, size: 64, offset: 1344)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!103, !4534}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4530, file: !4531, line: 44, baseType: !317, size: 64, offset: 128)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4530, file: !4531, line: 45, baseType: !226, size: 128, offset: 192)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4530, file: !4531, line: 46, baseType: !226, size: 128, offset: 320)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4530, file: !4531, line: 47, baseType: !362, size: 8, offset: 448)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4522, file: !4523, line: 54, baseType: !4633, size: 64, offset: 704)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4523, line: 28, size: 256, elements: !4635)
!4635 = !{!4636, !4637, !4638, !4639}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4634, file: !4523, line: 29, baseType: !400, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4634, file: !4523, line: 30, baseType: !103, size: 32, offset: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4634, file: !4523, line: 31, baseType: !221, size: 64, offset: 128)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4634, file: !4523, line: 32, baseType: !4633, size: 64, offset: 192)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4522, file: !4523, line: 55, baseType: !4633, size: 64, offset: 768)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4522, file: !4523, line: 56, baseType: !4521, size: 64, offset: 832)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4522, file: !4523, line: 57, baseType: !4521, size: 64, offset: 896)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4522, file: !4523, line: 58, baseType: !4521, size: 64, offset: 960)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4522, file: !4523, line: 62, baseType: !262, size: 64, offset: 1024)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4522, file: !4523, line: 63, baseType: !221, size: 64, offset: 1088)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !4515, file: !4508, line: 91, baseType: !4647, size: 64, offset: 64)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!103, !4506, !4650, !116}
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !4508, line: 63, size: 640, elements: !4652)
!4652 = !{!4653, !4654, !4655}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4651, file: !4508, line: 64, baseType: !4534, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4651, file: !4508, line: 65, baseType: !103, size: 32, offset: 64)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4651, file: !4508, line: 66, baseType: !4656, size: 512, offset: 96)
!4656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 512, elements: !2815)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4515, file: !4508, line: 93, baseType: !4658, size: 64, offset: 128)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!103, !4506, !7, !4661}
!4661 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !227, line: 170, baseType: !262)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4515, file: !4508, line: 94, baseType: !4663, size: 64, offset: 192)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{null, !4506, !7}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !4515, file: !4508, line: 95, baseType: !4667, size: 64, offset: 256)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!103, !4506, !4521, !4670, !7, !1084, !807}
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4515, file: !4508, line: 100, baseType: !4673, size: 64, offset: 320)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!103, !4506, !7, !7, !221}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4515, file: !4508, line: 102, baseType: !4677, size: 64, offset: 384)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{null, !4506, !7, !7}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4515, file: !4508, line: 104, baseType: !4681, size: 64, offset: 448)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!103, !4506, !4684, !815}
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4686, line: 11, flags: DIFlagFwdDecl)
!4686 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4515, file: !4508, line: 105, baseType: !4688, size: 64, offset: 512)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{null, !4506, !4684}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !4515, file: !4508, line: 106, baseType: !4692, size: 64, offset: 576)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!103, !4506, !4650, !1084, !807}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !4507, file: !4508, line: 154, baseType: !221, size: 64, offset: 256)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4507, file: !4508, line: 155, baseType: !7, size: 32, offset: 320)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !4507, file: !4508, line: 156, baseType: !7, size: 32, offset: 352)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4507, file: !4508, line: 157, baseType: !735, size: 256, offset: 384)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4507, file: !4508, line: 158, baseType: !4506, size: 64, offset: 640)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4507, file: !4508, line: 161, baseType: !4534, size: 64, offset: 704)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !4507, file: !4508, line: 162, baseType: !116, size: 32, offset: 768)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4507, file: !4508, line: 163, baseType: !4703, size: 64, offset: 832)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !4508, line: 117, flags: DIFlagFwdDecl)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4507, file: !4508, line: 164, baseType: !317, size: 64, offset: 896)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "pm_dev", scope: !4507, file: !4508, line: 165, baseType: !317, size: 64, offset: 960)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4507, file: !4508, line: 167, baseType: !4506, size: 64, offset: 1024)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "msi_parent_ops", scope: !4507, file: !4508, line: 170, baseType: !4709, size: 64, offset: 1088)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4711)
!4711 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_parent_ops", file: !4508, line: 49, flags: DIFlagFwdDecl)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !4507, file: !4508, line: 174, baseType: !4661, size: 64, offset: 1152)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !4507, file: !4508, line: 175, baseType: !7, size: 32, offset: 1216)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !4507, file: !4508, line: 176, baseType: !3845, size: 128, offset: 1280)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "revmap", scope: !4507, file: !4508, line: 177, baseType: !4716, offset: 1408)
!4716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4684, elements: !1885)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4503, file: !88, line: 532, baseType: !4718, size: 64, offset: 64)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !88, line: 49, flags: DIFlagFwdDecl)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !318, file: !88, line: 738, baseType: !4721, size: 64, offset: 4416)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4723)
!4723 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !88, line: 738, flags: DIFlagFwdDecl)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !318, file: !88, line: 740, baseType: !4725, size: 64, offset: 4480)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !318, file: !88, line: 741, baseType: !251, size: 64, offset: 4544)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !318, file: !88, line: 746, baseType: !251, size: 64, offset: 4608)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !318, file: !88, line: 747, baseType: !4729, size: 64, offset: 4672)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4731)
!4731 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !88, line: 747, flags: DIFlagFwdDecl)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !318, file: !88, line: 749, baseType: !4733, size: 64, offset: 4736)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !88, line: 428, size: 128, elements: !4735)
!4735 = !{!4736, !4737, !4738}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4734, file: !88, line: 433, baseType: !7, size: 32)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4734, file: !88, line: 434, baseType: !7, size: 32, offset: 32)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4734, file: !88, line: 435, baseType: !262, size: 64, offset: 64)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !318, file: !88, line: 751, baseType: !226, size: 128, offset: 4800)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !318, file: !88, line: 762, baseType: !4741, size: 64, offset: 4928)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !88, line: 762, flags: DIFlagFwdDecl)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !318, file: !88, line: 770, baseType: !4744, offset: 4992)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4745, line: 5, elements: !1022)
!4745 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !318, file: !88, line: 772, baseType: !4521, size: 64, offset: 4992)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !318, file: !88, line: 773, baseType: !4534, size: 64, offset: 5056)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !318, file: !88, line: 776, baseType: !103, size: 32, offset: 5120)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !318, file: !88, line: 778, baseType: !630, size: 32, offset: 5152)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !318, file: !88, line: 779, baseType: !292, size: 32, offset: 5184)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !318, file: !88, line: 781, baseType: !334, size: 32, offset: 5216)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !318, file: !88, line: 782, baseType: !226, size: 128, offset: 5248)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !318, file: !88, line: 784, baseType: !4754, size: 64, offset: 5376)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4756)
!4756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4757, line: 52, size: 768, elements: !4758)
!4757 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4758 = !{!4759, !4760, !4761, !4762, !4763, !4767, !4771, !4772, !4773, !4774, !4778, !4782}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4756, file: !4757, line: 53, baseType: !258, size: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4756, file: !4757, line: 55, baseType: !451, size: 64, offset: 64)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4756, file: !4757, line: 56, baseType: !451, size: 64, offset: 128)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4756, file: !4757, line: 58, baseType: !4256, size: 64, offset: 192)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4756, file: !4757, line: 59, baseType: !4764, size: 64, offset: 256)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!400, !4259, !4265}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4756, file: !4757, line: 61, baseType: !4768, size: 64, offset: 320)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{null, !4754}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4756, file: !4757, line: 62, baseType: !4267, size: 64, offset: 384)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4756, file: !4757, line: 64, baseType: !4276, size: 64, offset: 448)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4756, file: !4757, line: 66, baseType: !4096, size: 64, offset: 512)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4756, file: !4757, line: 67, baseType: !4775, size: 64, offset: 576)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!2638, !4259}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4756, file: !4757, line: 69, baseType: !4779, size: 64, offset: 640)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{null, !4259, !4128, !4129}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4756, file: !4757, line: 71, baseType: !4271, size: 64, offset: 704)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !318, file: !88, line: 785, baseType: !451, size: 64, offset: 5440)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !318, file: !88, line: 787, baseType: !4267, size: 64, offset: 5504)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !318, file: !88, line: 788, baseType: !4786, size: 64, offset: 5568)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !88, line: 46, flags: DIFlagFwdDecl)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !318, file: !88, line: 789, baseType: !4789, size: 64, offset: 5632)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !88, line: 48, flags: DIFlagFwdDecl)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !318, file: !88, line: 791, baseType: !4792, size: 64, offset: 5696)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !88, line: 597, size: 128, elements: !4794)
!4794 = !{!4795, !4796, !4797, !4798, !4799}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4793, file: !88, line: 598, baseType: !135, size: 32)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4793, file: !88, line: 599, baseType: !144, size: 32, offset: 32)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4793, file: !88, line: 600, baseType: !149, size: 32, offset: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4793, file: !88, line: 601, baseType: !815, size: 8, offset: 96)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4793, file: !88, line: 602, baseType: !815, size: 8, offset: 104)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !318, file: !88, line: 793, baseType: !154, size: 32, offset: 5760)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !318, file: !88, line: 795, baseType: !815, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !318, file: !88, line: 796, baseType: !815, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !318, file: !88, line: 797, baseType: !815, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !318, file: !88, line: 798, baseType: !815, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !318, file: !88, line: 799, baseType: !815, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !234, file: !187, line: 676, baseType: !318, size: 5824, offset: 2240)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !234, file: !187, line: 677, baseType: !465, size: 64, offset: 8064)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !234, file: !187, line: 678, baseType: !465, size: 64, offset: 8128)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !234, file: !187, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !234, file: !187, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !223, file: !187, line: 325, baseType: !233, size: 64, offset: 192)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !223, file: !187, line: 327, baseType: !221, size: 64, offset: 256)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !223, file: !187, line: 328, baseType: !300, size: 64, offset: 320)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !223, file: !187, line: 329, baseType: !4815, size: 64, offset: 384)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !187, line: 76, size: 832, elements: !4817)
!4817 = !{!4818, !4819, !4820, !4823, !4824}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4816, file: !187, line: 77, baseType: !233, size: 64)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4816, file: !187, line: 78, baseType: !226, size: 128, offset: 64)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4816, file: !187, line: 79, baseType: !4821, size: 64, offset: 192)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !187, line: 79, flags: DIFlagFwdDecl)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4816, file: !187, line: 80, baseType: !304, size: 8, offset: 256)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4816, file: !187, line: 81, baseType: !321, size: 512, offset: 320)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !223, file: !187, line: 331, baseType: !7, size: 32, offset: 448)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !223, file: !187, line: 332, baseType: !313, size: 16, offset: 480)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !223, file: !187, line: 333, baseType: !313, size: 16, offset: 496)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !223, file: !187, line: 334, baseType: !313, size: 16, offset: 512)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !223, file: !187, line: 335, baseType: !313, size: 16, offset: 528)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !223, file: !187, line: 336, baseType: !7, size: 32, offset: 544)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !223, file: !187, line: 337, baseType: !362, size: 8, offset: 576)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !223, file: !187, line: 338, baseType: !362, size: 8, offset: 584)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !223, file: !187, line: 344, baseType: !4834, size: 64, offset: 640)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !187, line: 319, flags: DIFlagFwdDecl)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !223, file: !187, line: 345, baseType: !222, size: 64, offset: 704)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !223, file: !187, line: 347, baseType: !292, size: 32, offset: 768)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !223, file: !187, line: 348, baseType: !362, size: 8, offset: 800)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !223, file: !187, line: 349, baseType: !362, size: 8, offset: 808)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !223, file: !187, line: 350, baseType: !362, size: 8, offset: 816)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !223, file: !187, line: 351, baseType: !362, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !223, file: !187, line: 352, baseType: !362, size: 8, offset: 832)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !223, file: !187, line: 353, baseType: !362, size: 8, offset: 840)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !223, file: !187, line: 354, baseType: !369, size: 16, offset: 848)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !223, file: !187, line: 355, baseType: !1084, size: 64, offset: 896)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !223, file: !187, line: 357, baseType: !4847, size: 64, offset: 960)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !187, line: 918, size: 2368, elements: !4849)
!4849 = !{!4850, !4851, !4852, !4865, !4869, !4873, !4877, !4881, !4882, !4886, !4887, !4891, !4911, !4912, !4913, !4914, !4919}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4848, file: !187, line: 919, baseType: !226, size: 128)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4848, file: !187, line: 920, baseType: !258, size: 64, offset: 128)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4848, file: !187, line: 921, baseType: !4853, size: 64, offset: 192)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4855)
!4855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4329, line: 44, size: 320, elements: !4856)
!4856 = !{!4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4855, file: !4329, line: 45, baseType: !293, size: 32)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4855, file: !4329, line: 45, baseType: !293, size: 32, offset: 32)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4855, file: !4329, line: 46, baseType: !293, size: 32, offset: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4855, file: !4329, line: 46, baseType: !293, size: 32, offset: 96)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4855, file: !4329, line: 47, baseType: !293, size: 32, offset: 128)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4855, file: !4329, line: 47, baseType: !293, size: 32, offset: 160)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4855, file: !4329, line: 48, baseType: !4345, size: 64, offset: 192)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4855, file: !4329, line: 49, baseType: !293, size: 32, offset: 256)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4848, file: !187, line: 922, baseType: !4866, size: 64, offset: 256)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!103, !222, !4853}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4848, file: !187, line: 923, baseType: !4870, size: 64, offset: 320)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{null, !222}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4848, file: !187, line: 924, baseType: !4874, size: 64, offset: 384)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{!103, !222, !4356}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4848, file: !187, line: 925, baseType: !4878, size: 64, offset: 448)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!103, !222}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4848, file: !187, line: 926, baseType: !4870, size: 64, offset: 512)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4848, file: !187, line: 927, baseType: !4883, size: 64, offset: 576)
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DISubroutineType(types: !4885)
!4885 = !{!103, !222, !103}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4848, file: !187, line: 928, baseType: !4883, size: 64, offset: 640)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4848, file: !187, line: 929, baseType: !4888, size: 64, offset: 704)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DISubroutineType(types: !4890)
!4890 = !{!292, !222}
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4848, file: !187, line: 930, baseType: !4892, size: 64, offset: 768)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4894)
!4894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !187, line: 837, size: 448, elements: !4895)
!4895 = !{!4896, !4902, !4906, !4907, !4908, !4909, !4910}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4894, file: !187, line: 839, baseType: !4897, size: 64)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!4900, !222, !4901}
!4900 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !187, line: 814, baseType: !7)
!4901 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !187, line: 196, baseType: !7)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4894, file: !187, line: 843, baseType: !4903, size: 64, offset: 64)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!4900, !222}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4894, file: !187, line: 846, baseType: !4903, size: 64, offset: 128)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4894, file: !187, line: 849, baseType: !4870, size: 64, offset: 192)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4894, file: !187, line: 850, baseType: !4870, size: 64, offset: 256)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4894, file: !187, line: 853, baseType: !4870, size: 64, offset: 320)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4894, file: !187, line: 856, baseType: !4870, size: 64, offset: 384)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4848, file: !187, line: 931, baseType: !451, size: 64, offset: 832)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4848, file: !187, line: 932, baseType: !451, size: 64, offset: 896)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4848, file: !187, line: 933, baseType: !4317, size: 1152, offset: 960)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4848, file: !187, line: 934, baseType: !4915, size: 192, offset: 2112)
!4915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !187, line: 801, size: 192, elements: !4916)
!4916 = !{!4917, !4918}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4915, file: !187, line: 802, baseType: !334, size: 32)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4915, file: !187, line: 803, baseType: !226, size: 128, offset: 64)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4848, file: !187, line: 935, baseType: !815, size: 8, offset: 2304)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !223, file: !187, line: 358, baseType: !251, size: 64, offset: 1024)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !223, file: !187, line: 364, baseType: !4734, size: 128, offset: 1088)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !223, file: !187, line: 366, baseType: !4923, size: 32, offset: 1216)
!4923 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !187, line: 171, baseType: !103)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !223, file: !187, line: 369, baseType: !362, size: 8, offset: 1248)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !223, file: !187, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !223, file: !187, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !223, file: !187, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !223, file: !187, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !223, file: !187, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !223, file: !187, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !223, file: !187, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !223, file: !187, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !223, file: !187, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !223, file: !187, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !223, file: !187, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !223, file: !187, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !223, file: !187, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !223, file: !187, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !223, file: !187, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !223, file: !187, line: 390, baseType: !7, size: 32, offset: 1280)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !223, file: !187, line: 391, baseType: !7, size: 32, offset: 1312)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !223, file: !187, line: 394, baseType: !4943, size: 64, offset: 1344)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !187, line: 316, flags: DIFlagFwdDecl)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !223, file: !187, line: 395, baseType: !369, size: 16, offset: 1408)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !223, file: !187, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !223, file: !187, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !223, file: !187, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !223, file: !187, line: 402, baseType: !4901, size: 32, offset: 1440)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !223, file: !187, line: 403, baseType: !318, size: 5824, offset: 1472)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !223, file: !187, line: 405, baseType: !103, size: 32, offset: 7296)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !223, file: !187, line: 411, baseType: !7, size: 32, offset: 7328)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !223, file: !187, line: 412, baseType: !4954, size: 5632, offset: 7360)
!4954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 5632, elements: !4955)
!4955 = !{!4956}
!4956 = !DISubrange(count: 11)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !223, file: !187, line: 413, baseType: !245, size: 512, offset: 12992)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !223, file: !187, line: 415, baseType: !815, size: 8, offset: 13504)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !223, file: !187, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !223, file: !187, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !223, file: !187, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !223, file: !187, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !223, file: !187, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !223, file: !187, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !223, file: !187, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !223, file: !187, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !223, file: !187, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !223, file: !187, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !223, file: !187, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !223, file: !187, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !223, file: !187, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !223, file: !187, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !223, file: !187, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !223, file: !187, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !223, file: !187, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !223, file: !187, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !223, file: !187, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !223, file: !187, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !223, file: !187, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !223, file: !187, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !223, file: !187, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !223, file: !187, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !223, file: !187, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !223, file: !187, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !223, file: !187, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !223, file: !187, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !223, file: !187, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !223, file: !187, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !223, file: !187, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !223, file: !187, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !223, file: !187, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !223, file: !187, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !223, file: !187, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !223, file: !187, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !223, file: !187, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !223, file: !187, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !223, file: !187, line: 468, baseType: !4998, size: 16, offset: 13552)
!4998 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !187, line: 222, baseType: !313)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !223, file: !187, line: 469, baseType: !354, size: 32, offset: 13568)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !223, file: !187, line: 471, baseType: !334, size: 32, offset: 13600)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !223, file: !187, line: 472, baseType: !4656, size: 512, offset: 13632)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !223, file: !187, line: 473, baseType: !1103, size: 64, offset: 14144)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !223, file: !187, line: 474, baseType: !5004, size: 704, offset: 14208)
!5004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 704, elements: !4955)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !223, file: !187, line: 475, baseType: !5004, size: 704, offset: 14912)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !223, file: !187, line: 487, baseType: !221, size: 64, offset: 15616)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !223, file: !187, line: 488, baseType: !693, size: 32, offset: 15680)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !223, file: !187, line: 490, baseType: !5009, size: 320, offset: 15744)
!5009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !187, line: 309, size: 320, elements: !5010)
!5010 = !{!5011, !5012, !5013}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5009, file: !187, line: 310, baseType: !735, size: 256)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5009, file: !187, line: 311, baseType: !7, size: 32, offset: 256)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !5009, file: !187, line: 312, baseType: !362, size: 8, offset: 288)
!5014 = !DIDerivedType(tag: DW_TAG_member, scope: !223, file: !187, line: 497, baseType: !5015, size: 64, offset: 16064)
!5015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !223, file: !187, line: 497, size: 64, elements: !5016)
!5016 = !{!5017, !5020}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !5015, file: !187, line: 498, baseType: !5018, size: 64)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !187, line: 317, flags: DIFlagFwdDecl)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !5015, file: !187, line: 499, baseType: !222, size: 64)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !223, file: !187, line: 501, baseType: !369, size: 16, offset: 16128)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !223, file: !187, line: 502, baseType: !362, size: 8, offset: 16144)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !223, file: !187, line: 505, baseType: !369, size: 16, offset: 16160)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !223, file: !187, line: 506, baseType: !292, size: 32, offset: 16192)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !223, file: !187, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !223, file: !187, line: 510, baseType: !369, size: 16, offset: 16240)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !223, file: !187, line: 511, baseType: !369, size: 16, offset: 16256)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !223, file: !187, line: 519, baseType: !369, size: 16, offset: 16272)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !223, file: !187, line: 520, baseType: !250, size: 64, offset: 16320)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !223, file: !187, line: 521, baseType: !447, size: 64, offset: 16384)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !223, file: !187, line: 526, baseType: !258, size: 64, offset: 16448)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !223, file: !187, line: 528, baseType: !262, size: 64, offset: 16512)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !223, file: !187, line: 531, baseType: !5034, size: 56, offset: 16576)
!5034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 56, elements: !856)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_setup_rom", file: !5037, line: 127, size: 512, elements: !5038)
!5037 = !DIFile(filename: "./arch/x86/include/asm/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0155599d2137220fade7406d4b759f43")
!5038 = !{!5039, !5048, !5050, !5051, !5053, !5054, !5055, !5056, !5057}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5036, file: !5037, line: 128, baseType: !5040, size: 128)
!5040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_data", file: !5041, line: 53, size: 128, elements: !5042)
!5041 = !DIFile(filename: "./arch/x86/include/uapi/asm/bootparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c199ebf8ec5f27be76bf20ea05d3d919")
!5042 = !{!5043, !5044, !5045, !5046}
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5040, file: !5041, line: 54, baseType: !253, size: 64)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5040, file: !5041, line: 55, baseType: !293, size: 32, offset: 64)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5040, file: !5041, line: 56, baseType: !293, size: 32, offset: 96)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5040, file: !5041, line: 57, baseType: !5047, offset: 128)
!5047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, elements: !1885)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5036, file: !5037, line: 129, baseType: !5049, size: 16, offset: 128)
!5049 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !227, line: 109, baseType: !369)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "devid", scope: !5036, file: !5037, line: 130, baseType: !5049, size: 16, offset: 144)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "pcilen", scope: !5036, file: !5037, line: 131, baseType: !5052, size: 64, offset: 192)
!5052 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !227, line: 113, baseType: !251)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !5036, file: !5037, line: 132, baseType: !262, size: 64, offset: 256)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5036, file: !5037, line: 133, baseType: !262, size: 64, offset: 320)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5036, file: !5037, line: 134, baseType: !262, size: 64, offset: 384)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !5036, file: !5037, line: 135, baseType: !262, size: 64, offset: 448)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "romdata", scope: !5036, file: !5037, line: 136, baseType: !5058, offset: 512)
!5058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5059, elements: !1885)
!5059 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !227, line: 108, baseType: !362)
!5060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5063)
!5063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !4329, line: 587, size: 2752, elements: !5064)
!5064 = !{!5065, !5069, !5070, !5080}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !5063, file: !4329, line: 588, baseType: !5066, size: 64)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!103, !5061}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !5063, file: !4329, line: 589, baseType: !258, size: 64, offset: 64)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !5063, file: !4329, line: 590, baseType: !5071, size: 2560, offset: 128)
!5071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5072, size: 2560, elements: !267)
!5072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !4329, line: 581, size: 640, elements: !5073)
!5073 = !{!5074, !5075, !5076}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !5072, file: !4329, line: 582, baseType: !304, size: 7, flags: DIFlagBitField, extraData: i64 0)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !5072, file: !4329, line: 583, baseType: !304, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !5072, file: !4329, line: 584, baseType: !5077, size: 632, offset: 8)
!5077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 632, elements: !5078)
!5078 = !{!5079}
!5079 = !DISubrange(count: 79)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5063, file: !4329, line: 591, baseType: !221, size: 64, offset: 2688)
!5081 = !{!0, !5082, !5084, !5086, !5088, !5090, !5095, !5100, !5105, !5108, !5113, !5116, !5119, !5124, !5126, !5128, !5130, !5135, !5137, !5139, !5142, !5144, !5146, !5148, !5150, !5152, !5157, !5159, !5161, !5163, !5165, !5167, !5169, !5174, !5176, !5178, !5180, !5182, !5184, !5186, !5188, !5202, !5204, !5209, !5211, !5213, !5216, !5218, !5221, !5223, !5225, !5227, !5229, !5231, !5236, !5238, !5240, !5242, !5244, !5246, !5248, !5253, !5255, !5257, !5259, !5264, !5266, !5268, !5270, !5272, !5277, !5282, !5284}
!5082 = !DIGlobalVariableExpression(var: !5083, expr: !DIExpression())
!5083 = distinct !DIGlobalVariable(name: "noioapicreroute", scope: !2, file: !3, line: 31, type: !103, isLocal: false, isDefinition: true)
!5084 = !DIGlobalVariableExpression(var: !5085, expr: !DIExpression())
!5085 = distinct !DIGlobalVariable(name: "pcibios_last_bus", scope: !2, file: !3, line: 35, type: !103, isLocal: false, isDefinition: true)
!5086 = !DIGlobalVariableExpression(var: !5087, expr: !DIExpression())
!5087 = distinct !DIGlobalVariable(name: "pci_root_ops", scope: !2, file: !3, line: 72, type: !273, isLocal: false, isDefinition: true)
!5088 = !DIGlobalVariableExpression(var: !5089, expr: !DIExpression())
!5089 = distinct !DIGlobalVariable(name: "pci_config_lock", scope: !2, file: !3, line: 81, type: !693, isLocal: false, isDefinition: true)
!5090 = !DIGlobalVariableExpression(var: !5091, expr: !DIExpression())
!5091 = distinct !DIGlobalVariable(scope: null, file: !3, line: 466, type: !5092, isLocal: true, isDefinition: true)
!5092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 280, elements: !5093)
!5093 = !{!5094}
!5094 = !DISubrange(count: 35)
!5095 = !DIGlobalVariableExpression(var: !5096, expr: !DIExpression())
!5096 = distinct !DIGlobalVariable(scope: null, file: !3, line: 471, type: !5097, isLocal: true, isDefinition: true)
!5097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 320, elements: !5098)
!5098 = !{!5099}
!5099 = !DISubrange(count: 40)
!5100 = !DIGlobalVariableExpression(var: !5101, expr: !DIExpression())
!5101 = distinct !DIGlobalVariable(scope: null, file: !3, line: 493, type: !5102, isLocal: true, isDefinition: true)
!5102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 352, elements: !5103)
!5103 = !{!5104}
!5104 = !DISubrange(count: 44)
!5105 = !DIGlobalVariableExpression(var: !5106, expr: !DIExpression())
!5106 = distinct !DIGlobalVariable(scope: null, file: !3, line: 497, type: !5107, isLocal: true, isDefinition: true)
!5107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 416, elements: !2603)
!5108 = !DIGlobalVariableExpression(var: !5109, expr: !DIExpression())
!5109 = distinct !DIGlobalVariable(scope: null, file: !3, line: 504, type: !5110, isLocal: true, isDefinition: true)
!5110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 288, elements: !5111)
!5111 = !{!5112}
!5112 = !DISubrange(count: 36)
!5113 = !DIGlobalVariableExpression(var: !5114, expr: !DIExpression())
!5114 = distinct !DIGlobalVariable(scope: null, file: !3, line: 518, type: !5115, isLocal: true, isDefinition: true)
!5115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 32, elements: !267)
!5116 = !DIGlobalVariableExpression(var: !5117, expr: !DIExpression())
!5117 = distinct !DIGlobalVariable(scope: null, file: !3, line: 521, type: !5118, isLocal: true, isDefinition: true)
!5118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 56, elements: !856)
!5119 = !DIGlobalVariableExpression(var: !5120, expr: !DIExpression())
!5120 = distinct !DIGlobalVariable(scope: null, file: !3, line: 524, type: !5121, isLocal: true, isDefinition: true)
!5121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 72, elements: !5122)
!5122 = !{!5123}
!5123 = !DISubrange(count: 9)
!5124 = !DIGlobalVariableExpression(var: !5125, expr: !DIExpression())
!5125 = distinct !DIGlobalVariable(scope: null, file: !3, line: 544, type: !1967, isLocal: true, isDefinition: true)
!5126 = !DIGlobalVariableExpression(var: !5127, expr: !DIExpression())
!5127 = distinct !DIGlobalVariable(scope: null, file: !3, line: 548, type: !1967, isLocal: true, isDefinition: true)
!5128 = !DIGlobalVariableExpression(var: !5129, expr: !DIExpression())
!5129 = distinct !DIGlobalVariable(scope: null, file: !3, line: 554, type: !5121, isLocal: true, isDefinition: true)
!5130 = !DIGlobalVariableExpression(var: !5131, expr: !DIExpression())
!5131 = distinct !DIGlobalVariable(scope: null, file: !3, line: 558, type: !5132, isLocal: true, isDefinition: true)
!5132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 192, elements: !5133)
!5133 = !{!5134}
!5134 = !DISubrange(count: 24)
!5135 = !DIGlobalVariableExpression(var: !5136, expr: !DIExpression())
!5136 = distinct !DIGlobalVariable(scope: null, file: !3, line: 563, type: !5118, isLocal: true, isDefinition: true)
!5137 = !DIGlobalVariableExpression(var: !5138, expr: !DIExpression())
!5138 = distinct !DIGlobalVariable(scope: null, file: !3, line: 567, type: !3136, isLocal: true, isDefinition: true)
!5139 = !DIGlobalVariableExpression(var: !5140, expr: !DIExpression())
!5140 = distinct !DIGlobalVariable(scope: null, file: !3, line: 571, type: !5141, isLocal: true, isDefinition: true)
!5141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 96, elements: !3469)
!5142 = !DIGlobalVariableExpression(var: !5143, expr: !DIExpression())
!5143 = distinct !DIGlobalVariable(scope: null, file: !3, line: 574, type: !5121, isLocal: true, isDefinition: true)
!5144 = !DIGlobalVariableExpression(var: !5145, expr: !DIExpression())
!5145 = distinct !DIGlobalVariable(scope: null, file: !3, line: 577, type: !5121, isLocal: true, isDefinition: true)
!5146 = !DIGlobalVariableExpression(var: !5147, expr: !DIExpression())
!5147 = distinct !DIGlobalVariable(scope: null, file: !3, line: 580, type: !5115, isLocal: true, isDefinition: true)
!5148 = !DIGlobalVariableExpression(var: !5149, expr: !DIExpression())
!5149 = distinct !DIGlobalVariable(scope: null, file: !3, line: 583, type: !1967, isLocal: true, isDefinition: true)
!5150 = !DIGlobalVariableExpression(var: !5151, expr: !DIExpression())
!5151 = distinct !DIGlobalVariable(scope: null, file: !3, line: 586, type: !1967, isLocal: true, isDefinition: true)
!5152 = !DIGlobalVariableExpression(var: !5153, expr: !DIExpression())
!5153 = distinct !DIGlobalVariable(scope: null, file: !3, line: 589, type: !5154, isLocal: true, isDefinition: true)
!5154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 112, elements: !5155)
!5155 = !{!5156}
!5156 = !DISubrange(count: 14)
!5157 = !DIGlobalVariableExpression(var: !5158, expr: !DIExpression())
!5158 = distinct !DIGlobalVariable(scope: null, file: !3, line: 592, type: !3136, isLocal: true, isDefinition: true)
!5159 = !DIGlobalVariableExpression(var: !5160, expr: !DIExpression())
!5160 = distinct !DIGlobalVariable(scope: null, file: !3, line: 595, type: !1967, isLocal: true, isDefinition: true)
!5161 = !DIGlobalVariableExpression(var: !5162, expr: !DIExpression())
!5162 = distinct !DIGlobalVariable(scope: null, file: !3, line: 598, type: !5121, isLocal: true, isDefinition: true)
!5163 = !DIGlobalVariableExpression(var: !5164, expr: !DIExpression())
!5164 = distinct !DIGlobalVariable(scope: null, file: !3, line: 602, type: !3136, isLocal: true, isDefinition: true)
!5165 = !DIGlobalVariableExpression(var: !5166, expr: !DIExpression())
!5166 = distinct !DIGlobalVariable(scope: null, file: !3, line: 607, type: !2814, isLocal: true, isDefinition: true)
!5167 = !DIGlobalVariableExpression(var: !5168, expr: !DIExpression())
!5168 = distinct !DIGlobalVariable(scope: null, file: !3, line: 611, type: !5121, isLocal: true, isDefinition: true)
!5169 = !DIGlobalVariableExpression(var: !5170, expr: !DIExpression())
!5170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 614, type: !5171, isLocal: true, isDefinition: true)
!5171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 120, elements: !5172)
!5172 = !{!5173}
!5173 = !DISubrange(count: 15)
!5174 = !DIGlobalVariableExpression(var: !5175, expr: !DIExpression())
!5175 = distinct !DIGlobalVariable(scope: null, file: !3, line: 617, type: !5154, isLocal: true, isDefinition: true)
!5176 = !DIGlobalVariableExpression(var: !5177, expr: !DIExpression())
!5177 = distinct !DIGlobalVariable(scope: null, file: !3, line: 620, type: !5154, isLocal: true, isDefinition: true)
!5178 = !DIGlobalVariableExpression(var: !5179, expr: !DIExpression())
!5179 = distinct !DIGlobalVariable(scope: null, file: !3, line: 624, type: !2814, isLocal: true, isDefinition: true)
!5180 = !DIGlobalVariableExpression(var: !5181, expr: !DIExpression())
!5181 = distinct !DIGlobalVariable(name: "pci_bf_sort", scope: !2, file: !3, line: 27, type: !103, isLocal: true, isDefinition: true)
!5182 = !DIGlobalVariableExpression(var: !5183, expr: !DIExpression())
!5183 = distinct !DIGlobalVariable(name: "pci_routeirq", scope: !2, file: !3, line: 28, type: !103, isLocal: false, isDefinition: true)
!5184 = !DIGlobalVariableExpression(var: !5185, expr: !DIExpression())
!5185 = distinct !DIGlobalVariable(name: "noioapicquirk", scope: !2, file: !3, line: 29, type: !103, isLocal: false, isDefinition: true)
!5186 = !DIGlobalVariableExpression(var: !5187, expr: !DIExpression())
!5187 = distinct !DIGlobalVariable(name: "pirq_table_addr", scope: !2, file: !3, line: 36, type: !262, isLocal: false, isDefinition: true)
!5188 = !DIGlobalVariableExpression(var: !5189, expr: !DIExpression())
!5189 = distinct !DIGlobalVariable(name: "raw_pci_ops", scope: !2, file: !3, line: 37, type: !5190, isLocal: false, isDefinition: true)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5192)
!5192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_raw_ops", file: !167, line: 118, size: 128, elements: !5193)
!5193 = !{!5194, !5198}
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5192, file: !167, line: 119, baseType: !5195, size: 64)
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5196 = !DISubroutineType(types: !5197)
!5197 = !{!103, !7, !7, !7, !103, !103, !291}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5192, file: !167, line: 121, baseType: !5199, size: 64, offset: 64)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{!103, !7, !7, !7, !103, !103, !292}
!5202 = !DIGlobalVariableExpression(var: !5203, expr: !DIExpression())
!5203 = distinct !DIGlobalVariable(name: "raw_pci_ext_ops", scope: !2, file: !3, line: 38, type: !5190, isLocal: false, isDefinition: true)
!5204 = !DIGlobalVariableExpression(var: !5205, expr: !DIExpression())
!5205 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !5206, isLocal: true, isDefinition: true)
!5206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 136, elements: !5207)
!5207 = !{!5208}
!5208 = !DISubrange(count: 17)
!5209 = !DIGlobalVariableExpression(var: !5210, expr: !DIExpression())
!5210 = distinct !DIGlobalVariable(scope: null, file: !3, line: 105, type: !5206, isLocal: true, isDefinition: true)
!5211 = !DIGlobalVariableExpression(var: !5212, expr: !DIExpression())
!5212 = distinct !DIGlobalVariable(scope: null, file: !3, line: 113, type: !5206, isLocal: true, isDefinition: true)
!5213 = !DIGlobalVariableExpression(var: !5214, expr: !DIExpression())
!5214 = distinct !DIGlobalVariable(name: "can_skip_pciprobe_dmi_table", scope: !2, file: !3, line: 90, type: !5215, isLocal: true, isDefinition: true)
!5215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5062, size: 11008, elements: !267)
!5216 = !DIGlobalVariableExpression(var: !5217, expr: !DIExpression())
!5217 = distinct !DIGlobalVariable(scope: null, file: !3, line: 86, type: !5102, isLocal: true, isDefinition: true)
!5218 = !DIGlobalVariableExpression(var: !5219, expr: !DIExpression())
!5219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 251, type: !5220, isLocal: true, isDefinition: true)
!5220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 160, elements: !3436)
!5221 = !DIGlobalVariableExpression(var: !5222, expr: !DIExpression())
!5222 = distinct !DIGlobalVariable(scope: null, file: !3, line: 259, type: !5220, isLocal: true, isDefinition: true)
!5223 = !DIGlobalVariableExpression(var: !5224, expr: !DIExpression())
!5224 = distinct !DIGlobalVariable(scope: null, file: !3, line: 267, type: !5220, isLocal: true, isDefinition: true)
!5225 = !DIGlobalVariableExpression(var: !5226, expr: !DIExpression())
!5226 = distinct !DIGlobalVariable(scope: null, file: !3, line: 275, type: !5220, isLocal: true, isDefinition: true)
!5227 = !DIGlobalVariableExpression(var: !5228, expr: !DIExpression())
!5228 = distinct !DIGlobalVariable(scope: null, file: !3, line: 283, type: !5220, isLocal: true, isDefinition: true)
!5229 = !DIGlobalVariableExpression(var: !5230, expr: !DIExpression())
!5230 = distinct !DIGlobalVariable(scope: null, file: !3, line: 291, type: !5141, isLocal: true, isDefinition: true)
!5231 = !DIGlobalVariableExpression(var: !5232, expr: !DIExpression())
!5232 = distinct !DIGlobalVariable(scope: null, file: !3, line: 298, type: !5233, isLocal: true, isDefinition: true)
!5233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 168, elements: !5234)
!5234 = !{!5235}
!5235 = !DISubrange(count: 21)
!5236 = !DIGlobalVariableExpression(var: !5237, expr: !DIExpression())
!5237 = distinct !DIGlobalVariable(scope: null, file: !3, line: 306, type: !5233, isLocal: true, isDefinition: true)
!5238 = !DIGlobalVariableExpression(var: !5239, expr: !DIExpression())
!5239 = distinct !DIGlobalVariable(scope: null, file: !3, line: 314, type: !5233, isLocal: true, isDefinition: true)
!5240 = !DIGlobalVariableExpression(var: !5241, expr: !DIExpression())
!5241 = distinct !DIGlobalVariable(scope: null, file: !3, line: 322, type: !5233, isLocal: true, isDefinition: true)
!5242 = !DIGlobalVariableExpression(var: !5243, expr: !DIExpression())
!5243 = distinct !DIGlobalVariable(scope: null, file: !3, line: 330, type: !5233, isLocal: true, isDefinition: true)
!5244 = !DIGlobalVariableExpression(var: !5245, expr: !DIExpression())
!5245 = distinct !DIGlobalVariable(scope: null, file: !3, line: 338, type: !5233, isLocal: true, isDefinition: true)
!5246 = !DIGlobalVariableExpression(var: !5247, expr: !DIExpression())
!5247 = distinct !DIGlobalVariable(scope: null, file: !3, line: 346, type: !5233, isLocal: true, isDefinition: true)
!5248 = !DIGlobalVariableExpression(var: !5249, expr: !DIExpression())
!5249 = distinct !DIGlobalVariable(scope: null, file: !3, line: 354, type: !5250, isLocal: true, isDefinition: true)
!5250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 176, elements: !5251)
!5251 = !{!5252}
!5252 = !DISubrange(count: 22)
!5253 = !DIGlobalVariableExpression(var: !5254, expr: !DIExpression())
!5254 = distinct !DIGlobalVariable(scope: null, file: !3, line: 362, type: !5250, isLocal: true, isDefinition: true)
!5255 = !DIGlobalVariableExpression(var: !5256, expr: !DIExpression())
!5256 = distinct !DIGlobalVariable(scope: null, file: !3, line: 370, type: !5250, isLocal: true, isDefinition: true)
!5257 = !DIGlobalVariableExpression(var: !5258, expr: !DIExpression())
!5258 = distinct !DIGlobalVariable(scope: null, file: !3, line: 378, type: !5250, isLocal: true, isDefinition: true)
!5259 = !DIGlobalVariableExpression(var: !5260, expr: !DIExpression())
!5260 = distinct !DIGlobalVariable(scope: null, file: !3, line: 386, type: !5261, isLocal: true, isDefinition: true)
!5261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 144, elements: !5262)
!5262 = !{!5263}
!5263 = !DISubrange(count: 18)
!5264 = !DIGlobalVariableExpression(var: !5265, expr: !DIExpression())
!5265 = distinct !DIGlobalVariable(scope: null, file: !3, line: 394, type: !5261, isLocal: true, isDefinition: true)
!5266 = !DIGlobalVariableExpression(var: !5267, expr: !DIExpression())
!5267 = distinct !DIGlobalVariable(scope: null, file: !3, line: 412, type: !5233, isLocal: true, isDefinition: true)
!5268 = !DIGlobalVariableExpression(var: !5269, expr: !DIExpression())
!5269 = distinct !DIGlobalVariable(scope: null, file: !3, line: 420, type: !5233, isLocal: true, isDefinition: true)
!5270 = !DIGlobalVariableExpression(var: !5271, expr: !DIExpression())
!5271 = distinct !DIGlobalVariable(scope: null, file: !3, line: 428, type: !5233, isLocal: true, isDefinition: true)
!5272 = !DIGlobalVariableExpression(var: !5273, expr: !DIExpression())
!5273 = distinct !DIGlobalVariable(name: "pciprobe_dmi_table", scope: !2, file: !3, line: 235, type: !5274, isLocal: true, isDefinition: true)
!5274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5062, size: 68800, elements: !5275)
!5275 = !{!5276}
!5276 = !DISubrange(count: 25)
!5277 = !DIGlobalVariableExpression(var: !5278, expr: !DIExpression())
!5278 = distinct !DIGlobalVariable(scope: null, file: !3, line: 192, type: !5279, isLocal: true, isDefinition: true)
!5279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 336, elements: !5280)
!5280 = !{!5281}
!5281 = !DISubrange(count: 42)
!5282 = !DIGlobalVariableExpression(var: !5283, expr: !DIExpression())
!5283 = distinct !DIGlobalVariable(scope: null, file: !3, line: 229, type: !309, isLocal: true, isDefinition: true)
!5284 = !DIGlobalVariableExpression(var: !5285, expr: !DIExpression())
!5285 = distinct !DIGlobalVariable(scope: null, file: !211, line: 480, type: !5233, isLocal: true, isDefinition: true)
!5286 = !{i32 7, !"Dwarf Version", i32 5}
!5287 = !{i32 2, !"Debug Info Version", i32 3}
!5288 = !{i32 1, !"wchar_size", i32 2}
!5289 = !{i32 8, !"cf-protection-branch", i32 1}
!5290 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5291 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5292 = !{i32 1, !"Code Model", i32 2}
!5293 = !{i32 1, !"override-stack-alignment", i32 8}
!5294 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5295 = distinct !DISubprogram(name: "raw_pci_read", scope: !3, file: !3, line: 40, type: !5196, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5296)
!5296 = !{!5297, !5298, !5299, !5300, !5301, !5302}
!5297 = !DILocalVariable(name: "domain", arg: 1, scope: !5295, file: !3, line: 40, type: !7)
!5298 = !DILocalVariable(name: "bus", arg: 2, scope: !5295, file: !3, line: 40, type: !7)
!5299 = !DILocalVariable(name: "devfn", arg: 3, scope: !5295, file: !3, line: 40, type: !7)
!5300 = !DILocalVariable(name: "reg", arg: 4, scope: !5295, file: !3, line: 41, type: !103)
!5301 = !DILocalVariable(name: "len", arg: 5, scope: !5295, file: !3, line: 41, type: !103)
!5302 = !DILocalVariable(name: "val", arg: 6, scope: !5295, file: !3, line: 41, type: !291)
!5303 = !DILocation(line: 40, column: 31, scope: !5295)
!5304 = !DILocation(line: 40, column: 52, scope: !5295)
!5305 = !DILocation(line: 40, column: 70, scope: !5295)
!5306 = !DILocation(line: 41, column: 11, scope: !5295)
!5307 = !DILocation(line: 41, column: 20, scope: !5295)
!5308 = !DILocation(line: 41, column: 30, scope: !5295)
!5309 = !DILocation(line: 43, column: 6, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 43, column: 6)
!5311 = !DILocation(line: 43, column: 13, scope: !5310)
!5312 = !DILocation(line: 43, column: 18, scope: !5310)
!5313 = !DILocation(line: 43, column: 21, scope: !5310)
!5314 = !DILocation(line: 43, column: 25, scope: !5310)
!5315 = !DILocation(line: 43, column: 31, scope: !5310)
!5316 = !DILocation(line: 43, column: 34, scope: !5310)
!5317 = !DILocation(line: 43, column: 6, scope: !5295)
!5318 = !DILocation(line: 44, column: 10, scope: !5310)
!5319 = !DILocation(line: 44, column: 23, scope: !5310)
!5320 = !DILocation(line: 44, column: 28, scope: !5310)
!5321 = !DILocation(line: 44, column: 36, scope: !5310)
!5322 = !DILocation(line: 44, column: 41, scope: !5310)
!5323 = !DILocation(line: 44, column: 48, scope: !5310)
!5324 = !DILocation(line: 44, column: 53, scope: !5310)
!5325 = !DILocation(line: 44, column: 58, scope: !5310)
!5326 = !DILocation(line: 44, column: 3, scope: !5310)
!5327 = !DILocation(line: 45, column: 6, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 45, column: 6)
!5329 = !DILocation(line: 45, column: 6, scope: !5295)
!5330 = !DILocation(line: 46, column: 10, scope: !5328)
!5331 = !DILocation(line: 46, column: 27, scope: !5328)
!5332 = !DILocation(line: 46, column: 32, scope: !5328)
!5333 = !DILocation(line: 46, column: 40, scope: !5328)
!5334 = !DILocation(line: 46, column: 45, scope: !5328)
!5335 = !DILocation(line: 46, column: 52, scope: !5328)
!5336 = !DILocation(line: 46, column: 57, scope: !5328)
!5337 = !DILocation(line: 46, column: 62, scope: !5328)
!5338 = !DILocation(line: 46, column: 3, scope: !5328)
!5339 = !DILocation(line: 47, column: 2, scope: !5295)
!5340 = !DILocation(line: 48, column: 1, scope: !5295)
!5341 = distinct !DISubprogram(name: "raw_pci_write", scope: !3, file: !3, line: 50, type: !5200, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5342)
!5342 = !{!5343, !5344, !5345, !5346, !5347, !5348}
!5343 = !DILocalVariable(name: "domain", arg: 1, scope: !5341, file: !3, line: 50, type: !7)
!5344 = !DILocalVariable(name: "bus", arg: 2, scope: !5341, file: !3, line: 50, type: !7)
!5345 = !DILocalVariable(name: "devfn", arg: 3, scope: !5341, file: !3, line: 50, type: !7)
!5346 = !DILocalVariable(name: "reg", arg: 4, scope: !5341, file: !3, line: 51, type: !103)
!5347 = !DILocalVariable(name: "len", arg: 5, scope: !5341, file: !3, line: 51, type: !103)
!5348 = !DILocalVariable(name: "val", arg: 6, scope: !5341, file: !3, line: 51, type: !292)
!5349 = !DILocation(line: 50, column: 32, scope: !5341)
!5350 = !DILocation(line: 50, column: 53, scope: !5341)
!5351 = !DILocation(line: 50, column: 71, scope: !5341)
!5352 = !DILocation(line: 51, column: 11, scope: !5341)
!5353 = !DILocation(line: 51, column: 20, scope: !5341)
!5354 = !DILocation(line: 51, column: 29, scope: !5341)
!5355 = !DILocation(line: 53, column: 6, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 53, column: 6)
!5357 = !DILocation(line: 53, column: 13, scope: !5356)
!5358 = !DILocation(line: 53, column: 18, scope: !5356)
!5359 = !DILocation(line: 53, column: 21, scope: !5356)
!5360 = !DILocation(line: 53, column: 25, scope: !5356)
!5361 = !DILocation(line: 53, column: 31, scope: !5356)
!5362 = !DILocation(line: 53, column: 34, scope: !5356)
!5363 = !DILocation(line: 53, column: 6, scope: !5341)
!5364 = !DILocation(line: 54, column: 10, scope: !5356)
!5365 = !DILocation(line: 54, column: 23, scope: !5356)
!5366 = !DILocation(line: 54, column: 29, scope: !5356)
!5367 = !DILocation(line: 54, column: 37, scope: !5356)
!5368 = !DILocation(line: 54, column: 42, scope: !5356)
!5369 = !DILocation(line: 54, column: 49, scope: !5356)
!5370 = !DILocation(line: 54, column: 54, scope: !5356)
!5371 = !DILocation(line: 54, column: 59, scope: !5356)
!5372 = !DILocation(line: 54, column: 3, scope: !5356)
!5373 = !DILocation(line: 55, column: 6, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 55, column: 6)
!5375 = !DILocation(line: 55, column: 6, scope: !5341)
!5376 = !DILocation(line: 56, column: 10, scope: !5374)
!5377 = !DILocation(line: 56, column: 27, scope: !5374)
!5378 = !DILocation(line: 56, column: 33, scope: !5374)
!5379 = !DILocation(line: 56, column: 41, scope: !5374)
!5380 = !DILocation(line: 56, column: 46, scope: !5374)
!5381 = !DILocation(line: 56, column: 53, scope: !5374)
!5382 = !DILocation(line: 56, column: 58, scope: !5374)
!5383 = !DILocation(line: 56, column: 63, scope: !5374)
!5384 = !DILocation(line: 56, column: 3, scope: !5374)
!5385 = !DILocation(line: 57, column: 2, scope: !5341)
!5386 = !DILocation(line: 58, column: 1, scope: !5341)
!5387 = distinct !DISubprogram(name: "pci_read", scope: !3, file: !3, line: 60, type: !289, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5388)
!5388 = !{!5389, !5390, !5391, !5392, !5393}
!5389 = !DILocalVariable(name: "bus", arg: 1, scope: !5387, file: !3, line: 60, type: !233)
!5390 = !DILocalVariable(name: "devfn", arg: 2, scope: !5387, file: !3, line: 60, type: !7)
!5391 = !DILocalVariable(name: "where", arg: 3, scope: !5387, file: !3, line: 60, type: !103)
!5392 = !DILocalVariable(name: "size", arg: 4, scope: !5387, file: !3, line: 60, type: !103)
!5393 = !DILocalVariable(name: "value", arg: 5, scope: !5387, file: !3, line: 60, type: !291)
!5394 = !DILocation(line: 60, column: 37, scope: !5387)
!5395 = !DILocation(line: 60, column: 55, scope: !5387)
!5396 = !DILocation(line: 60, column: 66, scope: !5387)
!5397 = !DILocation(line: 60, column: 77, scope: !5387)
!5398 = !DILocation(line: 60, column: 88, scope: !5387)
!5399 = !DILocation(line: 62, column: 36, scope: !5387)
!5400 = !DILocation(line: 62, column: 22, scope: !5387)
!5401 = !DILocation(line: 62, column: 42, scope: !5387)
!5402 = !DILocation(line: 62, column: 47, scope: !5387)
!5403 = !DILocation(line: 63, column: 6, scope: !5387)
!5404 = !DILocation(line: 63, column: 13, scope: !5387)
!5405 = !DILocation(line: 63, column: 20, scope: !5387)
!5406 = !DILocation(line: 63, column: 26, scope: !5387)
!5407 = !DILocation(line: 62, column: 9, scope: !5387)
!5408 = !DILocation(line: 62, column: 2, scope: !5387)
!5409 = distinct !DISubprogram(name: "pci_write", scope: !3, file: !3, line: 66, type: !296, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5410)
!5410 = !{!5411, !5412, !5413, !5414, !5415}
!5411 = !DILocalVariable(name: "bus", arg: 1, scope: !5409, file: !3, line: 66, type: !233)
!5412 = !DILocalVariable(name: "devfn", arg: 2, scope: !5409, file: !3, line: 66, type: !7)
!5413 = !DILocalVariable(name: "where", arg: 3, scope: !5409, file: !3, line: 66, type: !103)
!5414 = !DILocalVariable(name: "size", arg: 4, scope: !5409, file: !3, line: 66, type: !103)
!5415 = !DILocalVariable(name: "value", arg: 5, scope: !5409, file: !3, line: 66, type: !292)
!5416 = !DILocation(line: 66, column: 38, scope: !5409)
!5417 = !DILocation(line: 66, column: 56, scope: !5409)
!5418 = !DILocation(line: 66, column: 67, scope: !5409)
!5419 = !DILocation(line: 66, column: 78, scope: !5409)
!5420 = !DILocation(line: 66, column: 88, scope: !5409)
!5421 = !DILocation(line: 68, column: 37, scope: !5409)
!5422 = !DILocation(line: 68, column: 23, scope: !5409)
!5423 = !DILocation(line: 68, column: 43, scope: !5409)
!5424 = !DILocation(line: 68, column: 48, scope: !5409)
!5425 = !DILocation(line: 69, column: 7, scope: !5409)
!5426 = !DILocation(line: 69, column: 14, scope: !5409)
!5427 = !DILocation(line: 69, column: 21, scope: !5409)
!5428 = !DILocation(line: 69, column: 27, scope: !5409)
!5429 = !DILocation(line: 68, column: 9, scope: !5409)
!5430 = !DILocation(line: 68, column: 2, scope: !5409)
!5431 = distinct !DISubprogram(name: "dmi_check_skip_isa_align", scope: !3, file: !3, line: 122, type: !1098, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5432 = !DILocation(line: 124, column: 2, scope: !5431)
!5433 = !DILocation(line: 125, column: 1, scope: !5431)
!5434 = !DISubprogram(name: "dmi_check_system", scope: !5435, file: !5435, line: 100, type: !5067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5435 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!5436 = distinct !DISubprogram(name: "pcibios_fixup_bus", scope: !3, file: !3, line: 164, type: !281, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5437)
!5437 = !{!5438, !5439, !5440, !5443}
!5438 = !DILocalVariable(name: "b", arg: 1, scope: !5436, file: !3, line: 164, type: !233)
!5439 = !DILocalVariable(name: "dev", scope: !5436, file: !3, line: 166, type: !222)
!5440 = !DILocalVariable(name: "__mptr", scope: !5441, file: !3, line: 169, type: !221)
!5441 = distinct !DILexicalBlock(scope: !5442, file: !3, line: 169, column: 2)
!5442 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 169, column: 2)
!5443 = !DILocalVariable(name: "__mptr", scope: !5444, file: !3, line: 169, type: !221)
!5444 = distinct !DILexicalBlock(scope: !5445, file: !3, line: 169, column: 2)
!5445 = distinct !DILexicalBlock(scope: !5442, file: !3, line: 169, column: 2)
!5446 = !DILocation(line: 164, column: 40, scope: !5436)
!5447 = !DILocation(line: 166, column: 2, scope: !5436)
!5448 = !DILocation(line: 166, column: 18, scope: !5436)
!5449 = !DILocation(line: 168, column: 24, scope: !5436)
!5450 = !DILocation(line: 168, column: 2, scope: !5436)
!5451 = !DILocation(line: 169, column: 2, scope: !5441)
!5452 = !DILocation(line: 169, column: 2, scope: !5442)
!5453 = !DILocation(line: 169, column: 2, scope: !5445)
!5454 = !DILocation(line: 170, column: 34, scope: !5445)
!5455 = !DILocation(line: 170, column: 3, scope: !5445)
!5456 = !DILocation(line: 169, column: 2, scope: !5444)
!5457 = distinct !{!5457, !5452, !5458, !5459, !5460}
!5458 = !DILocation(line: 170, column: 37, scope: !5442)
!5459 = !{!"llvm.loop.mustprogress"}
!5460 = !{!"llvm.loop.unroll.disable"}
!5461 = !DILocation(line: 171, column: 1, scope: !5436)
!5462 = !DISubprogram(name: "pci_read_bridge_bases", scope: !187, file: !187, line: 1141, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5463 = distinct !DISubprogram(name: "pcibios_fixup_device_resources", scope: !3, file: !3, line: 127, type: !4871, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5464)
!5464 = !{!5465, !5466, !5467, !5468}
!5465 = !DILocalVariable(name: "dev", arg: 1, scope: !5463, file: !3, line: 127, type: !222)
!5466 = !DILocalVariable(name: "rom_r", scope: !5463, file: !3, line: 129, type: !244)
!5467 = !DILocalVariable(name: "bar_r", scope: !5463, file: !3, line: 130, type: !244)
!5468 = !DILocalVariable(name: "bar", scope: !5463, file: !3, line: 131, type: !103)
!5469 = !DILocation(line: 127, column: 60, scope: !5463)
!5470 = !DILocation(line: 129, column: 2, scope: !5463)
!5471 = !DILocation(line: 129, column: 19, scope: !5463)
!5472 = !DILocation(line: 129, column: 28, scope: !5463)
!5473 = !DILocation(line: 129, column: 33, scope: !5463)
!5474 = !DILocation(line: 130, column: 2, scope: !5463)
!5475 = !DILocation(line: 130, column: 19, scope: !5463)
!5476 = !DILocation(line: 131, column: 2, scope: !5463)
!5477 = !DILocation(line: 131, column: 6, scope: !5463)
!5478 = !DILocation(line: 133, column: 6, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 133, column: 6)
!5480 = !DILocation(line: 133, column: 16, scope: !5479)
!5481 = !DILocation(line: 133, column: 6, scope: !5463)
!5482 = !DILocation(line: 139, column: 12, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 139, column: 3)
!5484 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 133, column: 37)
!5485 = !DILocation(line: 139, column: 8, scope: !5483)
!5486 = !DILocation(line: 139, column: 17, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5483, file: !3, line: 139, column: 3)
!5488 = !DILocation(line: 139, column: 21, scope: !5487)
!5489 = !DILocation(line: 139, column: 3, scope: !5483)
!5490 = !DILocation(line: 140, column: 13, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 139, column: 48)
!5492 = !DILocation(line: 140, column: 18, scope: !5491)
!5493 = !DILocation(line: 140, column: 27, scope: !5491)
!5494 = !DILocation(line: 140, column: 10, scope: !5491)
!5495 = !DILocation(line: 141, column: 8, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 141, column: 8)
!5497 = !DILocation(line: 141, column: 15, scope: !5496)
!5498 = !DILocation(line: 141, column: 21, scope: !5496)
!5499 = !DILocation(line: 141, column: 26, scope: !5496)
!5500 = !DILocation(line: 141, column: 29, scope: !5496)
!5501 = !DILocation(line: 141, column: 36, scope: !5496)
!5502 = !DILocation(line: 141, column: 40, scope: !5496)
!5503 = !DILocation(line: 141, column: 8, scope: !5491)
!5504 = !DILocation(line: 142, column: 5, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5496, file: !3, line: 141, column: 46)
!5506 = !DILocation(line: 142, column: 12, scope: !5505)
!5507 = !DILocation(line: 142, column: 18, scope: !5505)
!5508 = !DILocation(line: 143, column: 5, scope: !5505)
!5509 = !DILocation(line: 143, column: 12, scope: !5505)
!5510 = !DILocation(line: 143, column: 16, scope: !5505)
!5511 = !DILocation(line: 144, column: 4, scope: !5505)
!5512 = !DILocation(line: 145, column: 3, scope: !5491)
!5513 = !DILocation(line: 139, column: 44, scope: !5487)
!5514 = !DILocation(line: 139, column: 3, scope: !5487)
!5515 = distinct !{!5515, !5489, !5516, !5459, !5460}
!5516 = !DILocation(line: 145, column: 3, scope: !5483)
!5517 = !DILocation(line: 146, column: 2, scope: !5484)
!5518 = !DILocation(line: 148, column: 6, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 148, column: 6)
!5520 = !DILocation(line: 148, column: 16, scope: !5519)
!5521 = !DILocation(line: 148, column: 6, scope: !5463)
!5522 = !DILocation(line: 149, column: 7, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 149, column: 7)
!5524 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 148, column: 37)
!5525 = !DILocation(line: 149, column: 14, scope: !5523)
!5526 = !DILocation(line: 149, column: 7, scope: !5524)
!5527 = !DILocation(line: 150, column: 4, scope: !5523)
!5528 = !DILocation(line: 151, column: 7, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 151, column: 7)
!5530 = !DILocation(line: 151, column: 14, scope: !5529)
!5531 = !DILocation(line: 151, column: 7, scope: !5524)
!5532 = !DILocation(line: 153, column: 4, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 151, column: 21)
!5534 = !DILocation(line: 155, column: 31, scope: !5524)
!5535 = !DILocation(line: 155, column: 38, scope: !5524)
!5536 = !DILocation(line: 155, column: 44, scope: !5524)
!5537 = !DILocation(line: 155, column: 18, scope: !5524)
!5538 = !DILocation(line: 155, column: 25, scope: !5524)
!5539 = !DILocation(line: 155, column: 29, scope: !5524)
!5540 = !DILocation(line: 155, column: 3, scope: !5524)
!5541 = !DILocation(line: 155, column: 10, scope: !5524)
!5542 = !DILocation(line: 155, column: 16, scope: !5524)
!5543 = !DILocation(line: 156, column: 2, scope: !5524)
!5544 = !DILocation(line: 157, column: 1, scope: !5463)
!5545 = distinct !DISubprogram(name: "pcibios_add_bus", scope: !3, file: !3, line: 173, type: !281, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5546)
!5546 = !{!5547}
!5547 = !DILocalVariable(name: "bus", arg: 1, scope: !5545, file: !3, line: 173, type: !233)
!5548 = !DILocation(line: 173, column: 38, scope: !5545)
!5549 = !DILocation(line: 175, column: 19, scope: !5545)
!5550 = !DILocation(line: 175, column: 2, scope: !5545)
!5551 = !DILocation(line: 176, column: 1, scope: !5545)
!5552 = !DISubprogram(name: "acpi_pci_add_bus", scope: !5553, file: !5553, line: 84, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5553 = !DIFile(filename: "./include/linux/pci-acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b056ae586c3e75421026b5d6c84c2668")
!5554 = distinct !DISubprogram(name: "pcibios_remove_bus", scope: !3, file: !3, line: 178, type: !281, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5555)
!5555 = !{!5556}
!5556 = !DILocalVariable(name: "bus", arg: 1, scope: !5554, file: !3, line: 178, type: !233)
!5557 = !DILocation(line: 178, column: 41, scope: !5554)
!5558 = !DILocation(line: 180, column: 22, scope: !5554)
!5559 = !DILocation(line: 180, column: 2, scope: !5554)
!5560 = !DILocation(line: 181, column: 1, scope: !5554)
!5561 = !DISubprogram(name: "acpi_pci_remove_bus", scope: !5553, file: !5553, line: 85, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5562 = distinct !DISubprogram(name: "dmi_check_pciprobe", scope: !3, file: !3, line: 453, type: !1098, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5563 = !DILocation(line: 455, column: 2, scope: !5562)
!5564 = !DILocation(line: 456, column: 1, scope: !5562)
!5565 = distinct !DISubprogram(name: "pcibios_scan_root", scope: !3, file: !3, line: 458, type: !3001, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5566)
!5566 = !{!5567, !5568, !5569, !5833}
!5567 = !DILocalVariable(name: "busnum", arg: 1, scope: !5565, file: !3, line: 458, type: !103)
!5568 = !DILocalVariable(name: "bus", scope: !5565, file: !3, line: 460, type: !233)
!5569 = !DILocalVariable(name: "sd", scope: !5565, file: !3, line: 461, type: !5570)
!5570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5571, size: 64)
!5571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sysdata", file: !5037, line: 15, size: 256, elements: !5572)
!5572 = !{!5573, !5574, !5575, !5831, !5832}
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5571, file: !5037, line: 16, baseType: !103, size: 32)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5571, file: !5037, line: 17, baseType: !103, size: 32, offset: 32)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "companion", scope: !5571, file: !5037, line: 19, baseType: !5576, size: 64, offset: 64)
!5576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64)
!5577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !5578, line: 367, size: 11200, elements: !5579)
!5578 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!5579 = !{!5580, !5581, !5582, !5585, !5586, !5587, !5588, !5597, !5615, !5686, !5716, !5740, !5761, !5765, !5774, !5806, !5820, !5824, !5825, !5826, !5827, !5828, !5829, !5830}
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !5577, file: !5578, line: 368, baseType: !292, size: 32)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !5577, file: !5578, line: 369, baseType: !103, size: 32, offset: 32)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !5577, file: !5578, line: 370, baseType: !5583, size: 64, offset: 64)
!5583 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !5584, line: 424, baseType: !221)
!5584 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5577, file: !5578, line: 371, baseType: !4530, size: 512, offset: 128)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !5577, file: !5578, line: 372, baseType: !226, size: 128, offset: 640)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !5577, file: !5578, line: 373, baseType: !226, size: 128, offset: 768)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5577, file: !5578, line: 374, baseType: !5589, size: 32, offset: 896)
!5589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !5578, line: 181, size: 32, elements: !5590)
!5590 = !{!5591, !5592, !5593, !5594, !5595, !5596}
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !5589, file: !5578, line: 182, baseType: !292, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5589, file: !5578, line: 183, baseType: !292, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !5589, file: !5578, line: 184, baseType: !292, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !5589, file: !5578, line: 185, baseType: !292, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !5589, file: !5578, line: 186, baseType: !292, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5589, file: !5578, line: 187, baseType: !292, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5577, file: !5578, line: 375, baseType: !5598, size: 32, offset: 928)
!5598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !5578, line: 192, size: 32, elements: !5599)
!5599 = !{!5600, !5601, !5602, !5603, !5604, !5605, !5606, !5607, !5608, !5609, !5610, !5611, !5612, !5613, !5614}
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !5598, file: !5578, line: 193, baseType: !292, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !5598, file: !5578, line: 194, baseType: !292, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !5598, file: !5578, line: 195, baseType: !292, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !5598, file: !5578, line: 196, baseType: !292, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !5598, file: !5578, line: 197, baseType: !292, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !5598, file: !5578, line: 198, baseType: !292, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !5598, file: !5578, line: 199, baseType: !292, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !5598, file: !5578, line: 200, baseType: !292, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !5598, file: !5578, line: 201, baseType: !292, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !5598, file: !5578, line: 202, baseType: !292, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !5598, file: !5578, line: 203, baseType: !292, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !5598, file: !5578, line: 204, baseType: !292, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !5598, file: !5578, line: 205, baseType: !292, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !5598, file: !5578, line: 206, baseType: !292, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5598, file: !5578, line: 207, baseType: !292, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !5577, file: !5578, line: 376, baseType: !5616, size: 960, offset: 960)
!5616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !5578, line: 238, size: 960, elements: !5617)
!5617 = !{!5618, !5620, !5621, !5629, !5631, !5632, !5633, !5635, !5637}
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !5616, file: !5578, line: 239, baseType: !5619, size: 64)
!5619 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !5578, line: 220, baseType: !3136)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !5616, file: !5578, line: 240, baseType: !103, size: 32, offset: 64)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5616, file: !5578, line: 241, baseType: !5622, size: 32, offset: 96)
!5622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !5578, line: 230, size: 32, elements: !5623)
!5623 = !{!5624, !5625, !5626, !5627, !5628}
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !5622, file: !5578, line: 231, baseType: !292, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !5622, file: !5578, line: 232, baseType: !292, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !5622, file: !5578, line: 233, baseType: !292, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !5622, file: !5578, line: 234, baseType: !292, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5622, file: !5578, line: 235, baseType: !292, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !5616, file: !5578, line: 242, baseType: !5630, size: 64, offset: 128)
!5630 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !5578, line: 221, baseType: !251)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !5616, file: !5578, line: 243, baseType: !400, size: 64, offset: 192)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5616, file: !5578, line: 244, baseType: !226, size: 128, offset: 256)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !5616, file: !5578, line: 245, baseType: !5634, size: 320, offset: 384)
!5634 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !5578, line: 222, baseType: !5097)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !5616, file: !5578, line: 246, baseType: !5636, size: 160, offset: 704)
!5636 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !5578, line: 223, baseType: !5220)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !5616, file: !5578, line: 247, baseType: !5638, size: 64, offset: 896)
!5638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5639, size: 64)
!5639 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !5584, line: 908, size: 192, elements: !5640)
!5640 = !{!5641, !5643, !5648, !5654, !5660, !5666, !5672, !5680}
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5639, file: !5584, line: 909, baseType: !5642, size: 32)
!5642 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !5584, line: 644, baseType: !292)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !5639, file: !5584, line: 913, baseType: !5644, size: 128)
!5644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5639, file: !5584, line: 910, size: 128, elements: !5645)
!5645 = !{!5646, !5647}
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5644, file: !5584, line: 911, baseType: !5642, size: 32)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5644, file: !5584, line: 912, baseType: !251, size: 64, offset: 64)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5639, file: !5584, line: 919, baseType: !5649, size: 128)
!5649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5639, file: !5584, line: 915, size: 128, elements: !5650)
!5650 = !{!5651, !5652, !5653}
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5649, file: !5584, line: 916, baseType: !5642, size: 32)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5649, file: !5584, line: 917, baseType: !292, size: 32, offset: 32)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5649, file: !5584, line: 918, baseType: !400, size: 64, offset: 64)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5639, file: !5584, line: 925, baseType: !5655, size: 128)
!5655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5639, file: !5584, line: 921, size: 128, elements: !5656)
!5656 = !{!5657, !5658, !5659}
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5655, file: !5584, line: 922, baseType: !5642, size: 32)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5655, file: !5584, line: 923, baseType: !292, size: 32, offset: 32)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5655, file: !5584, line: 924, baseType: !5060, size: 64, offset: 64)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !5639, file: !5584, line: 931, baseType: !5661, size: 128)
!5661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5639, file: !5584, line: 927, size: 128, elements: !5662)
!5662 = !{!5663, !5664, !5665}
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5661, file: !5584, line: 928, baseType: !5642, size: 32)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5661, file: !5584, line: 929, baseType: !292, size: 32, offset: 32)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !5661, file: !5584, line: 930, baseType: !5638, size: 64, offset: 64)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !5639, file: !5584, line: 937, baseType: !5667, size: 128)
!5667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5639, file: !5584, line: 933, size: 128, elements: !5668)
!5668 = !{!5669, !5670, !5671}
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5667, file: !5584, line: 934, baseType: !5642, size: 32)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !5667, file: !5584, line: 935, baseType: !5642, size: 32, offset: 32)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !5667, file: !5584, line: 936, baseType: !5583, size: 64, offset: 64)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !5639, file: !5584, line: 944, baseType: !5673, size: 192)
!5673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5639, file: !5584, line: 939, size: 192, elements: !5674)
!5674 = !{!5675, !5676, !5677, !5679}
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5673, file: !5584, line: 940, baseType: !5642, size: 32)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !5673, file: !5584, line: 941, baseType: !292, size: 32, offset: 32)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !5673, file: !5584, line: 942, baseType: !5678, size: 64, offset: 64)
!5678 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !5584, line: 128, baseType: !251)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !5673, file: !5584, line: 943, baseType: !292, size: 32, offset: 128)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !5639, file: !5584, line: 950, baseType: !5681, size: 96)
!5681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5639, file: !5584, line: 946, size: 96, elements: !5682)
!5682 = !{!5683, !5684, !5685}
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5681, file: !5584, line: 947, baseType: !5642, size: 32)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !5681, file: !5584, line: 948, baseType: !292, size: 32, offset: 32)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !5681, file: !5584, line: 949, baseType: !292, size: 32, offset: 64)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5577, file: !5578, line: 377, baseType: !5687, size: 1408, offset: 1920)
!5687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !5578, line: 280, size: 1408, elements: !5688)
!5688 = !{!5689, !5690, !5700, !5715}
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5687, file: !5578, line: 281, baseType: !103, size: 32)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5687, file: !5578, line: 282, baseType: !5691, size: 32, offset: 32)
!5691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !5578, line: 259, size: 32, elements: !5692)
!5692 = !{!5693, !5694, !5695, !5696, !5697, !5698, !5699}
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !5691, file: !5578, line: 260, baseType: !292, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !5691, file: !5578, line: 261, baseType: !292, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !5691, file: !5578, line: 262, baseType: !292, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !5691, file: !5578, line: 263, baseType: !292, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !5691, file: !5578, line: 264, baseType: !292, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !5691, file: !5578, line: 265, baseType: !292, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5691, file: !5578, line: 266, baseType: !292, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !5687, file: !5578, line: 283, baseType: !5701, size: 1280, offset: 64)
!5701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5702, size: 1280, elements: !5713)
!5702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !5578, line: 269, size: 256, elements: !5703)
!5703 = !{!5704, !5710, !5711, !5712}
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5702, file: !5578, line: 274, baseType: !5705, size: 8)
!5705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5702, file: !5578, line: 270, size: 8, elements: !5706)
!5706 = !{!5707, !5708, !5709}
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5705, file: !5578, line: 271, baseType: !362, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !5705, file: !5578, line: 272, baseType: !362, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5705, file: !5578, line: 273, baseType: !362, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5702, file: !5578, line: 275, baseType: !103, size: 32, offset: 32)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !5702, file: !5578, line: 276, baseType: !103, size: 32, offset: 64)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5702, file: !5578, line: 277, baseType: !226, size: 128, offset: 128)
!5713 = !{!5714}
!5714 = !DISubrange(count: 5)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !5687, file: !5578, line: 284, baseType: !362, size: 8, offset: 1344)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5577, file: !5578, line: 378, baseType: !5717, size: 640, offset: 3328)
!5717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !5578, line: 330, size: 640, elements: !5718)
!5718 = !{!5719, !5720, !5721, !5722, !5723, !5728, !5737, !5738, !5739}
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !5717, file: !5578, line: 331, baseType: !5583, size: 64)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !5717, file: !5578, line: 332, baseType: !251, size: 64, offset: 64)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !5717, file: !5578, line: 333, baseType: !251, size: 64, offset: 128)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5717, file: !5578, line: 334, baseType: !226, size: 128, offset: 192)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5717, file: !5578, line: 335, baseType: !5724, size: 8, offset: 320)
!5724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !5578, line: 320, size: 8, elements: !5725)
!5725 = !{!5726, !5727}
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5724, file: !5578, line: 321, baseType: !362, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !5724, file: !5578, line: 322, baseType: !362, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5717, file: !5578, line: 336, baseType: !5729, size: 128, offset: 384)
!5729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !5578, line: 325, size: 128, elements: !5730)
!5730 = !{!5731, !5736}
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5729, file: !5578, line: 326, baseType: !5732, size: 64)
!5732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5733, size: 64)
!5733 = !DISubroutineType(types: !5734)
!5734 = !{null, !5735}
!5735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5729, size: 64)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5729, file: !5578, line: 327, baseType: !317, size: 64, offset: 64)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !5717, file: !5578, line: 337, baseType: !4416, size: 64, offset: 512)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !5717, file: !5578, line: 338, baseType: !103, size: 32, offset: 576)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !5717, file: !5578, line: 339, baseType: !103, size: 32, offset: 608)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !5577, file: !5578, line: 379, baseType: !5741, size: 192, offset: 3968)
!5741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !5578, line: 312, size: 192, elements: !5742)
!5742 = !{!5743, !5744, !5748, !5749}
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5741, file: !5578, line: 313, baseType: !103, size: 32)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5741, file: !5578, line: 314, baseType: !5745, size: 8, offset: 32)
!5745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !5578, line: 298, size: 8, elements: !5746)
!5746 = !{!5747}
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5745, file: !5578, line: 299, baseType: !362, size: 8, flags: DIFlagBitField, extraData: i64 0)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !5741, file: !5578, line: 315, baseType: !103, size: 32, offset: 64)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !5741, file: !5578, line: 316, baseType: !5750, size: 64, offset: 128)
!5750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5751, size: 64)
!5751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !5578, line: 302, size: 64, elements: !5752)
!5752 = !{!5753, !5758, !5759, !5760}
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5751, file: !5578, line: 306, baseType: !5754, size: 8)
!5754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5751, file: !5578, line: 303, size: 8, elements: !5755)
!5755 = !{!5756, !5757}
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5754, file: !5578, line: 304, baseType: !362, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5754, file: !5578, line: 305, baseType: !362, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5751, file: !5578, line: 307, baseType: !362, size: 8, offset: 8)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !5751, file: !5578, line: 308, baseType: !362, size: 8, offset: 16)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !5751, file: !5578, line: 309, baseType: !103, size: 32, offset: 32)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5577, file: !5578, line: 380, baseType: !5762, size: 64, offset: 4160)
!5762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !5578, line: 212, size: 64, elements: !5763)
!5763 = !{!5764}
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5762, file: !5578, line: 213, baseType: !300, size: 64)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5577, file: !5578, line: 381, baseType: !5766, size: 384, offset: 4224)
!5766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !5578, line: 357, size: 384, elements: !5767)
!5767 = !{!5768, !5771, !5772, !5773}
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5766, file: !5578, line: 358, baseType: !5769, size: 64)
!5769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5770, size: 64)
!5770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5639)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5766, file: !5578, line: 359, baseType: !226, size: 128, offset: 64)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !5766, file: !5578, line: 360, baseType: !5769, size: 64, offset: 192)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !5766, file: !5578, line: 361, baseType: !226, size: 128, offset: 256)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5577, file: !5578, line: 382, baseType: !5775, size: 64, offset: 4608)
!5775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5776, size: 64)
!5776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !5578, line: 124, size: 1216, elements: !5777)
!5777 = !{!5778, !5779, !5780, !5785, !5789, !5793, !5794, !5795}
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5776, file: !5578, line: 125, baseType: !4339, size: 64)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !5776, file: !5578, line: 126, baseType: !226, size: 128, offset: 64)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5776, file: !5578, line: 127, baseType: !5781, size: 64, offset: 192)
!5781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5782, size: 64)
!5782 = !DISubroutineType(types: !5783)
!5783 = !{!815, !258, !5784}
!5784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !5776, file: !5578, line: 128, baseType: !5786, size: 64, offset: 256)
!5786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5787, size: 64)
!5787 = !DISubroutineType(types: !5788)
!5788 = !{!103, !5576, !4339}
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5776, file: !5578, line: 129, baseType: !5790, size: 64, offset: 320)
!5790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5791, size: 64)
!5791 = !DISubroutineType(types: !5792)
!5792 = !{null, !5576}
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !5776, file: !5578, line: 130, baseType: !4267, size: 64, offset: 384)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !5776, file: !5578, line: 131, baseType: !4267, size: 64, offset: 448)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !5776, file: !5578, line: 132, baseType: !5796, size: 704, offset: 512)
!5796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !5578, line: 110, size: 704, elements: !5797)
!5797 = !{!5798, !5799, !5803, !5804, !5805}
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5796, file: !5578, line: 111, baseType: !321, size: 512)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !5796, file: !5578, line: 112, baseType: !5800, size: 64, offset: 512)
!5800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5801, size: 64)
!5801 = !DISubroutineType(types: !5802)
!5802 = !{!103, !5576}
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !5796, file: !5578, line: 113, baseType: !5790, size: 64, offset: 576)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5796, file: !5578, line: 114, baseType: !815, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !5796, file: !5578, line: 115, baseType: !815, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !5577, file: !5578, line: 383, baseType: !5807, size: 64, offset: 4672)
!5807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5808, size: 64)
!5808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !5578, line: 140, size: 256, elements: !5809)
!5809 = !{!5810, !5811, !5815, !5819}
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !5808, file: !5578, line: 141, baseType: !5576, size: 64)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !5808, file: !5578, line: 142, baseType: !5812, size: 64, offset: 64)
!5812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5813, size: 64)
!5813 = !DISubroutineType(types: !5814)
!5814 = !{!103, !5576, !292}
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5808, file: !5578, line: 143, baseType: !5816, size: 64, offset: 128)
!5816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5817, size: 64)
!5817 = !DISubroutineType(types: !5818)
!5818 = !{null, !5576, !292}
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5808, file: !5578, line: 144, baseType: !5790, size: 64, offset: 192)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !5577, file: !5578, line: 384, baseType: !5821, size: 64, offset: 4736)
!5821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5822, size: 64)
!5822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5823)
!5823 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !5578, line: 364, flags: DIFlagFwdDecl)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5577, file: !5578, line: 385, baseType: !221, size: 64, offset: 4800)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5577, file: !5578, line: 386, baseType: !318, size: 5824, offset: 4864)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !5577, file: !5578, line: 387, baseType: !7, size: 32, offset: 10688)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !5577, file: !5578, line: 388, baseType: !7, size: 32, offset: 10720)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !5577, file: !5578, line: 389, baseType: !226, size: 128, offset: 10752)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !5577, file: !5578, line: 390, baseType: !735, size: 256, offset: 10880)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5577, file: !5578, line: 391, baseType: !5790, size: 64, offset: 11136)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !5571, file: !5037, line: 22, baseType: !221, size: 64, offset: 128)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5571, file: !5037, line: 25, baseType: !221, size: 64, offset: 192)
!5833 = !DILocalVariable(name: "resources", scope: !5565, file: !3, line: 462, type: !226)
!5834 = !DILocation(line: 458, column: 28, scope: !5565)
!5835 = !DILocation(line: 460, column: 2, scope: !5565)
!5836 = !DILocation(line: 460, column: 18, scope: !5565)
!5837 = !DILocation(line: 461, column: 2, scope: !5565)
!5838 = !DILocation(line: 461, column: 22, scope: !5565)
!5839 = !DILocation(line: 462, column: 2, scope: !5565)
!5840 = !DILocation(line: 464, column: 7, scope: !5565)
!5841 = !DILocation(line: 464, column: 5, scope: !5565)
!5842 = !DILocation(line: 465, column: 7, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5565, file: !3, line: 465, column: 6)
!5844 = !DILocation(line: 465, column: 6, scope: !5565)
!5845 = !DILocation(line: 466, column: 3, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 466, column: 3)
!5847 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 465, column: 11)
!5848 = !DILocation(line: 466, column: 3, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 466, column: 3)
!5850 = !DILocation(line: 467, column: 3, scope: !5847)
!5851 = !DILocation(line: 469, column: 35, scope: !5565)
!5852 = !DILocation(line: 469, column: 13, scope: !5565)
!5853 = !DILocation(line: 469, column: 2, scope: !5565)
!5854 = !DILocation(line: 469, column: 6, scope: !5565)
!5855 = !DILocation(line: 469, column: 11, scope: !5565)
!5856 = !DILocation(line: 470, column: 29, scope: !5565)
!5857 = !DILocation(line: 470, column: 2, scope: !5565)
!5858 = !DILocation(line: 471, column: 2, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5565, file: !3, line: 471, column: 2)
!5860 = !DILocation(line: 471, column: 2, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5859, file: !3, line: 471, column: 2)
!5862 = !DILocation(line: 472, column: 32, scope: !5565)
!5863 = !DILocation(line: 472, column: 55, scope: !5565)
!5864 = !DILocation(line: 472, column: 8, scope: !5565)
!5865 = !DILocation(line: 472, column: 6, scope: !5565)
!5866 = !DILocation(line: 473, column: 7, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5565, file: !3, line: 473, column: 6)
!5868 = !DILocation(line: 473, column: 6, scope: !5565)
!5869 = !DILocation(line: 474, column: 3, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5867, file: !3, line: 473, column: 12)
!5871 = !DILocation(line: 475, column: 9, scope: !5870)
!5872 = !DILocation(line: 475, column: 3, scope: !5870)
!5873 = !DILocation(line: 476, column: 3, scope: !5870)
!5874 = !DILocation(line: 478, column: 22, scope: !5565)
!5875 = !DILocation(line: 478, column: 2, scope: !5565)
!5876 = !DILocation(line: 479, column: 1, scope: !5565)
!5877 = distinct !DISubprogram(name: "kzalloc", scope: !211, file: !211, line: 719, type: !5878, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5880)
!5878 = !DISubroutineType(types: !5879)
!5879 = !{!221, !447, !1247}
!5880 = !{!5881, !5882}
!5881 = !DILocalVariable(name: "size", arg: 1, scope: !5877, file: !211, line: 719, type: !447)
!5882 = !DILocalVariable(name: "flags", arg: 2, scope: !5877, file: !211, line: 719, type: !1247)
!5883 = !DILocation(line: 719, column: 52, scope: !5877)
!5884 = !DILocation(line: 719, column: 64, scope: !5877)
!5885 = !DILocation(line: 721, column: 17, scope: !5877)
!5886 = !DILocation(line: 721, column: 23, scope: !5877)
!5887 = !DILocation(line: 721, column: 29, scope: !5877)
!5888 = !DILocation(line: 721, column: 9, scope: !5877)
!5889 = !DILocation(line: 721, column: 2, scope: !5877)
!5890 = !DISubprogram(name: "_printk", scope: !5891, file: !5891, line: 153, type: !5892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5891 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5892 = !DISubroutineType(types: !5893)
!5893 = !{!103, !258, null}
!5894 = !DISubprogram(name: "x86_pci_root_bus_node", scope: !5895, file: !5895, line: 173, type: !2492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5895 = !DIFile(filename: "./arch/x86/include/asm/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "120eda241c1b2b25166ee71f2a584d2d")
!5896 = !DISubprogram(name: "x86_pci_root_bus_resources", scope: !5895, file: !5895, line: 174, type: !5897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5897 = !DISubroutineType(types: !5898)
!5898 = !{null, !103, !230}
!5899 = !DISubprogram(name: "pci_scan_root_bus", scope: !187, file: !187, line: 1121, type: !5900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5900 = !DISubroutineType(types: !5901)
!5901 = !{!233, !317, !103, !272, !221, !230}
!5902 = !DISubprogram(name: "pci_free_resource_list", scope: !187, file: !187, line: 1472, type: !5903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5903 = !DISubroutineType(types: !5904)
!5904 = !{null, !230}
!5905 = !DISubprogram(name: "kfree", scope: !211, file: !211, line: 227, type: !5906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5906 = !DISubroutineType(types: !5907)
!5907 = !{null, !2638}
!5908 = !DISubprogram(name: "pci_bus_add_devices", scope: !187, file: !187, line: 1112, type: !5909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5909 = !DISubroutineType(types: !5910)
!5910 = !{null, !5911}
!5911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5912, size: 64)
!5912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!5913 = distinct !DISubprogram(name: "pcibios_set_cache_line_size", scope: !3, file: !3, line: 481, type: !1098, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5914)
!5914 = !{!5915}
!5915 = !DILocalVariable(name: "c", scope: !5913, file: !3, line: 483, type: !5916)
!5916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5917, size: 64)
!5917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !3360, line: 83, size: 2368, elements: !5918)
!5918 = !{!5919, !5930, !5931, !5932, !5934, !5935, !5936, !5937, !5938, !5939, !5940, !5946, !5947, !5949, !5950, !5951, !5952, !5953, !5954, !5955, !5956, !5957, !5958, !5959, !5960, !5961, !5962, !5963, !5964, !5965, !5966, !5967, !5968, !5969, !5970, !5971}
!5919 = !DIDerivedType(tag: DW_TAG_member, scope: !5917, file: !3360, line: 84, baseType: !5920, size: 32)
!5920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5917, file: !3360, line: 84, size: 32, elements: !5921)
!5921 = !{!5922, !5929}
!5922 = !DIDerivedType(tag: DW_TAG_member, scope: !5920, file: !3360, line: 90, baseType: !5923, size: 32)
!5923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5920, file: !3360, line: 90, size: 32, elements: !5924)
!5924 = !{!5925, !5926, !5927, !5928}
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !5923, file: !3360, line: 91, baseType: !363, size: 8)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !5923, file: !3360, line: 93, baseType: !363, size: 8, offset: 8)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !5923, file: !3360, line: 95, baseType: !363, size: 8, offset: 16)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !5923, file: !3360, line: 96, baseType: !363, size: 8, offset: 24)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !5920, file: !3360, line: 99, baseType: !293, size: 32)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !5917, file: !3360, line: 101, baseType: !363, size: 8, offset: 32)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !5917, file: !3360, line: 104, baseType: !103, size: 32, offset: 64)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !5917, file: !3360, line: 107, baseType: !5933, size: 160, offset: 96)
!5933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 160, elements: !5713)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !5917, file: !3360, line: 109, baseType: !363, size: 8, offset: 256)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !5917, file: !3360, line: 110, baseType: !363, size: 8, offset: 264)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !5917, file: !3360, line: 112, baseType: !363, size: 8, offset: 272)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !5917, file: !3360, line: 113, baseType: !363, size: 8, offset: 280)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !5917, file: !3360, line: 115, baseType: !293, size: 32, offset: 288)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !5917, file: !3360, line: 117, baseType: !103, size: 32, offset: 320)
!5940 = !DIDerivedType(tag: DW_TAG_member, scope: !5917, file: !3360, line: 123, baseType: !5941, size: 768, offset: 384)
!5941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5917, file: !3360, line: 123, size: 768, elements: !5942)
!5942 = !{!5943, !5945}
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !5941, file: !3360, line: 124, baseType: !5944, size: 768)
!5944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 768, elements: !5133)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !5941, file: !3360, line: 125, baseType: !262, size: 64)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !5917, file: !3360, line: 127, baseType: !2814, size: 128, offset: 1152)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !5917, file: !3360, line: 128, baseType: !5948, size: 512, offset: 1280)
!5948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 512, elements: !405)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !5917, file: !3360, line: 130, baseType: !7, size: 32, offset: 1792)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !5917, file: !3360, line: 131, baseType: !103, size: 32, offset: 1824)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !5917, file: !3360, line: 133, baseType: !103, size: 32, offset: 1856)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !5917, file: !3360, line: 134, baseType: !103, size: 32, offset: 1888)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !5917, file: !3360, line: 135, baseType: !103, size: 32, offset: 1920)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !5917, file: !3360, line: 136, baseType: !103, size: 32, offset: 1952)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !5917, file: !3360, line: 137, baseType: !262, size: 64, offset: 1984)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !5917, file: !3360, line: 139, baseType: !251, size: 64, offset: 2048)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !5917, file: !3360, line: 141, baseType: !369, size: 16, offset: 2112)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !5917, file: !3360, line: 142, baseType: !369, size: 16, offset: 2128)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !5917, file: !3360, line: 143, baseType: !369, size: 16, offset: 2144)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !5917, file: !3360, line: 144, baseType: !369, size: 16, offset: 2160)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !5917, file: !3360, line: 146, baseType: !369, size: 16, offset: 2176)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !5917, file: !3360, line: 148, baseType: !369, size: 16, offset: 2192)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !5917, file: !3360, line: 150, baseType: !369, size: 16, offset: 2208)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !5917, file: !3360, line: 152, baseType: !369, size: 16, offset: 2224)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !5917, file: !3360, line: 153, baseType: !369, size: 16, offset: 2240)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !5917, file: !3360, line: 154, baseType: !369, size: 16, offset: 2256)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !5917, file: !3360, line: 156, baseType: !369, size: 16, offset: 2272)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !5917, file: !3360, line: 158, baseType: !815, size: 8, offset: 2288)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !5917, file: !3360, line: 159, baseType: !292, size: 32, offset: 2304)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !5917, file: !3360, line: 161, baseType: !362, size: 8, offset: 2336)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !5917, file: !3360, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!5972 = !DILocation(line: 483, column: 2, scope: !5913)
!5973 = !DILocation(line: 483, column: 22, scope: !5913)
!5974 = !DILocation(line: 491, column: 6, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5913, file: !3, line: 491, column: 6)
!5976 = !DILocation(line: 491, column: 9, scope: !5975)
!5977 = !DILocation(line: 491, column: 26, scope: !5975)
!5978 = !DILocation(line: 491, column: 6, scope: !5913)
!5979 = !DILocation(line: 492, column: 29, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 491, column: 31)
!5981 = !DILocation(line: 492, column: 32, scope: !5980)
!5982 = !DILocation(line: 492, column: 49, scope: !5980)
!5983 = !DILocation(line: 492, column: 27, scope: !5980)
!5984 = !DILocation(line: 493, column: 3, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5980, file: !3, line: 493, column: 3)
!5986 = !DILocation(line: 493, column: 3, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5985, file: !3, line: 493, column: 3)
!5988 = !DILocation(line: 495, column: 2, scope: !5980)
!5989 = !DILocation(line: 496, column: 28, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 495, column: 9)
!5991 = !DILocation(line: 497, column: 3, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5990, file: !3, line: 497, column: 3)
!5993 = !DILocation(line: 497, column: 3, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5992, file: !3, line: 497, column: 3)
!5995 = !DILocation(line: 499, column: 1, scope: !5913)
!5996 = distinct !DISubprogram(name: "pcibios_init", scope: !3, file: !3, line: 501, type: !829, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5997 = !DILocation(line: 503, column: 7, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5996, file: !3, line: 503, column: 6)
!5999 = !DILocation(line: 503, column: 19, scope: !5998)
!6000 = !DILocation(line: 503, column: 23, scope: !5998)
!6001 = !DILocation(line: 503, column: 6, scope: !5996)
!6002 = !DILocation(line: 504, column: 3, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !6004, file: !3, line: 504, column: 3)
!6004 = distinct !DILexicalBlock(scope: !5998, file: !3, line: 503, column: 40)
!6005 = !DILocation(line: 504, column: 3, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !6003, file: !3, line: 504, column: 3)
!6007 = !DILocation(line: 505, column: 3, scope: !6004)
!6008 = !DILocation(line: 508, column: 2, scope: !5996)
!6009 = !DILocation(line: 509, column: 2, scope: !5996)
!6010 = !DILocation(line: 511, column: 6, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !5996, file: !3, line: 511, column: 6)
!6012 = !DILocation(line: 511, column: 18, scope: !6011)
!6013 = !DILocation(line: 511, column: 6, scope: !5996)
!6014 = !DILocation(line: 512, column: 3, scope: !6011)
!6015 = !DILocation(line: 513, column: 2, scope: !5996)
!6016 = !DILocation(line: 514, column: 1, scope: !5996)
!6017 = !DISubprogram(name: "pcibios_resource_survey", scope: !167, file: !167, line: 60, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6018 = !DISubprogram(name: "pci_sort_breadthfirst", scope: !187, file: !187, line: 1157, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6019 = distinct !DISubprogram(name: "pcibios_setup", scope: !3, file: !3, line: 516, type: !6020, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6022)
!6020 = !DISubroutineType(types: !6021)
!6021 = !{!400, !400}
!6022 = !{!6023}
!6023 = !DILocalVariable(name: "str", arg: 1, scope: !6019, file: !3, line: 516, type: !400)
!6024 = !DILocation(line: 516, column: 34, scope: !6019)
!6025 = !DILocation(line: 518, column: 14, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !6019, file: !3, line: 518, column: 6)
!6027 = !DILocation(line: 518, column: 7, scope: !6026)
!6028 = !DILocation(line: 518, column: 6, scope: !6019)
!6029 = !DILocation(line: 519, column: 13, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !6026, file: !3, line: 518, column: 27)
!6031 = !DILocation(line: 520, column: 3, scope: !6030)
!6032 = !DILocation(line: 521, column: 21, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6026, file: !3, line: 521, column: 13)
!6034 = !DILocation(line: 521, column: 14, scope: !6033)
!6035 = !DILocation(line: 521, column: 13, scope: !6026)
!6036 = !DILocation(line: 522, column: 15, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !6033, file: !3, line: 521, column: 37)
!6038 = !DILocation(line: 523, column: 3, scope: !6037)
!6039 = !DILocation(line: 524, column: 21, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !6033, file: !3, line: 524, column: 13)
!6041 = !DILocation(line: 524, column: 14, scope: !6040)
!6042 = !DILocation(line: 524, column: 13, scope: !6033)
!6043 = !DILocation(line: 525, column: 15, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !6040, file: !3, line: 524, column: 39)
!6045 = !DILocation(line: 526, column: 3, scope: !6044)
!6046 = !DILocation(line: 544, column: 19, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !6040, file: !3, line: 544, column: 11)
!6048 = !DILocation(line: 544, column: 12, scope: !6047)
!6049 = !DILocation(line: 544, column: 11, scope: !6040)
!6050 = !DILocation(line: 545, column: 13, scope: !6051)
!6051 = distinct !DILexicalBlock(scope: !6047, file: !3, line: 544, column: 34)
!6052 = !DILocation(line: 546, column: 3, scope: !6051)
!6053 = !DILocation(line: 548, column: 19, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !6047, file: !3, line: 548, column: 11)
!6055 = !DILocation(line: 548, column: 12, scope: !6054)
!6056 = !DILocation(line: 548, column: 11, scope: !6047)
!6057 = !DILocation(line: 549, column: 13, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !6054, file: !3, line: 548, column: 34)
!6059 = !DILocation(line: 550, column: 3, scope: !6058)
!6060 = !DILocation(line: 554, column: 19, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6054, file: !3, line: 554, column: 11)
!6062 = !DILocation(line: 554, column: 12, scope: !6061)
!6063 = !DILocation(line: 554, column: 11, scope: !6054)
!6064 = !DILocation(line: 555, column: 13, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 554, column: 37)
!6066 = !DILocation(line: 556, column: 3, scope: !6065)
!6067 = !DILocation(line: 558, column: 19, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 558, column: 11)
!6069 = !DILocation(line: 558, column: 12, scope: !6068)
!6070 = !DILocation(line: 558, column: 11, scope: !6061)
!6071 = !DILocation(line: 559, column: 13, scope: !6072)
!6072 = distinct !DILexicalBlock(scope: !6068, file: !3, line: 558, column: 52)
!6073 = !DILocation(line: 560, column: 3, scope: !6072)
!6074 = !DILocation(line: 563, column: 19, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !6068, file: !3, line: 563, column: 11)
!6076 = !DILocation(line: 563, column: 12, scope: !6075)
!6077 = !DILocation(line: 563, column: 11, scope: !6068)
!6078 = !DILocation(line: 564, column: 3, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 563, column: 35)
!6080 = !DILocation(line: 565, column: 3, scope: !6079)
!6081 = !DILocation(line: 567, column: 19, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 567, column: 11)
!6083 = !DILocation(line: 567, column: 12, scope: !6082)
!6084 = !DILocation(line: 567, column: 11, scope: !6075)
!6085 = !DILocation(line: 568, column: 13, scope: !6086)
!6086 = distinct !DILexicalBlock(scope: !6082, file: !3, line: 567, column: 36)
!6087 = !DILocation(line: 569, column: 3, scope: !6086)
!6088 = !DILocation(line: 571, column: 19, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6082, file: !3, line: 571, column: 11)
!6090 = !DILocation(line: 571, column: 12, scope: !6089)
!6091 = !DILocation(line: 571, column: 11, scope: !6082)
!6092 = !DILocation(line: 572, column: 13, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 571, column: 40)
!6094 = !DILocation(line: 573, column: 3, scope: !6093)
!6095 = !DILocation(line: 574, column: 22, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 574, column: 13)
!6097 = !DILocation(line: 574, column: 14, scope: !6096)
!6098 = !DILocation(line: 574, column: 13, scope: !6089)
!6099 = !DILocation(line: 575, column: 36, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !6096, file: !3, line: 574, column: 43)
!6101 = !DILocation(line: 575, column: 39, scope: !6100)
!6102 = !DILocation(line: 575, column: 22, scope: !6100)
!6103 = !DILocation(line: 575, column: 20, scope: !6100)
!6104 = !DILocation(line: 576, column: 3, scope: !6100)
!6105 = !DILocation(line: 577, column: 22, scope: !6106)
!6106 = distinct !DILexicalBlock(scope: !6096, file: !3, line: 577, column: 13)
!6107 = !DILocation(line: 577, column: 14, scope: !6106)
!6108 = !DILocation(line: 577, column: 13, scope: !6096)
!6109 = !DILocation(line: 578, column: 36, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 577, column: 43)
!6111 = !DILocation(line: 578, column: 39, scope: !6110)
!6112 = !DILocation(line: 578, column: 22, scope: !6110)
!6113 = !DILocation(line: 578, column: 20, scope: !6110)
!6114 = !DILocation(line: 579, column: 3, scope: !6110)
!6115 = !DILocation(line: 580, column: 21, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 580, column: 13)
!6117 = !DILocation(line: 580, column: 14, scope: !6116)
!6118 = !DILocation(line: 580, column: 13, scope: !6106)
!6119 = !DILocation(line: 581, column: 13, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6116, file: !3, line: 580, column: 34)
!6121 = !DILocation(line: 582, column: 3, scope: !6120)
!6122 = !DILocation(line: 583, column: 21, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6116, file: !3, line: 583, column: 13)
!6124 = !DILocation(line: 583, column: 14, scope: !6123)
!6125 = !DILocation(line: 583, column: 13, scope: !6116)
!6126 = !DILocation(line: 584, column: 13, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !6123, file: !3, line: 583, column: 36)
!6128 = !DILocation(line: 585, column: 3, scope: !6127)
!6129 = !DILocation(line: 586, column: 21, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6123, file: !3, line: 586, column: 13)
!6131 = !DILocation(line: 586, column: 14, scope: !6130)
!6132 = !DILocation(line: 586, column: 13, scope: !6123)
!6133 = !DILocation(line: 587, column: 13, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6130, file: !3, line: 586, column: 36)
!6135 = !DILocation(line: 588, column: 3, scope: !6134)
!6136 = !DILocation(line: 589, column: 21, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !6130, file: !3, line: 589, column: 13)
!6138 = !DILocation(line: 589, column: 14, scope: !6137)
!6139 = !DILocation(line: 589, column: 13, scope: !6130)
!6140 = !DILocation(line: 590, column: 13, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 589, column: 44)
!6142 = !DILocation(line: 591, column: 3, scope: !6141)
!6143 = !DILocation(line: 592, column: 21, scope: !6144)
!6144 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 592, column: 13)
!6145 = !DILocation(line: 592, column: 14, scope: !6144)
!6146 = !DILocation(line: 592, column: 13, scope: !6137)
!6147 = !DILocation(line: 593, column: 13, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 592, column: 38)
!6149 = !DILocation(line: 594, column: 3, scope: !6148)
!6150 = !DILocation(line: 595, column: 21, scope: !6151)
!6151 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 595, column: 13)
!6152 = !DILocation(line: 595, column: 14, scope: !6151)
!6153 = !DILocation(line: 595, column: 13, scope: !6144)
!6154 = !DILocation(line: 596, column: 13, scope: !6155)
!6155 = distinct !DILexicalBlock(scope: !6151, file: !3, line: 595, column: 36)
!6156 = !DILocation(line: 597, column: 3, scope: !6155)
!6157 = !DILocation(line: 598, column: 21, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6151, file: !3, line: 598, column: 13)
!6159 = !DILocation(line: 598, column: 14, scope: !6158)
!6160 = !DILocation(line: 598, column: 13, scope: !6151)
!6161 = !DILocation(line: 599, column: 13, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6158, file: !3, line: 598, column: 39)
!6163 = !DILocation(line: 600, column: 3, scope: !6162)
!6164 = !DILocation(line: 601, column: 3, scope: !6162)
!6165 = !DILocation(line: 602, column: 21, scope: !6166)
!6166 = distinct !DILexicalBlock(scope: !6158, file: !3, line: 602, column: 13)
!6167 = !DILocation(line: 602, column: 14, scope: !6166)
!6168 = !DILocation(line: 602, column: 13, scope: !6158)
!6169 = !DILocation(line: 603, column: 13, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6166, file: !3, line: 602, column: 38)
!6171 = !DILocation(line: 604, column: 3, scope: !6170)
!6172 = !DILocation(line: 605, column: 3, scope: !6170)
!6173 = !DILocation(line: 607, column: 21, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6166, file: !3, line: 607, column: 13)
!6175 = !DILocation(line: 607, column: 14, scope: !6174)
!6176 = !DILocation(line: 607, column: 13, scope: !6166)
!6177 = !DILocation(line: 608, column: 13, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !6174, file: !3, line: 607, column: 46)
!6179 = !DILocation(line: 609, column: 3, scope: !6178)
!6180 = !DILocation(line: 611, column: 21, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6174, file: !3, line: 611, column: 13)
!6182 = !DILocation(line: 611, column: 14, scope: !6181)
!6183 = !DILocation(line: 611, column: 13, scope: !6174)
!6184 = !DILocation(line: 612, column: 16, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6181, file: !3, line: 611, column: 39)
!6186 = !DILocation(line: 613, column: 3, scope: !6185)
!6187 = !DILocation(line: 614, column: 21, scope: !6188)
!6188 = distinct !DILexicalBlock(scope: !6181, file: !3, line: 614, column: 13)
!6189 = !DILocation(line: 614, column: 14, scope: !6188)
!6190 = !DILocation(line: 614, column: 13, scope: !6181)
!6191 = !DILocation(line: 615, column: 13, scope: !6192)
!6192 = distinct !DILexicalBlock(scope: !6188, file: !3, line: 614, column: 45)
!6193 = !DILocation(line: 616, column: 3, scope: !6192)
!6194 = !DILocation(line: 617, column: 21, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6188, file: !3, line: 617, column: 13)
!6196 = !DILocation(line: 617, column: 14, scope: !6195)
!6197 = !DILocation(line: 617, column: 13, scope: !6188)
!6198 = !DILocation(line: 618, column: 17, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6195, file: !3, line: 617, column: 44)
!6200 = !DILocation(line: 619, column: 3, scope: !6199)
!6201 = !DILocation(line: 620, column: 21, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6195, file: !3, line: 620, column: 13)
!6203 = !DILocation(line: 620, column: 14, scope: !6202)
!6204 = !DILocation(line: 620, column: 13, scope: !6195)
!6205 = !DILocation(line: 621, column: 7, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6207, file: !3, line: 621, column: 7)
!6207 = distinct !DILexicalBlock(scope: !6202, file: !3, line: 620, column: 44)
!6208 = !DILocation(line: 621, column: 23, scope: !6206)
!6209 = !DILocation(line: 621, column: 7, scope: !6207)
!6210 = !DILocation(line: 622, column: 20, scope: !6206)
!6211 = !DILocation(line: 622, column: 4, scope: !6206)
!6212 = !DILocation(line: 623, column: 3, scope: !6207)
!6213 = !DILocation(line: 624, column: 21, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6202, file: !3, line: 624, column: 13)
!6215 = !DILocation(line: 624, column: 14, scope: !6214)
!6216 = !DILocation(line: 624, column: 13, scope: !6202)
!6217 = !DILocation(line: 625, column: 7, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6219, file: !3, line: 625, column: 7)
!6219 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 624, column: 46)
!6220 = !DILocation(line: 625, column: 23, scope: !6218)
!6221 = !DILocation(line: 625, column: 7, scope: !6219)
!6222 = !DILocation(line: 626, column: 20, scope: !6218)
!6223 = !DILocation(line: 626, column: 4, scope: !6218)
!6224 = !DILocation(line: 627, column: 3, scope: !6219)
!6225 = !DILocation(line: 629, column: 9, scope: !6019)
!6226 = !DILocation(line: 629, column: 2, scope: !6019)
!6227 = !DILocation(line: 630, column: 1, scope: !6019)
!6228 = !DISubprogram(name: "strcmp", scope: !6229, file: !6229, line: 88, type: !6230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6229 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6230 = !DISubroutineType(types: !6231)
!6231 = !{!103, !258, !258}
!6232 = distinct !DISubprogram(name: "acpi_noirq_set", scope: !6233, file: !6233, line: 59, type: !1098, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6233 = !DIFile(filename: "./arch/x86/include/asm/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "db0e71f1d0512784f5cad3b4cf7bba38")
!6234 = !DILocation(line: 59, column: 54, scope: !6232)
!6235 = !DILocation(line: 59, column: 59, scope: !6232)
!6236 = !DISubprogram(name: "strncmp", scope: !6229, file: !6229, line: 91, type: !6237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6237 = !DISubroutineType(types: !6238)
!6238 = !{!103, !258, !258, !448}
!6239 = !DISubprogram(name: "simple_strtol", scope: !6240, file: !6240, line: 146, type: !6241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6240 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!6241 = !DISubroutineType(types: !6242)
!6242 = !{!436, !258, !6243, !7}
!6243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!6244 = !DISubprogram(name: "add_taint", scope: !174, file: !174, line: 93, type: !6245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6245 = !DISubroutineType(types: !6246)
!6246 = !{null, !7, !173}
!6247 = distinct !DISubprogram(name: "pcibios_assign_all_busses", scope: !3, file: !3, line: 632, type: !6248, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6248 = !DISubroutineType(types: !6249)
!6249 = !{!7}
!6250 = !DILocation(line: 634, column: 10, scope: !6247)
!6251 = !DILocation(line: 634, column: 20, scope: !6247)
!6252 = !DILocation(line: 634, column: 9, scope: !6247)
!6253 = !DILocation(line: 634, column: 2, scope: !6247)
!6254 = distinct !DISubprogram(name: "pcibios_device_add", scope: !3, file: !3, line: 643, type: !4879, scopeLine: 644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6255)
!6255 = !{!6256, !6257, !6258, !6259, !6261}
!6256 = !DILocalVariable(name: "dev", arg: 1, scope: !6254, file: !3, line: 643, type: !222)
!6257 = !DILocalVariable(name: "rom", scope: !6254, file: !3, line: 645, type: !5035)
!6258 = !DILocalVariable(name: "msidom", scope: !6254, file: !3, line: 646, type: !4506)
!6259 = !DILocalVariable(name: "data", scope: !6254, file: !3, line: 647, type: !6260)
!6260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!6261 = !DILocalVariable(name: "pa_data", scope: !6254, file: !3, line: 648, type: !251)
!6262 = !DILocation(line: 643, column: 40, scope: !6254)
!6263 = !DILocation(line: 645, column: 2, scope: !6254)
!6264 = !DILocation(line: 645, column: 24, scope: !6254)
!6265 = !DILocation(line: 646, column: 2, scope: !6254)
!6266 = !DILocation(line: 646, column: 21, scope: !6254)
!6267 = !DILocation(line: 647, column: 2, scope: !6254)
!6268 = !DILocation(line: 647, column: 21, scope: !6254)
!6269 = !DILocation(line: 648, column: 2, scope: !6254)
!6270 = !DILocation(line: 648, column: 6, scope: !6254)
!6271 = !DILocation(line: 650, column: 28, scope: !6254)
!6272 = !DILocation(line: 650, column: 10, scope: !6254)
!6273 = !DILocation(line: 651, column: 2, scope: !6254)
!6274 = !DILocation(line: 651, column: 9, scope: !6254)
!6275 = !DILocation(line: 652, column: 19, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6254, file: !3, line: 651, column: 18)
!6277 = !DILocation(line: 652, column: 10, scope: !6276)
!6278 = !DILocation(line: 652, column: 8, scope: !6276)
!6279 = !DILocation(line: 653, column: 8, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6276, file: !3, line: 653, column: 7)
!6281 = !DILocation(line: 653, column: 7, scope: !6276)
!6282 = !DILocation(line: 654, column: 4, scope: !6280)
!6283 = !DILocation(line: 656, column: 7, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6276, file: !3, line: 656, column: 7)
!6285 = !DILocation(line: 656, column: 13, scope: !6284)
!6286 = !DILocation(line: 656, column: 18, scope: !6284)
!6287 = !DILocation(line: 656, column: 7, scope: !6276)
!6288 = !DILocation(line: 657, column: 34, scope: !6289)
!6289 = distinct !DILexicalBlock(scope: !6284, file: !3, line: 656, column: 32)
!6290 = !DILocation(line: 657, column: 8, scope: !6289)
!6291 = !DILocation(line: 659, column: 23, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6289, file: !3, line: 659, column: 8)
!6293 = !DILocation(line: 659, column: 28, scope: !6292)
!6294 = !DILocation(line: 659, column: 9, scope: !6292)
!6295 = !DILocation(line: 659, column: 36, scope: !6292)
!6296 = !DILocation(line: 659, column: 41, scope: !6292)
!6297 = !DILocation(line: 659, column: 33, scope: !6292)
!6298 = !DILocation(line: 659, column: 50, scope: !6292)
!6299 = !DILocation(line: 660, column: 9, scope: !6292)
!6300 = !DILocation(line: 660, column: 14, scope: !6292)
!6301 = !DILocation(line: 660, column: 19, scope: !6292)
!6302 = !DILocation(line: 660, column: 29, scope: !6292)
!6303 = !DILocation(line: 660, column: 34, scope: !6292)
!6304 = !DILocation(line: 660, column: 26, scope: !6292)
!6305 = !DILocation(line: 660, column: 39, scope: !6292)
!6306 = !DILocation(line: 661, column: 9, scope: !6292)
!6307 = !DILocation(line: 661, column: 33, scope: !6292)
!6308 = !DILocation(line: 661, column: 38, scope: !6292)
!6309 = !DILocation(line: 661, column: 30, scope: !6292)
!6310 = !DILocation(line: 661, column: 46, scope: !6292)
!6311 = !DILocation(line: 662, column: 9, scope: !6292)
!6312 = !DILocation(line: 662, column: 33, scope: !6292)
!6313 = !DILocation(line: 662, column: 38, scope: !6292)
!6314 = !DILocation(line: 662, column: 30, scope: !6292)
!6315 = !DILocation(line: 662, column: 48, scope: !6292)
!6316 = !DILocation(line: 663, column: 9, scope: !6292)
!6317 = !DILocation(line: 663, column: 14, scope: !6292)
!6318 = !DILocation(line: 663, column: 24, scope: !6292)
!6319 = !DILocation(line: 663, column: 29, scope: !6292)
!6320 = !DILocation(line: 663, column: 21, scope: !6292)
!6321 = !DILocation(line: 663, column: 37, scope: !6292)
!6322 = !DILocation(line: 664, column: 9, scope: !6292)
!6323 = !DILocation(line: 664, column: 14, scope: !6292)
!6324 = !DILocation(line: 664, column: 24, scope: !6292)
!6325 = !DILocation(line: 664, column: 29, scope: !6292)
!6326 = !DILocation(line: 664, column: 21, scope: !6292)
!6327 = !DILocation(line: 659, column: 8, scope: !6289)
!6328 = !DILocation(line: 665, column: 16, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6292, file: !3, line: 664, column: 37)
!6330 = !DILocation(line: 665, column: 24, scope: !6329)
!6331 = !DILocation(line: 665, column: 5, scope: !6329)
!6332 = !DILocation(line: 665, column: 10, scope: !6329)
!6333 = !DILocation(line: 665, column: 14, scope: !6329)
!6334 = !DILocation(line: 667, column: 19, scope: !6329)
!6335 = !DILocation(line: 667, column: 24, scope: !6329)
!6336 = !DILocation(line: 667, column: 5, scope: !6329)
!6337 = !DILocation(line: 667, column: 10, scope: !6329)
!6338 = !DILocation(line: 667, column: 17, scope: !6329)
!6339 = !DILocation(line: 668, column: 4, scope: !6329)
!6340 = !DILocation(line: 669, column: 3, scope: !6289)
!6341 = !DILocation(line: 670, column: 13, scope: !6276)
!6342 = !DILocation(line: 670, column: 19, scope: !6276)
!6343 = !DILocation(line: 670, column: 11, scope: !6276)
!6344 = !DILocation(line: 671, column: 12, scope: !6276)
!6345 = !DILocation(line: 671, column: 3, scope: !6276)
!6346 = distinct !{!6346, !6273, !6347, !5459, !5460}
!6347 = !DILocation(line: 672, column: 2, scope: !6254)
!6348 = !DILocation(line: 673, column: 25, scope: !6254)
!6349 = !DILocation(line: 673, column: 2, scope: !6254)
!6350 = !DILocation(line: 684, column: 31, scope: !6254)
!6351 = !DILocation(line: 684, column: 36, scope: !6254)
!6352 = !DILocation(line: 684, column: 41, scope: !6254)
!6353 = !DILocation(line: 684, column: 11, scope: !6254)
!6354 = !DILocation(line: 684, column: 9, scope: !6254)
!6355 = !DILocation(line: 685, column: 7, scope: !6356)
!6356 = distinct !DILexicalBlock(scope: !6254, file: !3, line: 685, column: 6)
!6357 = !DILocation(line: 685, column: 6, scope: !6254)
!6358 = !DILocation(line: 686, column: 12, scope: !6356)
!6359 = !DILocation(line: 686, column: 10, scope: !6356)
!6360 = !DILocation(line: 686, column: 3, scope: !6356)
!6361 = !DILocation(line: 687, column: 22, scope: !6254)
!6362 = !DILocation(line: 687, column: 27, scope: !6254)
!6363 = !DILocation(line: 687, column: 32, scope: !6254)
!6364 = !DILocation(line: 687, column: 2, scope: !6254)
!6365 = !DILocation(line: 688, column: 2, scope: !6254)
!6366 = !DILocation(line: 689, column: 1, scope: !6254)
!6367 = !DISubprogram(name: "memremap", scope: !179, file: !179, line: 149, type: !6368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6368 = !DISubroutineType(types: !6369)
!6369 = !{!221, !249, !447, !262}
!6370 = distinct !DISubprogram(name: "pci_domain_nr", scope: !5037, file: !5037, line: 44, type: !277, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6371)
!6371 = !{!6372}
!6372 = !DILocalVariable(name: "bus", arg: 1, scope: !6370, file: !5037, line: 44, type: !233)
!6373 = !DILocation(line: 44, column: 49, scope: !6370)
!6374 = !DILocation(line: 46, column: 24, scope: !6370)
!6375 = !DILocation(line: 46, column: 9, scope: !6370)
!6376 = !DILocation(line: 46, column: 30, scope: !6370)
!6377 = !DILocation(line: 46, column: 2, scope: !6370)
!6378 = !DISubprogram(name: "memunmap", scope: !179, file: !179, line: 150, type: !779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6379 = distinct !DISubprogram(name: "set_dev_domain_options", scope: !3, file: !3, line: 637, type: !4871, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6380)
!6380 = !{!6381}
!6381 = !DILocalVariable(name: "pdev", arg: 1, scope: !6379, file: !3, line: 637, type: !222)
!6382 = !DILocation(line: 637, column: 52, scope: !6379)
!6383 = !DILocation(line: 641, column: 1, scope: !6379)
!6384 = distinct !DISubprogram(name: "dev_get_msi_domain", scope: !88, file: !88, line: 900, type: !6385, scopeLine: 901, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6387)
!6385 = !DISubroutineType(types: !6386)
!6386 = !{!4506, !4259}
!6387 = !{!6388}
!6388 = !DILocalVariable(name: "dev", arg: 1, scope: !6384, file: !88, line: 900, type: !4259)
!6389 = !DILocation(line: 900, column: 74, scope: !6384)
!6390 = !DILocation(line: 903, column: 9, scope: !6384)
!6391 = !DILocation(line: 903, column: 14, scope: !6384)
!6392 = !DILocation(line: 903, column: 18, scope: !6384)
!6393 = !DILocation(line: 903, column: 2, scope: !6384)
!6394 = distinct !DISubprogram(name: "dev_set_msi_domain", scope: !88, file: !88, line: 909, type: !6395, scopeLine: 910, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6397)
!6395 = !DISubroutineType(types: !6396)
!6396 = !{null, !317, !4506}
!6397 = !{!6398, !6399}
!6398 = !DILocalVariable(name: "dev", arg: 1, scope: !6394, file: !88, line: 909, type: !317)
!6399 = !DILocalVariable(name: "d", arg: 2, scope: !6394, file: !88, line: 909, type: !4506)
!6400 = !DILocation(line: 909, column: 54, scope: !6394)
!6401 = !DILocation(line: 909, column: 78, scope: !6394)
!6402 = !DILocation(line: 912, column: 20, scope: !6394)
!6403 = !DILocation(line: 912, column: 2, scope: !6394)
!6404 = !DILocation(line: 912, column: 7, scope: !6394)
!6405 = !DILocation(line: 912, column: 11, scope: !6394)
!6406 = !DILocation(line: 912, column: 18, scope: !6394)
!6407 = !DILocation(line: 914, column: 1, scope: !6394)
!6408 = distinct !DISubprogram(name: "pcibios_enable_device", scope: !3, file: !3, line: 691, type: !4884, scopeLine: 692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6409)
!6409 = !{!6410, !6411, !6412}
!6410 = !DILocalVariable(name: "dev", arg: 1, scope: !6408, file: !3, line: 691, type: !222)
!6411 = !DILocalVariable(name: "mask", arg: 2, scope: !6408, file: !3, line: 691, type: !103)
!6412 = !DILocalVariable(name: "err", scope: !6408, file: !3, line: 693, type: !103)
!6413 = !DILocation(line: 691, column: 43, scope: !6408)
!6414 = !DILocation(line: 691, column: 52, scope: !6408)
!6415 = !DILocation(line: 693, column: 2, scope: !6408)
!6416 = !DILocation(line: 693, column: 6, scope: !6408)
!6417 = !DILocation(line: 695, column: 34, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6408, file: !3, line: 695, column: 6)
!6419 = !DILocation(line: 695, column: 39, scope: !6418)
!6420 = !DILocation(line: 695, column: 13, scope: !6418)
!6421 = !DILocation(line: 695, column: 11, scope: !6418)
!6422 = !DILocation(line: 695, column: 46, scope: !6418)
!6423 = !DILocation(line: 695, column: 6, scope: !6408)
!6424 = !DILocation(line: 696, column: 10, scope: !6418)
!6425 = !DILocation(line: 696, column: 3, scope: !6418)
!6426 = !DILocation(line: 698, column: 27, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6408, file: !3, line: 698, column: 6)
!6428 = !DILocation(line: 698, column: 7, scope: !6427)
!6429 = !DILocation(line: 698, column: 6, scope: !6408)
!6430 = !DILocation(line: 699, column: 10, scope: !6427)
!6431 = !DILocation(line: 699, column: 29, scope: !6427)
!6432 = !DILocation(line: 699, column: 3, scope: !6427)
!6433 = !DILocation(line: 700, column: 2, scope: !6408)
!6434 = !DILocation(line: 701, column: 1, scope: !6408)
!6435 = !DISubprogram(name: "pci_enable_resources", scope: !187, file: !187, line: 1440, type: !4884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6436 = distinct !DISubprogram(name: "pci_dev_msi_enabled", scope: !187, file: !187, line: 730, type: !6437, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6439)
!6437 = !DISubroutineType(types: !6438)
!6438 = !{!815, !222}
!6439 = !{!6440}
!6440 = !DILocalVariable(name: "pci_dev", arg: 1, scope: !6436, file: !187, line: 730, type: !222)
!6441 = !DILocation(line: 730, column: 56, scope: !6436)
!6442 = !DILocation(line: 732, column: 9, scope: !6436)
!6443 = !DILocation(line: 732, column: 18, scope: !6436)
!6444 = !DILocation(line: 732, column: 30, scope: !6436)
!6445 = !DILocation(line: 732, column: 33, scope: !6436)
!6446 = !DILocation(line: 732, column: 42, scope: !6436)
!6447 = !DILocation(line: 732, column: 2, scope: !6436)
!6448 = distinct !DISubprogram(name: "pcibios_disable_device", scope: !3, file: !3, line: 703, type: !4871, scopeLine: 704, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6449)
!6449 = !{!6450}
!6450 = !DILocalVariable(name: "dev", arg: 1, scope: !6448, file: !3, line: 703, type: !222)
!6451 = !DILocation(line: 703, column: 46, scope: !6448)
!6452 = !DILocation(line: 705, column: 27, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6448, file: !3, line: 705, column: 6)
!6454 = !DILocation(line: 705, column: 7, scope: !6453)
!6455 = !DILocation(line: 705, column: 32, scope: !6453)
!6456 = !DILocation(line: 705, column: 35, scope: !6453)
!6457 = !DILocation(line: 705, column: 6, scope: !6448)
!6458 = !DILocation(line: 706, column: 3, scope: !6453)
!6459 = !DILocation(line: 706, column: 23, scope: !6453)
!6460 = !DILocation(line: 707, column: 1, scope: !6448)
!6461 = distinct !DISubprogram(name: "pcibios_release_device", scope: !3, file: !3, line: 710, type: !4871, scopeLine: 711, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6462)
!6462 = !{!6463}
!6463 = !DILocalVariable(name: "dev", arg: 1, scope: !6461, file: !3, line: 710, type: !222)
!6464 = !DILocation(line: 710, column: 45, scope: !6461)
!6465 = !DILocation(line: 712, column: 25, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6461, file: !3, line: 712, column: 6)
!6467 = !DILocation(line: 712, column: 30, scope: !6466)
!6468 = !DILocation(line: 712, column: 6, scope: !6466)
!6469 = !DILocation(line: 712, column: 42, scope: !6466)
!6470 = !DILocation(line: 712, column: 6, scope: !6461)
!6471 = !DILocation(line: 713, column: 26, scope: !6466)
!6472 = !DILocation(line: 713, column: 3, scope: !6466)
!6473 = !DILocation(line: 715, column: 1, scope: !6461)
!6474 = distinct !DISubprogram(name: "atomic_dec_return", scope: !6475, file: !6475, line: 607, type: !6476, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6479)
!6475 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6476 = !DISubroutineType(types: !6477)
!6477 = !{!103, !6478}
!6478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!6479 = !{!6480}
!6480 = !DILocalVariable(name: "v", arg: 1, scope: !6474, file: !6475, line: 607, type: !6478)
!6481 = !DILocation(line: 607, column: 29, scope: !6474)
!6482 = !DILocation(line: 609, column: 2, scope: !6474)
!6483 = !DILocation(line: 609, column: 2, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6474, file: !6475, line: 609, column: 2)
!6485 = !DILocation(line: 610, column: 31, scope: !6474)
!6486 = !DILocation(line: 610, column: 2, scope: !6474)
!6487 = !DILocation(line: 611, column: 31, scope: !6474)
!6488 = !DILocation(line: 611, column: 9, scope: !6474)
!6489 = !DILocation(line: 611, column: 2, scope: !6474)
!6490 = distinct !DISubprogram(name: "pci_ext_cfg_avail", scope: !3, file: !3, line: 718, type: !829, scopeLine: 719, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6491 = !DILocation(line: 720, column: 6, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6490, file: !3, line: 720, column: 6)
!6493 = !DILocation(line: 720, column: 6, scope: !6490)
!6494 = !DILocation(line: 721, column: 3, scope: !6492)
!6495 = !DILocation(line: 723, column: 3, scope: !6492)
!6496 = !DILocation(line: 724, column: 1, scope: !6490)
!6497 = distinct !DISubprogram(name: "can_skip_ioresource_align", scope: !3, file: !3, line: 83, type: !5067, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6498)
!6498 = !{!6499}
!6499 = !DILocalVariable(name: "d", arg: 1, scope: !6497, file: !3, line: 83, type: !5061)
!6500 = !DILocation(line: 83, column: 73, scope: !6497)
!6501 = !DILocation(line: 85, column: 12, scope: !6497)
!6502 = !DILocation(line: 86, column: 2, scope: !6503)
!6503 = distinct !DILexicalBlock(scope: !6497, file: !3, line: 86, column: 2)
!6504 = !DILocation(line: 86, column: 2, scope: !6505)
!6505 = distinct !DILexicalBlock(scope: !6503, file: !3, line: 86, column: 2)
!6506 = !DILocation(line: 87, column: 2, scope: !6497)
!6507 = distinct !DISubprogram(name: "set_bf_sort", scope: !3, file: !3, line: 188, type: !5067, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6508)
!6508 = !{!6509}
!6509 = !DILocalVariable(name: "d", arg: 1, scope: !6507, file: !3, line: 188, type: !5061)
!6510 = !DILocation(line: 188, column: 59, scope: !6507)
!6511 = !DILocation(line: 190, column: 6, scope: !6512)
!6512 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 190, column: 6)
!6513 = !DILocation(line: 190, column: 18, scope: !6512)
!6514 = !DILocation(line: 190, column: 6, scope: !6507)
!6515 = !DILocation(line: 191, column: 15, scope: !6516)
!6516 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 190, column: 42)
!6517 = !DILocation(line: 192, column: 3, scope: !6518)
!6518 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 192, column: 3)
!6519 = !DILocation(line: 192, column: 3, scope: !6520)
!6520 = distinct !DILexicalBlock(scope: !6518, file: !3, line: 192, column: 3)
!6521 = !DILocation(line: 193, column: 2, scope: !6516)
!6522 = !DILocation(line: 194, column: 2, scope: !6507)
!6523 = distinct !DISubprogram(name: "find_sort_method", scope: !3, file: !3, line: 208, type: !5067, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6524)
!6524 = !{!6525}
!6525 = !DILocalVariable(name: "d", arg: 1, scope: !6523, file: !3, line: 208, type: !5061)
!6526 = !DILocation(line: 208, column: 64, scope: !6523)
!6527 = !DILocation(line: 210, column: 37, scope: !6523)
!6528 = !DILocation(line: 210, column: 2, scope: !6523)
!6529 = !DILocation(line: 211, column: 2, scope: !6523)
!6530 = distinct !DISubprogram(name: "set_scan_all", scope: !3, file: !3, line: 227, type: !5067, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6531)
!6531 = !{!6532}
!6532 = !DILocalVariable(name: "d", arg: 1, scope: !6530, file: !3, line: 227, type: !5061)
!6533 = !DILocation(line: 227, column: 60, scope: !6530)
!6534 = !DILocation(line: 229, column: 2, scope: !6535)
!6535 = distinct !DILexicalBlock(scope: !6530, file: !3, line: 229, column: 2)
!6536 = !DILocation(line: 229, column: 2, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6535, file: !3, line: 229, column: 2)
!6538 = !DILocation(line: 231, column: 2, scope: !6530)
!6539 = !DILocation(line: 232, column: 2, scope: !6530)
!6540 = !DISubprogram(name: "dmi_walk", scope: !5435, file: !5435, line: 111, type: !6541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6541 = !DISubroutineType(types: !6542)
!6542 = !{!103, !6543, !221}
!6543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6544, size: 64)
!6544 = !DISubroutineType(types: !6545)
!6545 = !{null, !6546, !221}
!6546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6547, size: 64)
!6547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6548)
!6548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_header", file: !5435, line: 76, size: 32, elements: !6549)
!6549 = !{!6550, !6551, !6552}
!6550 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6548, file: !5435, line: 77, baseType: !362, size: 8)
!6551 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6548, file: !5435, line: 78, baseType: !362, size: 8, offset: 8)
!6552 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !6548, file: !5435, line: 79, baseType: !369, size: 16, offset: 16)
!6553 = distinct !DISubprogram(name: "read_dmi_type_b1", scope: !3, file: !3, line: 197, type: !6544, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6554)
!6554 = !{!6555, !6556, !6557}
!6555 = !DILocalVariable(name: "dm", arg: 1, scope: !6553, file: !3, line: 197, type: !6546)
!6556 = !DILocalVariable(name: "private_data", arg: 2, scope: !6553, file: !3, line: 198, type: !221)
!6557 = !DILocalVariable(name: "data", scope: !6553, file: !3, line: 200, type: !5060)
!6558 = !DILocation(line: 197, column: 62, scope: !6553)
!6559 = !DILocation(line: 198, column: 15, scope: !6553)
!6560 = !DILocation(line: 200, column: 2, scope: !6553)
!6561 = !DILocation(line: 200, column: 6, scope: !6553)
!6562 = !DILocation(line: 200, column: 19, scope: !6553)
!6563 = !DILocation(line: 200, column: 22, scope: !6553)
!6564 = !DILocation(line: 202, column: 6, scope: !6565)
!6565 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 202, column: 6)
!6566 = !DILocation(line: 202, column: 10, scope: !6565)
!6567 = !DILocation(line: 202, column: 15, scope: !6565)
!6568 = !DILocation(line: 202, column: 6, scope: !6553)
!6569 = !DILocation(line: 203, column: 3, scope: !6565)
!6570 = !DILocation(line: 204, column: 17, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 204, column: 6)
!6572 = !DILocation(line: 204, column: 9, scope: !6571)
!6573 = !DILocation(line: 204, column: 23, scope: !6571)
!6574 = !DILocation(line: 204, column: 29, scope: !6571)
!6575 = !DILocation(line: 204, column: 37, scope: !6571)
!6576 = !DILocation(line: 204, column: 6, scope: !6553)
!6577 = !DILocation(line: 205, column: 45, scope: !6571)
!6578 = !DILocation(line: 205, column: 3, scope: !6571)
!6579 = !DILocation(line: 206, column: 1, scope: !6553)
!6580 = distinct !DISubprogram(name: "pci_add_flags", scope: !187, file: !187, line: 1063, type: !3001, scopeLine: 1063, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6581)
!6581 = !{!6582}
!6582 = !DILocalVariable(name: "flags", arg: 1, scope: !6580, file: !187, line: 1063, type: !103)
!6583 = !DILocation(line: 1063, column: 38, scope: !6580)
!6584 = !DILocation(line: 1063, column: 60, scope: !6580)
!6585 = !DILocation(line: 1063, column: 57, scope: !6580)
!6586 = !DILocation(line: 1063, column: 67, scope: !6580)
!6587 = distinct !DISubprogram(name: "kmalloc", scope: !211, file: !211, line: 591, type: !5878, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6588)
!6588 = !{!6589, !6590, !6591}
!6589 = !DILocalVariable(name: "size", arg: 1, scope: !6587, file: !211, line: 591, type: !447)
!6590 = !DILocalVariable(name: "flags", arg: 2, scope: !6587, file: !211, line: 591, type: !1247)
!6591 = !DILocalVariable(name: "index", scope: !6592, file: !211, line: 594, type: !7)
!6592 = distinct !DILexicalBlock(scope: !6593, file: !211, line: 593, column: 42)
!6593 = distinct !DILexicalBlock(scope: !6587, file: !211, line: 593, column: 6)
!6594 = !DILocation(line: 591, column: 61, scope: !6587)
!6595 = !DILocation(line: 591, column: 73, scope: !6587)
!6596 = !DILocation(line: 593, column: 27, scope: !6593)
!6597 = !DILocation(line: 593, column: 6, scope: !6593)
!6598 = !DILocation(line: 593, column: 33, scope: !6593)
!6599 = !DILocation(line: 593, column: 36, scope: !6593)
!6600 = !DILocation(line: 593, column: 6, scope: !6587)
!6601 = !DILocation(line: 594, column: 3, scope: !6592)
!6602 = !DILocation(line: 594, column: 16, scope: !6592)
!6603 = !DILocation(line: 596, column: 7, scope: !6604)
!6604 = distinct !DILexicalBlock(scope: !6592, file: !211, line: 596, column: 7)
!6605 = !DILocation(line: 596, column: 12, scope: !6604)
!6606 = !DILocation(line: 596, column: 7, scope: !6592)
!6607 = !DILocation(line: 597, column: 25, scope: !6604)
!6608 = !DILocation(line: 597, column: 31, scope: !6604)
!6609 = !DILocation(line: 597, column: 11, scope: !6604)
!6610 = !DILocation(line: 597, column: 4, scope: !6604)
!6611 = !DILocation(line: 599, column: 11, scope: !6592)
!6612 = !DILocation(line: 599, column: 9, scope: !6592)
!6613 = !DILocation(line: 601, column: 33, scope: !6592)
!6614 = !DILocation(line: 601, column: 40, scope: !6592)
!6615 = !DILocation(line: 601, column: 20, scope: !6592)
!6616 = !DILocation(line: 601, column: 5, scope: !6592)
!6617 = !DILocation(line: 601, column: 51, scope: !6592)
!6618 = !DILocation(line: 602, column: 5, scope: !6592)
!6619 = !DILocation(line: 602, column: 12, scope: !6592)
!6620 = !DILocation(line: 600, column: 10, scope: !6592)
!6621 = !DILocation(line: 600, column: 3, scope: !6592)
!6622 = !DILocation(line: 603, column: 2, scope: !6593)
!6623 = !DILocation(line: 604, column: 19, scope: !6587)
!6624 = !DILocation(line: 604, column: 25, scope: !6587)
!6625 = !DILocation(line: 604, column: 9, scope: !6587)
!6626 = !DILocation(line: 604, column: 2, scope: !6587)
!6627 = !DILocation(line: 605, column: 1, scope: !6587)
!6628 = !DISubprogram(name: "kmalloc_large", scope: !211, file: !211, line: 531, type: !5878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6629 = distinct !DISubprogram(name: "__kmalloc_index", scope: !211, file: !211, line: 444, type: !6630, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6632)
!6630 = !DISubroutineType(types: !6631)
!6631 = !{!7, !447, !815}
!6632 = !{!6633, !6634}
!6633 = !DILocalVariable(name: "size", arg: 1, scope: !6629, file: !211, line: 444, type: !447)
!6634 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6629, file: !211, line: 445, type: !815)
!6635 = !DILocation(line: 444, column: 60, scope: !6629)
!6636 = !DILocation(line: 445, column: 16, scope: !6629)
!6637 = !DILocation(line: 447, column: 7, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 447, column: 6)
!6639 = !DILocation(line: 447, column: 6, scope: !6629)
!6640 = !DILocation(line: 448, column: 3, scope: !6638)
!6641 = !DILocation(line: 450, column: 6, scope: !6642)
!6642 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 450, column: 6)
!6643 = !DILocation(line: 450, column: 11, scope: !6642)
!6644 = !DILocation(line: 450, column: 6, scope: !6629)
!6645 = !DILocation(line: 451, column: 3, scope: !6642)
!6646 = !DILocation(line: 453, column: 32, scope: !6647)
!6647 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 453, column: 6)
!6648 = !DILocation(line: 453, column: 37, scope: !6647)
!6649 = !DILocation(line: 453, column: 42, scope: !6647)
!6650 = !DILocation(line: 453, column: 45, scope: !6647)
!6651 = !DILocation(line: 453, column: 50, scope: !6647)
!6652 = !DILocation(line: 453, column: 6, scope: !6629)
!6653 = !DILocation(line: 454, column: 3, scope: !6647)
!6654 = !DILocation(line: 455, column: 32, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 455, column: 6)
!6656 = !DILocation(line: 455, column: 37, scope: !6655)
!6657 = !DILocation(line: 455, column: 43, scope: !6655)
!6658 = !DILocation(line: 455, column: 46, scope: !6655)
!6659 = !DILocation(line: 455, column: 51, scope: !6655)
!6660 = !DILocation(line: 455, column: 6, scope: !6629)
!6661 = !DILocation(line: 456, column: 3, scope: !6655)
!6662 = !DILocation(line: 457, column: 6, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 457, column: 6)
!6664 = !DILocation(line: 457, column: 11, scope: !6663)
!6665 = !DILocation(line: 457, column: 6, scope: !6629)
!6666 = !DILocation(line: 457, column: 26, scope: !6663)
!6667 = !DILocation(line: 458, column: 6, scope: !6668)
!6668 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 458, column: 6)
!6669 = !DILocation(line: 458, column: 11, scope: !6668)
!6670 = !DILocation(line: 458, column: 6, scope: !6629)
!6671 = !DILocation(line: 458, column: 26, scope: !6668)
!6672 = !DILocation(line: 459, column: 6, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 459, column: 6)
!6674 = !DILocation(line: 459, column: 11, scope: !6673)
!6675 = !DILocation(line: 459, column: 6, scope: !6629)
!6676 = !DILocation(line: 459, column: 26, scope: !6673)
!6677 = !DILocation(line: 460, column: 6, scope: !6678)
!6678 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 460, column: 6)
!6679 = !DILocation(line: 460, column: 11, scope: !6678)
!6680 = !DILocation(line: 460, column: 6, scope: !6629)
!6681 = !DILocation(line: 460, column: 26, scope: !6678)
!6682 = !DILocation(line: 461, column: 6, scope: !6683)
!6683 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 461, column: 6)
!6684 = !DILocation(line: 461, column: 11, scope: !6683)
!6685 = !DILocation(line: 461, column: 6, scope: !6629)
!6686 = !DILocation(line: 461, column: 26, scope: !6683)
!6687 = !DILocation(line: 462, column: 6, scope: !6688)
!6688 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 462, column: 6)
!6689 = !DILocation(line: 462, column: 11, scope: !6688)
!6690 = !DILocation(line: 462, column: 6, scope: !6629)
!6691 = !DILocation(line: 462, column: 26, scope: !6688)
!6692 = !DILocation(line: 463, column: 6, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 463, column: 6)
!6694 = !DILocation(line: 463, column: 11, scope: !6693)
!6695 = !DILocation(line: 463, column: 6, scope: !6629)
!6696 = !DILocation(line: 463, column: 26, scope: !6693)
!6697 = !DILocation(line: 464, column: 6, scope: !6698)
!6698 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 464, column: 6)
!6699 = !DILocation(line: 464, column: 11, scope: !6698)
!6700 = !DILocation(line: 464, column: 6, scope: !6629)
!6701 = !DILocation(line: 464, column: 26, scope: !6698)
!6702 = !DILocation(line: 465, column: 6, scope: !6703)
!6703 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 465, column: 6)
!6704 = !DILocation(line: 465, column: 11, scope: !6703)
!6705 = !DILocation(line: 465, column: 6, scope: !6629)
!6706 = !DILocation(line: 465, column: 26, scope: !6703)
!6707 = !DILocation(line: 466, column: 6, scope: !6708)
!6708 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 466, column: 6)
!6709 = !DILocation(line: 466, column: 11, scope: !6708)
!6710 = !DILocation(line: 466, column: 6, scope: !6629)
!6711 = !DILocation(line: 466, column: 26, scope: !6708)
!6712 = !DILocation(line: 467, column: 6, scope: !6713)
!6713 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 467, column: 6)
!6714 = !DILocation(line: 467, column: 11, scope: !6713)
!6715 = !DILocation(line: 467, column: 6, scope: !6629)
!6716 = !DILocation(line: 467, column: 26, scope: !6713)
!6717 = !DILocation(line: 468, column: 6, scope: !6718)
!6718 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 468, column: 6)
!6719 = !DILocation(line: 468, column: 11, scope: !6718)
!6720 = !DILocation(line: 468, column: 6, scope: !6629)
!6721 = !DILocation(line: 468, column: 26, scope: !6718)
!6722 = !DILocation(line: 469, column: 6, scope: !6723)
!6723 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 469, column: 6)
!6724 = !DILocation(line: 469, column: 11, scope: !6723)
!6725 = !DILocation(line: 469, column: 6, scope: !6629)
!6726 = !DILocation(line: 469, column: 26, scope: !6723)
!6727 = !DILocation(line: 470, column: 6, scope: !6728)
!6728 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 470, column: 6)
!6729 = !DILocation(line: 470, column: 11, scope: !6728)
!6730 = !DILocation(line: 470, column: 6, scope: !6629)
!6731 = !DILocation(line: 470, column: 26, scope: !6728)
!6732 = !DILocation(line: 471, column: 6, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 471, column: 6)
!6734 = !DILocation(line: 471, column: 11, scope: !6733)
!6735 = !DILocation(line: 471, column: 6, scope: !6629)
!6736 = !DILocation(line: 471, column: 26, scope: !6733)
!6737 = !DILocation(line: 472, column: 6, scope: !6738)
!6738 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 472, column: 6)
!6739 = !DILocation(line: 472, column: 11, scope: !6738)
!6740 = !DILocation(line: 472, column: 6, scope: !6629)
!6741 = !DILocation(line: 472, column: 26, scope: !6738)
!6742 = !DILocation(line: 473, column: 6, scope: !6743)
!6743 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 473, column: 6)
!6744 = !DILocation(line: 473, column: 11, scope: !6743)
!6745 = !DILocation(line: 473, column: 6, scope: !6629)
!6746 = !DILocation(line: 473, column: 26, scope: !6743)
!6747 = !DILocation(line: 474, column: 6, scope: !6748)
!6748 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 474, column: 6)
!6749 = !DILocation(line: 474, column: 11, scope: !6748)
!6750 = !DILocation(line: 474, column: 6, scope: !6629)
!6751 = !DILocation(line: 474, column: 27, scope: !6748)
!6752 = !DILocation(line: 475, column: 6, scope: !6753)
!6753 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 475, column: 6)
!6754 = !DILocation(line: 475, column: 11, scope: !6753)
!6755 = !DILocation(line: 475, column: 6, scope: !6629)
!6756 = !DILocation(line: 475, column: 32, scope: !6753)
!6757 = !DILocation(line: 477, column: 50, scope: !6758)
!6758 = distinct !DILexicalBlock(scope: !6629, file: !211, line: 477, column: 6)
!6759 = !{i8 0, i8 2}
!6760 = !DILocation(line: 477, column: 6, scope: !6629)
!6761 = !DILocation(line: 478, column: 3, scope: !6758)
!6762 = !DILocation(line: 478, column: 3, scope: !6763)
!6763 = distinct !DILexicalBlock(scope: !6764, file: !211, line: 478, column: 3)
!6764 = distinct !DILexicalBlock(scope: !6758, file: !211, line: 478, column: 3)
!6765 = !{i32 -2141970948}
!6766 = !DILocation(line: 478, column: 3, scope: !6764)
!6767 = !DILocation(line: 480, column: 3, scope: !6758)
!6768 = !DILocation(line: 480, column: 3, scope: !6769)
!6769 = distinct !DILexicalBlock(scope: !6758, file: !211, line: 480, column: 3)
!6770 = !DILocation(line: 480, column: 3, scope: !6771)
!6771 = distinct !DILexicalBlock(scope: !6769, file: !211, line: 480, column: 3)
!6772 = !DILocation(line: 480, column: 3, scope: !6773)
!6773 = distinct !DILexicalBlock(scope: !6769, file: !211, line: 480, column: 3)
!6774 = !{i64 2152996551, i64 2152996580, i64 2152996626, i64 2152996684, i64 2152996738, i64 2152996792, i64 2152996847, i64 2152996878}
!6775 = !DILocation(line: 483, column: 2, scope: !6629)
!6776 = !DILocation(line: 484, column: 1, scope: !6629)
!6777 = !DISubprogram(name: "kmalloc_trace", scope: !211, file: !211, line: 525, type: !6778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6778 = !DISubroutineType(types: !6779)
!6779 = !{!221, !6780, !1247, !447}
!6780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6781, size: 64)
!6781 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6782, line: 11, flags: DIFlagFwdDecl)
!6782 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6783 = distinct !DISubprogram(name: "kmalloc_type", scope: !211, file: !211, line: 401, type: !6784, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6786)
!6784 = !DISubroutineType(types: !6785)
!6785 = !{!210, !1247, !262}
!6786 = !{!6787, !6788}
!6787 = !DILocalVariable(name: "flags", arg: 1, scope: !6783, file: !211, line: 401, type: !1247)
!6788 = !DILocalVariable(name: "caller", arg: 2, scope: !6783, file: !211, line: 401, type: !262)
!6789 = !DILocation(line: 401, column: 67, scope: !6783)
!6790 = !DILocation(line: 401, column: 88, scope: !6783)
!6791 = !DILocation(line: 407, column: 6, scope: !6792)
!6792 = distinct !DILexicalBlock(scope: !6783, file: !211, line: 407, column: 6)
!6793 = !DILocation(line: 407, column: 6, scope: !6783)
!6794 = !DILocation(line: 413, column: 3, scope: !6792)
!6795 = !DILocation(line: 423, column: 38, scope: !6796)
!6796 = distinct !DILexicalBlock(scope: !6783, file: !211, line: 423, column: 6)
!6797 = !DILocation(line: 423, column: 44, scope: !6796)
!6798 = !DILocation(line: 423, column: 6, scope: !6783)
!6799 = !DILocation(line: 424, column: 3, scope: !6796)
!6800 = !DILocation(line: 426, column: 3, scope: !6801)
!6801 = distinct !DILexicalBlock(scope: !6783, file: !211, line: 425, column: 6)
!6802 = !DILocation(line: 429, column: 1, scope: !6783)
!6803 = !DISubprogram(name: "__kmalloc", scope: !211, file: !211, line: 488, type: !5878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6804 = !DISubprogram(name: "__compiletime_assert_204", scope: !211, file: !211, line: 478, type: !1098, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6805 = distinct !DISubprogram(name: "to_pci_sysdata", scope: !5037, file: !5037, line: 36, type: !6806, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6808)
!6806 = !DISubroutineType(types: !6807)
!6807 = !{!5570, !5911}
!6808 = !{!6809}
!6809 = !DILocalVariable(name: "bus", arg: 1, scope: !6805, file: !5037, line: 36, type: !5911)
!6810 = !DILocation(line: 36, column: 72, scope: !6805)
!6811 = !DILocation(line: 38, column: 9, scope: !6805)
!6812 = !DILocation(line: 38, column: 14, scope: !6805)
!6813 = !DILocation(line: 38, column: 2, scope: !6805)
!6814 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6815, file: !6815, line: 94, type: !6816, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6821)
!6815 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6816 = !DISubroutineType(types: !6817)
!6817 = !{null, !6818, !447}
!6818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6819, size: 64)
!6819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6820)
!6820 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6821 = !{!6822, !6823}
!6822 = !DILocalVariable(name: "v", arg: 1, scope: !6814, file: !6815, line: 94, type: !6818)
!6823 = !DILocalVariable(name: "size", arg: 2, scope: !6814, file: !6815, line: 94, type: !447)
!6824 = !DILocation(line: 94, column: 79, scope: !6814)
!6825 = !DILocation(line: 94, column: 89, scope: !6814)
!6826 = !DILocation(line: 96, column: 20, scope: !6814)
!6827 = !DILocation(line: 96, column: 23, scope: !6814)
!6828 = !DILocation(line: 96, column: 2, scope: !6814)
!6829 = !DILocation(line: 97, column: 2, scope: !6814)
!6830 = !DILocation(line: 98, column: 1, scope: !6814)
!6831 = distinct !DISubprogram(name: "raw_atomic_dec_return", scope: !6832, file: !6832, line: 1214, type: !6476, scopeLine: 1215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6833)
!6832 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6833 = !{!6834}
!6834 = !DILocalVariable(name: "v", arg: 1, scope: !6831, file: !6832, line: 1214, type: !6478)
!6835 = !DILocation(line: 1214, column: 33, scope: !6831)
!6836 = !DILocation(line: 1225, column: 34, scope: !6831)
!6837 = !DILocation(line: 1225, column: 9, scope: !6831)
!6838 = !DILocation(line: 1225, column: 2, scope: !6831)
!6839 = distinct !DISubprogram(name: "kasan_check_write", scope: !6840, file: !6840, line: 44, type: !6841, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6843)
!6840 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6841 = !DISubroutineType(types: !6842)
!6842 = !{!815, !6818, !7}
!6843 = !{!6844, !6845}
!6844 = !DILocalVariable(name: "p", arg: 1, scope: !6839, file: !6840, line: 44, type: !6818)
!6845 = !DILocalVariable(name: "size", arg: 2, scope: !6839, file: !6840, line: 44, type: !7)
!6846 = !DILocation(line: 44, column: 59, scope: !6839)
!6847 = !DILocation(line: 44, column: 75, scope: !6839)
!6848 = !DILocation(line: 46, column: 2, scope: !6839)
!6849 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6850, file: !6850, line: 229, type: !6851, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6853)
!6850 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6851 = !DISubroutineType(types: !6852)
!6852 = !{null, !6818, !447, !103}
!6853 = !{!6854, !6855, !6856}
!6854 = !DILocalVariable(name: "ptr", arg: 1, scope: !6849, file: !6850, line: 229, type: !6818)
!6855 = !DILocalVariable(name: "size", arg: 2, scope: !6849, file: !6850, line: 229, type: !447)
!6856 = !DILocalVariable(name: "type", arg: 3, scope: !6849, file: !6850, line: 230, type: !103)
!6857 = !DILocation(line: 229, column: 60, scope: !6849)
!6858 = !DILocation(line: 229, column: 72, scope: !6849)
!6859 = !DILocation(line: 230, column: 15, scope: !6849)
!6860 = !DILocation(line: 230, column: 23, scope: !6849)
!6861 = distinct !DISubprogram(name: "raw_atomic_sub_return", scope: !6832, file: !6832, line: 771, type: !6862, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6864)
!6862 = !DISubroutineType(types: !6863)
!6863 = !{!103, !103, !6478}
!6864 = !{!6865, !6866}
!6865 = !DILocalVariable(name: "i", arg: 1, scope: !6861, file: !6832, line: 771, type: !103)
!6866 = !DILocalVariable(name: "v", arg: 2, scope: !6861, file: !6832, line: 771, type: !6478)
!6867 = !DILocation(line: 771, column: 27, scope: !6861)
!6868 = !DILocation(line: 771, column: 40, scope: !6861)
!6869 = !DILocation(line: 774, column: 32, scope: !6861)
!6870 = !DILocation(line: 774, column: 35, scope: !6861)
!6871 = !DILocation(line: 774, column: 9, scope: !6861)
!6872 = !DILocation(line: 774, column: 2, scope: !6861)
!6873 = distinct !DISubprogram(name: "arch_atomic_sub_return", scope: !6874, file: !6874, line: 89, type: !6862, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6875)
!6874 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6875 = !{!6876, !6877}
!6876 = !DILocalVariable(name: "i", arg: 1, scope: !6873, file: !6874, line: 89, type: !103)
!6877 = !DILocalVariable(name: "v", arg: 2, scope: !6873, file: !6874, line: 89, type: !6478)
!6878 = !DILocation(line: 89, column: 55, scope: !6873)
!6879 = !DILocation(line: 89, column: 68, scope: !6873)
!6880 = !DILocation(line: 91, column: 33, scope: !6873)
!6881 = !DILocation(line: 91, column: 32, scope: !6873)
!6882 = !DILocation(line: 91, column: 36, scope: !6873)
!6883 = !DILocation(line: 91, column: 9, scope: !6873)
!6884 = !DILocation(line: 91, column: 2, scope: !6873)
!6885 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !6874, file: !6874, line: 83, type: !6862, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6886)
!6886 = !{!6887, !6888, !6889}
!6887 = !DILocalVariable(name: "i", arg: 1, scope: !6885, file: !6874, line: 83, type: !103)
!6888 = !DILocalVariable(name: "v", arg: 2, scope: !6885, file: !6874, line: 83, type: !6478)
!6889 = !DILocalVariable(name: "__ret", scope: !6890, file: !6874, line: 85, type: !103)
!6890 = distinct !DILexicalBlock(scope: !6885, file: !6874, line: 85, column: 13)
!6891 = !DILocation(line: 83, column: 55, scope: !6885)
!6892 = !DILocation(line: 83, column: 68, scope: !6885)
!6893 = !DILocation(line: 85, column: 9, scope: !6885)
!6894 = !DILocation(line: 85, column: 13, scope: !6890)
!6895 = !{i64 2148422046, i64 2148422085, i64 2148422106, i64 2148422143, i64 2148422166, i64 2148422175}
!6896 = !DILocation(line: 85, column: 13, scope: !6885)
!6897 = !DILocation(line: 85, column: 11, scope: !6885)
!6898 = !DILocation(line: 85, column: 2, scope: !6885)
