; ModuleID = 'arch/x86/pci/acpi.c'
source_filename = "arch/x86/pci/acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.acpi_pci_root_ops = type { ptr, ptr, ptr, ptr }
%struct.x86_init_ops = type { %struct.x86_init_resources, %struct.x86_init_mpparse, %struct.x86_init_irqs, %struct.x86_init_oem, %struct.x86_init_paging, %struct.x86_init_timers, %struct.x86_init_iommu, %struct.x86_init_pci, %struct.x86_hyper_init, %struct.x86_init_acpi }
%struct.x86_init_resources = type { ptr, ptr, ptr, ptr }
%struct.x86_init_mpparse = type { ptr, ptr, ptr }
%struct.x86_init_irqs = type { ptr, ptr, ptr, ptr, ptr }
%struct.x86_init_oem = type { ptr, ptr }
%struct.x86_init_paging = type { ptr }
%struct.x86_init_timers = type { ptr, ptr, ptr }
%struct.x86_init_iommu = type { ptr }
%struct.x86_init_pci = type { ptr, ptr, ptr, ptr }
%struct.x86_hyper_init = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x86_init_acpi = type { ptr, ptr, ptr }
%struct.nodemask_t = type { [1 x i64] }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_raw_ops = type { ptr, ptr }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.13, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i64 }
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
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_sysdata = type { i32, i32, ptr, ptr, ptr }
%struct.acpi_pci_root = type { ptr, ptr, i16, i32, %struct.resource, i32, i32, i32, i32, i64 }
%struct.acpi_device = type { i32, i32, ptr, %struct.fwnode_handle, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, ptr, ptr, ptr, ptr, %struct.device, i32, i32, %struct.list_head, %struct.mutex, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], i32, %struct.acpi_pnp_type, i64, ptr, %struct.list_head, [40 x i8], [20 x i8], ptr }
%struct.acpi_pnp_type = type { i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state], i8 }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.14, i32, i32, %struct.list_head }
%struct.anon.14 = type { i8 }
%struct.acpi_device_wakeup = type { ptr, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, ptr, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { ptr, ptr }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, ptr }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_dir = type { ptr }
%struct.acpi_device_data = type { ptr, %struct.list_head, ptr, %struct.list_head }
%struct.pci_root_info = type { %struct.acpi_pci_root_info, %struct.pci_sysdata, i8, i8, i8 }
%struct.acpi_pci_root_info = type { ptr, ptr, ptr, %struct.list_head, [16 x i8] }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [48 x i8], [0 x i64] }
%struct.resource_entry = type { %struct.list_head, ptr, i64, %struct.resource }

@pci_use_e820 = hidden global i8 1, align 1, !dbg !0
@iomem_resource = external dso_local global %struct.resource, align 8
@pci_use_crs = internal global i8 1, align 1, !dbg !5258
@pci_crs_quirks = internal constant [13 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @set_use_crs, ptr @.str.11, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"IBM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"x3800\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_use_crs, ptr @.str.12, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"ALiveSATA2-GLAN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_use_crs, ptr @.str.13, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"ASUSTeK Computer INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"M2V-MX SE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 1, [79 x i8] c"American Megatrends Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_use_crs, ptr @.str.14, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"MICRO-STAR INTERNATIONAL CO., LTD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"MS-7253\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 1, [79 x i8] c"Phoenix Technologies, LTD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_use_crs, ptr @.str.15, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Foxconn\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"K8M890-8237A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 1, [79 x i8] c"Phoenix Technologies, LTD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_nouse_crs, ptr @.str.16, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Studio 1557\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"A09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_nouse_crs, ptr @.str.17, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"LENOVO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"2847DFG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"6JET85WW (1.43 )\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_nouse_crs, ptr @.str.18, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Supermicro\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"X8DTH-i/6/iF/6F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"2.0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_ignore_seg, ptr @.str.19, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Hewlett-Packard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"HP xw9300 Workstation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_no_e820, ptr @.str.20, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"LENOVO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 8, [79 x i8] c"IIL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_no_e820, ptr @.str.21, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Acer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Spin SP513-54N\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @set_no_e820, ptr @.str.22, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"X170KM-G\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], section ".init.rodata", align 16, !dbg !5306
@pci_probe = external dso_local global i32, align 4
@.str = private unnamed_addr constant [86 x i8] c"\016PCI: %s host bridge windows from ACPI; if necessary, use \22pci=%s\22 and report a bug\0A\00", align 1, !dbg !5210
@.str.1 = private unnamed_addr constant [6 x i8] c"Using\00", align 1, !dbg !5215
@.str.2 = private unnamed_addr constant [9 x i8] c"Ignoring\00", align 1, !dbg !5217
@.str.3 = private unnamed_addr constant [6 x i8] c"nocrs\00", align 1, !dbg !5222
@.str.4 = private unnamed_addr constant [8 x i8] c"use_crs\00", align 1, !dbg !5224
@.str.5 = private unnamed_addr constant [53 x i8] c"\016PCI: %s E820 reservations for host bridge windows\0A\00", align 1, !dbg !5226
@.str.6 = private unnamed_addr constant [92 x i8] c"\016PCI: Please notify linux-pci@vger.kernel.org so future kernels can do this automatically\0A\00", align 1, !dbg !5231
@pci_ignore_seg = internal global i8 0, align 1, !dbg !5256
@pci_domains_supported = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [68 x i8] c"\014PCI: pci_bus %04x:%02x: ignored (multiple domains not supported)\0A\00", align 1, !dbg !5236
@.str.8 = private unnamed_addr constant [44 x i8] c"pci_bus %04x:%02x: ignored (out of memory)\0A\00", align 1, !dbg !5241
@acpi_pci_root_ops = internal global %struct.acpi_pci_root_ops { ptr @pci_root_ops, ptr @pci_acpi_root_init_info, ptr @pci_acpi_root_release_info, ptr @pci_acpi_root_prepare_resources }, align 8, !dbg !5347
@acpi_noirq = external dso_local global i32, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"\016PCI: Using ACPI for IRQ routing\0A\00", align 1, !dbg !5246
@pcibios_enable_irq = external dso_local global ptr, align 8
@pcibios_disable_irq = external dso_local global ptr, align 8
@x86_init = external dso_local global %struct.x86_init_ops, align 8
@pci_routeirq = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [80 x i8] c"\016PCI: Routing PCI interrupts for all devices because \22pci=routeirq\22 specified\0A\00", align 1, !dbg !5251
@.str.11 = private unnamed_addr constant [17 x i8] c"IBM System x3800\00", align 1, !dbg !5260
@.str.12 = private unnamed_addr constant [23 x i8] c"ASRock ALiveSATA2-GLAN\00", align 1, !dbg !5265
@.str.13 = private unnamed_addr constant [15 x i8] c"ASUS M2V-MX SE\00", align 1, !dbg !5270
@.str.14 = private unnamed_addr constant [12 x i8] c"MSI MS-7253\00", align 1, !dbg !5275
@.str.15 = private unnamed_addr constant [21 x i8] c"Foxconn K8M890-8237A\00", align 1, !dbg !5278
@.str.16 = private unnamed_addr constant [17 x i8] c"Dell Studio 1557\00", align 1, !dbg !5283
@.str.17 = private unnamed_addr constant [15 x i8] c"Thinkpad SL510\00", align 1, !dbg !5285
@.str.18 = private unnamed_addr constant [17 x i8] c"Supermicro X8DTH\00", align 1, !dbg !5287
@.str.19 = private unnamed_addr constant [10 x i8] c"HP xw9300\00", align 1, !dbg !5289
@.str.20 = private unnamed_addr constant [29 x i8] c"Lenovo *IIL* product version\00", align 1, !dbg !5294
@.str.21 = private unnamed_addr constant [24 x i8] c"Acer Spin 5 (SP513-54N)\00", align 1, !dbg !5299
@.str.22 = private unnamed_addr constant [24 x i8] c"Clevo X170KM-G Barebone\00", align 1, !dbg !5304
@.str.23 = private unnamed_addr constant [40 x i8] c"\016PCI: %s detected: ignoring ACPI _SEG\0A\00", align 1, !dbg !5331
@.str.24 = private unnamed_addr constant [57 x i8] c"\016PCI: %s detected: not clipping E820 regions from _CRS\0A\00", align 1, !dbg !5333
@.str.25 = private unnamed_addr constant [20 x i8] c"usb4-host-interface\00", align 1, !dbg !5338
@.str.26 = private unnamed_addr constant [109 x i8] c"[Firmware Bug]: no _PXM; falling back to node %d from hardware (may be inconsistent with ACPI node numbers)\0A\00", align 1, !dbg !5340
@node_states = external dso_local global [6 x %struct.nodemask_t], align 16
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.27 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5345
@pci_root_ops = external dso_local global %struct.pci_ops, align 8
@raw_pci_ext_ops = external dso_local global ptr, align 8
@pci_mmcfg = external dso_local constant %struct.pci_raw_ops, align 8
@.str.28 = private unnamed_addr constant [22 x i8] c"MMCONFIG is disabled,\00", align 1, !dbg !5349
@.str.29 = private unnamed_addr constant [34 x i8] c"fail to add MMCONFIG information,\00", align 1, !dbg !5354
@.str.30 = private unnamed_addr constant [60 x i8] c"%s can't access configuration space under this host bridge\0A\00", align 1, !dbg !5359
@.str.31 = private unnamed_addr constant [64 x i8] c"%s can't access extended configuration space under this bridge\0A\00", align 1, !dbg !5364
@.str.32 = private unnamed_addr constant [3 x i8] c"\017\00", align 1, !dbg !5367
@.str.33 = private unnamed_addr constant [34 x i8] c"host bridge window %pR (ignored)\0A\00", align 1, !dbg !5370

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @pci_acpi_crs_quirks() #0 section ".init.text" align 16 !dbg !5381 {
entry:
  %year = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %year) #17, !dbg !5384
  call void @llvm.dbg.declare(metadata ptr %year, metadata !5383, metadata !DIExpression()), !dbg !5385
  %call = call i32 @dmi_get_bios_year() #18, !dbg !5386
  store i32 %call, ptr %year, align 4, !dbg !5385
  %0 = load i32, ptr %year, align 4, !dbg !5387
  %cmp = icmp sge i32 %0, 0, !dbg !5389
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5390

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %year, align 4, !dbg !5391
  %cmp1 = icmp slt i32 %1, 2008, !dbg !5392
  br i1 %cmp1, label %land.lhs.true2, label %if.end, !dbg !5393

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i64, ptr getelementptr inbounds (%struct.resource, ptr @iomem_resource, i32 0, i32 1), align 8, !dbg !5394
  %cmp3 = icmp ule i64 %2, 4294967295, !dbg !5395
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5396

if.then:                                          ; preds = %land.lhs.true2
  store i8 0, ptr @pci_use_crs, align 1, !dbg !5397
  br label %if.end, !dbg !5398

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %3 = load i32, ptr %year, align 4, !dbg !5399
  %cmp4 = icmp sge i32 %3, 2023, !dbg !5401
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5402

if.then5:                                         ; preds = %if.end
  store i8 0, ptr @pci_use_e820, align 1, !dbg !5403
  br label %if.end6, !dbg !5404

if.end6:                                          ; preds = %if.then5, %if.end
  %call7 = call i32 @dmi_check_system(ptr noundef @pci_crs_quirks) #18, !dbg !5405
  %4 = load i32, ptr @pci_probe, align 4, !dbg !5406
  %and = and i32 %4, 1048576, !dbg !5408
  %tobool = icmp ne i32 %and, 0, !dbg !5408
  br i1 %tobool, label %if.then8, label %if.else, !dbg !5409

if.then8:                                         ; preds = %if.end6
  store i8 0, ptr @pci_use_crs, align 1, !dbg !5410
  br label %if.end13, !dbg !5411

if.else:                                          ; preds = %if.end6
  %5 = load i32, ptr @pci_probe, align 4, !dbg !5412
  %and9 = and i32 %5, 65536, !dbg !5414
  %tobool10 = icmp ne i32 %and9, 0, !dbg !5414
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5415

if.then11:                                        ; preds = %if.else
  store i8 1, ptr @pci_use_crs, align 1, !dbg !5416
  br label %if.end12, !dbg !5417

if.end12:                                         ; preds = %if.then11, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then8
  br label %do.body, !dbg !5418

do.body:                                          ; preds = %if.end13
  br label %do.cond, !dbg !5420

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5420

do.end:                                           ; preds = %do.cond
  %6 = load i8, ptr @pci_use_crs, align 1, !dbg !5418, !range !5422, !noundef !929
  %tobool14 = trunc i8 %6 to i1, !dbg !5418
  %7 = zext i1 %tobool14 to i64, !dbg !5418
  %cond = select i1 %tobool14, ptr @.str.1, ptr @.str.2, !dbg !5418
  %8 = load i8, ptr @pci_use_crs, align 1, !dbg !5418, !range !5422, !noundef !929
  %tobool15 = trunc i8 %8 to i1, !dbg !5418
  %9 = zext i1 %tobool15 to i64, !dbg !5418
  %cond16 = select i1 %tobool15, ptr @.str.3, ptr @.str.4, !dbg !5418
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %cond, ptr noundef %cond16) #19, !dbg !5418
  store i32 %call17, ptr %tmp, align 4, !dbg !5420
  %10 = load i32, ptr %tmp, align 4, !dbg !5418
  %11 = load i32, ptr @pci_probe, align 4, !dbg !5423
  %and18 = and i32 %11, 16777216, !dbg !5425
  %tobool19 = icmp ne i32 %and18, 0, !dbg !5425
  br i1 %tobool19, label %if.then20, label %if.else21, !dbg !5426

if.then20:                                        ; preds = %do.end
  store i8 0, ptr @pci_use_e820, align 1, !dbg !5427
  br label %if.end26, !dbg !5428

if.else21:                                        ; preds = %do.end
  %12 = load i32, ptr @pci_probe, align 4, !dbg !5429
  %and22 = and i32 %12, 8388608, !dbg !5431
  %tobool23 = icmp ne i32 %and22, 0, !dbg !5431
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5432

if.then24:                                        ; preds = %if.else21
  store i8 1, ptr @pci_use_e820, align 1, !dbg !5433
  br label %if.end25, !dbg !5434

if.end25:                                         ; preds = %if.then24, %if.else21
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then20
  br label %do.body27, !dbg !5435

do.body27:                                        ; preds = %if.end26
  br label %do.cond28, !dbg !5437

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !5437

do.end29:                                         ; preds = %do.cond28
  %13 = load i8, ptr @pci_use_e820, align 1, !dbg !5435, !range !5422, !noundef !929
  %tobool31 = trunc i8 %13 to i1, !dbg !5435
  %14 = zext i1 %tobool31 to i64, !dbg !5435
  %cond32 = select i1 %tobool31, ptr @.str.1, ptr @.str.2, !dbg !5435
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %cond32) #19, !dbg !5435
  store i32 %call33, ptr %tmp30, align 4, !dbg !5437
  %15 = load i32, ptr %tmp30, align 4, !dbg !5435
  %16 = load i32, ptr @pci_probe, align 4, !dbg !5439
  %and34 = and i32 %16, 25165824, !dbg !5441
  %tobool35 = icmp ne i32 %and34, 0, !dbg !5441
  br i1 %tobool35, label %if.then36, label %if.end42, !dbg !5442

if.then36:                                        ; preds = %do.end29
  br label %do.body37, !dbg !5443

do.body37:                                        ; preds = %if.then36
  br label %do.cond38, !dbg !5445

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !5445

do.end39:                                         ; preds = %do.cond38
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #19, !dbg !5443
  store i32 %call41, ptr %tmp40, align 4, !dbg !5445
  %17 = load i32, ptr %tmp40, align 4, !dbg !5443
  br label %if.end42, !dbg !5447

if.end42:                                         ; preds = %do.end39, %do.end29
  call void @llvm.lifetime.end.p0(i64 4, ptr %year) #17, !dbg !5448
  ret void, !dbg !5448
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5449 dso_local i32 @dmi_get_bios_year() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5451 dso_local i32 @dmi_check_system(ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5452 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @arch_pci_dev_is_removable(ptr noundef %pdev) #5 align 16 !dbg !5456 {
entry:
  %retval = alloca i1, align 1
  %pdev.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %root = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5460, metadata !DIExpression()), !dbg !5463
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #17, !dbg !5464
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !5461, metadata !DIExpression()), !dbg !5465
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #17, !dbg !5464
  call void @llvm.dbg.declare(metadata ptr %root, metadata !5462, metadata !DIExpression()), !dbg !5466
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5467
  %call = call ptr @pci_upstream_bridge(ptr noundef %0) #18, !dbg !5468
  store ptr %call, ptr %parent, align 8, !dbg !5469
  %1 = load ptr, ptr %parent, align 8, !dbg !5470
  %tobool = icmp ne ptr %1, null, !dbg !5470
  br i1 %tobool, label %if.end, label %if.then, !dbg !5472

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5473
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5473

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !5474
  %call1 = call ptr @pcie_find_root_port(ptr noundef %2) #18, !dbg !5475
  store ptr %call1, ptr %root, align 8, !dbg !5476
  %3 = load ptr, ptr %root, align 8, !dbg !5477
  %tobool2 = icmp ne ptr %3, null, !dbg !5477
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5479

if.then3:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !5480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5480

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %root, align 8, !dbg !5481
  %external_facing = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 43, !dbg !5483
  %bf.load = load i40, ptr %external_facing, align 1, !dbg !5483
  %bf.lshr = lshr i40 %bf.load, 28, !dbg !5483
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5483
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5483
  %tobool5 = icmp ne i32 %bf.cast, 0, !dbg !5481
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5484

if.then6:                                         ; preds = %if.end4
  store i1 false, ptr %retval, align 1, !dbg !5485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5485

if.end7:                                          ; preds = %if.end4
  %5 = load ptr, ptr %parent, align 8, !dbg !5486
  %call8 = call zeroext i1 @pcie_has_usb4_host_interface(ptr noundef %5) #18, !dbg !5488
  br i1 %call8, label %if.then9, label %if.end10, !dbg !5489

if.then9:                                         ; preds = %if.end7
  store i1 true, ptr %retval, align 1, !dbg !5490
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5490

if.end10:                                         ; preds = %if.end7
  %6 = load ptr, ptr %root, align 8, !dbg !5491
  %7 = load ptr, ptr %pdev.addr, align 8, !dbg !5493
  %call11 = call zeroext i1 @pcie_switch_directly_under(ptr noundef %6, ptr noundef %7) #18, !dbg !5494
  br i1 %call11, label %if.then12, label %if.end13, !dbg !5495

if.then12:                                        ; preds = %if.end10
  store i1 false, ptr %retval, align 1, !dbg !5496
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5496

if.end13:                                         ; preds = %if.end10
  store i1 true, ptr %retval, align 1, !dbg !5497
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5497

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then9, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #17, !dbg !5498
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #17, !dbg !5498
  %8 = load i1, ptr %retval, align 1, !dbg !5498
  ret i1 %8, !dbg !5498
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_upstream_bridge(ptr noundef %dev) #6 align 16 !dbg !5499 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5503, metadata !DIExpression()), !dbg !5504
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5505
  %call = call ptr @pci_physfn(ptr noundef %0) #18, !dbg !5506
  store ptr %call, ptr %dev.addr, align 8, !dbg !5507
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5508
  %bus = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1, !dbg !5510
  %2 = load ptr, ptr %bus, align 8, !dbg !5510
  %call1 = call zeroext i1 @pci_is_root_bus(ptr noundef %2) #18, !dbg !5511
  br i1 %call1, label %if.then, label %if.end, !dbg !5512

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5513
  br label %return, !dbg !5513

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5514
  %bus2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1, !dbg !5515
  %4 = load ptr, ptr %bus2, align 8, !dbg !5515
  %self = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 4, !dbg !5516
  %5 = load ptr, ptr %self, align 8, !dbg !5516
  store ptr %5, ptr %retval, align 8, !dbg !5517
  br label %return, !dbg !5517

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8, !dbg !5518
  ret ptr %6, !dbg !5518
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pcie_find_root_port(ptr noundef %dev) #6 align 16 !dbg !5519 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5521, metadata !DIExpression()), !dbg !5522
  br label %while.cond, !dbg !5523

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5524
  %tobool = icmp ne ptr %0, null, !dbg !5523
  br i1 %tobool, label %while.body, label %while.end, !dbg !5523

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5525
  %call = call zeroext i1 @pci_is_pcie(ptr noundef %1) #18, !dbg !5528
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !5529

land.lhs.true:                                    ; preds = %while.body
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5530
  %call1 = call i32 @pci_pcie_type(ptr noundef %2) #18, !dbg !5531
  %cmp = icmp eq i32 %call1, 4, !dbg !5532
  br i1 %cmp, label %if.then, label %if.end, !dbg !5533

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5534
  store ptr %3, ptr %retval, align 8, !dbg !5535
  br label %return, !dbg !5535

if.end:                                           ; preds = %land.lhs.true, %while.body
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5536
  %call2 = call ptr @pci_upstream_bridge(ptr noundef %4) #18, !dbg !5537
  store ptr %call2, ptr %dev.addr, align 8, !dbg !5538
  br label %while.cond, !dbg !5523, !llvm.loop !5539

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !5543
  br label %return, !dbg !5543

return:                                           ; preds = %while.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !5544
  ret ptr %5, !dbg !5544
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pcie_has_usb4_host_interface(ptr noundef %pdev) #5 align 16 !dbg !5545 {
entry:
  %retval = alloca i1, align 1
  %pdev.addr = alloca ptr, align 8
  %fwnode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5547, metadata !DIExpression()), !dbg !5549
  call void @llvm.lifetime.start.p0(i64 8, ptr %fwnode) #17, !dbg !5550
  call void @llvm.dbg.declare(metadata ptr %fwnode, metadata !5548, metadata !DIExpression()), !dbg !5551
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5552
  %dev = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !5552
  %call = call ptr @__dev_fwnode(ptr noundef %dev) #18, !dbg !5552
  %call1 = call ptr @fwnode_find_reference(ptr noundef %call, ptr noundef @.str.25, i32 noundef 0) #18, !dbg !5553
  store ptr %call1, ptr %fwnode, align 8, !dbg !5554
  %1 = load ptr, ptr %fwnode, align 8, !dbg !5555
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %1) #18, !dbg !5557
  br i1 %call2, label %if.end, label %if.then, !dbg !5558

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %fwnode, align 8, !dbg !5559
  call void @fwnode_handle_put(ptr noundef %2) #18, !dbg !5561
  store i1 true, ptr %retval, align 1, !dbg !5562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5562

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !5563
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 7, !dbg !5565
  %4 = load i16, ptr %vendor, align 4, !dbg !5565
  %conv = zext i16 %4 to i32, !dbg !5563
  %cmp = icmp eq i32 %conv, 32902, !dbg !5566
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !5567

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %pdev.addr, align 8, !dbg !5568
  %device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8, !dbg !5570
  %6 = load i16, ptr %device, align 2, !dbg !5570
  %conv5 = zext i16 %6 to i32, !dbg !5568
  switch i32 %conv5, label %sw.epilog [
    i32 35357, label %sw.bb
    i32 35359, label %sw.bb
    i32 35361, label %sw.bb
    i32 35363, label %sw.bb
    i32 39459, label %sw.bb
    i32 39461, label %sw.bb
    i32 39463, label %sw.bb
    i32 39465, label %sw.bb
    i32 39467, label %sw.bb
    i32 39469, label %sw.bb
    i32 39471, label %sw.bb
    i32 39473, label %sw.bb
  ], !dbg !5571

sw.bb:                                            ; preds = %if.then4, %if.then4, %if.then4, %if.then4, %if.then4, %if.then4, %if.then4, %if.then4, %if.then4, %if.then4, %if.then4, %if.then4
  store i1 true, ptr %retval, align 1, !dbg !5572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5572

sw.epilog:                                        ; preds = %if.then4
  br label %if.end6, !dbg !5574

if.end6:                                          ; preds = %sw.epilog, %if.end
  store i1 false, ptr %retval, align 1, !dbg !5575
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5575

cleanup:                                          ; preds = %if.end6, %sw.bb, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fwnode) #17, !dbg !5576
  %7 = load i1, ptr %retval, align 1, !dbg !5576
  ret i1 %7, !dbg !5576
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pcie_switch_directly_under(ptr noundef %bridge, ptr noundef %pdev) #5 align 16 !dbg !5577 {
entry:
  %retval = alloca i1, align 1
  %bridge.addr = alloca ptr, align 8
  %pdev.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !5581, metadata !DIExpression()), !dbg !5584
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5582, metadata !DIExpression()), !dbg !5585
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #17, !dbg !5586
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !5583, metadata !DIExpression()), !dbg !5587
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5588
  %call = call ptr @pci_upstream_bridge(ptr noundef %0) #18, !dbg !5589
  store ptr %call, ptr %parent, align 8, !dbg !5587
  %1 = load ptr, ptr %parent, align 8, !dbg !5590
  %tobool = icmp ne ptr %1, null, !dbg !5590
  br i1 %tobool, label %if.end, label %if.then, !dbg !5592

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5593

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !5594
  %call1 = call i32 @pci_pcie_type(ptr noundef %2) #18, !dbg !5595
  switch i32 %call1, label %sw.epilog [
    i32 5, label %sw.bb
    i32 6, label %sw.bb2
    i32 0, label %sw.bb9
  ], !dbg !5596

sw.bb:                                            ; preds = %if.end
  %3 = load ptr, ptr %parent, align 8, !dbg !5597
  %4 = load ptr, ptr %bridge.addr, align 8, !dbg !5599
  %cmp = icmp eq ptr %3, %4, !dbg !5600
  store i1 %cmp, ptr %retval, align 1, !dbg !5601
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5601

sw.bb2:                                           ; preds = %if.end
  %5 = load ptr, ptr %parent, align 8, !dbg !5602
  %call3 = call i32 @pci_pcie_type(ptr noundef %5) #18, !dbg !5604
  %cmp4 = icmp ne i32 %call3, 5, !dbg !5605
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5606

if.then5:                                         ; preds = %sw.bb2
  store i1 false, ptr %retval, align 1, !dbg !5607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5607

if.end6:                                          ; preds = %sw.bb2
  %6 = load ptr, ptr %parent, align 8, !dbg !5608
  %call7 = call ptr @pci_upstream_bridge(ptr noundef %6) #18, !dbg !5609
  store ptr %call7, ptr %parent, align 8, !dbg !5610
  %7 = load ptr, ptr %parent, align 8, !dbg !5611
  %8 = load ptr, ptr %bridge.addr, align 8, !dbg !5612
  %cmp8 = icmp eq ptr %7, %8, !dbg !5613
  store i1 %cmp8, ptr %retval, align 1, !dbg !5614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5614

sw.bb9:                                           ; preds = %if.end
  %9 = load ptr, ptr %parent, align 8, !dbg !5615
  %call10 = call i32 @pci_pcie_type(ptr noundef %9) #18, !dbg !5617
  %cmp11 = icmp ne i32 %call10, 6, !dbg !5618
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !5619

if.then12:                                        ; preds = %sw.bb9
  store i1 false, ptr %retval, align 1, !dbg !5620
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5620

if.end13:                                         ; preds = %sw.bb9
  %10 = load ptr, ptr %parent, align 8, !dbg !5621
  %call14 = call ptr @pci_upstream_bridge(ptr noundef %10) #18, !dbg !5622
  store ptr %call14, ptr %parent, align 8, !dbg !5623
  %11 = load ptr, ptr %parent, align 8, !dbg !5624
  %tobool15 = icmp ne ptr %11, null, !dbg !5624
  br i1 %tobool15, label %lor.lhs.false, label %if.then18, !dbg !5626

lor.lhs.false:                                    ; preds = %if.end13
  %12 = load ptr, ptr %parent, align 8, !dbg !5627
  %call16 = call i32 @pci_pcie_type(ptr noundef %12) #18, !dbg !5628
  %cmp17 = icmp ne i32 %call16, 5, !dbg !5629
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !5630

if.then18:                                        ; preds = %lor.lhs.false, %if.end13
  store i1 false, ptr %retval, align 1, !dbg !5631
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5631

if.end19:                                         ; preds = %lor.lhs.false
  %13 = load ptr, ptr %parent, align 8, !dbg !5632
  %call20 = call ptr @pci_upstream_bridge(ptr noundef %13) #18, !dbg !5633
  store ptr %call20, ptr %parent, align 8, !dbg !5634
  %14 = load ptr, ptr %parent, align 8, !dbg !5635
  %15 = load ptr, ptr %bridge.addr, align 8, !dbg !5636
  %cmp21 = icmp eq ptr %14, %15, !dbg !5637
  store i1 %cmp21, ptr %retval, align 1, !dbg !5638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5638

sw.epilog:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !5639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5639

cleanup:                                          ; preds = %sw.epilog, %if.end19, %if.then18, %if.then12, %if.end6, %if.then5, %sw.bb, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #17, !dbg !5640
  %16 = load i1, ptr %retval, align 1, !dbg !5640
  ret i1 %16, !dbg !5640
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pci_acpi_scan_root(ptr noundef %root) #5 align 16 !dbg !5641 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %domain = alloca i32, align 4
  %busnum = alloca i32, align 4
  %node = alloca i32, align 4
  %bus = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %sd = alloca %struct.pci_sysdata, align 8
  %info = alloca ptr, align 8
  %child = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp34 = alloca ptr, align 8
  %__mptr38 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5645, metadata !DIExpression()), !dbg !5664
  call void @llvm.lifetime.start.p0(i64 4, ptr %domain) #17, !dbg !5665
  call void @llvm.dbg.declare(metadata ptr %domain, metadata !5646, metadata !DIExpression()), !dbg !5666
  %0 = load ptr, ptr %root.addr, align 8, !dbg !5667
  %segment = getelementptr inbounds %struct.acpi_pci_root, ptr %0, i32 0, i32 2, !dbg !5668
  %1 = load i16, ptr %segment, align 8, !dbg !5668
  %conv = zext i16 %1 to i32, !dbg !5667
  store i32 %conv, ptr %domain, align 4, !dbg !5666
  call void @llvm.lifetime.start.p0(i64 4, ptr %busnum) #17, !dbg !5669
  call void @llvm.dbg.declare(metadata ptr %busnum, metadata !5647, metadata !DIExpression()), !dbg !5670
  %2 = load ptr, ptr %root.addr, align 8, !dbg !5671
  %secondary = getelementptr inbounds %struct.acpi_pci_root, ptr %2, i32 0, i32 4, !dbg !5672
  %start = getelementptr inbounds %struct.resource, ptr %secondary, i32 0, i32 0, !dbg !5673
  %3 = load i64, ptr %start, align 8, !dbg !5673
  %conv1 = trunc i64 %3 to i32, !dbg !5671
  store i32 %conv1, ptr %busnum, align 4, !dbg !5670
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #17, !dbg !5674
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5648, metadata !DIExpression()), !dbg !5675
  %4 = load ptr, ptr %root.addr, align 8, !dbg !5676
  %call = call i32 @pci_acpi_root_get_node(ptr noundef %4) #18, !dbg !5677
  store i32 %call, ptr %node, align 4, !dbg !5675
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #17, !dbg !5678
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5649, metadata !DIExpression()), !dbg !5679
  %5 = load i8, ptr @pci_ignore_seg, align 1, !dbg !5680, !range !5422, !noundef !929
  %tobool = trunc i8 %5 to i1, !dbg !5680
  br i1 %tobool, label %if.then, label %if.end, !dbg !5682

if.then:                                          ; preds = %entry
  store i32 0, ptr %domain, align 4, !dbg !5683
  %6 = load ptr, ptr %root.addr, align 8, !dbg !5684
  %segment2 = getelementptr inbounds %struct.acpi_pci_root, ptr %6, i32 0, i32 2, !dbg !5685
  store i16 0, ptr %segment2, align 8, !dbg !5686
  br label %if.end, !dbg !5684

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %domain, align 4, !dbg !5687
  %tobool3 = icmp ne i32 %7, 0, !dbg !5687
  br i1 %tobool3, label %land.lhs.true, label %if.end7, !dbg !5689

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, ptr @pci_domains_supported, align 4, !dbg !5690
  %tobool4 = icmp ne i32 %8, 0, !dbg !5690
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !5691

if.then5:                                         ; preds = %land.lhs.true
  br label %do.body, !dbg !5692

do.body:                                          ; preds = %if.then5
  br label %do.cond, !dbg !5695

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5695

do.end:                                           ; preds = %do.cond
  %9 = load i32, ptr %domain, align 4, !dbg !5692
  %10 = load i32, ptr %busnum, align 4, !dbg !5692
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef %9, i32 noundef %10) #19, !dbg !5692
  store i32 %call6, ptr %tmp, align 4, !dbg !5695
  %11 = load i32, ptr %tmp, align 4, !dbg !5692
  store ptr null, ptr %retval, align 8, !dbg !5697
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5697

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %12 = load i32, ptr %domain, align 4, !dbg !5698
  %13 = load i32, ptr %busnum, align 4, !dbg !5699
  %call8 = call ptr @pci_find_bus(i32 noundef %12, i32 noundef %13) #18, !dbg !5700
  store ptr %call8, ptr %bus, align 8, !dbg !5701
  %14 = load ptr, ptr %bus, align 8, !dbg !5702
  %tobool9 = icmp ne ptr %14, null, !dbg !5702
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !5703

if.then10:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 32, ptr %sd) #17, !dbg !5704
  call void @llvm.dbg.declare(metadata ptr %sd, metadata !5650, metadata !DIExpression()), !dbg !5705
  %domain11 = getelementptr inbounds %struct.pci_sysdata, ptr %sd, i32 0, i32 0, !dbg !5706
  %15 = load i32, ptr %domain, align 4, !dbg !5707
  store i32 %15, ptr %domain11, align 8, !dbg !5706
  %node12 = getelementptr inbounds %struct.pci_sysdata, ptr %sd, i32 0, i32 1, !dbg !5706
  %16 = load i32, ptr %node, align 4, !dbg !5708
  store i32 %16, ptr %node12, align 4, !dbg !5706
  %companion = getelementptr inbounds %struct.pci_sysdata, ptr %sd, i32 0, i32 2, !dbg !5706
  %17 = load ptr, ptr %root.addr, align 8, !dbg !5709
  %device = getelementptr inbounds %struct.acpi_pci_root, ptr %17, i32 0, i32 0, !dbg !5710
  %18 = load ptr, ptr %device, align 8, !dbg !5710
  store ptr %18, ptr %companion, align 8, !dbg !5706
  %iommu = getelementptr inbounds %struct.pci_sysdata, ptr %sd, i32 0, i32 3, !dbg !5706
  store ptr null, ptr %iommu, align 8, !dbg !5706
  %fwnode = getelementptr inbounds %struct.pci_sysdata, ptr %sd, i32 0, i32 4, !dbg !5706
  store ptr null, ptr %fwnode, align 8, !dbg !5706
  %19 = load ptr, ptr %bus, align 8, !dbg !5711
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %19, i32 0, i32 10, !dbg !5712
  %20 = load ptr, ptr %sysdata, align 8, !dbg !5712
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 8 %sd, i64 32, i1 false), !dbg !5713
  call void @llvm.lifetime.end.p0(i64 32, ptr %sd) #17, !dbg !5714
  br label %if.end31, !dbg !5715

if.else:                                          ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !5716
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5653, metadata !DIExpression()), !dbg !5717
  %call13 = call noalias ptr @kzalloc(i64 noundef 96, i32 noundef 3264) #20, !dbg !5718
  store ptr %call13, ptr %info, align 8, !dbg !5719
  %21 = load ptr, ptr %info, align 8, !dbg !5720
  %tobool14 = icmp ne ptr %21, null, !dbg !5720
  br i1 %tobool14, label %if.else20, label %if.then15, !dbg !5722

if.then15:                                        ; preds = %if.else
  br label %do.body16, !dbg !5723

do.body16:                                        ; preds = %if.then15
  br label %do.cond17, !dbg !5725

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5725

do.end18:                                         ; preds = %do.cond17
  %22 = load ptr, ptr %root.addr, align 8, !dbg !5723
  %device19 = getelementptr inbounds %struct.acpi_pci_root, ptr %22, i32 0, i32 0, !dbg !5723
  %23 = load ptr, ptr %device19, align 8, !dbg !5723
  %dev = getelementptr inbounds %struct.acpi_device, ptr %23, i32 0, i32 18, !dbg !5723
  %24 = load i32, ptr %domain, align 4, !dbg !5723
  %25 = load i32, ptr %busnum, align 4, !dbg !5723
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.8, i32 noundef %24, i32 noundef %25) #19, !dbg !5723
  br label %if.end30, !dbg !5727

if.else20:                                        ; preds = %if.else
  %26 = load i32, ptr %domain, align 4, !dbg !5728
  %27 = load ptr, ptr %info, align 8, !dbg !5730
  %sd21 = getelementptr inbounds %struct.pci_root_info, ptr %27, i32 0, i32 1, !dbg !5731
  %domain22 = getelementptr inbounds %struct.pci_sysdata, ptr %sd21, i32 0, i32 0, !dbg !5732
  store i32 %26, ptr %domain22, align 8, !dbg !5733
  %28 = load i32, ptr %node, align 4, !dbg !5734
  %29 = load ptr, ptr %info, align 8, !dbg !5735
  %sd23 = getelementptr inbounds %struct.pci_root_info, ptr %29, i32 0, i32 1, !dbg !5736
  %node24 = getelementptr inbounds %struct.pci_sysdata, ptr %sd23, i32 0, i32 1, !dbg !5737
  store i32 %28, ptr %node24, align 4, !dbg !5738
  %30 = load ptr, ptr %root.addr, align 8, !dbg !5739
  %device25 = getelementptr inbounds %struct.acpi_pci_root, ptr %30, i32 0, i32 0, !dbg !5740
  %31 = load ptr, ptr %device25, align 8, !dbg !5740
  %32 = load ptr, ptr %info, align 8, !dbg !5741
  %sd26 = getelementptr inbounds %struct.pci_root_info, ptr %32, i32 0, i32 1, !dbg !5742
  %companion27 = getelementptr inbounds %struct.pci_sysdata, ptr %sd26, i32 0, i32 2, !dbg !5743
  store ptr %31, ptr %companion27, align 8, !dbg !5744
  %33 = load ptr, ptr %root.addr, align 8, !dbg !5745
  %34 = load ptr, ptr %info, align 8, !dbg !5746
  %common = getelementptr inbounds %struct.pci_root_info, ptr %34, i32 0, i32 0, !dbg !5747
  %35 = load ptr, ptr %info, align 8, !dbg !5748
  %sd28 = getelementptr inbounds %struct.pci_root_info, ptr %35, i32 0, i32 1, !dbg !5749
  %call29 = call ptr @acpi_pci_root_create(ptr noundef %33, ptr noundef @acpi_pci_root_ops, ptr noundef %common, ptr noundef %sd28) #18, !dbg !5750
  store ptr %call29, ptr %bus, align 8, !dbg !5751
  br label %if.end30

if.end30:                                         ; preds = %if.else20, %do.end18
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !5752
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then10
  %36 = load ptr, ptr %bus, align 8, !dbg !5753
  %tobool32 = icmp ne ptr %36, null, !dbg !5753
  br i1 %tobool32, label %if.then33, label %if.end43, !dbg !5754

if.then33:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #17, !dbg !5755
  call void @llvm.dbg.declare(metadata ptr %child, metadata !5655, metadata !DIExpression()), !dbg !5756
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5757
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5658, metadata !DIExpression()), !dbg !5757
  %37 = load ptr, ptr %bus, align 8, !dbg !5757
  %children = getelementptr inbounds %struct.pci_bus, ptr %37, i32 0, i32 2, !dbg !5757
  %next = getelementptr inbounds %struct.list_head, ptr %children, i32 0, i32 0, !dbg !5757
  %38 = load ptr, ptr %next, align 8, !dbg !5757
  store ptr %38, ptr %__mptr, align 8, !dbg !5757
  %39 = load ptr, ptr %__mptr, align 8, !dbg !5757
  %add.ptr = getelementptr i8, ptr %39, i64 0, !dbg !5757
  store ptr %add.ptr, ptr %tmp34, align 8, !dbg !5757
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5758
  %40 = load ptr, ptr %tmp34, align 8, !dbg !5757
  store ptr %40, ptr %child, align 8, !dbg !5758
  br label %for.cond, !dbg !5758

for.cond:                                         ; preds = %for.inc, %if.then33
  %41 = load ptr, ptr %child, align 8, !dbg !5759
  %node35 = getelementptr inbounds %struct.pci_bus, ptr %41, i32 0, i32 0, !dbg !5759
  %42 = load ptr, ptr %bus, align 8, !dbg !5759
  %children36 = getelementptr inbounds %struct.pci_bus, ptr %42, i32 0, i32 2, !dbg !5759
  %cmp = icmp eq ptr %node35, %children36, !dbg !5759
  %lnot = xor i1 %cmp, true, !dbg !5759
  br i1 %lnot, label %for.body, label %for.end, !dbg !5758

for.body:                                         ; preds = %for.cond
  %43 = load ptr, ptr %child, align 8, !dbg !5760
  call void @pcie_bus_configure_settings(ptr noundef %43) #18, !dbg !5761
  br label %for.inc, !dbg !5761

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr38) #17, !dbg !5762
  call void @llvm.dbg.declare(metadata ptr %__mptr38, metadata !5661, metadata !DIExpression()), !dbg !5762
  %44 = load ptr, ptr %child, align 8, !dbg !5762
  %node39 = getelementptr inbounds %struct.pci_bus, ptr %44, i32 0, i32 0, !dbg !5762
  %next40 = getelementptr inbounds %struct.list_head, ptr %node39, i32 0, i32 0, !dbg !5762
  %45 = load ptr, ptr %next40, align 8, !dbg !5762
  store ptr %45, ptr %__mptr38, align 8, !dbg !5762
  %46 = load ptr, ptr %__mptr38, align 8, !dbg !5762
  %add.ptr42 = getelementptr i8, ptr %46, i64 0, !dbg !5762
  store ptr %add.ptr42, ptr %tmp41, align 8, !dbg !5762
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr38) #17, !dbg !5759
  %47 = load ptr, ptr %tmp41, align 8, !dbg !5762
  store ptr %47, ptr %child, align 8, !dbg !5759
  br label %for.cond, !dbg !5759, !llvm.loop !5763

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #17, !dbg !5765
  br label %if.end43, !dbg !5766

if.end43:                                         ; preds = %for.end, %if.end31
  %48 = load ptr, ptr %bus, align 8, !dbg !5767
  store ptr %48, ptr %retval, align 8, !dbg !5768
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5768

cleanup:                                          ; preds = %if.end43, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #17, !dbg !5769
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #17, !dbg !5769
  call void @llvm.lifetime.end.p0(i64 4, ptr %busnum) #17, !dbg !5769
  call void @llvm.lifetime.end.p0(i64 4, ptr %domain) #17, !dbg !5769
  %49 = load ptr, ptr %retval, align 8, !dbg !5769
  ret ptr %49, !dbg !5769
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_acpi_root_get_node(ptr noundef %root) #5 align 16 !dbg !5770 {
entry:
  %root.addr = alloca ptr, align 8
  %busnum = alloca i32, align 4
  %device = alloca ptr, align 8
  %node = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5774, metadata !DIExpression()), !dbg !5778
  call void @llvm.lifetime.start.p0(i64 4, ptr %busnum) #17, !dbg !5779
  call void @llvm.dbg.declare(metadata ptr %busnum, metadata !5775, metadata !DIExpression()), !dbg !5780
  %0 = load ptr, ptr %root.addr, align 8, !dbg !5781
  %secondary = getelementptr inbounds %struct.acpi_pci_root, ptr %0, i32 0, i32 4, !dbg !5782
  %start = getelementptr inbounds %struct.resource, ptr %secondary, i32 0, i32 0, !dbg !5783
  %1 = load i64, ptr %start, align 8, !dbg !5783
  %conv = trunc i64 %1 to i32, !dbg !5781
  store i32 %conv, ptr %busnum, align 4, !dbg !5780
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #17, !dbg !5784
  call void @llvm.dbg.declare(metadata ptr %device, metadata !5776, metadata !DIExpression()), !dbg !5785
  %2 = load ptr, ptr %root.addr, align 8, !dbg !5786
  %device1 = getelementptr inbounds %struct.acpi_pci_root, ptr %2, i32 0, i32 0, !dbg !5787
  %3 = load ptr, ptr %device1, align 8, !dbg !5787
  store ptr %3, ptr %device, align 8, !dbg !5785
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #17, !dbg !5788
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5777, metadata !DIExpression()), !dbg !5789
  %4 = load ptr, ptr %device, align 8, !dbg !5790
  %handle = getelementptr inbounds %struct.acpi_device, ptr %4, i32 0, i32 2, !dbg !5791
  %5 = load ptr, ptr %handle, align 8, !dbg !5791
  %call = call i32 @acpi_get_node(ptr noundef %5) #18, !dbg !5792
  store i32 %call, ptr %node, align 4, !dbg !5789
  %6 = load i32, ptr %node, align 4, !dbg !5793
  %cmp = icmp eq i32 %6, -1, !dbg !5795
  br i1 %cmp, label %if.then, label %if.end9, !dbg !5796

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %busnum, align 4, !dbg !5797
  %call3 = call i32 @x86_pci_root_bus_node(i32 noundef %7) #18, !dbg !5799
  store i32 %call3, ptr %node, align 4, !dbg !5800
  %8 = load i32, ptr %node, align 4, !dbg !5801
  %cmp4 = icmp ne i32 %8, 0, !dbg !5803
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !5804

land.lhs.true:                                    ; preds = %if.then
  %9 = load i32, ptr %node, align 4, !dbg !5805
  %cmp6 = icmp ne i32 %9, -1, !dbg !5806
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !5807

if.then8:                                         ; preds = %land.lhs.true
  br label %do.body, !dbg !5808

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !5810

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5810

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %device, align 8, !dbg !5808
  %dev = getelementptr inbounds %struct.acpi_device, ptr %10, i32 0, i32 18, !dbg !5808
  %11 = load i32, ptr %node, align 4, !dbg !5808
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef @.str.26, i32 noundef %11) #19, !dbg !5808
  br label %if.end, !dbg !5812

if.end:                                           ; preds = %do.end, %land.lhs.true, %if.then
  br label %if.end9, !dbg !5813

if.end9:                                          ; preds = %if.end, %entry
  %12 = load i32, ptr %node, align 4, !dbg !5814
  %cmp10 = icmp ne i32 %12, -1, !dbg !5816
  br i1 %cmp10, label %land.lhs.true12, label %if.end15, !dbg !5817

land.lhs.true12:                                  ; preds = %if.end9
  %13 = load i32, ptr %node, align 4, !dbg !5818
  %call13 = call i32 @node_state(i32 noundef %13, i32 noundef 1) #18, !dbg !5818
  %tobool = icmp ne i32 %call13, 0, !dbg !5818
  br i1 %tobool, label %if.end15, label %if.then14, !dbg !5819

if.then14:                                        ; preds = %land.lhs.true12
  store i32 -1, ptr %node, align 4, !dbg !5820
  br label %if.end15, !dbg !5821

if.end15:                                         ; preds = %if.then14, %land.lhs.true12, %if.end9
  %14 = load i32, ptr %node, align 4, !dbg !5822
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #17, !dbg !5823
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #17, !dbg !5823
  call void @llvm.lifetime.end.p0(i64 4, ptr %busnum) #17, !dbg !5823
  ret i32 %14, !dbg !5824
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5825 dso_local ptr @pci_find_bus(i32 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5828 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5832, metadata !DIExpression()), !dbg !5834
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5833, metadata !DIExpression()), !dbg !5835
  %0 = load i64, ptr %size.addr, align 8, !dbg !5836
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5837
  %or = or i32 %1, 256, !dbg !5838
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !5839
  ret ptr %call, !dbg !5840
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5841 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5845 dso_local ptr @acpi_pci_root_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5848 dso_local void @pcie_bus_configure_settings(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pcibios_root_bridge_prepare(ptr noundef %bridge) #5 align 16 !dbg !5849 {
entry:
  %bridge.addr = alloca ptr, align 8
  %sd = alloca ptr, align 8
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !5900, metadata !DIExpression()), !dbg !5905
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !5906
  %dev = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 0, !dbg !5907
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1, !dbg !5908
  %1 = load ptr, ptr %parent, align 64, !dbg !5908
  %tobool = icmp ne ptr %1, null, !dbg !5906
  br i1 %tobool, label %if.end, label %if.then, !dbg !5909

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sd) #17, !dbg !5910
  call void @llvm.dbg.declare(metadata ptr %sd, metadata !5901, metadata !DIExpression()), !dbg !5911
  %2 = load ptr, ptr %bridge.addr, align 8, !dbg !5912
  %bus = getelementptr inbounds %struct.pci_host_bridge, ptr %2, i32 0, i32 1, !dbg !5913
  %3 = load ptr, ptr %bus, align 8, !dbg !5913
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 10, !dbg !5914
  %4 = load ptr, ptr %sysdata, align 8, !dbg !5914
  store ptr %4, ptr %sd, align 8, !dbg !5911
  %5 = load ptr, ptr %bridge.addr, align 8, !dbg !5915
  %dev1 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 0, i32 0, !dbg !5915
  %6 = load ptr, ptr %sd, align 8, !dbg !5915
  %companion = getelementptr inbounds %struct.pci_sysdata, ptr %6, i32 0, i32 2, !dbg !5915
  %7 = load ptr, ptr %companion, align 8, !dbg !5915
  %tobool2 = icmp ne ptr %7, null, !dbg !5915
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !5915

cond.true:                                        ; preds = %if.then
  %8 = load ptr, ptr %sd, align 8, !dbg !5915
  %companion3 = getelementptr inbounds %struct.pci_sysdata, ptr %8, i32 0, i32 2, !dbg !5915
  %9 = load ptr, ptr %companion3, align 8, !dbg !5915
  %call = call ptr @acpi_fwnode_handle(ptr noundef %9) #18, !dbg !5915
  br label %cond.end, !dbg !5915

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !5915

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ null, %cond.false ], !dbg !5915
  call void @set_primary_fwnode(ptr noundef %dev1, ptr noundef %cond) #18, !dbg !5915
  call void @llvm.lifetime.end.p0(i64 8, ptr %sd) #17, !dbg !5916
  br label %if.end, !dbg !5917

if.end:                                           ; preds = %cond.end, %entry
  ret i32 0, !dbg !5918
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5919 dso_local void @set_primary_fwnode(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_fwnode_handle(ptr noundef %adev) #6 align 16 !dbg !5922 {
entry:
  %adev.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !5926, metadata !DIExpression()), !dbg !5927
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !5928
  %fwnode = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 3, !dbg !5929
  ret ptr %fwnode, !dbg !5930
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @pci_acpi_init() #0 section ".init.text" align 16 !dbg !5931 {
entry:
  %retval = alloca i32, align 4
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #17, !dbg !5934
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5933, metadata !DIExpression()), !dbg !5935
  store ptr null, ptr %dev, align 8, !dbg !5935
  %0 = load i32, ptr @acpi_noirq, align 4, !dbg !5936
  %tobool = icmp ne i32 %0, 0, !dbg !5936
  br i1 %tobool, label %if.then, label %if.end, !dbg !5938

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5939
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5939

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5940

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !5942

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5942

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.9) #19, !dbg !5940
  store i32 %call, ptr %tmp, align 4, !dbg !5942
  %1 = load i32, ptr %tmp, align 4, !dbg !5940
  %call1 = call i32 @acpi_irq_penalty_init() #18, !dbg !5944
  store ptr @acpi_pci_irq_enable, ptr @pcibios_enable_irq, align 8, !dbg !5945
  store ptr @acpi_pci_irq_disable, ptr @pcibios_disable_irq, align 8, !dbg !5946
  store ptr @x86_init_noop, ptr getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 7, i32 2), align 8, !dbg !5947
  %2 = load i32, ptr @pci_routeirq, align 4, !dbg !5948
  %tobool2 = icmp ne i32 %2, 0, !dbg !5948
  br i1 %tobool2, label %if.then3, label %if.end11, !dbg !5950

if.then3:                                         ; preds = %do.end
  br label %do.body4, !dbg !5951

do.body4:                                         ; preds = %if.then3
  br label %do.cond5, !dbg !5954

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5954

do.end6:                                          ; preds = %do.cond5
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10) #19, !dbg !5951
  store i32 %call8, ptr %tmp7, align 4, !dbg !5954
  %3 = load i32, ptr %tmp7, align 4, !dbg !5951
  br label %while.cond, !dbg !5956

while.cond:                                       ; preds = %while.body, %do.end6
  %4 = load ptr, ptr %dev, align 8, !dbg !5956
  %call9 = call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef %4) #18, !dbg !5956
  store ptr %call9, ptr %dev, align 8, !dbg !5956
  %cmp = icmp ne ptr %call9, null, !dbg !5956
  br i1 %cmp, label %while.body, label %while.end, !dbg !5956

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %dev, align 8, !dbg !5957
  %call10 = call i32 @acpi_pci_irq_enable(ptr noundef %5) #18, !dbg !5958
  br label %while.cond, !dbg !5956, !llvm.loop !5959

while.end:                                        ; preds = %while.cond
  br label %if.end11, !dbg !5961

if.end11:                                         ; preds = %while.end, %do.end
  store i32 0, ptr %retval, align 4, !dbg !5962
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5962

cleanup:                                          ; preds = %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #17, !dbg !5963
  %6 = load i32, ptr %retval, align 4, !dbg !5963
  ret i32 %6, !dbg !5963
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5964 dso_local i32 @acpi_irq_penalty_init() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5966 dso_local i32 @acpi_pci_irq_enable(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_pci_irq_disable(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @x86_init_noop() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5968 dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @set_use_crs(ptr noundef %id) #0 section ".init.text" align 16 !dbg !5971 {
entry:
  %id.addr = alloca ptr, align 8
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5973, metadata !DIExpression()), !dbg !5974
  store i8 1, ptr @pci_use_crs, align 1, !dbg !5975
  ret i32 0, !dbg !5976
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @set_nouse_crs(ptr noundef %id) #0 section ".init.text" align 16 !dbg !5977 {
entry:
  %id.addr = alloca ptr, align 8
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5979, metadata !DIExpression()), !dbg !5980
  store i8 0, ptr @pci_use_crs, align 1, !dbg !5981
  ret i32 0, !dbg !5982
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @set_ignore_seg(ptr noundef %id) #0 section ".init.text" align 16 !dbg !5983 {
entry:
  %id.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5985, metadata !DIExpression()), !dbg !5986
  br label %do.body, !dbg !5987

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5989

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %id.addr, align 8, !dbg !5987
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %0, i32 0, i32 1, !dbg !5987
  %1 = load ptr, ptr %ident, align 8, !dbg !5987
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.23, ptr noundef %1) #19, !dbg !5987
  store i32 %call, ptr %tmp, align 4, !dbg !5989
  %2 = load i32, ptr %tmp, align 4, !dbg !5987
  store i8 1, ptr @pci_ignore_seg, align 1, !dbg !5991
  ret i32 0, !dbg !5992
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @set_no_e820(ptr noundef %id) #0 section ".init.text" align 16 !dbg !5993 {
entry:
  %id.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5995, metadata !DIExpression()), !dbg !5996
  br label %do.body, !dbg !5997

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5999

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %id.addr, align 8, !dbg !5997
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %0, i32 0, i32 1, !dbg !5997
  %1 = load ptr, ptr %ident, align 8, !dbg !5997
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.24, ptr noundef %1) #19, !dbg !5997
  store i32 %call, ptr %tmp, align 4, !dbg !5999
  %2 = load i32, ptr %tmp, align 4, !dbg !5997
  store i8 0, ptr @pci_use_e820, align 1, !dbg !6001
  ret i32 0, !dbg !6002
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_physfn(ptr noundef %dev) #6 align 16 !dbg !6003 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6005, metadata !DIExpression()), !dbg !6006
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6007
  ret ptr %0, !dbg !6008
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_is_root_bus(ptr noundef %pbus) #6 align 16 !dbg !6009 {
entry:
  %pbus.addr = alloca ptr, align 8
  store ptr %pbus, ptr %pbus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pbus.addr, metadata !6013, metadata !DIExpression()), !dbg !6014
  %0 = load ptr, ptr %pbus.addr, align 8, !dbg !6015
  %parent = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1, !dbg !6016
  %1 = load ptr, ptr %parent, align 8, !dbg !6016
  %tobool = icmp ne ptr %1, null, !dbg !6017
  %lnot = xor i1 %tobool, true, !dbg !6017
  ret i1 %lnot, !dbg !6018
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_is_pcie(ptr noundef %dev) #6 align 16 !dbg !6019 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6021, metadata !DIExpression()), !dbg !6022
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6023
  %call = call i32 @pci_pcie_cap(ptr noundef %0) #18, !dbg !6024
  %tobool = icmp ne i32 %call, 0, !dbg !6024
  ret i1 %tobool, !dbg !6025
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_pcie_type(ptr noundef %dev) #6 align 16 !dbg !6026 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6030, metadata !DIExpression()), !dbg !6031
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6032
  %call = call zeroext i16 @pcie_caps_reg(ptr noundef %0) #18, !dbg !6033
  %conv = zext i16 %call to i32, !dbg !6033
  %and = and i32 %conv, 240, !dbg !6034
  %shr = ashr i32 %and, 4, !dbg !6035
  ret i32 %shr, !dbg !6036
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_pcie_cap(ptr noundef %dev) #6 align 16 !dbg !6037 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6039, metadata !DIExpression()), !dbg !6040
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6041
  %pcie_cap = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 17, !dbg !6042
  %1 = load i8, ptr %pcie_cap, align 4, !dbg !6042
  %conv = zext i8 %1 to i32, !dbg !6041
  ret i32 %conv, !dbg !6043
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @pcie_caps_reg(ptr noundef %dev) #6 align 16 !dbg !6044 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6048, metadata !DIExpression()), !dbg !6049
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6050
  %pcie_flags_reg = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 23, !dbg !6051
  %1 = load i16, ptr %pcie_flags_reg, align 2, !dbg !6051
  ret i16 %1, !dbg !6052
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6053 dso_local ptr @fwnode_find_reference(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6056 dso_local ptr @__dev_fwnode(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #6 align 16 !dbg !6059 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6064, metadata !DIExpression()), !dbg !6065
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6066
  %1 = ptrtoint ptr %0 to i64, !dbg !6066
  %2 = inttoptr i64 %1 to ptr, !dbg !6066
  %3 = ptrtoint ptr %2 to i64, !dbg !6066
  %cmp = icmp uge i64 %3, -4095, !dbg !6066
  %lnot = xor i1 %cmp, true, !dbg !6066
  %lnot1 = xor i1 %lnot, true, !dbg !6066
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6066
  %conv = sext i32 %lnot.ext to i64, !dbg !6066
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6066
  %tobool = icmp ne i64 %expval, 0, !dbg !6066
  ret i1 %tobool, !dbg !6067
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6068 dso_local void @fwnode_handle_put(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6069 dso_local i32 @acpi_get_node(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6072 dso_local i32 @x86_pci_root_bus_node(i32 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6074 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @node_state(i32 noundef %node, i32 noundef %state) #6 align 16 !dbg !6075 {
entry:
  %node.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6079, metadata !DIExpression()), !dbg !6081
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6080, metadata !DIExpression()), !dbg !6082
  %0 = load i32, ptr %node.addr, align 4, !dbg !6083
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6083
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6083

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %state.addr, align 4, !dbg !6083
  %idxprom = zext i32 %2 to i64, !dbg !6083
  %arrayidx = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom, !dbg !6083
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx, i32 0, i32 0, !dbg !6083
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6083
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !6083
  %cmp = icmp ne i64 %3, 0, !dbg !6083
  %conv = zext i1 %cmp to i32, !dbg !6083
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6083
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6083

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load i32, ptr %state.addr, align 4, !dbg !6083
  %idxprom2 = zext i32 %5 to i64, !dbg !6083
  %arrayidx3 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom2, !dbg !6083
  %bits4 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx3, i32 0, i32 0, !dbg !6083
  %arraydecay5 = getelementptr inbounds [1 x i64], ptr %bits4, i64 0, i64 0, !dbg !6083
  %6 = ptrtoint ptr %arraydecay5 to i64, !dbg !6083
  %cmp6 = icmp ne i64 %6, 0, !dbg !6083
  br i1 %cmp6, label %land.lhs.true8, label %cond.false, !dbg !6083

land.lhs.true8:                                   ; preds = %land.lhs.true1
  %7 = load i32, ptr %state.addr, align 4, !dbg !6083
  %idxprom9 = zext i32 %7 to i64, !dbg !6083
  %arrayidx10 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom9, !dbg !6083
  %bits11 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx10, i32 0, i32 0, !dbg !6083
  %arraydecay12 = getelementptr inbounds [1 x i64], ptr %bits11, i64 0, i64 0, !dbg !6083
  %8 = load i64, ptr %arraydecay12, align 8, !dbg !6083
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6083
  br i1 %9, label %cond.true, label %cond.false, !dbg !6083

cond.true:                                        ; preds = %land.lhs.true8
  %10 = load i32, ptr %node.addr, align 4, !dbg !6083
  %conv13 = sext i32 %10 to i64, !dbg !6083
  %11 = load i32, ptr %state.addr, align 4, !dbg !6083
  %idxprom14 = zext i32 %11 to i64, !dbg !6083
  %arrayidx15 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom14, !dbg !6083
  %bits16 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx15, i32 0, i32 0, !dbg !6083
  %arraydecay17 = getelementptr inbounds [1 x i64], ptr %bits16, i64 0, i64 0, !dbg !6083
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv13, ptr noundef %arraydecay17) #18, !dbg !6083
  %conv18 = zext i1 %call to i32, !dbg !6083
  br label %cond.end, !dbg !6083

cond.false:                                       ; preds = %land.lhs.true8, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %node.addr, align 4, !dbg !6083
  %conv19 = sext i32 %12 to i64, !dbg !6083
  %13 = load i32, ptr %state.addr, align 4, !dbg !6083
  %idxprom20 = zext i32 %13 to i64, !dbg !6083
  %arrayidx21 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom20, !dbg !6083
  %bits22 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx21, i32 0, i32 0, !dbg !6083
  %arraydecay23 = getelementptr inbounds [1 x i64], ptr %bits22, i64 0, i64 0, !dbg !6083
  %call24 = call zeroext i1 @_test_bit(i64 noundef %conv19, ptr noundef %arraydecay23) #18, !dbg !6083
  %conv25 = zext i1 %call24 to i32, !dbg !6083
  br label %cond.end, !dbg !6083

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv18, %cond.true ], [ %conv25, %cond.false ], !dbg !6083
  ret i32 %cond, !dbg !6084
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6085 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6093, metadata !DIExpression()), !dbg !6098
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6094, metadata !DIExpression()), !dbg !6099
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !6100
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6095, metadata !DIExpression()), !dbg !6101
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6102
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6103
  %div = udiv i64 %1, 64, !dbg !6103
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6104
  store ptr %add.ptr, ptr %p, align 8, !dbg !6101
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !6105
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6096, metadata !DIExpression()), !dbg !6106
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6107
  %rem = urem i64 %2, 64, !dbg !6107
  %shl = shl i64 1, %rem, !dbg !6107
  store i64 %shl, ptr %mask, align 8, !dbg !6106
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !6108
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6097, metadata !DIExpression()), !dbg !6109
  %3 = load ptr, ptr %p, align 8, !dbg !6110
  %4 = load i64, ptr %3, align 8, !dbg !6111
  store i64 %4, ptr %val, align 8, !dbg !6109
  %5 = load i64, ptr %val, align 8, !dbg !6112
  %6 = load i64, ptr %mask, align 8, !dbg !6113
  %and = and i64 %5, %6, !dbg !6114
  %tobool = icmp ne i64 %and, 0, !dbg !6115
  %lnot = xor i1 %tobool, true, !dbg !6115
  %lnot1 = xor i1 %lnot, true, !dbg !6116
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !6117
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !6117
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !6117
  ret i1 %lnot1, !dbg !6118
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6119 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6122, metadata !DIExpression()), !dbg !6124
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6123, metadata !DIExpression()), !dbg !6125
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6126
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6127
  %div = udiv i64 %1, 64, !dbg !6127
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6128
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !6129
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6130
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6131
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !6132
  ret i1 %call, !dbg !6133
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !6134 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6142, metadata !DIExpression()), !dbg !6144
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6143, metadata !DIExpression()), !dbg !6145
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6146
  %1 = load i64, ptr %size.addr, align 8, !dbg !6147
  %conv = trunc i64 %1 to i32, !dbg !6147
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !6148
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6149
  %3 = load i64, ptr %size.addr, align 8, !dbg !6149
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !6149
  ret void, !dbg !6150
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6151 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6154, metadata !DIExpression()), !dbg !6156
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6155, metadata !DIExpression()), !dbg !6157
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6158
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6159
  br i1 %1, label %cond.true, label %cond.false, !dbg !6159

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6160
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6161
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !6162
  %conv = zext i1 %call to i32, !dbg !6162
  br label %cond.end, !dbg !6159

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6163
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6164
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !6165
  %conv2 = zext i1 %call1 to i32, !dbg !6165
  br label %cond.end, !dbg !6159

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6159
  %tobool = icmp ne i32 %cond, 0, !dbg !6159
  ret i1 %tobool, !dbg !6166
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !6167 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6172, metadata !DIExpression()), !dbg !6174
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6173, metadata !DIExpression()), !dbg !6175
  ret i1 true, !dbg !6176
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !6177 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6182, metadata !DIExpression()), !dbg !6185
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6183, metadata !DIExpression()), !dbg !6186
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6184, metadata !DIExpression()), !dbg !6187
  ret void, !dbg !6188
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6189 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6193, metadata !DIExpression()), !dbg !6195
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6194, metadata !DIExpression()), !dbg !6196
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6197
  %and = and i64 %0, 63, !dbg !6198
  %shl = shl i64 1, %and, !dbg !6199
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6200
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6201
  %shr = ashr i64 %2, 6, !dbg !6202
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6200
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6200
  %and1 = and i64 %shl, %3, !dbg !6203
  %cmp = icmp ne i64 %and1, 0, !dbg !6204
  ret i1 %cmp, !dbg !6205
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6206 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6208, metadata !DIExpression()), !dbg !6211
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6209, metadata !DIExpression()), !dbg !6212
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #17, !dbg !6213
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6210, metadata !DIExpression()), !dbg !6214
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6215
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6216
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !6217, !srcloc !6218
  %3 = icmp ult i8 %2, 2, !dbg !6217
  call void @llvm.assume(i1 %3), !dbg !6217
  store i8 %2, ptr %oldbit, align 1, !dbg !6217
  %4 = load i8, ptr %oldbit, align 1, !dbg !6219, !range !5422, !noundef !929
  %tobool = trunc i8 %4 to i1, !dbg !6219
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #17, !dbg !6220
  ret i1 %tobool, !dbg !6221
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #13 align 16 !dbg !6222 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6224, metadata !DIExpression()), !dbg !6229
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6225, metadata !DIExpression()), !dbg !6230
  %0 = load i64, ptr %size.addr, align 8, !dbg !6231
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6232
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6233

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6234
  %tobool = icmp ne i64 %2, 0, !dbg !6234
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6235

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !6236
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6226, metadata !DIExpression()), !dbg !6237
  %3 = load i64, ptr %size.addr, align 8, !dbg !6238
  %cmp = icmp ugt i64 %3, 8192, !dbg !6240
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6241

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6242
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6243
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !6244
  store ptr %call, ptr %retval, align 8, !dbg !6245
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6245

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6246
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6246
  store i32 %call2, ptr %index, align 4, !dbg !6247
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6248
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6249
  %9 = ptrtoint ptr %8 to i64, !dbg !6249
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6250
  %idxprom = zext i32 %call3 to i64, !dbg !6251
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6251
  %10 = load i32, ptr %index, align 4, !dbg !6252
  %idxprom4 = zext i32 %10 to i64, !dbg !6251
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6251
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6251
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6253
  %13 = load i64, ptr %size.addr, align 8, !dbg !6254
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !6255
  store ptr %call6, ptr %retval, align 8, !dbg !6256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6256

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !6257
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6258
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6259
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !6260
  store ptr %call8, ptr %retval, align 8, !dbg !6261
  br label %return, !dbg !6261

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6262
  ret ptr %16, !dbg !6262
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6263 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !6264 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6268, metadata !DIExpression()), !dbg !6270
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6269, metadata !DIExpression()), !dbg !6271
  %0 = load i64, ptr %size.addr, align 8, !dbg !6272
  %tobool = icmp ne i64 %0, 0, !dbg !6272
  br i1 %tobool, label %if.end, label %if.then, !dbg !6274

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6275
  br label %return, !dbg !6275

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6276
  %cmp = icmp ule i64 %1, 8, !dbg !6278
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6279

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6280
  br label %return, !dbg !6280

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6281
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6283
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6284

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6285
  %cmp4 = icmp ule i64 %3, 96, !dbg !6286
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6287

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6288
  br label %return, !dbg !6288

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6289
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6291
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6292

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6293
  %cmp9 = icmp ule i64 %5, 192, !dbg !6294
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6295

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6296
  br label %return, !dbg !6296

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6297
  %cmp12 = icmp ule i64 %6, 8, !dbg !6299
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6300

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6301
  br label %return, !dbg !6301

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6302
  %cmp15 = icmp ule i64 %7, 16, !dbg !6304
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6305

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6306
  br label %return, !dbg !6306

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6307
  %cmp18 = icmp ule i64 %8, 32, !dbg !6309
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6310

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6311
  br label %return, !dbg !6311

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6312
  %cmp21 = icmp ule i64 %9, 64, !dbg !6314
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6315

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6316
  br label %return, !dbg !6316

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6317
  %cmp24 = icmp ule i64 %10, 128, !dbg !6319
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6320

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6321
  br label %return, !dbg !6321

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6322
  %cmp27 = icmp ule i64 %11, 256, !dbg !6324
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6325

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6326
  br label %return, !dbg !6326

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6327
  %cmp30 = icmp ule i64 %12, 512, !dbg !6329
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6330

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6331
  br label %return, !dbg !6331

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6332
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6334
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6335

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6336
  br label %return, !dbg !6336

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6337
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6339
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6340

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6341
  br label %return, !dbg !6341

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6342
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6344
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6345

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6346
  br label %return, !dbg !6346

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6347
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6349
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6350

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6351
  br label %return, !dbg !6351

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6352
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6354
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6355

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6356
  br label %return, !dbg !6356

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6357
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6359
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6360

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6361
  br label %return, !dbg !6361

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6362
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6364
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6365

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6366
  br label %return, !dbg !6366

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6367
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6369
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6370

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6371
  br label %return, !dbg !6371

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6372
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6374
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6375

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6376
  br label %return, !dbg !6376

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6377
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6379
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6380

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6381
  br label %return, !dbg !6381

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6382
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6384
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6385

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6386
  br label %return, !dbg !6386

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6387
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6389
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6390

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6391
  br label %return, !dbg !6391

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6392, !range !5422, !noundef !929
  %tobool69 = trunc i8 %25 to i1, !dbg !6392
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6394

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6395

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #22, !dbg !6396, !srcloc !6399
  unreachable, !dbg !6396

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6400

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6401

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6402

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6404

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6402

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.27, i32 480, i32 0, i64 12) #17, !dbg !6406, !srcloc !6408
  br label %do.end75, !dbg !6406

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6402

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6409
  br label %return, !dbg !6409

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6410
  ret i32 %26, !dbg !6410
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6411 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !6417 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6421, metadata !DIExpression()), !dbg !6423
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6422, metadata !DIExpression()), !dbg !6424
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6425
  %and = and i32 %0, 17, !dbg !6425
  %cmp = icmp eq i32 %and, 0, !dbg !6425
  %lnot = xor i1 %cmp, true, !dbg !6425
  %lnot1 = xor i1 %lnot, true, !dbg !6425
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6425
  %conv = sext i32 %lnot.ext to i64, !dbg !6425
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6425
  %tobool = icmp ne i64 %expval, 0, !dbg !6425
  br i1 %tobool, label %if.then, label %if.end, !dbg !6427

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6428
  br label %return, !dbg !6428

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6429
  %and2 = and i32 %1, 1, !dbg !6431
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6431
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6432

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6433
  br label %return, !dbg !6433

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6434
  br label %return, !dbg !6434

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6436
  ret i32 %2, !dbg !6436
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6437 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6438 dso_local void @__compiletime_assert_204() #16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_acpi_root_init_info(ptr noundef %ci) #5 align 16 !dbg !6439 {
entry:
  %ci.addr = alloca ptr, align 8
  store ptr %ci, ptr %ci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ci.addr, metadata !6441, metadata !DIExpression()), !dbg !6442
  %0 = load ptr, ptr %ci.addr, align 8, !dbg !6443
  %call = call i32 @setup_mcfg_map(ptr noundef %0) #18, !dbg !6444
  ret i32 %call, !dbg !6445
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_acpi_root_release_info(ptr noundef %ci) #5 align 16 !dbg !6446 {
entry:
  %ci.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ci, ptr %ci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ci.addr, metadata !6448, metadata !DIExpression()), !dbg !6451
  %0 = load ptr, ptr %ci.addr, align 8, !dbg !6452
  call void @teardown_mcfg_map(ptr noundef %0) #18, !dbg !6453
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6454
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6449, metadata !DIExpression()), !dbg !6454
  %1 = load ptr, ptr %ci.addr, align 8, !dbg !6454
  store ptr %1, ptr %__mptr, align 8, !dbg !6454
  %2 = load ptr, ptr %__mptr, align 8, !dbg !6454
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !6454
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6454
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6455
  %3 = load ptr, ptr %tmp, align 8, !dbg !6454
  call void @kfree(ptr noundef %3) #18, !dbg !6456
  ret void, !dbg !6457
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_acpi_root_prepare_resources(ptr noundef %ci) #5 align 16 !dbg !6458 {
entry:
  %retval = alloca i32, align 4
  %ci.addr = alloca ptr, align 8
  %device = alloca ptr, align 8
  %busnum = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %status = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr12 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr18 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  %__mptr23 = alloca ptr, align 8
  %tmp26 = alloca ptr, align 8
  %__mptr37 = alloca ptr, align 8
  %tmp40 = alloca ptr, align 8
  store ptr %ci, ptr %ci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ci.addr, metadata !6460, metadata !DIExpression()), !dbg !6484
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #17, !dbg !6485
  call void @llvm.dbg.declare(metadata ptr %device, metadata !6461, metadata !DIExpression()), !dbg !6486
  %0 = load ptr, ptr %ci.addr, align 8, !dbg !6487
  %bridge = getelementptr inbounds %struct.acpi_pci_root_info, ptr %0, i32 0, i32 1, !dbg !6488
  %1 = load ptr, ptr %bridge, align 8, !dbg !6488
  store ptr %1, ptr %device, align 8, !dbg !6486
  call void @llvm.lifetime.start.p0(i64 4, ptr %busnum) #17, !dbg !6489
  call void @llvm.dbg.declare(metadata ptr %busnum, metadata !6462, metadata !DIExpression()), !dbg !6490
  %2 = load ptr, ptr %ci.addr, align 8, !dbg !6491
  %root = getelementptr inbounds %struct.acpi_pci_root_info, ptr %2, i32 0, i32 0, !dbg !6492
  %3 = load ptr, ptr %root, align 8, !dbg !6492
  %secondary = getelementptr inbounds %struct.acpi_pci_root, ptr %3, i32 0, i32 4, !dbg !6493
  %start = getelementptr inbounds %struct.resource, ptr %secondary, i32 0, i32 0, !dbg !6494
  %4 = load i64, ptr %start, align 8, !dbg !6494
  %conv = trunc i64 %4 to i32, !dbg !6491
  store i32 %conv, ptr %busnum, align 4, !dbg !6490
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #17, !dbg !6495
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6463, metadata !DIExpression()), !dbg !6496
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #17, !dbg !6495
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6464, metadata !DIExpression()), !dbg !6497
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #17, !dbg !6498
  call void @llvm.dbg.declare(metadata ptr %status, metadata !6465, metadata !DIExpression()), !dbg !6499
  %5 = load ptr, ptr %ci.addr, align 8, !dbg !6500
  %call = call i32 @acpi_pci_probe_root_resources(ptr noundef %5) #18, !dbg !6501
  store i32 %call, ptr %status, align 4, !dbg !6502
  %6 = load i8, ptr @pci_use_crs, align 1, !dbg !6503, !range !5422, !noundef !929
  %tobool = trunc i8 %6 to i1, !dbg !6503
  br i1 %tobool, label %if.then, label %if.end17, !dbg !6504

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6505
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6466, metadata !DIExpression()), !dbg !6505
  %7 = load ptr, ptr %ci.addr, align 8, !dbg !6505
  %resources = getelementptr inbounds %struct.acpi_pci_root_info, ptr %7, i32 0, i32 3, !dbg !6505
  %next = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 0, !dbg !6505
  %8 = load ptr, ptr %next, align 8, !dbg !6505
  store ptr %8, ptr %__mptr, align 8, !dbg !6505
  %9 = load ptr, ptr %__mptr, align 8, !dbg !6505
  %add.ptr = getelementptr i8, ptr %9, i64 0, !dbg !6505
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !6505
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6506
  %10 = load ptr, ptr %tmp2, align 8, !dbg !6505
  store ptr %10, ptr %entry1, align 8, !dbg !6506
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #17, !dbg !6507
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !6471, metadata !DIExpression()), !dbg !6507
  %11 = load ptr, ptr %entry1, align 8, !dbg !6507
  %node = getelementptr inbounds %struct.resource_entry, ptr %11, i32 0, i32 0, !dbg !6507
  %next4 = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 0, !dbg !6507
  %12 = load ptr, ptr %next4, align 8, !dbg !6507
  store ptr %12, ptr %__mptr3, align 8, !dbg !6507
  %13 = load ptr, ptr %__mptr3, align 8, !dbg !6507
  %add.ptr6 = getelementptr i8, ptr %13, i64 0, !dbg !6507
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !6507
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #17, !dbg !6506
  %14 = load ptr, ptr %tmp5, align 8, !dbg !6507
  store ptr %14, ptr %tmp, align 8, !dbg !6506
  br label %for.cond, !dbg !6506

for.cond:                                         ; preds = %for.inc, %if.then
  %15 = load ptr, ptr %entry1, align 8, !dbg !6508
  %node7 = getelementptr inbounds %struct.resource_entry, ptr %15, i32 0, i32 0, !dbg !6508
  %16 = load ptr, ptr %ci.addr, align 8, !dbg !6508
  %resources8 = getelementptr inbounds %struct.acpi_pci_root_info, ptr %16, i32 0, i32 3, !dbg !6508
  %cmp = icmp eq ptr %node7, %resources8, !dbg !6508
  %lnot = xor i1 %cmp, true, !dbg !6508
  br i1 %lnot, label %for.body, label %for.end, !dbg !6506

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %entry1, align 8, !dbg !6509
  %res = getelementptr inbounds %struct.resource_entry, ptr %17, i32 0, i32 1, !dbg !6511
  %18 = load ptr, ptr %res, align 8, !dbg !6511
  %call10 = call zeroext i1 @resource_is_pcicfg_ioport(ptr noundef %18) #18, !dbg !6512
  br i1 %call10, label %if.then11, label %if.end, !dbg !6513

if.then11:                                        ; preds = %for.body
  %19 = load ptr, ptr %entry1, align 8, !dbg !6514
  call void @resource_list_destroy_entry(ptr noundef %19) #18, !dbg !6515
  br label %if.end, !dbg !6515

if.end:                                           ; preds = %if.then11, %for.body
  br label %for.inc, !dbg !6516

for.inc:                                          ; preds = %if.end
  %20 = load ptr, ptr %tmp, align 8, !dbg !6508
  store ptr %20, ptr %entry1, align 8, !dbg !6508
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr12) #17, !dbg !6517
  call void @llvm.dbg.declare(metadata ptr %__mptr12, metadata !6473, metadata !DIExpression()), !dbg !6517
  %21 = load ptr, ptr %tmp, align 8, !dbg !6517
  %node13 = getelementptr inbounds %struct.resource_entry, ptr %21, i32 0, i32 0, !dbg !6517
  %next14 = getelementptr inbounds %struct.list_head, ptr %node13, i32 0, i32 0, !dbg !6517
  %22 = load ptr, ptr %next14, align 8, !dbg !6517
  store ptr %22, ptr %__mptr12, align 8, !dbg !6517
  %23 = load ptr, ptr %__mptr12, align 8, !dbg !6517
  %add.ptr16 = getelementptr i8, ptr %23, i64 0, !dbg !6517
  store ptr %add.ptr16, ptr %tmp15, align 8, !dbg !6517
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr12) #17, !dbg !6508
  %24 = load ptr, ptr %tmp15, align 8, !dbg !6517
  store ptr %24, ptr %tmp, align 8, !dbg !6508
  br label %for.cond, !dbg !6508, !llvm.loop !6518

for.end:                                          ; preds = %for.cond
  %25 = load i32, ptr %status, align 4, !dbg !6520
  store i32 %25, ptr %retval, align 4, !dbg !6521
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6521

if.end17:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #17, !dbg !6522
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !6476, metadata !DIExpression()), !dbg !6522
  %26 = load ptr, ptr %ci.addr, align 8, !dbg !6522
  %resources19 = getelementptr inbounds %struct.acpi_pci_root_info, ptr %26, i32 0, i32 3, !dbg !6522
  %next20 = getelementptr inbounds %struct.list_head, ptr %resources19, i32 0, i32 0, !dbg !6522
  %27 = load ptr, ptr %next20, align 8, !dbg !6522
  store ptr %27, ptr %__mptr18, align 8, !dbg !6522
  %28 = load ptr, ptr %__mptr18, align 8, !dbg !6522
  %add.ptr22 = getelementptr i8, ptr %28, i64 0, !dbg !6522
  store ptr %add.ptr22, ptr %tmp21, align 8, !dbg !6522
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #17, !dbg !6523
  %29 = load ptr, ptr %tmp21, align 8, !dbg !6522
  store ptr %29, ptr %entry1, align 8, !dbg !6523
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr23) #17, !dbg !6524
  call void @llvm.dbg.declare(metadata ptr %__mptr23, metadata !6479, metadata !DIExpression()), !dbg !6524
  %30 = load ptr, ptr %entry1, align 8, !dbg !6524
  %node24 = getelementptr inbounds %struct.resource_entry, ptr %30, i32 0, i32 0, !dbg !6524
  %next25 = getelementptr inbounds %struct.list_head, ptr %node24, i32 0, i32 0, !dbg !6524
  %31 = load ptr, ptr %next25, align 8, !dbg !6524
  store ptr %31, ptr %__mptr23, align 8, !dbg !6524
  %32 = load ptr, ptr %__mptr23, align 8, !dbg !6524
  %add.ptr27 = getelementptr i8, ptr %32, i64 0, !dbg !6524
  store ptr %add.ptr27, ptr %tmp26, align 8, !dbg !6524
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr23) #17, !dbg !6523
  %33 = load ptr, ptr %tmp26, align 8, !dbg !6524
  store ptr %33, ptr %tmp, align 8, !dbg !6523
  br label %for.cond28, !dbg !6523

for.cond28:                                       ; preds = %for.inc36, %if.end17
  %34 = load ptr, ptr %entry1, align 8, !dbg !6525
  %node29 = getelementptr inbounds %struct.resource_entry, ptr %34, i32 0, i32 0, !dbg !6525
  %35 = load ptr, ptr %ci.addr, align 8, !dbg !6525
  %resources30 = getelementptr inbounds %struct.acpi_pci_root_info, ptr %35, i32 0, i32 3, !dbg !6525
  %cmp31 = icmp eq ptr %node29, %resources30, !dbg !6525
  %lnot33 = xor i1 %cmp31, true, !dbg !6525
  br i1 %lnot33, label %for.body34, label %for.end42, !dbg !6523

for.body34:                                       ; preds = %for.cond28
  br label %do.body, !dbg !6526

do.body:                                          ; preds = %for.body34
  br label %do.cond, !dbg !6529

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6529

do.end:                                           ; preds = %do.cond
  %36 = load ptr, ptr %device, align 8, !dbg !6526
  %dev = getelementptr inbounds %struct.acpi_device, ptr %36, i32 0, i32 18, !dbg !6526
  %37 = load ptr, ptr %entry1, align 8, !dbg !6526
  %res35 = getelementptr inbounds %struct.resource_entry, ptr %37, i32 0, i32 1, !dbg !6526
  %38 = load ptr, ptr %res35, align 8, !dbg !6526
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str.32, ptr noundef %dev, ptr noundef @.str.33, ptr noundef %38) #19, !dbg !6526
  %39 = load ptr, ptr %entry1, align 8, !dbg !6531
  call void @resource_list_destroy_entry(ptr noundef %39) #18, !dbg !6532
  br label %for.inc36, !dbg !6533

for.inc36:                                        ; preds = %do.end
  %40 = load ptr, ptr %tmp, align 8, !dbg !6525
  store ptr %40, ptr %entry1, align 8, !dbg !6525
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr37) #17, !dbg !6534
  call void @llvm.dbg.declare(metadata ptr %__mptr37, metadata !6481, metadata !DIExpression()), !dbg !6534
  %41 = load ptr, ptr %tmp, align 8, !dbg !6534
  %node38 = getelementptr inbounds %struct.resource_entry, ptr %41, i32 0, i32 0, !dbg !6534
  %next39 = getelementptr inbounds %struct.list_head, ptr %node38, i32 0, i32 0, !dbg !6534
  %42 = load ptr, ptr %next39, align 8, !dbg !6534
  store ptr %42, ptr %__mptr37, align 8, !dbg !6534
  %43 = load ptr, ptr %__mptr37, align 8, !dbg !6534
  %add.ptr41 = getelementptr i8, ptr %43, i64 0, !dbg !6534
  store ptr %add.ptr41, ptr %tmp40, align 8, !dbg !6534
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr37) #17, !dbg !6525
  %44 = load ptr, ptr %tmp40, align 8, !dbg !6534
  store ptr %44, ptr %tmp, align 8, !dbg !6525
  br label %for.cond28, !dbg !6525, !llvm.loop !6535

for.end42:                                        ; preds = %for.cond28
  %45 = load i32, ptr %busnum, align 4, !dbg !6537
  %46 = load ptr, ptr %ci.addr, align 8, !dbg !6538
  %resources43 = getelementptr inbounds %struct.acpi_pci_root_info, ptr %46, i32 0, i32 3, !dbg !6539
  call void @x86_pci_root_bus_resources(i32 noundef %45, ptr noundef %resources43) #18, !dbg !6540
  store i32 0, ptr %retval, align 4, !dbg !6541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6541

cleanup:                                          ; preds = %for.end42, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #17, !dbg !6542
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #17, !dbg !6542
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #17, !dbg !6542
  call void @llvm.lifetime.end.p0(i64 4, ptr %busnum) #17, !dbg !6542
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #17, !dbg !6542
  %47 = load i32, ptr %retval, align 4, !dbg !6542
  ret i32 %47, !dbg !6542
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @setup_mcfg_map(ptr noundef %ci) #5 align 16 !dbg !6543 {
entry:
  %retval = alloca i32, align 4
  %ci.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %seg = alloca i32, align 4
  %info = alloca ptr, align 8
  %root = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ci, ptr %ci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ci.addr, metadata !6545, metadata !DIExpression()), !dbg !6553
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #17, !dbg !6554
  call void @llvm.dbg.declare(metadata ptr %result, metadata !6546, metadata !DIExpression()), !dbg !6555
  call void @llvm.lifetime.start.p0(i64 4, ptr %seg) #17, !dbg !6554
  call void @llvm.dbg.declare(metadata ptr %seg, metadata !6547, metadata !DIExpression()), !dbg !6556
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !6557
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6548, metadata !DIExpression()), !dbg !6558
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #17, !dbg !6559
  call void @llvm.dbg.declare(metadata ptr %root, metadata !6549, metadata !DIExpression()), !dbg !6560
  %0 = load ptr, ptr %ci.addr, align 8, !dbg !6561
  %root1 = getelementptr inbounds %struct.acpi_pci_root_info, ptr %0, i32 0, i32 0, !dbg !6562
  %1 = load ptr, ptr %root1, align 8, !dbg !6562
  store ptr %1, ptr %root, align 8, !dbg !6560
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #17, !dbg !6563
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6550, metadata !DIExpression()), !dbg !6564
  %2 = load ptr, ptr %ci.addr, align 8, !dbg !6565
  %bridge = getelementptr inbounds %struct.acpi_pci_root_info, ptr %2, i32 0, i32 1, !dbg !6566
  %3 = load ptr, ptr %bridge, align 8, !dbg !6566
  %dev2 = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 18, !dbg !6567
  store ptr %dev2, ptr %dev, align 8, !dbg !6564
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6568
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6551, metadata !DIExpression()), !dbg !6568
  %4 = load ptr, ptr %ci.addr, align 8, !dbg !6568
  store ptr %4, ptr %__mptr, align 8, !dbg !6568
  %5 = load ptr, ptr %__mptr, align 8, !dbg !6568
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !6568
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6568
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6569
  %6 = load ptr, ptr %tmp, align 8, !dbg !6568
  store ptr %6, ptr %info, align 8, !dbg !6570
  %7 = load ptr, ptr %root, align 8, !dbg !6571
  %secondary = getelementptr inbounds %struct.acpi_pci_root, ptr %7, i32 0, i32 4, !dbg !6572
  %start = getelementptr inbounds %struct.resource, ptr %secondary, i32 0, i32 0, !dbg !6573
  %8 = load i64, ptr %start, align 8, !dbg !6573
  %conv = trunc i64 %8 to i8, !dbg !6574
  %9 = load ptr, ptr %info, align 8, !dbg !6575
  %start_bus = getelementptr inbounds %struct.pci_root_info, ptr %9, i32 0, i32 3, !dbg !6576
  store i8 %conv, ptr %start_bus, align 1, !dbg !6577
  %10 = load ptr, ptr %root, align 8, !dbg !6578
  %secondary3 = getelementptr inbounds %struct.acpi_pci_root, ptr %10, i32 0, i32 4, !dbg !6579
  %end = getelementptr inbounds %struct.resource, ptr %secondary3, i32 0, i32 1, !dbg !6580
  %11 = load i64, ptr %end, align 8, !dbg !6580
  %conv4 = trunc i64 %11 to i8, !dbg !6581
  %12 = load ptr, ptr %info, align 8, !dbg !6582
  %end_bus = getelementptr inbounds %struct.pci_root_info, ptr %12, i32 0, i32 4, !dbg !6583
  store i8 %conv4, ptr %end_bus, align 2, !dbg !6584
  %13 = load ptr, ptr %info, align 8, !dbg !6585
  %mcfg_added = getelementptr inbounds %struct.pci_root_info, ptr %13, i32 0, i32 2, !dbg !6586
  store i8 0, ptr %mcfg_added, align 8, !dbg !6587
  %14 = load ptr, ptr %info, align 8, !dbg !6588
  %sd = getelementptr inbounds %struct.pci_root_info, ptr %14, i32 0, i32 1, !dbg !6589
  %domain = getelementptr inbounds %struct.pci_sysdata, ptr %sd, i32 0, i32 0, !dbg !6590
  %15 = load i32, ptr %domain, align 8, !dbg !6590
  store i32 %15, ptr %seg, align 4, !dbg !6591
  %16 = load ptr, ptr @raw_pci_ext_ops, align 8, !dbg !6592
  %tobool = icmp ne ptr %16, null, !dbg !6592
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6594

land.lhs.true:                                    ; preds = %entry
  %17 = load ptr, ptr @raw_pci_ext_ops, align 8, !dbg !6595
  %cmp = icmp ne ptr %17, @pci_mmcfg, !dbg !6596
  br i1 %cmp, label %if.then, label %if.end, !dbg !6597

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !6598
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6598

if.end:                                           ; preds = %land.lhs.true, %entry
  %18 = load i32, ptr @pci_probe, align 4, !dbg !6599
  %and = and i32 %18, 8, !dbg !6601
  %tobool6 = icmp ne i32 %and, 0, !dbg !6601
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !6602

if.then7:                                         ; preds = %if.end
  %19 = load i32, ptr %seg, align 4, !dbg !6603
  %conv8 = trunc i32 %19 to i16, !dbg !6603
  %20 = load ptr, ptr %dev, align 8, !dbg !6604
  %call = call i32 @check_segment(i16 noundef zeroext %conv8, ptr noundef %20, ptr noundef @.str.28) #18, !dbg !6605
  store i32 %call, ptr %retval, align 4, !dbg !6606
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6606

if.end9:                                          ; preds = %if.end
  %21 = load ptr, ptr %dev, align 8, !dbg !6607
  %22 = load i32, ptr %seg, align 4, !dbg !6608
  %conv10 = trunc i32 %22 to i16, !dbg !6608
  %23 = load ptr, ptr %info, align 8, !dbg !6609
  %start_bus11 = getelementptr inbounds %struct.pci_root_info, ptr %23, i32 0, i32 3, !dbg !6610
  %24 = load i8, ptr %start_bus11, align 1, !dbg !6610
  %25 = load ptr, ptr %info, align 8, !dbg !6611
  %end_bus12 = getelementptr inbounds %struct.pci_root_info, ptr %25, i32 0, i32 4, !dbg !6612
  %26 = load i8, ptr %end_bus12, align 2, !dbg !6612
  %27 = load ptr, ptr %root, align 8, !dbg !6613
  %mcfg_addr = getelementptr inbounds %struct.acpi_pci_root, ptr %27, i32 0, i32 9, !dbg !6614
  %28 = load i64, ptr %mcfg_addr, align 8, !dbg !6614
  %call13 = call i32 @pci_mmconfig_insert(ptr noundef %21, i16 noundef zeroext %conv10, i8 noundef zeroext %24, i8 noundef zeroext %26, i64 noundef %28) #18, !dbg !6615
  store i32 %call13, ptr %result, align 4, !dbg !6616
  %29 = load i32, ptr %result, align 4, !dbg !6617
  %cmp14 = icmp eq i32 %29, 0, !dbg !6619
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !6620

if.then16:                                        ; preds = %if.end9
  %30 = load ptr, ptr @raw_pci_ext_ops, align 8, !dbg !6621
  %cmp17 = icmp eq ptr %30, null, !dbg !6624
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !6625

if.then19:                                        ; preds = %if.then16
  store ptr @pci_mmcfg, ptr @raw_pci_ext_ops, align 8, !dbg !6626
  br label %if.end20, !dbg !6627

if.end20:                                         ; preds = %if.then19, %if.then16
  %31 = load ptr, ptr %info, align 8, !dbg !6628
  %mcfg_added21 = getelementptr inbounds %struct.pci_root_info, ptr %31, i32 0, i32 2, !dbg !6629
  store i8 1, ptr %mcfg_added21, align 8, !dbg !6630
  br label %if.end28, !dbg !6631

if.else:                                          ; preds = %if.end9
  %32 = load i32, ptr %result, align 4, !dbg !6632
  %cmp22 = icmp ne i32 %32, -17, !dbg !6634
  br i1 %cmp22, label %if.then24, label %if.end27, !dbg !6635

if.then24:                                        ; preds = %if.else
  %33 = load i32, ptr %seg, align 4, !dbg !6636
  %conv25 = trunc i32 %33 to i16, !dbg !6636
  %34 = load ptr, ptr %dev, align 8, !dbg !6637
  %call26 = call i32 @check_segment(i16 noundef zeroext %conv25, ptr noundef %34, ptr noundef @.str.29) #18, !dbg !6638
  store i32 %call26, ptr %retval, align 4, !dbg !6639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6639

if.end27:                                         ; preds = %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end20
  store i32 0, ptr %retval, align 4, !dbg !6640
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6640

cleanup:                                          ; preds = %if.end28, %if.then24, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #17, !dbg !6641
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #17, !dbg !6641
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !6641
  call void @llvm.lifetime.end.p0(i64 4, ptr %seg) #17, !dbg !6641
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #17, !dbg !6641
  %35 = load i32, ptr %retval, align 4, !dbg !6641
  ret i32 %35, !dbg !6641
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @check_segment(i16 noundef zeroext %seg, ptr noundef %dev, ptr noundef %estr) #5 align 16 !dbg !6642 {
entry:
  %retval = alloca i32, align 4
  %seg.addr = alloca i16, align 2
  %dev.addr = alloca ptr, align 8
  %estr.addr = alloca ptr, align 8
  store i16 %seg, ptr %seg.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !6646, metadata !DIExpression()), !dbg !6649
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6647, metadata !DIExpression()), !dbg !6650
  store ptr %estr, ptr %estr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %estr.addr, metadata !6648, metadata !DIExpression()), !dbg !6651
  %0 = load i16, ptr %seg.addr, align 2, !dbg !6652
  %tobool = icmp ne i16 %0, 0, !dbg !6652
  br i1 %tobool, label %if.then, label %if.end, !dbg !6654

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6655

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !6658

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6655
  %2 = load ptr, ptr %estr.addr, align 8, !dbg !6655
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef @.str.30, ptr noundef %2) #19, !dbg !6655
  store i32 -5, ptr %retval, align 4, !dbg !6660
  br label %return, !dbg !6660

if.end:                                           ; preds = %entry
  br label %do.body1, !dbg !6661

do.body1:                                         ; preds = %if.end
  br label %do.end2, !dbg !6663

do.end2:                                          ; preds = %do.body1
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6661
  %4 = load ptr, ptr %estr.addr, align 8, !dbg !6661
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef @.str.31, ptr noundef %4) #19, !dbg !6661
  store i32 0, ptr %retval, align 4, !dbg !6665
  br label %return, !dbg !6665

return:                                           ; preds = %do.end2, %do.end
  %5 = load i32, ptr %retval, align 4, !dbg !6666
  ret i32 %5, !dbg !6666
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6667 dso_local i32 @pci_mmconfig_insert(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6671 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @teardown_mcfg_map(ptr noundef %ci) #5 align 16 !dbg !6672 {
entry:
  %ci.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ci, ptr %ci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ci.addr, metadata !6674, metadata !DIExpression()), !dbg !6678
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !6679
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6675, metadata !DIExpression()), !dbg !6680
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6681
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6676, metadata !DIExpression()), !dbg !6681
  %0 = load ptr, ptr %ci.addr, align 8, !dbg !6681
  store ptr %0, ptr %__mptr, align 8, !dbg !6681
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6681
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6681
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6681
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6682
  %2 = load ptr, ptr %tmp, align 8, !dbg !6681
  store ptr %2, ptr %info, align 8, !dbg !6683
  %3 = load ptr, ptr %info, align 8, !dbg !6684
  %mcfg_added = getelementptr inbounds %struct.pci_root_info, ptr %3, i32 0, i32 2, !dbg !6686
  %4 = load i8, ptr %mcfg_added, align 8, !dbg !6686, !range !5422, !noundef !929
  %tobool = trunc i8 %4 to i1, !dbg !6686
  br i1 %tobool, label %if.then, label %if.end, !dbg !6687

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %info, align 8, !dbg !6688
  %sd = getelementptr inbounds %struct.pci_root_info, ptr %5, i32 0, i32 1, !dbg !6690
  %domain = getelementptr inbounds %struct.pci_sysdata, ptr %sd, i32 0, i32 0, !dbg !6691
  %6 = load i32, ptr %domain, align 8, !dbg !6691
  %conv = trunc i32 %6 to i16, !dbg !6688
  %7 = load ptr, ptr %info, align 8, !dbg !6692
  %start_bus = getelementptr inbounds %struct.pci_root_info, ptr %7, i32 0, i32 3, !dbg !6693
  %8 = load i8, ptr %start_bus, align 1, !dbg !6693
  %9 = load ptr, ptr %info, align 8, !dbg !6694
  %end_bus = getelementptr inbounds %struct.pci_root_info, ptr %9, i32 0, i32 4, !dbg !6695
  %10 = load i8, ptr %end_bus, align 2, !dbg !6695
  %call = call i32 @pci_mmconfig_delete(i16 noundef zeroext %conv, i8 noundef zeroext %8, i8 noundef zeroext %10) #18, !dbg !6696
  %11 = load ptr, ptr %info, align 8, !dbg !6697
  %mcfg_added1 = getelementptr inbounds %struct.pci_root_info, ptr %11, i32 0, i32 2, !dbg !6698
  store i8 0, ptr %mcfg_added1, align 8, !dbg !6699
  br label %if.end, !dbg !6700

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !6701
  ret void, !dbg !6701
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6702 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6705 dso_local i32 @pci_mmconfig_delete(i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6708 dso_local i32 @acpi_pci_probe_root_resources(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @resource_is_pcicfg_ioport(ptr noundef %res) #5 align 16 !dbg !6709 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6713, metadata !DIExpression()), !dbg !6714
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6715
  %flags = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 3, !dbg !6716
  %1 = load i64, ptr %flags, align 8, !dbg !6716
  %and = and i64 %1, 256, !dbg !6717
  %tobool = icmp ne i64 %and, 0, !dbg !6717
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !6718

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %res.addr, align 8, !dbg !6719
  %start = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 0, !dbg !6720
  %3 = load i64, ptr %start, align 8, !dbg !6720
  %cmp = icmp eq i64 %3, 3320, !dbg !6721
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6722

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load ptr, ptr %res.addr, align 8, !dbg !6723
  %end = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1, !dbg !6724
  %5 = load i64, ptr %end, align 8, !dbg !6724
  %cmp1 = icmp eq i64 %5, 3327, !dbg !6725
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !6726
  ret i1 %6, !dbg !6727
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @resource_list_destroy_entry(ptr noundef %entry1) #6 align 16 !dbg !6728 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6732, metadata !DIExpression()), !dbg !6733
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6734
  call void @resource_list_del(ptr noundef %0) #18, !dbg !6735
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6736
  call void @resource_list_free_entry(ptr noundef %1) #18, !dbg !6737
  ret void, !dbg !6738
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6739 dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6742 dso_local void @x86_pci_root_bus_resources(i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @resource_list_del(ptr noundef %entry1) #6 align 16 !dbg !6745 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6747, metadata !DIExpression()), !dbg !6748
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6749
  %node = getelementptr inbounds %struct.resource_entry, ptr %0, i32 0, i32 0, !dbg !6750
  call void @list_del(ptr noundef %node) #18, !dbg !6751
  ret void, !dbg !6752
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @resource_list_free_entry(ptr noundef %entry1) #6 align 16 !dbg !6753 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6755, metadata !DIExpression()), !dbg !6756
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6757
  call void @kfree(ptr noundef %0) #18, !dbg !6758
  ret void, !dbg !6759
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #6 align 16 !dbg !6760 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6765, metadata !DIExpression()), !dbg !6766
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6767
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !6768
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6769
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6770
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6771
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6772
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6773
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6774
  ret void, !dbg !6775
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #6 align 16 !dbg !6776 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6778, metadata !DIExpression()), !dbg !6779
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6780
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #18, !dbg !6782
  br i1 %call, label %if.end, label %if.then, !dbg !6783

if.then:                                          ; preds = %entry
  br label %return, !dbg !6784

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6785
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6786
  %2 = load ptr, ptr %prev, align 8, !dbg !6786
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6787
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6788
  %4 = load ptr, ptr %next, align 8, !dbg !6788
  call void @__list_del(ptr noundef %2, ptr noundef %4) #18, !dbg !6789
  br label %return, !dbg !6790

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6790
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #6 align 16 !dbg !6791 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6795, metadata !DIExpression()), !dbg !6796
  ret i1 true, !dbg !6797
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6798 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6802, metadata !DIExpression()), !dbg !6804
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6803, metadata !DIExpression()), !dbg !6805
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6806
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6807
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6808
  store ptr %0, ptr %prev1, align 8, !dbg !6809
  br label %do.body, !dbg !6810

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6811

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6813

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6811

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6815
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6815
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6815
  store volatile ptr %2, ptr %next4, align 8, !dbg !6815
  br label %do.end5, !dbg !6815

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6811

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6817
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5372, !5373, !5374, !5375, !5376, !5377, !5378, !5379}
!llvm.ident = !{!5380}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pci_use_e820", scope: !2, file: !3, line: 25, type: !720, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/pci/.acpi.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/pci/acpi\22 -D KBUILD_BASENAME=\22acpi\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/pci/acpi.ll arch/x86/pci/acpi.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !173, globals: !5209, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/pci/acpi.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "56d80044a578501beea0eb0b20b809a2")
!4 = !{!5, !11, !18, !23, !29, !34, !42, !58, !66, !72, !79, !86, !92, !98, !105, !113, !121, !127, !136, !141, !146, !152, !163}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!15 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!16 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!17 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !19, line: 2052, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!22 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !24, line: 54, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!25 = !{!26, !27, !28}
!26 = !DIEnumerator(name: "USRQUOTA", value: 0)
!27 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!28 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !30, line: 65, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!31 = !{!32, !33}
!32 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!33 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !35, line: 9, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!36 = !{!37, !38, !39, !40, !41}
!37 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!38 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!39 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!40 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!41 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !43, line: 1325, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!45 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!46 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!47 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!48 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!49 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!50 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!51 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!52 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!53 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!54 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!55 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!56 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!57 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !59, line: 68, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!62 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!63 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!64 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!65 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !67, line: 16, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "TT_NONE", value: 0)
!70 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!71 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !73, line: 51, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!76 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!77 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!78 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !80, line: 15, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!81 = !{!82, !83, !84, !85}
!82 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!83 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!84 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!85 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !87, line: 26, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!88 = !{!89, !90, !91}
!89 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!90 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!91 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !93, line: 45, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!96 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!97 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !99, line: 487, baseType: !7, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!102 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!103 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!104 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !106, line: 620, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!107 = !{!108, !109, !110, !111, !112}
!108 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!109 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!110 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!111 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!112 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !106, line: 597, baseType: !114, size: 32, elements: !115)
!114 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!115 = !{!116, !117, !118, !119, !120}
!116 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!117 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!118 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!119 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!120 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !122, line: 30, baseType: !7, size: 32, elements: !123)
!122 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!125 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!126 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !99, line: 547, baseType: !7, size: 32, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135}
!129 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!130 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!131 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!132 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!133 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!134 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!135 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !99, line: 564, baseType: !7, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!139 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!140 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !99, line: 577, baseType: !7, size: 32, elements: !142)
!142 = !{!143, !144, !145}
!143 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!144 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!145 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !99, line: 503, baseType: !7, size: 32, elements: !147)
!147 = !{!148, !149, !150, !151}
!148 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!149 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!150 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!151 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_states", file: !153, line: 398, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162}
!155 = !DIEnumerator(name: "N_POSSIBLE", value: 0)
!156 = !DIEnumerator(name: "N_ONLINE", value: 1)
!157 = !DIEnumerator(name: "N_NORMAL_MEMORY", value: 2)
!158 = !DIEnumerator(name: "N_HIGH_MEMORY", value: 2)
!159 = !DIEnumerator(name: "N_MEMORY", value: 3)
!160 = !DIEnumerator(name: "N_CPU", value: 4)
!161 = !DIEnumerator(name: "N_GENERIC_INITIATOR", value: 5)
!162 = !DIEnumerator(name: "NR_NODE_STATES", value: 6)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !164, line: 364, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!165 = !{!166, !167, !168, !169, !170, !171, !172}
!166 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!167 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!168 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!169 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!170 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!171 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!172 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!173 = !{!174, !176, !177, !349, !4886, !4887, !991, !4888, !258, !5199, !5207}
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !175, line: 154, baseType: !7)
!175 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !179, line: 647, size: 8256, elements: !180)
!179 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!180 = !{!181, !187, !188, !189, !190, !4838, !4839, !4841, !4842, !4843, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4877, !4878, !4880, !4881, !4882, !4883, !4884, !4885}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !178, file: !179, line: 648, baseType: !182, size: 128)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !175, line: 190, size: 128, elements: !183)
!183 = !{!184, !186}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !175, line: 191, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !182, file: !175, line: 191, baseType: !185, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !178, file: !179, line: 649, baseType: !177, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !178, file: !179, line: 650, baseType: !182, size: 128, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !178, file: !179, line: 651, baseType: !182, size: 128, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !178, file: !179, line: 652, baseType: !191, size: 64, offset: 448)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !179, line: 322, size: 16640, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !202, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4709, !4710, !4711, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4801, !4802, !4803, !4805, !4806, !4808, !4809, !4810, !4811, !4817, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !192, file: !179, line: 323, baseType: !182, size: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !192, file: !179, line: 324, baseType: !177, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !192, file: !179, line: 325, baseType: !177, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !192, file: !179, line: 327, baseType: !176, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !192, file: !179, line: 328, baseType: !199, size: 64, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !201, line: 131, flags: DIFlagFwdDecl)
!201 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!202 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !192, file: !179, line: 329, baseType: !203, size: 64, offset: 384)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !179, line: 76, size: 832, elements: !205)
!205 = !{!206, !207, !208, !211, !213}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !204, file: !179, line: 77, baseType: !177, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !204, file: !179, line: 78, baseType: !182, size: 128, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !204, file: !179, line: 79, baseType: !209, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !179, line: 79, flags: DIFlagFwdDecl)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !204, file: !179, line: 80, baseType: !212, size: 8, offset: 256)
!212 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !204, file: !179, line: 81, baseType: !214, size: 512, offset: 320)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !215, line: 64, size: 512, elements: !216)
!215 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!216 = !{!217, !221, !222, !224, !312, !4037, !4140, !4145, !4146, !4147, !4148, !4149}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !215, line: 65, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !214, file: !215, line: 66, baseType: !182, size: 128, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !214, file: !215, line: 67, baseType: !223, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !214, file: !215, line: 68, baseType: !225, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !215, line: 168, size: 768, elements: !227)
!227 = !{!228, !229, !271, !272}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !226, file: !215, line: 169, baseType: !182, size: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !226, file: !215, line: 170, baseType: !230, size: 32, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !231, line: 29, baseType: !232)
!231 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !231, line: 17, size: 32, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !231, line: 18, baseType: !235, size: 32)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !231, line: 18, size: 32, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !235, file: !231, line: 19, baseType: !238, size: 32)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !239, line: 14, size: 32, elements: !240)
!239 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !238, file: !239, line: 15, baseType: !242, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !243, line: 44, baseType: !244)
!243 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !243, line: 14, size: 32, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !243, line: 15, baseType: !247, size: 32)
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !243, line: 15, size: 32, elements: !248)
!248 = !{!249, !254, !263}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !247, file: !243, line: 16, baseType: !250, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !175, line: 174, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 172, size: 32, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !251, file: !175, line: 173, baseType: !114, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !243, line: 24, baseType: !255, size: 16)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !243, line: 24, size: 16, elements: !256)
!256 = !{!257, !262}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !255, file: !243, line: 25, baseType: !258, size: 8)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !259, line: 17, baseType: !260)
!259 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !261, line: 21, baseType: !212)
!261 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!262 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !255, file: !243, line: 26, baseType: !258, size: 8, offset: 8)
!263 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !243, line: 28, baseType: !264, size: 32)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !243, line: 28, size: 32, elements: !265)
!265 = !{!266, !270}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !264, file: !243, line: 29, baseType: !267, size: 16)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !259, line: 19, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !261, line: 24, baseType: !269)
!269 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !264, file: !243, line: 30, baseType: !267, size: 16, offset: 16)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !226, file: !215, line: 171, baseType: !214, size: 512, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !226, file: !215, line: 172, baseType: !273, size: 64, offset: 704)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !215, line: 133, size: 192, elements: !276)
!276 = !{!277, !284, !289}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !275, file: !215, line: 134, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!114, !282}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !215, line: 135, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!218, !282}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !275, file: !215, line: 136, baseType: !290, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!114, !282, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !215, line: 125, size: 20736, elements: !296)
!296 = !{!297, !302, !306, !307, !311}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !295, file: !215, line: 126, baseType: !298, size: 192)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 192, elements: !300)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!300 = !{!301}
!301 = !DISubrange(count: 3)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !295, file: !215, line: 127, baseType: !303, size: 4096, offset: 192)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 4096, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !295, file: !215, line: 128, baseType: !114, size: 32, offset: 4288)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !295, file: !215, line: 129, baseType: !308, size: 16384, offset: 4320)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 16384, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 2048)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !295, file: !215, line: 130, baseType: !114, size: 32, offset: 20704)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !214, file: !215, line: 69, baseType: !313, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !215, line: 116, size: 384, elements: !316)
!316 = !{!317, !321, !350, !3999, !4027, !4031}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !315, file: !215, line: 117, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !223}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !315, file: !215, line: 118, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !325, line: 254, size: 128, elements: !326)
!325 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!326 = !{!327, !342}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !324, file: !325, line: 255, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!331, !223, !336, !299}
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !175, line: 66, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !333, line: 73, baseType: !334)
!333 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !333, line: 15, baseType: !335)
!335 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !325, line: 30, size: 128, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !337, file: !325, line: 31, baseType: !218, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !337, file: !325, line: 32, baseType: !341, size: 16, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !175, line: 24, baseType: !269)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !324, file: !325, line: 256, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!331, !223, !336, !218, !346}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !175, line: 61, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !333, line: 72, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !333, line: 16, baseType: !349)
!349 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !315, file: !215, line: 119, baseType: !351, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !325, line: 84, size: 320, elements: !355)
!355 = !{!356, !357, !361, !3995, !3997}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !354, file: !325, line: 85, baseType: !218, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !354, file: !325, line: 86, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!341, !223, !336, !114}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !354, file: !325, line: 88, baseType: !362, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!341, !223, !365, !114}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !325, line: 175, size: 512, elements: !367)
!367 = !{!368, !369, !370, !371, !3986, !3990, !3991}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !366, file: !325, line: 176, baseType: !337, size: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !366, file: !325, line: 177, baseType: !346, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !366, file: !325, line: 178, baseType: !176, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !366, file: !325, line: 179, baseType: !372, size: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !19, line: 472, size: 1536, align: 64, elements: !377)
!377 = !{!378, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3980, !3981, !3982, !3983, !3984, !3985}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !376, file: !19, line: 473, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !19, line: 641, size: 4800, elements: !381)
!381 = !{!382, !383, !384, !392, !393, !400, !401, !404, !405, !3759, !3760, !3761, !3762, !3763, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3803, !3806, !3807, !3808, !3817, !3818, !3819, !3820}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !380, file: !19, line: 642, baseType: !341, size: 16)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !380, file: !19, line: 643, baseType: !269, size: 16, offset: 16)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !380, file: !19, line: 644, baseType: !385, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !386, line: 23, baseType: !387)
!386 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !386, line: 21, size: 32, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !387, file: !386, line: 22, baseType: !390, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !175, line: 37, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !333, line: 49, baseType: !7)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !380, file: !19, line: 645, baseType: !182, size: 128, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !380, file: !19, line: 646, baseType: !394, size: 32, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !386, line: 28, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !386, line: 26, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !395, file: !386, line: 27, baseType: !398, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !175, line: 38, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !333, line: 50, baseType: !7)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !380, file: !19, line: 647, baseType: !7, size: 32, offset: 224)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !380, file: !19, line: 650, baseType: !402, size: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !19, line: 607, flags: DIFlagFwdDecl)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !380, file: !19, line: 651, baseType: !402, size: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !380, file: !19, line: 654, baseType: !406, size: 64, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !19, line: 1966, size: 2048, align: 512, elements: !409)
!409 = !{!410, !3587, !3597, !3601, !3605, !3609, !3613, !3617, !3621, !3625, !3629, !3630, !3634, !3638, !3675, !3704, !3708, !3714, !3718, !3722, !3726, !3730, !3734, !3740, !3744}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !408, file: !19, line: 1967, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!414, !379, !414, !7}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !416, line: 82, size: 1536, elements: !417)
!416 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!417 = !{!418, !419, !429, !437, !438, !458, !459, !463, !476, !3570, !3571, !3572, !3573, !3579, !3580, !3581}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !415, file: !416, line: 84, baseType: !7, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !415, file: !416, line: 85, baseType: !420, size: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !421, line: 275, baseType: !422)
!421 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !421, line: 275, size: 32, elements: !423)
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !422, file: !421, line: 275, baseType: !425, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !421, line: 69, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !421, line: 64, size: 32, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !426, file: !421, line: 65, baseType: !7, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !415, file: !416, line: 86, baseType: !430, size: 128, offset: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !431, line: 38, size: 128, elements: !432)
!431 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!432 = !{!433, !435}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !430, file: !431, line: 39, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !430, file: !431, line: 39, baseType: !436, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !415, file: !416, line: 87, baseType: !414, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !415, file: !416, line: 88, baseType: !439, size: 128, offset: 256)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !416, line: 49, size: 128, elements: !440)
!440 = !{!441, !455}
!441 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !416, line: 50, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !439, file: !416, line: 50, size: 64, elements: !443)
!443 = !{!444, !451}
!444 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !416, line: 51, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !442, file: !416, line: 51, size: 64, elements: !446)
!446 = !{!447, !450}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !445, file: !416, line: 52, baseType: !448, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !259, line: 21, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !261, line: 27, baseType: !7)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !445, file: !416, line: 52, baseType: !448, size: 32, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !442, file: !416, line: 54, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !259, line: 23, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !261, line: 31, baseType: !454)
!454 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !439, file: !416, line: 56, baseType: !456, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !415, file: !416, line: 89, baseType: !379, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !415, file: !416, line: 91, baseType: !460, size: 256, offset: 448)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 256, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !415, file: !416, line: 94, baseType: !464, size: 64, offset: 704)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !465, line: 25, size: 64, elements: !466)
!465 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, scope: !464, file: !465, line: 26, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !464, file: !465, line: 26, size: 64, elements: !469)
!469 = !{!470, !471}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !468, file: !465, line: 28, baseType: !453, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !465, line: 30, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !468, file: !465, line: 30, size: 64, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !472, file: !465, line: 31, baseType: !230, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !472, file: !465, line: 32, baseType: !114, size: 32, offset: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !415, file: !416, line: 95, baseType: !477, size: 64, offset: 768)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !416, line: 128, size: 1024, align: 512, elements: !480)
!480 = !{!481, !485, !486, !493, !499, !503, !507, !511, !512, !516, !520, !3560, !3564}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !479, file: !416, line: 129, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!114, !414, !7}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !479, file: !416, line: 130, baseType: !482, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !479, file: !416, line: 131, baseType: !487, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!114, !490, !492}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !479, file: !416, line: 132, baseType: !494, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!114, !490, !7, !218, !497}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !479, file: !416, line: 134, baseType: !500, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!114, !490}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !479, file: !416, line: 135, baseType: !504, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!114, !414}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !479, file: !416, line: 136, baseType: !508, size: 64, offset: 384)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !414}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !479, file: !416, line: 137, baseType: !508, size: 64, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !479, file: !416, line: 138, baseType: !513, size: 64, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !414, !379}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !479, file: !416, line: 139, baseType: !517, size: 64, offset: 576)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!299, !414, !299, !114}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !479, file: !416, line: 140, baseType: !521, size: 64, offset: 640)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!524, !3559}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !526, line: 70, size: 256, elements: !527)
!526 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!527 = !{!528, !529, !3555, !3556}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !525, file: !526, line: 71, baseType: !414, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !525, file: !526, line: 72, baseType: !530, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !19, line: 1190, size: 10752, elements: !532)
!532 = !{!533, !534, !537, !538, !539, !543, !1023, !1162, !1202, !1292, !1296, !1297, !1298, !1299, !1300, !1309, !1310, !1311, !1312, !1317, !1321, !1322, !1325, !1328, !1331, !1334, !1335, !1336, !1377, !3488, !3489, !3490, !3491, !3492, !3493, !3496, !3498, !3505, !3506, !3507, !3508, !3509, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !531, file: !19, line: 1191, baseType: !182, size: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !531, file: !19, line: 1192, baseType: !535, size: 32, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !175, line: 21, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !175, line: 18, baseType: !448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !531, file: !19, line: 1193, baseType: !212, size: 8, offset: 160)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !531, file: !19, line: 1194, baseType: !349, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !531, file: !19, line: 1195, baseType: !540, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !175, line: 52, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !333, line: 88, baseType: !542)
!542 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !531, file: !19, line: 1196, baseType: !544, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !19, line: 2366, size: 576, elements: !546)
!546 = !{!547, !548, !549, !556, !560, !564, !568, !1008, !1009, !1013, !1015, !1016, !1017, !1019, !1020, !1021, !1022}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !545, file: !19, line: 2367, baseType: !218, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !545, file: !19, line: 2368, baseType: !114, size: 32, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !545, file: !19, line: 2376, baseType: !550, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!114, !553}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !555, line: 32, flags: DIFlagFwdDecl)
!555 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!556 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !545, file: !19, line: 2377, baseType: !557, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!559 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !19, line: 75, flags: DIFlagFwdDecl)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !545, file: !19, line: 2378, baseType: !561, size: 64, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!414, !544, !114, !218, !176}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !545, file: !19, line: 2380, baseType: !565, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !530}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !545, file: !19, line: 2381, baseType: !569, size: 64, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !571)
!571 = !{!572, !573, !574, !578, !600, !626, !627, !628, !629, !633, !638, !639, !659, !715, !716, !717, !718, !719, !722, !723, !724, !732, !736, !763, !784, !785, !786, !787, !796, !819, !820, !823, !826, !827, !828, !829, !830, !831, !832, !837, !838, !966, !974, !975, !976, !978, !982, !983, !987, !988, !989, !990, !992, !993, !994, !1001, !1002, !1003, !1007}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !570, file: !12, line: 403, baseType: !11, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !570, file: !12, line: 406, baseType: !182, size: 128, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !570, file: !12, line: 409, baseType: !575, size: 448, offset: 192)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 448, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 56)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !570, file: !12, line: 417, baseType: !579, size: 768, offset: 640)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !580)
!580 = !{!581, !582, !583, !584, !587}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !579, file: !12, line: 46, baseType: !214, size: 512)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !579, file: !12, line: 47, baseType: !569, size: 64, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !579, file: !12, line: 48, baseType: !223, size: 64, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !579, file: !12, line: 49, baseType: !585, size: 64, offset: 640)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !579, file: !12, line: 50, baseType: !588, size: 64, offset: 704)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !590, line: 26, size: 256, elements: !591)
!590 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !589, file: !590, line: 27, baseType: !7, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !589, file: !590, line: 28, baseType: !594, size: 192, offset: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !595, line: 43, size: 192, elements: !596)
!595 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!596 = !{!597, !599}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !594, file: !595, line: 44, baseType: !598, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !239, line: 23, baseType: !238)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !594, file: !595, line: 45, baseType: !182, size: 128, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !570, file: !12, line: 418, baseType: !601, size: 64, offset: 1408)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !603)
!603 = !{!604, !605, !610, !614, !618, !622}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !602, file: !12, line: 54, baseType: !337, size: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !602, file: !12, line: 55, baseType: !606, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!331, !601, !609, !299}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !602, file: !12, line: 57, baseType: !611, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!331, !601, !609, !218, !346}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !602, file: !12, line: 59, baseType: !615, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !569, !218}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !602, file: !12, line: 60, baseType: !619, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!114, !569}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !602, file: !12, line: 61, baseType: !623, size: 64, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !569}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !570, file: !12, line: 419, baseType: !218, size: 64, offset: 1472)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !570, file: !12, line: 420, baseType: !218, size: 64, offset: 1536)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !570, file: !12, line: 421, baseType: !223, size: 64, offset: 1600)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !570, file: !12, line: 424, baseType: !630, size: 64, offset: 1664)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !570, file: !12, line: 425, baseType: !634, size: 64, offset: 1728)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !259, line: 20, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !261, line: 26, baseType: !114)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !570, file: !12, line: 426, baseType: !7, size: 32, offset: 1792)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !570, file: !12, line: 435, baseType: !640, size: 256, offset: 1856)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !641, line: 66, size: 256, elements: !642)
!641 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!642 = !{!643, !652, !653, !658}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !640, file: !641, line: 67, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !645, line: 13, baseType: !646)
!645 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !175, line: 181, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 179, size: 64, elements: !648)
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !647, file: !175, line: 180, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !259, line: 22, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !261, line: 30, baseType: !542)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !640, file: !641, line: 68, baseType: !598, size: 32, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !640, file: !641, line: 70, baseType: !654, size: 32, offset: 96)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !655, line: 15, size: 32, elements: !656)
!655 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!656 = !{!657}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !654, file: !655, line: 20, baseType: !250, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !640, file: !641, line: 72, baseType: !182, size: 128, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !570, file: !12, line: 437, baseType: !660, size: 64, offset: 2112)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !662, line: 69, size: 320, elements: !663)
!662 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!663 = !{!664, !665, !666, !686, !688, !692, !693}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !661, file: !662, line: 70, baseType: !218, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !661, file: !662, line: 71, baseType: !569, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !661, file: !662, line: 72, baseType: !667, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !662, line: 47, size: 256, elements: !670)
!670 = !{!671, !672, !678, !682}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !669, file: !662, line: 49, baseType: !7, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !669, file: !662, line: 51, baseType: !673, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!114, !218, !676}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !669, file: !662, line: 53, baseType: !679, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!114, !299, !676}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !669, file: !662, line: 55, baseType: !683, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !176}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !661, file: !662, line: 73, baseType: !687, size: 16, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !661, file: !662, line: 74, baseType: !689, size: 8, offset: 208)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !259, line: 16, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !261, line: 20, baseType: !691)
!691 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !662, line: 75, baseType: !258, size: 8, offset: 216)
!693 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !662, line: 76, baseType: !694, size: 64, offset: 256)
!694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !662, line: 76, size: 64, elements: !695)
!695 = !{!696, !697, !704}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !694, file: !662, line: 77, baseType: !176, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !694, file: !662, line: 78, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !700)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !662, line: 86, size: 128, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !700, file: !662, line: 87, baseType: !7, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !700, file: !662, line: 88, baseType: !299, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !694, file: !662, line: 79, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !662, line: 92, size: 256, elements: !708)
!708 = !{!709, !710, !711, !713, !714}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !707, file: !662, line: 94, baseType: !7, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !707, file: !662, line: 95, baseType: !7, size: 32, offset: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !707, file: !662, line: 96, baseType: !712, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !707, file: !662, line: 97, baseType: !667, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !707, file: !662, line: 98, baseType: !176, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !570, file: !12, line: 438, baseType: !7, size: 32, offset: 2176)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !570, file: !12, line: 441, baseType: !7, size: 32, offset: 2208)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !570, file: !12, line: 442, baseType: !630, size: 64, offset: 2240)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !570, file: !12, line: 443, baseType: !634, size: 64, offset: 2304)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !570, file: !12, line: 444, baseType: !720, size: 8, offset: 2368)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !175, line: 35, baseType: !721)
!721 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !570, file: !12, line: 451, baseType: !720, size: 8, offset: 2376)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !570, file: !12, line: 454, baseType: !7, size: 32, offset: 2400)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !570, file: !12, line: 455, baseType: !725, size: 64, offset: 2432)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !727, line: 23, size: 96, elements: !728)
!727 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!728 = !{!729, !730, !731}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !726, file: !727, line: 24, baseType: !114, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !726, file: !727, line: 24, baseType: !114, size: 32, offset: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !726, file: !727, line: 24, baseType: !114, size: 32, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !570, file: !12, line: 458, baseType: !733, size: 64, offset: 2496)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!114}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !570, file: !12, line: 460, baseType: !737, size: 4032, align: 512, offset: 2560)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 4032, elements: !761)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !739)
!739 = !{!740, !741, !742}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !738, file: !12, line: 363, baseType: !176, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !738, file: !12, line: 364, baseType: !7, size: 32, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !738, file: !12, line: 367, baseType: !743, size: 448, offset: 128)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !743, file: !12, line: 320, baseType: !569, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !743, file: !12, line: 321, baseType: !747, size: 384, offset: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !748, line: 40, size: 384, elements: !749)
!748 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!749 = !{!750}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !747, file: !748, line: 41, baseType: !751, size: 384, align: 64)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !752, size: 384, align: 64, elements: !759)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !753, line: 5, size: 192, align: 64, elements: !754)
!753 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!754 = !{!755, !756, !758}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !752, file: !753, line: 6, baseType: !349, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !752, file: !753, line: 7, baseType: !757, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !752, file: !753, line: 8, baseType: !757, size: 64, offset: 128)
!759 = !{!760}
!760 = !DISubrange(count: 2)
!761 = !{!762}
!762 = !DISubrange(count: 7)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !570, file: !12, line: 463, baseType: !764, size: 192, offset: 6592)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !765, line: 8, size: 192, elements: !766)
!765 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!766 = !{!767, !768, !770}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !764, file: !765, line: 10, baseType: !7, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !764, file: !765, line: 11, baseType: !769, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !764, file: !765, line: 12, baseType: !771, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !773, line: 59, size: 48, elements: !774)
!773 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!774 = !{!775, !779, !780, !781, !782, !783}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !772, file: !773, line: 60, baseType: !776, size: 16)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !259, line: 18, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !261, line: 23, baseType: !778)
!778 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !772, file: !773, line: 61, baseType: !776, size: 16, offset: 16)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !772, file: !773, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !772, file: !773, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !772, file: !773, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !772, file: !773, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !570, file: !12, line: 465, baseType: !349, size: 64, offset: 6784)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !570, file: !12, line: 469, baseType: !7, size: 32, offset: 6848)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !570, file: !12, line: 470, baseType: !182, size: 128, offset: 6912)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !570, file: !12, line: 471, baseType: !788, size: 64, offset: 7040)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !790, line: 33, size: 96, elements: !791)
!790 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!791 = !{!792, !793, !794, !795}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !789, file: !790, line: 37, baseType: !114, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !789, file: !790, line: 43, baseType: !114, size: 32, offset: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !789, file: !790, line: 45, baseType: !269, size: 16, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !789, file: !790, line: 47, baseType: !269, size: 16, offset: 80)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !570, file: !12, line: 476, baseType: !797, size: 64, offset: 7104)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !799)
!799 = !{!800, !816, !817, !818}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !798, file: !12, line: 379, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !803, line: 204, baseType: !804)
!803 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !803, line: 197, size: 192, elements: !805)
!805 = !{!806, !808, !809, !810, !812, !814}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !804, file: !803, line: 198, baseType: !807, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !803, line: 21, baseType: !449)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !804, file: !803, line: 199, baseType: !212, size: 8, offset: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !804, file: !803, line: 200, baseType: !212, size: 8, offset: 40)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !804, file: !803, line: 201, baseType: !811, size: 16, offset: 48)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !803, line: 17, baseType: !268)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !804, file: !803, line: 202, baseType: !813, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !803, line: 16, baseType: !453)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !804, file: !803, line: 203, baseType: !815, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !803, line: 22, baseType: !453)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !798, file: !12, line: 380, baseType: !7, size: 32, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !798, file: !12, line: 381, baseType: !299, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !798, file: !12, line: 382, baseType: !299, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !570, file: !12, line: 477, baseType: !798, size: 256, offset: 7168)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !570, file: !12, line: 480, baseType: !821, size: 64, offset: 7424)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !570, file: !12, line: 483, baseType: !824, size: 64, offset: 7488)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !570, file: !12, line: 488, baseType: !299, size: 64, offset: 7552)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !570, file: !12, line: 492, baseType: !176, size: 64, offset: 7616)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !570, file: !12, line: 493, baseType: !7, size: 32, offset: 7680)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !570, file: !12, line: 495, baseType: !176, size: 64, offset: 7744)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !570, file: !12, line: 496, baseType: !7, size: 32, offset: 7808)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !570, file: !12, line: 499, baseType: !7, size: 32, offset: 7840)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !570, file: !12, line: 500, baseType: !833, size: 64, offset: 7872)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !835, line: 45, baseType: !836)
!835 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !570, file: !12, line: 503, baseType: !7, size: 32, offset: 7936)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !570, file: !12, line: 504, baseType: !839, size: 64, offset: 8000)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !842, line: 96, size: 192, elements: !843)
!842 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!843 = !{!844, !845, !926, !930}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !841, file: !842, line: 97, baseType: !7, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !841, file: !842, line: 98, baseType: !846, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !842, line: 24, size: 3072, elements: !848)
!848 = !{!849, !851, !852, !853, !854, !878, !879, !880, !881, !899, !911, !912, !923, !924, !925}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !847, file: !842, line: 26, baseType: !850, size: 128)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 128, elements: !759)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !847, file: !842, line: 27, baseType: !850, size: 128, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !847, file: !842, line: 28, baseType: !114, size: 32, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !847, file: !842, line: 31, baseType: !230, size: 32, align: 512, offset: 512)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !847, file: !842, line: 32, baseType: !855, size: 960, offset: 576)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !856, line: 206, size: 960, elements: !857)
!856 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!857 = !{!858, !867, !872, !874, !875, !877}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !855, file: !856, line: 207, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !175, line: 232, size: 128, align: 64, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !860, file: !175, line: 233, baseType: !859, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !860, file: !175, line: 234, baseType: !864, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !859}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !855, file: !856, line: 208, baseType: !868, size: 256, offset: 64)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !869, size: 256, elements: !870)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!870 = !{!871}
!871 = !DISubrange(count: 4)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !855, file: !856, line: 209, baseType: !873, size: 256, offset: 320)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 256, elements: !870)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !855, file: !856, line: 213, baseType: !335, size: 64, offset: 576)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !855, file: !856, line: 215, baseType: !876, size: 256, offset: 640)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 256, elements: !870)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !855, file: !856, line: 216, baseType: !258, size: 8, offset: 896)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !847, file: !842, line: 33, baseType: !349, size: 64, offset: 1536)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !847, file: !842, line: 34, baseType: !349, size: 64, offset: 1600)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !847, file: !842, line: 35, baseType: !720, size: 8, offset: 1664)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !847, file: !842, line: 36, baseType: !882, size: 320, offset: 1728)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !883, line: 11, size: 320, elements: !884)
!883 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!884 = !{!885, !892, !893, !898}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !882, file: !883, line: 16, baseType: !886, size: 128)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !175, line: 198, size: 128, elements: !887)
!887 = !{!888, !890}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !886, file: !175, line: 199, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !886, file: !175, line: 199, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !882, file: !883, line: 17, baseType: !349, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !882, file: !883, line: 18, baseType: !894, size: 64, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !897}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !882, file: !883, line: 19, baseType: !448, size: 32, offset: 256)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !847, file: !842, line: 37, baseType: !900, size: 256, offset: 2048)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !901, line: 98, size: 256, elements: !902)
!901 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!902 = !{!903, !904, !905}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !900, file: !901, line: 99, baseType: !644, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !900, file: !901, line: 100, baseType: !182, size: 128, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !900, file: !901, line: 101, baseType: !906, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !901, line: 21, baseType: !907)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !910}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !847, file: !842, line: 38, baseType: !860, size: 128, align: 64, offset: 2304)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !847, file: !842, line: 39, baseType: !913, size: 64, offset: 2432)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !842, line: 49, size: 768, elements: !915)
!915 = !{!916, !917, !918, !919, !920, !921, !922}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !914, file: !842, line: 50, baseType: !230, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !914, file: !842, line: 51, baseType: !873, size: 256, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !914, file: !842, line: 53, baseType: !873, size: 256, offset: 320)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !914, file: !842, line: 54, baseType: !349, size: 64, offset: 576)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !914, file: !842, line: 55, baseType: !913, size: 64, offset: 640)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !914, file: !842, line: 56, baseType: !114, size: 32, offset: 704)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !914, file: !842, line: 57, baseType: !114, size: 32, offset: 736)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !847, file: !842, line: 40, baseType: !349, size: 64, offset: 2496)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !847, file: !842, line: 42, baseType: !114, size: 32, offset: 2560)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !847, file: !842, line: 43, baseType: !840, size: 64, offset: 2624)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !841, file: !842, line: 99, baseType: !927, offset: 128)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !928, line: 211, elements: !929)
!928 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!929 = !{}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !841, file: !842, line: 100, baseType: !931, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !842, line: 63, size: 3008, elements: !933)
!933 = !{!934, !935, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !965}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !932, file: !842, line: 64, baseType: !913, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !932, file: !842, line: 65, baseType: !936, size: 192, offset: 64)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !913, size: 192, elements: !300)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !932, file: !842, line: 67, baseType: !114, size: 32, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !932, file: !842, line: 68, baseType: !640, size: 256, offset: 320)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !932, file: !842, line: 69, baseType: !230, size: 32, offset: 576)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !932, file: !842, line: 70, baseType: !640, size: 256, offset: 640)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !932, file: !842, line: 71, baseType: !349, size: 64, offset: 896)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !932, file: !842, line: 72, baseType: !349, size: 64, offset: 960)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !932, file: !842, line: 73, baseType: !349, size: 64, offset: 1024)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !932, file: !842, line: 74, baseType: !349, size: 64, offset: 1088)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !932, file: !842, line: 75, baseType: !349, size: 64, offset: 1152)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !932, file: !842, line: 76, baseType: !349, size: 64, offset: 1216)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !932, file: !842, line: 77, baseType: !349, size: 64, offset: 1280)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !932, file: !842, line: 78, baseType: !349, size: 64, offset: 1344)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !932, file: !842, line: 79, baseType: !720, size: 8, offset: 1408)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !932, file: !842, line: 80, baseType: !349, size: 64, offset: 1472)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !932, file: !842, line: 81, baseType: !640, size: 256, offset: 1536)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !932, file: !842, line: 82, baseType: !589, size: 256, offset: 1792)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !932, file: !842, line: 84, baseType: !250, size: 32, offset: 2048)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !932, file: !842, line: 87, baseType: !349, size: 64, offset: 2112)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !932, file: !842, line: 88, baseType: !349, size: 64, offset: 2176)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !932, file: !842, line: 89, baseType: !957, size: 704, offset: 2240)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !901, line: 111, size: 704, elements: !958)
!958 = !{!959, !960, !961, !964}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !957, file: !901, line: 112, baseType: !900, size: 256)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !957, file: !901, line: 113, baseType: !882, size: 320, offset: 256)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !957, file: !901, line: 116, baseType: !962, size: 64, offset: 576)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !901, line: 18, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !957, file: !901, line: 117, baseType: !114, size: 32, offset: 640)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !932, file: !842, line: 90, baseType: !840, size: 64, offset: 2944)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !570, file: !12, line: 515, baseType: !967, size: 64, offset: 8064)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !969, line: 117, size: 128, elements: !970)
!969 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!970 = !{!971, !972, !973}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !968, file: !969, line: 118, baseType: !636, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !968, file: !969, line: 119, baseType: !636, size: 32, offset: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !968, file: !969, line: 120, baseType: !335, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !570, file: !12, line: 516, baseType: !7, size: 32, offset: 8128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !570, file: !12, line: 519, baseType: !7, size: 32, offset: 8160)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !570, file: !12, line: 520, baseType: !977, size: 64, offset: 8192)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !570, file: !12, line: 523, baseType: !979, size: 64, offset: 8256)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !570, file: !12, line: 524, baseType: !7, size: 32, offset: 8320)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !570, file: !12, line: 525, baseType: !984, size: 64, offset: 8384)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !570, file: !12, line: 526, baseType: !7, size: 32, offset: 8448)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !570, file: !12, line: 533, baseType: !176, size: 64, offset: 8512)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !570, file: !12, line: 534, baseType: !7, size: 32, offset: 8576)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !570, file: !12, line: 535, baseType: !991, size: 64, offset: 8640)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !570, file: !12, line: 536, baseType: !7, size: 32, offset: 8704)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !570, file: !12, line: 539, baseType: !114, size: 32, offset: 8736)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !570, file: !12, line: 540, baseType: !995, size: 64, offset: 8768)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !997, line: 32, size: 64, elements: !998)
!997 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !996, file: !997, line: 33, baseType: !636, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !996, file: !997, line: 34, baseType: !636, size: 32, offset: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !570, file: !12, line: 563, baseType: !182, size: 128, offset: 8832)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !570, file: !12, line: 565, baseType: !182, size: 128, offset: 8960)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !570, file: !12, line: 568, baseType: !1004, size: 64, offset: 9088)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !570, file: !12, line: 570, baseType: !250, size: 32, offset: 9152)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !545, file: !19, line: 2382, baseType: !544, size: 64, offset: 448)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !545, file: !19, line: 2383, baseType: !1010, size: 64, offset: 512)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !175, line: 194, size: 64, elements: !1011)
!1011 = !{!1012}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1010, file: !175, line: 195, baseType: !889, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !545, file: !19, line: 2385, baseType: !1014, offset: 576)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !928, line: 206, elements: !929)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !545, file: !19, line: 2386, baseType: !1014, offset: 576)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !545, file: !19, line: 2387, baseType: !1014, offset: 576)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !545, file: !19, line: 2388, baseType: !1018, offset: 576)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1014, elements: !300)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !545, file: !19, line: 2390, baseType: !1014, offset: 576)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !545, file: !19, line: 2391, baseType: !1014, offset: 576)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !545, file: !19, line: 2392, baseType: !1014, offset: 576)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !545, file: !19, line: 2393, baseType: !1014, offset: 576)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !531, file: !19, line: 1197, baseType: !1024, size: 64, offset: 384)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1026)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !19, line: 2057, size: 1664, elements: !1027)
!1027 = !{!1028, !1032, !1036, !1037, !1041, !1047, !1051, !1052, !1053, !1057, !1061, !1065, !1066, !1067, !1073, !1077, !1078, !1085, !1086, !1087, !1088, !1092, !1096, !1145, !1160, !1161}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1026, file: !19, line: 2058, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!379, !530}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1026, file: !19, line: 2059, baseType: !1033, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !379}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1026, file: !19, line: 2060, baseType: !1033, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1026, file: !19, line: 2062, baseType: !1038, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !379, !114}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1026, file: !19, line: 2063, baseType: !1042, size: 64, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!114, !379, !1045}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !19, line: 309, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1026, file: !19, line: 2064, baseType: !1048, size: 64, offset: 320)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!114, !379}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1026, file: !19, line: 2065, baseType: !1033, size: 64, offset: 384)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1026, file: !19, line: 2066, baseType: !565, size: 64, offset: 448)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1026, file: !19, line: 2067, baseType: !1054, size: 64, offset: 512)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!114, !530, !114}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1026, file: !19, line: 2068, baseType: !1058, size: 64, offset: 576)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!114, !530, !18}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1026, file: !19, line: 2069, baseType: !1062, size: 64, offset: 640)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!114, !530}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1026, file: !19, line: 2070, baseType: !1058, size: 64, offset: 704)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1026, file: !19, line: 2071, baseType: !1062, size: 64, offset: 768)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1026, file: !19, line: 2072, baseType: !1068, size: 64, offset: 832)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!114, !414, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !19, line: 62, flags: DIFlagFwdDecl)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1026, file: !19, line: 2073, baseType: !1074, size: 64, offset: 896)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!114, !530, !769, !299}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1026, file: !19, line: 2074, baseType: !565, size: 64, offset: 960)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1026, file: !19, line: 2076, baseType: !1079, size: 64, offset: 1024)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!114, !1082, !414}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1084, line: 66, flags: DIFlagFwdDecl)
!1084 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1026, file: !19, line: 2077, baseType: !1079, size: 64, offset: 1088)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1026, file: !19, line: 2078, baseType: !1079, size: 64, offset: 1152)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1026, file: !19, line: 2079, baseType: !1079, size: 64, offset: 1216)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1026, file: !19, line: 2081, baseType: !1089, size: 64, offset: 1280)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!331, !530, !114, !299, !346, !540}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1026, file: !19, line: 2082, baseType: !1093, size: 64, offset: 1344)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!331, !530, !114, !218, !346, !540}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1026, file: !19, line: 2083, baseType: !1097, size: 64, offset: 1408)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!1100, !379}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !24, line: 296, size: 1664, elements: !1103)
!1103 = !{!1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1128, !1129, !1130}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1102, file: !24, line: 297, baseType: !886, size: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1102, file: !24, line: 298, baseType: !182, size: 128, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1102, file: !24, line: 299, baseType: !182, size: 128, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1102, file: !24, line: 300, baseType: !182, size: 128, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1102, file: !24, line: 301, baseType: !640, size: 256, offset: 512)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1102, file: !24, line: 302, baseType: !230, size: 32, offset: 768)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1102, file: !24, line: 303, baseType: !250, size: 32, offset: 800)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1102, file: !24, line: 304, baseType: !530, size: 64, offset: 832)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1102, file: !24, line: 305, baseType: !1113, size: 64, offset: 896)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !24, line: 68, size: 64, elements: !1114)
!1114 = !{!1115, !1127}
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1113, file: !24, line: 69, baseType: !1116, size: 32)
!1116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1113, file: !24, line: 69, size: 32, elements: !1117)
!1117 = !{!1118, !1119, !1120}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1116, file: !24, line: 70, baseType: !385, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1116, file: !24, line: 71, baseType: !394, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1116, file: !24, line: 72, baseType: !1121, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1122, line: 24, baseType: !1123)
!1122 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1122, line: 22, size: 32, elements: !1124)
!1124 = !{!1125}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1123, file: !1122, line: 23, baseType: !1126, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1122, line: 20, baseType: !391)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1113, file: !24, line: 74, baseType: !23, size: 32, offset: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1102, file: !24, line: 306, baseType: !540, size: 64, offset: 960)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1102, file: !24, line: 307, baseType: !349, size: 64, offset: 1024)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1102, file: !24, line: 308, baseType: !1131, size: 576, offset: 1088)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !24, line: 205, size: 576, elements: !1132)
!1132 = !{!1133, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1144}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1131, file: !24, line: 206, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !24, line: 66, baseType: !542)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1131, file: !24, line: 207, baseType: !1134, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1131, file: !24, line: 208, baseType: !1134, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1131, file: !24, line: 209, baseType: !1134, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1131, file: !24, line: 210, baseType: !1134, size: 64, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1131, file: !24, line: 211, baseType: !1134, size: 64, offset: 320)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1131, file: !24, line: 212, baseType: !1134, size: 64, offset: 384)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1131, file: !24, line: 213, baseType: !1142, size: 64, offset: 448)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1143, line: 8, baseType: !651)
!1143 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1131, file: !24, line: 214, baseType: !1142, size: 64, offset: 512)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1026, file: !19, line: 2085, baseType: !1146, size: 64, offset: 1472)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!335, !530, !1149}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1151, line: 15, size: 256, elements: !1152)
!1151 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1152 = !{!1153, !1154, !1155, !1156, !1157}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1150, file: !1151, line: 16, baseType: !174, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1150, file: !1151, line: 19, baseType: !114, size: 32, offset: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1150, file: !1151, line: 26, baseType: !349, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1150, file: !1151, line: 33, baseType: !349, size: 64, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1150, file: !1151, line: 36, baseType: !1158, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !43, line: 33, flags: DIFlagFwdDecl)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1026, file: !19, line: 2087, baseType: !1146, size: 64, offset: 1536)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1026, file: !19, line: 2089, baseType: !565, size: 64, offset: 1600)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !531, file: !19, line: 1198, baseType: !1163, size: 64, offset: 448)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !24, line: 324, size: 704, elements: !1166)
!1166 = !{!1167, !1171, !1175, !1179, !1180, !1181, !1182, !1183, !1188, !1193, !1197}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1165, file: !24, line: 325, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!114, !1101}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1165, file: !24, line: 326, baseType: !1172, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!1101, !530, !114}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1165, file: !24, line: 327, baseType: !1176, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !1101}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1165, file: !24, line: 328, baseType: !1168, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1165, file: !24, line: 329, baseType: !1168, size: 64, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1165, file: !24, line: 330, baseType: !1168, size: 64, offset: 320)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1165, file: !24, line: 331, baseType: !1054, size: 64, offset: 384)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1165, file: !24, line: 334, baseType: !1184, size: 64, offset: 448)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!1187, !379}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1165, file: !24, line: 335, baseType: !1189, size: 64, offset: 512)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!114, !379, !1192}
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1165, file: !24, line: 337, baseType: !1194, size: 64, offset: 576)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!114, !379, !1187}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1165, file: !24, line: 339, baseType: !1198, size: 64, offset: 640)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!114, !530, !1201}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !531, file: !19, line: 1199, baseType: !1203, size: 64, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1205)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !24, line: 430, size: 704, elements: !1206)
!1206 = !{!1207, !1218, !1219, !1223, !1224, !1225, !1240, !1263, !1267, !1268, !1291}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1205, file: !24, line: 431, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!114, !530, !114, !114, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1213)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1214, line: 8, size: 128, elements: !1215)
!1214 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1215 = !{!1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1213, file: !1214, line: 9, baseType: !524, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1213, file: !1214, line: 10, baseType: !414, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1205, file: !24, line: 432, baseType: !1054, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1205, file: !24, line: 433, baseType: !1220, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!114, !530, !7}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1205, file: !24, line: 434, baseType: !1220, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1205, file: !24, line: 435, baseType: !1054, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1205, file: !24, line: 436, baseType: !1226, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!114, !530, !114, !1229}
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !24, line: 417, size: 256, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1230, file: !24, line: 418, baseType: !114, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1230, file: !24, line: 419, baseType: !7, size: 32, offset: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1230, file: !24, line: 420, baseType: !7, size: 32, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1230, file: !24, line: 422, baseType: !7, size: 32, offset: 96)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1230, file: !24, line: 423, baseType: !7, size: 32, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1230, file: !24, line: 424, baseType: !7, size: 32, offset: 160)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1230, file: !24, line: 425, baseType: !7, size: 32, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1230, file: !24, line: 426, baseType: !7, size: 32, offset: 224)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1205, file: !24, line: 437, baseType: !1241, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!114, !530, !1113, !1244}
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !24, line: 345, size: 960, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1245, file: !24, line: 346, baseType: !114, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1245, file: !24, line: 347, baseType: !452, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1245, file: !24, line: 348, baseType: !452, size: 64, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1245, file: !24, line: 349, baseType: !452, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1245, file: !24, line: 350, baseType: !452, size: 64, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1245, file: !24, line: 351, baseType: !452, size: 64, offset: 320)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1245, file: !24, line: 352, baseType: !452, size: 64, offset: 384)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1245, file: !24, line: 353, baseType: !650, size: 64, offset: 448)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1245, file: !24, line: 355, baseType: !650, size: 64, offset: 512)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1245, file: !24, line: 356, baseType: !114, size: 32, offset: 576)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1245, file: !24, line: 357, baseType: !114, size: 32, offset: 608)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1245, file: !24, line: 358, baseType: !452, size: 64, offset: 640)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1245, file: !24, line: 359, baseType: !452, size: 64, offset: 704)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1245, file: !24, line: 360, baseType: !452, size: 64, offset: 768)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1245, file: !24, line: 361, baseType: !650, size: 64, offset: 832)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1245, file: !24, line: 362, baseType: !114, size: 32, offset: 896)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1205, file: !24, line: 438, baseType: !1264, size: 64, offset: 448)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!114, !530, !1201, !1244}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1205, file: !24, line: 440, baseType: !1241, size: 64, offset: 512)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1205, file: !24, line: 441, baseType: !1269, size: 64, offset: 576)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!114, !530, !1272}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !24, line: 411, size: 1408, elements: !1274)
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1273, file: !24, line: 412, baseType: !7, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1273, file: !24, line: 413, baseType: !1277, size: 1344, offset: 64)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1278, size: 1344, elements: !300)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !24, line: 397, size: 448, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1290}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1278, file: !24, line: 398, baseType: !7, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1278, file: !24, line: 399, baseType: !7, size: 32, offset: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1278, file: !24, line: 401, baseType: !7, size: 32, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1278, file: !24, line: 402, baseType: !7, size: 32, offset: 96)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1278, file: !24, line: 403, baseType: !7, size: 32, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1278, file: !24, line: 404, baseType: !7, size: 32, offset: 160)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1278, file: !24, line: 405, baseType: !7, size: 32, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1278, file: !24, line: 406, baseType: !454, size: 64, offset: 256)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1278, file: !24, line: 407, baseType: !1289, size: 64, offset: 320)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !175, line: 132, baseType: !452)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1278, file: !24, line: 408, baseType: !1289, size: 64, offset: 384)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1205, file: !24, line: 442, baseType: !1220, size: 64, offset: 640)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !531, file: !19, line: 1200, baseType: !1293, size: 64, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1295)
!1295 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !19, line: 54, flags: DIFlagFwdDecl)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !531, file: !19, line: 1201, baseType: !349, size: 64, offset: 640)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !531, file: !19, line: 1202, baseType: !349, size: 64, offset: 704)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !531, file: !19, line: 1203, baseType: !349, size: 64, offset: 768)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !531, file: !19, line: 1204, baseType: !414, size: 64, offset: 832)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !531, file: !19, line: 1205, baseType: !1301, size: 320, offset: 896)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1302, line: 48, size: 320, elements: !1303)
!1302 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1303 = !{!1304, !1305, !1306, !1307, !1308}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1301, file: !1302, line: 49, baseType: !644, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1301, file: !1302, line: 55, baseType: !644, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1301, file: !1302, line: 57, baseType: !654, size: 32, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1301, file: !1302, line: 59, baseType: !598, size: 32, offset: 160)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1301, file: !1302, line: 60, baseType: !182, size: 128, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !531, file: !19, line: 1206, baseType: !114, size: 32, offset: 1216)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !531, file: !19, line: 1207, baseType: !250, size: 32, offset: 1248)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !531, file: !19, line: 1209, baseType: !176, size: 64, offset: 1280)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !531, file: !19, line: 1211, baseType: !1313, size: 64, offset: 1344)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1316)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !19, line: 1211, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !531, file: !19, line: 1223, baseType: !1318, size: 64, offset: 1408)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !431, line: 34, size: 64, elements: !1319)
!1319 = !{!1320}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1318, file: !431, line: 35, baseType: !434, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !531, file: !19, line: 1224, baseType: !182, size: 128, offset: 1472)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !531, file: !19, line: 1225, baseType: !1323, size: 64, offset: 1600)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !19, line: 1225, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !531, file: !19, line: 1226, baseType: !1326, size: 64, offset: 1664)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !19, line: 1226, flags: DIFlagFwdDecl)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !531, file: !19, line: 1227, baseType: !1329, size: 64, offset: 1728)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !19, line: 50, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !531, file: !19, line: 1228, baseType: !1332, size: 64, offset: 1792)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !19, line: 1228, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !531, file: !19, line: 1229, baseType: !886, size: 128, offset: 1856)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !531, file: !19, line: 1230, baseType: !7, size: 32, offset: 1984)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !531, file: !19, line: 1231, baseType: !1337, size: 2496, offset: 2048)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !24, line: 521, size: 2496, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1343, !1375}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1337, file: !24, line: 522, baseType: !7, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1337, file: !24, line: 523, baseType: !1301, size: 320, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1337, file: !24, line: 524, baseType: !1342, size: 192, offset: 384)
!1342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 192, elements: !300)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1337, file: !24, line: 525, baseType: !1344, size: 1728, offset: 576)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1345, size: 1728, elements: !300)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !24, line: 222, size: 576, elements: !1346)
!1346 = !{!1347, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1345, file: !24, line: 223, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !24, line: 445, size: 256, elements: !1350)
!1350 = !{!1351, !1352, !1365, !1366}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1349, file: !24, line: 446, baseType: !114, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1349, file: !24, line: 447, baseType: !1353, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1355)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !24, line: 312, size: 512, elements: !1356)
!1356 = !{!1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1355, file: !24, line: 313, baseType: !1054, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1355, file: !24, line: 314, baseType: !1054, size: 64, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1355, file: !24, line: 315, baseType: !1054, size: 64, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1355, file: !24, line: 316, baseType: !1054, size: 64, offset: 192)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1355, file: !24, line: 317, baseType: !1168, size: 64, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1355, file: !24, line: 318, baseType: !1168, size: 64, offset: 320)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1355, file: !24, line: 319, baseType: !1168, size: 64, offset: 384)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1355, file: !24, line: 320, baseType: !1198, size: 64, offset: 448)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1349, file: !24, line: 448, baseType: !569, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1349, file: !24, line: 449, baseType: !1348, size: 64, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1345, file: !24, line: 224, baseType: !114, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1345, file: !24, line: 226, baseType: !182, size: 128, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1345, file: !24, line: 227, baseType: !349, size: 64, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1345, file: !24, line: 228, baseType: !7, size: 32, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1345, file: !24, line: 229, baseType: !7, size: 32, offset: 352)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1345, file: !24, line: 230, baseType: !1134, size: 64, offset: 384)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1345, file: !24, line: 231, baseType: !1134, size: 64, offset: 448)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1345, file: !24, line: 232, baseType: !176, size: 64, offset: 512)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1337, file: !24, line: 526, baseType: !1376, size: 192, offset: 2304)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1353, size: 192, elements: !300)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !531, file: !19, line: 1233, baseType: !1378, size: 2368, offset: 4544)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !19, line: 1184, size: 2368, elements: !1379)
!1379 = !{!1380, !1381, !1382}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1378, file: !19, line: 1185, baseType: !269, size: 16)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1378, file: !19, line: 1186, baseType: !269, size: 16, offset: 16)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1378, file: !19, line: 1187, baseType: !1383, size: 2304, offset: 64)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 2304, elements: !300)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1385, line: 12, size: 768, elements: !1386)
!1385 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1386 = !{!1387, !1401, !1402, !3486, !3487}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1384, file: !1385, line: 13, baseType: !1388, size: 384)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1389, line: 17, size: 384, elements: !1390)
!1389 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1390 = !{!1391, !1392, !1393, !1400}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1388, file: !1389, line: 18, baseType: !114, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1388, file: !1389, line: 19, baseType: !114, size: 32, offset: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1388, file: !1389, line: 20, baseType: !1394, size: 192, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1395, line: 41, baseType: !1396)
!1395 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1395, line: 37, size: 192, elements: !1397)
!1397 = !{!1398, !1399}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1396, file: !1395, line: 38, baseType: !230, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1396, file: !1395, line: 39, baseType: !182, size: 128, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1388, file: !1389, line: 22, baseType: !860, size: 128, align: 64, offset: 256)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1384, file: !1385, line: 14, baseType: !712, size: 64, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1384, file: !1385, line: 15, baseType: !1403, size: 64, offset: 448)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1404, line: 16, size: 64, elements: !1405)
!1404 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1405 = !{!1406}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1403, file: !1404, line: 17, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1084, line: 746, size: 58368, elements: !1409)
!1409 = !{!1410, !1418, !1419, !1420, !1426, !1427, !1428, !1429, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1500, !1511, !1606, !1610, !1613, !1644, !1645, !1646, !1647, !1658, !1660, !1661, !1662, !1663, !1664, !1665, !1676, !1677, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1694, !1695, !1702, !1703, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2662, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2710, !2716, !2717, !2718, !2719, !2720, !2724, !2727, !2734, !2739, !2742, !2745, !2748, !2751, !2889, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2927, !2928, !2929, !2938, !2946, !2947, !2948, !2949, !2950, !2955, !2956, !2957, !2960, !2961, !2964, !2967, !2970, !2978, !2981, !2982, !3068, !3069, !3070, !3071, !3072, !3077, !3078, !3079, !3080, !3083, !3084, !3087, !3090, !3091, !3094, !3095, !3096, !3099, !3100, !3101, !3102, !3103, !3104, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3136, !3137, !3143, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3155, !3227, !3229, !3230, !3231, !3232, !3233, !3234, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3263, !3264, !3265}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1408, file: !1084, line: 752, baseType: !1411, size: 192)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1412, line: 56, size: 192, elements: !1413)
!1412 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1413 = !{!1414, !1415, !1416, !1417}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1411, file: !1412, line: 57, baseType: !349, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1411, file: !1412, line: 58, baseType: !349, size: 64, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1411, file: !1412, line: 59, baseType: !448, size: 32, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1411, file: !1412, line: 61, baseType: !448, size: 32, offset: 160)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1408, file: !1084, line: 754, baseType: !7, size: 32, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1408, file: !1084, line: 767, baseType: !176, size: 64, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1408, file: !1084, line: 768, baseType: !1421, size: 32, offset: 320)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1422, line: 113, baseType: !1423)
!1422 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1422, line: 111, size: 32, elements: !1424)
!1424 = !{!1425}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1423, file: !1422, line: 112, baseType: !250, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1408, file: !1084, line: 770, baseType: !7, size: 32, offset: 352)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1408, file: !1084, line: 771, baseType: !7, size: 32, offset: 384)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1408, file: !1084, line: 774, baseType: !114, size: 32, offset: 416)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1408, file: !1084, line: 775, baseType: !1430, size: 128, offset: 448)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1431, line: 58, size: 128, elements: !1432)
!1431 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1432 = !{!1433, !1439, !1444, !1445}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1430, file: !1431, line: 59, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1435, line: 60, size: 64, elements: !1436)
!1435 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1436 = !{!1437}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1434, file: !1435, line: 61, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !1431, line: 60, baseType: !1440, size: 32, offset: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !1431, line: 60, size: 32, elements: !1441)
!1441 = !{!1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1440, file: !1431, line: 61, baseType: !7, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1440, file: !1431, line: 62, baseType: !250, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1430, file: !1431, line: 65, baseType: !267, size: 16, offset: 96)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1430, file: !1431, line: 65, baseType: !267, size: 16, offset: 112)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1408, file: !1084, line: 776, baseType: !7, size: 32, offset: 576)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1408, file: !1084, line: 777, baseType: !349, size: 64, offset: 640)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1408, file: !1084, line: 778, baseType: !1407, size: 64, offset: 704)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1408, file: !1084, line: 787, baseType: !114, size: 32, offset: 768)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1408, file: !1084, line: 788, baseType: !114, size: 32, offset: 800)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1408, file: !1084, line: 790, baseType: !114, size: 32, offset: 832)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1408, file: !1084, line: 792, baseType: !114, size: 32, offset: 864)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1408, file: !1084, line: 793, baseType: !114, size: 32, offset: 896)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1408, file: !1084, line: 794, baseType: !114, size: 32, offset: 928)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1408, file: !1084, line: 795, baseType: !7, size: 32, offset: 960)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1408, file: !1084, line: 797, baseType: !1457, size: 2048, offset: 1024)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1084, line: 551, size: 2048, elements: !1458)
!1458 = !{!1459, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1479, !1482, !1483, !1484}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1457, file: !1084, line: 553, baseType: !1460, size: 128)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1084, line: 411, size: 128, elements: !1461)
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1460, file: !1084, line: 412, baseType: !349, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1460, file: !1084, line: 413, baseType: !448, size: 32, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1457, file: !1084, line: 554, baseType: !752, size: 192, align: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1457, file: !1084, line: 555, baseType: !452, size: 64, offset: 320)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1457, file: !1084, line: 556, baseType: !452, size: 64, offset: 384)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1457, file: !1084, line: 558, baseType: !182, size: 128, offset: 448)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1457, file: !1084, line: 559, baseType: !7, size: 32, offset: 576)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1457, file: !1084, line: 561, baseType: !452, size: 64, offset: 640)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1457, file: !1084, line: 562, baseType: !452, size: 64, offset: 704)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1457, file: !1084, line: 563, baseType: !452, size: 64, offset: 768)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1457, file: !1084, line: 564, baseType: !452, size: 64, offset: 832)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1457, file: !1084, line: 565, baseType: !650, size: 64, offset: 896)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1457, file: !1084, line: 566, baseType: !452, size: 64, offset: 960)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1457, file: !1084, line: 568, baseType: !452, size: 64, offset: 1024)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1457, file: !1084, line: 571, baseType: !114, size: 32, offset: 1088)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1457, file: !1084, line: 572, baseType: !1478, size: 64, offset: 1152)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1457, file: !1084, line: 574, baseType: !1480, size: 64, offset: 1216)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1084, line: 49, flags: DIFlagFwdDecl)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1457, file: !1084, line: 576, baseType: !1480, size: 64, offset: 1280)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1457, file: !1084, line: 578, baseType: !349, size: 64, offset: 1344)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1457, file: !1084, line: 588, baseType: !1485, size: 512, align: 512, offset: 1536)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1084, line: 497, size: 512, align: 512, elements: !1486)
!1486 = !{!1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1485, file: !1084, line: 498, baseType: !452, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1485, file: !1084, line: 499, baseType: !452, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1485, file: !1084, line: 500, baseType: !452, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1485, file: !1084, line: 501, baseType: !448, size: 32, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1485, file: !1084, line: 502, baseType: !448, size: 32, offset: 224)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1485, file: !1084, line: 503, baseType: !349, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1485, file: !1084, line: 504, baseType: !349, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1485, file: !1084, line: 505, baseType: !349, size: 64, offset: 384)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1485, file: !1084, line: 506, baseType: !1496, size: 64, align: 64, offset: 448)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1084, line: 445, size: 64, align: 64, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1496, file: !1084, line: 446, baseType: !7, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1496, file: !1084, line: 447, baseType: !7, size: 32, offset: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1408, file: !1084, line: 798, baseType: !1501, size: 384, offset: 3072)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1084, line: 592, size: 384, elements: !1502)
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1508, !1509}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1501, file: !1084, line: 593, baseType: !182, size: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1501, file: !1084, line: 594, baseType: !349, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1501, file: !1084, line: 595, baseType: !349, size: 64, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1501, file: !1084, line: 596, baseType: !7, size: 32, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1501, file: !1084, line: 597, baseType: !269, size: 16, offset: 288)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1501, file: !1084, line: 598, baseType: !269, size: 16, offset: 304)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1501, file: !1084, line: 600, baseType: !1510, size: 64, offset: 320)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1408, file: !1084, line: 799, baseType: !1512, size: 1792, offset: 3456)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1084, line: 610, size: 1792, elements: !1513)
!1513 = !{!1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1603, !1604}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1512, file: !1084, line: 611, baseType: !752, size: 192, align: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1512, file: !1084, line: 618, baseType: !452, size: 64, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1512, file: !1084, line: 619, baseType: !452, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1512, file: !1084, line: 620, baseType: !452, size: 64, offset: 320)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1512, file: !1084, line: 621, baseType: !452, size: 64, offset: 384)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1512, file: !1084, line: 622, baseType: !452, size: 64, offset: 448)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1512, file: !1084, line: 629, baseType: !650, size: 64, offset: 512)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1512, file: !1084, line: 630, baseType: !452, size: 64, offset: 576)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1512, file: !1084, line: 631, baseType: !7, size: 32, offset: 640)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1512, file: !1084, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1512, file: !1084, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1512, file: !1084, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1512, file: !1084, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1512, file: !1084, line: 662, baseType: !1528, size: 512, offset: 704)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !30, line: 118, size: 512, elements: !1529)
!1529 = !{!1530, !1538, !1539, !1544, !1599, !1600, !1601, !1602}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1528, file: !30, line: 119, baseType: !1531, size: 256)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1532, line: 9, size: 256, elements: !1533)
!1532 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1531, file: !1532, line: 10, baseType: !752, size: 192, align: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1531, file: !1532, line: 11, baseType: !1536, size: 64, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1537, line: 29, baseType: !650)
!1537 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1528, file: !30, line: 120, baseType: !1536, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1528, file: !30, line: 121, baseType: !1540, size: 64, offset: 320)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!29, !1543}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1528, file: !30, line: 122, baseType: !1545, size: 64, offset: 384)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !30, line: 159, size: 512, align: 512, elements: !1547)
!1547 = !{!1548, !1573, !1574, !1577, !1582, !1583, !1594, !1598}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1546, file: !30, line: 160, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !30, line: 215, size: 4608, align: 512, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1550, file: !30, line: 216, baseType: !598, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1550, file: !30, line: 217, baseType: !7, size: 32, offset: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1550, file: !30, line: 218, baseType: !7, size: 32, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1550, file: !30, line: 219, baseType: !7, size: 32, offset: 96)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1550, file: !30, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1550, file: !30, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1550, file: !30, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1550, file: !30, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1550, file: !30, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1550, file: !30, line: 226, baseType: !7, size: 32, offset: 160)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1550, file: !30, line: 227, baseType: !269, size: 16, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1550, file: !30, line: 228, baseType: !269, size: 16, offset: 208)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1550, file: !30, line: 229, baseType: !7, size: 32, offset: 224)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1550, file: !30, line: 235, baseType: !1536, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1550, file: !30, line: 236, baseType: !1543, size: 64, offset: 320)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1550, file: !30, line: 237, baseType: !1536, size: 64, offset: 384)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1550, file: !30, line: 238, baseType: !1543, size: 64, offset: 448)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1550, file: !30, line: 239, baseType: !1570, size: 4096, align: 512, offset: 512)
!1570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1546, size: 4096, align: 512, elements: !1571)
!1571 = !{!1572}
!1572 = !DISubrange(count: 8)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1546, file: !30, line: 161, baseType: !7, size: 32, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1546, file: !30, line: 162, baseType: !1575, size: 32, offset: 96)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !175, line: 32, baseType: !1576)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !333, line: 96, baseType: !114)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1546, file: !30, line: 163, baseType: !1578, size: 32, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !421, line: 274, baseType: !1579)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !421, line: 274, size: 32, elements: !1580)
!1580 = !{!1581}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1579, file: !421, line: 274, baseType: !425, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1546, file: !30, line: 164, baseType: !1543, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1546, file: !30, line: 165, baseType: !1584, size: 128, offset: 256)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1532, line: 14, size: 128, elements: !1585)
!1585 = !{!1586}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1584, file: !1532, line: 15, baseType: !1587, size: 128)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !753, line: 26, size: 128, elements: !1588)
!1588 = !{!1589, !1593}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1587, file: !753, line: 27, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !753, line: 12, size: 64, elements: !1591)
!1591 = !{!1592}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1590, file: !753, line: 13, baseType: !757, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1587, file: !753, line: 28, baseType: !757, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1546, file: !30, line: 166, baseType: !1595, size: 64, offset: 384)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!1536}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1546, file: !30, line: 167, baseType: !1536, size: 64, offset: 448)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1528, file: !30, line: 123, baseType: !258, size: 8, offset: 448)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1528, file: !30, line: 124, baseType: !258, size: 8, offset: 456)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1528, file: !30, line: 125, baseType: !258, size: 8, offset: 464)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1528, file: !30, line: 126, baseType: !258, size: 8, offset: 472)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1512, file: !1084, line: 671, baseType: !1528, size: 512, offset: 1216)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1512, file: !1084, line: 679, baseType: !1605, size: 64, offset: 1728)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1408, file: !1084, line: 800, baseType: !1607, size: 64, offset: 5248)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1609)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1084, line: 800, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1408, file: !1084, line: 809, baseType: !1611, size: 64, offset: 5312)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1084, line: 70, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1408, file: !1084, line: 825, baseType: !1614, size: 2048, align: 512, offset: 5632)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1084, line: 509, size: 2048, align: 512, elements: !1615)
!1615 = !{!1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1614, file: !1084, line: 511, baseType: !452, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1614, file: !1084, line: 512, baseType: !452, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1614, file: !1084, line: 513, baseType: !452, size: 64, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1614, file: !1084, line: 514, baseType: !452, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1614, file: !1084, line: 515, baseType: !452, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1614, file: !1084, line: 516, baseType: !452, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1614, file: !1084, line: 518, baseType: !452, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1614, file: !1084, line: 519, baseType: !452, size: 64, offset: 448)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1614, file: !1084, line: 520, baseType: !650, size: 64, offset: 512)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1614, file: !1084, line: 522, baseType: !452, size: 64, offset: 576)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1614, file: !1084, line: 523, baseType: !452, size: 64, offset: 640)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1614, file: !1084, line: 524, baseType: !650, size: 64, offset: 704)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1614, file: !1084, line: 526, baseType: !650, size: 64, offset: 768)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1614, file: !1084, line: 527, baseType: !452, size: 64, offset: 832)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1614, file: !1084, line: 529, baseType: !452, size: 64, offset: 896)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1614, file: !1084, line: 530, baseType: !452, size: 64, offset: 960)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1614, file: !1084, line: 531, baseType: !452, size: 64, offset: 1024)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1614, file: !1084, line: 532, baseType: !452, size: 64, offset: 1088)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1614, file: !1084, line: 533, baseType: !452, size: 64, offset: 1152)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1614, file: !1084, line: 535, baseType: !452, size: 64, offset: 1216)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1614, file: !1084, line: 536, baseType: !452, size: 64, offset: 1280)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1614, file: !1084, line: 537, baseType: !452, size: 64, offset: 1344)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1614, file: !1084, line: 538, baseType: !452, size: 64, offset: 1408)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1614, file: !1084, line: 539, baseType: !452, size: 64, offset: 1472)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1614, file: !1084, line: 540, baseType: !452, size: 64, offset: 1536)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1614, file: !1084, line: 541, baseType: !452, size: 64, offset: 1600)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1614, file: !1084, line: 542, baseType: !452, size: 64, offset: 1664)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1614, file: !1084, line: 543, baseType: !452, size: 64, offset: 1728)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1408, file: !1084, line: 833, baseType: !7, size: 32, offset: 7680)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1408, file: !1084, line: 836, baseType: !7, size: 32, offset: 7712)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1408, file: !1084, line: 837, baseType: !114, size: 32, offset: 7744)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1408, file: !1084, line: 838, baseType: !1648, size: 64, offset: 7808)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1650)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1651, line: 19, baseType: !1652)
!1651 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1651, line: 19, size: 64, elements: !1653)
!1653 = !{!1654}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1652, file: !1651, line: 19, baseType: !1655, size: 64)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 64, elements: !1656)
!1656 = !{!1657}
!1657 = !DISubrange(count: 1)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1408, file: !1084, line: 839, baseType: !1659, size: 64, offset: 7872)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1408, file: !1084, line: 840, baseType: !1650, size: 64, offset: 7936)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1408, file: !1084, line: 841, baseType: !176, size: 64, offset: 8000)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1408, file: !1084, line: 843, baseType: !269, size: 16, offset: 8064)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1408, file: !1084, line: 845, baseType: !269, size: 16, offset: 8080)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1408, file: !1084, line: 848, baseType: !114, size: 32, offset: 8096)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1408, file: !1084, line: 849, baseType: !1666, size: 32, offset: 8128)
!1666 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1084, line: 718, size: 32, elements: !1667)
!1667 = !{!1668, !1675}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1666, file: !1084, line: 724, baseType: !1669, size: 32)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1666, file: !1084, line: 719, size: 32, elements: !1670)
!1670 = !{!1671, !1672, !1673, !1674}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1669, file: !1084, line: 720, baseType: !258, size: 8)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1669, file: !1084, line: 721, baseType: !258, size: 8, offset: 8)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1669, file: !1084, line: 722, baseType: !258, size: 8, offset: 16)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1669, file: !1084, line: 723, baseType: !258, size: 8, offset: 24)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1666, file: !1084, line: 725, baseType: !448, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1408, file: !1084, line: 850, baseType: !182, size: 128, offset: 8192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1408, file: !1084, line: 851, baseType: !1678, size: 64, offset: 8320)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1084, line: 60, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1408, file: !1084, line: 855, baseType: !349, size: 64, offset: 8384)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1408, file: !1084, line: 856, baseType: !258, size: 8, offset: 8448)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1408, file: !1084, line: 857, baseType: !258, size: 8, offset: 8456)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1408, file: !1084, line: 858, baseType: !114, size: 32, offset: 8480)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1408, file: !1084, line: 859, baseType: !182, size: 128, offset: 8512)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1408, file: !1084, line: 860, baseType: !114, size: 32, offset: 8640)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1408, file: !1084, line: 861, baseType: !182, size: 128, offset: 8704)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1408, file: !1084, line: 873, baseType: !1688, size: 256, offset: 8832)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1084, line: 376, size: 256, elements: !1689)
!1689 = !{!1690, !1691, !1692, !1693}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1688, file: !1084, line: 381, baseType: !349, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1688, file: !1084, line: 384, baseType: !454, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1688, file: !1084, line: 389, baseType: !454, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1688, file: !1084, line: 392, baseType: !454, size: 64, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1408, file: !1084, line: 875, baseType: !182, size: 128, offset: 9088)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1408, file: !1084, line: 877, baseType: !1696, size: 320, offset: 9216)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1697, line: 86, size: 320, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1698 = !{!1699, !1700, !1701}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1696, file: !1697, line: 87, baseType: !114, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1696, file: !1697, line: 88, baseType: !182, size: 128, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1696, file: !1697, line: 89, baseType: !182, size: 128, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1408, file: !1084, line: 878, baseType: !752, size: 192, align: 64, offset: 9536)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1408, file: !1084, line: 881, baseType: !1704, size: 64, offset: 9728)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !43, line: 733, size: 10240, elements: !1706)
!1706 = !{!1707, !2581}
!1707 = !DIDerivedType(tag: DW_TAG_member, scope: !1705, file: !43, line: 734, baseType: !1708, size: 10240)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1705, file: !43, line: 734, size: 10240, elements: !1709)
!1709 = !{!1710, !1714, !1727, !2458, !2459, !2460, !2461, !2462, !2463, !2470, !2471, !2472, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2511, !2513, !2516, !2561, !2562, !2563, !2566, !2567, !2568, !2571, !2572, !2573, !2579, !2580}
!1710 = !DIDerivedType(tag: DW_TAG_member, scope: !1708, file: !43, line: 739, baseType: !1711, size: 512, align: 512)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1708, file: !43, line: 739, size: 512, align: 512, elements: !1712)
!1712 = !{!1713}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1711, file: !43, line: 747, baseType: !250, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1708, file: !43, line: 750, baseType: !1715, size: 128, offset: 512)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1716, line: 218, size: 128, elements: !1717)
!1716 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1717 = !{!1718, !1725, !1726}
!1718 = !DIDerivedType(tag: DW_TAG_member, scope: !1715, file: !1716, line: 219, baseType: !1719, size: 32)
!1719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1715, file: !1716, line: 219, size: 32, elements: !1720)
!1720 = !{!1721, !1722}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1719, file: !1716, line: 220, baseType: !230, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1719, file: !1716, line: 221, baseType: !1723)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1716, line: 197, baseType: !1724)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1716, line: 197, elements: !929)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1715, file: !1716, line: 223, baseType: !7, size: 32, offset: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1715, file: !1716, line: 224, baseType: !176, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1708, file: !43, line: 752, baseType: !1728, size: 64, offset: 640)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!349, !1731, !349, !349, !349, !349}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !19, line: 994, size: 1856, align: 64, elements: !1733)
!1733 = !{!1734, !1740, !1741, !1743, !1744, !1745, !1746, !1747, !1797, !1987, !1996, !1997, !1998, !2448, !2449, !2450, !2451, !2453, !2454, !2457}
!1734 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !19, line: 995, baseType: !1735, size: 128)
!1735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1732, file: !19, line: 995, size: 128, elements: !1736)
!1736 = !{!1737, !1738, !1739}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1735, file: !19, line: 996, baseType: !1434, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1735, file: !19, line: 997, baseType: !860, size: 128, align: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1735, file: !19, line: 998, baseType: !7, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1732, file: !19, line: 1005, baseType: !230, size: 32, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1732, file: !19, line: 1006, baseType: !1742, size: 32, offset: 160)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !175, line: 156, baseType: !7)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1732, file: !19, line: 1007, baseType: !644, size: 64, offset: 192)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1732, file: !19, line: 1008, baseType: !640, size: 256, offset: 256)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1732, file: !19, line: 1009, baseType: !540, size: 64, offset: 512)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1732, file: !19, line: 1010, baseType: !7, size: 32, offset: 576)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1732, file: !19, line: 1011, baseType: !1748, size: 256, offset: 640)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !19, line: 948, size: 256, elements: !1749)
!1749 = !{!1750, !1771, !1793, !1794, !1795, !1796}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1748, file: !19, line: 949, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1752, line: 34, baseType: !1753)
!1752 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1752, line: 25, size: 64, elements: !1754)
!1754 = !{!1755}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1753, file: !1752, line: 26, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1757, line: 27, baseType: !1758)
!1757 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1757, line: 13, size: 64, elements: !1759)
!1759 = !{!1760, !1770}
!1760 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !1757, line: 14, baseType: !1761, size: 32)
!1761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1758, file: !1757, line: 14, size: 32, elements: !1762)
!1762 = !{!1763, !1764}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1761, file: !1757, line: 15, baseType: !250, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, scope: !1761, file: !1757, line: 16, baseType: !1765, size: 32)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1761, file: !1757, line: 16, size: 32, elements: !1766)
!1766 = !{!1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1765, file: !1757, line: 18, baseType: !258, size: 8)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1765, file: !1757, line: 19, baseType: !1769, size: 24, offset: 8)
!1769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 24, elements: !300)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1758, file: !1757, line: 26, baseType: !242, size: 32, offset: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1748, file: !19, line: 950, baseType: !1772, size: 64, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !35, line: 59, size: 768, elements: !1774)
!1774 = !{!1775, !1776, !1777, !1778, !1780, !1781, !1782, !1783}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1773, file: !35, line: 61, baseType: !1421, size: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1773, file: !35, line: 62, baseType: !7, size: 32, offset: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1773, file: !35, line: 63, baseType: !230, size: 32, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1773, file: !35, line: 65, baseType: !1779, size: 256, offset: 128)
!1779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1010, size: 256, elements: !870)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1773, file: !35, line: 66, baseType: !1010, size: 64, offset: 384)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1773, file: !35, line: 68, baseType: !1394, size: 192, offset: 448)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1773, file: !35, line: 69, baseType: !860, size: 128, align: 64, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1773, file: !35, line: 70, baseType: !1784, offset: 768)
!1784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1785, elements: !1791)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !35, line: 54, size: 128, elements: !1786)
!1786 = !{!1787, !1788}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1785, file: !35, line: 55, baseType: !114, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1785, file: !35, line: 56, baseType: !1789, size: 64, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !35, line: 56, flags: DIFlagFwdDecl)
!1791 = !{!1792}
!1792 = !DISubrange(count: -1)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1748, file: !19, line: 951, baseType: !34, size: 32, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1748, file: !19, line: 952, baseType: !385, size: 32, offset: 160)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1748, file: !19, line: 952, baseType: !385, size: 32, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1748, file: !19, line: 953, baseType: !114, size: 32, offset: 224)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1732, file: !19, line: 1012, baseType: !1798, size: 64, offset: 896)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1800)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1801, line: 110, size: 1472, elements: !1802)
!1801 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1819, !1820, !1821, !1822, !1823, !1824, !1932, !1933, !1934, !1935, !1936, !1967, !1970, !1974, !1982}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1800, file: !1801, line: 111, baseType: !644, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1800, file: !1801, line: 112, baseType: !385, size: 32, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1800, file: !1801, line: 113, baseType: !394, size: 32, offset: 96)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1800, file: !1801, line: 114, baseType: !385, size: 32, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1800, file: !1801, line: 115, baseType: !394, size: 32, offset: 160)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1800, file: !1801, line: 116, baseType: !385, size: 32, offset: 192)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1800, file: !1801, line: 117, baseType: !394, size: 32, offset: 224)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1800, file: !1801, line: 118, baseType: !385, size: 32, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1800, file: !1801, line: 119, baseType: !394, size: 32, offset: 288)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1800, file: !1801, line: 120, baseType: !7, size: 32, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1800, file: !1801, line: 121, baseType: !1814, size: 64, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1815, line: 24, baseType: !1816)
!1815 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1815, line: 24, size: 64, elements: !1817)
!1817 = !{!1818}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1816, file: !1815, line: 24, baseType: !452, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1800, file: !1801, line: 122, baseType: !1814, size: 64, offset: 448)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1800, file: !1801, line: 123, baseType: !1814, size: 64, offset: 512)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1800, file: !1801, line: 124, baseType: !1814, size: 64, offset: 576)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1800, file: !1801, line: 125, baseType: !1814, size: 64, offset: 640)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1800, file: !1801, line: 127, baseType: !212, size: 8, offset: 704)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1800, file: !1801, line: 129, baseType: !1825, size: 64, offset: 768)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1827, line: 195, size: 1728, elements: !1828)
!1827 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1828 = !{!1829, !1830, !1833, !1838, !1839, !1842, !1843, !1848, !1849, !1850, !1851, !1854, !1855, !1856, !1857, !1858, !1896, !1917}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1826, file: !1827, line: 196, baseType: !1421, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1826, file: !1827, line: 197, baseType: !1831, size: 32, offset: 32)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1827, line: 28, baseType: !1832)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !175, line: 104, baseType: !636)
!1833 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !1827, line: 198, baseType: !1834, size: 192, offset: 64)
!1834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1826, file: !1827, line: 198, size: 192, elements: !1835)
!1835 = !{!1836, !1837}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1834, file: !1827, line: 199, baseType: !182, size: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1834, file: !1827, line: 200, baseType: !752, size: 192, align: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1826, file: !1827, line: 205, baseType: !1301, size: 320, offset: 256)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1826, file: !1827, line: 206, baseType: !1840, size: 64, offset: 576)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1827, line: 206, flags: DIFlagFwdDecl)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1826, file: !1827, line: 207, baseType: !176, size: 64, offset: 640)
!1843 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !1827, line: 208, baseType: !1844, size: 64, offset: 704)
!1844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1826, file: !1827, line: 208, size: 64, elements: !1845)
!1845 = !{!1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1844, file: !1827, line: 209, baseType: !1142, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1844, file: !1827, line: 210, baseType: !1142, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1826, file: !1827, line: 212, baseType: !1142, size: 64, offset: 768)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1826, file: !1827, line: 213, baseType: !385, size: 32, offset: 832)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1826, file: !1827, line: 214, baseType: !394, size: 32, offset: 864)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1826, file: !1827, line: 215, baseType: !1852, size: 32, offset: 896)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1827, line: 31, baseType: !1853)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !175, line: 110, baseType: !448)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1826, file: !1827, line: 216, baseType: !269, size: 16, offset: 928)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1826, file: !1827, line: 217, baseType: !269, size: 16, offset: 944)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1826, file: !1827, line: 221, baseType: !778, size: 16, offset: 960)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1826, file: !1827, line: 228, baseType: !349, size: 64, offset: 1024)
!1858 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !1827, line: 245, baseType: !1859, size: 320, offset: 1088)
!1859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1826, file: !1827, line: 245, size: 320, elements: !1860)
!1860 = !{!1861, !1888}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1859, file: !1827, line: 246, baseType: !1862, size: 320)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1827, line: 114, size: 320, elements: !1863)
!1863 = !{!1864, !1865, !1877, !1880, !1887}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1862, file: !1827, line: 116, baseType: !349, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !1862, file: !1827, line: 117, baseType: !1866, size: 64, offset: 64)
!1866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1862, file: !1827, line: 117, size: 64, elements: !1867)
!1867 = !{!1868, !1876}
!1868 = !DIDerivedType(tag: DW_TAG_member, scope: !1866, file: !1827, line: 118, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1866, file: !1827, line: 118, size: 64, elements: !1870)
!1870 = !{!1871, !1872}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1869, file: !1827, line: 120, baseType: !267, size: 16)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1869, file: !1827, line: 121, baseType: !1873, size: 48, offset: 16)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 48, elements: !1874)
!1874 = !{!1875}
!1875 = !DISubrange(count: 6)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1866, file: !1827, line: 127, baseType: !349, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1862, file: !1827, line: 129, baseType: !1878, size: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1827, line: 102, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1862, file: !1827, line: 130, baseType: !1881, size: 64, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1827, line: 108, size: 192, elements: !1883)
!1883 = !{!1884, !1885, !1886}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1882, file: !1827, line: 109, baseType: !860, size: 128, align: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1882, file: !1827, line: 110, baseType: !1421, size: 32, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1882, file: !1827, line: 111, baseType: !720, size: 8, offset: 160)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1862, file: !1827, line: 131, baseType: !218, size: 64, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, scope: !1859, file: !1827, line: 247, baseType: !1889, size: 320)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1827, line: 247, size: 320, elements: !1890)
!1890 = !{!1891, !1892, !1893, !1894, !1895}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1889, file: !1827, line: 248, baseType: !349, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1889, file: !1827, line: 249, baseType: !349, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1889, file: !1827, line: 250, baseType: !1878, size: 64, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1889, file: !1827, line: 251, baseType: !1881, size: 64, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1889, file: !1827, line: 252, baseType: !299, size: 64, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !1827, line: 260, baseType: !1897, size: 256, offset: 1408)
!1897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1826, file: !1827, line: 260, size: 256, elements: !1898)
!1898 = !{!1899, !1905}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1897, file: !1827, line: 261, baseType: !1900, size: 256)
!1900 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1827, line: 134, size: 256, elements: !1901)
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1900, file: !1827, line: 135, baseType: !176, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1900, file: !1827, line: 136, baseType: !1904, size: 256)
!1904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 256, elements: !870)
!1905 = !DIDerivedType(tag: DW_TAG_member, scope: !1897, file: !1827, line: 262, baseType: !1906, size: 256)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1897, file: !1827, line: 262, size: 256, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1906, file: !1827, line: 264, baseType: !182, size: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1906, file: !1827, line: 265, baseType: !1910, size: 128, offset: 128)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1911, line: 22, size: 128, elements: !1912)
!1911 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1912 = !{!1913, !1916}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1910, file: !1911, line: 23, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1911, line: 23, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1910, file: !1911, line: 24, baseType: !349, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1826, file: !1827, line: 280, baseType: !1918, size: 64, offset: 1664)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1827, line: 176, size: 192, elements: !1920)
!1920 = !{!1921, !1930, !1931}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1919, file: !1827, line: 177, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1827, line: 171, baseType: !1923)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!114, !1825, !1926, !1928, !1825}
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1879)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1900)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1919, file: !1827, line: 178, baseType: !1825, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1919, file: !1827, line: 179, baseType: !1878, size: 64, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1800, file: !1801, line: 130, baseType: !1825, size: 64, offset: 832)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1800, file: !1801, line: 131, baseType: !1825, size: 64, offset: 896)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1800, file: !1801, line: 132, baseType: !1825, size: 64, offset: 960)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1800, file: !1801, line: 135, baseType: !176, size: 64, offset: 1024)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1800, file: !1801, line: 137, baseType: !1937, size: 64, offset: 1088)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1939, line: 14, size: 1088, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1940 = !{!1941, !1942, !1951, !1952, !1953, !1954, !1955, !1956}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1938, file: !1939, line: 15, baseType: !1421, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1938, file: !1939, line: 17, baseType: !1943, size: 320, offset: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1944, line: 22, size: 320, elements: !1945)
!1944 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1945 = !{!1946, !1947, !1948, !1949}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1943, file: !1944, line: 23, baseType: !598, size: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1943, file: !1944, line: 24, baseType: !650, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1943, file: !1944, line: 26, baseType: !182, size: 128, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1943, file: !1944, line: 28, baseType: !1950, size: 64, offset: 256)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1938, file: !1939, line: 19, baseType: !349, size: 64, offset: 384)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1938, file: !1939, line: 20, baseType: !644, size: 64, offset: 448)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1938, file: !1939, line: 23, baseType: !886, size: 128, offset: 512)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1938, file: !1939, line: 24, baseType: !385, size: 32, offset: 640)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1938, file: !1939, line: 29, baseType: !644, size: 64, offset: 704)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1938, file: !1939, line: 36, baseType: !1957, size: 320, offset: 768)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1958, line: 15, size: 320, elements: !1959)
!1958 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1959 = !{!1960, !1961, !1962, !1963, !1964, !1965, !1966}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1957, file: !1958, line: 16, baseType: !598, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1957, file: !1958, line: 18, baseType: !114, size: 32, offset: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1957, file: !1958, line: 19, baseType: !114, size: 32, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1957, file: !1958, line: 20, baseType: !114, size: 32, offset: 96)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1957, file: !1958, line: 21, baseType: !114, size: 32, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1957, file: !1958, line: 22, baseType: !349, size: 64, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1957, file: !1958, line: 23, baseType: !349, size: 64, offset: 256)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1800, file: !1801, line: 138, baseType: !1968, size: 64, offset: 1152)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !43, line: 901, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1800, file: !1801, line: 139, baseType: !1971, size: 64, offset: 1216)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1973, line: 16, flags: DIFlagFwdDecl)
!1973 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1800, file: !1801, line: 140, baseType: !1975, size: 64, offset: 1280)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1801, line: 25, size: 64, elements: !1977)
!1977 = !{!1978, !1979, !1980}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1976, file: !1801, line: 26, baseType: !250, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1976, file: !1801, line: 27, baseType: !114, size: 32, offset: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1976, file: !1801, line: 28, baseType: !1981, offset: 64)
!1981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, elements: !1791)
!1982 = !DIDerivedType(tag: DW_TAG_member, scope: !1800, file: !1801, line: 142, baseType: !1983, size: 128, offset: 1344)
!1983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1800, file: !1801, line: 142, size: 128, elements: !1984)
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1983, file: !1801, line: 143, baseType: !114, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1983, file: !1801, line: 144, baseType: !860, size: 128, align: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1732, file: !19, line: 1013, baseType: !1988, size: 256, offset: 960)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !19, line: 970, size: 256, elements: !1989)
!1989 = !{!1990, !1991, !1992, !1993, !1994, !1995}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1988, file: !19, line: 971, baseType: !349, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1988, file: !19, line: 972, baseType: !7, size: 32, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1988, file: !19, line: 973, baseType: !7, size: 32, offset: 96)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1988, file: !19, line: 974, baseType: !7, size: 32, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1988, file: !19, line: 975, baseType: !7, size: 32, offset: 160)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1988, file: !19, line: 976, baseType: !540, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1732, file: !19, line: 1014, baseType: !1213, size: 128, offset: 1216)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1732, file: !19, line: 1015, baseType: !379, size: 64, offset: 1344)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1732, file: !19, line: 1016, baseType: !1999, size: 64, offset: 1408)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2001)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !19, line: 1914, size: 2112, elements: !2002)
!2002 = !{!2003, !2004, !2008, !2013, !2017, !2046, !2047, !2053, !2066, !2074, !2078, !2079, !2370, !2371, !2375, !2380, !2381, !2385, !2389, !2395, !2396, !2400, !2401, !2407, !2411, !2415, !2421, !2425, !2429, !2433, !2437, !2438, !2444}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2001, file: !19, line: 1915, baseType: !569, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2001, file: !19, line: 1916, baseType: !2005, size: 64, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!540, !1731, !540, !114}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2001, file: !19, line: 1917, baseType: !2009, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!331, !1731, !299, !346, !2012}
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2001, file: !19, line: 1918, baseType: !2014, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!331, !1731, !218, !346, !2012}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2001, file: !19, line: 1919, baseType: !2018, size: 64, offset: 256)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!331, !2021, !2043}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !19, line: 373, size: 384, elements: !2023)
!2023 = !{!2024, !2025, !2026, !2030, !2031, !2032, !2033}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2022, file: !19, line: 374, baseType: !1731, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2022, file: !19, line: 375, baseType: !540, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2022, file: !19, line: 376, baseType: !2027, size: 64, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !2021, !335}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2022, file: !19, line: 377, baseType: !176, size: 64, offset: 192)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2022, file: !19, line: 378, baseType: !114, size: 32, offset: 256)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2022, file: !19, line: 379, baseType: !267, size: 16, offset: 288)
!2033 = !DIDerivedType(tag: DW_TAG_member, scope: !2022, file: !19, line: 380, baseType: !2034, size: 64, offset: 320)
!2034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2022, file: !19, line: 380, size: 64, elements: !2035)
!2035 = !{!2036, !2039}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2034, file: !19, line: 386, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !19, line: 386, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2034, file: !19, line: 395, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!331, !176}
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2045, line: 17, flags: DIFlagFwdDecl)
!2045 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2001, file: !19, line: 1920, baseType: !2018, size: 64, offset: 320)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2001, file: !19, line: 1921, baseType: !2048, size: 64, offset: 384)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!114, !2021, !2051, !7}
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !19, line: 53, flags: DIFlagFwdDecl)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2001, file: !19, line: 1923, baseType: !2054, size: 64, offset: 448)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!114, !1731, !2057}
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !19, line: 1858, size: 128, elements: !2059)
!2059 = !{!2060, !2065}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2058, file: !19, line: 1859, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !19, line: 1855, baseType: !2062)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!720, !2057, !218, !114, !540, !452, !7}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2058, file: !19, line: 1860, baseType: !540, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2001, file: !19, line: 1924, baseType: !2067, size: 64, offset: 512)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!2070, !1731, !2072}
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2071, line: 59, baseType: !7)
!2071 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !555, line: 31, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2001, file: !19, line: 1925, baseType: !2075, size: 64, offset: 576)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!335, !1731, !7, !349}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2001, file: !19, line: 1926, baseType: !2075, size: 64, offset: 640)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2001, file: !19, line: 1927, baseType: !2080, size: 64, offset: 704)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!114, !1731, !2083}
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !43, line: 625, size: 1344, elements: !2085)
!2085 = !{!2086, !2095, !2096, !2104, !2111, !2112, !2117, !2118, !2123, !2124, !2127, !2363, !2364, !2365, !2366, !2367, !2368}
!2086 = !DIDerivedType(tag: DW_TAG_member, scope: !2084, file: !43, line: 628, baseType: !2087, size: 128)
!2087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2084, file: !43, line: 628, size: 128, elements: !2088)
!2088 = !{!2089, !2094}
!2089 = !DIDerivedType(tag: DW_TAG_member, scope: !2087, file: !43, line: 629, baseType: !2090, size: 128)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2087, file: !43, line: 629, size: 128, elements: !2091)
!2091 = !{!2092, !2093}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2090, file: !43, line: 631, baseType: !349, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2090, file: !43, line: 632, baseType: !349, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2087, file: !43, line: 635, baseType: !860, size: 128, align: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2084, file: !43, line: 639, baseType: !1704, size: 64, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2084, file: !43, line: 640, baseType: !2097, size: 64, offset: 192)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2098, line: 297, baseType: !2099)
!2098 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2098, line: 297, size: 64, elements: !2100)
!2100 = !{!2101}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2099, file: !2098, line: 297, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2103, line: 19, baseType: !349)
!2103 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2104 = !DIDerivedType(tag: DW_TAG_member, scope: !2084, file: !43, line: 646, baseType: !2105, size: 64, offset: 256)
!2105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2084, file: !43, line: 646, size: 64, elements: !2106)
!2106 = !{!2107, !2110}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2105, file: !43, line: 647, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2109)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !43, line: 542, baseType: !349)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2105, file: !43, line: 648, baseType: !2109, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2084, file: !43, line: 666, baseType: !114, size: 32, offset: 320)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2084, file: !43, line: 667, baseType: !2113, size: 64, offset: 384)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !43, line: 579, size: 320, elements: !2115)
!2115 = !{!2116}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2114, file: !43, line: 580, baseType: !1301, size: 320)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2084, file: !43, line: 670, baseType: !720, size: 8, offset: 448)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2084, file: !43, line: 681, baseType: !2119, size: 256, offset: 512)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2084, file: !43, line: 678, size: 256, elements: !2120)
!2120 = !{!2121, !2122}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2119, file: !43, line: 679, baseType: !752, size: 192, align: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2119, file: !43, line: 680, baseType: !349, size: 64, offset: 192)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2084, file: !43, line: 689, baseType: !182, size: 128, offset: 768)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2084, file: !43, line: 691, baseType: !2125, size: 64, offset: 896)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !43, line: 691, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2084, file: !43, line: 694, baseType: !2128, size: 64, offset: 960)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2130)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2131, line: 563, size: 1024, elements: !2132)
!2131 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2132 = !{!2133, !2137, !2138, !2142, !2146, !2150, !2327, !2331, !2335, !2339, !2340, !2341, !2345, !2349, !2355, !2359}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2130, file: !2131, line: 564, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null, !2083}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2130, file: !2131, line: 569, baseType: !2134, size: 64, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2130, file: !2131, line: 571, baseType: !2139, size: 64, offset: 128)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!114, !2083, !349}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2130, file: !2131, line: 572, baseType: !2143, size: 64, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!114, !2083}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2130, file: !2131, line: 578, baseType: !2147, size: 64, offset: 256)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!114, !2083, !349, !349, !349}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2130, file: !2131, line: 580, baseType: !2151, size: 64, offset: 320)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!2154, !2155}
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !43, line: 1184, baseType: !7)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2131, line: 512, size: 896, elements: !2157)
!2157 = !{!2158, !2166, !2167, !2174, !2181, !2191, !2320, !2321, !2323, !2325}
!2158 = !DIDerivedType(tag: DW_TAG_member, scope: !2156, file: !2131, line: 513, baseType: !2159, size: 320)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2156, file: !2131, line: 513, size: 320, elements: !2160)
!2160 = !{!2161, !2162, !2163, !2164, !2165}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2159, file: !2131, line: 514, baseType: !2083, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2159, file: !2131, line: 515, baseType: !174, size: 32, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2159, file: !2131, line: 516, baseType: !349, size: 64, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2159, file: !2131, line: 517, baseType: !349, size: 64, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2159, file: !2131, line: 518, baseType: !349, size: 64, offset: 256)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2156, file: !2131, line: 520, baseType: !42, size: 32, offset: 320)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2156, file: !2131, line: 522, baseType: !2168, size: 64, offset: 384)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2103, line: 22, baseType: !2170)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2103, line: 22, size: 64, elements: !2171)
!2171 = !{!2172}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2170, file: !2103, line: 22, baseType: !2173, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2103, line: 15, baseType: !349)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2156, file: !2131, line: 524, baseType: !2175, size: 64, offset: 448)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2098, line: 372, baseType: !2177)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2098, line: 372, size: 64, elements: !2178)
!2178 = !{!2179}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2177, file: !2098, line: 372, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2103, line: 16, baseType: !349)
!2181 = !DIDerivedType(tag: DW_TAG_member, scope: !2156, file: !2131, line: 527, baseType: !2182, size: 64, offset: 512)
!2182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2156, file: !2131, line: 527, size: 64, elements: !2183)
!2183 = !{!2184, !2190}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2182, file: !2131, line: 528, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2103, line: 21, baseType: !2186)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2103, line: 21, size: 64, elements: !2187)
!2187 = !{!2188}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2186, file: !2103, line: 21, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2103, line: 14, baseType: !349)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2182, file: !2131, line: 529, baseType: !2169, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2156, file: !2131, line: 534, baseType: !2192, size: 64, offset: 576)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !43, line: 74, size: 512, align: 128, elements: !2194)
!2194 = !{!2195, !2196, !2314, !2319}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2193, file: !43, line: 75, baseType: !349, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, scope: !2193, file: !43, line: 83, baseType: !2197, size: 320, offset: 64)
!2197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2193, file: !43, line: 83, size: 320, elements: !2198)
!2198 = !{!2199, !2220, !2234, !2238, !2313}
!2199 = !DIDerivedType(tag: DW_TAG_member, scope: !2197, file: !43, line: 84, baseType: !2200, size: 320)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2197, file: !43, line: 84, size: 320, elements: !2201)
!2201 = !{!2202, !2213, !2214, !2219}
!2202 = !DIDerivedType(tag: DW_TAG_member, scope: !2200, file: !43, line: 90, baseType: !2203, size: 128)
!2203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2200, file: !43, line: 90, size: 128, elements: !2204)
!2204 = !{!2205, !2206, !2211, !2212}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2203, file: !43, line: 91, baseType: !182, size: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, scope: !2203, file: !43, line: 94, baseType: !2207, size: 128)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2203, file: !43, line: 94, size: 128, elements: !2208)
!2208 = !{!2209, !2210}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2207, file: !43, line: 96, baseType: !176, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2207, file: !43, line: 98, baseType: !7, size: 32, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2203, file: !43, line: 102, baseType: !182, size: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2203, file: !43, line: 103, baseType: !182, size: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2200, file: !43, line: 106, baseType: !375, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2200, file: !43, line: 107, baseType: !2215, size: 64, offset: 192)
!2215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2200, file: !43, line: 107, size: 64, elements: !2216)
!2216 = !{!2217, !2218}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2215, file: !43, line: 108, baseType: !349, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2215, file: !43, line: 109, baseType: !349, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2200, file: !43, line: 117, baseType: !349, size: 64, offset: 256)
!2220 = !DIDerivedType(tag: DW_TAG_member, scope: !2197, file: !43, line: 119, baseType: !2221, size: 320)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2197, file: !43, line: 119, size: 320, elements: !2222)
!2222 = !{!2223, !2224, !2227, !2228, !2229}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2221, file: !43, line: 124, baseType: !349, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2221, file: !43, line: 125, baseType: !2225, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !43, line: 125, flags: DIFlagFwdDecl)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2221, file: !43, line: 126, baseType: !349, size: 64, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2221, file: !43, line: 127, baseType: !349, size: 64, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_member, scope: !2221, file: !43, line: 128, baseType: !2230, size: 64, offset: 256)
!2230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2221, file: !43, line: 128, size: 64, elements: !2231)
!2231 = !{!2232, !2233}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2230, file: !43, line: 133, baseType: !349, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2230, file: !43, line: 138, baseType: !644, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2197, file: !43, line: 141, baseType: !2235, size: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2197, file: !43, line: 141, size: 64, elements: !2236)
!2236 = !{!2237}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2235, file: !43, line: 142, baseType: !349, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, scope: !2197, file: !43, line: 144, baseType: !2239, size: 128)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2197, file: !43, line: 144, size: 128, elements: !2240)
!2240 = !{!2241, !2312}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2239, file: !43, line: 146, baseType: !2242, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !59, line: 126, size: 1216, elements: !2244)
!2244 = !{!2245, !2255, !2276, !2277, !2278, !2279, !2280, !2294, !2295, !2296}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2243, file: !59, line: 127, baseType: !2246, size: 384)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !59, line: 21, size: 384, elements: !2247)
!2247 = !{!2248, !2249, !2251, !2252, !2253, !2254}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2246, file: !59, line: 22, baseType: !349, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2246, file: !59, line: 23, baseType: !2250, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2246, file: !59, line: 24, baseType: !2250, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2246, file: !59, line: 25, baseType: !349, size: 64, offset: 192)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2246, file: !59, line: 26, baseType: !349, size: 64, offset: 256)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2246, file: !59, line: 27, baseType: !349, size: 64, offset: 320)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2243, file: !59, line: 128, baseType: !2256, size: 128, offset: 384)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2257, line: 105, size: 128, elements: !2258)
!2257 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2258 = !{!2259, !2260}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2256, file: !2257, line: 110, baseType: !349, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2256, file: !2257, line: 118, baseType: !2261, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2257, line: 95, size: 448, elements: !2263)
!2263 = !{!2264, !2265, !2271, !2272, !2273, !2274, !2275}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2262, file: !2257, line: 96, baseType: !644, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2262, file: !2257, line: 97, baseType: !2266, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2257, line: 60, baseType: !2268)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{null, !2270}
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2262, file: !2257, line: 98, baseType: !2266, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2262, file: !2257, line: 99, baseType: !720, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2262, file: !2257, line: 100, baseType: !720, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2262, file: !2257, line: 101, baseType: !860, size: 128, align: 64, offset: 256)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2262, file: !2257, line: 102, baseType: !2270, size: 64, offset: 384)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2243, file: !59, line: 129, baseType: !589, size: 256, offset: 512)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2243, file: !59, line: 130, baseType: !58, size: 32, offset: 768)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2243, file: !59, line: 131, baseType: !7, size: 32, offset: 800)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2243, file: !59, line: 132, baseType: !349, size: 64, offset: 832)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2243, file: !59, line: 133, baseType: !2281, size: 64, offset: 896)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2283)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !59, line: 77, size: 192, elements: !2284)
!2284 = !{!2285, !2289, !2290}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2283, file: !59, line: 83, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{null, !2192}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2283, file: !59, line: 89, baseType: !2151, size: 64, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2283, file: !59, line: 100, baseType: !2291, size: 64, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!114, !2242, !349, !349, !114}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2243, file: !59, line: 134, baseType: !176, size: 64, offset: 960)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2243, file: !59, line: 135, baseType: !114, size: 32, offset: 1024)
!2296 = !DIDerivedType(tag: DW_TAG_member, scope: !2243, file: !59, line: 136, baseType: !2297, size: 128, offset: 1088)
!2297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2243, file: !59, line: 136, size: 128, elements: !2298)
!2298 = !{!2299, !2305}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2297, file: !59, line: 137, baseType: !2300, size: 128)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2301, line: 6, size: 128, elements: !2302)
!2301 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2300, file: !2301, line: 7, baseType: !452, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2300, file: !2301, line: 8, baseType: !452, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, scope: !2297, file: !59, line: 138, baseType: !2306)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2297, file: !59, line: 138, elements: !2307)
!2307 = !{!2308, !2310}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2306, file: !59, line: 138, baseType: !2309)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2306, file: !59, line: 138, elements: !929)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2306, file: !59, line: 138, baseType: !2311)
!2311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2300, elements: !1791)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2239, file: !43, line: 147, baseType: !176, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2197, file: !43, line: 161, baseType: !860, size: 128, align: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, scope: !2193, file: !43, line: 164, baseType: !2315, size: 32, offset: 384)
!2315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2193, file: !43, line: 164, size: 32, elements: !2316)
!2316 = !{!2317, !2318}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2315, file: !43, line: 169, baseType: !250, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2315, file: !43, line: 177, baseType: !7, size: 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2193, file: !43, line: 181, baseType: !250, size: 32, offset: 416)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2156, file: !2131, line: 535, baseType: !2192, size: 64, offset: 640)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2156, file: !2131, line: 541, baseType: !2322, size: 64, offset: 704)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2156, file: !2131, line: 545, baseType: !2324, size: 64, offset: 768)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2156, file: !2131, line: 549, baseType: !2326, size: 64, offset: 832)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2098, line: 520, baseType: !2192)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2130, file: !2131, line: 581, baseType: !2328, size: 64, offset: 384)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!2154, !2155, !7}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2130, file: !2131, line: 582, baseType: !2332, size: 64, offset: 448)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!2154, !2155, !349, !349}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2130, file: !2131, line: 584, baseType: !2336, size: 64, offset: 512)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!349, !2083}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2130, file: !2131, line: 588, baseType: !2151, size: 64, offset: 576)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2130, file: !2131, line: 591, baseType: !2151, size: 64, offset: 640)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2130, file: !2131, line: 597, baseType: !2342, size: 64, offset: 704)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!114, !2083, !349, !176, !114, !114}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2130, file: !2131, line: 603, baseType: !2346, size: 64, offset: 768)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!218, !2083}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2130, file: !2131, line: 613, baseType: !2350, size: 64, offset: 832)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!114, !2083, !2353}
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !43, line: 717, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2130, file: !2131, line: 625, baseType: !2356, size: 64, offset: 896)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!2353, !2083, !349}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2130, file: !2131, line: 633, baseType: !2360, size: 64, offset: 960)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!2192, !2083, !349}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2084, file: !43, line: 697, baseType: !349, size: 64, offset: 1024)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2084, file: !43, line: 699, baseType: !1731, size: 64, offset: 1088)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2084, file: !43, line: 700, baseType: !176, size: 64, offset: 1152)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2084, file: !43, line: 711, baseType: !644, size: 64, offset: 1216)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2084, file: !43, line: 717, baseType: !2353, size: 64, offset: 1280)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2084, file: !43, line: 722, baseType: !2369, offset: 1344)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !43, line: 570, elements: !929)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2001, file: !19, line: 1928, baseType: !349, size: 64, offset: 768)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2001, file: !19, line: 1929, baseType: !2372, size: 64, offset: 832)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!114, !379, !1731}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2001, file: !19, line: 1930, baseType: !2376, size: 64, offset: 896)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!114, !1731, !2379}
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !19, line: 1061, baseType: !176)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2001, file: !19, line: 1931, baseType: !2372, size: 64, offset: 960)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2001, file: !19, line: 1932, baseType: !2382, size: 64, offset: 1024)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!114, !1731, !540, !540, !114}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2001, file: !19, line: 1933, baseType: !2386, size: 64, offset: 1088)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!114, !114, !1731, !114}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2001, file: !19, line: 1934, baseType: !2390, size: 64, offset: 1152)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!114, !1731, !114, !2393}
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !19, line: 1063, flags: DIFlagFwdDecl)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2001, file: !19, line: 1935, baseType: !1728, size: 64, offset: 1216)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2001, file: !19, line: 1936, baseType: !2397, size: 64, offset: 1280)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!114, !114}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2001, file: !19, line: 1937, baseType: !2390, size: 64, offset: 1344)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2001, file: !19, line: 1938, baseType: !2402, size: 64, offset: 1408)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!331, !2405, !1731, !2012, !346, !7}
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1084, line: 59, flags: DIFlagFwdDecl)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2001, file: !19, line: 1939, baseType: !2408, size: 64, offset: 1472)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!331, !1731, !2012, !2405, !346, !7}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2001, file: !19, line: 1940, baseType: !2412, size: 64, offset: 1536)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{null, !1731}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2001, file: !19, line: 1941, baseType: !2416, size: 64, offset: 1600)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!114, !1731, !114, !2419, !2420}
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2001, file: !19, line: 1942, baseType: !2422, size: 64, offset: 1664)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!335, !1731, !114, !540, !540}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2001, file: !19, line: 1944, baseType: !2426, size: 64, offset: 1728)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{null, !1082, !1731}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2001, file: !19, line: 1948, baseType: !2430, size: 64, offset: 1792)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!331, !1731, !540, !1731, !540, !346, !7}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2001, file: !19, line: 1950, baseType: !2434, size: 64, offset: 1856)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!540, !1731, !540, !1731, !540, !540, !7}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2001, file: !19, line: 1953, baseType: !2382, size: 64, offset: 1920)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2001, file: !19, line: 1954, baseType: !2439, size: 64, offset: 1984)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!114, !2442, !7}
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !19, line: 1911, flags: DIFlagFwdDecl)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2001, file: !19, line: 1955, baseType: !2445, size: 64, offset: 2048)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!114, !2442, !2051, !7}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1732, file: !19, line: 1018, baseType: !452, size: 64, offset: 1472)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1732, file: !19, line: 1020, baseType: !176, size: 64, offset: 1536)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1732, file: !19, line: 1023, baseType: !176, size: 64, offset: 1600)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1732, file: !19, line: 1027, baseType: !2452, size: 64, offset: 1664)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1732, file: !19, line: 1029, baseType: !375, size: 64, offset: 1728)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1732, file: !19, line: 1030, baseType: !2455, size: 32, offset: 1792)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2456, line: 8, baseType: !448)
!2456 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1732, file: !19, line: 1031, baseType: !2455, size: 32, offset: 1824)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1708, file: !43, line: 756, baseType: !349, size: 64, offset: 704)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1708, file: !43, line: 757, baseType: !349, size: 64, offset: 768)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1708, file: !43, line: 760, baseType: !349, size: 64, offset: 832)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1708, file: !43, line: 761, baseType: !349, size: 64, offset: 896)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1708, file: !43, line: 763, baseType: !349, size: 64, offset: 960)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1708, file: !43, line: 764, baseType: !2464, size: 64, offset: 1024)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2098, line: 299, baseType: !2466)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2098, line: 299, size: 64, elements: !2467)
!2467 = !{!2468}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2466, file: !2098, line: 299, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2103, line: 18, baseType: !349)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1708, file: !43, line: 773, baseType: !250, size: 32, offset: 1088)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1708, file: !43, line: 785, baseType: !250, size: 32, offset: 1120)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1708, file: !43, line: 795, baseType: !2473, size: 64, offset: 1152)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !43, line: 726, size: 128, elements: !2475)
!2475 = !{!2476, !2477}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2474, file: !43, line: 727, baseType: !452, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2474, file: !43, line: 728, baseType: !114, size: 32, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1708, file: !43, line: 801, baseType: !349, size: 64, offset: 1216)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1708, file: !43, line: 804, baseType: !644, size: 64, offset: 1280)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1708, file: !43, line: 806, baseType: !114, size: 32, offset: 1344)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1708, file: !43, line: 808, baseType: !230, size: 32, offset: 1376)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1708, file: !43, line: 823, baseType: !1301, size: 320, offset: 1408)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1708, file: !43, line: 825, baseType: !182, size: 128, offset: 1728)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1708, file: !43, line: 845, baseType: !114, size: 32, offset: 1856)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1708, file: !43, line: 849, baseType: !349, size: 64, offset: 1920)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1708, file: !43, line: 850, baseType: !349, size: 64, offset: 1984)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1708, file: !43, line: 852, baseType: !349, size: 64, offset: 2048)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1708, file: !43, line: 853, baseType: !349, size: 64, offset: 2112)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1708, file: !43, line: 854, baseType: !646, size: 64, offset: 2176)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1708, file: !43, line: 855, baseType: !349, size: 64, offset: 2240)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1708, file: !43, line: 856, baseType: !349, size: 64, offset: 2304)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1708, file: !43, line: 857, baseType: !349, size: 64, offset: 2368)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1708, file: !43, line: 858, baseType: !349, size: 64, offset: 2432)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1708, file: !43, line: 865, baseType: !425, size: 32, offset: 2496)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1708, file: !43, line: 867, baseType: !230, size: 32, offset: 2528)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1708, file: !43, line: 869, baseType: !349, size: 64, offset: 2560)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1708, file: !43, line: 869, baseType: !349, size: 64, offset: 2624)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1708, file: !43, line: 869, baseType: !349, size: 64, offset: 2688)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1708, file: !43, line: 869, baseType: !349, size: 64, offset: 2752)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1708, file: !43, line: 870, baseType: !349, size: 64, offset: 2816)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1708, file: !43, line: 870, baseType: !349, size: 64, offset: 2880)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1708, file: !43, line: 870, baseType: !349, size: 64, offset: 2944)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1708, file: !43, line: 871, baseType: !349, size: 64, offset: 3008)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1708, file: !43, line: 871, baseType: !349, size: 64, offset: 3072)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1708, file: !43, line: 871, baseType: !349, size: 64, offset: 3136)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1708, file: !43, line: 871, baseType: !349, size: 64, offset: 3200)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1708, file: !43, line: 873, baseType: !2508, size: 3328, offset: 3264)
!2508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 3328, elements: !2509)
!2509 = !{!2510}
!2510 = !DISubrange(count: 52)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1708, file: !43, line: 875, baseType: !2512, size: 1280, offset: 6592)
!2512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1943, size: 1280, elements: !870)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1708, file: !43, line: 877, baseType: !2514, size: 64, offset: 7872)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !43, line: 877, flags: DIFlagFwdDecl)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1708, file: !43, line: 880, baseType: !2517, size: 1088, offset: 7936)
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2518, line: 72, baseType: !2519)
!2518 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2518, line: 23, size: 1088, elements: !2520)
!2520 = !{!2521, !2522, !2523, !2524, !2525, !2528, !2529, !2530, !2531, !2558, !2559, !2560}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2519, file: !2518, line: 28, baseType: !452, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2519, file: !2518, line: 38, baseType: !646, size: 64, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2519, file: !2518, line: 40, baseType: !349, size: 64, offset: 128)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2519, file: !2518, line: 43, baseType: !1301, size: 320, offset: 192)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2519, file: !2518, line: 44, baseType: !2526, size: 64, offset: 512)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2518, line: 44, flags: DIFlagFwdDecl)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2519, file: !2518, line: 48, baseType: !349, size: 64, offset: 576)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2519, file: !2518, line: 59, baseType: !640, size: 256, offset: 640)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2519, file: !2518, line: 60, baseType: !176, size: 64, offset: 896)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2519, file: !2518, line: 61, baseType: !2532, size: 64, offset: 960)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2534)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2535, line: 13, size: 1216, elements: !2536)
!2535 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2536 = !{!2537, !2538, !2539, !2540, !2541, !2542, !2543, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2534, file: !2535, line: 14, baseType: !176, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2534, file: !2535, line: 15, baseType: !349, size: 64, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2534, file: !2535, line: 17, baseType: !349, size: 64, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2534, file: !2535, line: 17, baseType: !349, size: 64, offset: 192)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2534, file: !2535, line: 18, baseType: !349, size: 64, offset: 256)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2534, file: !2535, line: 18, baseType: !349, size: 64, offset: 320)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2534, file: !2535, line: 19, baseType: !2544, size: 64, offset: 384)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2534, file: !2535, line: 21, baseType: !335, size: 64, offset: 448)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2534, file: !2535, line: 23, baseType: !335, size: 64, offset: 512)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2534, file: !2535, line: 24, baseType: !335, size: 64, offset: 576)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2534, file: !2535, line: 25, baseType: !335, size: 64, offset: 640)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2534, file: !2535, line: 26, baseType: !335, size: 64, offset: 704)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2534, file: !2535, line: 27, baseType: !335, size: 64, offset: 768)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2534, file: !2535, line: 28, baseType: !335, size: 64, offset: 832)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2534, file: !2535, line: 29, baseType: !335, size: 64, offset: 896)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2534, file: !2535, line: 30, baseType: !335, size: 64, offset: 960)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2534, file: !2535, line: 31, baseType: !335, size: 64, offset: 1024)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2534, file: !2535, line: 32, baseType: !335, size: 64, offset: 1088)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2534, file: !2535, line: 33, baseType: !335, size: 64, offset: 1152)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2519, file: !2518, line: 63, baseType: !250, size: 32, offset: 1024)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2519, file: !2518, line: 69, baseType: !267, size: 16, offset: 1056)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2519, file: !2518, line: 70, baseType: !776, size: 16, offset: 1072)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1708, file: !43, line: 882, baseType: !349, size: 64, offset: 9024)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1708, file: !43, line: 885, baseType: !230, size: 32, offset: 9088)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1708, file: !43, line: 886, baseType: !2564, size: 64, offset: 9152)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !43, line: 732, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1708, file: !43, line: 901, baseType: !1968, size: 64, offset: 9216)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1708, file: !43, line: 904, baseType: !1731, size: 64, offset: 9280)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1708, file: !43, line: 906, baseType: !2569, size: 64, offset: 9344)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !43, line: 906, flags: DIFlagFwdDecl)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1708, file: !43, line: 930, baseType: !250, size: 32, offset: 9408)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1708, file: !43, line: 933, baseType: !250, size: 32, offset: 9440)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1708, file: !43, line: 935, baseType: !2574, size: 64, offset: 9472)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !73, line: 103, size: 64, elements: !2575)
!2575 = !{!2576}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2574, file: !73, line: 104, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !73, line: 101, flags: DIFlagFwdDecl)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1708, file: !43, line: 940, baseType: !644, size: 64, offset: 9536)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1708, file: !43, line: 942, baseType: !900, size: 256, offset: 9600)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1705, file: !43, line: 986, baseType: !2582, offset: 10240)
!2582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, elements: !1791)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1408, file: !1084, line: 882, baseType: !1704, size: 64, offset: 9792)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1408, file: !1084, line: 884, baseType: !114, size: 32, offset: 9856)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1408, file: !1084, line: 885, baseType: !114, size: 32, offset: 9888)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1408, file: !1084, line: 886, baseType: !114, size: 32, offset: 9920)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1408, file: !1084, line: 888, baseType: !114, size: 32, offset: 9952)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1408, file: !1084, line: 890, baseType: !349, size: 64, offset: 9984)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1408, file: !1084, line: 893, baseType: !7, size: 32, offset: 10048)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1408, file: !1084, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1408, file: !1084, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1408, file: !1084, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1408, file: !1084, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1408, file: !1084, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1408, file: !1084, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1408, file: !1084, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1408, file: !1084, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1408, file: !1084, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1408, file: !1084, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1408, file: !1084, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1408, file: !1084, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1408, file: !1084, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1408, file: !1084, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1408, file: !1084, line: 969, baseType: !349, size: 64, offset: 10176)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1408, file: !1084, line: 971, baseType: !2606, size: 448, offset: 10240)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !67, line: 25, size: 448, elements: !2607)
!2607 = !{!2608, !2609, !2614}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2606, file: !67, line: 26, baseType: !349, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2606, file: !67, line: 27, baseType: !2610, size: 64, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!335, !2613}
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, scope: !2606, file: !67, line: 28, baseType: !2615, size: 320, offset: 128)
!2615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2606, file: !67, line: 28, size: 320, elements: !2616)
!2616 = !{!2617, !2627, !2652}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2615, file: !67, line: 37, baseType: !2618, size: 320)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2615, file: !67, line: 30, size: 320, elements: !2619)
!2619 = !{!2620, !2622, !2623, !2624, !2625, !2626}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2618, file: !67, line: 31, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2618, file: !67, line: 32, baseType: !448, size: 32, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2618, file: !67, line: 33, baseType: !448, size: 32, offset: 96)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2618, file: !67, line: 34, baseType: !448, size: 32, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2618, file: !67, line: 35, baseType: !452, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2618, file: !67, line: 36, baseType: !2621, size: 64, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2615, file: !67, line: 47, baseType: !2628, size: 192)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2615, file: !67, line: 39, size: 192, elements: !2629)
!2629 = !{!2630, !2631, !2632, !2651}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2628, file: !67, line: 40, baseType: !1575, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2628, file: !67, line: 41, baseType: !66, size: 32, offset: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, scope: !2628, file: !67, line: 42, baseType: !2633, size: 64, offset: 64)
!2633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2628, file: !67, line: 42, size: 64, elements: !2634)
!2634 = !{!2635, !2643}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2633, file: !67, line: 43, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2638, line: 7, size: 128, elements: !2639)
!2638 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2639 = !{!2640, !2642}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2637, file: !2638, line: 8, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !333, line: 93, baseType: !542)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2637, file: !2638, line: 9, baseType: !542, size: 64, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2633, file: !67, line: 44, baseType: !2644, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2646, line: 7, size: 64, elements: !2647)
!2646 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2647 = !{!2648, !2650}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2645, file: !2646, line: 8, baseType: !2649, size: 32)
!2649 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2646, line: 5, baseType: !636)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2645, file: !2646, line: 9, baseType: !636, size: 32, offset: 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2628, file: !67, line: 46, baseType: !452, size: 64, offset: 128)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2615, file: !67, line: 55, baseType: !2653, size: 256)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2615, file: !67, line: 49, size: 256, elements: !2654)
!2654 = !{!2655, !2658, !2659, !2660, !2661}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2653, file: !67, line: 50, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !67, line: 14, flags: DIFlagFwdDecl)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2653, file: !67, line: 51, baseType: !114, size: 32, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2653, file: !67, line: 52, baseType: !114, size: 32, offset: 96)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2653, file: !67, line: 53, baseType: !349, size: 64, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2653, file: !67, line: 54, baseType: !349, size: 64, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1408, file: !1084, line: 973, baseType: !2663, size: 32, offset: 10688)
!2663 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !175, line: 27, baseType: !2664)
!2664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !333, line: 28, baseType: !114)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1408, file: !1084, line: 974, baseType: !2663, size: 32, offset: 10720)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1408, file: !1084, line: 978, baseType: !349, size: 64, offset: 10752)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1408, file: !1084, line: 987, baseType: !1407, size: 64, offset: 10816)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1408, file: !1084, line: 990, baseType: !1407, size: 64, offset: 10880)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1408, file: !1084, line: 995, baseType: !182, size: 128, offset: 10944)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1408, file: !1084, line: 996, baseType: !182, size: 128, offset: 11072)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1408, file: !1084, line: 997, baseType: !1407, size: 64, offset: 11200)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1408, file: !1084, line: 1005, baseType: !182, size: 128, offset: 11264)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1408, file: !1084, line: 1006, baseType: !182, size: 128, offset: 11392)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1408, file: !1084, line: 1009, baseType: !1772, size: 64, offset: 11520)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1408, file: !1084, line: 1010, baseType: !2676, size: 512, offset: 11584)
!2676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !886, size: 512, elements: !870)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1408, file: !1084, line: 1011, baseType: !182, size: 128, offset: 12096)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1408, file: !1084, line: 1012, baseType: !182, size: 128, offset: 12224)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1408, file: !1084, line: 1014, baseType: !588, size: 64, offset: 12352)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1408, file: !1084, line: 1017, baseType: !769, size: 64, offset: 12416)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1408, file: !1084, line: 1020, baseType: !769, size: 64, offset: 12480)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1408, file: !1084, line: 1023, baseType: !176, size: 64, offset: 12544)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1408, file: !1084, line: 1025, baseType: !452, size: 64, offset: 12608)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1408, file: !1084, line: 1026, baseType: !452, size: 64, offset: 12672)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1408, file: !1084, line: 1031, baseType: !452, size: 64, offset: 12736)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1408, file: !1084, line: 1032, baseType: !2687, size: 192, offset: 12800)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1084, line: 324, size: 192, elements: !2688)
!2688 = !{!2689, !2690, !2691}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2687, file: !1084, line: 326, baseType: !452, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2687, file: !1084, line: 327, baseType: !452, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2687, file: !1084, line: 328, baseType: !598, size: 32, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1408, file: !1084, line: 1041, baseType: !349, size: 64, offset: 12992)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1408, file: !1084, line: 1042, baseType: !349, size: 64, offset: 13056)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1408, file: !1084, line: 1045, baseType: !452, size: 64, offset: 13120)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1408, file: !1084, line: 1048, baseType: !452, size: 64, offset: 13184)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1408, file: !1084, line: 1051, baseType: !349, size: 64, offset: 13248)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1408, file: !1084, line: 1052, baseType: !349, size: 64, offset: 13312)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1408, file: !1084, line: 1055, baseType: !2699, size: 640, offset: 13376)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2700, line: 132, size: 640, elements: !2701)
!2700 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2701 = !{!2702, !2708, !2709}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2699, file: !2700, line: 133, baseType: !2703, size: 576)
!2703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2704, size: 576, elements: !300)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2700, line: 117, size: 192, elements: !2705)
!2705 = !{!2706, !2707}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2704, file: !2700, line: 118, baseType: !452, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2704, file: !2700, line: 119, baseType: !1584, size: 128, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2699, file: !2700, line: 134, baseType: !7, size: 32, offset: 576)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2699, file: !2700, line: 135, baseType: !7, size: 32, offset: 608)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1408, file: !1084, line: 1058, baseType: !2711, size: 448, offset: 14016)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2700, line: 144, size: 448, elements: !2712)
!2712 = !{!2713, !2714, !2715}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2711, file: !2700, line: 145, baseType: !860, size: 128, align: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2711, file: !2700, line: 146, baseType: !640, size: 256, offset: 128)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2711, file: !2700, line: 147, baseType: !7, size: 32, offset: 384)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1408, file: !1084, line: 1064, baseType: !1798, size: 64, offset: 14464)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1408, file: !1084, line: 1067, baseType: !1798, size: 64, offset: 14528)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1408, file: !1084, line: 1070, baseType: !1798, size: 64, offset: 14592)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1408, file: !1084, line: 1074, baseType: !1825, size: 64, offset: 14656)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1408, file: !1084, line: 1084, baseType: !2721, size: 128, offset: 14720)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 128, elements: !2722)
!2722 = !{!2723}
!2723 = !DISubrange(count: 16)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1408, file: !1084, line: 1086, baseType: !2725, size: 64, offset: 14848)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1084, line: 55, flags: DIFlagFwdDecl)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1408, file: !1084, line: 1089, baseType: !2728, size: 64, offset: 14912)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2729, line: 12, size: 64, elements: !2730)
!2729 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2730 = !{!2731}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2728, file: !2729, line: 13, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2729, line: 8, flags: DIFlagFwdDecl)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1408, file: !1084, line: 1090, baseType: !2735, size: 128, offset: 14976)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2736, line: 13, size: 128, elements: !2737)
!2736 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2737 = !{!2738}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2735, file: !2736, line: 14, baseType: !182, size: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1408, file: !1084, line: 1097, baseType: !2740, size: 64, offset: 15104)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1084, line: 50, flags: DIFlagFwdDecl)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1408, file: !1084, line: 1100, baseType: !2743, size: 64, offset: 15168)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1084, line: 1100, flags: DIFlagFwdDecl)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1408, file: !1084, line: 1103, baseType: !2746, size: 64, offset: 15232)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1084, line: 53, flags: DIFlagFwdDecl)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1408, file: !1084, line: 1107, baseType: !2749, size: 64, offset: 15296)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1084, line: 56, flags: DIFlagFwdDecl)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1408, file: !1084, line: 1110, baseType: !2752, size: 64, offset: 15360)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2754, line: 93, size: 8768, elements: !2755)
!2754 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2755 = !{!2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2803, !2812, !2813, !2815, !2816, !2817, !2820, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2858, !2859, !2866, !2876, !2879, !2880, !2883, !2884, !2885, !2886, !2887, !2888}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2753, file: !2754, line: 94, baseType: !1421, size: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2753, file: !2754, line: 95, baseType: !250, size: 32, offset: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2753, file: !2754, line: 96, baseType: !114, size: 32, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2753, file: !2754, line: 97, baseType: !114, size: 32, offset: 96)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2753, file: !2754, line: 98, baseType: !182, size: 128, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2753, file: !2754, line: 100, baseType: !1394, size: 192, offset: 256)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2753, file: !2754, line: 103, baseType: !1407, size: 64, offset: 448)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2753, file: !2754, line: 106, baseType: !2764, size: 192, offset: 512)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1973, line: 32, size: 192, elements: !2765)
!2765 = !{!2766, !2767}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2764, file: !1973, line: 33, baseType: !182, size: 128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2764, file: !1973, line: 34, baseType: !2768, size: 64, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2769, line: 25, baseType: !2770)
!2769 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2769, line: 23, size: 64, elements: !2771)
!2771 = !{!2772}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2770, file: !2769, line: 24, baseType: !1655, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2753, file: !2754, line: 109, baseType: !1010, size: 64, offset: 704)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2753, file: !2754, line: 112, baseType: !114, size: 32, offset: 768)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2753, file: !2754, line: 114, baseType: !114, size: 32, offset: 800)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2753, file: !2754, line: 115, baseType: !1407, size: 64, offset: 832)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2753, file: !2754, line: 118, baseType: !114, size: 32, offset: 896)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2753, file: !2754, line: 119, baseType: !7, size: 32, offset: 928)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2753, file: !2754, line: 121, baseType: !2780, size: 64, offset: 960)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2754, line: 80, size: 448, elements: !2782)
!2782 = !{!2783, !2784, !2790}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2781, file: !2754, line: 81, baseType: !250, size: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2781, file: !2754, line: 82, baseType: !2785, size: 128, offset: 64)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2754, line: 75, size: 128, elements: !2786)
!2786 = !{!2787, !2788}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2785, file: !2754, line: 76, baseType: !1407, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2785, file: !2754, line: 77, baseType: !2789, size: 64, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2781, file: !2754, line: 83, baseType: !589, size: 256, offset: 192)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2753, file: !2754, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2753, file: !2754, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2753, file: !2754, line: 138, baseType: !7, size: 32, offset: 1056)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2753, file: !2754, line: 139, baseType: !182, size: 128, offset: 1088)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2753, file: !2754, line: 142, baseType: !1528, size: 512, offset: 1216)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2753, file: !2754, line: 143, baseType: !1536, size: 64, offset: 1728)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2753, file: !2754, line: 150, baseType: !2798, size: 256, offset: 1792)
!2798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2799, size: 256, elements: !759)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2754, line: 38, size: 128, elements: !2800)
!2800 = !{!2801, !2802}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2799, file: !2754, line: 39, baseType: !452, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2799, file: !2754, line: 40, baseType: !452, size: 64, offset: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2753, file: !2754, line: 156, baseType: !2804, size: 192, offset: 2048)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2754, line: 66, size: 192, elements: !2805)
!2805 = !{!2806}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2804, file: !2754, line: 67, baseType: !2807, size: 192)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2754, line: 47, size: 192, elements: !2808)
!2808 = !{!2809, !2810, !2811}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2807, file: !2754, line: 48, baseType: !646, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2807, file: !2754, line: 49, baseType: !646, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2807, file: !2754, line: 50, baseType: !646, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2753, file: !2754, line: 160, baseType: !2699, size: 640, offset: 2240)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2753, file: !2754, line: 163, baseType: !2814, size: 256, offset: 2880)
!2814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1772, size: 256, elements: !870)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2753, file: !2754, line: 169, baseType: !1772, size: 64, offset: 3136)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2753, file: !2754, line: 172, baseType: !114, size: 32, offset: 3200)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2753, file: !2754, line: 174, baseType: !2818, size: 64, offset: 3264)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2754, line: 174, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2753, file: !2754, line: 185, baseType: !2821, size: 64, offset: 3328)
!2821 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !421, line: 860, baseType: !2822)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !421, line: 853, size: 64, elements: !2823)
!2823 = !{!2824, !2825}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2822, file: !421, line: 858, baseType: !420, size: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2822, file: !421, line: 859, baseType: !230, size: 32, offset: 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2753, file: !2754, line: 186, baseType: !452, size: 64, offset: 3392)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2753, file: !2754, line: 186, baseType: !452, size: 64, offset: 3456)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2753, file: !2754, line: 186, baseType: !452, size: 64, offset: 3520)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2753, file: !2754, line: 186, baseType: !452, size: 64, offset: 3584)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2753, file: !2754, line: 187, baseType: !452, size: 64, offset: 3648)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2753, file: !2754, line: 188, baseType: !452, size: 64, offset: 3712)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2753, file: !2754, line: 189, baseType: !2687, size: 192, offset: 3776)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2753, file: !2754, line: 190, baseType: !349, size: 64, offset: 3968)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2753, file: !2754, line: 190, baseType: !349, size: 64, offset: 4032)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2753, file: !2754, line: 190, baseType: !349, size: 64, offset: 4096)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2753, file: !2754, line: 190, baseType: !349, size: 64, offset: 4160)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2753, file: !2754, line: 191, baseType: !349, size: 64, offset: 4224)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2753, file: !2754, line: 191, baseType: !349, size: 64, offset: 4288)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2753, file: !2754, line: 191, baseType: !349, size: 64, offset: 4352)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2753, file: !2754, line: 191, baseType: !349, size: 64, offset: 4416)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2753, file: !2754, line: 192, baseType: !349, size: 64, offset: 4480)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2753, file: !2754, line: 192, baseType: !349, size: 64, offset: 4544)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2753, file: !2754, line: 192, baseType: !349, size: 64, offset: 4608)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2753, file: !2754, line: 192, baseType: !349, size: 64, offset: 4672)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2753, file: !2754, line: 193, baseType: !349, size: 64, offset: 4736)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2753, file: !2754, line: 193, baseType: !349, size: 64, offset: 4800)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2753, file: !2754, line: 194, baseType: !2848, size: 448, offset: 4864)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2849, line: 12, size: 448, elements: !2850)
!2849 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2850 = !{!2851, !2852, !2853, !2854, !2855, !2856, !2857}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2848, file: !2849, line: 15, baseType: !452, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2848, file: !2849, line: 17, baseType: !452, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2848, file: !2849, line: 19, baseType: !452, size: 64, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2848, file: !2849, line: 21, baseType: !452, size: 64, offset: 192)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2848, file: !2849, line: 29, baseType: !452, size: 64, offset: 256)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2848, file: !2849, line: 35, baseType: !452, size: 64, offset: 320)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2848, file: !2849, line: 44, baseType: !452, size: 64, offset: 384)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2753, file: !2754, line: 202, baseType: !454, size: 64, offset: 5312)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2753, file: !2754, line: 213, baseType: !2860, size: 2048, offset: 5376)
!2860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2861, size: 2048, elements: !2722)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2862, line: 43, size: 128, elements: !2863)
!2862 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2863 = !{!2864, !2865}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2861, file: !2862, line: 44, baseType: !348, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2861, file: !2862, line: 45, baseType: !348, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2753, file: !2754, line: 216, baseType: !2867, size: 448, offset: 7424)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2754, line: 30, size: 448, elements: !2868)
!2868 = !{!2869, !2870, !2871, !2872, !2873, !2874, !2875}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2867, file: !2754, line: 31, baseType: !114, size: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2867, file: !2754, line: 32, baseType: !335, size: 64, offset: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2867, file: !2754, line: 33, baseType: !349, size: 64, offset: 128)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2867, file: !2754, line: 34, baseType: !452, size: 64, offset: 192)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2867, file: !2754, line: 34, baseType: !452, size: 64, offset: 256)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2867, file: !2754, line: 35, baseType: !349, size: 64, offset: 320)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2867, file: !2754, line: 35, baseType: !349, size: 64, offset: 384)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2753, file: !2754, line: 219, baseType: !2877, size: 64, offset: 7872)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2754, line: 219, flags: DIFlagFwdDecl)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2753, file: !2754, line: 222, baseType: !7, size: 32, offset: 7936)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2753, file: !2754, line: 223, baseType: !2881, size: 64, offset: 8000)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2754, line: 223, flags: DIFlagFwdDecl)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2753, file: !2754, line: 230, baseType: !720, size: 8, offset: 8064)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2753, file: !2754, line: 231, baseType: !778, size: 16, offset: 8080)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2753, file: !2754, line: 232, baseType: !778, size: 16, offset: 8096)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2753, file: !2754, line: 234, baseType: !1704, size: 64, offset: 8128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2753, file: !2754, line: 237, baseType: !640, size: 256, offset: 8192)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2753, file: !2754, line: 243, baseType: !1301, size: 320, offset: 8448)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1408, file: !1084, line: 1111, baseType: !2890, size: 64, offset: 15424)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2754, line: 20, size: 16640, elements: !2892)
!2892 = !{!2893, !2894, !2895, !2896}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2891, file: !2754, line: 21, baseType: !230, size: 32)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2891, file: !2754, line: 22, baseType: !1421, size: 32, offset: 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2891, file: !2754, line: 23, baseType: !1394, size: 192, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2891, file: !2754, line: 24, baseType: !2897, size: 16384, offset: 256)
!2897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2898, size: 16384, elements: !304)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1973, line: 51, size: 256, elements: !2899)
!2899 = !{!2900}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2898, file: !1973, line: 52, baseType: !2901, size: 256)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1973, line: 37, size: 256, elements: !2902)
!2902 = !{!2903, !2910, !2911, !2915}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2901, file: !1973, line: 39, baseType: !2904, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2905, line: 83, baseType: !2906)
!2905 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2905, line: 82, baseType: !2908)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{null, !114}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2901, file: !1973, line: 40, baseType: !349, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2901, file: !1973, line: 46, baseType: !2912, size: 64, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2905, line: 86, baseType: !2913)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2905, line: 85, baseType: !1005)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2901, file: !1973, line: 48, baseType: !2768, size: 64, offset: 192)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1408, file: !1084, line: 1112, baseType: !2768, size: 64, offset: 15488)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1408, file: !1084, line: 1113, baseType: !2768, size: 64, offset: 15552)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1408, file: !1084, line: 1115, baseType: !2768, size: 64, offset: 15616)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1408, file: !1084, line: 1116, baseType: !2764, size: 192, offset: 15680)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1408, file: !1084, line: 1117, baseType: !349, size: 64, offset: 15872)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1408, file: !1084, line: 1118, baseType: !346, size: 64, offset: 15936)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1408, file: !1084, line: 1119, baseType: !7, size: 32, offset: 16000)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1408, file: !1084, line: 1121, baseType: !859, size: 64, offset: 16064)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1408, file: !1084, line: 1125, baseType: !2925, size: 64, offset: 16128)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1084, line: 43, flags: DIFlagFwdDecl)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1408, file: !1084, line: 1127, baseType: !385, size: 32, offset: 16192)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1408, file: !1084, line: 1128, baseType: !7, size: 32, offset: 16224)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1408, file: !1084, line: 1130, baseType: !2930, size: 128, offset: 16256)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2931, line: 37, size: 128, elements: !2932)
!2931 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2932 = !{!2933, !2934, !2935}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2930, file: !2931, line: 38, baseType: !114, size: 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2930, file: !2931, line: 39, baseType: !250, size: 32, offset: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2930, file: !2931, line: 40, baseType: !2936, size: 64, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2931, line: 24, flags: DIFlagFwdDecl)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1408, file: !1084, line: 1131, baseType: !2939, size: 256, offset: 16384)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2940, line: 12, size: 256, elements: !2941)
!2940 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2941 = !{!2942, !2943, !2944, !2945}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2939, file: !2940, line: 13, baseType: !299, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2939, file: !2940, line: 14, baseType: !349, size: 64, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2939, file: !2940, line: 15, baseType: !349, size: 64, offset: 128)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2939, file: !2940, line: 16, baseType: !720, size: 8, offset: 192)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1408, file: !1084, line: 1134, baseType: !452, size: 64, offset: 16640)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1408, file: !1084, line: 1135, baseType: !452, size: 64, offset: 16704)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1408, file: !1084, line: 1138, baseType: !230, size: 32, offset: 16768)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1408, file: !1084, line: 1141, baseType: !598, size: 32, offset: 16800)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1408, file: !1084, line: 1143, baseType: !2951, size: 64, offset: 16832)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1084, line: 735, size: 64, elements: !2952)
!2952 = !{!2953}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2951, file: !1084, line: 736, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1408, file: !1084, line: 1147, baseType: !1587, size: 128, offset: 16896)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1408, file: !1084, line: 1149, baseType: !1407, size: 64, offset: 17024)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1408, file: !1084, line: 1151, baseType: !2958, size: 64, offset: 17088)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1084, line: 1151, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1408, file: !1084, line: 1188, baseType: !176, size: 64, offset: 17152)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1408, file: !1084, line: 1191, baseType: !2962, size: 64, offset: 17216)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1084, line: 44, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1408, file: !1084, line: 1194, baseType: !2965, size: 64, offset: 17280)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1084, line: 45, flags: DIFlagFwdDecl)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1408, file: !1084, line: 1197, baseType: !2968, size: 64, offset: 17344)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1084, line: 61, flags: DIFlagFwdDecl)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1408, file: !1084, line: 1199, baseType: !2971, size: 64, offset: 17408)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2973, line: 99, size: 128, elements: !2974)
!2973 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2974 = !{!2975, !2976, !2977}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2972, file: !2973, line: 100, baseType: !644, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2972, file: !2973, line: 101, baseType: !250, size: 32, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2972, file: !2973, line: 103, baseType: !269, size: 16, offset: 96)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1408, file: !1084, line: 1202, baseType: !2979, size: 64, offset: 17472)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1084, line: 48, flags: DIFlagFwdDecl)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1408, file: !1084, line: 1205, baseType: !349, size: 64, offset: 17536)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1408, file: !1084, line: 1206, baseType: !2983, size: 64, offset: 17600)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1973, line: 14, baseType: !2985)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1973, line: 12, size: 384, elements: !2986)
!2986 = !{!2987}
!2987 = !DIDerivedType(tag: DW_TAG_member, scope: !2985, file: !1973, line: 13, baseType: !2988, size: 384)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2985, file: !1973, line: 13, size: 384, elements: !2989)
!2989 = !{!2990, !2991, !2992, !2993}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2988, file: !1973, line: 13, baseType: !114, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2988, file: !1973, line: 13, baseType: !114, size: 32, offset: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2988, file: !1973, line: 13, baseType: !114, size: 32, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2988, file: !1973, line: 13, baseType: !2994, size: 256, offset: 128)
!2994 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2995, line: 37, size: 256, elements: !2996)
!2995 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2996 = !{!2997, !3002, !3015, !3021, !3030, !3057, !3062}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2994, file: !2995, line: 42, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2994, file: !2995, line: 39, size: 64, elements: !2999)
!2999 = !{!3000, !3001}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2998, file: !2995, line: 40, baseType: !2664, size: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2998, file: !2995, line: 41, baseType: !391, size: 32, offset: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2994, file: !2995, line: 50, baseType: !3003, size: 192)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2994, file: !2995, line: 45, size: 192, elements: !3004)
!3004 = !{!3005, !3007, !3008, !3014}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3003, file: !2995, line: 46, baseType: !3006, size: 32)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !333, line: 95, baseType: !114)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3003, file: !2995, line: 47, baseType: !114, size: 32, offset: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3003, file: !2995, line: 48, baseType: !3009, size: 64, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2995, line: 11, baseType: !3010)
!3010 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2995, line: 8, size: 64, elements: !3011)
!3011 = !{!3012, !3013}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3010, file: !2995, line: 9, baseType: !114, size: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3010, file: !2995, line: 10, baseType: !176, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3003, file: !2995, line: 49, baseType: !114, size: 32, offset: 128)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2994, file: !2995, line: 57, baseType: !3016, size: 128)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2994, file: !2995, line: 53, size: 128, elements: !3017)
!3017 = !{!3018, !3019, !3020}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3016, file: !2995, line: 54, baseType: !2664, size: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3016, file: !2995, line: 55, baseType: !391, size: 32, offset: 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3016, file: !2995, line: 56, baseType: !3009, size: 64, offset: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2994, file: !2995, line: 66, baseType: !3022, size: 256)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2994, file: !2995, line: 60, size: 256, elements: !3023)
!3023 = !{!3024, !3025, !3026, !3027, !3029}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3022, file: !2995, line: 61, baseType: !2664, size: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3022, file: !2995, line: 62, baseType: !391, size: 32, offset: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3022, file: !2995, line: 63, baseType: !114, size: 32, offset: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3022, file: !2995, line: 64, baseType: !3028, size: 64, offset: 128)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !333, line: 94, baseType: !334)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3022, file: !2995, line: 65, baseType: !3028, size: 64, offset: 192)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2994, file: !2995, line: 105, baseType: !3031, size: 256)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2994, file: !2995, line: 69, size: 256, elements: !3032)
!3032 = !{!3033, !3034}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3031, file: !2995, line: 70, baseType: !176, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, scope: !3031, file: !2995, line: 79, baseType: !3035, size: 192, offset: 64)
!3035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3031, file: !2995, line: 79, size: 192, elements: !3036)
!3036 = !{!3037, !3038, !3039, !3046, !3051}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3035, file: !2995, line: 81, baseType: !114, size: 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3035, file: !2995, line: 86, baseType: !778, size: 16)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3035, file: !2995, line: 92, baseType: !3040, size: 192)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3035, file: !2995, line: 88, size: 192, elements: !3041)
!3041 = !{!3042, !3044, !3045}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3040, file: !2995, line: 89, baseType: !3043, size: 64)
!3043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 64, elements: !1571)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3040, file: !2995, line: 90, baseType: !176, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3040, file: !2995, line: 91, baseType: !176, size: 64, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3035, file: !2995, line: 97, baseType: !3047, size: 96)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3035, file: !2995, line: 94, size: 96, elements: !3048)
!3048 = !{!3049, !3050}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3047, file: !2995, line: 95, baseType: !3043, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3047, file: !2995, line: 96, baseType: !449, size: 32, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3035, file: !2995, line: 103, baseType: !3052, size: 128)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3035, file: !2995, line: 99, size: 128, elements: !3053)
!3053 = !{!3054, !3055, !3056}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3052, file: !2995, line: 100, baseType: !349, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3052, file: !2995, line: 101, baseType: !449, size: 32, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3052, file: !2995, line: 102, baseType: !449, size: 32, offset: 96)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2994, file: !2995, line: 111, baseType: !3058, size: 128)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2994, file: !2995, line: 108, size: 128, elements: !3059)
!3059 = !{!3060, !3061}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3058, file: !2995, line: 109, baseType: !335, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3058, file: !2995, line: 110, baseType: !114, size: 32, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2994, file: !2995, line: 118, baseType: !3063, size: 128)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2994, file: !2995, line: 114, size: 128, elements: !3064)
!3064 = !{!3065, !3066, !3067}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3063, file: !2995, line: 115, baseType: !176, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3063, file: !2995, line: 116, baseType: !114, size: 32, offset: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3063, file: !2995, line: 117, baseType: !7, size: 32, offset: 96)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1408, file: !1084, line: 1208, baseType: !2848, size: 448, offset: 17664)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1408, file: !1084, line: 1215, baseType: !452, size: 64, offset: 18112)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1408, file: !1084, line: 1217, baseType: !452, size: 64, offset: 18176)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1408, file: !1084, line: 1219, baseType: !452, size: 64, offset: 18240)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1408, file: !1084, line: 1223, baseType: !3073, size: 64, offset: 18304)
!3073 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !153, line: 99, baseType: !3074)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 99, size: 64, elements: !3075)
!3075 = !{!3076}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3074, file: !153, line: 99, baseType: !1655, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1408, file: !1084, line: 1225, baseType: !420, size: 32, offset: 18368)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1408, file: !1084, line: 1226, baseType: !114, size: 32, offset: 18400)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1408, file: !1084, line: 1227, baseType: !114, size: 32, offset: 18432)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1408, file: !1084, line: 1231, baseType: !3081, size: 64, offset: 18496)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1084, line: 1231, flags: DIFlagFwdDecl)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1408, file: !1084, line: 1233, baseType: !182, size: 128, offset: 18560)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1408, file: !1084, line: 1240, baseType: !3085, size: 64, offset: 18688)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1084, line: 62, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1408, file: !1084, line: 1242, baseType: !3088, size: 64, offset: 18752)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1084, line: 1242, flags: DIFlagFwdDecl)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1408, file: !1084, line: 1244, baseType: !182, size: 128, offset: 18816)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1408, file: !1084, line: 1245, baseType: !3092, size: 64, offset: 18944)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1084, line: 51, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1408, file: !1084, line: 1246, baseType: !640, size: 256, offset: 19008)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1408, file: !1084, line: 1247, baseType: !7, size: 32, offset: 19264)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1408, file: !1084, line: 1250, baseType: !3097, size: 64, offset: 19328)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1084, line: 57, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1408, file: !1084, line: 1251, baseType: !640, size: 256, offset: 19392)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1408, file: !1084, line: 1252, baseType: !182, size: 128, offset: 19648)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1408, file: !1084, line: 1259, baseType: !2353, size: 64, offset: 19776)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1408, file: !1084, line: 1260, baseType: !778, size: 16, offset: 19840)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1408, file: !1084, line: 1261, baseType: !778, size: 16, offset: 19856)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1408, file: !1084, line: 1314, baseType: !3105, size: 64, offset: 19904)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3107, line: 62, size: 256, align: 256, elements: !3108)
!3107 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3108 = !{!3109, !3110, !3111, !3112, !3113, !3114, !3115}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3106, file: !3107, line: 75, baseType: !449, size: 32)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3106, file: !3107, line: 90, baseType: !449, size: 32, offset: 32)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3106, file: !3107, line: 112, baseType: !453, size: 64, offset: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3106, file: !3107, line: 132, baseType: !449, size: 32, offset: 128)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3106, file: !3107, line: 140, baseType: !449, size: 32, offset: 160)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3106, file: !3107, line: 149, baseType: !449, size: 32, offset: 192)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3106, file: !3107, line: 154, baseType: !3116, offset: 224)
!3116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, elements: !1791)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1408, file: !1084, line: 1315, baseType: !448, size: 32, offset: 19968)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1408, file: !1084, line: 1316, baseType: !448, size: 32, offset: 20000)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1408, file: !1084, line: 1321, baseType: !349, size: 64, offset: 20032)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1408, file: !1084, line: 1325, baseType: !114, size: 32, offset: 20096)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1408, file: !1084, line: 1326, baseType: !114, size: 32, offset: 20128)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1408, file: !1084, line: 1327, baseType: !114, size: 32, offset: 20160)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1408, file: !1084, line: 1328, baseType: !114, size: 32, offset: 20192)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1408, file: !1084, line: 1329, baseType: !860, size: 128, align: 64, offset: 20224)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1408, file: !1084, line: 1332, baseType: !3126, size: 128, offset: 20352)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3127, line: 51, size: 128, elements: !3128)
!3127 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3128 = !{!3129, !3134, !3135}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3126, file: !3127, line: 60, baseType: !3130, size: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3131, line: 7, size: 64, elements: !3132)
!3131 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3132 = !{!3133}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3130, file: !3131, line: 12, baseType: !1652, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3126, file: !3127, line: 63, baseType: !720, size: 8, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3126, file: !3127, line: 70, baseType: !720, size: 8, offset: 72)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1408, file: !1084, line: 1335, baseType: !2405, size: 64, offset: 20480)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1408, file: !1084, line: 1337, baseType: !3138, size: 128, offset: 20544)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3127, line: 39, size: 128, elements: !3139)
!3139 = !{!3140, !3141, !3142}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3138, file: !3127, line: 40, baseType: !2192, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3138, file: !3127, line: 42, baseType: !449, size: 32, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3138, file: !3127, line: 43, baseType: !449, size: 32, offset: 96)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1408, file: !1084, line: 1340, baseType: !3144, size: 64, offset: 20672)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1084, line: 69, flags: DIFlagFwdDecl)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1408, file: !1084, line: 1351, baseType: !114, size: 32, offset: 20736)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1408, file: !1084, line: 1352, baseType: !114, size: 32, offset: 20768)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1408, file: !1084, line: 1354, baseType: !349, size: 64, offset: 20800)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1408, file: !1084, line: 1364, baseType: !452, size: 64, offset: 20864)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1408, file: !1084, line: 1365, baseType: !452, size: 64, offset: 20928)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1408, file: !1084, line: 1412, baseType: !349, size: 64, offset: 20992)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1408, file: !1084, line: 1453, baseType: !3153, size: 64, offset: 21056)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1084, line: 1453, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1408, file: !1084, line: 1457, baseType: !3156, size: 64, offset: 21120)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !73, line: 61, size: 576, elements: !3158)
!3158 = !{!3159, !3160, !3179, !3182, !3183, !3216, !3226}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3157, file: !73, line: 62, baseType: !72, size: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, scope: !3157, file: !73, line: 64, baseType: !3161, size: 192, offset: 64)
!3161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3157, file: !73, line: 64, size: 192, elements: !3162)
!3162 = !{!3163, !3174}
!3163 = !DIDerivedType(tag: DW_TAG_member, scope: !3161, file: !73, line: 65, baseType: !3164, size: 192)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !73, line: 65, size: 192, elements: !3165)
!3165 = !{!3166, !3173}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3164, file: !73, line: 66, baseType: !3167, size: 128)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3168, line: 50, size: 128, elements: !3169)
!3168 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3169 = !{!3170, !3171, !3172}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3167, file: !3168, line: 52, baseType: !349, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3167, file: !3168, line: 54, baseType: !7, size: 32, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3167, file: !3168, line: 55, baseType: !7, size: 32, offset: 96)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3164, file: !73, line: 67, baseType: !349, size: 64, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, scope: !3161, file: !73, line: 70, baseType: !3175, size: 192)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !73, line: 70, size: 192, elements: !3176)
!3176 = !{!3177, !3178}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3175, file: !73, line: 71, baseType: !860, size: 128, align: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3175, file: !73, line: 72, baseType: !349, size: 64, offset: 128)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3157, file: !73, line: 76, baseType: !3180, size: 64, offset: 256)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !73, line: 76, flags: DIFlagFwdDecl)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3157, file: !73, line: 77, baseType: !349, size: 64, offset: 320)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3157, file: !73, line: 79, baseType: !3184, size: 64, offset: 384)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3168, line: 25, size: 256, elements: !3186)
!3186 = !{!3187, !3193, !3197}
!3187 = !DIDerivedType(tag: DW_TAG_member, scope: !3185, file: !3168, line: 26, baseType: !3188, size: 128)
!3188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3185, file: !3168, line: 26, size: 128, elements: !3189)
!3189 = !{!3190, !3192}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3188, file: !3168, line: 27, baseType: !3191, size: 128)
!3191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 128, elements: !2722)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3188, file: !3168, line: 28, baseType: !3191, size: 128)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3185, file: !3168, line: 31, baseType: !3194, size: 64, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3196)
!3196 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3168, line: 23, flags: DIFlagFwdDecl)
!3197 = !DIDerivedType(tag: DW_TAG_member, scope: !3185, file: !3168, line: 33, baseType: !3198, size: 64, offset: 192)
!3198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3185, file: !3168, line: 33, size: 64, elements: !3199)
!3199 = !{!3200, !3206, !3211}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3198, file: !3168, line: 38, baseType: !3201, size: 64)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !3168, line: 34, size: 64, elements: !3202)
!3202 = !{!3203, !3204, !3205}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3201, file: !3168, line: 35, baseType: !636, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3201, file: !3168, line: 36, baseType: !258, size: 8, offset: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3201, file: !3168, line: 37, baseType: !258, size: 8, offset: 40)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3198, file: !3168, line: 42, baseType: !3207, size: 16)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !3168, line: 39, size: 16, elements: !3208)
!3208 = !{!3209, !3210}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3207, file: !3168, line: 40, baseType: !258, size: 8)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3207, file: !3168, line: 41, baseType: !258, size: 8, offset: 8)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3198, file: !3168, line: 46, baseType: !3212, size: 16)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !3168, line: 43, size: 16, elements: !3213)
!3213 = !{!3214, !3215}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3212, file: !3168, line: 44, baseType: !258, size: 8)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3212, file: !3168, line: 45, baseType: !258, size: 8, offset: 8)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3157, file: !73, line: 81, baseType: !3217, size: 64, offset: 448)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !73, line: 85, size: 384, elements: !3219)
!3219 = !{!3220, !3221, !3222, !3223, !3224, !3225}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3218, file: !73, line: 86, baseType: !3180, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3218, file: !73, line: 87, baseType: !349, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3218, file: !73, line: 88, baseType: !349, size: 64, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3218, file: !73, line: 89, baseType: !349, size: 64, offset: 192)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3218, file: !73, line: 90, baseType: !720, size: 8, offset: 256)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3218, file: !73, line: 92, baseType: !3217, size: 64, offset: 320)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3157, file: !73, line: 82, baseType: !7, size: 32, offset: 512)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1408, file: !1084, line: 1463, baseType: !3228, offset: 21184)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1084, line: 739, elements: !929)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1408, file: !1084, line: 1470, baseType: !860, size: 128, align: 64, offset: 21184)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1408, file: !1084, line: 1471, baseType: !1421, size: 32, offset: 21312)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1408, file: !1084, line: 1472, baseType: !114, size: 32, offset: 21344)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1408, file: !1084, line: 1474, baseType: !1407, size: 64, offset: 21376)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1408, file: !1084, line: 1475, baseType: !882, size: 320, offset: 21440)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1408, file: !1084, line: 1478, baseType: !3235, size: 64, offset: 21760)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2045, line: 49, size: 512, elements: !3237)
!3237 = !{!3238, !3239, !3240, !3241, !3242, !3244, !3245, !3246, !3248}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3236, file: !2045, line: 50, baseType: !3235, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3236, file: !2045, line: 51, baseType: !176, size: 64, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3236, file: !2045, line: 52, baseType: !349, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3236, file: !2045, line: 53, baseType: !349, size: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3236, file: !2045, line: 54, baseType: !3243, size: 64, offset: 256)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3236, file: !2045, line: 56, baseType: !7, size: 32, offset: 320)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3236, file: !2045, line: 58, baseType: !7, size: 32, offset: 352)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3236, file: !2045, line: 59, baseType: !3247, size: 64, offset: 384)
!3247 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !175, line: 159, baseType: !452)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3236, file: !2045, line: 60, baseType: !2544, size: 64, offset: 448)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1408, file: !1084, line: 1482, baseType: !1421, size: 32, offset: 21824)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1408, file: !1084, line: 1489, baseType: !176, size: 64, offset: 21888)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1408, file: !1084, line: 1504, baseType: !176, size: 64, offset: 21952)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1408, file: !1084, line: 1505, baseType: !453, size: 64, offset: 22016)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1408, file: !1084, line: 1506, baseType: !452, size: 64, offset: 22080)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1408, file: !1084, line: 1507, baseType: !453, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1408, file: !1084, line: 1508, baseType: !453, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1408, file: !1084, line: 1509, baseType: !453, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1408, file: !1084, line: 1510, baseType: !860, size: 128, align: 64, offset: 22208)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1408, file: !1084, line: 1511, baseType: !114, size: 32, offset: 22336)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1408, file: !1084, line: 1515, baseType: !3260, size: 64, offset: 22400)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1435, line: 56, size: 64, elements: !3261)
!3261 = !{!3262}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3260, file: !1435, line: 57, baseType: !1438, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1408, file: !1084, line: 1518, baseType: !3260, size: 64, offset: 22464)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1408, file: !1084, line: 1528, baseType: !860, size: 128, align: 64, offset: 22528)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1408, file: !1084, line: 1552, baseType: !3266, size: 35328, offset: 23040)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3267, line: 430, size: 35328, elements: !3268)
!3267 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3268 = !{!3269, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3298, !3299, !3300, !3301, !3302, !3303, !3306, !3307, !3308, !3309}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3266, file: !3267, line: 432, baseType: !3270, size: 192)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3271, size: 192, elements: !300)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3272, line: 16, size: 64, elements: !3273)
!3272 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3273 = !{!3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3271, file: !3272, line: 17, baseType: !267, size: 16)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3271, file: !3272, line: 18, baseType: !267, size: 16, offset: 16)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3271, file: !3272, line: 19, baseType: !267, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3271, file: !3272, line: 19, baseType: !267, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3271, file: !3272, line: 19, baseType: !267, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3271, file: !3272, line: 19, baseType: !267, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3271, file: !3272, line: 19, baseType: !267, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3271, file: !3272, line: 20, baseType: !267, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3271, file: !3272, line: 20, baseType: !267, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3271, file: !3272, line: 20, baseType: !267, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3271, file: !3272, line: 20, baseType: !267, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3271, file: !3272, line: 20, baseType: !267, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3271, file: !3272, line: 20, baseType: !267, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3266, file: !3267, line: 436, baseType: !349, size: 64, offset: 192)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3266, file: !3267, line: 440, baseType: !269, size: 16, offset: 256)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3266, file: !3267, line: 441, baseType: !269, size: 16, offset: 272)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3266, file: !3267, line: 442, baseType: !269, size: 16, offset: 288)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3266, file: !3267, line: 443, baseType: !269, size: 16, offset: 304)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3266, file: !3267, line: 447, baseType: !349, size: 64, offset: 320)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3266, file: !3267, line: 448, baseType: !349, size: 64, offset: 384)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3266, file: !3267, line: 459, baseType: !3295, size: 256, offset: 448)
!3295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3296, size: 256, elements: !870)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3267, line: 428, flags: DIFlagFwdDecl)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3266, file: !3267, line: 461, baseType: !349, size: 64, offset: 704)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3266, file: !3267, line: 463, baseType: !349, size: 64, offset: 768)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3266, file: !3267, line: 465, baseType: !349, size: 64, offset: 832)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3266, file: !3267, line: 466, baseType: !349, size: 64, offset: 896)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3266, file: !3267, line: 467, baseType: !349, size: 64, offset: 960)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3266, file: !3267, line: 473, baseType: !3304, size: 64, offset: 1024)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3267, line: 10, flags: DIFlagFwdDecl)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3266, file: !3267, line: 480, baseType: !349, size: 64, offset: 1088)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3266, file: !3267, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3266, file: !3267, line: 491, baseType: !448, size: 32, offset: 1184)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3266, file: !3267, line: 501, baseType: !3310, size: 33792, offset: 1536)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3311, line: 448, size: 33792, elements: !3312)
!3311 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3312 = !{!3313, !3314, !3315, !3477, !3478, !3484, !3485}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3310, file: !3311, line: 461, baseType: !7, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3310, file: !3311, line: 468, baseType: !349, size: 64, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3310, file: !3311, line: 476, baseType: !3316, size: 64, offset: 128)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3311, line: 356, size: 33280, align: 512, elements: !3318)
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3317, file: !3311, line: 358, baseType: !7, size: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3317, file: !3311, line: 361, baseType: !7, size: 32, offset: 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3317, file: !3311, line: 364, baseType: !452, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3317, file: !3311, line: 367, baseType: !452, size: 64, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3317, file: !3311, line: 370, baseType: !452, size: 64, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3317, file: !3311, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3317, file: !3311, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3317, file: !3311, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3317, file: !3311, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3317, file: !3311, line: 397, baseType: !3329, size: 32768, offset: 512)
!3329 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3311, line: 348, size: 32768, elements: !3330)
!3330 = !{!3331, !3346, !3383, !3460, !3473}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3329, file: !3311, line: 349, baseType: !3332, size: 896)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3311, line: 12, size: 896, elements: !3333)
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3345}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3332, file: !3311, line: 13, baseType: !448, size: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3332, file: !3311, line: 14, baseType: !448, size: 32, offset: 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3332, file: !3311, line: 15, baseType: !448, size: 32, offset: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3332, file: !3311, line: 16, baseType: !448, size: 32, offset: 96)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3332, file: !3311, line: 17, baseType: !448, size: 32, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3332, file: !3311, line: 18, baseType: !448, size: 32, offset: 160)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3332, file: !3311, line: 19, baseType: !448, size: 32, offset: 192)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3332, file: !3311, line: 22, baseType: !3342, size: 640, offset: 224)
!3342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 640, elements: !3343)
!3343 = !{!3344}
!3344 = !DISubrange(count: 20)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3332, file: !3311, line: 25, baseType: !448, size: 32, offset: 864)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3329, file: !3311, line: 350, baseType: !3347, size: 4096, align: 128)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3311, line: 34, size: 4096, align: 128, elements: !3348)
!3348 = !{!3349, !3350, !3351, !3352, !3353, !3368, !3369, !3370, !3372, !3374, !3378}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3347, file: !3311, line: 35, baseType: !267, size: 16)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3347, file: !3311, line: 36, baseType: !267, size: 16, offset: 16)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3347, file: !3311, line: 37, baseType: !267, size: 16, offset: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3347, file: !3311, line: 38, baseType: !267, size: 16, offset: 48)
!3353 = !DIDerivedType(tag: DW_TAG_member, scope: !3347, file: !3311, line: 39, baseType: !3354, size: 128, offset: 64)
!3354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3347, file: !3311, line: 39, size: 128, elements: !3355)
!3355 = !{!3356, !3361}
!3356 = !DIDerivedType(tag: DW_TAG_member, scope: !3354, file: !3311, line: 40, baseType: !3357, size: 128)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3354, file: !3311, line: 40, size: 128, elements: !3358)
!3358 = !{!3359, !3360}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3357, file: !3311, line: 41, baseType: !452, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3357, file: !3311, line: 42, baseType: !452, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, scope: !3354, file: !3311, line: 44, baseType: !3362, size: 128)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3354, file: !3311, line: 44, size: 128, elements: !3363)
!3363 = !{!3364, !3365, !3366, !3367}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3362, file: !3311, line: 45, baseType: !448, size: 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3362, file: !3311, line: 46, baseType: !448, size: 32, offset: 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3362, file: !3311, line: 47, baseType: !448, size: 32, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3362, file: !3311, line: 48, baseType: !448, size: 32, offset: 96)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3347, file: !3311, line: 51, baseType: !448, size: 32, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3347, file: !3311, line: 52, baseType: !448, size: 32, offset: 224)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3347, file: !3311, line: 55, baseType: !3371, size: 1024, offset: 256)
!3371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 1024, elements: !461)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3347, file: !3311, line: 58, baseType: !3373, size: 2048, offset: 1280)
!3373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 2048, elements: !304)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3347, file: !3311, line: 60, baseType: !3375, size: 384, offset: 3328)
!3375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 384, elements: !3376)
!3376 = !{!3377}
!3377 = !DISubrange(count: 12)
!3378 = !DIDerivedType(tag: DW_TAG_member, scope: !3347, file: !3311, line: 62, baseType: !3379, size: 384, offset: 3712)
!3379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3347, file: !3311, line: 62, size: 384, elements: !3380)
!3380 = !{!3381, !3382}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3379, file: !3311, line: 63, baseType: !3375, size: 384)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3379, file: !3311, line: 64, baseType: !3375, size: 384)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3329, file: !3311, line: 351, baseType: !3384, size: 1088)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3311, line: 79, size: 1088, elements: !3385)
!3385 = !{!3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3459}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3384, file: !3311, line: 80, baseType: !448, size: 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3384, file: !3311, line: 81, baseType: !448, size: 32, offset: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3384, file: !3311, line: 82, baseType: !448, size: 32, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3384, file: !3311, line: 83, baseType: !448, size: 32, offset: 96)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3384, file: !3311, line: 84, baseType: !448, size: 32, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3384, file: !3311, line: 85, baseType: !448, size: 32, offset: 160)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3384, file: !3311, line: 86, baseType: !448, size: 32, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3384, file: !3311, line: 88, baseType: !3342, size: 640, offset: 224)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3384, file: !3311, line: 89, baseType: !258, size: 8, offset: 864)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3384, file: !3311, line: 90, baseType: !258, size: 8, offset: 872)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3384, file: !3311, line: 91, baseType: !258, size: 8, offset: 880)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3384, file: !3311, line: 92, baseType: !258, size: 8, offset: 888)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3384, file: !3311, line: 93, baseType: !258, size: 8, offset: 896)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3384, file: !3311, line: 94, baseType: !258, size: 8, offset: 904)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3384, file: !3311, line: 95, baseType: !3401, size: 64, offset: 960)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3403, line: 11, size: 128, elements: !3404)
!3403 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3404 = !{!3405, !3406}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3402, file: !3403, line: 12, baseType: !335, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3402, file: !3403, line: 13, baseType: !3407, size: 64, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3409, line: 103, size: 1344, elements: !3410)
!3409 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3410 = !{!3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3439, !3440, !3441}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3408, file: !3409, line: 109, baseType: !349, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3408, file: !3409, line: 110, baseType: !349, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3408, file: !3409, line: 111, baseType: !349, size: 64, offset: 128)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3408, file: !3409, line: 112, baseType: !349, size: 64, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3408, file: !3409, line: 113, baseType: !349, size: 64, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3408, file: !3409, line: 114, baseType: !349, size: 64, offset: 320)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3408, file: !3409, line: 117, baseType: !349, size: 64, offset: 384)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3408, file: !3409, line: 118, baseType: !349, size: 64, offset: 448)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3408, file: !3409, line: 119, baseType: !349, size: 64, offset: 512)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3408, file: !3409, line: 120, baseType: !349, size: 64, offset: 576)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3408, file: !3409, line: 121, baseType: !349, size: 64, offset: 640)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3408, file: !3409, line: 122, baseType: !349, size: 64, offset: 704)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3408, file: !3409, line: 123, baseType: !349, size: 64, offset: 768)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3408, file: !3409, line: 124, baseType: !349, size: 64, offset: 832)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3408, file: !3409, line: 125, baseType: !349, size: 64, offset: 896)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3408, file: !3409, line: 139, baseType: !349, size: 64, offset: 960)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3408, file: !3409, line: 142, baseType: !349, size: 64, offset: 1024)
!3428 = !DIDerivedType(tag: DW_TAG_member, scope: !3408, file: !3409, line: 144, baseType: !3429, size: 64, offset: 1088)
!3429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3408, file: !3409, line: 144, size: 64, elements: !3430)
!3430 = !{!3431, !3432, !3433}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3429, file: !3409, line: 146, baseType: !267, size: 16)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3429, file: !3409, line: 148, baseType: !452, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3429, file: !3409, line: 150, baseType: !3434, size: 64)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3409, line: 59, size: 64, elements: !3435)
!3435 = !{!3436, !3437, !3438}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3434, file: !3409, line: 61, baseType: !452, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3434, file: !3409, line: 63, baseType: !452, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3434, file: !3409, line: 65, baseType: !452, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3408, file: !3409, line: 153, baseType: !349, size: 64, offset: 1152)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3408, file: !3409, line: 154, baseType: !349, size: 64, offset: 1216)
!3441 = !DIDerivedType(tag: DW_TAG_member, scope: !3408, file: !3409, line: 156, baseType: !3442, size: 64, offset: 1280)
!3442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3408, file: !3409, line: 156, size: 64, elements: !3443)
!3443 = !{!3444, !3445, !3446}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3442, file: !3409, line: 158, baseType: !267, size: 16)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3442, file: !3409, line: 160, baseType: !452, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3442, file: !3409, line: 162, baseType: !3447, size: 64)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3409, line: 69, size: 64, elements: !3448)
!3448 = !{!3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3447, file: !3409, line: 71, baseType: !452, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3447, file: !3409, line: 73, baseType: !452, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3447, file: !3409, line: 75, baseType: !452, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3447, file: !3409, line: 77, baseType: !452, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3447, file: !3409, line: 80, baseType: !452, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3447, file: !3409, line: 83, baseType: !452, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3447, file: !3409, line: 86, baseType: !452, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3447, file: !3409, line: 88, baseType: !452, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3447, file: !3409, line: 93, baseType: !452, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3447, file: !3409, line: 100, baseType: !452, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3384, file: !3311, line: 96, baseType: !448, size: 32, offset: 1024)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3329, file: !3311, line: 352, baseType: !3461, size: 4608, align: 512)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3311, line: 333, size: 4608, align: 512, elements: !3462)
!3462 = !{!3463, !3464, !3471}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3461, file: !3311, line: 334, baseType: !3347, size: 4096, align: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3461, file: !3311, line: 335, baseType: !3465, size: 512, offset: 4096)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3311, line: 312, size: 512, elements: !3466)
!3466 = !{!3467, !3468, !3469}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3465, file: !3311, line: 313, baseType: !452, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3465, file: !3311, line: 314, baseType: !452, size: 64, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3465, file: !3311, line: 315, baseType: !3470, size: 384, offset: 128)
!3470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 384, elements: !1874)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3461, file: !3311, line: 336, baseType: !3472, offset: 4608)
!3472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, elements: !1791)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3329, file: !3311, line: 353, baseType: !3474, size: 32768)
!3474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 32768, elements: !3475)
!3475 = !{!3476}
!3476 = !DISubrange(count: 4096)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3310, file: !3311, line: 484, baseType: !3316, size: 64, offset: 192)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3310, file: !3311, line: 491, baseType: !3479, size: 128, offset: 256)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3311, line: 404, size: 128, elements: !3480)
!3480 = !{!3481, !3482, !3483}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3479, file: !3311, line: 424, baseType: !452, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3479, file: !3311, line: 432, baseType: !7, size: 32, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3479, file: !3311, line: 440, baseType: !7, size: 32, offset: 96)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3310, file: !3311, line: 498, baseType: !3479, size: 128, offset: 384)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3310, file: !3311, line: 508, baseType: !3317, size: 33280, align: 512, offset: 512)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1384, file: !1385, line: 16, baseType: !1394, size: 192, offset: 512)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1384, file: !1385, line: 17, baseType: !250, size: 32, offset: 704)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !531, file: !19, line: 1240, baseType: !176, size: 64, offset: 6912)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !531, file: !19, line: 1243, baseType: !448, size: 32, offset: 6976)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !531, file: !19, line: 1245, baseType: !1142, size: 64, offset: 7040)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !531, file: !19, line: 1246, baseType: !1142, size: 64, offset: 7104)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !531, file: !19, line: 1248, baseType: !449, size: 32, offset: 7168)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !531, file: !19, line: 1249, baseType: !3494, size: 64, offset: 7232)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !19, line: 634, flags: DIFlagFwdDecl)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !531, file: !19, line: 1252, baseType: !3497, size: 256, offset: 7296)
!3497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 256, elements: !461)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !531, file: !19, line: 1253, baseType: !3499, size: 128, offset: 7552)
!3499 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3500, line: 21, baseType: !3501)
!3500 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3500, line: 19, size: 128, elements: !3502)
!3502 = !{!3503}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3501, file: !3500, line: 20, baseType: !3504, size: 128)
!3504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 128, elements: !2722)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !531, file: !19, line: 1255, baseType: !7, size: 32, offset: 7680)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !531, file: !19, line: 1261, baseType: !640, size: 256, offset: 7744)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !531, file: !19, line: 1267, baseType: !218, size: 64, offset: 8000)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !531, file: !19, line: 1269, baseType: !477, size: 64, offset: 8064)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !531, file: !19, line: 1271, baseType: !3510, size: 448, offset: 8128)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1151, line: 63, size: 448, elements: !3511)
!3511 = !{!3512, !3517, !3518, !3519, !3520, !3521, !3522}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3510, file: !1151, line: 64, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!349, !3516, !1149}
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3510, file: !1151, line: 66, baseType: !3513, size: 64, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3510, file: !1151, line: 69, baseType: !335, size: 64, offset: 128)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3510, file: !1151, line: 70, baseType: !114, size: 32, offset: 192)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3510, file: !1151, line: 71, baseType: !7, size: 32, offset: 224)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3510, file: !1151, line: 74, baseType: !182, size: 128, offset: 256)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3510, file: !1151, line: 85, baseType: !3523, size: 64, offset: 384)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !531, file: !19, line: 1274, baseType: !644, size: 64, offset: 8576)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !531, file: !19, line: 1280, baseType: !644, size: 64, offset: 8640)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !531, file: !19, line: 1283, baseType: !114, size: 32, offset: 8704)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !531, file: !19, line: 1286, baseType: !2455, size: 32, offset: 8736)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !531, file: !19, line: 1289, baseType: !962, size: 64, offset: 8768)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !531, file: !19, line: 1290, baseType: !1010, size: 64, offset: 8832)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !531, file: !19, line: 1297, baseType: !1968, size: 64, offset: 8896)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !531, file: !19, line: 1304, baseType: !3532, size: 64, offset: 8960)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3533, line: 49, size: 64, elements: !3534)
!3533 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3534 = !{!3535}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3532, file: !3533, line: 50, baseType: !3536, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3533, line: 41, size: 512, align: 512, elements: !3538)
!3538 = !{!3539, !3540, !3545}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3537, file: !3533, line: 43, baseType: !230, size: 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3537, file: !3533, line: 45, baseType: !3541, size: 192, offset: 64)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3533, line: 29, size: 192, elements: !3542)
!3542 = !{!3543, !3544}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3541, file: !3533, line: 30, baseType: !182, size: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3541, file: !3533, line: 32, baseType: !335, size: 64, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3537, file: !3533, line: 46, baseType: !335, size: 64, offset: 256)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !531, file: !19, line: 1305, baseType: !3532, size: 64, offset: 9024)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !531, file: !19, line: 1306, baseType: !860, size: 128, align: 64, offset: 9088)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !531, file: !19, line: 1307, baseType: !900, size: 256, offset: 9216)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !531, file: !19, line: 1309, baseType: !640, size: 256, offset: 9472)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !531, file: !19, line: 1314, baseType: !114, size: 32, offset: 9728)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !531, file: !19, line: 1317, baseType: !230, size: 32, align: 512, offset: 10240)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !531, file: !19, line: 1318, baseType: !182, size: 128, offset: 10304)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !531, file: !19, line: 1320, baseType: !230, size: 32, offset: 10432)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !531, file: !19, line: 1321, baseType: !182, size: 128, offset: 10496)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !525, file: !526, line: 73, baseType: !114, size: 32, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !525, file: !526, line: 74, baseType: !3557, size: 64, offset: 192)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1815, line: 42, flags: DIFlagFwdDecl)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !479, file: !416, line: 141, baseType: !3561, size: 64, offset: 704)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!114, !1211, !720}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !479, file: !416, line: 142, baseType: !3565, size: 64, offset: 768)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!414, !414, !3568}
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !415, file: !416, line: 96, baseType: !530, size: 64, offset: 832)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !415, file: !416, line: 97, baseType: !349, size: 64, offset: 896)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !415, file: !416, line: 98, baseType: !176, size: 64, offset: 960)
!3573 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !416, line: 100, baseType: !3574, size: 128, offset: 1024)
!3574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !416, line: 100, size: 128, elements: !3575)
!3575 = !{!3576, !3577}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3574, file: !416, line: 101, baseType: !182, size: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3574, file: !416, line: 102, baseType: !3578, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !415, file: !416, line: 104, baseType: !182, size: 128, offset: 1152)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !415, file: !416, line: 105, baseType: !182, size: 128, offset: 1280)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !415, file: !416, line: 113, baseType: !3582, size: 128, offset: 1408)
!3582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !416, line: 109, size: 128, elements: !3583)
!3583 = !{!3584, !3585, !3586}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3582, file: !416, line: 110, baseType: !886, size: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3582, file: !416, line: 111, baseType: !430, size: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3582, file: !416, line: 112, baseType: !860, size: 128, align: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !408, file: !19, line: 1968, baseType: !3588, size: 64, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!218, !414, !379, !3591}
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3593, line: 10, size: 128, elements: !3594)
!3593 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3594 = !{!3595, !3596}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3592, file: !3593, line: 11, baseType: !683, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3592, file: !3593, line: 12, baseType: !176, size: 64, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !408, file: !19, line: 1969, baseType: !3598, size: 64, offset: 128)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!114, !3557, !379, !114}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !408, file: !19, line: 1970, baseType: !3602, size: 64, offset: 192)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!402, !379, !114, !720}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !408, file: !19, line: 1972, baseType: !3606, size: 64, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!114, !414, !299, !114}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !408, file: !19, line: 1974, baseType: !3610, size: 64, offset: 320)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!114, !3557, !379, !414, !341, !720}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !408, file: !19, line: 1976, baseType: !3614, size: 64, offset: 384)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!114, !414, !379, !414}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !408, file: !19, line: 1977, baseType: !3618, size: 64, offset: 448)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!114, !379, !414}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !408, file: !19, line: 1978, baseType: !3622, size: 64, offset: 512)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!114, !3557, !379, !414, !218}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !408, file: !19, line: 1980, baseType: !3626, size: 64, offset: 576)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!114, !3557, !379, !414, !341}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !408, file: !19, line: 1982, baseType: !3618, size: 64, offset: 640)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !408, file: !19, line: 1983, baseType: !3631, size: 64, offset: 704)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!114, !3557, !379, !414, !341, !535}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !408, file: !19, line: 1985, baseType: !3635, size: 64, offset: 768)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!114, !3557, !379, !414, !379, !414, !7}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !408, file: !19, line: 1987, baseType: !3639, size: 64, offset: 832)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!114, !3557, !414, !3642}
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !19, line: 226, size: 640, elements: !3644)
!3644 = !{!3645, !3646, !3647, !3657, !3666, !3667, !3672, !3673, !3674}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3643, file: !19, line: 227, baseType: !7, size: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3643, file: !19, line: 228, baseType: !341, size: 16, offset: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, scope: !3643, file: !19, line: 241, baseType: !3648, size: 32, offset: 64)
!3648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3643, file: !19, line: 241, size: 32, elements: !3649)
!3649 = !{!3650, !3651}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3648, file: !19, line: 242, baseType: !385, size: 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3648, file: !19, line: 243, baseType: !3652, size: 32)
!3652 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3653, line: 16, baseType: !3654)
!3653 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3653, line: 14, size: 32, elements: !3655)
!3655 = !{!3656}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3654, file: !3653, line: 15, baseType: !390, size: 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, scope: !3643, file: !19, line: 245, baseType: !3658, size: 32, offset: 96)
!3658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3643, file: !19, line: 245, size: 32, elements: !3659)
!3659 = !{!3660, !3661}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3658, file: !19, line: 246, baseType: !394, size: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3658, file: !19, line: 247, baseType: !3662, size: 32)
!3662 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3653, line: 20, baseType: !3663)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3653, line: 18, size: 32, elements: !3664)
!3664 = !{!3665}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3663, file: !3653, line: 19, baseType: !398, size: 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3643, file: !19, line: 249, baseType: !540, size: 64, offset: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3643, file: !19, line: 250, baseType: !3668, size: 128, offset: 192)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1143, line: 13, size: 128, elements: !3669)
!3669 = !{!3670, !3671}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3668, file: !1143, line: 14, baseType: !1142, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3668, file: !1143, line: 15, baseType: !335, size: 64, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3643, file: !19, line: 251, baseType: !3668, size: 128, offset: 320)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3643, file: !19, line: 252, baseType: !3668, size: 128, offset: 448)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3643, file: !19, line: 259, baseType: !1731, size: 64, offset: 576)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !408, file: !19, line: 1988, baseType: !3676, size: 64, offset: 896)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!114, !3557, !1211, !3679, !448, !7}
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3681, line: 22, size: 1280, elements: !3682)
!3681 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3682 = !{!3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3680, file: !3681, line: 23, baseType: !448, size: 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3680, file: !3681, line: 24, baseType: !341, size: 16, offset: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3680, file: !3681, line: 25, baseType: !7, size: 32, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3680, file: !3681, line: 26, baseType: !1853, size: 32, offset: 96)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3680, file: !3681, line: 27, baseType: !452, size: 64, offset: 128)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3680, file: !3681, line: 28, baseType: !452, size: 64, offset: 192)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3680, file: !3681, line: 41, baseType: !452, size: 64, offset: 256)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3680, file: !3681, line: 42, baseType: !535, size: 32, offset: 320)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3680, file: !3681, line: 43, baseType: !535, size: 32, offset: 352)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3680, file: !3681, line: 44, baseType: !385, size: 32, offset: 384)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3680, file: !3681, line: 45, baseType: !394, size: 32, offset: 416)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3680, file: !3681, line: 46, baseType: !540, size: 64, offset: 448)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3680, file: !3681, line: 47, baseType: !3668, size: 128, offset: 512)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3680, file: !3681, line: 48, baseType: !3668, size: 128, offset: 640)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3680, file: !3681, line: 49, baseType: !3668, size: 128, offset: 768)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3680, file: !3681, line: 50, baseType: !3668, size: 128, offset: 896)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3680, file: !3681, line: 51, baseType: !452, size: 64, offset: 1024)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3680, file: !3681, line: 52, baseType: !452, size: 64, offset: 1088)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3680, file: !3681, line: 53, baseType: !448, size: 32, offset: 1152)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3680, file: !3681, line: 54, baseType: !448, size: 32, offset: 1184)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3680, file: !3681, line: 55, baseType: !452, size: 64, offset: 1216)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !408, file: !19, line: 1990, baseType: !3705, size: 64, offset: 960)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!331, !414, !299, !346}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !408, file: !19, line: 1991, baseType: !3709, size: 64, offset: 1024)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!114, !379, !3712, !452, !452}
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !19, line: 55, flags: DIFlagFwdDecl)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !408, file: !19, line: 1993, baseType: !3715, size: 64, offset: 1088)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!114, !379, !114}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !408, file: !19, line: 1994, baseType: !3719, size: 64, offset: 1152)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!114, !379, !414, !1731, !7, !341}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !408, file: !19, line: 1997, baseType: !3723, size: 64, offset: 1216)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!114, !3557, !379, !1731, !341}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !408, file: !19, line: 1999, baseType: !3727, size: 64, offset: 1280)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!402, !3557, !414, !114}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !408, file: !19, line: 2001, baseType: !3731, size: 64, offset: 1344)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!114, !3557, !414, !402, !114}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !408, file: !19, line: 2003, baseType: !3735, size: 64, offset: 1408)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!114, !3557, !414, !3738}
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !19, line: 76, flags: DIFlagFwdDecl)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !408, file: !19, line: 2005, baseType: !3741, size: 64, offset: 1472)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!114, !414, !3738}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !408, file: !19, line: 2006, baseType: !3745, size: 64, offset: 1536)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!3748, !379}
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !19, line: 3192, size: 192, elements: !3750)
!3750 = !{!3751, !3758}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3749, file: !19, line: 3193, baseType: !3752, size: 128)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3753, line: 296, size: 128, elements: !3754)
!3753 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3754 = !{!3755, !3756, !3757}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3752, file: !3753, line: 297, baseType: !230, size: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3752, file: !3753, line: 299, baseType: !174, size: 32, offset: 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3752, file: !3753, line: 300, baseType: !176, size: 64, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3749, file: !19, line: 3194, baseType: !448, size: 32, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !380, file: !19, line: 655, baseType: !530, size: 64, offset: 448)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !380, file: !19, line: 656, baseType: !375, size: 64, offset: 512)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !380, file: !19, line: 659, baseType: !176, size: 64, offset: 576)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !380, file: !19, line: 663, baseType: !349, size: 64, offset: 640)
!3763 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !19, line: 671, baseType: !3764, size: 32, offset: 704)
!3764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !19, line: 671, size: 32, elements: !3765)
!3765 = !{!3766, !3768}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3764, file: !19, line: 672, baseType: !3767, size: 32)
!3767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3764, file: !19, line: 673, baseType: !7, size: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !380, file: !19, line: 675, baseType: !535, size: 32, offset: 736)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !380, file: !19, line: 676, baseType: !540, size: 64, offset: 768)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !380, file: !19, line: 677, baseType: !3668, size: 128, offset: 832)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !380, file: !19, line: 678, baseType: !3668, size: 128, offset: 960)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !380, file: !19, line: 679, baseType: !3668, size: 128, offset: 1088)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !380, file: !19, line: 680, baseType: !230, size: 32, offset: 1216)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !380, file: !19, line: 681, baseType: !269, size: 16, offset: 1248)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !380, file: !19, line: 682, baseType: !258, size: 8, offset: 1264)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !380, file: !19, line: 683, baseType: !258, size: 8, offset: 1272)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !380, file: !19, line: 684, baseType: !1289, size: 64, offset: 1280)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !380, file: !19, line: 691, baseType: !349, size: 64, offset: 1344)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !380, file: !19, line: 692, baseType: !1301, size: 320, offset: 1408)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !380, file: !19, line: 694, baseType: !349, size: 64, offset: 1728)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !380, file: !19, line: 695, baseType: !349, size: 64, offset: 1792)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !380, file: !19, line: 697, baseType: !886, size: 128, offset: 1856)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !380, file: !19, line: 698, baseType: !182, size: 128, offset: 1984)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !380, file: !19, line: 707, baseType: !182, size: 128, offset: 2112)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !380, file: !19, line: 708, baseType: !182, size: 128, offset: 2240)
!3787 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !19, line: 709, baseType: !3788, size: 128, offset: 2368)
!3788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !19, line: 709, size: 128, elements: !3789)
!3789 = !{!3790, !3791}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3788, file: !19, line: 710, baseType: !1010, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3788, file: !19, line: 711, baseType: !860, size: 128, align: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !380, file: !19, line: 713, baseType: !646, size: 64, offset: 2496)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !380, file: !19, line: 714, baseType: !646, size: 64, offset: 2560)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !380, file: !19, line: 715, baseType: !250, size: 32, offset: 2624)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !380, file: !19, line: 716, baseType: !250, size: 32, offset: 2656)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !380, file: !19, line: 717, baseType: !250, size: 32, offset: 2688)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !380, file: !19, line: 719, baseType: !250, size: 32, offset: 2720)
!3798 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !19, line: 721, baseType: !3799, size: 64, offset: 2752)
!3799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !19, line: 721, size: 64, elements: !3800)
!3800 = !{!3801, !3802}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3799, file: !19, line: 722, baseType: !1999, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3799, file: !19, line: 723, baseType: !1033, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !380, file: !19, line: 725, baseType: !3804, size: 64, offset: 2816)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !19, line: 725, flags: DIFlagFwdDecl)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !380, file: !19, line: 726, baseType: !376, size: 1536, align: 64, offset: 2880)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !380, file: !19, line: 727, baseType: !182, size: 128, offset: 4416)
!3808 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !19, line: 728, baseType: !3809, size: 64, offset: 4544)
!3809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !19, line: 728, size: 64, elements: !3810)
!3810 = !{!3811, !3812, !3815, !3816}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3809, file: !19, line: 729, baseType: !2405, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3809, file: !19, line: 730, baseType: !3813, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !19, line: 730, flags: DIFlagFwdDecl)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3809, file: !19, line: 731, baseType: !299, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3809, file: !19, line: 732, baseType: !7, size: 32)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !380, file: !19, line: 735, baseType: !449, size: 32, offset: 4608)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !380, file: !19, line: 738, baseType: !449, size: 32, offset: 4640)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !380, file: !19, line: 739, baseType: !3494, size: 64, offset: 4672)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !380, file: !19, line: 750, baseType: !176, size: 64, offset: 4736)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !376, file: !19, line: 474, baseType: !3752, size: 128, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !376, file: !19, line: 475, baseType: !1301, size: 320, offset: 192)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !376, file: !19, line: 476, baseType: !174, size: 32, offset: 512)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !376, file: !19, line: 477, baseType: !250, size: 32, offset: 544)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !376, file: !19, line: 482, baseType: !1587, size: 128, offset: 576)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !376, file: !19, line: 483, baseType: !349, size: 64, offset: 704)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !376, file: !19, line: 484, baseType: !349, size: 64, offset: 768)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !376, file: !19, line: 485, baseType: !3829, size: 64, offset: 832)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3831)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !19, line: 404, size: 1280, elements: !3832)
!3832 = !{!3833, !3837, !3907, !3911, !3915, !3921, !3925, !3929, !3934, !3938, !3942, !3946, !3947, !3951, !3955, !3959, !3964, !3968, !3975, !3976}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3831, file: !19, line: 405, baseType: !3834, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!114, !2192, !1045}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3831, file: !19, line: 406, baseType: !3838, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!114, !1731, !3841}
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !43, line: 293, size: 1536, elements: !3843)
!3843 = !{!3844, !3874, !3888}
!3844 = !DIDerivedType(tag: DW_TAG_member, scope: !3842, file: !43, line: 295, baseType: !3845, size: 512)
!3845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3842, file: !43, line: 295, size: 512, elements: !3846)
!3846 = !{!3847, !3873}
!3847 = !DIDerivedType(tag: DW_TAG_member, scope: !3845, file: !43, line: 296, baseType: !3848, size: 448)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3845, file: !43, line: 296, size: 448, elements: !3849)
!3849 = !{!3850, !3851, !3860, !3861, !3862, !3871, !3872}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3848, file: !43, line: 298, baseType: !349, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, scope: !3848, file: !43, line: 299, baseType: !3852, size: 128, offset: 64)
!3852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3848, file: !43, line: 299, size: 128, elements: !3853)
!3853 = !{!3854, !3855}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3852, file: !43, line: 300, baseType: !182, size: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, scope: !3852, file: !43, line: 302, baseType: !3856, size: 128)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3852, file: !43, line: 302, size: 128, elements: !3857)
!3857 = !{!3858, !3859}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3856, file: !43, line: 303, baseType: !176, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3856, file: !43, line: 305, baseType: !7, size: 32, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3848, file: !43, line: 310, baseType: !375, size: 64, offset: 192)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3848, file: !43, line: 311, baseType: !349, size: 64, offset: 256)
!3862 = !DIDerivedType(tag: DW_TAG_member, scope: !3848, file: !43, line: 312, baseType: !3863, size: 64, offset: 320)
!3863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3848, file: !43, line: 312, size: 64, elements: !3864)
!3864 = !{!3865, !3866}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3863, file: !43, line: 313, baseType: !176, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3863, file: !43, line: 314, baseType: !3867, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !43, line: 257, baseType: !3868)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 255, size: 64, elements: !3869)
!3869 = !{!3870}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3868, file: !43, line: 256, baseType: !349, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3848, file: !43, line: 316, baseType: !250, size: 32, offset: 384)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3848, file: !43, line: 317, baseType: !250, size: 32, offset: 416)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3845, file: !43, line: 323, baseType: !2193, size: 512, align: 128)
!3874 = !DIDerivedType(tag: DW_TAG_member, scope: !3842, file: !43, line: 325, baseType: !3875, size: 512, offset: 512)
!3875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3842, file: !43, line: 325, size: 512, elements: !3876)
!3876 = !{!3877, !3887}
!3877 = !DIDerivedType(tag: DW_TAG_member, scope: !3875, file: !43, line: 326, baseType: !3878, size: 320)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3875, file: !43, line: 326, size: 320, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3883, !3884, !3885, !3886}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3878, file: !43, line: 327, baseType: !349, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3878, file: !43, line: 328, baseType: !349, size: 64, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3878, file: !43, line: 329, baseType: !349, size: 64, offset: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3878, file: !43, line: 331, baseType: !250, size: 32, offset: 192)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3878, file: !43, line: 332, baseType: !250, size: 32, offset: 224)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3878, file: !43, line: 333, baseType: !250, size: 32, offset: 256)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3878, file: !43, line: 335, baseType: !7, size: 32, offset: 288)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3875, file: !43, line: 339, baseType: !2193, size: 512, align: 128)
!3888 = !DIDerivedType(tag: DW_TAG_member, scope: !3842, file: !43, line: 341, baseType: !3889, size: 512, offset: 1024)
!3889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3842, file: !43, line: 341, size: 512, elements: !3890)
!3890 = !{!3891, !3900, !3906}
!3891 = !DIDerivedType(tag: DW_TAG_member, scope: !3889, file: !43, line: 342, baseType: !3892, size: 384)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3889, file: !43, line: 342, size: 384, elements: !3893)
!3893 = !{!3894, !3895, !3896, !3897, !3898, !3899}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3892, file: !43, line: 343, baseType: !349, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3892, file: !43, line: 344, baseType: !349, size: 64, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3892, file: !43, line: 346, baseType: !176, size: 64, offset: 128)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3892, file: !43, line: 347, baseType: !176, size: 64, offset: 192)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3892, file: !43, line: 348, baseType: !176, size: 64, offset: 256)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3892, file: !43, line: 349, baseType: !176, size: 64, offset: 320)
!3900 = !DIDerivedType(tag: DW_TAG_member, scope: !3889, file: !43, line: 352, baseType: !3901, size: 256)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3889, file: !43, line: 352, size: 256, elements: !3902)
!3902 = !{!3903, !3904, !3905}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3901, file: !43, line: 353, baseType: !349, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3901, file: !43, line: 354, baseType: !349, size: 64, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3901, file: !43, line: 356, baseType: !182, size: 128, offset: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3889, file: !43, line: 359, baseType: !2193, size: 512, align: 128)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3831, file: !19, line: 409, baseType: !3908, size: 64, offset: 128)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!114, !375, !1045}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3831, file: !19, line: 412, baseType: !3912, size: 64, offset: 192)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!720, !375, !3841}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3831, file: !19, line: 414, baseType: !3916, size: 64, offset: 256)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{null, !3919}
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !19, line: 310, flags: DIFlagFwdDecl)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3831, file: !19, line: 416, baseType: !3922, size: 64, offset: 320)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!114, !1731, !375, !540, !7, !3243, !2420}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3831, file: !19, line: 419, baseType: !3926, size: 64, offset: 384)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!114, !1731, !375, !540, !7, !7, !2192, !176}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3831, file: !19, line: 424, baseType: !3930, size: 64, offset: 448)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!3933, !375, !3933}
!3933 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !175, line: 131, baseType: !452)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3831, file: !19, line: 425, baseType: !3935, size: 64, offset: 512)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{null, !3841, !346, !346}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3831, file: !19, line: 426, baseType: !3939, size: 64, offset: 576)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!720, !3841, !174}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3831, file: !19, line: 427, baseType: !3943, size: 64, offset: 640)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{null, !3841}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3831, file: !19, line: 428, baseType: !2018, size: 64, offset: 704)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3831, file: !19, line: 433, baseType: !3948, size: 64, offset: 768)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!114, !375, !3841, !3841, !79}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3831, file: !19, line: 435, baseType: !3952, size: 64, offset: 832)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!114, !3841}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3831, file: !19, line: 436, baseType: !3956, size: 64, offset: 896)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!720, !3841, !346, !346}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3831, file: !19, line: 438, baseType: !3960, size: 64, offset: 960)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{null, !3841, !3963, !3963}
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3831, file: !19, line: 439, baseType: !3965, size: 64, offset: 1024)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!114, !375, !2192}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3831, file: !19, line: 442, baseType: !3969, size: 64, offset: 1088)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!114, !3972, !1731, !3974}
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !19, line: 66, flags: DIFlagFwdDecl)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3831, file: !19, line: 444, baseType: !2412, size: 64, offset: 1152)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3831, file: !19, line: 445, baseType: !3977, size: 64, offset: 1216)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!114, !2021, !2043}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !376, file: !19, line: 486, baseType: !349, size: 64, offset: 896)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !376, file: !19, line: 487, baseType: !1301, size: 320, offset: 960)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !376, file: !19, line: 488, baseType: !2455, size: 32, offset: 1280)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !376, file: !19, line: 489, baseType: !230, size: 32, offset: 1312)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !376, file: !19, line: 490, baseType: !182, size: 128, offset: 1344)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !376, file: !19, line: 491, baseType: !176, size: 64, offset: 1472)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !366, file: !325, line: 180, baseType: !3987, size: 64, offset: 320)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!331, !1731, !223, !365, !299, !540, !346}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !366, file: !325, line: 182, baseType: !3987, size: 64, offset: 384)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !366, file: !325, line: 184, baseType: !3992, size: 64, offset: 448)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!114, !1731, !223, !365, !2083}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !354, file: !325, line: 90, baseType: !3996, size: 64, offset: 192)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !354, file: !325, line: 91, baseType: !3998, size: 64, offset: 256)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !315, file: !215, line: 120, baseType: !4000, size: 64, offset: 192)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!4003, !282}
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4005)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !87, line: 39, size: 384, elements: !4006)
!4006 = !{!4007, !4008, !4012, !4016, !4022, !4026}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4005, file: !87, line: 40, baseType: !86, size: 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4005, file: !87, line: 41, baseType: !4009, size: 64, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!720}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4005, file: !87, line: 42, baseType: !4013, size: 64, offset: 128)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!176}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4005, file: !87, line: 43, baseType: !4017, size: 64, offset: 192)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!2544, !4020}
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !87, line: 19, flags: DIFlagFwdDecl)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4005, file: !87, line: 44, baseType: !4023, size: 64, offset: 256)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!2544}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4005, file: !87, line: 45, baseType: !683, size: 64, offset: 320)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !315, file: !215, line: 121, baseType: !4028, size: 64, offset: 256)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!2544, !282}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !315, file: !215, line: 122, baseType: !4032, size: 64, offset: 320)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{null, !282, !4035, !4036}
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !214, file: !215, line: 70, baseType: !4038, size: 64, offset: 384)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !555, line: 190, size: 1152, elements: !4040)
!4040 = !{!4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4132, !4133, !4134, !4135, !4136, !4139}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4039, file: !555, line: 191, baseType: !250, size: 32)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4039, file: !555, line: 192, baseType: !250, size: 32, offset: 32)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4039, file: !555, line: 202, baseType: !4038, size: 64, offset: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4039, file: !555, line: 203, baseType: !218, size: 64, offset: 128)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4039, file: !555, line: 205, baseType: !752, size: 192, align: 64, offset: 192)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4039, file: !555, line: 207, baseType: !2544, size: 64, offset: 384)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4039, file: !555, line: 208, baseType: !7, size: 32, offset: 448)
!4048 = !DIDerivedType(tag: DW_TAG_member, scope: !4039, file: !555, line: 209, baseType: !4049, size: 256, offset: 512)
!4049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4039, file: !555, line: 209, size: 256, elements: !4050)
!4050 = !{!4051, !4060, !4064}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4049, file: !555, line: 210, baseType: !4052, size: 256)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !555, line: 153, size: 256, elements: !4053)
!4053 = !{!4054, !4055, !4056, !4059}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4052, file: !555, line: 154, baseType: !349, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4052, file: !555, line: 156, baseType: !1590, size: 64, offset: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4052, file: !555, line: 162, baseType: !4057, size: 64, offset: 128)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !555, line: 162, flags: DIFlagFwdDecl)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4052, file: !555, line: 167, baseType: !349, size: 64, offset: 192)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4049, file: !555, line: 211, baseType: !4061, size: 64)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !555, line: 170, size: 64, elements: !4062)
!4062 = !{!4063}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4061, file: !555, line: 171, baseType: !4038, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4049, file: !555, line: 212, baseType: !4065, size: 256)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !555, line: 174, size: 256, elements: !4066)
!4066 = !{!4067, !4127, !4130, !4131}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4065, file: !555, line: 175, baseType: !4068, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4070)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !555, line: 271, size: 768, elements: !4071)
!4071 = !{!4072, !4092, !4096, !4100, !4104, !4108, !4112, !4116, !4117, !4118, !4119, !4123}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4070, file: !555, line: 276, baseType: !4073, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!114, !4076}
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !555, line: 251, size: 1216, elements: !4078)
!4078 = !{!4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4077, file: !555, line: 253, baseType: !4038, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4077, file: !555, line: 254, baseType: !1731, size: 64, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4077, file: !555, line: 255, baseType: !1082, size: 64, offset: 128)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4077, file: !555, line: 256, baseType: !176, size: 64, offset: 192)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4077, file: !555, line: 259, baseType: !640, size: 256, offset: 256)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4077, file: !555, line: 260, baseType: !640, size: 256, offset: 512)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4077, file: !555, line: 261, baseType: !114, size: 32, offset: 768)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4077, file: !555, line: 262, baseType: !182, size: 128, offset: 832)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4077, file: !555, line: 263, baseType: !299, size: 64, offset: 960)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4077, file: !555, line: 265, baseType: !346, size: 64, offset: 1024)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4077, file: !555, line: 266, baseType: !720, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4077, file: !555, line: 267, baseType: !720, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4077, file: !555, line: 268, baseType: !2128, size: 64, offset: 1152)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4070, file: !555, line: 277, baseType: !4093, size: 64, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{null, !4076}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4070, file: !555, line: 290, baseType: !4097, size: 64, offset: 128)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!114, !1082, !176}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4070, file: !555, line: 292, baseType: !4101, size: 64, offset: 192)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!176, !1082, !2012}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4070, file: !555, line: 293, baseType: !4105, size: 64, offset: 256)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!176, !1082, !176, !2012}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4070, file: !555, line: 294, baseType: !4109, size: 64, offset: 320)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{null, !1082, !176}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4070, file: !555, line: 296, baseType: !4113, size: 64, offset: 384)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!331, !4076, !299, !346, !540}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4070, file: !555, line: 306, baseType: !346, size: 64, offset: 448)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4070, file: !555, line: 313, baseType: !720, size: 8, offset: 512)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4070, file: !555, line: 314, baseType: !4113, size: 64, offset: 576)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4070, file: !555, line: 317, baseType: !4120, size: 64, offset: 640)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!2070, !4076, !2072}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4070, file: !555, line: 320, baseType: !4124, size: 64, offset: 704)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!114, !4076, !2083}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4065, file: !555, line: 176, baseType: !4128, size: 64, offset: 64)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !555, line: 35, flags: DIFlagFwdDecl)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4065, file: !555, line: 177, baseType: !540, size: 64, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4065, file: !555, line: 178, baseType: !4038, size: 64, offset: 192)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4039, file: !555, line: 215, baseType: !176, size: 64, offset: 768)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4039, file: !555, line: 221, baseType: !452, size: 64, offset: 832)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4039, file: !555, line: 223, baseType: !269, size: 16, offset: 896)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4039, file: !555, line: 224, baseType: !341, size: 16, offset: 912)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4039, file: !555, line: 225, baseType: !4137, size: 64, offset: 960)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !555, line: 36, flags: DIFlagFwdDecl)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4039, file: !555, line: 227, baseType: !860, size: 128, align: 64, offset: 1024)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !214, file: !215, line: 71, baseType: !4141, size: 32, offset: 448)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4142, line: 19, size: 32, elements: !4143)
!4142 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4143 = !{!4144}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4141, file: !4142, line: 20, baseType: !1421, size: 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !214, file: !215, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !214, file: !215, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !214, file: !215, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !214, file: !215, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !214, file: !215, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !192, file: !179, line: 331, baseType: !7, size: 32, offset: 448)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !192, file: !179, line: 332, baseType: !269, size: 16, offset: 480)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !192, file: !179, line: 333, baseType: !269, size: 16, offset: 496)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !192, file: !179, line: 334, baseType: !269, size: 16, offset: 512)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !192, file: !179, line: 335, baseType: !269, size: 16, offset: 528)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !192, file: !179, line: 336, baseType: !7, size: 32, offset: 544)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !192, file: !179, line: 337, baseType: !258, size: 8, offset: 576)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !192, file: !179, line: 338, baseType: !258, size: 8, offset: 584)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !192, file: !179, line: 344, baseType: !4159, size: 64, offset: 640)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !179, line: 319, flags: DIFlagFwdDecl)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !192, file: !179, line: 345, baseType: !191, size: 64, offset: 704)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !192, file: !179, line: 347, baseType: !448, size: 32, offset: 768)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !192, file: !179, line: 348, baseType: !258, size: 8, offset: 800)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !192, file: !179, line: 349, baseType: !258, size: 8, offset: 808)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !192, file: !179, line: 350, baseType: !258, size: 8, offset: 816)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !192, file: !179, line: 351, baseType: !258, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !192, file: !179, line: 352, baseType: !258, size: 8, offset: 832)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !192, file: !179, line: 353, baseType: !258, size: 8, offset: 840)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !192, file: !179, line: 354, baseType: !267, size: 16, offset: 848)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !192, file: !179, line: 355, baseType: !991, size: 64, offset: 896)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !192, file: !179, line: 357, baseType: !4172, size: 64, offset: 960)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !179, line: 918, size: 2368, elements: !4174)
!4174 = !{!4175, !4176, !4177, !4192, !4196, !4200, !4208, !4212, !4213, !4217, !4218, !4222, !4242, !4243, !4244, !4703, !4708}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4173, file: !179, line: 919, baseType: !182, size: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4173, file: !179, line: 920, baseType: !218, size: 64, offset: 128)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4173, file: !179, line: 921, baseType: !4178, size: 64, offset: 192)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4180)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4181, line: 44, size: 320, elements: !4182)
!4181 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4182 = !{!4183, !4184, !4185, !4186, !4187, !4188, !4189, !4191}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4180, file: !4181, line: 45, baseType: !449, size: 32)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4180, file: !4181, line: 45, baseType: !449, size: 32, offset: 32)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4180, file: !4181, line: 46, baseType: !449, size: 32, offset: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4180, file: !4181, line: 46, baseType: !449, size: 32, offset: 96)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4180, file: !4181, line: 47, baseType: !449, size: 32, offset: 128)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4180, file: !4181, line: 47, baseType: !449, size: 32, offset: 160)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4180, file: !4181, line: 48, baseType: !4190, size: 64, offset: 192)
!4190 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4181, line: 15, baseType: !349)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4180, file: !4181, line: 49, baseType: !449, size: 32, offset: 256)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4173, file: !179, line: 922, baseType: !4193, size: 64, offset: 256)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!114, !191, !4178}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4173, file: !179, line: 923, baseType: !4197, size: 64, offset: 320)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{null, !191}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4173, file: !179, line: 924, baseType: !4201, size: 64, offset: 384)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!114, !191, !4204}
!4204 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !106, line: 60, baseType: !4205)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !106, line: 58, size: 32, elements: !4206)
!4206 = !{!4207}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4205, file: !106, line: 59, baseType: !114, size: 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4173, file: !179, line: 925, baseType: !4209, size: 64, offset: 448)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!114, !191}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4173, file: !179, line: 926, baseType: !4197, size: 64, offset: 512)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4173, file: !179, line: 927, baseType: !4214, size: 64, offset: 576)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!114, !191, !114}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4173, file: !179, line: 928, baseType: !4214, size: 64, offset: 640)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4173, file: !179, line: 929, baseType: !4219, size: 64, offset: 704)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!448, !191}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4173, file: !179, line: 930, baseType: !4223, size: 64, offset: 768)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4225)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !179, line: 837, size: 448, elements: !4226)
!4226 = !{!4227, !4233, !4237, !4238, !4239, !4240, !4241}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4225, file: !179, line: 839, baseType: !4228, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!4231, !191, !4232}
!4231 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !179, line: 814, baseType: !7)
!4232 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !179, line: 196, baseType: !7)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4225, file: !179, line: 843, baseType: !4234, size: 64, offset: 64)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!4231, !191}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4225, file: !179, line: 846, baseType: !4234, size: 64, offset: 128)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4225, file: !179, line: 849, baseType: !4197, size: 64, offset: 192)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4225, file: !179, line: 850, baseType: !4197, size: 64, offset: 256)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4225, file: !179, line: 853, baseType: !4197, size: 64, offset: 320)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4225, file: !179, line: 856, baseType: !4197, size: 64, offset: 384)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4173, file: !179, line: 931, baseType: !351, size: 64, offset: 832)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4173, file: !179, line: 932, baseType: !351, size: 64, offset: 896)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4173, file: !179, line: 933, baseType: !4245, size: 1152, offset: 960)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !93, line: 96, size: 1152, elements: !4246)
!4246 = !{!4247, !4248, !4665, !4666, !4667, !4668, !4669, !4681, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4245, file: !93, line: 97, baseType: !218, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4245, file: !93, line: 98, baseType: !4249, size: 64, offset: 64)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4251)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4252, line: 80, size: 1344, elements: !4253)
!4252 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4253 = !{!4254, !4255, !4256, !4257, !4258, !4259, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4655, !4656, !4657, !4658, !4659, !4660, !4664}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4251, file: !4252, line: 81, baseType: !218, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4251, file: !4252, line: 82, baseType: !218, size: 64, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4251, file: !4252, line: 83, baseType: !351, size: 64, offset: 128)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4251, file: !4252, line: 84, baseType: !351, size: 64, offset: 192)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4251, file: !4252, line: 85, baseType: !351, size: 64, offset: 256)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4251, file: !4252, line: 87, baseType: !4260, size: 64, offset: 320)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!114, !4263, !4327}
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !99, line: 705, size: 5824, elements: !4265)
!4265 = !{!4266, !4267, !4268, !4271, !4272, !4325, !4326, !4328, !4329, !4330, !4331, !4338, !4430, !4443, !4453, !4457, !4459, !4460, !4461, !4465, !4472, !4473, !4476, !4479, !4483, !4586, !4587, !4588, !4589, !4590, !4591, !4621, !4622, !4623, !4626, !4629, !4638, !4639, !4640, !4641, !4642, !4643}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4264, file: !99, line: 706, baseType: !214, size: 512)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4264, file: !99, line: 707, baseType: !4263, size: 64, offset: 512)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4264, file: !99, line: 709, baseType: !4269, size: 64, offset: 576)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !99, line: 37, flags: DIFlagFwdDecl)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4264, file: !99, line: 711, baseType: !218, size: 64, offset: 640)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4264, file: !99, line: 712, baseType: !4273, size: 64, offset: 704)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4275)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !99, line: 89, size: 384, elements: !4276)
!4276 = !{!4277, !4278, !4279, !4285, !4290, !4294}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4275, file: !99, line: 90, baseType: !218, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4275, file: !99, line: 91, baseType: !351, size: 64, offset: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4275, file: !99, line: 92, baseType: !4280, size: 64, offset: 128)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!114, !4283, !294}
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4264)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4275, file: !99, line: 93, baseType: !4286, size: 64, offset: 192)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!299, !4283, !4289, !4035, !4036}
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4275, file: !99, line: 95, baseType: !4291, size: 64, offset: 256)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{null, !4263}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4275, file: !99, line: 97, baseType: !4295, size: 64, offset: 320)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4297)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !106, line: 286, size: 1472, elements: !4298)
!4298 = !{!4299, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4297, file: !106, line: 287, baseType: !4300, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!114, !4263}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4297, file: !106, line: 288, baseType: !4291, size: 64, offset: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4297, file: !106, line: 289, baseType: !4300, size: 64, offset: 128)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4297, file: !106, line: 290, baseType: !4300, size: 64, offset: 192)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4297, file: !106, line: 291, baseType: !4300, size: 64, offset: 256)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4297, file: !106, line: 292, baseType: !4300, size: 64, offset: 320)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4297, file: !106, line: 293, baseType: !4300, size: 64, offset: 384)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4297, file: !106, line: 294, baseType: !4300, size: 64, offset: 448)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4297, file: !106, line: 295, baseType: !4300, size: 64, offset: 512)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4297, file: !106, line: 296, baseType: !4300, size: 64, offset: 576)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4297, file: !106, line: 297, baseType: !4300, size: 64, offset: 640)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4297, file: !106, line: 298, baseType: !4300, size: 64, offset: 704)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4297, file: !106, line: 299, baseType: !4300, size: 64, offset: 768)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4297, file: !106, line: 300, baseType: !4300, size: 64, offset: 832)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4297, file: !106, line: 301, baseType: !4300, size: 64, offset: 896)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4297, file: !106, line: 302, baseType: !4300, size: 64, offset: 960)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4297, file: !106, line: 303, baseType: !4300, size: 64, offset: 1024)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4297, file: !106, line: 304, baseType: !4300, size: 64, offset: 1088)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4297, file: !106, line: 305, baseType: !4300, size: 64, offset: 1152)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4297, file: !106, line: 306, baseType: !4300, size: 64, offset: 1216)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4297, file: !106, line: 307, baseType: !4300, size: 64, offset: 1280)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4297, file: !106, line: 308, baseType: !4300, size: 64, offset: 1344)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4297, file: !106, line: 309, baseType: !4300, size: 64, offset: 1408)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4264, file: !99, line: 714, baseType: !4249, size: 64, offset: 768)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4264, file: !99, line: 715, baseType: !4327, size: 64, offset: 832)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4264, file: !99, line: 717, baseType: !176, size: 64, offset: 896)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4264, file: !99, line: 719, baseType: !176, size: 64, offset: 960)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4264, file: !99, line: 721, baseType: !640, size: 256, offset: 1024)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4264, file: !99, line: 725, baseType: !4332, size: 448, offset: 1280)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !99, line: 517, size: 448, elements: !4333)
!4333 = !{!4334, !4335, !4336, !4337}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4332, file: !99, line: 518, baseType: !182, size: 128)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4332, file: !99, line: 519, baseType: !182, size: 128, offset: 128)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4332, file: !99, line: 520, baseType: !182, size: 128, offset: 256)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4332, file: !99, line: 521, baseType: !98, size: 32, offset: 384)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4264, file: !99, line: 726, baseType: !4339, size: 2496, offset: 1728)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !106, line: 663, size: 2496, elements: !4340)
!4340 = !{!4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4423, !4427}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4339, file: !106, line: 664, baseType: !4204, size: 32)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4339, file: !106, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4339, file: !106, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4339, file: !106, line: 667, baseType: !720, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4339, file: !106, line: 668, baseType: !720, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4339, file: !106, line: 669, baseType: !720, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4339, file: !106, line: 670, baseType: !720, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4339, file: !106, line: 671, baseType: !720, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4339, file: !106, line: 672, baseType: !720, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4339, file: !106, line: 673, baseType: !720, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4339, file: !106, line: 674, baseType: !720, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4339, file: !106, line: 675, baseType: !448, size: 32, offset: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4339, file: !106, line: 676, baseType: !230, size: 32, offset: 96)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4339, file: !106, line: 678, baseType: !182, size: 128, offset: 128)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4339, file: !106, line: 679, baseType: !589, size: 256, offset: 256)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4339, file: !106, line: 680, baseType: !4357, size: 64, offset: 512)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4359, line: 43, size: 1536, elements: !4360)
!4359 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4360 = !{!4361, !4362, !4363, !4364, !4365, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4358, file: !4359, line: 44, baseType: !218, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4358, file: !4359, line: 45, baseType: !114, size: 32, offset: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4358, file: !4359, line: 46, baseType: !182, size: 128, offset: 128)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4358, file: !4359, line: 47, baseType: !230, size: 32, offset: 256)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4358, file: !4359, line: 48, baseType: !4366, size: 64, offset: 320)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !106, line: 629, flags: DIFlagFwdDecl)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4358, file: !4359, line: 49, baseType: !882, size: 320, offset: 384)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4358, file: !4359, line: 50, baseType: !349, size: 64, offset: 704)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4358, file: !4359, line: 51, baseType: !1536, size: 64, offset: 768)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4358, file: !4359, line: 52, baseType: !1536, size: 64, offset: 832)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4358, file: !4359, line: 53, baseType: !1536, size: 64, offset: 896)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4358, file: !4359, line: 54, baseType: !1536, size: 64, offset: 960)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4358, file: !4359, line: 55, baseType: !1536, size: 64, offset: 1024)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4358, file: !4359, line: 56, baseType: !349, size: 64, offset: 1088)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4358, file: !4359, line: 57, baseType: !349, size: 64, offset: 1152)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4358, file: !4359, line: 58, baseType: !349, size: 64, offset: 1216)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4358, file: !4359, line: 59, baseType: !349, size: 64, offset: 1280)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4358, file: !4359, line: 60, baseType: !349, size: 64, offset: 1344)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4358, file: !4359, line: 61, baseType: !4263, size: 64, offset: 1408)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4358, file: !4359, line: 62, baseType: !720, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4358, file: !4359, line: 63, baseType: !720, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4339, file: !106, line: 681, baseType: !720, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4339, file: !106, line: 682, baseType: !720, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4339, file: !106, line: 683, baseType: !720, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4339, file: !106, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4339, file: !106, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4339, file: !106, line: 690, baseType: !1528, size: 512, offset: 640)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4339, file: !106, line: 691, baseType: !452, size: 64, offset: 1152)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4339, file: !106, line: 692, baseType: !900, size: 256, offset: 1216)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4339, file: !106, line: 693, baseType: !1394, size: 192, offset: 1472)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4339, file: !106, line: 694, baseType: !4366, size: 64, offset: 1664)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4339, file: !106, line: 695, baseType: !250, size: 32, offset: 1728)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4339, file: !106, line: 696, baseType: !250, size: 32, offset: 1760)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4339, file: !106, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4339, file: !106, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4339, file: !106, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4339, file: !106, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4339, file: !106, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4339, file: !106, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4339, file: !106, line: 703, baseType: !720, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4339, file: !106, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4339, file: !106, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4339, file: !106, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4339, file: !106, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4339, file: !106, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4339, file: !106, line: 709, baseType: !7, size: 32, offset: 1824)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4339, file: !106, line: 710, baseType: !105, size: 32, offset: 1856)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4339, file: !106, line: 711, baseType: !113, size: 32, offset: 1888)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4339, file: !106, line: 712, baseType: !113, size: 32, offset: 1920)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4339, file: !106, line: 713, baseType: !114, size: 32, offset: 1952)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4339, file: !106, line: 714, baseType: !114, size: 32, offset: 1984)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4339, file: !106, line: 715, baseType: !452, size: 64, offset: 2048)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4339, file: !106, line: 716, baseType: !452, size: 64, offset: 2112)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4339, file: !106, line: 717, baseType: !452, size: 64, offset: 2176)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4339, file: !106, line: 718, baseType: !452, size: 64, offset: 2240)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4339, file: !106, line: 720, baseType: !4418, size: 64, offset: 2304)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !106, line: 632, size: 64, elements: !4420)
!4420 = !{!4421, !4422}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4419, file: !106, line: 633, baseType: !230, size: 32)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4419, file: !106, line: 634, baseType: !7, size: 32, offset: 32)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4339, file: !106, line: 721, baseType: !4424, size: 64, offset: 2368)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{null, !4263, !636}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4339, file: !106, line: 722, baseType: !4428, size: 64, offset: 2432)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !106, line: 722, flags: DIFlagFwdDecl)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4264, file: !99, line: 727, baseType: !4431, size: 64, offset: 4224)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !106, line: 742, size: 1792, elements: !4433)
!4433 = !{!4434, !4435, !4436, !4440, !4441, !4442}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4432, file: !106, line: 743, baseType: !4297, size: 1472)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4432, file: !106, line: 744, baseType: !4300, size: 64, offset: 1472)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4432, file: !106, line: 745, baseType: !4437, size: 64, offset: 1536)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{null, !4263, !720}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4432, file: !106, line: 746, baseType: !4300, size: 64, offset: 1600)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4432, file: !106, line: 747, baseType: !4291, size: 64, offset: 1664)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4432, file: !106, line: 748, baseType: !4291, size: 64, offset: 1728)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4264, file: !99, line: 736, baseType: !4444, size: 128, offset: 4288)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !99, line: 529, size: 128, elements: !4445)
!4445 = !{!4446, !4450}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4444, file: !99, line: 531, baseType: !4447, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4449, line: 13, flags: DIFlagFwdDecl)
!4449 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4444, file: !99, line: 532, baseType: !4451, size: 64, offset: 64)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !99, line: 49, flags: DIFlagFwdDecl)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4264, file: !99, line: 738, baseType: !4454, size: 64, offset: 4416)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4456)
!4456 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !99, line: 738, flags: DIFlagFwdDecl)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4264, file: !99, line: 740, baseType: !4458, size: 64, offset: 4480)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4264, file: !99, line: 741, baseType: !452, size: 64, offset: 4544)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4264, file: !99, line: 746, baseType: !452, size: 64, offset: 4608)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4264, file: !99, line: 747, baseType: !4462, size: 64, offset: 4672)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4464)
!4464 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !99, line: 747, flags: DIFlagFwdDecl)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4264, file: !99, line: 749, baseType: !4466, size: 64, offset: 4736)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !99, line: 428, size: 128, elements: !4468)
!4468 = !{!4469, !4470, !4471}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4467, file: !99, line: 433, baseType: !7, size: 32)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4467, file: !99, line: 434, baseType: !7, size: 32, offset: 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4467, file: !99, line: 435, baseType: !349, size: 64, offset: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4264, file: !99, line: 751, baseType: !182, size: 128, offset: 4800)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4264, file: !99, line: 762, baseType: !4474, size: 64, offset: 4928)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !99, line: 762, flags: DIFlagFwdDecl)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4264, file: !99, line: 770, baseType: !4477, offset: 4992)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4478, line: 5, elements: !929)
!4478 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4264, file: !99, line: 772, baseType: !4480, size: 64, offset: 4992)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4482, line: 18, flags: DIFlagFwdDecl)
!4482 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4264, file: !99, line: 773, baseType: !4484, size: 64, offset: 5056)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4486, line: 41, size: 512, elements: !4487)
!4486 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4487 = !{!4488, !4489, !4582, !4583, !4584, !4585}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4485, file: !4486, line: 42, baseType: !4484, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4485, file: !4486, line: 43, baseType: !4490, size: 64, offset: 64)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4492)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4486, line: 125, size: 1408, elements: !4493)
!4493 = !{!4494, !4498, !4502, !4508, !4512, !4513, !4517, !4521, !4525, !4529, !4533, !4534, !4538, !4542, !4546, !4557, !4558, !4559, !4560, !4570, !4574, !4578}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4492, file: !4486, line: 126, baseType: !4495, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!4484, !4484}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4492, file: !4486, line: 127, baseType: !4499, size: 64, offset: 64)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{null, !4484}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4492, file: !4486, line: 128, baseType: !4503, size: 64, offset: 128)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!720, !4506}
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4485)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4492, file: !4486, line: 129, baseType: !4509, size: 64, offset: 192)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{!2544, !4506, !4283}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4492, file: !4486, line: 131, baseType: !4503, size: 64, offset: 256)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4492, file: !4486, line: 133, baseType: !4514, size: 64, offset: 320)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!121, !4506}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4492, file: !4486, line: 134, baseType: !4518, size: 64, offset: 384)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!720, !4506, !218}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4492, file: !4486, line: 136, baseType: !4522, size: 64, offset: 448)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!114, !4506, !218, !7, !176, !346}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4492, file: !4486, line: 141, baseType: !4526, size: 64, offset: 512)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!114, !4506, !218, !977, !346}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4492, file: !4486, line: 144, baseType: !4530, size: 64, offset: 576)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!218, !4506}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4492, file: !4486, line: 145, baseType: !4530, size: 64, offset: 640)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4492, file: !4486, line: 146, baseType: !4535, size: 64, offset: 704)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!4484, !4506}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4492, file: !4486, line: 148, baseType: !4539, size: 64, offset: 768)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!4484, !4506, !4484}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4492, file: !4486, line: 151, baseType: !4543, size: 64, offset: 832)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!4484, !4506, !218}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4492, file: !4486, line: 153, baseType: !4547, size: 64, offset: 896)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!114, !4506, !218, !218, !7, !7, !4550}
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4486, line: 94, size: 640, elements: !4552)
!4552 = !{!4553, !4554, !4555}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4551, file: !4486, line: 95, baseType: !4484, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4551, file: !4486, line: 96, baseType: !7, size: 32, offset: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4551, file: !4486, line: 97, baseType: !4556, size: 512, offset: 128)
!4556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 512, elements: !1571)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4492, file: !4486, line: 158, baseType: !4539, size: 64, offset: 960)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4492, file: !4486, line: 161, baseType: !4535, size: 64, offset: 1024)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4492, file: !4486, line: 163, baseType: !4495, size: 64, offset: 1088)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4492, file: !4486, line: 164, baseType: !4561, size: 64, offset: 1152)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!114, !4506, !4564}
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4486, line: 73, size: 128, elements: !4566)
!4566 = !{!4567, !4568, !4569}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4565, file: !4486, line: 74, baseType: !7, size: 32)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4565, file: !4486, line: 75, baseType: !7, size: 32, offset: 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4565, file: !4486, line: 76, baseType: !4506, size: 64, offset: 64)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4492, file: !4486, line: 166, baseType: !4571, size: 64, offset: 1216)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!176, !4484, !114}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4492, file: !4486, line: 167, baseType: !4575, size: 64, offset: 1280)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!114, !4506, !7}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4492, file: !4486, line: 168, baseType: !4579, size: 64, offset: 1344)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!114, !4484}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4485, file: !4486, line: 44, baseType: !4263, size: 64, offset: 128)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4485, file: !4486, line: 45, baseType: !182, size: 128, offset: 192)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4485, file: !4486, line: 46, baseType: !182, size: 128, offset: 320)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4485, file: !4486, line: 47, baseType: !258, size: 8, offset: 448)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4264, file: !99, line: 776, baseType: !114, size: 32, offset: 5120)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4264, file: !99, line: 778, baseType: !535, size: 32, offset: 5152)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4264, file: !99, line: 779, baseType: !448, size: 32, offset: 5184)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4264, file: !99, line: 781, baseType: !230, size: 32, offset: 5216)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4264, file: !99, line: 782, baseType: !182, size: 128, offset: 5248)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4264, file: !99, line: 784, baseType: !4592, size: 64, offset: 5376)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4594)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4595, line: 52, size: 768, elements: !4596)
!4595 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4596 = !{!4597, !4598, !4599, !4600, !4601, !4605, !4609, !4610, !4611, !4612, !4616, !4620}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4594, file: !4595, line: 53, baseType: !218, size: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4594, file: !4595, line: 55, baseType: !351, size: 64, offset: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4594, file: !4595, line: 56, baseType: !351, size: 64, offset: 128)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4594, file: !4595, line: 58, baseType: !4280, size: 64, offset: 192)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4594, file: !4595, line: 59, baseType: !4602, size: 64, offset: 256)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!299, !4283, !4289}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4594, file: !4595, line: 61, baseType: !4606, size: 64, offset: 320)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{null, !4592}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4594, file: !4595, line: 62, baseType: !4291, size: 64, offset: 384)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4594, file: !4595, line: 64, baseType: !4300, size: 64, offset: 448)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4594, file: !4595, line: 66, baseType: !4003, size: 64, offset: 512)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4594, file: !4595, line: 67, baseType: !4613, size: 64, offset: 576)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!2544, !4283}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4594, file: !4595, line: 69, baseType: !4617, size: 64, offset: 640)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{null, !4283, !4035, !4036}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4594, file: !4595, line: 71, baseType: !4295, size: 64, offset: 704)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4264, file: !99, line: 785, baseType: !351, size: 64, offset: 5440)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4264, file: !99, line: 787, baseType: !4291, size: 64, offset: 5504)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4264, file: !99, line: 788, baseType: !4624, size: 64, offset: 5568)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !99, line: 46, flags: DIFlagFwdDecl)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4264, file: !99, line: 789, baseType: !4627, size: 64, offset: 5632)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !99, line: 48, flags: DIFlagFwdDecl)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4264, file: !99, line: 791, baseType: !4630, size: 64, offset: 5696)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !99, line: 597, size: 128, elements: !4632)
!4632 = !{!4633, !4634, !4635, !4636, !4637}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4631, file: !99, line: 598, baseType: !127, size: 32)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4631, file: !99, line: 599, baseType: !136, size: 32, offset: 32)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4631, file: !99, line: 600, baseType: !141, size: 32, offset: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4631, file: !99, line: 601, baseType: !720, size: 8, offset: 96)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4631, file: !99, line: 602, baseType: !720, size: 8, offset: 104)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4264, file: !99, line: 793, baseType: !146, size: 32, offset: 5760)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4264, file: !99, line: 795, baseType: !720, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4264, file: !99, line: 796, baseType: !720, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4264, file: !99, line: 797, baseType: !720, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4264, file: !99, line: 798, baseType: !720, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4264, file: !99, line: 799, baseType: !720, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4251, file: !4252, line: 88, baseType: !4280, size: 64, offset: 384)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4251, file: !4252, line: 89, baseType: !4300, size: 64, offset: 448)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4251, file: !4252, line: 90, baseType: !4291, size: 64, offset: 512)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4251, file: !4252, line: 91, baseType: !4291, size: 64, offset: 576)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4251, file: !4252, line: 92, baseType: !4291, size: 64, offset: 640)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4251, file: !4252, line: 94, baseType: !4300, size: 64, offset: 704)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4251, file: !4252, line: 95, baseType: !4300, size: 64, offset: 768)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4251, file: !4252, line: 97, baseType: !4652, size: 64, offset: 832)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!114, !4263, !4204}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4251, file: !4252, line: 98, baseType: !4300, size: 64, offset: 896)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4251, file: !4252, line: 100, baseType: !4300, size: 64, offset: 960)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4251, file: !4252, line: 102, baseType: !4300, size: 64, offset: 1024)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4251, file: !4252, line: 103, baseType: !4291, size: 64, offset: 1088)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4251, file: !4252, line: 105, baseType: !4295, size: 64, offset: 1152)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4251, file: !4252, line: 107, baseType: !4661, size: 64, offset: 1216)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4663)
!4663 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4252, line: 107, flags: DIFlagFwdDecl)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4251, file: !4252, line: 109, baseType: !720, size: 8, offset: 1280)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4245, file: !93, line: 100, baseType: !569, size: 64, offset: 128)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4245, file: !93, line: 101, baseType: !218, size: 64, offset: 192)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4245, file: !93, line: 103, baseType: !720, size: 8, offset: 256)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4245, file: !93, line: 104, baseType: !92, size: 32, offset: 288)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4245, file: !93, line: 106, baseType: !4670, size: 64, offset: 320)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4672)
!4672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4181, line: 282, size: 1600, elements: !4673)
!4673 = !{!4674, !4675, !4676, !4680}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4672, file: !4181, line: 283, baseType: !3497, size: 256)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4672, file: !4181, line: 284, baseType: !3497, size: 256, offset: 256)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4672, file: !4181, line: 285, baseType: !4677, size: 1024, offset: 512)
!4677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 1024, elements: !4678)
!4678 = !{!4679}
!4679 = !DISubrange(count: 128)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4672, file: !4181, line: 286, baseType: !2544, size: 64, offset: 1536)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4245, file: !93, line: 107, baseType: !4682, size: 64, offset: 384)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4684)
!4684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4181, line: 217, size: 256, elements: !4685)
!4685 = !{!4686, !4687, !4688, !4689}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4684, file: !4181, line: 218, baseType: !3504, size: 128)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4684, file: !4181, line: 219, baseType: !4190, size: 64, offset: 128)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4684, file: !4181, line: 220, baseType: !449, size: 32, offset: 192)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4684, file: !4181, line: 221, baseType: !449, size: 32, offset: 224)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4245, file: !93, line: 109, baseType: !4300, size: 64, offset: 448)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4245, file: !93, line: 110, baseType: !4291, size: 64, offset: 512)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4245, file: !93, line: 111, baseType: !4300, size: 64, offset: 576)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4245, file: !93, line: 112, baseType: !4291, size: 64, offset: 640)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4245, file: !93, line: 113, baseType: !4652, size: 64, offset: 704)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4245, file: !93, line: 114, baseType: !4300, size: 64, offset: 768)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4245, file: !93, line: 115, baseType: !351, size: 64, offset: 832)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4245, file: !93, line: 116, baseType: !351, size: 64, offset: 896)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4245, file: !93, line: 118, baseType: !4295, size: 64, offset: 960)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4245, file: !93, line: 119, baseType: !4291, size: 64, offset: 1024)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4245, file: !93, line: 121, baseType: !4701, size: 64, offset: 1088)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !93, line: 121, flags: DIFlagFwdDecl)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4173, file: !179, line: 934, baseType: !4704, size: 192, offset: 2112)
!4704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !179, line: 801, size: 192, elements: !4705)
!4705 = !{!4706, !4707}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4704, file: !179, line: 802, baseType: !230, size: 32)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4704, file: !179, line: 803, baseType: !182, size: 128, offset: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4173, file: !179, line: 935, baseType: !720, size: 8, offset: 2304)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !192, file: !179, line: 358, baseType: !452, size: 64, offset: 1024)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !192, file: !179, line: 364, baseType: !4467, size: 128, offset: 1088)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !192, file: !179, line: 366, baseType: !4712, size: 32, offset: 1216)
!4712 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !179, line: 171, baseType: !114)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !192, file: !179, line: 369, baseType: !258, size: 8, offset: 1248)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !192, file: !179, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !192, file: !179, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !192, file: !179, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !192, file: !179, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !192, file: !179, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !192, file: !179, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !192, file: !179, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !192, file: !179, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !192, file: !179, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !192, file: !179, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !192, file: !179, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !192, file: !179, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !192, file: !179, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !192, file: !179, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !192, file: !179, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !192, file: !179, line: 390, baseType: !7, size: 32, offset: 1280)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !192, file: !179, line: 391, baseType: !7, size: 32, offset: 1312)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !192, file: !179, line: 394, baseType: !4732, size: 64, offset: 1344)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !179, line: 316, flags: DIFlagFwdDecl)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !192, file: !179, line: 395, baseType: !267, size: 16, offset: 1408)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !192, file: !179, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !192, file: !179, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !192, file: !179, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !192, file: !179, line: 402, baseType: !4232, size: 32, offset: 1440)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !192, file: !179, line: 403, baseType: !4264, size: 5824, offset: 1472)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !192, file: !179, line: 405, baseType: !114, size: 32, offset: 7296)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !192, file: !179, line: 411, baseType: !7, size: 32, offset: 7328)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !192, file: !179, line: 412, baseType: !4743, size: 5632, offset: 7360)
!4743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4744, size: 5632, elements: !4757)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4745, line: 21, size: 512, elements: !4746)
!4745 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4746 = !{!4747, !4749, !4750, !4751, !4752, !4753, !4755, !4756}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4744, file: !4745, line: 22, baseType: !4748, size: 64)
!4748 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !175, line: 164, baseType: !3247)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4744, file: !4745, line: 23, baseType: !4748, size: 64, offset: 64)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4744, file: !4745, line: 24, baseType: !218, size: 64, offset: 128)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4744, file: !4745, line: 25, baseType: !349, size: 64, offset: 192)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4744, file: !4745, line: 26, baseType: !349, size: 64, offset: 256)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4744, file: !4745, line: 27, baseType: !4754, size: 64, offset: 320)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4744, file: !4745, line: 27, baseType: !4754, size: 64, offset: 384)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4744, file: !4745, line: 27, baseType: !4754, size: 64, offset: 448)
!4757 = !{!4758}
!4758 = !DISubrange(count: 11)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !192, file: !179, line: 413, baseType: !4744, size: 512, offset: 12992)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !192, file: !179, line: 415, baseType: !720, size: 8, offset: 13504)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !192, file: !179, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !192, file: !179, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !192, file: !179, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !192, file: !179, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !192, file: !179, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !192, file: !179, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !192, file: !179, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !192, file: !179, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !192, file: !179, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !192, file: !179, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !192, file: !179, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !192, file: !179, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !192, file: !179, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !192, file: !179, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !192, file: !179, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !192, file: !179, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !192, file: !179, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !192, file: !179, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !192, file: !179, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !192, file: !179, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !192, file: !179, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !192, file: !179, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !192, file: !179, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !192, file: !179, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !192, file: !179, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !192, file: !179, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !192, file: !179, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !192, file: !179, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !192, file: !179, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !192, file: !179, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !192, file: !179, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !192, file: !179, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !192, file: !179, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !192, file: !179, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !192, file: !179, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !192, file: !179, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !192, file: !179, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !192, file: !179, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !192, file: !179, line: 468, baseType: !4800, size: 16, offset: 13552)
!4800 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !179, line: 222, baseType: !269)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !192, file: !179, line: 469, baseType: !250, size: 32, offset: 13568)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !192, file: !179, line: 471, baseType: !230, size: 32, offset: 13600)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !192, file: !179, line: 472, baseType: !4804, size: 512, offset: 13632)
!4804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 512, elements: !2722)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !192, file: !179, line: 473, baseType: !1010, size: 64, offset: 14144)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !192, file: !179, line: 474, baseType: !4807, size: 704, offset: 14208)
!4807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 704, elements: !4757)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !192, file: !179, line: 475, baseType: !4807, size: 704, offset: 14912)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !192, file: !179, line: 487, baseType: !176, size: 64, offset: 15616)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !192, file: !179, line: 488, baseType: !598, size: 32, offset: 15680)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !192, file: !179, line: 490, baseType: !4812, size: 320, offset: 15744)
!4812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !179, line: 309, size: 320, elements: !4813)
!4813 = !{!4814, !4815, !4816}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4812, file: !179, line: 310, baseType: !640, size: 256)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4812, file: !179, line: 311, baseType: !7, size: 32, offset: 256)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4812, file: !179, line: 312, baseType: !258, size: 8, offset: 288)
!4817 = !DIDerivedType(tag: DW_TAG_member, scope: !192, file: !179, line: 497, baseType: !4818, size: 64, offset: 16064)
!4818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !192, file: !179, line: 497, size: 64, elements: !4819)
!4819 = !{!4820, !4823}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4818, file: !179, line: 498, baseType: !4821, size: 64)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !179, line: 317, flags: DIFlagFwdDecl)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4818, file: !179, line: 499, baseType: !191, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !192, file: !179, line: 501, baseType: !267, size: 16, offset: 16128)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !192, file: !179, line: 502, baseType: !258, size: 8, offset: 16144)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !192, file: !179, line: 505, baseType: !267, size: 16, offset: 16160)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !192, file: !179, line: 506, baseType: !448, size: 32, offset: 16192)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !192, file: !179, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !192, file: !179, line: 510, baseType: !267, size: 16, offset: 16240)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !192, file: !179, line: 511, baseType: !267, size: 16, offset: 16256)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !192, file: !179, line: 519, baseType: !267, size: 16, offset: 16272)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !192, file: !179, line: 520, baseType: !3247, size: 64, offset: 16320)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !192, file: !179, line: 521, baseType: !346, size: 64, offset: 16384)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !192, file: !179, line: 526, baseType: !218, size: 64, offset: 16448)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !192, file: !179, line: 528, baseType: !349, size: 64, offset: 16512)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !192, file: !179, line: 531, baseType: !4837, size: 56, offset: 16576)
!4837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 56, elements: !761)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !178, file: !179, line: 653, baseType: !182, size: 128, offset: 512)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !178, file: !179, line: 655, baseType: !4840, size: 256, offset: 640)
!4840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4754, size: 256, elements: !870)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !178, file: !179, line: 656, baseType: !182, size: 128, offset: 896)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !178, file: !179, line: 657, baseType: !4744, size: 512, offset: 1024)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !178, file: !179, line: 659, baseType: !4844, size: 64, offset: 1536)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !179, line: 773, size: 320, elements: !4846)
!4846 = !{!4847, !4851, !4855, !4859, !4863}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4845, file: !179, line: 774, baseType: !4848, size: 64)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!114, !177}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4845, file: !179, line: 775, baseType: !4852, size: 64, offset: 64)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{null, !177}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4845, file: !179, line: 776, baseType: !4856, size: 64, offset: 128)
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = !DISubroutineType(types: !4858)
!4858 = !{!176, !177, !7, !114}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4845, file: !179, line: 777, baseType: !4860, size: 64, offset: 192)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!114, !177, !7, !114, !114, !2621}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4845, file: !179, line: 778, baseType: !4864, size: 64, offset: 256)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!114, !177, !7, !114, !114, !448}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !178, file: !179, line: 660, baseType: !176, size: 64, offset: 1600)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !178, file: !179, line: 661, baseType: !199, size: 64, offset: 1664)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !178, file: !179, line: 663, baseType: !212, size: 8, offset: 1728)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !178, file: !179, line: 664, baseType: !212, size: 8, offset: 1736)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !178, file: !179, line: 665, baseType: !212, size: 8, offset: 1744)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !178, file: !179, line: 666, baseType: !212, size: 8, offset: 1752)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !178, file: !179, line: 671, baseType: !4874, size: 384, offset: 1760)
!4874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 384, elements: !4875)
!4875 = !{!4876}
!4876 = !DISubrange(count: 48)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !178, file: !179, line: 673, baseType: !269, size: 16, offset: 2144)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !178, file: !179, line: 674, baseType: !4879, size: 16, offset: 2160)
!4879 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !179, line: 255, baseType: !269)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !178, file: !179, line: 675, baseType: !4263, size: 64, offset: 2176)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !178, file: !179, line: 676, baseType: !4264, size: 5824, offset: 2240)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !178, file: !179, line: 677, baseType: !365, size: 64, offset: 8064)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !178, file: !179, line: 678, baseType: !365, size: 64, offset: 8128)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !178, file: !179, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !178, file: !179, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4886 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !175, line: 42, baseType: !349)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_root_info", file: !3, line: 15, size: 768, elements: !4890)
!4890 = !{!4891, !5187, !5196, !5197, !5198}
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !4889, file: !3, line: 16, baseType: !4892, size: 448)
!4892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_root_info", file: !4893, line: 63, size: 448, elements: !4894)
!4893 = !DIFile(filename: "./include/linux/pci-acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b056ae586c3e75421026b5d6c84c2668")
!4894 = !{!4895, !5169, !5170, !5185, !5186}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4892, file: !4893, line: 64, baseType: !4896, size: 64)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_root", file: !4898, line: 611, size: 896, elements: !4899)
!4898 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!4899 = !{!4900, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4897, file: !4898, line: 612, baseType: !4901, size: 64)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !4898, line: 367, size: 11200, elements: !4903)
!4903 = !{!4904, !4905, !4906, !4909, !4910, !4911, !4912, !4921, !4939, !5015, !5045, !5069, !5090, !5094, !5103, !5135, !5149, !5153, !5154, !5155, !5156, !5157, !5158, !5159}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !4902, file: !4898, line: 368, baseType: !448, size: 32)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !4902, file: !4898, line: 369, baseType: !114, size: 32, offset: 32)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4902, file: !4898, line: 370, baseType: !4907, size: 64, offset: 64)
!4907 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !4908, line: 424, baseType: !176)
!4908 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4902, file: !4898, line: 371, baseType: !4485, size: 512, offset: 128)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !4902, file: !4898, line: 372, baseType: !182, size: 128, offset: 640)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !4902, file: !4898, line: 373, baseType: !182, size: 128, offset: 768)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4902, file: !4898, line: 374, baseType: !4913, size: 32, offset: 896)
!4913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !4898, line: 181, size: 32, elements: !4914)
!4914 = !{!4915, !4916, !4917, !4918, !4919, !4920}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !4913, file: !4898, line: 182, baseType: !448, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4913, file: !4898, line: 183, baseType: !448, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !4913, file: !4898, line: 184, baseType: !448, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !4913, file: !4898, line: 185, baseType: !448, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !4913, file: !4898, line: 186, baseType: !448, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4913, file: !4898, line: 187, baseType: !448, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4902, file: !4898, line: 375, baseType: !4922, size: 32, offset: 928)
!4922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !4898, line: 192, size: 32, elements: !4923)
!4923 = !{!4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938}
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !4922, file: !4898, line: 193, baseType: !448, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4922, file: !4898, line: 194, baseType: !448, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !4922, file: !4898, line: 195, baseType: !448, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !4922, file: !4898, line: 196, baseType: !448, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4922, file: !4898, line: 197, baseType: !448, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4922, file: !4898, line: 198, baseType: !448, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !4922, file: !4898, line: 199, baseType: !448, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !4922, file: !4898, line: 200, baseType: !448, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !4922, file: !4898, line: 201, baseType: !448, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !4922, file: !4898, line: 202, baseType: !448, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !4922, file: !4898, line: 203, baseType: !448, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !4922, file: !4898, line: 204, baseType: !448, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !4922, file: !4898, line: 205, baseType: !448, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !4922, file: !4898, line: 206, baseType: !448, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4922, file: !4898, line: 207, baseType: !448, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !4902, file: !4898, line: 376, baseType: !4940, size: 960, offset: 960)
!4940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !4898, line: 238, size: 960, elements: !4941)
!4941 = !{!4942, !4944, !4945, !4953, !4955, !4956, !4957, !4962, !4965}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !4940, file: !4898, line: 239, baseType: !4943, size: 64)
!4943 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !4898, line: 220, baseType: !3043)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !4940, file: !4898, line: 240, baseType: !114, size: 32, offset: 64)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4940, file: !4898, line: 241, baseType: !4946, size: 32, offset: 96)
!4946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !4898, line: 230, size: 32, elements: !4947)
!4947 = !{!4948, !4949, !4950, !4951, !4952}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !4946, file: !4898, line: 231, baseType: !448, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !4946, file: !4898, line: 232, baseType: !448, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !4946, file: !4898, line: 233, baseType: !448, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !4946, file: !4898, line: 234, baseType: !448, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4946, file: !4898, line: 235, baseType: !448, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !4940, file: !4898, line: 242, baseType: !4954, size: 64, offset: 128)
!4954 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !4898, line: 221, baseType: !452)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !4940, file: !4898, line: 243, baseType: !299, size: 64, offset: 192)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4940, file: !4898, line: 244, baseType: !182, size: 128, offset: 256)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !4940, file: !4898, line: 245, baseType: !4958, size: 320, offset: 384)
!4958 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !4898, line: 222, baseType: !4959)
!4959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 320, elements: !4960)
!4960 = !{!4961}
!4961 = !DISubrange(count: 40)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !4940, file: !4898, line: 246, baseType: !4963, size: 160, offset: 704)
!4963 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !4898, line: 223, baseType: !4964)
!4964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 160, elements: !3343)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !4940, file: !4898, line: 247, baseType: !4966, size: 64, offset: 896)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !4908, line: 908, size: 192, elements: !4968)
!4968 = !{!4969, !4971, !4976, !4982, !4989, !4995, !5001, !5009}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4967, file: !4908, line: 909, baseType: !4970, size: 32)
!4970 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !4908, line: 644, baseType: !448)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !4967, file: !4908, line: 913, baseType: !4972, size: 128)
!4972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4967, file: !4908, line: 910, size: 128, elements: !4973)
!4973 = !{!4974, !4975}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4972, file: !4908, line: 911, baseType: !4970, size: 32)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4972, file: !4908, line: 912, baseType: !452, size: 64, offset: 64)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4967, file: !4908, line: 919, baseType: !4977, size: 128)
!4977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4967, file: !4908, line: 915, size: 128, elements: !4978)
!4978 = !{!4979, !4980, !4981}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4977, file: !4908, line: 916, baseType: !4970, size: 32)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4977, file: !4908, line: 917, baseType: !448, size: 32, offset: 32)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4977, file: !4908, line: 918, baseType: !299, size: 64, offset: 64)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4967, file: !4908, line: 925, baseType: !4983, size: 128)
!4983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4967, file: !4908, line: 921, size: 128, elements: !4984)
!4984 = !{!4985, !4986, !4987}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4983, file: !4908, line: 922, baseType: !4970, size: 32)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4983, file: !4908, line: 923, baseType: !448, size: 32, offset: 32)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4983, file: !4908, line: 924, baseType: !4988, size: 64, offset: 64)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !4967, file: !4908, line: 931, baseType: !4990, size: 128)
!4990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4967, file: !4908, line: 927, size: 128, elements: !4991)
!4991 = !{!4992, !4993, !4994}
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4990, file: !4908, line: 928, baseType: !4970, size: 32)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4990, file: !4908, line: 929, baseType: !448, size: 32, offset: 32)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !4990, file: !4908, line: 930, baseType: !4966, size: 64, offset: 64)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !4967, file: !4908, line: 937, baseType: !4996, size: 128)
!4996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4967, file: !4908, line: 933, size: 128, elements: !4997)
!4997 = !{!4998, !4999, !5000}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4996, file: !4908, line: 934, baseType: !4970, size: 32)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !4996, file: !4908, line: 935, baseType: !4970, size: 32, offset: 32)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4996, file: !4908, line: 936, baseType: !4907, size: 64, offset: 64)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !4967, file: !4908, line: 944, baseType: !5002, size: 192)
!5002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4967, file: !4908, line: 939, size: 192, elements: !5003)
!5003 = !{!5004, !5005, !5006, !5008}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5002, file: !4908, line: 940, baseType: !4970, size: 32)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !5002, file: !4908, line: 941, baseType: !448, size: 32, offset: 32)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !5002, file: !4908, line: 942, baseType: !5007, size: 64, offset: 64)
!5007 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !4908, line: 128, baseType: !452)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !5002, file: !4908, line: 943, baseType: !448, size: 32, offset: 128)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !4967, file: !4908, line: 950, baseType: !5010, size: 96)
!5010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4967, file: !4908, line: 946, size: 96, elements: !5011)
!5011 = !{!5012, !5013, !5014}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5010, file: !4908, line: 947, baseType: !4970, size: 32)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !5010, file: !4908, line: 948, baseType: !448, size: 32, offset: 32)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !5010, file: !4908, line: 949, baseType: !448, size: 32, offset: 64)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4902, file: !4898, line: 377, baseType: !5016, size: 1408, offset: 1920)
!5016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !4898, line: 280, size: 1408, elements: !5017)
!5017 = !{!5018, !5019, !5029, !5044}
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5016, file: !4898, line: 281, baseType: !114, size: 32)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5016, file: !4898, line: 282, baseType: !5020, size: 32, offset: 32)
!5020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !4898, line: 259, size: 32, elements: !5021)
!5021 = !{!5022, !5023, !5024, !5025, !5026, !5027, !5028}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !5020, file: !4898, line: 260, baseType: !448, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !5020, file: !4898, line: 261, baseType: !448, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !5020, file: !4898, line: 262, baseType: !448, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !5020, file: !4898, line: 263, baseType: !448, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !5020, file: !4898, line: 264, baseType: !448, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !5020, file: !4898, line: 265, baseType: !448, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5020, file: !4898, line: 266, baseType: !448, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !5016, file: !4898, line: 283, baseType: !5030, size: 1280, offset: 64)
!5030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5031, size: 1280, elements: !5042)
!5031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !4898, line: 269, size: 256, elements: !5032)
!5032 = !{!5033, !5039, !5040, !5041}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5031, file: !4898, line: 274, baseType: !5034, size: 8)
!5034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5031, file: !4898, line: 270, size: 8, elements: !5035)
!5035 = !{!5036, !5037, !5038}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5034, file: !4898, line: 271, baseType: !258, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !5034, file: !4898, line: 272, baseType: !258, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5034, file: !4898, line: 273, baseType: !258, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5031, file: !4898, line: 275, baseType: !114, size: 32, offset: 32)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !5031, file: !4898, line: 276, baseType: !114, size: 32, offset: 64)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5031, file: !4898, line: 277, baseType: !182, size: 128, offset: 128)
!5042 = !{!5043}
!5043 = !DISubrange(count: 5)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !5016, file: !4898, line: 284, baseType: !258, size: 8, offset: 1344)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4902, file: !4898, line: 378, baseType: !5046, size: 640, offset: 3328)
!5046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !4898, line: 330, size: 640, elements: !5047)
!5047 = !{!5048, !5049, !5050, !5051, !5052, !5057, !5066, !5067, !5068}
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !5046, file: !4898, line: 331, baseType: !4907, size: 64)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !5046, file: !4898, line: 332, baseType: !452, size: 64, offset: 64)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !5046, file: !4898, line: 333, baseType: !452, size: 64, offset: 128)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5046, file: !4898, line: 334, baseType: !182, size: 128, offset: 192)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5046, file: !4898, line: 335, baseType: !5053, size: 8, offset: 320)
!5053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !4898, line: 320, size: 8, elements: !5054)
!5054 = !{!5055, !5056}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5053, file: !4898, line: 321, baseType: !258, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !5053, file: !4898, line: 322, baseType: !258, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5046, file: !4898, line: 336, baseType: !5058, size: 128, offset: 384)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !4898, line: 325, size: 128, elements: !5059)
!5059 = !{!5060, !5065}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5058, file: !4898, line: 326, baseType: !5061, size: 64)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{null, !5064}
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5058, file: !4898, line: 327, baseType: !4263, size: 64, offset: 64)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !5046, file: !4898, line: 337, baseType: !4357, size: 64, offset: 512)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !5046, file: !4898, line: 338, baseType: !114, size: 32, offset: 576)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !5046, file: !4898, line: 339, baseType: !114, size: 32, offset: 608)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4902, file: !4898, line: 379, baseType: !5070, size: 192, offset: 3968)
!5070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !4898, line: 312, size: 192, elements: !5071)
!5071 = !{!5072, !5073, !5077, !5078}
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5070, file: !4898, line: 313, baseType: !114, size: 32)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5070, file: !4898, line: 314, baseType: !5074, size: 8, offset: 32)
!5074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !4898, line: 298, size: 8, elements: !5075)
!5075 = !{!5076}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5074, file: !4898, line: 299, baseType: !258, size: 8, flags: DIFlagBitField, extraData: i64 0)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !5070, file: !4898, line: 315, baseType: !114, size: 32, offset: 64)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !5070, file: !4898, line: 316, baseType: !5079, size: 64, offset: 128)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !4898, line: 302, size: 64, elements: !5081)
!5081 = !{!5082, !5087, !5088, !5089}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5080, file: !4898, line: 306, baseType: !5083, size: 8)
!5083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5080, file: !4898, line: 303, size: 8, elements: !5084)
!5084 = !{!5085, !5086}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5083, file: !4898, line: 304, baseType: !258, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5083, file: !4898, line: 305, baseType: !258, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5080, file: !4898, line: 307, baseType: !258, size: 8, offset: 8)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !5080, file: !4898, line: 308, baseType: !258, size: 8, offset: 16)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !5080, file: !4898, line: 309, baseType: !114, size: 32, offset: 32)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4902, file: !4898, line: 380, baseType: !5091, size: 64, offset: 4160)
!5091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !4898, line: 212, size: 64, elements: !5092)
!5092 = !{!5093}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5091, file: !4898, line: 213, baseType: !199, size: 64)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4902, file: !4898, line: 381, baseType: !5095, size: 384, offset: 4224)
!5095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !4898, line: 357, size: 384, elements: !5096)
!5096 = !{!5097, !5100, !5101, !5102}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5095, file: !4898, line: 358, baseType: !5098, size: 64)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4967)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5095, file: !4898, line: 359, baseType: !182, size: 128, offset: 64)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !5095, file: !4898, line: 360, baseType: !5098, size: 64, offset: 192)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !5095, file: !4898, line: 361, baseType: !182, size: 128, offset: 256)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4902, file: !4898, line: 382, baseType: !5104, size: 64, offset: 4608)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !4898, line: 124, size: 1216, elements: !5106)
!5106 = !{!5107, !5108, !5109, !5114, !5118, !5122, !5123, !5124}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5105, file: !4898, line: 125, baseType: !4682, size: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !5105, file: !4898, line: 126, baseType: !182, size: 128, offset: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5105, file: !4898, line: 127, baseType: !5110, size: 64, offset: 192)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!720, !218, !5113}
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !5105, file: !4898, line: 128, baseType: !5115, size: 64, offset: 256)
!5115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5116, size: 64)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{!114, !4901, !4682}
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5105, file: !4898, line: 129, baseType: !5119, size: 64, offset: 320)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{null, !4901}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !5105, file: !4898, line: 130, baseType: !4291, size: 64, offset: 384)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !5105, file: !4898, line: 131, baseType: !4291, size: 64, offset: 448)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !5105, file: !4898, line: 132, baseType: !5125, size: 704, offset: 512)
!5125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !4898, line: 110, size: 704, elements: !5126)
!5126 = !{!5127, !5128, !5132, !5133, !5134}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5125, file: !4898, line: 111, baseType: !214, size: 512)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !5125, file: !4898, line: 112, baseType: !5129, size: 64, offset: 512)
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = !DISubroutineType(types: !5131)
!5131 = !{!114, !4901}
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !5125, file: !4898, line: 113, baseType: !5119, size: 64, offset: 576)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5125, file: !4898, line: 114, baseType: !720, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !5125, file: !4898, line: 115, baseType: !720, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !4902, file: !4898, line: 383, baseType: !5136, size: 64, offset: 4672)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !4898, line: 140, size: 256, elements: !5138)
!5138 = !{!5139, !5140, !5144, !5148}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !5137, file: !4898, line: 141, baseType: !4901, size: 64)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !5137, file: !4898, line: 142, baseType: !5141, size: 64, offset: 64)
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5142, size: 64)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!114, !4901, !448}
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5137, file: !4898, line: 143, baseType: !5145, size: 64, offset: 128)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{null, !4901, !448}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5137, file: !4898, line: 144, baseType: !5119, size: 64, offset: 192)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !4902, file: !4898, line: 384, baseType: !5150, size: 64, offset: 4736)
!5150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5151, size: 64)
!5151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5152)
!5152 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !4898, line: 364, flags: DIFlagFwdDecl)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4902, file: !4898, line: 385, baseType: !176, size: 64, offset: 4800)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4902, file: !4898, line: 386, baseType: !4264, size: 5824, offset: 4864)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !4902, file: !4898, line: 387, baseType: !7, size: 32, offset: 10688)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !4902, file: !4898, line: 388, baseType: !7, size: 32, offset: 10720)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !4902, file: !4898, line: 389, baseType: !182, size: 128, offset: 10752)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !4902, file: !4898, line: 390, baseType: !640, size: 256, offset: 10880)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4902, file: !4898, line: 391, baseType: !5119, size: 64, offset: 11136)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4897, file: !4898, line: 613, baseType: !177, size: 64, offset: 64)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !4897, file: !4898, line: 614, baseType: !267, size: 16, offset: 128)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_type", scope: !4897, file: !4898, line: 615, baseType: !114, size: 32, offset: 160)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4897, file: !4898, line: 616, baseType: !4744, size: 512, offset: 192)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "osc_support_set", scope: !4897, file: !4898, line: 618, baseType: !448, size: 32, offset: 704)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "osc_control_set", scope: !4897, file: !4898, line: 619, baseType: !448, size: 32, offset: 736)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "osc_ext_support_set", scope: !4897, file: !4898, line: 620, baseType: !448, size: 32, offset: 768)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "osc_ext_control_set", scope: !4897, file: !4898, line: 621, baseType: !448, size: 32, offset: 800)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "mcfg_addr", scope: !4897, file: !4898, line: 622, baseType: !3247, size: 64, offset: 832)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4892, file: !4893, line: 65, baseType: !4901, size: 64, offset: 64)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4892, file: !4893, line: 66, baseType: !5171, size: 64, offset: 128)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_root_ops", file: !4893, line: 71, size: 256, elements: !5173)
!5173 = !{!5174, !5175, !5180, !5184}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "pci_ops", scope: !5172, file: !4893, line: 72, baseType: !4844, size: 64)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "init_info", scope: !5172, file: !4893, line: 73, baseType: !5176, size: 64, offset: 64)
!5176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5177, size: 64)
!5177 = !DISubroutineType(types: !5178)
!5178 = !{!114, !5179}
!5179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "release_info", scope: !5172, file: !4893, line: 74, baseType: !5181, size: 64, offset: 128)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{null, !5179}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_resources", scope: !5172, file: !4893, line: 75, baseType: !5176, size: 64, offset: 192)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4892, file: !4893, line: 67, baseType: !182, size: 128, offset: 192)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4892, file: !4893, line: 68, baseType: !2721, size: 128, offset: 320)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !4889, file: !3, line: 17, baseType: !5188, size: 256, offset: 448)
!5188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sysdata", file: !5189, line: 15, size: 256, elements: !5190)
!5189 = !DIFile(filename: "./arch/x86/include/asm/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0155599d2137220fade7406d4b759f43")
!5190 = !{!5191, !5192, !5193, !5194, !5195}
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5188, file: !5189, line: 16, baseType: !114, size: 32)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5188, file: !5189, line: 17, baseType: !114, size: 32, offset: 32)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "companion", scope: !5188, file: !5189, line: 19, baseType: !4901, size: 64, offset: 64)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !5188, file: !5189, line: 22, baseType: !176, size: 64, offset: 128)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5188, file: !5189, line: 25, baseType: !176, size: 64, offset: 192)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "mcfg_added", scope: !4889, file: !3, line: 19, baseType: !720, size: 8, offset: 704)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "start_bus", scope: !4889, file: !3, line: 20, baseType: !258, size: 8, offset: 712)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "end_bus", scope: !4889, file: !3, line: 21, baseType: !258, size: 8, offset: 720)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource_entry", file: !5201, line: 23, size: 768, elements: !5202)
!5201 = !DIFile(filename: "./include/linux/resource_ext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "38257f3d7ebf1230f659bba39b1a0b6a")
!5202 = !{!5203, !5204, !5205, !5206}
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5200, file: !5201, line: 24, baseType: !182, size: 128)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !5200, file: !5201, line: 25, baseType: !4754, size: 64, offset: 128)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5200, file: !5201, line: 26, baseType: !4748, size: 64, offset: 192)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "__res", scope: !5200, file: !5201, line: 27, baseType: !4744, size: 512, offset: 256)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !185)
!5209 = !{!0, !5210, !5215, !5217, !5222, !5224, !5226, !5231, !5236, !5241, !5246, !5251, !5256, !5258, !5260, !5265, !5270, !5275, !5278, !5283, !5285, !5287, !5289, !5294, !5299, !5304, !5306, !5331, !5333, !5338, !5340, !5345, !5347, !5349, !5354, !5359, !5364, !5367, !5370}
!5210 = !DIGlobalVariableExpression(var: !5211, expr: !DIExpression())
!5211 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !5212, isLocal: true, isDefinition: true)
!5212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 688, elements: !5213)
!5213 = !{!5214}
!5214 = !DISubrange(count: 86)
!5215 = !DIGlobalVariableExpression(var: !5216, expr: !DIExpression())
!5216 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !1873, isLocal: true, isDefinition: true)
!5217 = !DIGlobalVariableExpression(var: !5218, expr: !DIExpression())
!5218 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !5219, isLocal: true, isDefinition: true)
!5219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 72, elements: !5220)
!5220 = !{!5221}
!5221 = !DISubrange(count: 9)
!5222 = !DIGlobalVariableExpression(var: !5223, expr: !DIExpression())
!5223 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !1873, isLocal: true, isDefinition: true)
!5224 = !DIGlobalVariableExpression(var: !5225, expr: !DIExpression())
!5225 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !3043, isLocal: true, isDefinition: true)
!5226 = !DIGlobalVariableExpression(var: !5227, expr: !DIExpression())
!5227 = distinct !DIGlobalVariable(scope: null, file: !3, line: 247, type: !5228, isLocal: true, isDefinition: true)
!5228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 424, elements: !5229)
!5229 = !{!5230}
!5230 = !DISubrange(count: 53)
!5231 = !DIGlobalVariableExpression(var: !5232, expr: !DIExpression())
!5232 = distinct !DIGlobalVariable(scope: null, file: !3, line: 250, type: !5233, isLocal: true, isDefinition: true)
!5233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 736, elements: !5234)
!5234 = !{!5235}
!5235 = !DISubrange(count: 92)
!5236 = !DIGlobalVariableExpression(var: !5237, expr: !DIExpression())
!5237 = distinct !DIGlobalVariable(scope: null, file: !3, line: 541, type: !5238, isLocal: true, isDefinition: true)
!5238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 544, elements: !5239)
!5239 = !{!5240}
!5240 = !DISubrange(count: 68)
!5241 = !DIGlobalVariableExpression(var: !5242, expr: !DIExpression())
!5242 = distinct !DIGlobalVariable(scope: null, file: !3, line: 564, type: !5243, isLocal: true, isDefinition: true)
!5243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 352, elements: !5244)
!5244 = !{!5245}
!5245 = !DISubrange(count: 44)
!5246 = !DIGlobalVariableExpression(var: !5247, expr: !DIExpression())
!5247 = distinct !DIGlobalVariable(scope: null, file: !3, line: 610, type: !5248, isLocal: true, isDefinition: true)
!5248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 280, elements: !5249)
!5249 = !{!5250}
!5250 = !DISubrange(count: 35)
!5251 = !DIGlobalVariableExpression(var: !5252, expr: !DIExpression())
!5252 = distinct !DIGlobalVariable(scope: null, file: !3, line: 622, type: !5253, isLocal: true, isDefinition: true)
!5253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 640, elements: !5254)
!5254 = !{!5255}
!5255 = !DISubrange(count: 80)
!5256 = !DIGlobalVariableExpression(var: !5257, expr: !DIExpression())
!5257 = distinct !DIGlobalVariable(name: "pci_ignore_seg", scope: !2, file: !3, line: 27, type: !720, isLocal: true, isDefinition: true)
!5258 = !DIGlobalVariableExpression(var: !5259, expr: !DIExpression())
!5259 = distinct !DIGlobalVariable(name: "pci_use_crs", scope: !2, file: !3, line: 26, type: !720, isLocal: true, isDefinition: true)
!5260 = !DIGlobalVariableExpression(var: !5261, expr: !DIExpression())
!5261 = distinct !DIGlobalVariable(scope: null, file: !3, line: 60, type: !5262, isLocal: true, isDefinition: true)
!5262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 136, elements: !5263)
!5263 = !{!5264}
!5264 = !DISubrange(count: 17)
!5265 = !DIGlobalVariableExpression(var: !5266, expr: !DIExpression())
!5266 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !5267, isLocal: true, isDefinition: true)
!5267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 184, elements: !5268)
!5268 = !{!5269}
!5269 = !DISubrange(count: 23)
!5270 = !DIGlobalVariableExpression(var: !5271, expr: !DIExpression())
!5271 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !5272, isLocal: true, isDefinition: true)
!5272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 120, elements: !5273)
!5273 = !{!5274}
!5274 = !DISubrange(count: 15)
!5275 = !DIGlobalVariableExpression(var: !5276, expr: !DIExpression())
!5276 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !5277, isLocal: true, isDefinition: true)
!5277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 96, elements: !3376)
!5278 = !DIGlobalVariableExpression(var: !5279, expr: !DIExpression())
!5279 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !5280, isLocal: true, isDefinition: true)
!5280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 168, elements: !5281)
!5281 = !{!5282}
!5282 = !DISubrange(count: 21)
!5283 = !DIGlobalVariableExpression(var: !5284, expr: !DIExpression())
!5284 = distinct !DIGlobalVariable(scope: null, file: !3, line: 113, type: !5262, isLocal: true, isDefinition: true)
!5285 = !DIGlobalVariableExpression(var: !5286, expr: !DIExpression())
!5286 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !5272, isLocal: true, isDefinition: true)
!5287 = !DIGlobalVariableExpression(var: !5288, expr: !DIExpression())
!5288 = distinct !DIGlobalVariable(scope: null, file: !3, line: 133, type: !5262, isLocal: true, isDefinition: true)
!5289 = !DIGlobalVariableExpression(var: !5290, expr: !DIExpression())
!5290 = distinct !DIGlobalVariable(scope: null, file: !3, line: 144, type: !5291, isLocal: true, isDefinition: true)
!5291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 80, elements: !5292)
!5292 = !{!5293}
!5293 = !DISubrange(count: 10)
!5294 = !DIGlobalVariableExpression(var: !5295, expr: !DIExpression())
!5295 = distinct !DIGlobalVariable(scope: null, file: !3, line: 162, type: !5296, isLocal: true, isDefinition: true)
!5296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 232, elements: !5297)
!5297 = !{!5298}
!5298 = !DISubrange(count: 29)
!5299 = !DIGlobalVariableExpression(var: !5300, expr: !DIExpression())
!5300 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !5301, isLocal: true, isDefinition: true)
!5301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 192, elements: !5302)
!5302 = !{!5303}
!5303 = !DISubrange(count: 24)
!5304 = !DIGlobalVariableExpression(var: !5305, expr: !DIExpression())
!5305 = distinct !DIGlobalVariable(scope: null, file: !3, line: 190, type: !5301, isLocal: true, isDefinition: true)
!5306 = !DIGlobalVariableExpression(var: !5307, expr: !DIExpression())
!5307 = distinct !DIGlobalVariable(name: "pci_crs_quirks", scope: !2, file: !3, line: 56, type: !5308, isLocal: true, isDefinition: true)
!5308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5309, size: 35776, elements: !5329)
!5309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5310)
!5310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !4181, line: 587, size: 2752, elements: !5311)
!5311 = !{!5312, !5317, !5318, !5328}
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !5310, file: !4181, line: 588, baseType: !5313, size: 64)
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5314, size: 64)
!5314 = !DISubroutineType(types: !5315)
!5315 = !{!114, !5316}
!5316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !5310, file: !4181, line: 589, baseType: !218, size: 64, offset: 64)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !5310, file: !4181, line: 590, baseType: !5319, size: 2560, offset: 128)
!5319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5320, size: 2560, elements: !870)
!5320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !4181, line: 581, size: 640, elements: !5321)
!5321 = !{!5322, !5323, !5324}
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !5320, file: !4181, line: 582, baseType: !212, size: 7, flags: DIFlagBitField, extraData: i64 0)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !5320, file: !4181, line: 583, baseType: !212, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !5320, file: !4181, line: 584, baseType: !5325, size: 632, offset: 8)
!5325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 632, elements: !5326)
!5326 = !{!5327}
!5327 = !DISubrange(count: 79)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5310, file: !4181, line: 591, baseType: !176, size: 64, offset: 2688)
!5329 = !{!5330}
!5330 = !DISubrange(count: 13)
!5331 = !DIGlobalVariableExpression(var: !5332, expr: !DIExpression())
!5332 = distinct !DIGlobalVariable(scope: null, file: !3, line: 43, type: !4959, isLocal: true, isDefinition: true)
!5333 = !DIGlobalVariableExpression(var: !5334, expr: !DIExpression())
!5334 = distinct !DIGlobalVariable(scope: null, file: !3, line: 50, type: !5335, isLocal: true, isDefinition: true)
!5335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 456, elements: !5336)
!5336 = !{!5337}
!5337 = !DISubrange(count: 57)
!5338 = !DIGlobalVariableExpression(var: !5339, expr: !DIExpression())
!5339 = distinct !DIGlobalVariable(scope: null, file: !3, line: 304, type: !4964, isLocal: true, isDefinition: true)
!5340 = !DIGlobalVariableExpression(var: !5341, expr: !DIExpression())
!5341 = distinct !DIGlobalVariable(scope: null, file: !3, line: 457, type: !5342, isLocal: true, isDefinition: true)
!5342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 872, elements: !5343)
!5343 = !{!5344}
!5344 = !DISubrange(count: 109)
!5345 = !DIGlobalVariableExpression(var: !5346, expr: !DIExpression())
!5346 = distinct !DIGlobalVariable(scope: null, file: !164, line: 480, type: !5280, isLocal: true, isDefinition: true)
!5347 = !DIGlobalVariableExpression(var: !5348, expr: !DIExpression())
!5348 = distinct !DIGlobalVariable(name: "acpi_pci_root_ops", scope: !2, file: !3, line: 523, type: !5172, isLocal: true, isDefinition: true)
!5349 = !DIGlobalVariableExpression(var: !5350, expr: !DIExpression())
!5350 = distinct !DIGlobalVariable(scope: null, file: !3, line: 410, type: !5351, isLocal: true, isDefinition: true)
!5351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 176, elements: !5352)
!5352 = !{!5353}
!5353 = !DISubrange(count: 22)
!5354 = !DIGlobalVariableExpression(var: !5355, expr: !DIExpression())
!5355 = distinct !DIGlobalVariable(scope: null, file: !3, line: 421, type: !5356, isLocal: true, isDefinition: true)
!5356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 272, elements: !5357)
!5357 = !{!5358}
!5358 = !DISubrange(count: 34)
!5359 = !DIGlobalVariableExpression(var: !5360, expr: !DIExpression())
!5360 = distinct !DIGlobalVariable(scope: null, file: !3, line: 376, type: !5361, isLocal: true, isDefinition: true)
!5361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 480, elements: !5362)
!5362 = !{!5363}
!5363 = !DISubrange(count: 60)
!5364 = !DIGlobalVariableExpression(var: !5365, expr: !DIExpression())
!5365 = distinct !DIGlobalVariable(scope: null, file: !3, line: 386, type: !5366, isLocal: true, isDefinition: true)
!5366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 512, elements: !304)
!5367 = !DIGlobalVariableExpression(var: !5368, expr: !DIExpression())
!5368 = distinct !DIGlobalVariable(scope: null, file: !3, line: 514, type: !5369, isLocal: true, isDefinition: true)
!5369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 24, elements: !300)
!5370 = !DIGlobalVariableExpression(var: !5371, expr: !DIExpression())
!5371 = distinct !DIGlobalVariable(scope: null, file: !3, line: 514, type: !5356, isLocal: true, isDefinition: true)
!5372 = !{i32 7, !"Dwarf Version", i32 5}
!5373 = !{i32 2, !"Debug Info Version", i32 3}
!5374 = !{i32 1, !"wchar_size", i32 2}
!5375 = !{i32 8, !"cf-protection-branch", i32 1}
!5376 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5377 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5378 = !{i32 1, !"Code Model", i32 2}
!5379 = !{i32 1, !"override-stack-alignment", i32 8}
!5380 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5381 = distinct !DISubprogram(name: "pci_acpi_crs_quirks", scope: !3, file: !3, line: 198, type: !1005, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5382)
!5382 = !{!5383}
!5383 = !DILocalVariable(name: "year", scope: !5381, file: !3, line: 200, type: !114)
!5384 = !DILocation(line: 200, column: 2, scope: !5381)
!5385 = !DILocation(line: 200, column: 6, scope: !5381)
!5386 = !DILocation(line: 200, column: 13, scope: !5381)
!5387 = !DILocation(line: 202, column: 6, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 202, column: 6)
!5389 = !DILocation(line: 202, column: 11, scope: !5388)
!5390 = !DILocation(line: 202, column: 16, scope: !5388)
!5391 = !DILocation(line: 202, column: 19, scope: !5388)
!5392 = !DILocation(line: 202, column: 24, scope: !5388)
!5393 = !DILocation(line: 202, column: 31, scope: !5388)
!5394 = !DILocation(line: 202, column: 49, scope: !5388)
!5395 = !DILocation(line: 202, column: 53, scope: !5388)
!5396 = !DILocation(line: 202, column: 6, scope: !5381)
!5397 = !DILocation(line: 203, column: 15, scope: !5388)
!5398 = !DILocation(line: 203, column: 3, scope: !5388)
!5399 = !DILocation(line: 223, column: 6, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 223, column: 6)
!5401 = !DILocation(line: 223, column: 11, scope: !5400)
!5402 = !DILocation(line: 223, column: 6, scope: !5381)
!5403 = !DILocation(line: 224, column: 16, scope: !5400)
!5404 = !DILocation(line: 224, column: 3, scope: !5400)
!5405 = !DILocation(line: 226, column: 2, scope: !5381)
!5406 = !DILocation(line: 232, column: 6, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 232, column: 6)
!5408 = !DILocation(line: 232, column: 16, scope: !5407)
!5409 = !DILocation(line: 232, column: 6, scope: !5381)
!5410 = !DILocation(line: 233, column: 15, scope: !5407)
!5411 = !DILocation(line: 233, column: 3, scope: !5407)
!5412 = !DILocation(line: 234, column: 11, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 234, column: 11)
!5414 = !DILocation(line: 234, column: 21, scope: !5413)
!5415 = !DILocation(line: 234, column: 11, scope: !5407)
!5416 = !DILocation(line: 235, column: 15, scope: !5413)
!5417 = !DILocation(line: 235, column: 3, scope: !5413)
!5418 = !DILocation(line: 237, column: 2, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 237, column: 2)
!5420 = !DILocation(line: 237, column: 2, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5419, file: !3, line: 237, column: 2)
!5422 = !{i8 0, i8 2}
!5423 = !DILocation(line: 242, column: 6, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 242, column: 6)
!5425 = !DILocation(line: 242, column: 16, scope: !5424)
!5426 = !DILocation(line: 242, column: 6, scope: !5381)
!5427 = !DILocation(line: 243, column: 16, scope: !5424)
!5428 = !DILocation(line: 243, column: 3, scope: !5424)
!5429 = !DILocation(line: 244, column: 11, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 244, column: 11)
!5431 = !DILocation(line: 244, column: 21, scope: !5430)
!5432 = !DILocation(line: 244, column: 11, scope: !5424)
!5433 = !DILocation(line: 245, column: 16, scope: !5430)
!5434 = !DILocation(line: 245, column: 3, scope: !5430)
!5435 = !DILocation(line: 247, column: 2, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 247, column: 2)
!5437 = !DILocation(line: 247, column: 2, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 247, column: 2)
!5439 = !DILocation(line: 249, column: 6, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 249, column: 6)
!5441 = !DILocation(line: 249, column: 16, scope: !5440)
!5442 = !DILocation(line: 249, column: 6, scope: !5381)
!5443 = !DILocation(line: 250, column: 3, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 250, column: 3)
!5445 = !DILocation(line: 250, column: 3, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5444, file: !3, line: 250, column: 3)
!5447 = !DILocation(line: 250, column: 3, scope: !5440)
!5448 = !DILocation(line: 251, column: 1, scope: !5381)
!5449 = !DISubprogram(name: "dmi_get_bios_year", scope: !5450, file: !5450, line: 107, type: !734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5450 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!5451 = !DISubprogram(name: "dmi_check_system", scope: !5450, file: !5450, line: 100, type: !5314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5452 = !DISubprogram(name: "_printk", scope: !5453, file: !5453, line: 153, type: !5454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5453 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5454 = !DISubroutineType(types: !5455)
!5455 = !{!114, !218, null}
!5456 = distinct !DISubprogram(name: "arch_pci_dev_is_removable", scope: !3, file: !3, line: 340, type: !5457, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5459)
!5457 = !DISubroutineType(types: !5458)
!5458 = !{!720, !191}
!5459 = !{!5460, !5461, !5462}
!5460 = !DILocalVariable(name: "pdev", arg: 1, scope: !5456, file: !3, line: 340, type: !191)
!5461 = !DILocalVariable(name: "parent", scope: !5456, file: !3, line: 342, type: !191)
!5462 = !DILocalVariable(name: "root", scope: !5456, file: !3, line: 342, type: !191)
!5463 = !DILocation(line: 340, column: 48, scope: !5456)
!5464 = !DILocation(line: 342, column: 2, scope: !5456)
!5465 = !DILocation(line: 342, column: 18, scope: !5456)
!5466 = !DILocation(line: 342, column: 27, scope: !5456)
!5467 = !DILocation(line: 345, column: 31, scope: !5456)
!5468 = !DILocation(line: 345, column: 11, scope: !5456)
!5469 = !DILocation(line: 345, column: 9, scope: !5456)
!5470 = !DILocation(line: 346, column: 7, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 346, column: 6)
!5472 = !DILocation(line: 346, column: 6, scope: !5456)
!5473 = !DILocation(line: 347, column: 3, scope: !5471)
!5474 = !DILocation(line: 348, column: 29, scope: !5456)
!5475 = !DILocation(line: 348, column: 9, scope: !5456)
!5476 = !DILocation(line: 348, column: 7, scope: !5456)
!5477 = !DILocation(line: 349, column: 7, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 349, column: 6)
!5479 = !DILocation(line: 349, column: 6, scope: !5456)
!5480 = !DILocation(line: 350, column: 3, scope: !5478)
!5481 = !DILocation(line: 353, column: 7, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 353, column: 6)
!5483 = !DILocation(line: 353, column: 13, scope: !5482)
!5484 = !DILocation(line: 353, column: 6, scope: !5456)
!5485 = !DILocation(line: 354, column: 3, scope: !5482)
!5486 = !DILocation(line: 357, column: 35, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 357, column: 6)
!5488 = !DILocation(line: 357, column: 6, scope: !5487)
!5489 = !DILocation(line: 357, column: 6, scope: !5456)
!5490 = !DILocation(line: 358, column: 3, scope: !5487)
!5491 = !DILocation(line: 365, column: 33, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 365, column: 6)
!5493 = !DILocation(line: 365, column: 39, scope: !5492)
!5494 = !DILocation(line: 365, column: 6, scope: !5492)
!5495 = !DILocation(line: 365, column: 6, scope: !5456)
!5496 = !DILocation(line: 366, column: 3, scope: !5492)
!5497 = !DILocation(line: 369, column: 2, scope: !5456)
!5498 = !DILocation(line: 370, column: 1, scope: !5456)
!5499 = distinct !DISubprogram(name: "pci_upstream_bridge", scope: !179, file: !179, line: 720, type: !5500, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5502)
!5500 = !DISubroutineType(types: !5501)
!5501 = !{!191, !191}
!5502 = !{!5503}
!5503 = !DILocalVariable(name: "dev", arg: 1, scope: !5499, file: !179, line: 720, type: !191)
!5504 = !DILocation(line: 720, column: 67, scope: !5499)
!5505 = !DILocation(line: 722, column: 19, scope: !5499)
!5506 = !DILocation(line: 722, column: 8, scope: !5499)
!5507 = !DILocation(line: 722, column: 6, scope: !5499)
!5508 = !DILocation(line: 723, column: 22, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5499, file: !179, line: 723, column: 6)
!5510 = !DILocation(line: 723, column: 27, scope: !5509)
!5511 = !DILocation(line: 723, column: 6, scope: !5509)
!5512 = !DILocation(line: 723, column: 6, scope: !5499)
!5513 = !DILocation(line: 724, column: 3, scope: !5509)
!5514 = !DILocation(line: 726, column: 9, scope: !5499)
!5515 = !DILocation(line: 726, column: 14, scope: !5499)
!5516 = !DILocation(line: 726, column: 19, scope: !5499)
!5517 = !DILocation(line: 726, column: 2, scope: !5499)
!5518 = !DILocation(line: 727, column: 1, scope: !5499)
!5519 = distinct !DISubprogram(name: "pcie_find_root_port", scope: !179, file: !179, line: 2454, type: !5500, scopeLine: 2455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5520)
!5520 = !{!5521}
!5521 = !DILocalVariable(name: "dev", arg: 1, scope: !5519, file: !179, line: 2454, type: !191)
!5522 = !DILocation(line: 2454, column: 67, scope: !5519)
!5523 = !DILocation(line: 2456, column: 2, scope: !5519)
!5524 = !DILocation(line: 2456, column: 9, scope: !5519)
!5525 = !DILocation(line: 2457, column: 19, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5527, file: !179, line: 2457, column: 7)
!5527 = distinct !DILexicalBlock(scope: !5519, file: !179, line: 2456, column: 14)
!5528 = !DILocation(line: 2457, column: 7, scope: !5526)
!5529 = !DILocation(line: 2457, column: 24, scope: !5526)
!5530 = !DILocation(line: 2458, column: 21, scope: !5526)
!5531 = !DILocation(line: 2458, column: 7, scope: !5526)
!5532 = !DILocation(line: 2458, column: 26, scope: !5526)
!5533 = !DILocation(line: 2457, column: 7, scope: !5527)
!5534 = !DILocation(line: 2459, column: 11, scope: !5526)
!5535 = !DILocation(line: 2459, column: 4, scope: !5526)
!5536 = !DILocation(line: 2460, column: 29, scope: !5527)
!5537 = !DILocation(line: 2460, column: 9, scope: !5527)
!5538 = !DILocation(line: 2460, column: 7, scope: !5527)
!5539 = distinct !{!5539, !5523, !5540, !5541, !5542}
!5540 = !DILocation(line: 2461, column: 2, scope: !5519)
!5541 = !{!"llvm.loop.mustprogress"}
!5542 = !{!"llvm.loop.unroll.disable"}
!5543 = !DILocation(line: 2463, column: 2, scope: !5519)
!5544 = !DILocation(line: 2464, column: 1, scope: !5519)
!5545 = distinct !DISubprogram(name: "pcie_has_usb4_host_interface", scope: !3, file: !3, line: 294, type: !5457, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5546)
!5546 = !{!5547, !5548}
!5547 = !DILocalVariable(name: "pdev", arg: 1, scope: !5545, file: !3, line: 294, type: !191)
!5548 = !DILocalVariable(name: "fwnode", scope: !5545, file: !3, line: 296, type: !4484)
!5549 = !DILocation(line: 294, column: 58, scope: !5545)
!5550 = !DILocation(line: 296, column: 2, scope: !5545)
!5551 = !DILocation(line: 296, column: 24, scope: !5545)
!5552 = !DILocation(line: 303, column: 33, scope: !5545)
!5553 = !DILocation(line: 303, column: 11, scope: !5545)
!5554 = !DILocation(line: 303, column: 9, scope: !5545)
!5555 = !DILocation(line: 305, column: 14, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 305, column: 6)
!5557 = !DILocation(line: 305, column: 7, scope: !5556)
!5558 = !DILocation(line: 305, column: 6, scope: !5545)
!5559 = !DILocation(line: 306, column: 21, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 305, column: 23)
!5561 = !DILocation(line: 306, column: 3, scope: !5560)
!5562 = !DILocation(line: 307, column: 3, scope: !5560)
!5563 = !DILocation(line: 316, column: 6, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 316, column: 6)
!5565 = !DILocation(line: 316, column: 12, scope: !5564)
!5566 = !DILocation(line: 316, column: 19, scope: !5564)
!5567 = !DILocation(line: 316, column: 6, scope: !5545)
!5568 = !DILocation(line: 317, column: 11, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5564, file: !3, line: 316, column: 43)
!5570 = !DILocation(line: 317, column: 17, scope: !5569)
!5571 = !DILocation(line: 317, column: 3, scope: !5569)
!5572 = !DILocation(line: 333, column: 4, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5569, file: !3, line: 317, column: 25)
!5574 = !DILocation(line: 335, column: 2, scope: !5569)
!5575 = !DILocation(line: 337, column: 2, scope: !5545)
!5576 = !DILocation(line: 338, column: 1, scope: !5545)
!5577 = distinct !DISubprogram(name: "pcie_switch_directly_under", scope: !3, file: !3, line: 257, type: !5578, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5580)
!5578 = !DISubroutineType(types: !5579)
!5579 = !{!720, !191, !191}
!5580 = !{!5581, !5582, !5583}
!5581 = !DILocalVariable(name: "bridge", arg: 1, scope: !5577, file: !3, line: 257, type: !191)
!5582 = !DILocalVariable(name: "pdev", arg: 2, scope: !5577, file: !3, line: 258, type: !191)
!5583 = !DILocalVariable(name: "parent", scope: !5577, file: !3, line: 260, type: !191)
!5584 = !DILocation(line: 257, column: 56, scope: !5577)
!5585 = !DILocation(line: 258, column: 28, scope: !5577)
!5586 = !DILocation(line: 260, column: 2, scope: !5577)
!5587 = !DILocation(line: 260, column: 18, scope: !5577)
!5588 = !DILocation(line: 260, column: 47, scope: !5577)
!5589 = !DILocation(line: 260, column: 27, scope: !5577)
!5590 = !DILocation(line: 263, column: 7, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 263, column: 6)
!5592 = !DILocation(line: 263, column: 6, scope: !5577)
!5593 = !DILocation(line: 264, column: 3, scope: !5591)
!5594 = !DILocation(line: 271, column: 24, scope: !5577)
!5595 = !DILocation(line: 271, column: 10, scope: !5577)
!5596 = !DILocation(line: 271, column: 2, scope: !5577)
!5597 = !DILocation(line: 273, column: 10, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 271, column: 31)
!5599 = !DILocation(line: 273, column: 20, scope: !5598)
!5600 = !DILocation(line: 273, column: 17, scope: !5598)
!5601 = !DILocation(line: 273, column: 3, scope: !5598)
!5602 = !DILocation(line: 276, column: 21, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 276, column: 7)
!5604 = !DILocation(line: 276, column: 7, scope: !5603)
!5605 = !DILocation(line: 276, column: 29, scope: !5603)
!5606 = !DILocation(line: 276, column: 7, scope: !5598)
!5607 = !DILocation(line: 277, column: 4, scope: !5603)
!5608 = !DILocation(line: 278, column: 32, scope: !5598)
!5609 = !DILocation(line: 278, column: 12, scope: !5598)
!5610 = !DILocation(line: 278, column: 10, scope: !5598)
!5611 = !DILocation(line: 279, column: 10, scope: !5598)
!5612 = !DILocation(line: 279, column: 20, scope: !5598)
!5613 = !DILocation(line: 279, column: 17, scope: !5598)
!5614 = !DILocation(line: 279, column: 3, scope: !5598)
!5615 = !DILocation(line: 282, column: 21, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 282, column: 7)
!5617 = !DILocation(line: 282, column: 7, scope: !5616)
!5618 = !DILocation(line: 282, column: 29, scope: !5616)
!5619 = !DILocation(line: 282, column: 7, scope: !5598)
!5620 = !DILocation(line: 283, column: 4, scope: !5616)
!5621 = !DILocation(line: 284, column: 32, scope: !5598)
!5622 = !DILocation(line: 284, column: 12, scope: !5598)
!5623 = !DILocation(line: 284, column: 10, scope: !5598)
!5624 = !DILocation(line: 285, column: 8, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 285, column: 7)
!5626 = !DILocation(line: 285, column: 15, scope: !5625)
!5627 = !DILocation(line: 285, column: 32, scope: !5625)
!5628 = !DILocation(line: 285, column: 18, scope: !5625)
!5629 = !DILocation(line: 285, column: 40, scope: !5625)
!5630 = !DILocation(line: 285, column: 7, scope: !5598)
!5631 = !DILocation(line: 286, column: 4, scope: !5625)
!5632 = !DILocation(line: 287, column: 32, scope: !5598)
!5633 = !DILocation(line: 287, column: 12, scope: !5598)
!5634 = !DILocation(line: 287, column: 10, scope: !5598)
!5635 = !DILocation(line: 288, column: 10, scope: !5598)
!5636 = !DILocation(line: 288, column: 20, scope: !5598)
!5637 = !DILocation(line: 288, column: 17, scope: !5598)
!5638 = !DILocation(line: 288, column: 3, scope: !5598)
!5639 = !DILocation(line: 291, column: 2, scope: !5577)
!5640 = !DILocation(line: 292, column: 1, scope: !5577)
!5641 = distinct !DISubprogram(name: "pci_acpi_scan_root", scope: !3, file: !3, line: 530, type: !5642, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5644)
!5642 = !DISubroutineType(types: !5643)
!5643 = !{!177, !4896}
!5644 = !{!5645, !5646, !5647, !5648, !5649, !5650, !5653, !5655, !5658, !5661}
!5645 = !DILocalVariable(name: "root", arg: 1, scope: !5641, file: !3, line: 530, type: !4896)
!5646 = !DILocalVariable(name: "domain", scope: !5641, file: !3, line: 532, type: !114)
!5647 = !DILocalVariable(name: "busnum", scope: !5641, file: !3, line: 533, type: !114)
!5648 = !DILocalVariable(name: "node", scope: !5641, file: !3, line: 534, type: !114)
!5649 = !DILocalVariable(name: "bus", scope: !5641, file: !3, line: 535, type: !177)
!5650 = !DILocalVariable(name: "sd", scope: !5651, file: !3, line: 552, type: !5188)
!5651 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 547, column: 11)
!5652 = distinct !DILexicalBlock(scope: !5641, file: !3, line: 547, column: 6)
!5653 = !DILocalVariable(name: "info", scope: !5654, file: !3, line: 560, type: !4888)
!5654 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 559, column: 9)
!5655 = !DILocalVariable(name: "child", scope: !5656, file: !3, line: 580, type: !177)
!5656 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 579, column: 11)
!5657 = distinct !DILexicalBlock(scope: !5641, file: !3, line: 579, column: 6)
!5658 = !DILocalVariable(name: "__mptr", scope: !5659, file: !3, line: 581, type: !176)
!5659 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 581, column: 3)
!5660 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 581, column: 3)
!5661 = !DILocalVariable(name: "__mptr", scope: !5662, file: !3, line: 581, type: !176)
!5662 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 581, column: 3)
!5663 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 581, column: 3)
!5664 = !DILocation(line: 530, column: 58, scope: !5641)
!5665 = !DILocation(line: 532, column: 2, scope: !5641)
!5666 = !DILocation(line: 532, column: 6, scope: !5641)
!5667 = !DILocation(line: 532, column: 15, scope: !5641)
!5668 = !DILocation(line: 532, column: 21, scope: !5641)
!5669 = !DILocation(line: 533, column: 2, scope: !5641)
!5670 = !DILocation(line: 533, column: 6, scope: !5641)
!5671 = !DILocation(line: 533, column: 15, scope: !5641)
!5672 = !DILocation(line: 533, column: 21, scope: !5641)
!5673 = !DILocation(line: 533, column: 31, scope: !5641)
!5674 = !DILocation(line: 534, column: 2, scope: !5641)
!5675 = !DILocation(line: 534, column: 6, scope: !5641)
!5676 = !DILocation(line: 534, column: 36, scope: !5641)
!5677 = !DILocation(line: 534, column: 13, scope: !5641)
!5678 = !DILocation(line: 535, column: 2, scope: !5641)
!5679 = !DILocation(line: 535, column: 18, scope: !5641)
!5680 = !DILocation(line: 537, column: 6, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5641, file: !3, line: 537, column: 6)
!5682 = !DILocation(line: 537, column: 6, scope: !5641)
!5683 = !DILocation(line: 538, column: 26, scope: !5681)
!5684 = !DILocation(line: 538, column: 3, scope: !5681)
!5685 = !DILocation(line: 538, column: 9, scope: !5681)
!5686 = !DILocation(line: 538, column: 17, scope: !5681)
!5687 = !DILocation(line: 540, column: 6, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5641, file: !3, line: 540, column: 6)
!5689 = !DILocation(line: 540, column: 13, scope: !5688)
!5690 = !DILocation(line: 540, column: 17, scope: !5688)
!5691 = !DILocation(line: 540, column: 6, scope: !5641)
!5692 = !DILocation(line: 541, column: 3, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 541, column: 3)
!5694 = distinct !DILexicalBlock(scope: !5688, file: !3, line: 540, column: 40)
!5695 = !DILocation(line: 541, column: 3, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5693, file: !3, line: 541, column: 3)
!5697 = !DILocation(line: 543, column: 3, scope: !5694)
!5698 = !DILocation(line: 546, column: 21, scope: !5641)
!5699 = !DILocation(line: 546, column: 29, scope: !5641)
!5700 = !DILocation(line: 546, column: 8, scope: !5641)
!5701 = !DILocation(line: 546, column: 6, scope: !5641)
!5702 = !DILocation(line: 547, column: 6, scope: !5652)
!5703 = !DILocation(line: 547, column: 6, scope: !5641)
!5704 = !DILocation(line: 552, column: 3, scope: !5651)
!5705 = !DILocation(line: 552, column: 22, scope: !5651)
!5706 = !DILocation(line: 552, column: 27, scope: !5651)
!5707 = !DILocation(line: 553, column: 14, scope: !5651)
!5708 = !DILocation(line: 554, column: 12, scope: !5651)
!5709 = !DILocation(line: 555, column: 17, scope: !5651)
!5710 = !DILocation(line: 555, column: 23, scope: !5651)
!5711 = !DILocation(line: 558, column: 10, scope: !5651)
!5712 = !DILocation(line: 558, column: 15, scope: !5651)
!5713 = !DILocation(line: 558, column: 3, scope: !5651)
!5714 = !DILocation(line: 559, column: 2, scope: !5652)
!5715 = !DILocation(line: 559, column: 2, scope: !5651)
!5716 = !DILocation(line: 560, column: 3, scope: !5654)
!5717 = !DILocation(line: 560, column: 25, scope: !5654)
!5718 = !DILocation(line: 562, column: 10, scope: !5654)
!5719 = !DILocation(line: 562, column: 8, scope: !5654)
!5720 = !DILocation(line: 563, column: 8, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 563, column: 7)
!5722 = !DILocation(line: 563, column: 7, scope: !5654)
!5723 = !DILocation(line: 564, column: 4, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 564, column: 4)
!5725 = !DILocation(line: 564, column: 4, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 564, column: 4)
!5727 = !DILocation(line: 564, column: 4, scope: !5721)
!5728 = !DILocation(line: 568, column: 22, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 567, column: 8)
!5730 = !DILocation(line: 568, column: 4, scope: !5729)
!5731 = !DILocation(line: 568, column: 10, scope: !5729)
!5732 = !DILocation(line: 568, column: 13, scope: !5729)
!5733 = !DILocation(line: 568, column: 20, scope: !5729)
!5734 = !DILocation(line: 569, column: 20, scope: !5729)
!5735 = !DILocation(line: 569, column: 4, scope: !5729)
!5736 = !DILocation(line: 569, column: 10, scope: !5729)
!5737 = !DILocation(line: 569, column: 13, scope: !5729)
!5738 = !DILocation(line: 569, column: 18, scope: !5729)
!5739 = !DILocation(line: 570, column: 25, scope: !5729)
!5740 = !DILocation(line: 570, column: 31, scope: !5729)
!5741 = !DILocation(line: 570, column: 4, scope: !5729)
!5742 = !DILocation(line: 570, column: 10, scope: !5729)
!5743 = !DILocation(line: 570, column: 13, scope: !5729)
!5744 = !DILocation(line: 570, column: 23, scope: !5729)
!5745 = !DILocation(line: 571, column: 31, scope: !5729)
!5746 = !DILocation(line: 572, column: 11, scope: !5729)
!5747 = !DILocation(line: 572, column: 17, scope: !5729)
!5748 = !DILocation(line: 572, column: 26, scope: !5729)
!5749 = !DILocation(line: 572, column: 32, scope: !5729)
!5750 = !DILocation(line: 571, column: 10, scope: !5729)
!5751 = !DILocation(line: 571, column: 8, scope: !5729)
!5752 = !DILocation(line: 574, column: 2, scope: !5652)
!5753 = !DILocation(line: 579, column: 6, scope: !5657)
!5754 = !DILocation(line: 579, column: 6, scope: !5641)
!5755 = !DILocation(line: 580, column: 3, scope: !5656)
!5756 = !DILocation(line: 580, column: 19, scope: !5656)
!5757 = !DILocation(line: 581, column: 3, scope: !5659)
!5758 = !DILocation(line: 581, column: 3, scope: !5660)
!5759 = !DILocation(line: 581, column: 3, scope: !5663)
!5760 = !DILocation(line: 582, column: 32, scope: !5663)
!5761 = !DILocation(line: 582, column: 4, scope: !5663)
!5762 = !DILocation(line: 581, column: 3, scope: !5662)
!5763 = distinct !{!5763, !5758, !5764, !5541, !5542}
!5764 = !DILocation(line: 582, column: 37, scope: !5660)
!5765 = !DILocation(line: 583, column: 2, scope: !5657)
!5766 = !DILocation(line: 583, column: 2, scope: !5656)
!5767 = !DILocation(line: 585, column: 9, scope: !5641)
!5768 = !DILocation(line: 585, column: 2, scope: !5641)
!5769 = !DILocation(line: 586, column: 1, scope: !5641)
!5770 = distinct !DISubprogram(name: "pci_acpi_root_get_node", scope: !3, file: !3, line: 448, type: !5771, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5773)
!5771 = !DISubroutineType(types: !5772)
!5772 = !{!114, !4896}
!5773 = !{!5774, !5775, !5776, !5777}
!5774 = !DILocalVariable(name: "root", arg: 1, scope: !5770, file: !3, line: 448, type: !4896)
!5775 = !DILocalVariable(name: "busnum", scope: !5770, file: !3, line: 450, type: !114)
!5776 = !DILocalVariable(name: "device", scope: !5770, file: !3, line: 451, type: !4901)
!5777 = !DILocalVariable(name: "node", scope: !5770, file: !3, line: 452, type: !114)
!5778 = !DILocation(line: 448, column: 57, scope: !5770)
!5779 = !DILocation(line: 450, column: 2, scope: !5770)
!5780 = !DILocation(line: 450, column: 6, scope: !5770)
!5781 = !DILocation(line: 450, column: 15, scope: !5770)
!5782 = !DILocation(line: 450, column: 21, scope: !5770)
!5783 = !DILocation(line: 450, column: 31, scope: !5770)
!5784 = !DILocation(line: 451, column: 2, scope: !5770)
!5785 = !DILocation(line: 451, column: 22, scope: !5770)
!5786 = !DILocation(line: 451, column: 31, scope: !5770)
!5787 = !DILocation(line: 451, column: 37, scope: !5770)
!5788 = !DILocation(line: 452, column: 2, scope: !5770)
!5789 = !DILocation(line: 452, column: 6, scope: !5770)
!5790 = !DILocation(line: 452, column: 27, scope: !5770)
!5791 = !DILocation(line: 452, column: 35, scope: !5770)
!5792 = !DILocation(line: 452, column: 13, scope: !5770)
!5793 = !DILocation(line: 454, column: 6, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5770, file: !3, line: 454, column: 6)
!5795 = !DILocation(line: 454, column: 11, scope: !5794)
!5796 = !DILocation(line: 454, column: 6, scope: !5770)
!5797 = !DILocation(line: 455, column: 32, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5794, file: !3, line: 454, column: 28)
!5799 = !DILocation(line: 455, column: 10, scope: !5798)
!5800 = !DILocation(line: 455, column: 8, scope: !5798)
!5801 = !DILocation(line: 456, column: 7, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5798, file: !3, line: 456, column: 7)
!5803 = !DILocation(line: 456, column: 12, scope: !5802)
!5804 = !DILocation(line: 456, column: 17, scope: !5802)
!5805 = !DILocation(line: 456, column: 20, scope: !5802)
!5806 = !DILocation(line: 456, column: 25, scope: !5802)
!5807 = !DILocation(line: 456, column: 7, scope: !5798)
!5808 = !DILocation(line: 457, column: 4, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5802, file: !3, line: 457, column: 4)
!5810 = !DILocation(line: 457, column: 4, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 457, column: 4)
!5812 = !DILocation(line: 457, column: 4, scope: !5802)
!5813 = !DILocation(line: 459, column: 2, scope: !5798)
!5814 = !DILocation(line: 460, column: 6, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !5770, file: !3, line: 460, column: 6)
!5816 = !DILocation(line: 460, column: 11, scope: !5815)
!5817 = !DILocation(line: 460, column: 27, scope: !5815)
!5818 = !DILocation(line: 460, column: 31, scope: !5815)
!5819 = !DILocation(line: 460, column: 6, scope: !5770)
!5820 = !DILocation(line: 461, column: 8, scope: !5815)
!5821 = !DILocation(line: 461, column: 3, scope: !5815)
!5822 = !DILocation(line: 463, column: 9, scope: !5770)
!5823 = !DILocation(line: 464, column: 1, scope: !5770)
!5824 = !DILocation(line: 463, column: 2, scope: !5770)
!5825 = !DISubprogram(name: "pci_find_bus", scope: !179, file: !179, line: 1111, type: !5826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5826 = !DISubroutineType(types: !5827)
!5827 = !{!177, !114, !114}
!5828 = distinct !DISubprogram(name: "kzalloc", scope: !164, file: !164, line: 719, type: !5829, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5831)
!5829 = !DISubroutineType(types: !5830)
!5830 = !{!176, !346, !174}
!5831 = !{!5832, !5833}
!5832 = !DILocalVariable(name: "size", arg: 1, scope: !5828, file: !164, line: 719, type: !346)
!5833 = !DILocalVariable(name: "flags", arg: 2, scope: !5828, file: !164, line: 719, type: !174)
!5834 = !DILocation(line: 719, column: 52, scope: !5828)
!5835 = !DILocation(line: 719, column: 64, scope: !5828)
!5836 = !DILocation(line: 721, column: 17, scope: !5828)
!5837 = !DILocation(line: 721, column: 23, scope: !5828)
!5838 = !DILocation(line: 721, column: 29, scope: !5828)
!5839 = !DILocation(line: 721, column: 9, scope: !5828)
!5840 = !DILocation(line: 721, column: 2, scope: !5828)
!5841 = !DISubprogram(name: "_dev_err", scope: !5842, file: !5842, line: 50, type: !5843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5842 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5843 = !DISubroutineType(types: !5844)
!5844 = !{null, !4283, !218, null}
!5845 = !DISubprogram(name: "acpi_pci_root_create", scope: !4893, file: !4893, line: 79, type: !5846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5846 = !DISubroutineType(types: !5847)
!5847 = !{!177, !4896, !5171, !5179, !176}
!5848 = !DISubprogram(name: "pcie_bus_configure_settings", scope: !179, file: !179, line: 1067, type: !4853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5849 = distinct !DISubprogram(name: "pcibios_root_bridge_prepare", scope: !3, file: !3, line: 588, type: !5850, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5899)
!5850 = !DISubroutineType(types: !5851)
!5851 = !{!114, !5852}
!5852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5853, size: 64)
!5853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_host_bridge", file: !179, line: 563, size: 7168, elements: !5854)
!5854 = !{!5855, !5856, !5857, !5858, !5859, !5860, !5861, !5862, !5863, !5864, !5868, !5874, !5878, !5879, !5880, !5881, !5882, !5883, !5884, !5885, !5886, !5887, !5888, !5889, !5890, !5891, !5892, !5898}
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5853, file: !179, line: 564, baseType: !4264, size: 5824)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5853, file: !179, line: 565, baseType: !177, size: 64, offset: 5824)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5853, file: !179, line: 566, baseType: !4844, size: 64, offset: 5888)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "child_ops", scope: !5853, file: !179, line: 567, baseType: !4844, size: 64, offset: 5952)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !5853, file: !179, line: 568, baseType: !176, size: 64, offset: 6016)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "busnr", scope: !5853, file: !179, line: 569, baseType: !114, size: 32, offset: 6080)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "domain_nr", scope: !5853, file: !179, line: 570, baseType: !114, size: 32, offset: 6112)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "windows", scope: !5853, file: !179, line: 571, baseType: !182, size: 128, offset: 6144)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ranges", scope: !5853, file: !179, line: 572, baseType: !182, size: 128, offset: 6272)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "swizzle_irq", scope: !5853, file: !179, line: 573, baseType: !5865, size: 64, offset: 6400)
!5865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5866, size: 64)
!5866 = !DISubroutineType(types: !5867)
!5867 = !{!258, !191, !4988}
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "map_irq", scope: !5853, file: !179, line: 574, baseType: !5869, size: 64, offset: 6464)
!5869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5870, size: 64)
!5870 = !DISubroutineType(types: !5871)
!5871 = !{!114, !5872, !258, !258}
!5872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5873, size: 64)
!5873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "release_fn", scope: !5853, file: !179, line: 575, baseType: !5875, size: 64, offset: 6528)
!5875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5876, size: 64)
!5876 = !DISubroutineType(types: !5877)
!5877 = !{null, !5852}
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "release_data", scope: !5853, file: !179, line: 576, baseType: !176, size: 64, offset: 6592)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_reset_delay", scope: !5853, file: !179, line: 577, baseType: !7, size: 1, offset: 6656, flags: DIFlagBitField, extraData: i64 6656)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "no_ext_tags", scope: !5853, file: !179, line: 578, baseType: !7, size: 1, offset: 6657, flags: DIFlagBitField, extraData: i64 6656)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "no_inc_mrrs", scope: !5853, file: !179, line: 579, baseType: !7, size: 1, offset: 6658, flags: DIFlagBitField, extraData: i64 6656)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "native_aer", scope: !5853, file: !179, line: 580, baseType: !7, size: 1, offset: 6659, flags: DIFlagBitField, extraData: i64 6656)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "native_pcie_hotplug", scope: !5853, file: !179, line: 581, baseType: !7, size: 1, offset: 6660, flags: DIFlagBitField, extraData: i64 6656)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "native_shpc_hotplug", scope: !5853, file: !179, line: 582, baseType: !7, size: 1, offset: 6661, flags: DIFlagBitField, extraData: i64 6656)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "native_pme", scope: !5853, file: !179, line: 583, baseType: !7, size: 1, offset: 6662, flags: DIFlagBitField, extraData: i64 6656)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "native_ltr", scope: !5853, file: !179, line: 584, baseType: !7, size: 1, offset: 6663, flags: DIFlagBitField, extraData: i64 6656)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "native_dpc", scope: !5853, file: !179, line: 585, baseType: !7, size: 1, offset: 6664, flags: DIFlagBitField, extraData: i64 6656)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "native_cxl_error", scope: !5853, file: !179, line: 586, baseType: !7, size: 1, offset: 6665, flags: DIFlagBitField, extraData: i64 6656)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_config", scope: !5853, file: !179, line: 587, baseType: !7, size: 1, offset: 6666, flags: DIFlagBitField, extraData: i64 6656)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "size_windows", scope: !5853, file: !179, line: 588, baseType: !7, size: 1, offset: 6667, flags: DIFlagBitField, extraData: i64 6656)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !5853, file: !179, line: 589, baseType: !7, size: 1, offset: 6668, flags: DIFlagBitField, extraData: i64 6656)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "align_resource", scope: !5853, file: !179, line: 592, baseType: !5893, size: 64, offset: 6720)
!5893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5894, size: 64)
!5894 = !DISubroutineType(types: !5895)
!5895 = !{!4748, !191, !5896, !4748, !4748, !4748}
!5896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5897, size: 64)
!5897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4744)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5853, file: !179, line: 597, baseType: !2582, align: 512, offset: 7168)
!5899 = !{!5900, !5901}
!5900 = !DILocalVariable(name: "bridge", arg: 1, scope: !5849, file: !3, line: 588, type: !5852)
!5901 = !DILocalVariable(name: "sd", scope: !5902, file: !3, line: 597, type: !5904)
!5902 = distinct !DILexicalBlock(scope: !5903, file: !3, line: 596, column: 27)
!5903 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 596, column: 6)
!5904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5188, size: 64)
!5905 = !DILocation(line: 588, column: 57, scope: !5849)
!5906 = !DILocation(line: 596, column: 7, scope: !5903)
!5907 = !DILocation(line: 596, column: 15, scope: !5903)
!5908 = !DILocation(line: 596, column: 19, scope: !5903)
!5909 = !DILocation(line: 596, column: 6, scope: !5849)
!5910 = !DILocation(line: 597, column: 3, scope: !5902)
!5911 = !DILocation(line: 597, column: 23, scope: !5902)
!5912 = !DILocation(line: 597, column: 28, scope: !5902)
!5913 = !DILocation(line: 597, column: 36, scope: !5902)
!5914 = !DILocation(line: 597, column: 41, scope: !5902)
!5915 = !DILocation(line: 598, column: 3, scope: !5902)
!5916 = !DILocation(line: 599, column: 2, scope: !5903)
!5917 = !DILocation(line: 599, column: 2, scope: !5902)
!5918 = !DILocation(line: 600, column: 2, scope: !5849)
!5919 = !DISubprogram(name: "set_primary_fwnode", scope: !99, file: !99, line: 1134, type: !5920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5920 = !DISubroutineType(types: !5921)
!5921 = !{null, !4263, !4484}
!5922 = distinct !DISubprogram(name: "acpi_fwnode_handle", scope: !4898, file: !4898, line: 451, type: !5923, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5925)
!5923 = !DISubroutineType(types: !5924)
!5924 = !{!4484, !4901}
!5925 = !{!5926}
!5926 = !DILocalVariable(name: "adev", arg: 1, scope: !5922, file: !4898, line: 451, type: !4901)
!5927 = !DILocation(line: 451, column: 76, scope: !5922)
!5928 = !DILocation(line: 453, column: 10, scope: !5922)
!5929 = !DILocation(line: 453, column: 16, scope: !5922)
!5930 = !DILocation(line: 453, column: 2, scope: !5922)
!5931 = distinct !DISubprogram(name: "pci_acpi_init", scope: !3, file: !3, line: 603, type: !734, scopeLine: 604, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5932)
!5932 = !{!5933}
!5933 = !DILocalVariable(name: "dev", scope: !5931, file: !3, line: 605, type: !191)
!5934 = !DILocation(line: 605, column: 2, scope: !5931)
!5935 = !DILocation(line: 605, column: 18, scope: !5931)
!5936 = !DILocation(line: 607, column: 6, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5931, file: !3, line: 607, column: 6)
!5938 = !DILocation(line: 607, column: 6, scope: !5931)
!5939 = !DILocation(line: 608, column: 3, scope: !5937)
!5940 = !DILocation(line: 610, column: 2, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5931, file: !3, line: 610, column: 2)
!5942 = !DILocation(line: 610, column: 2, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5941, file: !3, line: 610, column: 2)
!5944 = !DILocation(line: 611, column: 2, scope: !5931)
!5945 = !DILocation(line: 612, column: 21, scope: !5931)
!5946 = !DILocation(line: 613, column: 22, scope: !5931)
!5947 = !DILocation(line: 614, column: 24, scope: !5931)
!5948 = !DILocation(line: 616, column: 6, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5931, file: !3, line: 616, column: 6)
!5950 = !DILocation(line: 616, column: 6, scope: !5931)
!5951 = !DILocation(line: 622, column: 3, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5953, file: !3, line: 622, column: 3)
!5953 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 616, column: 20)
!5954 = !DILocation(line: 622, column: 3, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5952, file: !3, line: 622, column: 3)
!5956 = !DILocation(line: 623, column: 3, scope: !5953)
!5957 = !DILocation(line: 624, column: 24, scope: !5953)
!5958 = !DILocation(line: 624, column: 4, scope: !5953)
!5959 = distinct !{!5959, !5956, !5960, !5541, !5542}
!5960 = !DILocation(line: 624, column: 27, scope: !5953)
!5961 = !DILocation(line: 625, column: 2, scope: !5953)
!5962 = !DILocation(line: 627, column: 2, scope: !5931)
!5963 = !DILocation(line: 628, column: 1, scope: !5931)
!5964 = !DISubprogram(name: "acpi_irq_penalty_init", scope: !5965, file: !5965, line: 52, type: !734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5965 = !DIFile(filename: "./include/acpi/acpi_drivers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6273b05386994a65b3932c7b24a17050")
!5966 = !DISubprogram(name: "acpi_pci_irq_enable", scope: !5967, file: !5967, line: 378, type: !4210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5967 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!5968 = !DISubprogram(name: "pci_get_device", scope: !179, file: !179, line: 1176, type: !5969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5969 = !DISubroutineType(types: !5970)
!5970 = !{!191, !7, !7, !191}
!5971 = distinct !DISubprogram(name: "set_use_crs", scope: !3, file: !3, line: 29, type: !5314, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5972)
!5972 = !{!5973}
!5973 = !DILocalVariable(name: "id", arg: 1, scope: !5971, file: !3, line: 29, type: !5316)
!5974 = !DILocation(line: 29, column: 59, scope: !5971)
!5975 = !DILocation(line: 31, column: 14, scope: !5971)
!5976 = !DILocation(line: 32, column: 2, scope: !5971)
!5977 = distinct !DISubprogram(name: "set_nouse_crs", scope: !3, file: !3, line: 35, type: !5314, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5978)
!5978 = !{!5979}
!5979 = !DILocalVariable(name: "id", arg: 1, scope: !5977, file: !3, line: 35, type: !5316)
!5980 = !DILocation(line: 35, column: 61, scope: !5977)
!5981 = !DILocation(line: 37, column: 14, scope: !5977)
!5982 = !DILocation(line: 38, column: 2, scope: !5977)
!5983 = distinct !DISubprogram(name: "set_ignore_seg", scope: !3, file: !3, line: 41, type: !5314, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5984)
!5984 = !{!5985}
!5985 = !DILocalVariable(name: "id", arg: 1, scope: !5983, file: !3, line: 41, type: !5316)
!5986 = !DILocation(line: 41, column: 62, scope: !5983)
!5987 = !DILocation(line: 43, column: 2, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5983, file: !3, line: 43, column: 2)
!5989 = !DILocation(line: 43, column: 2, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 43, column: 2)
!5991 = !DILocation(line: 44, column: 17, scope: !5983)
!5992 = !DILocation(line: 45, column: 2, scope: !5983)
!5993 = distinct !DISubprogram(name: "set_no_e820", scope: !3, file: !3, line: 48, type: !5314, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5994)
!5994 = !{!5995}
!5995 = !DILocalVariable(name: "id", arg: 1, scope: !5993, file: !3, line: 48, type: !5316)
!5996 = !DILocation(line: 48, column: 59, scope: !5993)
!5997 = !DILocation(line: 50, column: 2, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 50, column: 2)
!5999 = !DILocation(line: 50, column: 2, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5998, file: !3, line: 50, column: 2)
!6001 = !DILocation(line: 52, column: 15, scope: !5993)
!6002 = !DILocation(line: 53, column: 2, scope: !5993)
!6003 = distinct !DISubprogram(name: "pci_physfn", scope: !179, file: !179, line: 534, type: !5500, scopeLine: 535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6004)
!6004 = !{!6005}
!6005 = !DILocalVariable(name: "dev", arg: 1, scope: !6003, file: !179, line: 534, type: !191)
!6006 = !DILocation(line: 534, column: 58, scope: !6003)
!6007 = !DILocation(line: 540, column: 9, scope: !6003)
!6008 = !DILocation(line: 540, column: 2, scope: !6003)
!6009 = distinct !DISubprogram(name: "pci_is_root_bus", scope: !179, file: !179, line: 698, type: !6010, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6012)
!6010 = !DISubroutineType(types: !6011)
!6011 = !{!720, !177}
!6012 = !{!6013}
!6013 = !DILocalVariable(name: "pbus", arg: 1, scope: !6009, file: !179, line: 698, type: !177)
!6014 = !DILocation(line: 698, column: 52, scope: !6009)
!6015 = !DILocation(line: 700, column: 11, scope: !6009)
!6016 = !DILocation(line: 700, column: 17, scope: !6009)
!6017 = !DILocation(line: 700, column: 9, scope: !6009)
!6018 = !DILocation(line: 700, column: 2, scope: !6009)
!6019 = distinct !DISubprogram(name: "pci_is_pcie", scope: !179, file: !179, line: 2424, type: !5457, scopeLine: 2425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6020)
!6020 = !{!6021}
!6021 = !DILocalVariable(name: "dev", arg: 1, scope: !6019, file: !179, line: 2424, type: !191)
!6022 = !DILocation(line: 2424, column: 48, scope: !6019)
!6023 = !DILocation(line: 2426, column: 22, scope: !6019)
!6024 = !DILocation(line: 2426, column: 9, scope: !6019)
!6025 = !DILocation(line: 2426, column: 2, scope: !6019)
!6026 = distinct !DISubprogram(name: "pci_pcie_type", scope: !179, file: !179, line: 2442, type: !6027, scopeLine: 2443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6029)
!6027 = !DISubroutineType(types: !6028)
!6028 = !{!114, !5872}
!6029 = !{!6030}
!6030 = !DILocalVariable(name: "dev", arg: 1, scope: !6026, file: !179, line: 2442, type: !5872)
!6031 = !DILocation(line: 2442, column: 55, scope: !6026)
!6032 = !DILocation(line: 2444, column: 24, scope: !6026)
!6033 = !DILocation(line: 2444, column: 10, scope: !6026)
!6034 = !DILocation(line: 2444, column: 29, scope: !6026)
!6035 = !DILocation(line: 2444, column: 51, scope: !6026)
!6036 = !DILocation(line: 2444, column: 2, scope: !6026)
!6037 = distinct !DISubprogram(name: "pci_pcie_cap", scope: !179, file: !179, line: 2413, type: !4210, scopeLine: 2414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6038)
!6038 = !{!6039}
!6039 = !DILocalVariable(name: "dev", arg: 1, scope: !6037, file: !179, line: 2413, type: !191)
!6040 = !DILocation(line: 2413, column: 48, scope: !6037)
!6041 = !DILocation(line: 2415, column: 9, scope: !6037)
!6042 = !DILocation(line: 2415, column: 14, scope: !6037)
!6043 = !DILocation(line: 2415, column: 2, scope: !6037)
!6044 = distinct !DISubprogram(name: "pcie_caps_reg", scope: !179, file: !179, line: 2433, type: !6045, scopeLine: 2434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6047)
!6045 = !DISubroutineType(types: !6046)
!6046 = !{!267, !5872}
!6047 = !{!6048}
!6048 = !DILocalVariable(name: "dev", arg: 1, scope: !6044, file: !179, line: 2433, type: !5872)
!6049 = !DILocation(line: 2433, column: 55, scope: !6044)
!6050 = !DILocation(line: 2435, column: 9, scope: !6044)
!6051 = !DILocation(line: 2435, column: 14, scope: !6044)
!6052 = !DILocation(line: 2435, column: 2, scope: !6044)
!6053 = !DISubprogram(name: "fwnode_find_reference", scope: !122, file: !122, line: 132, type: !6054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6054 = !DISubroutineType(types: !6055)
!6055 = !{!4484, !4506, !218, !7}
!6056 = !DISubprogram(name: "__dev_fwnode", scope: !122, file: !122, line: 37, type: !6057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6057 = !DISubroutineType(types: !6058)
!6058 = !{!4484, !4263}
!6059 = distinct !DISubprogram(name: "IS_ERR", scope: !6060, file: !6060, line: 59, type: !6061, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6063)
!6060 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6061 = !DISubroutineType(types: !6062)
!6062 = !{!720, !2544}
!6063 = !{!6064}
!6064 = !DILocalVariable(name: "ptr", arg: 1, scope: !6059, file: !6060, line: 59, type: !2544)
!6065 = !DILocation(line: 59, column: 60, scope: !6059)
!6066 = !DILocation(line: 61, column: 9, scope: !6059)
!6067 = !DILocation(line: 61, column: 2, scope: !6059)
!6068 = !DISubprogram(name: "fwnode_handle_put", scope: !122, file: !122, line: 182, type: !4500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6069 = !DISubprogram(name: "acpi_get_node", scope: !5967, file: !5967, line: 444, type: !6070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6070 = !DISubroutineType(types: !6071)
!6071 = !{!114, !4907}
!6072 = !DISubprogram(name: "x86_pci_root_bus_node", scope: !6073, file: !6073, line: 173, type: !2398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6073 = !DIFile(filename: "./arch/x86/include/asm/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "120eda241c1b2b25166ee71f2a584d2d")
!6074 = !DISubprogram(name: "_dev_info", scope: !5842, file: !5842, line: 56, type: !5843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6075 = distinct !DISubprogram(name: "node_state", scope: !153, file: !153, line: 421, type: !6076, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6078)
!6076 = !DISubroutineType(types: !6077)
!6077 = !{!114, !114, !152}
!6078 = !{!6079, !6080}
!6079 = !DILocalVariable(name: "node", arg: 1, scope: !6075, file: !153, line: 421, type: !114)
!6080 = !DILocalVariable(name: "state", arg: 2, scope: !6075, file: !153, line: 421, type: !152)
!6081 = !DILocation(line: 421, column: 34, scope: !6075)
!6082 = !DILocation(line: 421, column: 57, scope: !6075)
!6083 = !DILocation(line: 423, column: 9, scope: !6075)
!6084 = !DILocation(line: 423, column: 2, scope: !6075)
!6085 = distinct !DISubprogram(name: "const_test_bit", scope: !6086, file: !6086, line: 166, type: !6087, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6092)
!6086 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6087 = !DISubroutineType(types: !6088)
!6088 = !{!720, !349, !6089}
!6089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6090, size: 64)
!6090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6091)
!6091 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !349)
!6092 = !{!6093, !6094, !6095, !6096, !6097}
!6093 = !DILocalVariable(name: "nr", arg: 1, scope: !6085, file: !6086, line: 166, type: !349)
!6094 = !DILocalVariable(name: "addr", arg: 2, scope: !6085, file: !6086, line: 166, type: !6089)
!6095 = !DILocalVariable(name: "p", scope: !6085, file: !6086, line: 168, type: !4887)
!6096 = !DILocalVariable(name: "mask", scope: !6085, file: !6086, line: 169, type: !349)
!6097 = !DILocalVariable(name: "val", scope: !6085, file: !6086, line: 170, type: !349)
!6098 = !DILocation(line: 166, column: 30, scope: !6085)
!6099 = !DILocation(line: 166, column: 64, scope: !6085)
!6100 = !DILocation(line: 168, column: 2, scope: !6085)
!6101 = !DILocation(line: 168, column: 23, scope: !6085)
!6102 = !DILocation(line: 168, column: 50, scope: !6085)
!6103 = !DILocation(line: 168, column: 57, scope: !6085)
!6104 = !DILocation(line: 168, column: 55, scope: !6085)
!6105 = !DILocation(line: 169, column: 2, scope: !6085)
!6106 = !DILocation(line: 169, column: 16, scope: !6085)
!6107 = !DILocation(line: 169, column: 23, scope: !6085)
!6108 = !DILocation(line: 170, column: 2, scope: !6085)
!6109 = !DILocation(line: 170, column: 16, scope: !6085)
!6110 = !DILocation(line: 170, column: 23, scope: !6085)
!6111 = !DILocation(line: 170, column: 22, scope: !6085)
!6112 = !DILocation(line: 172, column: 12, scope: !6085)
!6113 = !DILocation(line: 172, column: 18, scope: !6085)
!6114 = !DILocation(line: 172, column: 16, scope: !6085)
!6115 = !DILocation(line: 172, column: 10, scope: !6085)
!6116 = !DILocation(line: 172, column: 9, scope: !6085)
!6117 = !DILocation(line: 173, column: 1, scope: !6085)
!6118 = !DILocation(line: 172, column: 2, scope: !6085)
!6119 = distinct !DISubprogram(name: "_test_bit", scope: !6120, file: !6120, line: 139, type: !6087, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6121)
!6120 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6121 = !{!6122, !6123}
!6122 = !DILocalVariable(name: "nr", arg: 1, scope: !6119, file: !6120, line: 139, type: !349)
!6123 = !DILocalVariable(name: "addr", arg: 2, scope: !6119, file: !6120, line: 139, type: !6089)
!6124 = !DILocation(line: 139, column: 25, scope: !6119)
!6125 = !DILocation(line: 139, column: 59, scope: !6119)
!6126 = !DILocation(line: 141, column: 25, scope: !6119)
!6127 = !DILocation(line: 141, column: 32, scope: !6119)
!6128 = !DILocation(line: 141, column: 30, scope: !6119)
!6129 = !DILocation(line: 141, column: 2, scope: !6119)
!6130 = !DILocation(line: 142, column: 23, scope: !6119)
!6131 = !DILocation(line: 142, column: 27, scope: !6119)
!6132 = !DILocation(line: 142, column: 9, scope: !6119)
!6133 = !DILocation(line: 142, column: 2, scope: !6119)
!6134 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6135, file: !6135, line: 66, type: !6136, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6141)
!6135 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6136 = !DISubroutineType(types: !6137)
!6137 = !{null, !6138, !346}
!6138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6139, size: 64)
!6139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6140)
!6140 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6141 = !{!6142, !6143}
!6142 = !DILocalVariable(name: "v", arg: 1, scope: !6134, file: !6135, line: 66, type: !6138)
!6143 = !DILocalVariable(name: "size", arg: 2, scope: !6134, file: !6135, line: 66, type: !346)
!6144 = !DILocation(line: 66, column: 73, scope: !6134)
!6145 = !DILocation(line: 66, column: 83, scope: !6134)
!6146 = !DILocation(line: 68, column: 19, scope: !6134)
!6147 = !DILocation(line: 68, column: 22, scope: !6134)
!6148 = !DILocation(line: 68, column: 2, scope: !6134)
!6149 = !DILocation(line: 69, column: 2, scope: !6134)
!6150 = !DILocation(line: 70, column: 1, scope: !6134)
!6151 = distinct !DISubprogram(name: "arch_test_bit", scope: !6152, file: !6152, line: 237, type: !6087, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6153)
!6152 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6153 = !{!6154, !6155}
!6154 = !DILocalVariable(name: "nr", arg: 1, scope: !6151, file: !6152, line: 237, type: !349)
!6155 = !DILocalVariable(name: "addr", arg: 2, scope: !6151, file: !6152, line: 237, type: !6089)
!6156 = !DILocation(line: 237, column: 29, scope: !6151)
!6157 = !DILocation(line: 237, column: 63, scope: !6151)
!6158 = !DILocation(line: 239, column: 30, scope: !6151)
!6159 = !DILocation(line: 239, column: 9, scope: !6151)
!6160 = !DILocation(line: 239, column: 54, scope: !6151)
!6161 = !DILocation(line: 239, column: 58, scope: !6151)
!6162 = !DILocation(line: 239, column: 36, scope: !6151)
!6163 = !DILocation(line: 240, column: 26, scope: !6151)
!6164 = !DILocation(line: 240, column: 30, scope: !6151)
!6165 = !DILocation(line: 240, column: 8, scope: !6151)
!6166 = !DILocation(line: 239, column: 2, scope: !6151)
!6167 = distinct !DISubprogram(name: "kasan_check_read", scope: !6168, file: !6168, line: 40, type: !6169, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6171)
!6168 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6169 = !DISubroutineType(types: !6170)
!6170 = !{!720, !6138, !7}
!6171 = !{!6172, !6173}
!6172 = !DILocalVariable(name: "p", arg: 1, scope: !6167, file: !6168, line: 40, type: !6138)
!6173 = !DILocalVariable(name: "size", arg: 2, scope: !6167, file: !6168, line: 40, type: !7)
!6174 = !DILocation(line: 40, column: 58, scope: !6167)
!6175 = !DILocation(line: 40, column: 74, scope: !6167)
!6176 = !DILocation(line: 42, column: 2, scope: !6167)
!6177 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6178, file: !6178, line: 229, type: !6179, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6181)
!6178 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6179 = !DISubroutineType(types: !6180)
!6180 = !{null, !6138, !346, !114}
!6181 = !{!6182, !6183, !6184}
!6182 = !DILocalVariable(name: "ptr", arg: 1, scope: !6177, file: !6178, line: 229, type: !6138)
!6183 = !DILocalVariable(name: "size", arg: 2, scope: !6177, file: !6178, line: 229, type: !346)
!6184 = !DILocalVariable(name: "type", arg: 3, scope: !6177, file: !6178, line: 230, type: !114)
!6185 = !DILocation(line: 229, column: 60, scope: !6177)
!6186 = !DILocation(line: 229, column: 72, scope: !6177)
!6187 = !DILocation(line: 230, column: 15, scope: !6177)
!6188 = !DILocation(line: 230, column: 23, scope: !6177)
!6189 = distinct !DISubprogram(name: "constant_test_bit", scope: !6152, file: !6152, line: 204, type: !6190, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6192)
!6190 = !DISubroutineType(types: !6191)
!6191 = !{!720, !335, !6089}
!6192 = !{!6193, !6194}
!6193 = !DILocalVariable(name: "nr", arg: 1, scope: !6189, file: !6152, line: 204, type: !335)
!6194 = !DILocalVariable(name: "addr", arg: 2, scope: !6189, file: !6152, line: 204, type: !6089)
!6195 = !DILocation(line: 204, column: 52, scope: !6189)
!6196 = !DILocation(line: 204, column: 86, scope: !6189)
!6197 = !DILocation(line: 206, column: 19, scope: !6189)
!6198 = !DILocation(line: 206, column: 22, scope: !6189)
!6199 = !DILocation(line: 206, column: 15, scope: !6189)
!6200 = !DILocation(line: 207, column: 4, scope: !6189)
!6201 = !DILocation(line: 207, column: 9, scope: !6189)
!6202 = !DILocation(line: 207, column: 12, scope: !6189)
!6203 = !DILocation(line: 206, column: 44, scope: !6189)
!6204 = !DILocation(line: 207, column: 37, scope: !6189)
!6205 = !DILocation(line: 206, column: 2, scope: !6189)
!6206 = distinct !DISubprogram(name: "variable_test_bit", scope: !6152, file: !6152, line: 224, type: !6190, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6207)
!6207 = !{!6208, !6209, !6210}
!6208 = !DILocalVariable(name: "nr", arg: 1, scope: !6206, file: !6152, line: 224, type: !335)
!6209 = !DILocalVariable(name: "addr", arg: 2, scope: !6206, file: !6152, line: 224, type: !6089)
!6210 = !DILocalVariable(name: "oldbit", scope: !6206, file: !6152, line: 226, type: !720)
!6211 = !DILocation(line: 224, column: 52, scope: !6206)
!6212 = !DILocation(line: 224, column: 86, scope: !6206)
!6213 = !DILocation(line: 226, column: 2, scope: !6206)
!6214 = !DILocation(line: 226, column: 7, scope: !6206)
!6215 = !DILocation(line: 231, column: 33, scope: !6206)
!6216 = !DILocation(line: 231, column: 46, scope: !6206)
!6217 = !DILocation(line: 228, column: 2, scope: !6206)
!6218 = !{i64 2148261667, i64 2148261741}
!6219 = !DILocation(line: 233, column: 9, scope: !6206)
!6220 = !DILocation(line: 234, column: 1, scope: !6206)
!6221 = !DILocation(line: 233, column: 2, scope: !6206)
!6222 = distinct !DISubprogram(name: "kmalloc", scope: !164, file: !164, line: 591, type: !5829, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6223)
!6223 = !{!6224, !6225, !6226}
!6224 = !DILocalVariable(name: "size", arg: 1, scope: !6222, file: !164, line: 591, type: !346)
!6225 = !DILocalVariable(name: "flags", arg: 2, scope: !6222, file: !164, line: 591, type: !174)
!6226 = !DILocalVariable(name: "index", scope: !6227, file: !164, line: 594, type: !7)
!6227 = distinct !DILexicalBlock(scope: !6228, file: !164, line: 593, column: 42)
!6228 = distinct !DILexicalBlock(scope: !6222, file: !164, line: 593, column: 6)
!6229 = !DILocation(line: 591, column: 61, scope: !6222)
!6230 = !DILocation(line: 591, column: 73, scope: !6222)
!6231 = !DILocation(line: 593, column: 27, scope: !6228)
!6232 = !DILocation(line: 593, column: 6, scope: !6228)
!6233 = !DILocation(line: 593, column: 33, scope: !6228)
!6234 = !DILocation(line: 593, column: 36, scope: !6228)
!6235 = !DILocation(line: 593, column: 6, scope: !6222)
!6236 = !DILocation(line: 594, column: 3, scope: !6227)
!6237 = !DILocation(line: 594, column: 16, scope: !6227)
!6238 = !DILocation(line: 596, column: 7, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6227, file: !164, line: 596, column: 7)
!6240 = !DILocation(line: 596, column: 12, scope: !6239)
!6241 = !DILocation(line: 596, column: 7, scope: !6227)
!6242 = !DILocation(line: 597, column: 25, scope: !6239)
!6243 = !DILocation(line: 597, column: 31, scope: !6239)
!6244 = !DILocation(line: 597, column: 11, scope: !6239)
!6245 = !DILocation(line: 597, column: 4, scope: !6239)
!6246 = !DILocation(line: 599, column: 11, scope: !6227)
!6247 = !DILocation(line: 599, column: 9, scope: !6227)
!6248 = !DILocation(line: 601, column: 33, scope: !6227)
!6249 = !DILocation(line: 601, column: 40, scope: !6227)
!6250 = !DILocation(line: 601, column: 20, scope: !6227)
!6251 = !DILocation(line: 601, column: 5, scope: !6227)
!6252 = !DILocation(line: 601, column: 51, scope: !6227)
!6253 = !DILocation(line: 602, column: 5, scope: !6227)
!6254 = !DILocation(line: 602, column: 12, scope: !6227)
!6255 = !DILocation(line: 600, column: 10, scope: !6227)
!6256 = !DILocation(line: 600, column: 3, scope: !6227)
!6257 = !DILocation(line: 603, column: 2, scope: !6228)
!6258 = !DILocation(line: 604, column: 19, scope: !6222)
!6259 = !DILocation(line: 604, column: 25, scope: !6222)
!6260 = !DILocation(line: 604, column: 9, scope: !6222)
!6261 = !DILocation(line: 604, column: 2, scope: !6222)
!6262 = !DILocation(line: 605, column: 1, scope: !6222)
!6263 = !DISubprogram(name: "kmalloc_large", scope: !164, file: !164, line: 531, type: !5829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6264 = distinct !DISubprogram(name: "__kmalloc_index", scope: !164, file: !164, line: 444, type: !6265, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6267)
!6265 = !DISubroutineType(types: !6266)
!6266 = !{!7, !346, !720}
!6267 = !{!6268, !6269}
!6268 = !DILocalVariable(name: "size", arg: 1, scope: !6264, file: !164, line: 444, type: !346)
!6269 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6264, file: !164, line: 445, type: !720)
!6270 = !DILocation(line: 444, column: 60, scope: !6264)
!6271 = !DILocation(line: 445, column: 16, scope: !6264)
!6272 = !DILocation(line: 447, column: 7, scope: !6273)
!6273 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 447, column: 6)
!6274 = !DILocation(line: 447, column: 6, scope: !6264)
!6275 = !DILocation(line: 448, column: 3, scope: !6273)
!6276 = !DILocation(line: 450, column: 6, scope: !6277)
!6277 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 450, column: 6)
!6278 = !DILocation(line: 450, column: 11, scope: !6277)
!6279 = !DILocation(line: 450, column: 6, scope: !6264)
!6280 = !DILocation(line: 451, column: 3, scope: !6277)
!6281 = !DILocation(line: 453, column: 32, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 453, column: 6)
!6283 = !DILocation(line: 453, column: 37, scope: !6282)
!6284 = !DILocation(line: 453, column: 42, scope: !6282)
!6285 = !DILocation(line: 453, column: 45, scope: !6282)
!6286 = !DILocation(line: 453, column: 50, scope: !6282)
!6287 = !DILocation(line: 453, column: 6, scope: !6264)
!6288 = !DILocation(line: 454, column: 3, scope: !6282)
!6289 = !DILocation(line: 455, column: 32, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 455, column: 6)
!6291 = !DILocation(line: 455, column: 37, scope: !6290)
!6292 = !DILocation(line: 455, column: 43, scope: !6290)
!6293 = !DILocation(line: 455, column: 46, scope: !6290)
!6294 = !DILocation(line: 455, column: 51, scope: !6290)
!6295 = !DILocation(line: 455, column: 6, scope: !6264)
!6296 = !DILocation(line: 456, column: 3, scope: !6290)
!6297 = !DILocation(line: 457, column: 6, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 457, column: 6)
!6299 = !DILocation(line: 457, column: 11, scope: !6298)
!6300 = !DILocation(line: 457, column: 6, scope: !6264)
!6301 = !DILocation(line: 457, column: 26, scope: !6298)
!6302 = !DILocation(line: 458, column: 6, scope: !6303)
!6303 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 458, column: 6)
!6304 = !DILocation(line: 458, column: 11, scope: !6303)
!6305 = !DILocation(line: 458, column: 6, scope: !6264)
!6306 = !DILocation(line: 458, column: 26, scope: !6303)
!6307 = !DILocation(line: 459, column: 6, scope: !6308)
!6308 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 459, column: 6)
!6309 = !DILocation(line: 459, column: 11, scope: !6308)
!6310 = !DILocation(line: 459, column: 6, scope: !6264)
!6311 = !DILocation(line: 459, column: 26, scope: !6308)
!6312 = !DILocation(line: 460, column: 6, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 460, column: 6)
!6314 = !DILocation(line: 460, column: 11, scope: !6313)
!6315 = !DILocation(line: 460, column: 6, scope: !6264)
!6316 = !DILocation(line: 460, column: 26, scope: !6313)
!6317 = !DILocation(line: 461, column: 6, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 461, column: 6)
!6319 = !DILocation(line: 461, column: 11, scope: !6318)
!6320 = !DILocation(line: 461, column: 6, scope: !6264)
!6321 = !DILocation(line: 461, column: 26, scope: !6318)
!6322 = !DILocation(line: 462, column: 6, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 462, column: 6)
!6324 = !DILocation(line: 462, column: 11, scope: !6323)
!6325 = !DILocation(line: 462, column: 6, scope: !6264)
!6326 = !DILocation(line: 462, column: 26, scope: !6323)
!6327 = !DILocation(line: 463, column: 6, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 463, column: 6)
!6329 = !DILocation(line: 463, column: 11, scope: !6328)
!6330 = !DILocation(line: 463, column: 6, scope: !6264)
!6331 = !DILocation(line: 463, column: 26, scope: !6328)
!6332 = !DILocation(line: 464, column: 6, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 464, column: 6)
!6334 = !DILocation(line: 464, column: 11, scope: !6333)
!6335 = !DILocation(line: 464, column: 6, scope: !6264)
!6336 = !DILocation(line: 464, column: 26, scope: !6333)
!6337 = !DILocation(line: 465, column: 6, scope: !6338)
!6338 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 465, column: 6)
!6339 = !DILocation(line: 465, column: 11, scope: !6338)
!6340 = !DILocation(line: 465, column: 6, scope: !6264)
!6341 = !DILocation(line: 465, column: 26, scope: !6338)
!6342 = !DILocation(line: 466, column: 6, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 466, column: 6)
!6344 = !DILocation(line: 466, column: 11, scope: !6343)
!6345 = !DILocation(line: 466, column: 6, scope: !6264)
!6346 = !DILocation(line: 466, column: 26, scope: !6343)
!6347 = !DILocation(line: 467, column: 6, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 467, column: 6)
!6349 = !DILocation(line: 467, column: 11, scope: !6348)
!6350 = !DILocation(line: 467, column: 6, scope: !6264)
!6351 = !DILocation(line: 467, column: 26, scope: !6348)
!6352 = !DILocation(line: 468, column: 6, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 468, column: 6)
!6354 = !DILocation(line: 468, column: 11, scope: !6353)
!6355 = !DILocation(line: 468, column: 6, scope: !6264)
!6356 = !DILocation(line: 468, column: 26, scope: !6353)
!6357 = !DILocation(line: 469, column: 6, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 469, column: 6)
!6359 = !DILocation(line: 469, column: 11, scope: !6358)
!6360 = !DILocation(line: 469, column: 6, scope: !6264)
!6361 = !DILocation(line: 469, column: 26, scope: !6358)
!6362 = !DILocation(line: 470, column: 6, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 470, column: 6)
!6364 = !DILocation(line: 470, column: 11, scope: !6363)
!6365 = !DILocation(line: 470, column: 6, scope: !6264)
!6366 = !DILocation(line: 470, column: 26, scope: !6363)
!6367 = !DILocation(line: 471, column: 6, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 471, column: 6)
!6369 = !DILocation(line: 471, column: 11, scope: !6368)
!6370 = !DILocation(line: 471, column: 6, scope: !6264)
!6371 = !DILocation(line: 471, column: 26, scope: !6368)
!6372 = !DILocation(line: 472, column: 6, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 472, column: 6)
!6374 = !DILocation(line: 472, column: 11, scope: !6373)
!6375 = !DILocation(line: 472, column: 6, scope: !6264)
!6376 = !DILocation(line: 472, column: 26, scope: !6373)
!6377 = !DILocation(line: 473, column: 6, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 473, column: 6)
!6379 = !DILocation(line: 473, column: 11, scope: !6378)
!6380 = !DILocation(line: 473, column: 6, scope: !6264)
!6381 = !DILocation(line: 473, column: 26, scope: !6378)
!6382 = !DILocation(line: 474, column: 6, scope: !6383)
!6383 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 474, column: 6)
!6384 = !DILocation(line: 474, column: 11, scope: !6383)
!6385 = !DILocation(line: 474, column: 6, scope: !6264)
!6386 = !DILocation(line: 474, column: 27, scope: !6383)
!6387 = !DILocation(line: 475, column: 6, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 475, column: 6)
!6389 = !DILocation(line: 475, column: 11, scope: !6388)
!6390 = !DILocation(line: 475, column: 6, scope: !6264)
!6391 = !DILocation(line: 475, column: 32, scope: !6388)
!6392 = !DILocation(line: 477, column: 50, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6264, file: !164, line: 477, column: 6)
!6394 = !DILocation(line: 477, column: 6, scope: !6264)
!6395 = !DILocation(line: 478, column: 3, scope: !6393)
!6396 = !DILocation(line: 478, column: 3, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6398, file: !164, line: 478, column: 3)
!6398 = distinct !DILexicalBlock(scope: !6393, file: !164, line: 478, column: 3)
!6399 = !{i32 -2141971145}
!6400 = !DILocation(line: 478, column: 3, scope: !6398)
!6401 = !DILocation(line: 480, column: 3, scope: !6393)
!6402 = !DILocation(line: 480, column: 3, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6393, file: !164, line: 480, column: 3)
!6404 = !DILocation(line: 480, column: 3, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6403, file: !164, line: 480, column: 3)
!6406 = !DILocation(line: 480, column: 3, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !6403, file: !164, line: 480, column: 3)
!6408 = !{i64 2152996354, i64 2152996383, i64 2152996429, i64 2152996487, i64 2152996541, i64 2152996595, i64 2152996650, i64 2152996681}
!6409 = !DILocation(line: 483, column: 2, scope: !6264)
!6410 = !DILocation(line: 484, column: 1, scope: !6264)
!6411 = !DISubprogram(name: "kmalloc_trace", scope: !164, file: !164, line: 525, type: !6412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6412 = !DISubroutineType(types: !6413)
!6413 = !{!176, !6414, !174, !346}
!6414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6415, size: 64)
!6415 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6416, line: 11, flags: DIFlagFwdDecl)
!6416 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6417 = distinct !DISubprogram(name: "kmalloc_type", scope: !164, file: !164, line: 401, type: !6418, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6420)
!6418 = !DISubroutineType(types: !6419)
!6419 = !{!163, !174, !349}
!6420 = !{!6421, !6422}
!6421 = !DILocalVariable(name: "flags", arg: 1, scope: !6417, file: !164, line: 401, type: !174)
!6422 = !DILocalVariable(name: "caller", arg: 2, scope: !6417, file: !164, line: 401, type: !349)
!6423 = !DILocation(line: 401, column: 67, scope: !6417)
!6424 = !DILocation(line: 401, column: 88, scope: !6417)
!6425 = !DILocation(line: 407, column: 6, scope: !6426)
!6426 = distinct !DILexicalBlock(scope: !6417, file: !164, line: 407, column: 6)
!6427 = !DILocation(line: 407, column: 6, scope: !6417)
!6428 = !DILocation(line: 413, column: 3, scope: !6426)
!6429 = !DILocation(line: 423, column: 38, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6417, file: !164, line: 423, column: 6)
!6431 = !DILocation(line: 423, column: 44, scope: !6430)
!6432 = !DILocation(line: 423, column: 6, scope: !6417)
!6433 = !DILocation(line: 424, column: 3, scope: !6430)
!6434 = !DILocation(line: 426, column: 3, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6417, file: !164, line: 425, column: 6)
!6436 = !DILocation(line: 429, column: 1, scope: !6417)
!6437 = !DISubprogram(name: "__kmalloc", scope: !164, file: !164, line: 488, type: !5829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6438 = !DISubprogram(name: "__compiletime_assert_204", scope: !164, file: !164, line: 478, type: !1005, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6439 = distinct !DISubprogram(name: "pci_acpi_root_init_info", scope: !3, file: !3, line: 466, type: !5177, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6440)
!6440 = !{!6441}
!6441 = !DILocalVariable(name: "ci", arg: 1, scope: !6439, file: !3, line: 466, type: !5179)
!6442 = !DILocation(line: 466, column: 63, scope: !6439)
!6443 = !DILocation(line: 468, column: 24, scope: !6439)
!6444 = !DILocation(line: 468, column: 9, scope: !6439)
!6445 = !DILocation(line: 468, column: 2, scope: !6439)
!6446 = distinct !DISubprogram(name: "pci_acpi_root_release_info", scope: !3, file: !3, line: 471, type: !5182, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6447)
!6447 = !{!6448, !6449}
!6448 = !DILocalVariable(name: "ci", arg: 1, scope: !6446, file: !3, line: 471, type: !5179)
!6449 = !DILocalVariable(name: "__mptr", scope: !6450, file: !3, line: 474, type: !176)
!6450 = distinct !DILexicalBlock(scope: !6446, file: !3, line: 474, column: 8)
!6451 = !DILocation(line: 471, column: 67, scope: !6446)
!6452 = !DILocation(line: 473, column: 20, scope: !6446)
!6453 = !DILocation(line: 473, column: 2, scope: !6446)
!6454 = !DILocation(line: 474, column: 8, scope: !6450)
!6455 = !DILocation(line: 474, column: 8, scope: !6446)
!6456 = !DILocation(line: 474, column: 2, scope: !6446)
!6457 = !DILocation(line: 475, column: 1, scope: !6446)
!6458 = distinct !DISubprogram(name: "pci_acpi_root_prepare_resources", scope: !3, file: !3, line: 497, type: !5177, scopeLine: 498, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6459)
!6459 = !{!6460, !6461, !6462, !6463, !6464, !6465, !6466, !6471, !6473, !6476, !6479, !6481}
!6460 = !DILocalVariable(name: "ci", arg: 1, scope: !6458, file: !3, line: 497, type: !5179)
!6461 = !DILocalVariable(name: "device", scope: !6458, file: !3, line: 499, type: !4901)
!6462 = !DILocalVariable(name: "busnum", scope: !6458, file: !3, line: 500, type: !114)
!6463 = !DILocalVariable(name: "entry", scope: !6458, file: !3, line: 501, type: !5199)
!6464 = !DILocalVariable(name: "tmp", scope: !6458, file: !3, line: 501, type: !5199)
!6465 = !DILocalVariable(name: "status", scope: !6458, file: !3, line: 502, type: !114)
!6466 = !DILocalVariable(name: "__mptr", scope: !6467, file: !3, line: 507, type: !176)
!6467 = distinct !DILexicalBlock(scope: !6468, file: !3, line: 507, column: 3)
!6468 = distinct !DILexicalBlock(scope: !6469, file: !3, line: 507, column: 3)
!6469 = distinct !DILexicalBlock(scope: !6470, file: !3, line: 506, column: 19)
!6470 = distinct !DILexicalBlock(scope: !6458, file: !3, line: 506, column: 6)
!6471 = !DILocalVariable(name: "__mptr", scope: !6472, file: !3, line: 507, type: !176)
!6472 = distinct !DILexicalBlock(scope: !6468, file: !3, line: 507, column: 3)
!6473 = !DILocalVariable(name: "__mptr", scope: !6474, file: !3, line: 507, type: !176)
!6474 = distinct !DILexicalBlock(scope: !6475, file: !3, line: 507, column: 3)
!6475 = distinct !DILexicalBlock(scope: !6468, file: !3, line: 507, column: 3)
!6476 = !DILocalVariable(name: "__mptr", scope: !6477, file: !3, line: 513, type: !176)
!6477 = distinct !DILexicalBlock(scope: !6478, file: !3, line: 513, column: 2)
!6478 = distinct !DILexicalBlock(scope: !6458, file: !3, line: 513, column: 2)
!6479 = !DILocalVariable(name: "__mptr", scope: !6480, file: !3, line: 513, type: !176)
!6480 = distinct !DILexicalBlock(scope: !6478, file: !3, line: 513, column: 2)
!6481 = !DILocalVariable(name: "__mptr", scope: !6482, file: !3, line: 513, type: !176)
!6482 = distinct !DILexicalBlock(scope: !6483, file: !3, line: 513, column: 2)
!6483 = distinct !DILexicalBlock(scope: !6478, file: !3, line: 513, column: 2)
!6484 = !DILocation(line: 497, column: 71, scope: !6458)
!6485 = !DILocation(line: 499, column: 2, scope: !6458)
!6486 = !DILocation(line: 499, column: 22, scope: !6458)
!6487 = !DILocation(line: 499, column: 31, scope: !6458)
!6488 = !DILocation(line: 499, column: 35, scope: !6458)
!6489 = !DILocation(line: 500, column: 2, scope: !6458)
!6490 = !DILocation(line: 500, column: 6, scope: !6458)
!6491 = !DILocation(line: 500, column: 15, scope: !6458)
!6492 = !DILocation(line: 500, column: 19, scope: !6458)
!6493 = !DILocation(line: 500, column: 25, scope: !6458)
!6494 = !DILocation(line: 500, column: 35, scope: !6458)
!6495 = !DILocation(line: 501, column: 2, scope: !6458)
!6496 = !DILocation(line: 501, column: 25, scope: !6458)
!6497 = !DILocation(line: 501, column: 33, scope: !6458)
!6498 = !DILocation(line: 502, column: 2, scope: !6458)
!6499 = !DILocation(line: 502, column: 6, scope: !6458)
!6500 = !DILocation(line: 504, column: 41, scope: !6458)
!6501 = !DILocation(line: 504, column: 11, scope: !6458)
!6502 = !DILocation(line: 504, column: 9, scope: !6458)
!6503 = !DILocation(line: 506, column: 6, scope: !6470)
!6504 = !DILocation(line: 506, column: 6, scope: !6458)
!6505 = !DILocation(line: 507, column: 3, scope: !6467)
!6506 = !DILocation(line: 507, column: 3, scope: !6468)
!6507 = !DILocation(line: 507, column: 3, scope: !6472)
!6508 = !DILocation(line: 507, column: 3, scope: !6475)
!6509 = !DILocation(line: 508, column: 34, scope: !6510)
!6510 = distinct !DILexicalBlock(scope: !6475, file: !3, line: 508, column: 8)
!6511 = !DILocation(line: 508, column: 41, scope: !6510)
!6512 = !DILocation(line: 508, column: 8, scope: !6510)
!6513 = !DILocation(line: 508, column: 8, scope: !6475)
!6514 = !DILocation(line: 509, column: 33, scope: !6510)
!6515 = !DILocation(line: 509, column: 5, scope: !6510)
!6516 = !DILocation(line: 508, column: 44, scope: !6510)
!6517 = !DILocation(line: 507, column: 3, scope: !6474)
!6518 = distinct !{!6518, !6506, !6519, !5541, !5542}
!6519 = !DILocation(line: 509, column: 38, scope: !6468)
!6520 = !DILocation(line: 510, column: 10, scope: !6469)
!6521 = !DILocation(line: 510, column: 3, scope: !6469)
!6522 = !DILocation(line: 513, column: 2, scope: !6477)
!6523 = !DILocation(line: 513, column: 2, scope: !6478)
!6524 = !DILocation(line: 513, column: 2, scope: !6480)
!6525 = !DILocation(line: 513, column: 2, scope: !6483)
!6526 = !DILocation(line: 514, column: 3, scope: !6527)
!6527 = distinct !DILexicalBlock(scope: !6528, file: !3, line: 514, column: 3)
!6528 = distinct !DILexicalBlock(scope: !6483, file: !3, line: 513, column: 64)
!6529 = !DILocation(line: 514, column: 3, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6527, file: !3, line: 514, column: 3)
!6531 = !DILocation(line: 516, column: 31, scope: !6528)
!6532 = !DILocation(line: 516, column: 3, scope: !6528)
!6533 = !DILocation(line: 517, column: 2, scope: !6528)
!6534 = !DILocation(line: 513, column: 2, scope: !6482)
!6535 = distinct !{!6535, !6523, !6536, !5541, !5542}
!6536 = !DILocation(line: 517, column: 2, scope: !6478)
!6537 = !DILocation(line: 518, column: 29, scope: !6458)
!6538 = !DILocation(line: 518, column: 38, scope: !6458)
!6539 = !DILocation(line: 518, column: 42, scope: !6458)
!6540 = !DILocation(line: 518, column: 2, scope: !6458)
!6541 = !DILocation(line: 520, column: 2, scope: !6458)
!6542 = !DILocation(line: 521, column: 1, scope: !6458)
!6543 = distinct !DISubprogram(name: "setup_mcfg_map", scope: !3, file: !3, line: 392, type: !5177, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6544)
!6544 = !{!6545, !6546, !6547, !6548, !6549, !6550, !6551}
!6545 = !DILocalVariable(name: "ci", arg: 1, scope: !6543, file: !3, line: 392, type: !5179)
!6546 = !DILocalVariable(name: "result", scope: !6543, file: !3, line: 394, type: !114)
!6547 = !DILocalVariable(name: "seg", scope: !6543, file: !3, line: 394, type: !114)
!6548 = !DILocalVariable(name: "info", scope: !6543, file: !3, line: 395, type: !4888)
!6549 = !DILocalVariable(name: "root", scope: !6543, file: !3, line: 396, type: !4896)
!6550 = !DILocalVariable(name: "dev", scope: !6543, file: !3, line: 397, type: !4263)
!6551 = !DILocalVariable(name: "__mptr", scope: !6552, file: !3, line: 399, type: !176)
!6552 = distinct !DILexicalBlock(scope: !6543, file: !3, line: 399, column: 9)
!6553 = !DILocation(line: 392, column: 54, scope: !6543)
!6554 = !DILocation(line: 394, column: 2, scope: !6543)
!6555 = !DILocation(line: 394, column: 6, scope: !6543)
!6556 = !DILocation(line: 394, column: 14, scope: !6543)
!6557 = !DILocation(line: 395, column: 2, scope: !6543)
!6558 = !DILocation(line: 395, column: 24, scope: !6543)
!6559 = !DILocation(line: 396, column: 2, scope: !6543)
!6560 = !DILocation(line: 396, column: 24, scope: !6543)
!6561 = !DILocation(line: 396, column: 31, scope: !6543)
!6562 = !DILocation(line: 396, column: 35, scope: !6543)
!6563 = !DILocation(line: 397, column: 2, scope: !6543)
!6564 = !DILocation(line: 397, column: 17, scope: !6543)
!6565 = !DILocation(line: 397, column: 24, scope: !6543)
!6566 = !DILocation(line: 397, column: 28, scope: !6543)
!6567 = !DILocation(line: 397, column: 36, scope: !6543)
!6568 = !DILocation(line: 399, column: 9, scope: !6552)
!6569 = !DILocation(line: 399, column: 9, scope: !6543)
!6570 = !DILocation(line: 399, column: 7, scope: !6543)
!6571 = !DILocation(line: 400, column: 24, scope: !6543)
!6572 = !DILocation(line: 400, column: 30, scope: !6543)
!6573 = !DILocation(line: 400, column: 40, scope: !6543)
!6574 = !DILocation(line: 400, column: 20, scope: !6543)
!6575 = !DILocation(line: 400, column: 2, scope: !6543)
!6576 = !DILocation(line: 400, column: 8, scope: !6543)
!6577 = !DILocation(line: 400, column: 18, scope: !6543)
!6578 = !DILocation(line: 401, column: 22, scope: !6543)
!6579 = !DILocation(line: 401, column: 28, scope: !6543)
!6580 = !DILocation(line: 401, column: 38, scope: !6543)
!6581 = !DILocation(line: 401, column: 18, scope: !6543)
!6582 = !DILocation(line: 401, column: 2, scope: !6543)
!6583 = !DILocation(line: 401, column: 8, scope: !6543)
!6584 = !DILocation(line: 401, column: 16, scope: !6543)
!6585 = !DILocation(line: 402, column: 2, scope: !6543)
!6586 = !DILocation(line: 402, column: 8, scope: !6543)
!6587 = !DILocation(line: 402, column: 19, scope: !6543)
!6588 = !DILocation(line: 403, column: 8, scope: !6543)
!6589 = !DILocation(line: 403, column: 14, scope: !6543)
!6590 = !DILocation(line: 403, column: 17, scope: !6543)
!6591 = !DILocation(line: 403, column: 6, scope: !6543)
!6592 = !DILocation(line: 406, column: 6, scope: !6593)
!6593 = distinct !DILexicalBlock(scope: !6543, file: !3, line: 406, column: 6)
!6594 = !DILocation(line: 406, column: 22, scope: !6593)
!6595 = !DILocation(line: 406, column: 25, scope: !6593)
!6596 = !DILocation(line: 406, column: 41, scope: !6593)
!6597 = !DILocation(line: 406, column: 6, scope: !6543)
!6598 = !DILocation(line: 407, column: 3, scope: !6593)
!6599 = !DILocation(line: 409, column: 8, scope: !6600)
!6600 = distinct !DILexicalBlock(scope: !6543, file: !3, line: 409, column: 6)
!6601 = !DILocation(line: 409, column: 18, scope: !6600)
!6602 = !DILocation(line: 409, column: 6, scope: !6543)
!6603 = !DILocation(line: 410, column: 24, scope: !6600)
!6604 = !DILocation(line: 410, column: 29, scope: !6600)
!6605 = !DILocation(line: 410, column: 10, scope: !6600)
!6606 = !DILocation(line: 410, column: 3, scope: !6600)
!6607 = !DILocation(line: 412, column: 31, scope: !6543)
!6608 = !DILocation(line: 412, column: 36, scope: !6543)
!6609 = !DILocation(line: 412, column: 41, scope: !6543)
!6610 = !DILocation(line: 412, column: 47, scope: !6543)
!6611 = !DILocation(line: 412, column: 58, scope: !6543)
!6612 = !DILocation(line: 412, column: 64, scope: !6543)
!6613 = !DILocation(line: 413, column: 10, scope: !6543)
!6614 = !DILocation(line: 413, column: 16, scope: !6543)
!6615 = !DILocation(line: 412, column: 11, scope: !6543)
!6616 = !DILocation(line: 412, column: 9, scope: !6543)
!6617 = !DILocation(line: 414, column: 6, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6543, file: !3, line: 414, column: 6)
!6619 = !DILocation(line: 414, column: 13, scope: !6618)
!6620 = !DILocation(line: 414, column: 6, scope: !6543)
!6621 = !DILocation(line: 416, column: 7, scope: !6622)
!6622 = distinct !DILexicalBlock(scope: !6623, file: !3, line: 416, column: 7)
!6623 = distinct !DILexicalBlock(scope: !6618, file: !3, line: 414, column: 19)
!6624 = !DILocation(line: 416, column: 23, scope: !6622)
!6625 = !DILocation(line: 416, column: 7, scope: !6623)
!6626 = !DILocation(line: 417, column: 20, scope: !6622)
!6627 = !DILocation(line: 417, column: 4, scope: !6622)
!6628 = !DILocation(line: 418, column: 3, scope: !6623)
!6629 = !DILocation(line: 418, column: 9, scope: !6623)
!6630 = !DILocation(line: 418, column: 20, scope: !6623)
!6631 = !DILocation(line: 419, column: 2, scope: !6623)
!6632 = !DILocation(line: 419, column: 13, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6618, file: !3, line: 419, column: 13)
!6634 = !DILocation(line: 419, column: 20, scope: !6633)
!6635 = !DILocation(line: 419, column: 13, scope: !6618)
!6636 = !DILocation(line: 420, column: 24, scope: !6633)
!6637 = !DILocation(line: 420, column: 29, scope: !6633)
!6638 = !DILocation(line: 420, column: 10, scope: !6633)
!6639 = !DILocation(line: 420, column: 3, scope: !6633)
!6640 = !DILocation(line: 423, column: 2, scope: !6543)
!6641 = !DILocation(line: 424, column: 1, scope: !6543)
!6642 = distinct !DISubprogram(name: "check_segment", scope: !3, file: !3, line: 373, type: !6643, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6645)
!6643 = !DISubroutineType(types: !6644)
!6644 = !{!114, !267, !4263, !299}
!6645 = !{!6646, !6647, !6648}
!6646 = !DILocalVariable(name: "seg", arg: 1, scope: !6642, file: !3, line: 373, type: !267)
!6647 = !DILocalVariable(name: "dev", arg: 2, scope: !6642, file: !3, line: 373, type: !4263)
!6648 = !DILocalVariable(name: "estr", arg: 3, scope: !6642, file: !3, line: 373, type: !299)
!6649 = !DILocation(line: 373, column: 30, scope: !6642)
!6650 = !DILocation(line: 373, column: 50, scope: !6642)
!6651 = !DILocation(line: 373, column: 61, scope: !6642)
!6652 = !DILocation(line: 375, column: 6, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6642, file: !3, line: 375, column: 6)
!6654 = !DILocation(line: 375, column: 6, scope: !6642)
!6655 = !DILocation(line: 376, column: 3, scope: !6656)
!6656 = distinct !DILexicalBlock(scope: !6657, file: !3, line: 376, column: 3)
!6657 = distinct !DILexicalBlock(scope: !6653, file: !3, line: 375, column: 11)
!6658 = !DILocation(line: 376, column: 3, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6656, file: !3, line: 376, column: 3)
!6660 = !DILocation(line: 378, column: 3, scope: !6657)
!6661 = !DILocation(line: 386, column: 2, scope: !6662)
!6662 = distinct !DILexicalBlock(scope: !6642, file: !3, line: 386, column: 2)
!6663 = !DILocation(line: 386, column: 2, scope: !6664)
!6664 = distinct !DILexicalBlock(scope: !6662, file: !3, line: 386, column: 2)
!6665 = !DILocation(line: 389, column: 2, scope: !6642)
!6666 = !DILocation(line: 390, column: 1, scope: !6642)
!6667 = !DISubprogram(name: "pci_mmconfig_insert", scope: !6668, file: !6668, line: 184, type: !6669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6668 = !DIFile(filename: "./arch/x86/include/asm/pci_x86.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c32a69340c2514dde4670e44e5a823b3")
!6669 = !DISubroutineType(types: !6670)
!6670 = !{!114, !4263, !267, !258, !258, !3247}
!6671 = !DISubprogram(name: "_dev_warn", scope: !5842, file: !5842, line: 52, type: !5843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6672 = distinct !DISubprogram(name: "teardown_mcfg_map", scope: !3, file: !3, line: 426, type: !5182, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6673)
!6673 = !{!6674, !6675, !6676}
!6674 = !DILocalVariable(name: "ci", arg: 1, scope: !6672, file: !3, line: 426, type: !5179)
!6675 = !DILocalVariable(name: "info", scope: !6672, file: !3, line: 428, type: !4888)
!6676 = !DILocalVariable(name: "__mptr", scope: !6677, file: !3, line: 430, type: !176)
!6677 = distinct !DILexicalBlock(scope: !6672, file: !3, line: 430, column: 9)
!6678 = !DILocation(line: 426, column: 58, scope: !6672)
!6679 = !DILocation(line: 428, column: 2, scope: !6672)
!6680 = !DILocation(line: 428, column: 24, scope: !6672)
!6681 = !DILocation(line: 430, column: 9, scope: !6677)
!6682 = !DILocation(line: 430, column: 9, scope: !6672)
!6683 = !DILocation(line: 430, column: 7, scope: !6672)
!6684 = !DILocation(line: 431, column: 6, scope: !6685)
!6685 = distinct !DILexicalBlock(scope: !6672, file: !3, line: 431, column: 6)
!6686 = !DILocation(line: 431, column: 12, scope: !6685)
!6687 = !DILocation(line: 431, column: 6, scope: !6672)
!6688 = !DILocation(line: 432, column: 23, scope: !6689)
!6689 = distinct !DILexicalBlock(scope: !6685, file: !3, line: 431, column: 24)
!6690 = !DILocation(line: 432, column: 29, scope: !6689)
!6691 = !DILocation(line: 432, column: 32, scope: !6689)
!6692 = !DILocation(line: 433, column: 9, scope: !6689)
!6693 = !DILocation(line: 433, column: 15, scope: !6689)
!6694 = !DILocation(line: 433, column: 26, scope: !6689)
!6695 = !DILocation(line: 433, column: 32, scope: !6689)
!6696 = !DILocation(line: 432, column: 3, scope: !6689)
!6697 = !DILocation(line: 434, column: 3, scope: !6689)
!6698 = !DILocation(line: 434, column: 9, scope: !6689)
!6699 = !DILocation(line: 434, column: 20, scope: !6689)
!6700 = !DILocation(line: 435, column: 2, scope: !6689)
!6701 = !DILocation(line: 436, column: 1, scope: !6672)
!6702 = !DISubprogram(name: "kfree", scope: !164, file: !164, line: 227, type: !6703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6703 = !DISubroutineType(types: !6704)
!6704 = !{null, !2544}
!6705 = !DISubprogram(name: "pci_mmconfig_delete", scope: !6668, file: !6668, line: 186, type: !6706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6706 = !DISubroutineType(types: !6707)
!6707 = !{!114, !267, !258, !258}
!6708 = !DISubprogram(name: "acpi_pci_probe_root_resources", scope: !4893, file: !4893, line: 78, type: !5177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6709 = distinct !DISubprogram(name: "resource_is_pcicfg_ioport", scope: !3, file: !3, line: 491, type: !6710, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6712)
!6710 = !DISubroutineType(types: !6711)
!6711 = !{!720, !4754}
!6712 = !{!6713}
!6713 = !DILocalVariable(name: "res", arg: 1, scope: !6709, file: !3, line: 491, type: !4754)
!6714 = !DILocation(line: 491, column: 56, scope: !6709)
!6715 = !DILocation(line: 493, column: 10, scope: !6709)
!6716 = !DILocation(line: 493, column: 15, scope: !6709)
!6717 = !DILocation(line: 493, column: 21, scope: !6709)
!6718 = !DILocation(line: 493, column: 38, scope: !6709)
!6719 = !DILocation(line: 494, column: 3, scope: !6709)
!6720 = !DILocation(line: 494, column: 8, scope: !6709)
!6721 = !DILocation(line: 494, column: 14, scope: !6709)
!6722 = !DILocation(line: 494, column: 23, scope: !6709)
!6723 = !DILocation(line: 494, column: 26, scope: !6709)
!6724 = !DILocation(line: 494, column: 31, scope: !6709)
!6725 = !DILocation(line: 494, column: 35, scope: !6709)
!6726 = !DILocation(line: 0, scope: !6709)
!6727 = !DILocation(line: 493, column: 2, scope: !6709)
!6728 = distinct !DISubprogram(name: "resource_list_destroy_entry", scope: !5201, file: !5201, line: 57, type: !6729, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6731)
!6729 = !DISubroutineType(types: !6730)
!6730 = !{null, !5199}
!6731 = !{!6732}
!6732 = !DILocalVariable(name: "entry", arg: 1, scope: !6728, file: !5201, line: 57, type: !5199)
!6733 = !DILocation(line: 57, column: 52, scope: !6728)
!6734 = !DILocation(line: 59, column: 20, scope: !6728)
!6735 = !DILocation(line: 59, column: 2, scope: !6728)
!6736 = !DILocation(line: 60, column: 27, scope: !6728)
!6737 = !DILocation(line: 60, column: 2, scope: !6728)
!6738 = !DILocation(line: 61, column: 1, scope: !6728)
!6739 = !DISubprogram(name: "_dev_printk", scope: !5842, file: !5842, line: 41, type: !6740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6740 = !DISubroutineType(types: !6741)
!6741 = !{null, !218, !4283, !218, null}
!6742 = !DISubprogram(name: "x86_pci_root_bus_resources", scope: !6073, file: !6073, line: 174, type: !6743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6743 = !DISubroutineType(types: !6744)
!6744 = !{null, !114, !185}
!6745 = distinct !DISubprogram(name: "resource_list_del", scope: !5201, file: !5201, line: 46, type: !6729, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6746)
!6746 = !{!6747}
!6747 = !DILocalVariable(name: "entry", arg: 1, scope: !6745, file: !5201, line: 46, type: !5199)
!6748 = !DILocation(line: 46, column: 61, scope: !6745)
!6749 = !DILocation(line: 48, column: 12, scope: !6745)
!6750 = !DILocation(line: 48, column: 19, scope: !6745)
!6751 = !DILocation(line: 48, column: 2, scope: !6745)
!6752 = !DILocation(line: 49, column: 1, scope: !6745)
!6753 = distinct !DISubprogram(name: "resource_list_free_entry", scope: !5201, file: !5201, line: 51, type: !6729, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6754)
!6754 = !{!6755}
!6755 = !DILocalVariable(name: "entry", arg: 1, scope: !6753, file: !5201, line: 51, type: !5199)
!6756 = !DILocation(line: 51, column: 68, scope: !6753)
!6757 = !DILocation(line: 53, column: 8, scope: !6753)
!6758 = !DILocation(line: 53, column: 2, scope: !6753)
!6759 = !DILocation(line: 54, column: 1, scope: !6753)
!6760 = distinct !DISubprogram(name: "list_del", scope: !6761, file: !6761, line: 227, type: !6762, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6764)
!6761 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6762 = !DISubroutineType(types: !6763)
!6763 = !{null, !185}
!6764 = !{!6765}
!6765 = !DILocalVariable(name: "entry", arg: 1, scope: !6760, file: !6761, line: 227, type: !185)
!6766 = !DILocation(line: 227, column: 47, scope: !6760)
!6767 = !DILocation(line: 229, column: 19, scope: !6760)
!6768 = !DILocation(line: 229, column: 2, scope: !6760)
!6769 = !DILocation(line: 230, column: 2, scope: !6760)
!6770 = !DILocation(line: 230, column: 9, scope: !6760)
!6771 = !DILocation(line: 230, column: 14, scope: !6760)
!6772 = !DILocation(line: 231, column: 2, scope: !6760)
!6773 = !DILocation(line: 231, column: 9, scope: !6760)
!6774 = !DILocation(line: 231, column: 14, scope: !6760)
!6775 = !DILocation(line: 232, column: 1, scope: !6760)
!6776 = distinct !DISubprogram(name: "__list_del_entry", scope: !6761, file: !6761, line: 213, type: !6762, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6777)
!6777 = !{!6778}
!6778 = !DILocalVariable(name: "entry", arg: 1, scope: !6776, file: !6761, line: 213, type: !185)
!6779 = !DILocation(line: 213, column: 55, scope: !6776)
!6780 = !DILocation(line: 215, column: 30, scope: !6781)
!6781 = distinct !DILexicalBlock(scope: !6776, file: !6761, line: 215, column: 6)
!6782 = !DILocation(line: 215, column: 7, scope: !6781)
!6783 = !DILocation(line: 215, column: 6, scope: !6776)
!6784 = !DILocation(line: 216, column: 3, scope: !6781)
!6785 = !DILocation(line: 218, column: 13, scope: !6776)
!6786 = !DILocation(line: 218, column: 20, scope: !6776)
!6787 = !DILocation(line: 218, column: 26, scope: !6776)
!6788 = !DILocation(line: 218, column: 33, scope: !6776)
!6789 = !DILocation(line: 218, column: 2, scope: !6776)
!6790 = !DILocation(line: 219, column: 1, scope: !6776)
!6791 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6761, file: !6761, line: 134, type: !6792, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6794)
!6792 = !DISubroutineType(types: !6793)
!6793 = !{!720, !185}
!6794 = !{!6795}
!6795 = !DILocalVariable(name: "entry", arg: 1, scope: !6791, file: !6761, line: 134, type: !185)
!6796 = !DILocation(line: 134, column: 61, scope: !6791)
!6797 = !DILocation(line: 136, column: 2, scope: !6791)
!6798 = distinct !DISubprogram(name: "__list_del", scope: !6761, file: !6761, line: 193, type: !6799, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6801)
!6799 = !DISubroutineType(types: !6800)
!6800 = !{null, !185, !185}
!6801 = !{!6802, !6803}
!6802 = !DILocalVariable(name: "prev", arg: 1, scope: !6798, file: !6761, line: 193, type: !185)
!6803 = !DILocalVariable(name: "next", arg: 2, scope: !6798, file: !6761, line: 193, type: !185)
!6804 = !DILocation(line: 193, column: 50, scope: !6798)
!6805 = !DILocation(line: 193, column: 75, scope: !6798)
!6806 = !DILocation(line: 195, column: 15, scope: !6798)
!6807 = !DILocation(line: 195, column: 2, scope: !6798)
!6808 = !DILocation(line: 195, column: 8, scope: !6798)
!6809 = !DILocation(line: 195, column: 13, scope: !6798)
!6810 = !DILocation(line: 196, column: 2, scope: !6798)
!6811 = !DILocation(line: 196, column: 2, scope: !6812)
!6812 = distinct !DILexicalBlock(scope: !6798, file: !6761, line: 196, column: 2)
!6813 = !DILocation(line: 196, column: 2, scope: !6814)
!6814 = distinct !DILexicalBlock(scope: !6812, file: !6761, line: 196, column: 2)
!6815 = !DILocation(line: 196, column: 2, scope: !6816)
!6816 = distinct !DILexicalBlock(scope: !6812, file: !6761, line: 196, column: 2)
!6817 = !DILocation(line: 197, column: 1, scope: !6798)
