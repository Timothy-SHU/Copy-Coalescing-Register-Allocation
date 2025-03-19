; ModuleID = 'drivers/acpi/resource.c'
source_filename = "drivers/acpi/resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_resource_memory: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_resource_memory ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_resource_io: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_resource_io ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_resource_address_space: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_resource_address_space ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_resource_ext_address_space: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_resource_ext_address_space ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_irq_flags: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_irq_flags ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_get_irq_type: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_get_irq_type ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_resource_interrupt: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_resource_interrupt ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_free_resource_list: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_free_resource_list ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_get_resources: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_get_resources ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_get_dma_resources: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_get_dma_resources ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_get_memory_resources: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_get_memory_resources ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_filter_resource_type: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_filter_resource_type ; .previous"

%struct.irq_override_cmp = type { ptr, i8, i8, i8, i8, i8 }
%struct.cpuinfo_x86 = type { %union.anon.13, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.15, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.13 = type { i32 }
%union.anon.15 = type { i64, [88 x i8] }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor, [58 x i8] }
%struct.acpi_resource_vendor = type { i16, [0 x i8] }
%struct.acpi_resource_memory24 = type <{ i8, i16, i16, i16, i16 }>
%struct.acpi_resource_memory32 = type <{ i8, i32, i32, i32, i32 }>
%struct.acpi_resource_fixed_memory32 = type <{ i8, i32, i32 }>
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.acpi_resource_io = type <{ i8, i8, i8, i16, i16 }>
%struct.acpi_resource_fixed_io = type <{ i16, i8 }>
%struct.acpi_resource_address64 = type <{ i8, i8, i8, i8, i8, %union.acpi_resource_attribute, %struct.acpi_address64_attribute, %struct.acpi_resource_source }>
%union.acpi_resource_attribute = type { %struct.acpi_memory_attribute }
%struct.acpi_memory_attribute = type { i8, i8, i8, i8 }
%struct.acpi_address64_attribute = type { i64, i64, i64, i64, i64 }
%struct.acpi_resource_source = type <{ i8, i16, ptr }>
%struct.resource_win = type { %struct.resource, i64 }
%struct.acpi_resource_address = type { i8, i8, i8, i8, i8, %union.acpi_resource_attribute }
%struct.acpi_io_attribute = type { i8, i8, i8, i8 }
%struct.acpi_resource_extended_address64 = type <{ i8, i8, i8, i8, i8, %union.acpi_resource_attribute, i8, %struct.acpi_address64_attribute, i64 }>
%struct.acpi_resource_irq = type { i8, i8, i8, i8, i8, i8, %union.anon }
%union.anon = type { i8 }
%struct.anon = type { %struct.anon.0, [0 x i8] }
%struct.anon.0 = type {}
%struct.acpi_resource_extended_irq = type <{ i8, i8, i8, i8, i8, i8, %struct.acpi_resource_source, %union.anon.4 }>
%union.anon.4 = type { i32 }
%struct.anon.5 = type { %struct.anon.6, [0 x i32] }
%struct.anon.6 = type {}
%struct.res_proc_context = type { ptr, ptr, ptr, i32, i32 }
%struct.acpi_device = type { i32, i32, ptr, %struct.fwnode_handle, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, ptr, ptr, ptr, ptr, %struct.device, i32, i32, %struct.list_head, %struct.mutex, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], i32, %struct.acpi_pnp_type, i64, ptr, %struct.list_head, [40 x i8], [20 x i8], ptr }
%struct.acpi_pnp_type = type { i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state], i8 }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.11, i32, i32, %struct.list_head }
%struct.anon.11 = type { i8 }
%struct.acpi_device_wakeup = type { ptr, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, ptr, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { ptr, ptr }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, ptr }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_dir = type { ptr }
%struct.acpi_device_data = type { ptr, %struct.list_head, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.atomic_t }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.resource_entry = type { %struct.list_head, ptr, i64, %struct.resource }

@__UNIQUE_ID___addressable_acpi_dev_resource_memory206 = internal global ptr @acpi_dev_resource_memory, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_acpi_dev_resource_io207 = internal global ptr @acpi_dev_resource_io, section ".discard.addressable", align 8, !dbg !2039
@__UNIQUE_ID___addressable_acpi_dev_resource_address_space208 = internal global ptr @acpi_dev_resource_address_space, section ".discard.addressable", align 8, !dbg !2041
@__UNIQUE_ID___addressable_acpi_dev_resource_ext_address_space209 = internal global ptr @acpi_dev_resource_ext_address_space, section ".discard.addressable", align 8, !dbg !2043
@__UNIQUE_ID___addressable_acpi_dev_irq_flags210 = internal global ptr @acpi_dev_irq_flags, section ".discard.addressable", align 8, !dbg !2045
@__UNIQUE_ID___addressable_acpi_dev_get_irq_type211 = internal global ptr @acpi_dev_get_irq_type, section ".discard.addressable", align 8, !dbg !2047
@__UNIQUE_ID___addressable_acpi_dev_resource_interrupt212 = internal global ptr @acpi_dev_resource_interrupt, section ".discard.addressable", align 8, !dbg !2049
@__UNIQUE_ID___addressable_acpi_dev_free_resource_list213 = internal global ptr @acpi_dev_free_resource_list, section ".discard.addressable", align 8, !dbg !2051
@.str = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1, !dbg !2053
@__UNIQUE_ID___addressable_acpi_dev_get_resources214 = internal global ptr @acpi_dev_get_resources, section ".discard.addressable", align 8, !dbg !2056
@.str.1 = private unnamed_addr constant [5 x i8] c"_DMA\00", align 1, !dbg !2058
@__UNIQUE_ID___addressable_acpi_dev_get_dma_resources215 = internal global ptr @acpi_dev_get_dma_resources, section ".discard.addressable", align 8, !dbg !2060
@__UNIQUE_ID___addressable_acpi_dev_get_memory_resources216 = internal global ptr @acpi_dev_get_memory_resources, section ".discard.addressable", align 8, !dbg !2062
@__UNIQUE_ID___addressable_acpi_dev_filter_resource_type217 = internal global ptr @acpi_dev_filter_resource_type, section ".discard.addressable", align 8, !dbg !2064
@.str.2 = private unnamed_addr constant [39 x i8] c"\014ACPI: IRQ %d override to %s%s, %s%s\0A\00", align 1, !dbg !2066
@.str.3 = private unnamed_addr constant [6 x i8] c"level\00", align 1, !dbg !2071
@.str.4 = private unnamed_addr constant [5 x i8] c"edge\00", align 1, !dbg !2076
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !2078
@.str.6 = private unnamed_addr constant [4 x i8] c"(!)\00", align 1, !dbg !2083
@.str.7 = private unnamed_addr constant [4 x i8] c"low\00", align 1, !dbg !2086
@.str.8 = private unnamed_addr constant [5 x i8] c"high\00", align 1, !dbg !2088
@override_table = internal constant [6 x %struct.irq_override_cmp] [%struct.irq_override_cmp { ptr @medion_laptop, i8 1, i8 0, i8 1, i8 0, i8 0 }, %struct.irq_override_cmp { ptr @asus_laptop, i8 1, i8 0, i8 1, i8 0, i8 0 }, %struct.irq_override_cmp { ptr @tongfang_gm_rg, i8 1, i8 1, i8 1, i8 1, i8 1 }, %struct.irq_override_cmp { ptr @maingear_laptop, i8 1, i8 1, i8 1, i8 1, i8 1 }, %struct.irq_override_cmp { ptr @pcspecialist_laptop, i8 1, i8 1, i8 1, i8 1, i8 1 }, %struct.irq_override_cmp { ptr @lg_laptop, i8 1, i8 0, i8 1, i8 0, i8 0 }], align 16, !dbg !2090
@acpi_int_src_ovr = external dso_local global [16 x i8], align 16
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@medion_laptop = internal constant [4 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.9, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"MEDION\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"M15T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr @.str.10, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"MEDION\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"M17T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr @.str.11, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"MEDION\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"M1xA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 16, !dbg !2131
@asus_laptop = internal constant [13 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.12, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"K3402ZA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr @.str.13, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"K3502ZA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr @.str.14, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"S5402ZA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr @.str.15, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"S5602ZA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"X1504VAP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"X1704VAP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr @.str.16, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"B1402CBA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"B1402CVA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr @.str.17, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"B1502CBA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr @.str.18, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"B2402CBA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr @.str.19, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"B2402FBA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr @.str.20, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"B2502CBA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 16, !dbg !2158
@tongfang_gm_rg = internal constant [3 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.21, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"GMxRGxx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"LG Electronics\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"16T90SP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 16, !dbg !2166
@maingear_laptop = internal constant [8 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.22, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Micro Electronics Inc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MG-VCP2-15A3070T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"B2502CVA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"GMxXGxx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"GMxXGxX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Eluktronics Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"RP-15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"GM6XGxX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr @.str.23, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Micro Electronics Inc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MG-VCP2-17A3070T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 16, !dbg !2173
@pcspecialist_laptop = internal constant [9 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"GM6BGEQ\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"GM6BG5Q\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"GM6BG0Q\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"GM5RG1E0009COM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"GM5RGEE0016COM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Lunnen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"LLL5DAW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Lunnen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"LL6FA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"MAIBENBEN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"X577\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 16, !dbg !2176
@lg_laptop = internal constant [5 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.24, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"LG Electronics\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"17U70P\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"GXxHRXx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"GMxHGxx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -104, [79 x i8] c"GM5HG0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 16, !dbg !2183
@.str.9 = private unnamed_addr constant [14 x i8] c"MEDION P15651\00", align 1, !dbg !2122
@.str.10 = private unnamed_addr constant [14 x i8] c"MEDION S17405\00", align 1, !dbg !2127
@.str.11 = private unnamed_addr constant [14 x i8] c"MEDION S17413\00", align 1, !dbg !2129
@.str.12 = private unnamed_addr constant [22 x i8] c"Asus Vivobook K3402ZA\00", align 1, !dbg !2134
@.str.13 = private unnamed_addr constant [22 x i8] c"Asus Vivobook K3502ZA\00", align 1, !dbg !2139
@.str.14 = private unnamed_addr constant [22 x i8] c"Asus Vivobook S5402ZA\00", align 1, !dbg !2141
@.str.15 = private unnamed_addr constant [22 x i8] c"Asus Vivobook S5602ZA\00", align 1, !dbg !2143
@.str.16 = private unnamed_addr constant [25 x i8] c"Asus ExpertBook B1402CBA\00", align 1, !dbg !2145
@.str.17 = private unnamed_addr constant [25 x i8] c"Asus ExpertBook B1502CBA\00", align 1, !dbg !2150
@.str.18 = private unnamed_addr constant [25 x i8] c"Asus ExpertBook B2402CBA\00", align 1, !dbg !2152
@.str.19 = private unnamed_addr constant [25 x i8] c"Asus ExpertBook B2402FBA\00", align 1, !dbg !2154
@.str.20 = private unnamed_addr constant [22 x i8] c"Asus ExpertBook B2502\00", align 1, !dbg !2156
@.str.21 = private unnamed_addr constant [64 x i8] c"TongFang GMxRGxx/XMG CORE 15 (M22)/TUXEDO Stellaris 15 Gen4 AMD\00", align 1, !dbg !2163
@.str.22 = private unnamed_addr constant [25 x i8] c"MAINGEAR Vector Pro 2 15\00", align 1, !dbg !2169
@.str.23 = private unnamed_addr constant [25 x i8] c"MAINGEAR Vector Pro 2 17\00", align 1, !dbg !2171
@.str.24 = private unnamed_addr constant [22 x i8] c"LG Electronics 17U70P\00", align 1, !dbg !2181
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_dev_resource_memory206, ptr @__UNIQUE_ID___addressable_acpi_dev_resource_io207, ptr @__UNIQUE_ID___addressable_acpi_dev_resource_address_space208, ptr @__UNIQUE_ID___addressable_acpi_dev_resource_ext_address_space209, ptr @__UNIQUE_ID___addressable_acpi_dev_irq_flags210, ptr @__UNIQUE_ID___addressable_acpi_dev_get_irq_type211, ptr @__UNIQUE_ID___addressable_acpi_dev_resource_interrupt212, ptr @__UNIQUE_ID___addressable_acpi_dev_free_resource_list213, ptr @__UNIQUE_ID___addressable_acpi_dev_get_resources214, ptr @__UNIQUE_ID___addressable_acpi_dev_get_dma_resources215, ptr @__UNIQUE_ID___addressable_acpi_dev_get_memory_resources216, ptr @__UNIQUE_ID___addressable_acpi_dev_filter_resource_type217], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @acpi_dev_resource_memory(ptr noundef %ares, ptr noundef %res) #0 align 16 !dbg !2195 {
entry:
  %retval = alloca i1, align 1
  %ares.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %memory24 = alloca ptr, align 8
  %memory32 = alloca ptr, align 8
  %fixed_memory32 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ares, ptr %ares.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ares.addr, metadata !2586, metadata !DIExpression()), !dbg !2594
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2587, metadata !DIExpression()), !dbg !2595
  call void @llvm.lifetime.start.p0(i64 8, ptr %memory24) #11, !dbg !2596
  call void @llvm.dbg.declare(metadata ptr %memory24, metadata !2588, metadata !DIExpression()), !dbg !2597
  call void @llvm.lifetime.start.p0(i64 8, ptr %memory32) #11, !dbg !2598
  call void @llvm.dbg.declare(metadata ptr %memory32, metadata !2590, metadata !DIExpression()), !dbg !2599
  call void @llvm.lifetime.start.p0(i64 8, ptr %fixed_memory32) #11, !dbg !2600
  call void @llvm.dbg.declare(metadata ptr %fixed_memory32, metadata !2592, metadata !DIExpression()), !dbg !2601
  %0 = load ptr, ptr %ares.addr, align 8, !dbg !2602
  %type = getelementptr inbounds %struct.acpi_resource, ptr %0, i32 0, i32 0, !dbg !2603
  %1 = load i32, ptr %type, align 1, !dbg !2603
  switch i32 %1, label %sw.default [
    i32 8, label %sw.bb
    i32 9, label %sw.bb5
    i32 10, label %sw.bb12
  ], !dbg !2604

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %ares.addr, align 8, !dbg !2605
  %data = getelementptr inbounds %struct.acpi_resource, ptr %2, i32 0, i32 2, !dbg !2607
  store ptr %data, ptr %memory24, align 8, !dbg !2608
  %3 = load ptr, ptr %res.addr, align 8, !dbg !2609
  %4 = load ptr, ptr %memory24, align 8, !dbg !2610
  %minimum = getelementptr inbounds %struct.acpi_resource_memory24, ptr %4, i32 0, i32 1, !dbg !2611
  %5 = load i16, ptr %minimum, align 1, !dbg !2611
  %conv = zext i16 %5 to i32, !dbg !2610
  %shl = shl i32 %conv, 8, !dbg !2612
  %conv1 = sext i32 %shl to i64, !dbg !2610
  %6 = load ptr, ptr %memory24, align 8, !dbg !2613
  %address_length = getelementptr inbounds %struct.acpi_resource_memory24, ptr %6, i32 0, i32 4, !dbg !2614
  %7 = load i16, ptr %address_length, align 1, !dbg !2614
  %conv2 = zext i16 %7 to i32, !dbg !2613
  %shl3 = shl i32 %conv2, 8, !dbg !2615
  %conv4 = sext i32 %shl3 to i64, !dbg !2613
  %8 = load ptr, ptr %memory24, align 8, !dbg !2616
  %write_protect = getelementptr inbounds %struct.acpi_resource_memory24, ptr %8, i32 0, i32 0, !dbg !2617
  %9 = load i8, ptr %write_protect, align 1, !dbg !2617
  call void @acpi_dev_get_memresource(ptr noundef %3, i64 noundef %conv1, i64 noundef %conv4, i8 noundef zeroext %9) #12, !dbg !2618
  br label %sw.epilog, !dbg !2619

sw.bb5:                                           ; preds = %entry
  %10 = load ptr, ptr %ares.addr, align 8, !dbg !2620
  %data6 = getelementptr inbounds %struct.acpi_resource, ptr %10, i32 0, i32 2, !dbg !2621
  store ptr %data6, ptr %memory32, align 8, !dbg !2622
  %11 = load ptr, ptr %res.addr, align 8, !dbg !2623
  %12 = load ptr, ptr %memory32, align 8, !dbg !2624
  %minimum7 = getelementptr inbounds %struct.acpi_resource_memory32, ptr %12, i32 0, i32 1, !dbg !2625
  %13 = load i32, ptr %minimum7, align 1, !dbg !2625
  %conv8 = zext i32 %13 to i64, !dbg !2624
  %14 = load ptr, ptr %memory32, align 8, !dbg !2626
  %address_length9 = getelementptr inbounds %struct.acpi_resource_memory32, ptr %14, i32 0, i32 4, !dbg !2627
  %15 = load i32, ptr %address_length9, align 1, !dbg !2627
  %conv10 = zext i32 %15 to i64, !dbg !2626
  %16 = load ptr, ptr %memory32, align 8, !dbg !2628
  %write_protect11 = getelementptr inbounds %struct.acpi_resource_memory32, ptr %16, i32 0, i32 0, !dbg !2629
  %17 = load i8, ptr %write_protect11, align 1, !dbg !2629
  call void @acpi_dev_get_memresource(ptr noundef %11, i64 noundef %conv8, i64 noundef %conv10, i8 noundef zeroext %17) #12, !dbg !2630
  br label %sw.epilog, !dbg !2631

sw.bb12:                                          ; preds = %entry
  %18 = load ptr, ptr %ares.addr, align 8, !dbg !2632
  %data13 = getelementptr inbounds %struct.acpi_resource, ptr %18, i32 0, i32 2, !dbg !2633
  store ptr %data13, ptr %fixed_memory32, align 8, !dbg !2634
  %19 = load ptr, ptr %res.addr, align 8, !dbg !2635
  %20 = load ptr, ptr %fixed_memory32, align 8, !dbg !2636
  %address = getelementptr inbounds %struct.acpi_resource_fixed_memory32, ptr %20, i32 0, i32 1, !dbg !2637
  %21 = load i32, ptr %address, align 1, !dbg !2637
  %conv14 = zext i32 %21 to i64, !dbg !2636
  %22 = load ptr, ptr %fixed_memory32, align 8, !dbg !2638
  %address_length15 = getelementptr inbounds %struct.acpi_resource_fixed_memory32, ptr %22, i32 0, i32 2, !dbg !2639
  %23 = load i32, ptr %address_length15, align 1, !dbg !2639
  %conv16 = zext i32 %23 to i64, !dbg !2638
  %24 = load ptr, ptr %fixed_memory32, align 8, !dbg !2640
  %write_protect17 = getelementptr inbounds %struct.acpi_resource_fixed_memory32, ptr %24, i32 0, i32 0, !dbg !2641
  %25 = load i8, ptr %write_protect17, align 1, !dbg !2641
  call void @acpi_dev_get_memresource(ptr noundef %19, i64 noundef %conv14, i64 noundef %conv16, i8 noundef zeroext %25) #12, !dbg !2642
  br label %sw.epilog, !dbg !2643

sw.default:                                       ; preds = %entry
  %26 = load ptr, ptr %res.addr, align 8, !dbg !2644
  %flags = getelementptr inbounds %struct.resource, ptr %26, i32 0, i32 3, !dbg !2645
  store i64 0, ptr %flags, align 8, !dbg !2646
  store i1 false, ptr %retval, align 1, !dbg !2647
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2647

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb5, %sw.bb
  %27 = load ptr, ptr %res.addr, align 8, !dbg !2648
  %flags18 = getelementptr inbounds %struct.resource, ptr %27, i32 0, i32 3, !dbg !2649
  %28 = load i64, ptr %flags18, align 8, !dbg !2649
  %and = and i64 %28, 268435456, !dbg !2650
  %tobool = icmp ne i64 %and, 0, !dbg !2651
  %lnot = xor i1 %tobool, true, !dbg !2651
  store i1 %lnot, ptr %retval, align 1, !dbg !2652
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2652

cleanup:                                          ; preds = %sw.epilog, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %fixed_memory32) #11, !dbg !2653
  call void @llvm.lifetime.end.p0(i64 8, ptr %memory32) #11, !dbg !2653
  call void @llvm.lifetime.end.p0(i64 8, ptr %memory24) #11, !dbg !2653
  %29 = load i1, ptr %retval, align 1, !dbg !2653
  ret i1 %29, !dbg !2653
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_dev_get_memresource(ptr noundef %res, i64 noundef %start, i64 noundef %len, i8 noundef zeroext %write_protect) #0 align 16 !dbg !2654 {
entry:
  %res.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %write_protect.addr = alloca i8, align 1
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2658, metadata !DIExpression()), !dbg !2662
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2659, metadata !DIExpression()), !dbg !2663
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2660, metadata !DIExpression()), !dbg !2664
  store i8 %write_protect, ptr %write_protect.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write_protect.addr, metadata !2661, metadata !DIExpression()), !dbg !2665
  %0 = load i64, ptr %start.addr, align 8, !dbg !2666
  %1 = load ptr, ptr %res.addr, align 8, !dbg !2667
  %start1 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 0, !dbg !2668
  store i64 %0, ptr %start1, align 8, !dbg !2669
  %2 = load i64, ptr %start.addr, align 8, !dbg !2670
  %3 = load i64, ptr %len.addr, align 8, !dbg !2671
  %add = add i64 %2, %3, !dbg !2672
  %sub = sub i64 %add, 1, !dbg !2673
  %4 = load ptr, ptr %res.addr, align 8, !dbg !2674
  %end = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1, !dbg !2675
  store i64 %sub, ptr %end, align 8, !dbg !2676
  %5 = load ptr, ptr %res.addr, align 8, !dbg !2677
  %6 = load i64, ptr %len.addr, align 8, !dbg !2678
  %7 = load i8, ptr %write_protect.addr, align 1, !dbg !2679
  call void @acpi_dev_memresource_flags(ptr noundef %5, i64 noundef %6, i8 noundef zeroext %7) #12, !dbg !2680
  ret void, !dbg !2681
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @acpi_dev_resource_io(ptr noundef %ares, ptr noundef %res) #0 align 16 !dbg !2682 {
entry:
  %retval = alloca i1, align 1
  %ares.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %io = alloca ptr, align 8
  %fixed_io = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ares, ptr %ares.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ares.addr, metadata !2684, metadata !DIExpression()), !dbg !2690
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2685, metadata !DIExpression()), !dbg !2691
  call void @llvm.lifetime.start.p0(i64 8, ptr %io) #11, !dbg !2692
  call void @llvm.dbg.declare(metadata ptr %io, metadata !2686, metadata !DIExpression()), !dbg !2693
  call void @llvm.lifetime.start.p0(i64 8, ptr %fixed_io) #11, !dbg !2694
  call void @llvm.dbg.declare(metadata ptr %fixed_io, metadata !2688, metadata !DIExpression()), !dbg !2695
  %0 = load ptr, ptr %ares.addr, align 8, !dbg !2696
  %type = getelementptr inbounds %struct.acpi_resource, ptr %0, i32 0, i32 0, !dbg !2697
  %1 = load i32, ptr %type, align 1, !dbg !2697
  switch i32 %1, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb2
  ], !dbg !2698

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %ares.addr, align 8, !dbg !2699
  %data = getelementptr inbounds %struct.acpi_resource, ptr %2, i32 0, i32 2, !dbg !2701
  store ptr %data, ptr %io, align 8, !dbg !2702
  %3 = load ptr, ptr %res.addr, align 8, !dbg !2703
  %4 = load ptr, ptr %io, align 8, !dbg !2704
  %minimum = getelementptr inbounds %struct.acpi_resource_io, ptr %4, i32 0, i32 3, !dbg !2705
  %5 = load i16, ptr %minimum, align 1, !dbg !2705
  %conv = zext i16 %5 to i64, !dbg !2704
  %6 = load ptr, ptr %io, align 8, !dbg !2706
  %address_length = getelementptr inbounds %struct.acpi_resource_io, ptr %6, i32 0, i32 2, !dbg !2707
  %7 = load i8, ptr %address_length, align 1, !dbg !2707
  %conv1 = zext i8 %7 to i64, !dbg !2706
  %8 = load ptr, ptr %io, align 8, !dbg !2708
  %io_decode = getelementptr inbounds %struct.acpi_resource_io, ptr %8, i32 0, i32 0, !dbg !2709
  %9 = load i8, ptr %io_decode, align 1, !dbg !2709
  call void @acpi_dev_get_ioresource(ptr noundef %3, i64 noundef %conv, i64 noundef %conv1, i8 noundef zeroext %9) #12, !dbg !2710
  br label %sw.epilog, !dbg !2711

sw.bb2:                                           ; preds = %entry
  %10 = load ptr, ptr %ares.addr, align 8, !dbg !2712
  %data3 = getelementptr inbounds %struct.acpi_resource, ptr %10, i32 0, i32 2, !dbg !2713
  store ptr %data3, ptr %fixed_io, align 8, !dbg !2714
  %11 = load ptr, ptr %res.addr, align 8, !dbg !2715
  %12 = load ptr, ptr %fixed_io, align 8, !dbg !2716
  %address = getelementptr inbounds %struct.acpi_resource_fixed_io, ptr %12, i32 0, i32 0, !dbg !2717
  %13 = load i16, ptr %address, align 1, !dbg !2717
  %conv4 = zext i16 %13 to i64, !dbg !2716
  %14 = load ptr, ptr %fixed_io, align 8, !dbg !2718
  %address_length5 = getelementptr inbounds %struct.acpi_resource_fixed_io, ptr %14, i32 0, i32 1, !dbg !2719
  %15 = load i8, ptr %address_length5, align 1, !dbg !2719
  %conv6 = zext i8 %15 to i64, !dbg !2718
  call void @acpi_dev_get_ioresource(ptr noundef %11, i64 noundef %conv4, i64 noundef %conv6, i8 noundef zeroext 0) #12, !dbg !2720
  br label %sw.epilog, !dbg !2721

sw.default:                                       ; preds = %entry
  %16 = load ptr, ptr %res.addr, align 8, !dbg !2722
  %flags = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 3, !dbg !2723
  store i64 0, ptr %flags, align 8, !dbg !2724
  store i1 false, ptr %retval, align 1, !dbg !2725
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2725

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %17 = load ptr, ptr %res.addr, align 8, !dbg !2726
  %flags7 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 3, !dbg !2727
  %18 = load i64, ptr %flags7, align 8, !dbg !2727
  %and = and i64 %18, 268435456, !dbg !2728
  %tobool = icmp ne i64 %and, 0, !dbg !2729
  %lnot = xor i1 %tobool, true, !dbg !2729
  store i1 %lnot, ptr %retval, align 1, !dbg !2730
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2730

cleanup:                                          ; preds = %sw.epilog, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %fixed_io) #11, !dbg !2731
  call void @llvm.lifetime.end.p0(i64 8, ptr %io) #11, !dbg !2731
  %19 = load i1, ptr %retval, align 1, !dbg !2731
  ret i1 %19, !dbg !2731
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_dev_get_ioresource(ptr noundef %res, i64 noundef %start, i64 noundef %len, i8 noundef zeroext %io_decode) #0 align 16 !dbg !2732 {
entry:
  %res.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %io_decode.addr = alloca i8, align 1
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2734, metadata !DIExpression()), !dbg !2738
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2735, metadata !DIExpression()), !dbg !2739
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2736, metadata !DIExpression()), !dbg !2740
  store i8 %io_decode, ptr %io_decode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %io_decode.addr, metadata !2737, metadata !DIExpression()), !dbg !2741
  %0 = load i64, ptr %start.addr, align 8, !dbg !2742
  %1 = load ptr, ptr %res.addr, align 8, !dbg !2743
  %start1 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 0, !dbg !2744
  store i64 %0, ptr %start1, align 8, !dbg !2745
  %2 = load i64, ptr %start.addr, align 8, !dbg !2746
  %3 = load i64, ptr %len.addr, align 8, !dbg !2747
  %add = add i64 %2, %3, !dbg !2748
  %sub = sub i64 %add, 1, !dbg !2749
  %4 = load ptr, ptr %res.addr, align 8, !dbg !2750
  %end = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1, !dbg !2751
  store i64 %sub, ptr %end, align 8, !dbg !2752
  %5 = load ptr, ptr %res.addr, align 8, !dbg !2753
  %6 = load i64, ptr %len.addr, align 8, !dbg !2754
  %7 = load i8, ptr %io_decode.addr, align 1, !dbg !2755
  call void @acpi_dev_ioresource_flags(ptr noundef %5, i64 noundef %6, i8 noundef zeroext %7, i8 noundef zeroext 0) #12, !dbg !2756
  ret void, !dbg !2757
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @acpi_dev_resource_address_space(ptr noundef %ares, ptr noundef %win) #0 align 16 !dbg !2758 {
entry:
  %retval = alloca i1, align 1
  %ares.addr = alloca ptr, align 8
  %win.addr = alloca ptr, align 8
  %addr = alloca %struct.acpi_resource_address64, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ares, ptr %ares.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ares.addr, metadata !2767, metadata !DIExpression()), !dbg !2770
  store ptr %win, ptr %win.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %win.addr, metadata !2768, metadata !DIExpression()), !dbg !2771
  call void @llvm.lifetime.start.p0(i64 60, ptr %addr) #11, !dbg !2772
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !2769, metadata !DIExpression()), !dbg !2773
  %0 = load ptr, ptr %win.addr, align 8, !dbg !2774
  %res = getelementptr inbounds %struct.resource_win, ptr %0, i32 0, i32 0, !dbg !2775
  %flags = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3, !dbg !2776
  store i64 0, ptr %flags, align 8, !dbg !2777
  %1 = load ptr, ptr %ares.addr, align 8, !dbg !2778
  %call = call i32 @acpi_resource_to_address64(ptr noundef %1, ptr noundef %addr) #12, !dbg !2778
  %tobool = icmp ne i32 %call, 0, !dbg !2778
  br i1 %tobool, label %if.then, label %if.end, !dbg !2780

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2781

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %win.addr, align 8, !dbg !2782
  %address = getelementptr inbounds %struct.acpi_resource_address64, ptr %addr, i32 0, i32 6, !dbg !2783
  %call1 = call zeroext i1 @acpi_decode_space(ptr noundef %2, ptr noundef %addr, ptr noundef %address) #12, !dbg !2784
  store i1 %call1, ptr %retval, align 1, !dbg !2785
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2785

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 60, ptr %addr) #11, !dbg !2786
  %3 = load i1, ptr %retval, align 1, !dbg !2786
  ret i1 %3, !dbg !2786
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2787 dso_local i32 @acpi_resource_to_address64(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_decode_space(ptr noundef %win, ptr noundef %addr, ptr noundef %attr) #0 align 16 !dbg !2792 {
entry:
  %retval = alloca i1, align 1
  %win.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %iodec = alloca i8, align 1
  %wp = alloca i8, align 1
  %len = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %offset = alloca i64, align 8
  %res = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %win, ptr %win.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %win.addr, metadata !2797, metadata !DIExpression()), !dbg !2807
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2798, metadata !DIExpression()), !dbg !2808
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2799, metadata !DIExpression()), !dbg !2809
  call void @llvm.lifetime.start.p0(i64 1, ptr %iodec) #11, !dbg !2810
  call void @llvm.dbg.declare(metadata ptr %iodec, metadata !2800, metadata !DIExpression()), !dbg !2811
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !2812
  %granularity = getelementptr inbounds %struct.acpi_address64_attribute, ptr %0, i32 0, i32 0, !dbg !2813
  %1 = load i64, ptr %granularity, align 1, !dbg !2813
  %cmp = icmp eq i64 %1, 4095, !dbg !2814
  %2 = zext i1 %cmp to i64, !dbg !2812
  %cond = select i1 %cmp, i32 0, i32 1, !dbg !2812
  %conv = trunc i32 %cond to i8, !dbg !2812
  store i8 %conv, ptr %iodec, align 1, !dbg !2811
  call void @llvm.lifetime.start.p0(i64 1, ptr %wp) #11, !dbg !2815
  call void @llvm.dbg.declare(metadata ptr %wp, metadata !2801, metadata !DIExpression()), !dbg !2816
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2817
  %info = getelementptr inbounds %struct.acpi_resource_address, ptr %3, i32 0, i32 5, !dbg !2818
  %write_protect = getelementptr inbounds %struct.acpi_memory_attribute, ptr %info, i32 0, i32 0, !dbg !2819
  %4 = load i8, ptr %write_protect, align 1, !dbg !2819
  %tobool = icmp ne i8 %4, 0, !dbg !2817
  %frombool = zext i1 %tobool to i8, !dbg !2816
  store i8 %frombool, ptr %wp, align 1, !dbg !2816
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #11, !dbg !2820
  call void @llvm.dbg.declare(metadata ptr %len, metadata !2802, metadata !DIExpression()), !dbg !2821
  %5 = load ptr, ptr %attr.addr, align 8, !dbg !2822
  %address_length = getelementptr inbounds %struct.acpi_address64_attribute, ptr %5, i32 0, i32 4, !dbg !2823
  %6 = load i64, ptr %address_length, align 1, !dbg !2823
  store i64 %6, ptr %len, align 8, !dbg !2821
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #11, !dbg !2824
  call void @llvm.dbg.declare(metadata ptr %start, metadata !2803, metadata !DIExpression()), !dbg !2825
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #11, !dbg !2824
  call void @llvm.dbg.declare(metadata ptr %end, metadata !2804, metadata !DIExpression()), !dbg !2826
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #11, !dbg !2824
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !2805, metadata !DIExpression()), !dbg !2827
  store i64 0, ptr %offset, align 8, !dbg !2827
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #11, !dbg !2828
  call void @llvm.dbg.declare(metadata ptr %res, metadata !2806, metadata !DIExpression()), !dbg !2829
  %7 = load ptr, ptr %win.addr, align 8, !dbg !2830
  %res1 = getelementptr inbounds %struct.resource_win, ptr %7, i32 0, i32 0, !dbg !2831
  store ptr %res1, ptr %res, align 8, !dbg !2829
  %8 = load ptr, ptr %addr.addr, align 8, !dbg !2832
  %min_address_fixed = getelementptr inbounds %struct.acpi_resource_address, ptr %8, i32 0, i32 3, !dbg !2834
  %9 = load i8, ptr %min_address_fixed, align 1, !dbg !2834
  %conv2 = zext i8 %9 to i32, !dbg !2832
  %10 = load ptr, ptr %addr.addr, align 8, !dbg !2835
  %max_address_fixed = getelementptr inbounds %struct.acpi_resource_address, ptr %10, i32 0, i32 4, !dbg !2836
  %11 = load i8, ptr %max_address_fixed, align 1, !dbg !2836
  %conv3 = zext i8 %11 to i32, !dbg !2835
  %cmp4 = icmp ne i32 %conv2, %conv3, !dbg !2837
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false, !dbg !2838

land.lhs.true:                                    ; preds = %entry
  %12 = load i64, ptr %len, align 8, !dbg !2839
  %tobool6 = icmp ne i64 %12, 0, !dbg !2839
  br i1 %tobool6, label %if.then, label %lor.lhs.false, !dbg !2840

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %13 = load ptr, ptr %addr.addr, align 8, !dbg !2841
  %min_address_fixed7 = getelementptr inbounds %struct.acpi_resource_address, ptr %13, i32 0, i32 3, !dbg !2842
  %14 = load i8, ptr %min_address_fixed7, align 1, !dbg !2842
  %conv8 = zext i8 %14 to i32, !dbg !2841
  %tobool9 = icmp ne i32 %conv8, 0, !dbg !2841
  br i1 %tobool9, label %land.lhs.true10, label %if.end, !dbg !2843

land.lhs.true10:                                  ; preds = %lor.lhs.false
  %15 = load ptr, ptr %addr.addr, align 8, !dbg !2844
  %max_address_fixed11 = getelementptr inbounds %struct.acpi_resource_address, ptr %15, i32 0, i32 4, !dbg !2845
  %16 = load i8, ptr %max_address_fixed11, align 1, !dbg !2845
  %conv12 = zext i8 %16 to i32, !dbg !2844
  %tobool13 = icmp ne i32 %conv12, 0, !dbg !2844
  br i1 %tobool13, label %land.lhs.true14, label %if.end, !dbg !2846

land.lhs.true14:                                  ; preds = %land.lhs.true10
  %17 = load i64, ptr %len, align 8, !dbg !2847
  %tobool15 = icmp ne i64 %17, 0, !dbg !2847
  br i1 %tobool15, label %if.end, label %if.then, !dbg !2848

if.then:                                          ; preds = %land.lhs.true14, %land.lhs.true
  store i32 0, ptr %tmp, align 4, !dbg !2849
  %18 = load i32, ptr %tmp, align 4, !dbg !2852
  br label %if.end, !dbg !2853

if.end:                                           ; preds = %if.then, %land.lhs.true14, %land.lhs.true10, %lor.lhs.false
  %19 = load ptr, ptr %addr.addr, align 8, !dbg !2854
  %producer_consumer = getelementptr inbounds %struct.acpi_resource_address, ptr %19, i32 0, i32 1, !dbg !2856
  %20 = load i8, ptr %producer_consumer, align 1, !dbg !2856
  %conv16 = zext i8 %20 to i32, !dbg !2854
  %cmp17 = icmp eq i32 %conv16, 0, !dbg !2857
  br i1 %cmp17, label %if.then19, label %if.else, !dbg !2858

if.then19:                                        ; preds = %if.end
  %21 = load ptr, ptr %attr.addr, align 8, !dbg !2859
  %translation_offset = getelementptr inbounds %struct.acpi_address64_attribute, ptr %21, i32 0, i32 3, !dbg !2860
  %22 = load i64, ptr %translation_offset, align 1, !dbg !2860
  store i64 %22, ptr %offset, align 8, !dbg !2861
  br label %if.end25, !dbg !2862

if.else:                                          ; preds = %if.end
  %23 = load ptr, ptr %attr.addr, align 8, !dbg !2863
  %translation_offset20 = getelementptr inbounds %struct.acpi_address64_attribute, ptr %23, i32 0, i32 3, !dbg !2865
  %24 = load i64, ptr %translation_offset20, align 1, !dbg !2865
  %tobool21 = icmp ne i64 %24, 0, !dbg !2863
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !2866

if.then22:                                        ; preds = %if.else
  store i32 0, ptr %tmp23, align 4, !dbg !2867
  %25 = load i32, ptr %tmp23, align 4, !dbg !2870
  br label %if.end24, !dbg !2871

if.end24:                                         ; preds = %if.then22, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then19
  %26 = load ptr, ptr %attr.addr, align 8, !dbg !2872
  %minimum = getelementptr inbounds %struct.acpi_address64_attribute, ptr %26, i32 0, i32 1, !dbg !2873
  %27 = load i64, ptr %minimum, align 1, !dbg !2873
  %28 = load i64, ptr %offset, align 8, !dbg !2874
  %add = add i64 %27, %28, !dbg !2875
  store i64 %add, ptr %start, align 8, !dbg !2876
  %29 = load ptr, ptr %attr.addr, align 8, !dbg !2877
  %maximum = getelementptr inbounds %struct.acpi_address64_attribute, ptr %29, i32 0, i32 2, !dbg !2878
  %30 = load i64, ptr %maximum, align 1, !dbg !2878
  %31 = load i64, ptr %offset, align 8, !dbg !2879
  %add26 = add i64 %30, %31, !dbg !2880
  store i64 %add26, ptr %end, align 8, !dbg !2881
  %32 = load i64, ptr %offset, align 8, !dbg !2882
  %33 = load ptr, ptr %win.addr, align 8, !dbg !2883
  %offset27 = getelementptr inbounds %struct.resource_win, ptr %33, i32 0, i32 1, !dbg !2884
  store i64 %32, ptr %offset27, align 8, !dbg !2885
  %34 = load i64, ptr %start, align 8, !dbg !2886
  %35 = load ptr, ptr %res, align 8, !dbg !2887
  %start28 = getelementptr inbounds %struct.resource, ptr %35, i32 0, i32 0, !dbg !2888
  store i64 %34, ptr %start28, align 8, !dbg !2889
  %36 = load i64, ptr %end, align 8, !dbg !2890
  %37 = load ptr, ptr %res, align 8, !dbg !2891
  %end29 = getelementptr inbounds %struct.resource, ptr %37, i32 0, i32 1, !dbg !2892
  store i64 %36, ptr %end29, align 8, !dbg !2893
  %38 = load ptr, ptr %addr.addr, align 8, !dbg !2894
  %resource_type = getelementptr inbounds %struct.acpi_resource_address, ptr %38, i32 0, i32 0, !dbg !2895
  %39 = load i8, ptr %resource_type, align 1, !dbg !2895
  %conv30 = zext i8 %39 to i32, !dbg !2894
  switch i32 %conv30, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb39
    i32 2, label %sw.bb41
  ], !dbg !2896

sw.bb:                                            ; preds = %if.end25
  %40 = load ptr, ptr %res, align 8, !dbg !2897
  %41 = load i64, ptr %len, align 8, !dbg !2899
  %42 = load i8, ptr %wp, align 1, !dbg !2900, !range !2901, !noundef !431
  %tobool31 = trunc i8 %42 to i1, !dbg !2900
  %conv32 = zext i1 %tobool31 to i8, !dbg !2900
  call void @acpi_dev_memresource_flags(ptr noundef %40, i64 noundef %41, i8 noundef zeroext %conv32) #12, !dbg !2902
  %43 = load ptr, ptr %addr.addr, align 8, !dbg !2903
  %info33 = getelementptr inbounds %struct.acpi_resource_address, ptr %43, i32 0, i32 5, !dbg !2905
  %caching = getelementptr inbounds %struct.acpi_memory_attribute, ptr %info33, i32 0, i32 1, !dbg !2906
  %44 = load i8, ptr %caching, align 1, !dbg !2906
  %conv34 = zext i8 %44 to i32, !dbg !2903
  %cmp35 = icmp eq i32 %conv34, 3, !dbg !2907
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !2908

if.then37:                                        ; preds = %sw.bb
  %45 = load ptr, ptr %res, align 8, !dbg !2909
  %flags = getelementptr inbounds %struct.resource, ptr %45, i32 0, i32 3, !dbg !2910
  %46 = load i64, ptr %flags, align 8, !dbg !2911
  %or = or i64 %46, 8192, !dbg !2911
  store i64 %or, ptr %flags, align 8, !dbg !2911
  br label %if.end38, !dbg !2909

if.end38:                                         ; preds = %if.then37, %sw.bb
  br label %sw.epilog, !dbg !2912

sw.bb39:                                          ; preds = %if.end25
  %47 = load ptr, ptr %res, align 8, !dbg !2913
  %48 = load i64, ptr %len, align 8, !dbg !2914
  %49 = load i8, ptr %iodec, align 1, !dbg !2915
  %50 = load ptr, ptr %addr.addr, align 8, !dbg !2916
  %info40 = getelementptr inbounds %struct.acpi_resource_address, ptr %50, i32 0, i32 5, !dbg !2917
  %translation_type = getelementptr inbounds %struct.acpi_io_attribute, ptr %info40, i32 0, i32 2, !dbg !2918
  %51 = load i8, ptr %translation_type, align 1, !dbg !2918
  call void @acpi_dev_ioresource_flags(ptr noundef %47, i64 noundef %48, i8 noundef zeroext %49, i8 noundef zeroext %51) #12, !dbg !2919
  br label %sw.epilog, !dbg !2920

sw.bb41:                                          ; preds = %if.end25
  %52 = load ptr, ptr %res, align 8, !dbg !2921
  %flags42 = getelementptr inbounds %struct.resource, ptr %52, i32 0, i32 3, !dbg !2922
  store i64 4096, ptr %flags42, align 8, !dbg !2923
  br label %sw.epilog, !dbg !2924

sw.default:                                       ; preds = %if.end25
  store i1 false, ptr %retval, align 1, !dbg !2925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2925

sw.epilog:                                        ; preds = %sw.bb41, %sw.bb39, %if.end38
  %53 = load ptr, ptr %addr.addr, align 8, !dbg !2926
  %producer_consumer43 = getelementptr inbounds %struct.acpi_resource_address, ptr %53, i32 0, i32 1, !dbg !2928
  %54 = load i8, ptr %producer_consumer43, align 1, !dbg !2928
  %conv44 = zext i8 %54 to i32, !dbg !2926
  %cmp45 = icmp eq i32 %conv44, 0, !dbg !2929
  br i1 %cmp45, label %if.then47, label %if.end50, !dbg !2930

if.then47:                                        ; preds = %sw.epilog
  %55 = load ptr, ptr %res, align 8, !dbg !2931
  %flags48 = getelementptr inbounds %struct.resource, ptr %55, i32 0, i32 3, !dbg !2932
  %56 = load i64, ptr %flags48, align 8, !dbg !2933
  %or49 = or i64 %56, 2097152, !dbg !2933
  store i64 %or49, ptr %flags48, align 8, !dbg !2933
  br label %if.end50, !dbg !2931

if.end50:                                         ; preds = %if.then47, %sw.epilog
  %57 = load ptr, ptr %res, align 8, !dbg !2934
  %flags51 = getelementptr inbounds %struct.resource, ptr %57, i32 0, i32 3, !dbg !2935
  %58 = load i64, ptr %flags51, align 8, !dbg !2935
  %and = and i64 %58, 268435456, !dbg !2936
  %tobool52 = icmp ne i64 %and, 0, !dbg !2937
  %lnot = xor i1 %tobool52, true, !dbg !2937
  store i1 %lnot, ptr %retval, align 1, !dbg !2938
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2938

cleanup:                                          ; preds = %if.end50, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #11, !dbg !2939
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #11, !dbg !2939
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #11, !dbg !2939
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #11, !dbg !2939
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #11, !dbg !2939
  call void @llvm.lifetime.end.p0(i64 1, ptr %wp) #11, !dbg !2939
  call void @llvm.lifetime.end.p0(i64 1, ptr %iodec) #11, !dbg !2939
  %59 = load i1, ptr %retval, align 1, !dbg !2939
  ret i1 %59, !dbg !2939
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @acpi_dev_resource_ext_address_space(ptr noundef %ares, ptr noundef %win) #0 align 16 !dbg !2940 {
entry:
  %retval = alloca i1, align 1
  %ares.addr = alloca ptr, align 8
  %win.addr = alloca ptr, align 8
  %ext_addr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ares, ptr %ares.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ares.addr, metadata !2942, metadata !DIExpression()), !dbg !2946
  store ptr %win, ptr %win.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %win.addr, metadata !2943, metadata !DIExpression()), !dbg !2947
  call void @llvm.lifetime.start.p0(i64 8, ptr %ext_addr) #11, !dbg !2948
  call void @llvm.dbg.declare(metadata ptr %ext_addr, metadata !2944, metadata !DIExpression()), !dbg !2949
  %0 = load ptr, ptr %win.addr, align 8, !dbg !2950
  %res = getelementptr inbounds %struct.resource_win, ptr %0, i32 0, i32 0, !dbg !2951
  %flags = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3, !dbg !2952
  store i64 0, ptr %flags, align 8, !dbg !2953
  %1 = load ptr, ptr %ares.addr, align 8, !dbg !2954
  %type = getelementptr inbounds %struct.acpi_resource, ptr %1, i32 0, i32 0, !dbg !2956
  %2 = load i32, ptr %type, align 1, !dbg !2956
  %cmp = icmp ne i32 %2, 14, !dbg !2957
  br i1 %cmp, label %if.then, label %if.end, !dbg !2958

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2959
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2959

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ares.addr, align 8, !dbg !2960
  %data = getelementptr inbounds %struct.acpi_resource, ptr %3, i32 0, i32 2, !dbg !2961
  store ptr %data, ptr %ext_addr, align 8, !dbg !2962
  %4 = load ptr, ptr %win.addr, align 8, !dbg !2963
  %5 = load ptr, ptr %ext_addr, align 8, !dbg !2964
  %6 = load ptr, ptr %ext_addr, align 8, !dbg !2965
  %address = getelementptr inbounds %struct.acpi_resource_extended_address64, ptr %6, i32 0, i32 7, !dbg !2966
  %call = call zeroext i1 @acpi_decode_space(ptr noundef %4, ptr noundef %5, ptr noundef %address) #12, !dbg !2967
  store i1 %call, ptr %retval, align 1, !dbg !2968
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2968

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ext_addr) #11, !dbg !2969
  %7 = load i1, ptr %retval, align 1, !dbg !2969
  ret i1 %7, !dbg !2969
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @acpi_dev_irq_flags(i8 noundef zeroext %triggering, i8 noundef zeroext %polarity, i8 noundef zeroext %shareable, i8 noundef zeroext %wake_capable) #0 align 16 !dbg !2970 {
entry:
  %triggering.addr = alloca i8, align 1
  %polarity.addr = alloca i8, align 1
  %shareable.addr = alloca i8, align 1
  %wake_capable.addr = alloca i8, align 1
  %flags = alloca i64, align 8
  store i8 %triggering, ptr %triggering.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %triggering.addr, metadata !2974, metadata !DIExpression()), !dbg !2979
  store i8 %polarity, ptr %polarity.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %polarity.addr, metadata !2975, metadata !DIExpression()), !dbg !2980
  store i8 %shareable, ptr %shareable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %shareable.addr, metadata !2976, metadata !DIExpression()), !dbg !2981
  store i8 %wake_capable, ptr %wake_capable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %wake_capable.addr, metadata !2977, metadata !DIExpression()), !dbg !2982
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !2983
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2978, metadata !DIExpression()), !dbg !2984
  %0 = load i8, ptr %triggering.addr, align 1, !dbg !2985
  %conv = zext i8 %0 to i32, !dbg !2985
  %cmp = icmp eq i32 %conv, 0, !dbg !2987
  br i1 %cmp, label %if.then, label %if.else, !dbg !2988

if.then:                                          ; preds = %entry
  %1 = load i8, ptr %polarity.addr, align 1, !dbg !2989
  %conv2 = zext i8 %1 to i32, !dbg !2989
  %cmp3 = icmp eq i32 %conv2, 1, !dbg !2990
  %2 = zext i1 %cmp3 to i64, !dbg !2989
  %cond = select i1 %cmp3, i32 8, i32 4, !dbg !2989
  %conv5 = sext i32 %cond to i64, !dbg !2989
  store i64 %conv5, ptr %flags, align 8, !dbg !2991
  br label %if.end, !dbg !2992

if.else:                                          ; preds = %entry
  %3 = load i8, ptr %polarity.addr, align 1, !dbg !2993
  %conv6 = zext i8 %3 to i32, !dbg !2993
  %cmp7 = icmp eq i32 %conv6, 1, !dbg !2994
  %4 = zext i1 %cmp7 to i64, !dbg !2993
  %cond9 = select i1 %cmp7, i32 2, i32 1, !dbg !2993
  %conv10 = sext i32 %cond9 to i64, !dbg !2993
  store i64 %conv10, ptr %flags, align 8, !dbg !2995
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i8, ptr %shareable.addr, align 1, !dbg !2996
  %conv11 = zext i8 %5 to i32, !dbg !2996
  %cmp12 = icmp eq i32 %conv11, 1, !dbg !2998
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !2999

if.then14:                                        ; preds = %if.end
  %6 = load i64, ptr %flags, align 8, !dbg !3000
  %or = or i64 %6, 16, !dbg !3000
  store i64 %or, ptr %flags, align 8, !dbg !3000
  br label %if.end15, !dbg !3001

if.end15:                                         ; preds = %if.then14, %if.end
  %7 = load i8, ptr %wake_capable.addr, align 1, !dbg !3002
  %conv16 = zext i8 %7 to i32, !dbg !3002
  %cmp17 = icmp eq i32 %conv16, 1, !dbg !3004
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !3005

if.then19:                                        ; preds = %if.end15
  %8 = load i64, ptr %flags, align 8, !dbg !3006
  %or20 = or i64 %8, 64, !dbg !3006
  store i64 %or20, ptr %flags, align 8, !dbg !3006
  br label %if.end21, !dbg !3007

if.end21:                                         ; preds = %if.then19, %if.end15
  %9 = load i64, ptr %flags, align 8, !dbg !3008
  %or22 = or i64 %9, 1024, !dbg !3009
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !3010
  ret i64 %or22, !dbg !3011
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_dev_get_irq_type(i32 noundef %triggering, i32 noundef %polarity) #0 align 16 !dbg !3012 {
entry:
  %retval = alloca i32, align 4
  %triggering.addr = alloca i32, align 4
  %polarity.addr = alloca i32, align 4
  store i32 %triggering, ptr %triggering.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %triggering.addr, metadata !3016, metadata !DIExpression()), !dbg !3018
  store i32 %polarity, ptr %polarity.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %polarity.addr, metadata !3017, metadata !DIExpression()), !dbg !3019
  %0 = load i32, ptr %polarity.addr, align 4, !dbg !3020
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
    i32 2, label %sw.bb4
  ], !dbg !3021

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %triggering.addr, align 4, !dbg !3022
  %cmp = icmp eq i32 %1, 1, !dbg !3024
  %2 = zext i1 %cmp to i64, !dbg !3022
  %cond = select i1 %cmp, i32 2, i32 8, !dbg !3022
  store i32 %cond, ptr %retval, align 4, !dbg !3025
  br label %return, !dbg !3025

sw.bb1:                                           ; preds = %entry
  %3 = load i32, ptr %triggering.addr, align 4, !dbg !3026
  %cmp2 = icmp eq i32 %3, 1, !dbg !3027
  %4 = zext i1 %cmp2 to i64, !dbg !3026
  %cond3 = select i1 %cmp2, i32 1, i32 4, !dbg !3026
  store i32 %cond3, ptr %retval, align 4, !dbg !3028
  br label %return, !dbg !3028

sw.bb4:                                           ; preds = %entry
  %5 = load i32, ptr %triggering.addr, align 4, !dbg !3029
  %cmp5 = icmp eq i32 %5, 1, !dbg !3031
  br i1 %cmp5, label %if.then, label %if.end, !dbg !3032

if.then:                                          ; preds = %sw.bb4
  store i32 3, ptr %retval, align 4, !dbg !3033
  br label %return, !dbg !3033

if.end:                                           ; preds = %sw.bb4
  br label %sw.default, !dbg !3034

sw.default:                                       ; preds = %entry, %if.end
  store i32 0, ptr %retval, align 4, !dbg !3035
  br label %return, !dbg !3035

return:                                           ; preds = %sw.default, %if.then, %sw.bb1, %sw.bb
  %6 = load i32, ptr %retval, align 4, !dbg !3036
  ret i32 %6, !dbg !3036
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @acpi_dev_resource_interrupt(ptr noundef %ares, i32 noundef %index, ptr noundef %res) #0 align 16 !dbg !3037 {
entry:
  %retval = alloca i1, align 1
  %ares.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %irq = alloca ptr, align 8
  %ext_irq = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ares, ptr %ares.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ares.addr, metadata !3041, metadata !DIExpression()), !dbg !3048
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !3042, metadata !DIExpression()), !dbg !3049
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3043, metadata !DIExpression()), !dbg !3050
  call void @llvm.lifetime.start.p0(i64 8, ptr %irq) #11, !dbg !3051
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !3044, metadata !DIExpression()), !dbg !3052
  call void @llvm.lifetime.start.p0(i64 8, ptr %ext_irq) #11, !dbg !3053
  call void @llvm.dbg.declare(metadata ptr %ext_irq, metadata !3046, metadata !DIExpression()), !dbg !3054
  %0 = load ptr, ptr %ares.addr, align 8, !dbg !3055
  %type = getelementptr inbounds %struct.acpi_resource, ptr %0, i32 0, i32 0, !dbg !3056
  %1 = load i32, ptr %type, align 1, !dbg !3056
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 15, label %sw.bb3
  ], !dbg !3057

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %ares.addr, align 8, !dbg !3058
  %data = getelementptr inbounds %struct.acpi_resource, ptr %2, i32 0, i32 2, !dbg !3060
  store ptr %data, ptr %irq, align 8, !dbg !3061
  %3 = load i32, ptr %index.addr, align 4, !dbg !3062
  %4 = load ptr, ptr %irq, align 8, !dbg !3064
  %interrupt_count = getelementptr inbounds %struct.acpi_resource_irq, ptr %4, i32 0, i32 5, !dbg !3065
  %5 = load i8, ptr %interrupt_count, align 1, !dbg !3065
  %conv = zext i8 %5 to i32, !dbg !3064
  %cmp = icmp sge i32 %3, %conv, !dbg !3066
  br i1 %cmp, label %if.then, label %if.end, !dbg !3067

if.then:                                          ; preds = %sw.bb
  %6 = load ptr, ptr %res.addr, align 8, !dbg !3068
  call void @irqresource_disabled(ptr noundef %6, i32 noundef 0) #12, !dbg !3070
  store i1 false, ptr %retval, align 1, !dbg !3071
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3071

if.end:                                           ; preds = %sw.bb
  %7 = load ptr, ptr %res.addr, align 8, !dbg !3072
  %8 = load ptr, ptr %irq, align 8, !dbg !3073
  %9 = getelementptr inbounds %struct.acpi_resource_irq, ptr %8, i32 0, i32 6, !dbg !3074
  %interrupts = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 1, !dbg !3074
  %10 = load i32, ptr %index.addr, align 4, !dbg !3075
  %idxprom = sext i32 %10 to i64, !dbg !3073
  %arrayidx = getelementptr [0 x i8], ptr %interrupts, i64 0, i64 %idxprom, !dbg !3073
  %11 = load i8, ptr %arrayidx, align 1, !dbg !3073
  %conv2 = zext i8 %11 to i32, !dbg !3073
  %12 = load ptr, ptr %irq, align 8, !dbg !3076
  %triggering = getelementptr inbounds %struct.acpi_resource_irq, ptr %12, i32 0, i32 1, !dbg !3077
  %13 = load i8, ptr %triggering, align 1, !dbg !3077
  %14 = load ptr, ptr %irq, align 8, !dbg !3078
  %polarity = getelementptr inbounds %struct.acpi_resource_irq, ptr %14, i32 0, i32 2, !dbg !3079
  %15 = load i8, ptr %polarity, align 1, !dbg !3079
  %16 = load ptr, ptr %irq, align 8, !dbg !3080
  %shareable = getelementptr inbounds %struct.acpi_resource_irq, ptr %16, i32 0, i32 3, !dbg !3081
  %17 = load i8, ptr %shareable, align 1, !dbg !3081
  %18 = load ptr, ptr %irq, align 8, !dbg !3082
  %wake_capable = getelementptr inbounds %struct.acpi_resource_irq, ptr %18, i32 0, i32 4, !dbg !3083
  %19 = load i8, ptr %wake_capable, align 1, !dbg !3083
  call void @acpi_dev_get_irqresource(ptr noundef %7, i32 noundef %conv2, i8 noundef zeroext %13, i8 noundef zeroext %15, i8 noundef zeroext %17, i8 noundef zeroext %19, i1 noundef zeroext true) #12, !dbg !3084
  br label %sw.epilog, !dbg !3085

sw.bb3:                                           ; preds = %entry
  %20 = load ptr, ptr %ares.addr, align 8, !dbg !3086
  %data4 = getelementptr inbounds %struct.acpi_resource, ptr %20, i32 0, i32 2, !dbg !3087
  store ptr %data4, ptr %ext_irq, align 8, !dbg !3088
  %21 = load i32, ptr %index.addr, align 4, !dbg !3089
  %22 = load ptr, ptr %ext_irq, align 8, !dbg !3091
  %interrupt_count5 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %22, i32 0, i32 5, !dbg !3092
  %23 = load i8, ptr %interrupt_count5, align 1, !dbg !3092
  %conv6 = zext i8 %23 to i32, !dbg !3091
  %cmp7 = icmp sge i32 %21, %conv6, !dbg !3093
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !3094

if.then9:                                         ; preds = %sw.bb3
  %24 = load ptr, ptr %res.addr, align 8, !dbg !3095
  call void @irqresource_disabled(ptr noundef %24, i32 noundef 0) #12, !dbg !3097
  store i1 false, ptr %retval, align 1, !dbg !3098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3098

if.end10:                                         ; preds = %sw.bb3
  %25 = load ptr, ptr %ext_irq, align 8, !dbg !3099
  %call = call zeroext i1 @is_gsi(ptr noundef %25) #12, !dbg !3101
  br i1 %call, label %if.then11, label %if.else, !dbg !3102

if.then11:                                        ; preds = %if.end10
  %26 = load ptr, ptr %res.addr, align 8, !dbg !3103
  %27 = load ptr, ptr %ext_irq, align 8, !dbg !3104
  %28 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %27, i32 0, i32 7, !dbg !3105
  %interrupts12 = getelementptr inbounds %struct.anon.5, ptr %28, i32 0, i32 1, !dbg !3105
  %29 = load i32, ptr %index.addr, align 4, !dbg !3106
  %idxprom13 = sext i32 %29 to i64, !dbg !3104
  %arrayidx14 = getelementptr [0 x i32], ptr %interrupts12, i64 0, i64 %idxprom13, !dbg !3104
  %30 = load i32, ptr %arrayidx14, align 1, !dbg !3104
  %31 = load ptr, ptr %ext_irq, align 8, !dbg !3107
  %triggering15 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %31, i32 0, i32 1, !dbg !3108
  %32 = load i8, ptr %triggering15, align 1, !dbg !3108
  %33 = load ptr, ptr %ext_irq, align 8, !dbg !3109
  %polarity16 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %33, i32 0, i32 2, !dbg !3110
  %34 = load i8, ptr %polarity16, align 1, !dbg !3110
  %35 = load ptr, ptr %ext_irq, align 8, !dbg !3111
  %shareable17 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %35, i32 0, i32 3, !dbg !3112
  %36 = load i8, ptr %shareable17, align 1, !dbg !3112
  %37 = load ptr, ptr %ext_irq, align 8, !dbg !3113
  %wake_capable18 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %37, i32 0, i32 4, !dbg !3114
  %38 = load i8, ptr %wake_capable18, align 1, !dbg !3114
  call void @acpi_dev_get_irqresource(ptr noundef %26, i32 noundef %30, i8 noundef zeroext %32, i8 noundef zeroext %34, i8 noundef zeroext %36, i8 noundef zeroext %38, i1 noundef zeroext false) #12, !dbg !3115
  br label %if.end19, !dbg !3115

if.else:                                          ; preds = %if.end10
  %39 = load ptr, ptr %res.addr, align 8, !dbg !3116
  call void @irqresource_disabled(ptr noundef %39, i32 noundef 0) #12, !dbg !3117
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then11
  br label %sw.epilog, !dbg !3118

sw.default:                                       ; preds = %entry
  %40 = load ptr, ptr %res.addr, align 8, !dbg !3119
  %flags = getelementptr inbounds %struct.resource, ptr %40, i32 0, i32 3, !dbg !3120
  store i64 0, ptr %flags, align 8, !dbg !3121
  store i1 false, ptr %retval, align 1, !dbg !3122
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3122

sw.epilog:                                        ; preds = %if.end19, %if.end
  store i1 true, ptr %retval, align 1, !dbg !3123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3123

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ext_irq) #11, !dbg !3124
  call void @llvm.lifetime.end.p0(i64 8, ptr %irq) #11, !dbg !3124
  %41 = load i1, ptr %retval, align 1, !dbg !3124
  ret i1 %41, !dbg !3124
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irqresource_disabled(ptr noundef %res, i32 noundef %irq) #4 align 16 !dbg !3125 {
entry:
  %res.addr = alloca ptr, align 8
  %irq.addr = alloca i32, align 4
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3129, metadata !DIExpression()), !dbg !3131
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !3130, metadata !DIExpression()), !dbg !3132
  %0 = load i32, ptr %irq.addr, align 4, !dbg !3133
  %conv = zext i32 %0 to i64, !dbg !3133
  %1 = load ptr, ptr %res.addr, align 8, !dbg !3134
  %start = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 0, !dbg !3135
  store i64 %conv, ptr %start, align 8, !dbg !3136
  %2 = load i32, ptr %irq.addr, align 4, !dbg !3137
  %conv1 = zext i32 %2 to i64, !dbg !3137
  %3 = load ptr, ptr %res.addr, align 8, !dbg !3138
  %end = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1, !dbg !3139
  store i64 %conv1, ptr %end, align 8, !dbg !3140
  %4 = load ptr, ptr %res.addr, align 8, !dbg !3141
  %flags = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 3, !dbg !3142
  %5 = load i64, ptr %flags, align 8, !dbg !3143
  %or = or i64 %5, 805307392, !dbg !3143
  store i64 %or, ptr %flags, align 8, !dbg !3143
  ret void, !dbg !3144
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_dev_get_irqresource(ptr noundef %res, i32 noundef %gsi, i8 noundef zeroext %triggering, i8 noundef zeroext %polarity, i8 noundef zeroext %shareable, i8 noundef zeroext %wake_capable, i1 noundef zeroext %check_override) #0 align 16 !dbg !3145 {
entry:
  %res.addr = alloca ptr, align 8
  %gsi.addr = alloca i32, align 4
  %triggering.addr = alloca i8, align 1
  %polarity.addr = alloca i8, align 1
  %shareable.addr = alloca i8, align 1
  %wake_capable.addr = alloca i8, align 1
  %check_override.addr = alloca i8, align 1
  %irq = alloca i32, align 4
  %p = alloca i32, align 4
  %t = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %trig = alloca i8, align 1
  %pol = alloca i8, align 1
  %tmp = alloca i32, align 4
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3149, metadata !DIExpression()), !dbg !3163
  store i32 %gsi, ptr %gsi.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gsi.addr, metadata !3150, metadata !DIExpression()), !dbg !3164
  store i8 %triggering, ptr %triggering.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %triggering.addr, metadata !3151, metadata !DIExpression()), !dbg !3165
  store i8 %polarity, ptr %polarity.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %polarity.addr, metadata !3152, metadata !DIExpression()), !dbg !3166
  store i8 %shareable, ptr %shareable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %shareable.addr, metadata !3153, metadata !DIExpression()), !dbg !3167
  store i8 %wake_capable, ptr %wake_capable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %wake_capable.addr, metadata !3154, metadata !DIExpression()), !dbg !3168
  %frombool = zext i1 %check_override to i8
  store i8 %frombool, ptr %check_override.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %check_override.addr, metadata !3155, metadata !DIExpression()), !dbg !3169
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq) #11, !dbg !3170
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !3156, metadata !DIExpression()), !dbg !3171
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #11, !dbg !3170
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3157, metadata !DIExpression()), !dbg !3172
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #11, !dbg !3170
  call void @llvm.dbg.declare(metadata ptr %t, metadata !3158, metadata !DIExpression()), !dbg !3173
  %0 = load i32, ptr %gsi.addr, align 4, !dbg !3174
  %cmp = icmp ne i32 %0, 0, !dbg !3174
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !3174

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %gsi.addr, align 4, !dbg !3174
  %cmp1 = icmp ne i32 %1, 2, !dbg !3174
  br i1 %cmp1, label %if.end, label %if.then, !dbg !3176

if.then:                                          ; preds = %land.lhs.true, %entry
  %2 = load ptr, ptr %res.addr, align 8, !dbg !3177
  %3 = load i32, ptr %gsi.addr, align 4, !dbg !3179
  call void @irqresource_disabled(ptr noundef %2, i32 noundef %3) #12, !dbg !3180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3181

if.end:                                           ; preds = %land.lhs.true
  %4 = load i8, ptr %check_override.addr, align 1, !dbg !3182, !range !2901, !noundef !431
  %tobool = trunc i8 %4 to i1, !dbg !3182
  br i1 %tobool, label %land.lhs.true2, label %if.end36, !dbg !3183

land.lhs.true2:                                   ; preds = %if.end
  %5 = load i32, ptr %gsi.addr, align 4, !dbg !3184
  %6 = load i8, ptr %triggering.addr, align 1, !dbg !3185
  %7 = load i8, ptr %polarity.addr, align 1, !dbg !3186
  %8 = load i8, ptr %shareable.addr, align 1, !dbg !3187
  %call = call zeroext i1 @acpi_dev_irq_override(i32 noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8) #12, !dbg !3188
  br i1 %call, label %land.lhs.true3, label %if.end36, !dbg !3189

land.lhs.true3:                                   ; preds = %land.lhs.true2
  %9 = load i32, ptr %gsi.addr, align 4, !dbg !3190
  %call4 = call i32 @acpi_get_override_irq(i32 noundef %9, ptr noundef %t, ptr noundef %p) #12, !dbg !3191
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3191
  br i1 %tobool5, label %if.end36, label %if.then6, !dbg !3192

if.then6:                                         ; preds = %land.lhs.true3
  call void @llvm.lifetime.start.p0(i64 1, ptr %trig) #11, !dbg !3193
  call void @llvm.dbg.declare(metadata ptr %trig, metadata !3159, metadata !DIExpression()), !dbg !3194
  %10 = load i32, ptr %t, align 4, !dbg !3195
  %tobool7 = icmp ne i32 %10, 0, !dbg !3195
  %11 = zext i1 %tobool7 to i64, !dbg !3195
  %cond = select i1 %tobool7, i32 0, i32 1, !dbg !3195
  %conv = trunc i32 %cond to i8, !dbg !3195
  store i8 %conv, ptr %trig, align 1, !dbg !3194
  call void @llvm.lifetime.start.p0(i64 1, ptr %pol) #11, !dbg !3196
  call void @llvm.dbg.declare(metadata ptr %pol, metadata !3162, metadata !DIExpression()), !dbg !3197
  %12 = load i32, ptr %p, align 4, !dbg !3198
  %tobool8 = icmp ne i32 %12, 0, !dbg !3198
  %13 = zext i1 %tobool8 to i64, !dbg !3198
  %cond9 = select i1 %tobool8, i32 1, i32 0, !dbg !3198
  %conv10 = trunc i32 %cond9 to i8, !dbg !3198
  store i8 %conv10, ptr %pol, align 1, !dbg !3197
  %14 = load i8, ptr %triggering.addr, align 1, !dbg !3199
  %conv11 = zext i8 %14 to i32, !dbg !3199
  %15 = load i8, ptr %trig, align 1, !dbg !3201
  %conv12 = zext i8 %15 to i32, !dbg !3201
  %cmp13 = icmp ne i32 %conv11, %conv12, !dbg !3202
  br i1 %cmp13, label %if.then19, label %lor.lhs.false, !dbg !3203

lor.lhs.false:                                    ; preds = %if.then6
  %16 = load i8, ptr %polarity.addr, align 1, !dbg !3204
  %conv15 = zext i8 %16 to i32, !dbg !3204
  %17 = load i8, ptr %pol, align 1, !dbg !3205
  %conv16 = zext i8 %17 to i32, !dbg !3205
  %cmp17 = icmp ne i32 %conv15, %conv16, !dbg !3206
  br i1 %cmp17, label %if.then19, label %if.end35, !dbg !3207

if.then19:                                        ; preds = %lor.lhs.false, %if.then6
  br label %do.body, !dbg !3208

do.body:                                          ; preds = %if.then19
  br label %do.cond, !dbg !3211

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3211

do.end:                                           ; preds = %do.cond
  %18 = load i32, ptr %gsi.addr, align 4, !dbg !3208
  %19 = load i32, ptr %t, align 4, !dbg !3208
  %tobool20 = icmp ne i32 %19, 0, !dbg !3208
  %20 = zext i1 %tobool20 to i64, !dbg !3208
  %cond21 = select i1 %tobool20, ptr @.str.3, ptr @.str.4, !dbg !3208
  %21 = load i8, ptr %trig, align 1, !dbg !3208
  %conv22 = zext i8 %21 to i32, !dbg !3208
  %22 = load i8, ptr %triggering.addr, align 1, !dbg !3208
  %conv23 = zext i8 %22 to i32, !dbg !3208
  %cmp24 = icmp eq i32 %conv22, %conv23, !dbg !3208
  %23 = zext i1 %cmp24 to i64, !dbg !3208
  %cond26 = select i1 %cmp24, ptr @.str.5, ptr @.str.6, !dbg !3208
  %24 = load i32, ptr %p, align 4, !dbg !3208
  %tobool27 = icmp ne i32 %24, 0, !dbg !3208
  %25 = zext i1 %tobool27 to i64, !dbg !3208
  %cond28 = select i1 %tobool27, ptr @.str.7, ptr @.str.8, !dbg !3208
  %26 = load i8, ptr %pol, align 1, !dbg !3208
  %conv29 = zext i8 %26 to i32, !dbg !3208
  %27 = load i8, ptr %polarity.addr, align 1, !dbg !3208
  %conv30 = zext i8 %27 to i32, !dbg !3208
  %cmp31 = icmp eq i32 %conv29, %conv30, !dbg !3208
  %28 = zext i1 %cmp31 to i64, !dbg !3208
  %cond33 = select i1 %cmp31, ptr @.str.5, ptr @.str.6, !dbg !3208
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %18, ptr noundef %cond21, ptr noundef %cond26, ptr noundef %cond28, ptr noundef %cond33) #13, !dbg !3208
  store i32 %call34, ptr %tmp, align 4, !dbg !3211
  %29 = load i32, ptr %tmp, align 4, !dbg !3208
  %30 = load i8, ptr %trig, align 1, !dbg !3213
  store i8 %30, ptr %triggering.addr, align 1, !dbg !3214
  %31 = load i8, ptr %pol, align 1, !dbg !3215
  store i8 %31, ptr %polarity.addr, align 1, !dbg !3216
  br label %if.end35, !dbg !3217

if.end35:                                         ; preds = %do.end, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 1, ptr %pol) #11, !dbg !3218
  call void @llvm.lifetime.end.p0(i64 1, ptr %trig) #11, !dbg !3218
  br label %if.end36, !dbg !3219

if.end36:                                         ; preds = %if.end35, %land.lhs.true3, %land.lhs.true2, %if.end
  %32 = load i8, ptr %triggering.addr, align 1, !dbg !3220
  %33 = load i8, ptr %polarity.addr, align 1, !dbg !3221
  %34 = load i8, ptr %shareable.addr, align 1, !dbg !3222
  %35 = load i8, ptr %wake_capable.addr, align 1, !dbg !3223
  %call37 = call i64 @acpi_dev_irq_flags(i8 noundef zeroext %32, i8 noundef zeroext %33, i8 noundef zeroext %34, i8 noundef zeroext %35) #12, !dbg !3224
  %36 = load ptr, ptr %res.addr, align 8, !dbg !3225
  %flags = getelementptr inbounds %struct.resource, ptr %36, i32 0, i32 3, !dbg !3226
  store i64 %call37, ptr %flags, align 8, !dbg !3227
  %37 = load i32, ptr %gsi.addr, align 4, !dbg !3228
  %38 = load i8, ptr %triggering.addr, align 1, !dbg !3229
  %conv38 = zext i8 %38 to i32, !dbg !3229
  %39 = load i8, ptr %polarity.addr, align 1, !dbg !3230
  %conv39 = zext i8 %39 to i32, !dbg !3230
  %call40 = call i32 @acpi_register_gsi(ptr noundef null, i32 noundef %37, i32 noundef %conv38, i32 noundef %conv39) #12, !dbg !3231
  store i32 %call40, ptr %irq, align 4, !dbg !3232
  %40 = load i32, ptr %irq, align 4, !dbg !3233
  %cmp41 = icmp sge i32 %40, 0, !dbg !3235
  br i1 %cmp41, label %if.then43, label %if.else, !dbg !3236

if.then43:                                        ; preds = %if.end36
  %41 = load i32, ptr %irq, align 4, !dbg !3237
  %conv44 = sext i32 %41 to i64, !dbg !3237
  %42 = load ptr, ptr %res.addr, align 8, !dbg !3239
  %start = getelementptr inbounds %struct.resource, ptr %42, i32 0, i32 0, !dbg !3240
  store i64 %conv44, ptr %start, align 8, !dbg !3241
  %43 = load i32, ptr %irq, align 4, !dbg !3242
  %conv45 = sext i32 %43 to i64, !dbg !3242
  %44 = load ptr, ptr %res.addr, align 8, !dbg !3243
  %end = getelementptr inbounds %struct.resource, ptr %44, i32 0, i32 1, !dbg !3244
  store i64 %conv45, ptr %end, align 8, !dbg !3245
  br label %if.end46, !dbg !3246

if.else:                                          ; preds = %if.end36
  %45 = load ptr, ptr %res.addr, align 8, !dbg !3247
  %46 = load i32, ptr %gsi.addr, align 4, !dbg !3249
  call void @irqresource_disabled(ptr noundef %45, i32 noundef %46) #12, !dbg !3250
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then43
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3251
  br label %cleanup, !dbg !3251

cleanup:                                          ; preds = %if.end46, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #11, !dbg !3251
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #11, !dbg !3251
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq) #11, !dbg !3251
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3251

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_gsi(ptr noundef %ext_irq) #4 align 16 !dbg !3252 {
entry:
  %ext_irq.addr = alloca ptr, align 8
  store ptr %ext_irq, ptr %ext_irq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ext_irq.addr, metadata !3256, metadata !DIExpression()), !dbg !3257
  ret i1 true, !dbg !3258
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_dev_free_resource_list(ptr noundef %list) #0 align 16 !dbg !3259 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3263, metadata !DIExpression()), !dbg !3264
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3265
  call void @resource_list_free(ptr noundef %0) #12, !dbg !3266
  ret void, !dbg !3267
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3268 dso_local void @resource_list_free(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_dev_get_resources(ptr noundef %adev, ptr noundef %list, ptr noundef %preproc, ptr noundef %preproc_data) #0 align 16 !dbg !3269 {
entry:
  %adev.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %preproc.addr = alloca ptr, align 8
  %preproc_data.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !3276, metadata !DIExpression()), !dbg !3280
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3277, metadata !DIExpression()), !dbg !3281
  store ptr %preproc, ptr %preproc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %preproc.addr, metadata !3278, metadata !DIExpression()), !dbg !3282
  store ptr %preproc_data, ptr %preproc_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %preproc_data.addr, metadata !3279, metadata !DIExpression()), !dbg !3283
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !3284
  %1 = load ptr, ptr %list.addr, align 8, !dbg !3285
  %2 = load ptr, ptr %preproc.addr, align 8, !dbg !3286
  %3 = load ptr, ptr %preproc_data.addr, align 8, !dbg !3287
  %call = call i32 @__acpi_dev_get_resources(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef @.str) #12, !dbg !3288
  ret i32 %call, !dbg !3289
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__acpi_dev_get_resources(ptr noundef %adev, ptr noundef %list, ptr noundef %preproc, ptr noundef %preproc_data, ptr noundef %method) #0 align 16 !dbg !3290 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %preproc.addr = alloca ptr, align 8
  %preproc_data.addr = alloca ptr, align 8
  %method.addr = alloca ptr, align 8
  %c = alloca %struct.res_proc_context, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !3294, metadata !DIExpression()), !dbg !3308
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3295, metadata !DIExpression()), !dbg !3309
  store ptr %preproc, ptr %preproc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %preproc.addr, metadata !3296, metadata !DIExpression()), !dbg !3310
  store ptr %preproc_data, ptr %preproc_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %preproc_data.addr, metadata !3297, metadata !DIExpression()), !dbg !3311
  store ptr %method, ptr %method.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %method.addr, metadata !3298, metadata !DIExpression()), !dbg !3312
  call void @llvm.lifetime.start.p0(i64 32, ptr %c) #11, !dbg !3313
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3299, metadata !DIExpression()), !dbg !3314
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #11, !dbg !3315
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3307, metadata !DIExpression()), !dbg !3316
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !3317
  %tobool = icmp ne ptr %0, null, !dbg !3317
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3319

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !3320
  %handle = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 2, !dbg !3321
  %2 = load ptr, ptr %handle, align 8, !dbg !3321
  %tobool1 = icmp ne ptr %2, null, !dbg !3320
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !3322

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %list.addr, align 8, !dbg !3323
  %call = call i32 @list_empty(ptr noundef %3) #12, !dbg !3324
  %tobool3 = icmp ne i32 %call, 0, !dbg !3324
  br i1 %tobool3, label %if.end, label %if.then, !dbg !3325

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !3326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3326

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load ptr, ptr %adev.addr, align 8, !dbg !3327
  %handle4 = getelementptr inbounds %struct.acpi_device, ptr %4, i32 0, i32 2, !dbg !3329
  %5 = load ptr, ptr %handle4, align 8, !dbg !3329
  %6 = load ptr, ptr %method.addr, align 8, !dbg !3330
  %call5 = call zeroext i1 @acpi_has_method(ptr noundef %5, ptr noundef %6) #12, !dbg !3331
  br i1 %call5, label %if.end7, label %if.then6, !dbg !3332

if.then6:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !3333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3333

if.end7:                                          ; preds = %if.end
  %7 = load ptr, ptr %list.addr, align 8, !dbg !3334
  %list8 = getelementptr inbounds %struct.res_proc_context, ptr %c, i32 0, i32 0, !dbg !3335
  store ptr %7, ptr %list8, align 8, !dbg !3336
  %8 = load ptr, ptr %preproc.addr, align 8, !dbg !3337
  %preproc9 = getelementptr inbounds %struct.res_proc_context, ptr %c, i32 0, i32 1, !dbg !3338
  store ptr %8, ptr %preproc9, align 8, !dbg !3339
  %9 = load ptr, ptr %preproc_data.addr, align 8, !dbg !3340
  %preproc_data10 = getelementptr inbounds %struct.res_proc_context, ptr %c, i32 0, i32 2, !dbg !3341
  store ptr %9, ptr %preproc_data10, align 8, !dbg !3342
  %count = getelementptr inbounds %struct.res_proc_context, ptr %c, i32 0, i32 3, !dbg !3343
  store i32 0, ptr %count, align 8, !dbg !3344
  %error = getelementptr inbounds %struct.res_proc_context, ptr %c, i32 0, i32 4, !dbg !3345
  store i32 0, ptr %error, align 4, !dbg !3346
  %10 = load ptr, ptr %adev.addr, align 8, !dbg !3347
  %handle11 = getelementptr inbounds %struct.acpi_device, ptr %10, i32 0, i32 2, !dbg !3348
  %11 = load ptr, ptr %handle11, align 8, !dbg !3348
  %12 = load ptr, ptr %method.addr, align 8, !dbg !3349
  %call12 = call i32 @acpi_walk_resources(ptr noundef %11, ptr noundef %12, ptr noundef @acpi_dev_process_resource, ptr noundef %c) #12, !dbg !3350
  store i32 %call12, ptr %status, align 4, !dbg !3351
  %13 = load i32, ptr %status, align 4, !dbg !3352
  %tobool13 = icmp ne i32 %13, 0, !dbg !3352
  br i1 %tobool13, label %if.then14, label %if.end18, !dbg !3354

if.then14:                                        ; preds = %if.end7
  %14 = load ptr, ptr %list.addr, align 8, !dbg !3355
  call void @acpi_dev_free_resource_list(ptr noundef %14) #12, !dbg !3357
  %error15 = getelementptr inbounds %struct.res_proc_context, ptr %c, i32 0, i32 4, !dbg !3358
  %15 = load i32, ptr %error15, align 4, !dbg !3358
  %tobool16 = icmp ne i32 %15, 0, !dbg !3359
  br i1 %tobool16, label %cond.true, label %cond.false, !dbg !3359

cond.true:                                        ; preds = %if.then14
  %error17 = getelementptr inbounds %struct.res_proc_context, ptr %c, i32 0, i32 4, !dbg !3360
  %16 = load i32, ptr %error17, align 4, !dbg !3360
  br label %cond.end, !dbg !3359

cond.false:                                       ; preds = %if.then14
  br label %cond.end, !dbg !3359

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ -5, %cond.false ], !dbg !3359
  store i32 %cond, ptr %retval, align 4, !dbg !3361
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3361

if.end18:                                         ; preds = %if.end7
  %count19 = getelementptr inbounds %struct.res_proc_context, ptr %c, i32 0, i32 3, !dbg !3362
  %17 = load i32, ptr %count19, align 8, !dbg !3362
  store i32 %17, ptr %retval, align 4, !dbg !3363
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3363

cleanup:                                          ; preds = %if.end18, %cond.end, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #11, !dbg !3364
  call void @llvm.lifetime.end.p0(i64 32, ptr %c) #11, !dbg !3364
  %18 = load i32, ptr %retval, align 4, !dbg !3364
  ret i32 %18, !dbg !3364
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_dev_get_dma_resources(ptr noundef %adev, ptr noundef %list) #0 align 16 !dbg !3365 {
entry:
  %adev.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !3369, metadata !DIExpression()), !dbg !3371
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3370, metadata !DIExpression()), !dbg !3372
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !3373
  %1 = load ptr, ptr %list.addr, align 8, !dbg !3374
  %call = call i32 @__acpi_dev_get_resources(ptr noundef %0, ptr noundef %1, ptr noundef @is_memory, ptr noundef null, ptr noundef @.str.1) #12, !dbg !3375
  ret i32 %call, !dbg !3376
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_memory(ptr noundef %ares, ptr noundef %not_used) #0 align 16 !dbg !3377 {
entry:
  %retval = alloca i32, align 4
  %ares.addr = alloca ptr, align 8
  %not_used.addr = alloca ptr, align 8
  %win = alloca %struct.resource_win, align 8
  %res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ares, ptr %ares.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ares.addr, metadata !3379, metadata !DIExpression()), !dbg !3383
  store ptr %not_used, ptr %not_used.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %not_used.addr, metadata !3380, metadata !DIExpression()), !dbg !3384
  call void @llvm.lifetime.start.p0(i64 72, ptr %win) #11, !dbg !3385
  call void @llvm.dbg.declare(metadata ptr %win, metadata !3381, metadata !DIExpression()), !dbg !3386
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #11, !dbg !3387
  call void @llvm.dbg.declare(metadata ptr %res, metadata !3382, metadata !DIExpression()), !dbg !3388
  %res1 = getelementptr inbounds %struct.resource_win, ptr %win, i32 0, i32 0, !dbg !3389
  store ptr %res1, ptr %res, align 8, !dbg !3388
  call void @llvm.memset.p0.i64(ptr align 8 %win, i8 0, i64 72, i1 false), !dbg !3390
  %0 = load ptr, ptr %ares.addr, align 8, !dbg !3391
  %call = call i32 @acpi_dev_filter_resource_type(ptr noundef %0, i64 noundef 512) #12, !dbg !3393
  %tobool = icmp ne i32 %call, 0, !dbg !3393
  br i1 %tobool, label %if.then, label %if.end, !dbg !3394

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !3395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3395

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ares.addr, align 8, !dbg !3396
  %2 = load ptr, ptr %res, align 8, !dbg !3397
  %call2 = call zeroext i1 @acpi_dev_resource_memory(ptr noundef %1, ptr noundef %2) #12, !dbg !3398
  br i1 %call2, label %lor.end, label %lor.lhs.false, !dbg !3399

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %ares.addr, align 8, !dbg !3400
  %call3 = call zeroext i1 @acpi_dev_resource_address_space(ptr noundef %3, ptr noundef %win) #12, !dbg !3401
  br i1 %call3, label %lor.end, label %lor.rhs, !dbg !3402

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load ptr, ptr %ares.addr, align 8, !dbg !3403
  %call4 = call zeroext i1 @acpi_dev_resource_ext_address_space(ptr noundef %4, ptr noundef %win) #12, !dbg !3404
  br label %lor.end, !dbg !3402

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end
  %5 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end ], [ %call4, %lor.rhs ]
  %lnot = xor i1 %5, true, !dbg !3405
  %lnot.ext = zext i1 %lnot to i32, !dbg !3405
  store i32 %lnot.ext, ptr %retval, align 4, !dbg !3406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3406

cleanup:                                          ; preds = %lor.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #11, !dbg !3407
  call void @llvm.lifetime.end.p0(i64 72, ptr %win) #11, !dbg !3407
  %6 = load i32, ptr %retval, align 4, !dbg !3407
  ret i32 %6, !dbg !3407
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_dev_get_memory_resources(ptr noundef %adev, ptr noundef %list) #0 align 16 !dbg !3408 {
entry:
  %adev.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !3410, metadata !DIExpression()), !dbg !3412
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3411, metadata !DIExpression()), !dbg !3413
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !3414
  %1 = load ptr, ptr %list.addr, align 8, !dbg !3415
  %call = call i32 @acpi_dev_get_resources(ptr noundef %0, ptr noundef %1, ptr noundef @is_memory, ptr noundef null) #12, !dbg !3416
  ret i32 %call, !dbg !3417
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_dev_filter_resource_type(ptr noundef %ares, i64 noundef %types) #0 align 16 !dbg !3418 {
entry:
  %ares.addr = alloca ptr, align 8
  %types.addr = alloca i64, align 8
  %type = alloca i64, align 8
  store ptr %ares, ptr %ares.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ares.addr, metadata !3422, metadata !DIExpression()), !dbg !3425
  store i64 %types, ptr %types.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %types.addr, metadata !3423, metadata !DIExpression()), !dbg !3426
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #11, !dbg !3427
  call void @llvm.dbg.declare(metadata ptr %type, metadata !3424, metadata !DIExpression()), !dbg !3428
  store i64 0, ptr %type, align 8, !dbg !3428
  %0 = load ptr, ptr %ares.addr, align 8, !dbg !3429
  %type1 = getelementptr inbounds %struct.acpi_resource, ptr %0, i32 0, i32 0, !dbg !3430
  %1 = load i32, ptr %type1, align 1, !dbg !3430
  switch i32 %1, label %sw.default [
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 4, label %sw.bb2
    i32 5, label %sw.bb2
    i32 0, label %sw.bb3
    i32 15, label %sw.bb3
    i32 1, label %sw.bb4
    i32 18, label %sw.bb4
    i32 16, label %sw.bb5
    i32 11, label %sw.bb6
    i32 12, label %sw.bb6
    i32 13, label %sw.bb6
    i32 14, label %sw.bb6
  ], !dbg !3431

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i64 512, ptr %type, align 8, !dbg !3432
  br label %sw.epilog, !dbg !3434

sw.bb2:                                           ; preds = %entry, %entry
  store i64 256, ptr %type, align 8, !dbg !3435
  br label %sw.epilog, !dbg !3436

sw.bb3:                                           ; preds = %entry, %entry
  store i64 1024, ptr %type, align 8, !dbg !3437
  br label %sw.epilog, !dbg !3438

sw.bb4:                                           ; preds = %entry, %entry
  store i64 2048, ptr %type, align 8, !dbg !3439
  br label %sw.epilog, !dbg !3440

sw.bb5:                                           ; preds = %entry
  store i64 768, ptr %type, align 8, !dbg !3441
  br label %sw.epilog, !dbg !3442

sw.bb6:                                           ; preds = %entry, %entry, %entry, %entry
  %2 = load ptr, ptr %ares.addr, align 8, !dbg !3443
  %data = getelementptr inbounds %struct.acpi_resource, ptr %2, i32 0, i32 2, !dbg !3445
  %resource_type = getelementptr inbounds %struct.acpi_resource_address, ptr %data, i32 0, i32 0, !dbg !3446
  %3 = load i8, ptr %resource_type, align 1, !dbg !3446
  %conv = zext i8 %3 to i32, !dbg !3443
  %cmp = icmp eq i32 %conv, 0, !dbg !3447
  br i1 %cmp, label %if.then, label %if.else, !dbg !3448

if.then:                                          ; preds = %sw.bb6
  store i64 512, ptr %type, align 8, !dbg !3449
  br label %if.end22, !dbg !3450

if.else:                                          ; preds = %sw.bb6
  %4 = load ptr, ptr %ares.addr, align 8, !dbg !3451
  %data8 = getelementptr inbounds %struct.acpi_resource, ptr %4, i32 0, i32 2, !dbg !3453
  %resource_type9 = getelementptr inbounds %struct.acpi_resource_address, ptr %data8, i32 0, i32 0, !dbg !3454
  %5 = load i8, ptr %resource_type9, align 1, !dbg !3454
  %conv10 = zext i8 %5 to i32, !dbg !3451
  %cmp11 = icmp eq i32 %conv10, 1, !dbg !3455
  br i1 %cmp11, label %if.then13, label %if.else14, !dbg !3456

if.then13:                                        ; preds = %if.else
  store i64 256, ptr %type, align 8, !dbg !3457
  br label %if.end21, !dbg !3458

if.else14:                                        ; preds = %if.else
  %6 = load ptr, ptr %ares.addr, align 8, !dbg !3459
  %data15 = getelementptr inbounds %struct.acpi_resource, ptr %6, i32 0, i32 2, !dbg !3461
  %resource_type16 = getelementptr inbounds %struct.acpi_resource_address, ptr %data15, i32 0, i32 0, !dbg !3462
  %7 = load i8, ptr %resource_type16, align 1, !dbg !3462
  %conv17 = zext i8 %7 to i32, !dbg !3459
  %cmp18 = icmp eq i32 %conv17, 2, !dbg !3463
  br i1 %cmp18, label %if.then20, label %if.end, !dbg !3464

if.then20:                                        ; preds = %if.else14
  store i64 4096, ptr %type, align 8, !dbg !3465
  br label %if.end, !dbg !3466

if.end:                                           ; preds = %if.then20, %if.else14
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then13
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then
  br label %sw.epilog, !dbg !3467

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !3468

sw.epilog:                                        ; preds = %sw.default, %if.end22, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %8 = load i64, ptr %type, align 8, !dbg !3469
  %9 = load i64, ptr %types.addr, align 8, !dbg !3470
  %and = and i64 %8, %9, !dbg !3471
  %tobool = icmp ne i64 %and, 0, !dbg !3472
  %10 = zext i1 %tobool to i64, !dbg !3472
  %cond = select i1 %tobool, i32 0, i32 1, !dbg !3472
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #11, !dbg !3473
  ret i32 %cond, !dbg !3474
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_resource_consumer(ptr noundef %res) #0 align 16 !dbg !3475 {
entry:
  %res.addr = alloca ptr, align 8
  %consumer = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3479, metadata !DIExpression()), !dbg !3481
  call void @llvm.lifetime.start.p0(i64 8, ptr %consumer) #11, !dbg !3482
  call void @llvm.dbg.declare(metadata ptr %consumer, metadata !3480, metadata !DIExpression()), !dbg !3483
  store ptr null, ptr %consumer, align 8, !dbg !3483
  %0 = load ptr, ptr %res.addr, align 8, !dbg !3484
  %call = call i32 @acpi_get_devices(ptr noundef null, ptr noundef @acpi_res_consumer_cb, ptr noundef %0, ptr noundef %consumer) #12, !dbg !3485
  %1 = load ptr, ptr %consumer, align 8, !dbg !3486
  call void @llvm.lifetime.end.p0(i64 8, ptr %consumer) #11, !dbg !3487
  ret ptr %1, !dbg !3488
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3489 dso_local i32 @acpi_get_devices(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_res_consumer_cb(ptr noundef %handle, i32 noundef %depth, ptr noundef %context, ptr noundef %ret) #0 align 16 !dbg !3496 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %depth.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %ret.addr = alloca ptr, align 8
  %res = alloca ptr, align 8
  %consumer = alloca ptr, align 8
  %adev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !3498, metadata !DIExpression()), !dbg !3505
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !3499, metadata !DIExpression()), !dbg !3506
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !3500, metadata !DIExpression()), !dbg !3507
  store ptr %ret, ptr %ret.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !3501, metadata !DIExpression()), !dbg !3508
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #11, !dbg !3509
  call void @llvm.dbg.declare(metadata ptr %res, metadata !3502, metadata !DIExpression()), !dbg !3510
  %0 = load ptr, ptr %context.addr, align 8, !dbg !3511
  store ptr %0, ptr %res, align 8, !dbg !3510
  call void @llvm.lifetime.start.p0(i64 8, ptr %consumer) #11, !dbg !3512
  call void @llvm.dbg.declare(metadata ptr %consumer, metadata !3503, metadata !DIExpression()), !dbg !3513
  %1 = load ptr, ptr %ret.addr, align 8, !dbg !3514
  store ptr %1, ptr %consumer, align 8, !dbg !3513
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #11, !dbg !3515
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !3504, metadata !DIExpression()), !dbg !3516
  %2 = load ptr, ptr %handle.addr, align 8, !dbg !3517
  %call = call ptr @acpi_fetch_acpi_dev(ptr noundef %2) #12, !dbg !3518
  store ptr %call, ptr %adev, align 8, !dbg !3516
  %3 = load ptr, ptr %adev, align 8, !dbg !3519
  %tobool = icmp ne ptr %3, null, !dbg !3519
  br i1 %tobool, label %if.end, label %if.then, !dbg !3521

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3522
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3522

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %adev, align 8, !dbg !3523
  %5 = load ptr, ptr %res, align 8, !dbg !3525
  %call1 = call i32 @acpi_dev_consumes_res(ptr noundef %4, ptr noundef %5) #12, !dbg !3526
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3526
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3527

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %adev, align 8, !dbg !3528
  %7 = load ptr, ptr %consumer, align 8, !dbg !3530
  store ptr %6, ptr %7, align 8, !dbg !3531
  store i32 16387, ptr %retval, align 4, !dbg !3532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3532

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !3533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3533

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #11, !dbg !3534
  call void @llvm.lifetime.end.p0(i64 8, ptr %consumer) #11, !dbg !3534
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #11, !dbg !3534
  %8 = load i32, ptr %retval, align 4, !dbg !3534
  ret i32 %8, !dbg !3534
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_dev_memresource_flags(ptr noundef %res, i64 noundef %len, i8 noundef zeroext %write_protect) #0 align 16 !dbg !3535 {
entry:
  %res.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %write_protect.addr = alloca i8, align 1
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3539, metadata !DIExpression()), !dbg !3542
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3540, metadata !DIExpression()), !dbg !3543
  store i8 %write_protect, ptr %write_protect.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write_protect.addr, metadata !3541, metadata !DIExpression()), !dbg !3544
  %0 = load ptr, ptr %res.addr, align 8, !dbg !3545
  %flags = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 3, !dbg !3546
  store i64 512, ptr %flags, align 8, !dbg !3547
  %1 = load ptr, ptr %res.addr, align 8, !dbg !3548
  %start = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 0, !dbg !3550
  %2 = load i64, ptr %start, align 8, !dbg !3550
  %3 = load ptr, ptr %res.addr, align 8, !dbg !3551
  %end = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1, !dbg !3552
  %4 = load i64, ptr %end, align 8, !dbg !3552
  %5 = load i64, ptr %len.addr, align 8, !dbg !3553
  %call = call zeroext i1 @acpi_dev_resource_len_valid(i64 noundef %2, i64 noundef %4, i64 noundef %5, i1 noundef zeroext false) #12, !dbg !3554
  br i1 %call, label %if.end, label %if.then, !dbg !3555

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %res.addr, align 8, !dbg !3556
  %flags1 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 3, !dbg !3557
  %7 = load i64, ptr %flags1, align 8, !dbg !3558
  %or = or i64 %7, 805306368, !dbg !3558
  store i64 %or, ptr %flags1, align 8, !dbg !3558
  br label %if.end, !dbg !3556

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8, ptr %write_protect.addr, align 1, !dbg !3559
  %conv = zext i8 %8 to i32, !dbg !3559
  %cmp = icmp eq i32 %conv, 1, !dbg !3561
  br i1 %cmp, label %if.then3, label %if.end6, !dbg !3562

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %res.addr, align 8, !dbg !3563
  %flags4 = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 3, !dbg !3564
  %10 = load i64, ptr %flags4, align 8, !dbg !3565
  %or5 = or i64 %10, 1, !dbg !3565
  store i64 %or5, ptr %flags4, align 8, !dbg !3565
  br label %if.end6, !dbg !3563

if.end6:                                          ; preds = %if.then3, %if.end
  ret void, !dbg !3566
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_dev_resource_len_valid(i64 noundef %start, i64 noundef %end, i64 noundef %len, i1 noundef zeroext %io) #0 align 16 !dbg !3567 {
entry:
  %retval = alloca i1, align 1
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %io.addr = alloca i8, align 1
  %reslen = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !3571, metadata !DIExpression()), !dbg !3576
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !3572, metadata !DIExpression()), !dbg !3577
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3573, metadata !DIExpression()), !dbg !3578
  %frombool = zext i1 %io to i8
  store i8 %frombool, ptr %io.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %io.addr, metadata !3574, metadata !DIExpression()), !dbg !3579
  call void @llvm.lifetime.start.p0(i64 8, ptr %reslen) #11, !dbg !3580
  call void @llvm.dbg.declare(metadata ptr %reslen, metadata !3575, metadata !DIExpression()), !dbg !3581
  %0 = load i64, ptr %end.addr, align 8, !dbg !3582
  %1 = load i64, ptr %start.addr, align 8, !dbg !3583
  %sub = sub i64 %0, %1, !dbg !3584
  %add = add i64 %sub, 1, !dbg !3585
  store i64 %add, ptr %reslen, align 8, !dbg !3581
  %2 = load i64, ptr %len.addr, align 8, !dbg !3586
  %tobool = icmp ne i64 %2, 0, !dbg !3586
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3588

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, ptr %reslen, align 8, !dbg !3589
  %tobool1 = icmp ne i64 %3, 0, !dbg !3589
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !3590

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load i64, ptr %start.addr, align 8, !dbg !3591
  %5 = load i64, ptr %end.addr, align 8, !dbg !3592
  %cmp = icmp ule i64 %4, %5, !dbg !3593
  br i1 %cmp, label %if.then, label %if.end, !dbg !3594

if.then:                                          ; preds = %land.lhs.true2
  store i1 true, ptr %retval, align 1, !dbg !3595
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3595

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  store i32 0, ptr %tmp, align 4, !dbg !3596
  %6 = load i32, ptr %tmp, align 4, !dbg !3599
  store i1 false, ptr %retval, align 1, !dbg !3600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3600

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %reslen) #11, !dbg !3601
  %7 = load i1, ptr %retval, align 1, !dbg !3601
  ret i1 %7, !dbg !3601
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_dev_ioresource_flags(ptr noundef %res, i64 noundef %len, i8 noundef zeroext %io_decode, i8 noundef zeroext %translation_type) #0 align 16 !dbg !3602 {
entry:
  %res.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %io_decode.addr = alloca i8, align 1
  %translation_type.addr = alloca i8, align 1
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3606, metadata !DIExpression()), !dbg !3610
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3607, metadata !DIExpression()), !dbg !3611
  store i8 %io_decode, ptr %io_decode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %io_decode.addr, metadata !3608, metadata !DIExpression()), !dbg !3612
  store i8 %translation_type, ptr %translation_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %translation_type.addr, metadata !3609, metadata !DIExpression()), !dbg !3613
  %0 = load ptr, ptr %res.addr, align 8, !dbg !3614
  %flags = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 3, !dbg !3615
  store i64 256, ptr %flags, align 8, !dbg !3616
  %1 = load ptr, ptr %res.addr, align 8, !dbg !3617
  %start = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 0, !dbg !3619
  %2 = load i64, ptr %start, align 8, !dbg !3619
  %3 = load ptr, ptr %res.addr, align 8, !dbg !3620
  %end = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1, !dbg !3621
  %4 = load i64, ptr %end, align 8, !dbg !3621
  %5 = load i64, ptr %len.addr, align 8, !dbg !3622
  %call = call zeroext i1 @acpi_dev_resource_len_valid(i64 noundef %2, i64 noundef %4, i64 noundef %5, i1 noundef zeroext true) #12, !dbg !3623
  br i1 %call, label %if.end, label %if.then, !dbg !3624

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %res.addr, align 8, !dbg !3625
  %flags1 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 3, !dbg !3626
  %7 = load i64, ptr %flags1, align 8, !dbg !3627
  %or = or i64 %7, 805306368, !dbg !3627
  store i64 %or, ptr %flags1, align 8, !dbg !3627
  br label %if.end, !dbg !3625

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %res.addr, align 8, !dbg !3628
  %call2 = call zeroext i1 @acpi_iospace_resource_valid(ptr noundef %8) #12, !dbg !3630
  br i1 %call2, label %if.end6, label %if.then3, !dbg !3631

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %res.addr, align 8, !dbg !3632
  %flags4 = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 3, !dbg !3633
  %10 = load i64, ptr %flags4, align 8, !dbg !3634
  %or5 = or i64 %10, 805306368, !dbg !3634
  store i64 %or5, ptr %flags4, align 8, !dbg !3634
  br label %if.end6, !dbg !3632

if.end6:                                          ; preds = %if.then3, %if.end
  %11 = load i8, ptr %io_decode.addr, align 1, !dbg !3635
  %conv = zext i8 %11 to i32, !dbg !3635
  %cmp = icmp eq i32 %conv, 1, !dbg !3637
  br i1 %cmp, label %if.then8, label %if.end11, !dbg !3638

if.then8:                                         ; preds = %if.end6
  %12 = load ptr, ptr %res.addr, align 8, !dbg !3639
  %flags9 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 3, !dbg !3640
  %13 = load i64, ptr %flags9, align 8, !dbg !3641
  %or10 = or i64 %13, 1, !dbg !3641
  store i64 %or10, ptr %flags9, align 8, !dbg !3641
  br label %if.end11, !dbg !3639

if.end11:                                         ; preds = %if.then8, %if.end6
  %14 = load i8, ptr %translation_type.addr, align 1, !dbg !3642
  %conv12 = zext i8 %14 to i32, !dbg !3642
  %cmp13 = icmp eq i32 %conv12, 1, !dbg !3644
  br i1 %cmp13, label %if.then15, label %if.end18, !dbg !3645

if.then15:                                        ; preds = %if.end11
  %15 = load ptr, ptr %res.addr, align 8, !dbg !3646
  %flags16 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 3, !dbg !3647
  %16 = load i64, ptr %flags16, align 8, !dbg !3648
  %or17 = or i64 %16, 4, !dbg !3648
  store i64 %or17, ptr %flags16, align 8, !dbg !3648
  br label %if.end18, !dbg !3646

if.end18:                                         ; preds = %if.then15, %if.end11
  ret void, !dbg !3649
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_iospace_resource_valid(ptr noundef %res) #4 align 16 !dbg !3650 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3654, metadata !DIExpression()), !dbg !3655
  %0 = load ptr, ptr %res.addr, align 8, !dbg !3656
  %end = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1, !dbg !3657
  %1 = load i64, ptr %end, align 8, !dbg !3657
  %cmp = icmp ult i64 %1, 65539, !dbg !3658
  ret i1 %cmp, !dbg !3659
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_dev_irq_override(i32 noundef %gsi, i8 noundef zeroext %triggering, i8 noundef zeroext %polarity, i8 noundef zeroext %shareable) #0 align 16 !dbg !3660 {
entry:
  %retval = alloca i1, align 1
  %gsi.addr = alloca i32, align 4
  %triggering.addr = alloca i8, align 1
  %polarity.addr = alloca i8, align 1
  %shareable.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %entry2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %gsi, ptr %gsi.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gsi.addr, metadata !3664, metadata !DIExpression()), !dbg !3674
  store i8 %triggering, ptr %triggering.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %triggering.addr, metadata !3665, metadata !DIExpression()), !dbg !3675
  store i8 %polarity, ptr %polarity.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %polarity.addr, metadata !3666, metadata !DIExpression()), !dbg !3676
  store i8 %shareable, ptr %shareable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %shareable.addr, metadata !3667, metadata !DIExpression()), !dbg !3677
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !3678
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3668, metadata !DIExpression()), !dbg !3679
  store i32 0, ptr %i, align 4, !dbg !3680
  br label %for.cond, !dbg !3681

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !3682
  %conv = sext i32 %0 to i64, !dbg !3682
  %cmp = icmp ult i64 %conv, 6, !dbg !3683
  br i1 %cmp, label %for.body, label %for.end, !dbg !3684

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry2) #11, !dbg !3685
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !3669, metadata !DIExpression()), !dbg !3686
  %1 = load i32, ptr %i, align 4, !dbg !3687
  %idxprom = sext i32 %1 to i64, !dbg !3688
  %arrayidx = getelementptr [6 x %struct.irq_override_cmp], ptr @override_table, i64 0, i64 %idxprom, !dbg !3688
  store ptr %arrayidx, ptr %entry2, align 8, !dbg !3686
  %2 = load ptr, ptr %entry2, align 8, !dbg !3689
  %irq = getelementptr inbounds %struct.irq_override_cmp, ptr %2, i32 0, i32 1, !dbg !3691
  %3 = load i8, ptr %irq, align 8, !dbg !3691
  %conv3 = zext i8 %3 to i32, !dbg !3689
  %4 = load i32, ptr %gsi.addr, align 4, !dbg !3692
  %cmp4 = icmp eq i32 %conv3, %4, !dbg !3693
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !3694

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %entry2, align 8, !dbg !3695
  %triggering6 = getelementptr inbounds %struct.irq_override_cmp, ptr %5, i32 0, i32 2, !dbg !3696
  %6 = load i8, ptr %triggering6, align 1, !dbg !3696
  %conv7 = zext i8 %6 to i32, !dbg !3695
  %7 = load i8, ptr %triggering.addr, align 1, !dbg !3697
  %conv8 = zext i8 %7 to i32, !dbg !3697
  %cmp9 = icmp eq i32 %conv7, %conv8, !dbg !3698
  br i1 %cmp9, label %land.lhs.true11, label %if.end, !dbg !3699

land.lhs.true11:                                  ; preds = %land.lhs.true
  %8 = load ptr, ptr %entry2, align 8, !dbg !3700
  %polarity12 = getelementptr inbounds %struct.irq_override_cmp, ptr %8, i32 0, i32 3, !dbg !3701
  %9 = load i8, ptr %polarity12, align 2, !dbg !3701
  %conv13 = zext i8 %9 to i32, !dbg !3700
  %10 = load i8, ptr %polarity.addr, align 1, !dbg !3702
  %conv14 = zext i8 %10 to i32, !dbg !3702
  %cmp15 = icmp eq i32 %conv13, %conv14, !dbg !3703
  br i1 %cmp15, label %land.lhs.true17, label %if.end, !dbg !3704

land.lhs.true17:                                  ; preds = %land.lhs.true11
  %11 = load ptr, ptr %entry2, align 8, !dbg !3705
  %shareable18 = getelementptr inbounds %struct.irq_override_cmp, ptr %11, i32 0, i32 4, !dbg !3706
  %12 = load i8, ptr %shareable18, align 1, !dbg !3706
  %conv19 = zext i8 %12 to i32, !dbg !3705
  %13 = load i8, ptr %shareable.addr, align 1, !dbg !3707
  %conv20 = zext i8 %13 to i32, !dbg !3707
  %cmp21 = icmp eq i32 %conv19, %conv20, !dbg !3708
  br i1 %cmp21, label %land.lhs.true23, label %if.end, !dbg !3709

land.lhs.true23:                                  ; preds = %land.lhs.true17
  %14 = load ptr, ptr %entry2, align 8, !dbg !3710
  %system = getelementptr inbounds %struct.irq_override_cmp, ptr %14, i32 0, i32 0, !dbg !3711
  %15 = load ptr, ptr %system, align 8, !dbg !3711
  %call = call i32 @dmi_check_system(ptr noundef %15) #12, !dbg !3712
  %tobool = icmp ne i32 %call, 0, !dbg !3712
  br i1 %tobool, label %if.then, label %if.end, !dbg !3713

if.then:                                          ; preds = %land.lhs.true23
  %16 = load ptr, ptr %entry2, align 8, !dbg !3714
  %override = getelementptr inbounds %struct.irq_override_cmp, ptr %16, i32 0, i32 5, !dbg !3715
  %17 = load i8, ptr %override, align 4, !dbg !3715, !range !2901, !noundef !431
  %tobool24 = trunc i8 %17 to i1, !dbg !3715
  store i1 %tobool24, ptr %retval, align 1, !dbg !3716
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3716

if.end:                                           ; preds = %land.lhs.true23, %land.lhs.true17, %land.lhs.true11, %land.lhs.true, %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3717
  br label %cleanup, !dbg !3717

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry2) #11, !dbg !3717
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup41 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3718

for.inc:                                          ; preds = %cleanup.cont
  %18 = load i32, ptr %i, align 4, !dbg !3719
  %inc = add i32 %18, 1, !dbg !3719
  store i32 %inc, ptr %i, align 4, !dbg !3719
  br label %for.cond, !dbg !3720, !llvm.loop !3721

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %gsi.addr, align 4, !dbg !3725
  %cmp25 = icmp ne i32 %19, 1, !dbg !3727
  br i1 %cmp25, label %land.lhs.true27, label %if.end31, !dbg !3728

land.lhs.true27:                                  ; preds = %for.end
  %20 = load i32, ptr %gsi.addr, align 4, !dbg !3729
  %cmp28 = icmp ne i32 %20, 12, !dbg !3730
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !3731

if.then30:                                        ; preds = %land.lhs.true27
  store i1 true, ptr %retval, align 1, !dbg !3732
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !3732

if.end31:                                         ; preds = %land.lhs.true27, %for.end
  %21 = load i32, ptr %gsi.addr, align 4, !dbg !3733
  %idxprom32 = zext i32 %21 to i64, !dbg !3735
  %arrayidx33 = getelementptr [16 x i8], ptr @acpi_int_src_ovr, i64 0, i64 %idxprom32, !dbg !3735
  %22 = load i8, ptr %arrayidx33, align 1, !dbg !3735, !range !2901, !noundef !431
  %tobool34 = trunc i8 %22 to i1, !dbg !3735
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !3736

if.then35:                                        ; preds = %if.end31
  store i1 true, ptr %retval, align 1, !dbg !3737
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !3737

if.end36:                                         ; preds = %if.end31
  br i1 false, label %cond.true, label %cond.false, !dbg !3738

cond.true:                                        ; preds = %if.end36
  br i1 true, label %if.then39, label %if.end40, !dbg !3739

cond.false:                                       ; preds = %if.end36
  %call37 = call zeroext i1 @arch_test_bit(i64 noundef 252, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !3739
  br i1 %call37, label %if.then39, label %if.end40, !dbg !3738

if.then39:                                        ; preds = %cond.false, %cond.true
  store i1 false, ptr %retval, align 1, !dbg !3741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !3741

if.end40:                                         ; preds = %cond.false, %cond.true
  store i1 true, ptr %retval, align 1, !dbg !3742
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !3742

cleanup41:                                        ; preds = %if.end40, %if.then39, %if.then35, %if.then30, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !3743
  %23 = load i1, ptr %retval, align 1, !dbg !3743
  ret i1 %23, !dbg !3743
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3744 dso_local i32 @acpi_get_override_irq(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3748 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3752 dso_local i32 @acpi_register_gsi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3755 dso_local i32 @dmi_check_system(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3757 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3765, metadata !DIExpression()), !dbg !3767
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3766, metadata !DIExpression()), !dbg !3768
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3769
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3770
  br i1 %1, label %cond.true, label %cond.false, !dbg !3770

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3771
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3772
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !3773
  %conv = zext i1 %call to i32, !dbg !3773
  br label %cond.end, !dbg !3770

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3774
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3775
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !3776
  %conv2 = zext i1 %call1 to i32, !dbg !3776
  br label %cond.end, !dbg !3770

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3770
  %tobool = icmp ne i32 %cond, 0, !dbg !3770
  ret i1 %tobool, !dbg !3777
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3778 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3782, metadata !DIExpression()), !dbg !3784
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3783, metadata !DIExpression()), !dbg !3785
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3786
  %and = and i64 %0, 63, !dbg !3787
  %shl = shl i64 1, %and, !dbg !3788
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3789
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3790
  %shr = ashr i64 %2, 6, !dbg !3791
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3789
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3789
  %and1 = and i64 %shl, %3, !dbg !3792
  %cmp = icmp ne i64 %and1, 0, !dbg !3793
  ret i1 %cmp, !dbg !3794
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3795 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3797, metadata !DIExpression()), !dbg !3800
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3798, metadata !DIExpression()), !dbg !3801
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !3802
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3799, metadata !DIExpression()), !dbg !3803
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3804
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3805
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !3806, !srcloc !3807
  %3 = icmp ult i8 %2, 2, !dbg !3806
  call void @llvm.assume(i1 %3), !dbg !3806
  store i8 %2, ptr %oldbit, align 1, !dbg !3806
  %4 = load i8, ptr %oldbit, align 1, !dbg !3808, !range !2901, !noundef !431
  %tobool = trunc i8 %4 to i1, !dbg !3808
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !3809
  ret i1 %tobool, !dbg !3810
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #4 align 16 !dbg !3811 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3818, metadata !DIExpression()), !dbg !3819
  br label %do.body, !dbg !3820

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3822

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !3820
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !3820
  %1 = load volatile ptr, ptr %next, align 8, !dbg !3820
  store ptr %1, ptr %tmp, align 8, !dbg !3822
  %2 = load ptr, ptr %tmp, align 8, !dbg !3820
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3824
  %cmp = icmp eq ptr %2, %3, !dbg !3825
  %conv = zext i1 %cmp to i32, !dbg !3825
  ret i32 %conv, !dbg !3826
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3827 dso_local zeroext i1 @acpi_has_method(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3830 dso_local i32 @acpi_walk_resources(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_dev_process_resource(ptr noundef %ares, ptr noundef %context) #0 align 16 !dbg !3837 {
entry:
  %retval = alloca i32, align 4
  %ares.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %win = alloca %struct.resource_win, align 8
  %res = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %status = alloca i32, align 4
  store ptr %ares, ptr %ares.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ares.addr, metadata !3839, metadata !DIExpression()), !dbg !3853
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !3840, metadata !DIExpression()), !dbg !3854
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #11, !dbg !3855
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3841, metadata !DIExpression()), !dbg !3856
  %0 = load ptr, ptr %context.addr, align 8, !dbg !3857
  store ptr %0, ptr %c, align 8, !dbg !3856
  call void @llvm.lifetime.start.p0(i64 72, ptr %win) #11, !dbg !3858
  call void @llvm.dbg.declare(metadata ptr %win, metadata !3843, metadata !DIExpression()), !dbg !3859
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #11, !dbg !3860
  call void @llvm.dbg.declare(metadata ptr %res, metadata !3844, metadata !DIExpression()), !dbg !3861
  %res1 = getelementptr inbounds %struct.resource_win, ptr %win, i32 0, i32 0, !dbg !3862
  store ptr %res1, ptr %res, align 8, !dbg !3861
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !3863
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3845, metadata !DIExpression()), !dbg !3864
  %1 = load ptr, ptr %c, align 8, !dbg !3865
  %preproc = getelementptr inbounds %struct.res_proc_context, ptr %1, i32 0, i32 1, !dbg !3866
  %2 = load ptr, ptr %preproc, align 8, !dbg !3866
  %tobool = icmp ne ptr %2, null, !dbg !3865
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3867

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !3868
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3846, metadata !DIExpression()), !dbg !3869
  %3 = load ptr, ptr %c, align 8, !dbg !3870
  %preproc2 = getelementptr inbounds %struct.res_proc_context, ptr %3, i32 0, i32 1, !dbg !3871
  %4 = load ptr, ptr %preproc2, align 8, !dbg !3871
  %5 = load ptr, ptr %ares.addr, align 8, !dbg !3872
  %6 = load ptr, ptr %c, align 8, !dbg !3873
  %preproc_data = getelementptr inbounds %struct.res_proc_context, ptr %6, i32 0, i32 2, !dbg !3874
  %7 = load ptr, ptr %preproc_data, align 8, !dbg !3874
  %call = call i32 %4(ptr noundef %5, ptr noundef %7) #12, !dbg !3870
  store i32 %call, ptr %ret, align 4, !dbg !3875
  %8 = load i32, ptr %ret, align 4, !dbg !3876
  %cmp = icmp slt i32 %8, 0, !dbg !3878
  br i1 %cmp, label %if.then3, label %if.else, !dbg !3879

if.then3:                                         ; preds = %if.then
  %9 = load i32, ptr %ret, align 4, !dbg !3880
  %10 = load ptr, ptr %c, align 8, !dbg !3882
  %error = getelementptr inbounds %struct.res_proc_context, ptr %10, i32 0, i32 4, !dbg !3883
  store i32 %9, ptr %error, align 4, !dbg !3884
  store i32 24, ptr %retval, align 4, !dbg !3885
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3885

if.else:                                          ; preds = %if.then
  %11 = load i32, ptr %ret, align 4, !dbg !3886
  %cmp4 = icmp sgt i32 %11, 0, !dbg !3888
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !3889

if.then5:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !3890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3890

if.end:                                           ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3892
  br label %cleanup, !dbg !3892

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !3892
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup25 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end7, !dbg !3893

if.end7:                                          ; preds = %cleanup.cont, %entry
  call void @llvm.memset.p0.i64(ptr align 8 %win, i8 0, i64 72, i1 false), !dbg !3894
  %12 = load ptr, ptr %ares.addr, align 8, !dbg !3895
  %13 = load ptr, ptr %res, align 8, !dbg !3897
  %call8 = call zeroext i1 @acpi_dev_resource_memory(ptr noundef %12, ptr noundef %13) #12, !dbg !3898
  br i1 %call8, label %if.then14, label %lor.lhs.false, !dbg !3899

lor.lhs.false:                                    ; preds = %if.end7
  %14 = load ptr, ptr %ares.addr, align 8, !dbg !3900
  %15 = load ptr, ptr %res, align 8, !dbg !3901
  %call9 = call zeroext i1 @acpi_dev_resource_io(ptr noundef %14, ptr noundef %15) #12, !dbg !3902
  br i1 %call9, label %if.then14, label %lor.lhs.false10, !dbg !3903

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %16 = load ptr, ptr %ares.addr, align 8, !dbg !3904
  %call11 = call zeroext i1 @acpi_dev_resource_address_space(ptr noundef %16, ptr noundef %win) #12, !dbg !3905
  br i1 %call11, label %if.then14, label %lor.lhs.false12, !dbg !3906

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %17 = load ptr, ptr %ares.addr, align 8, !dbg !3907
  %call13 = call zeroext i1 @acpi_dev_resource_ext_address_space(ptr noundef %17, ptr noundef %win) #12, !dbg !3908
  br i1 %call13, label %if.then14, label %if.end16, !dbg !3909

if.then14:                                        ; preds = %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false, %if.end7
  %18 = load ptr, ptr %c, align 8, !dbg !3910
  %call15 = call i32 @acpi_dev_new_resource_entry(ptr noundef %win, ptr noundef %18) #12, !dbg !3911
  store i32 %call15, ptr %retval, align 4, !dbg !3912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !3912

if.end16:                                         ; preds = %lor.lhs.false12
  store i32 0, ptr %i, align 4, !dbg !3913
  br label %for.cond, !dbg !3914

for.cond:                                         ; preds = %for.inc, %if.end16
  %19 = load ptr, ptr %ares.addr, align 8, !dbg !3915
  %20 = load i32, ptr %i, align 4, !dbg !3916
  %21 = load ptr, ptr %res, align 8, !dbg !3917
  %call17 = call zeroext i1 @acpi_dev_resource_interrupt(ptr noundef %19, i32 noundef %20, ptr noundef %21) #12, !dbg !3918
  br i1 %call17, label %for.body, label %for.end, !dbg !3919

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #11, !dbg !3920
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3849, metadata !DIExpression()), !dbg !3921
  %22 = load ptr, ptr %c, align 8, !dbg !3922
  %call18 = call i32 @acpi_dev_new_resource_entry(ptr noundef %win, ptr noundef %22) #12, !dbg !3923
  store i32 %call18, ptr %status, align 4, !dbg !3924
  %23 = load i32, ptr %status, align 4, !dbg !3925
  %tobool19 = icmp ne i32 %23, 0, !dbg !3925
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !3927

if.then20:                                        ; preds = %for.body
  %24 = load i32, ptr %status, align 4, !dbg !3928
  store i32 %24, ptr %retval, align 4, !dbg !3929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup22, !dbg !3929

if.end21:                                         ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3930
  br label %cleanup22, !dbg !3930

cleanup22:                                        ; preds = %if.end21, %if.then20
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #11, !dbg !3930
  %cleanup.dest23 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest23, label %cleanup25 [
    i32 0, label %cleanup.cont24
  ]

cleanup.cont24:                                   ; preds = %cleanup22
  br label %for.inc, !dbg !3931

for.inc:                                          ; preds = %cleanup.cont24
  %25 = load i32, ptr %i, align 4, !dbg !3932
  %inc = add i32 %25, 1, !dbg !3932
  store i32 %inc, ptr %i, align 4, !dbg !3932
  br label %for.cond, !dbg !3933, !llvm.loop !3934

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !3936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !3936

cleanup25:                                        ; preds = %for.end, %cleanup22, %if.then14, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !3937
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #11, !dbg !3937
  call void @llvm.lifetime.end.p0(i64 72, ptr %win) #11, !dbg !3937
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #11, !dbg !3937
  %26 = load i32, ptr %retval, align 4, !dbg !3937
  ret i32 %26, !dbg !3937
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_dev_new_resource_entry(ptr noundef %win, ptr noundef %c) #0 align 16 !dbg !3938 {
entry:
  %retval = alloca i32, align 4
  %win.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %rentry = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %win, ptr %win.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %win.addr, metadata !3942, metadata !DIExpression()), !dbg !3945
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !3943, metadata !DIExpression()), !dbg !3946
  call void @llvm.lifetime.start.p0(i64 8, ptr %rentry) #11, !dbg !3947
  call void @llvm.dbg.declare(metadata ptr %rentry, metadata !3944, metadata !DIExpression()), !dbg !3948
  %call = call ptr @resource_list_create_entry(ptr noundef null, i64 noundef 0) #12, !dbg !3949
  store ptr %call, ptr %rentry, align 8, !dbg !3950
  %0 = load ptr, ptr %rentry, align 8, !dbg !3951
  %tobool = icmp ne ptr %0, null, !dbg !3951
  br i1 %tobool, label %if.end, label %if.then, !dbg !3953

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %c.addr, align 8, !dbg !3954
  %error = getelementptr inbounds %struct.res_proc_context, ptr %1, i32 0, i32 4, !dbg !3956
  store i32 -12, ptr %error, align 4, !dbg !3957
  store i32 4, ptr %retval, align 4, !dbg !3958
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3958

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %rentry, align 8, !dbg !3959
  %res = getelementptr inbounds %struct.resource_entry, ptr %2, i32 0, i32 1, !dbg !3960
  %3 = load ptr, ptr %res, align 8, !dbg !3960
  %4 = load ptr, ptr %win.addr, align 8, !dbg !3961
  %res1 = getelementptr inbounds %struct.resource_win, ptr %4, i32 0, i32 0, !dbg !3962
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %res1, i64 64, i1 false), !dbg !3962
  %5 = load ptr, ptr %win.addr, align 8, !dbg !3963
  %offset = getelementptr inbounds %struct.resource_win, ptr %5, i32 0, i32 1, !dbg !3964
  %6 = load i64, ptr %offset, align 8, !dbg !3964
  %7 = load ptr, ptr %rentry, align 8, !dbg !3965
  %offset2 = getelementptr inbounds %struct.resource_entry, ptr %7, i32 0, i32 2, !dbg !3966
  store i64 %6, ptr %offset2, align 8, !dbg !3967
  %8 = load ptr, ptr %rentry, align 8, !dbg !3968
  %9 = load ptr, ptr %c.addr, align 8, !dbg !3969
  %list = getelementptr inbounds %struct.res_proc_context, ptr %9, i32 0, i32 0, !dbg !3970
  %10 = load ptr, ptr %list, align 8, !dbg !3970
  call void @resource_list_add_tail(ptr noundef %8, ptr noundef %10) #12, !dbg !3971
  %11 = load ptr, ptr %c.addr, align 8, !dbg !3972
  %count = getelementptr inbounds %struct.res_proc_context, ptr %11, i32 0, i32 3, !dbg !3973
  %12 = load i32, ptr %count, align 8, !dbg !3974
  %inc = add i32 %12, 1, !dbg !3974
  store i32 %inc, ptr %count, align 8, !dbg !3974
  store i32 0, ptr %retval, align 4, !dbg !3975
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3975

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rentry) #11, !dbg !3976
  %13 = load i32, ptr %retval, align 4, !dbg !3976
  ret i32 %13, !dbg !3976
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3977 dso_local ptr @resource_list_create_entry(ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @resource_list_add_tail(ptr noundef %entry1, ptr noundef %head) #4 align 16 !dbg !3980 {
entry:
  %entry.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3984, metadata !DIExpression()), !dbg !3986
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3985, metadata !DIExpression()), !dbg !3987
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3988
  %node = getelementptr inbounds %struct.resource_entry, ptr %0, i32 0, i32 0, !dbg !3989
  %1 = load ptr, ptr %head.addr, align 8, !dbg !3990
  call void @list_add_tail(ptr noundef %node, ptr noundef %1) #12, !dbg !3991
  ret void, !dbg !3992
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !3993 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3997, metadata !DIExpression()), !dbg !3999
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3998, metadata !DIExpression()), !dbg !4000
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4001
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4002
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4003
  %2 = load ptr, ptr %prev, align 8, !dbg !4003
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4004
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #12, !dbg !4005
  ret void, !dbg !4006
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !4007 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4011, metadata !DIExpression()), !dbg !4014
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4012, metadata !DIExpression()), !dbg !4015
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4013, metadata !DIExpression()), !dbg !4016
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4017
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !4019
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4020
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12, !dbg !4021
  br i1 %call, label %if.end, label %if.then, !dbg !4022

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4023

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !4024
  %4 = load ptr, ptr %next.addr, align 8, !dbg !4025
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !4026
  store ptr %3, ptr %prev1, align 8, !dbg !4027
  %5 = load ptr, ptr %next.addr, align 8, !dbg !4028
  %6 = load ptr, ptr %new.addr, align 8, !dbg !4029
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !4030
  store ptr %5, ptr %next2, align 8, !dbg !4031
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !4032
  %8 = load ptr, ptr %new.addr, align 8, !dbg !4033
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !4034
  store ptr %7, ptr %prev3, align 8, !dbg !4035
  br label %do.body, !dbg !4036

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4037

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4039

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4037

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !4041
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !4041
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !4041
  store volatile ptr %9, ptr %next6, align 8, !dbg !4041
  br label %do.end7, !dbg !4041

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4037

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4043
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !4044 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4048, metadata !DIExpression()), !dbg !4051
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4049, metadata !DIExpression()), !dbg !4052
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4050, metadata !DIExpression()), !dbg !4053
  ret i1 true, !dbg !4054
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4055 dso_local ptr @acpi_fetch_acpi_dev(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_dev_consumes_res(ptr noundef %adev, ptr noundef %res) #0 align 16 !dbg !4058 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %resource_list = alloca %struct.list_head, align 8
  %rentry = alloca ptr, align 8
  %ret = alloca i32, align 4
  %found = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !4062, metadata !DIExpression()), !dbg !4074
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !4063, metadata !DIExpression()), !dbg !4075
  call void @llvm.lifetime.start.p0(i64 16, ptr %resource_list) #11, !dbg !4076
  call void @llvm.dbg.declare(metadata ptr %resource_list, metadata !4064, metadata !DIExpression()), !dbg !4077
  call void @llvm.lifetime.start.p0(i64 8, ptr %rentry) #11, !dbg !4078
  call void @llvm.dbg.declare(metadata ptr %rentry, metadata !4065, metadata !DIExpression()), !dbg !4079
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !4080
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4066, metadata !DIExpression()), !dbg !4081
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #11, !dbg !4080
  call void @llvm.dbg.declare(metadata ptr %found, metadata !4067, metadata !DIExpression()), !dbg !4082
  store i32 0, ptr %found, align 4, !dbg !4082
  call void @INIT_LIST_HEAD(ptr noundef %resource_list) #12, !dbg !4083
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !4084
  %call = call i32 @acpi_dev_get_resources(ptr noundef %0, ptr noundef %resource_list, ptr noundef null, ptr noundef null) #12, !dbg !4085
  store i32 %call, ptr %ret, align 4, !dbg !4086
  %1 = load i32, ptr %ret, align 4, !dbg !4087
  %cmp = icmp slt i32 %1, 0, !dbg !4089
  br i1 %cmp, label %if.then, label %if.end, !dbg !4090

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4091

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !4092
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4068, metadata !DIExpression()), !dbg !4092
  %next = getelementptr inbounds %struct.list_head, ptr %resource_list, i32 0, i32 0, !dbg !4092
  %2 = load ptr, ptr %next, align 8, !dbg !4092
  store ptr %2, ptr %__mptr, align 8, !dbg !4092
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4092
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !4092
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4092
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !4093
  %4 = load ptr, ptr %tmp, align 8, !dbg !4092
  store ptr %4, ptr %rentry, align 8, !dbg !4093
  br label %for.cond, !dbg !4093

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %rentry, align 8, !dbg !4094
  %node = getelementptr inbounds %struct.resource_entry, ptr %5, i32 0, i32 0, !dbg !4094
  %cmp1 = icmp eq ptr %node, %resource_list, !dbg !4094
  %lnot = xor i1 %cmp1, true, !dbg !4094
  br i1 %lnot, label %for.body, label %for.end, !dbg !4093

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %rentry, align 8, !dbg !4095
  %res2 = getelementptr inbounds %struct.resource_entry, ptr %6, i32 0, i32 1, !dbg !4098
  %7 = load ptr, ptr %res2, align 8, !dbg !4098
  %8 = load ptr, ptr %res.addr, align 8, !dbg !4099
  %call3 = call zeroext i1 @resource_contains(ptr noundef %7, ptr noundef %8) #12, !dbg !4100
  br i1 %call3, label %if.then4, label %if.end5, !dbg !4101

if.then4:                                         ; preds = %for.body
  store i32 1, ptr %found, align 4, !dbg !4102
  br label %for.end, !dbg !4104

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !4105

for.inc:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #11, !dbg !4106
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !4071, metadata !DIExpression()), !dbg !4106
  %9 = load ptr, ptr %rentry, align 8, !dbg !4106
  %node7 = getelementptr inbounds %struct.resource_entry, ptr %9, i32 0, i32 0, !dbg !4106
  %next8 = getelementptr inbounds %struct.list_head, ptr %node7, i32 0, i32 0, !dbg !4106
  %10 = load ptr, ptr %next8, align 8, !dbg !4106
  store ptr %10, ptr %__mptr6, align 8, !dbg !4106
  %11 = load ptr, ptr %__mptr6, align 8, !dbg !4106
  %add.ptr10 = getelementptr i8, ptr %11, i64 0, !dbg !4106
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !4106
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #11, !dbg !4094
  %12 = load ptr, ptr %tmp9, align 8, !dbg !4106
  store ptr %12, ptr %rentry, align 8, !dbg !4094
  br label %for.cond, !dbg !4094, !llvm.loop !4107

for.end:                                          ; preds = %if.then4, %for.cond
  call void @acpi_dev_free_resource_list(ptr noundef %resource_list) #12, !dbg !4109
  %13 = load i32, ptr %found, align 4, !dbg !4110
  store i32 %13, ptr %retval, align 4, !dbg !4111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4111

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #11, !dbg !4112
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !4112
  call void @llvm.lifetime.end.p0(i64 8, ptr %rentry) #11, !dbg !4112
  call void @llvm.lifetime.end.p0(i64 16, ptr %resource_list) #11, !dbg !4112
  %14 = load i32, ptr %retval, align 4, !dbg !4112
  ret i32 %14, !dbg !4112
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !4113 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4115, metadata !DIExpression()), !dbg !4116
  br label %do.body, !dbg !4117

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4118

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4120

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4118

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4122
  %1 = load ptr, ptr %list.addr, align 8, !dbg !4122
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4122
  store volatile ptr %0, ptr %next, align 8, !dbg !4122
  br label %do.end3, !dbg !4122

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4118

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !4124

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !4125

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4127

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !4125

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !4129
  %3 = load ptr, ptr %list.addr, align 8, !dbg !4129
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !4129
  store volatile ptr %2, ptr %prev, align 8, !dbg !4129
  br label %do.end9, !dbg !4129

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !4125

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !4131
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @resource_contains(ptr noundef %r1, ptr noundef %r2) #4 align 16 !dbg !4132 {
entry:
  %retval = alloca i1, align 1
  %r1.addr = alloca ptr, align 8
  %r2.addr = alloca ptr, align 8
  store ptr %r1, ptr %r1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r1.addr, metadata !4136, metadata !DIExpression()), !dbg !4138
  store ptr %r2, ptr %r2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r2.addr, metadata !4137, metadata !DIExpression()), !dbg !4139
  %0 = load ptr, ptr %r1.addr, align 8, !dbg !4140
  %call = call i64 @resource_type(ptr noundef %0) #12, !dbg !4142
  %1 = load ptr, ptr %r2.addr, align 8, !dbg !4143
  %call1 = call i64 @resource_type(ptr noundef %1) #12, !dbg !4144
  %cmp = icmp ne i64 %call, %call1, !dbg !4145
  br i1 %cmp, label %if.then, label %if.end, !dbg !4146

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4147
  br label %return, !dbg !4147

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %r1.addr, align 8, !dbg !4148
  %flags = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3, !dbg !4150
  %3 = load i64, ptr %flags, align 8, !dbg !4150
  %and = and i64 %3, 536870912, !dbg !4151
  %tobool = icmp ne i64 %and, 0, !dbg !4151
  br i1 %tobool, label %if.then5, label %lor.lhs.false, !dbg !4152

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %r2.addr, align 8, !dbg !4153
  %flags2 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 3, !dbg !4154
  %5 = load i64, ptr %flags2, align 8, !dbg !4154
  %and3 = and i64 %5, 536870912, !dbg !4155
  %tobool4 = icmp ne i64 %and3, 0, !dbg !4155
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4156

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  store i1 false, ptr %retval, align 1, !dbg !4157
  br label %return, !dbg !4157

if.end6:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %r1.addr, align 8, !dbg !4158
  %start = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 0, !dbg !4159
  %7 = load i64, ptr %start, align 8, !dbg !4159
  %8 = load ptr, ptr %r2.addr, align 8, !dbg !4160
  %start7 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 0, !dbg !4161
  %9 = load i64, ptr %start7, align 8, !dbg !4161
  %cmp8 = icmp ule i64 %7, %9, !dbg !4162
  br i1 %cmp8, label %land.rhs, label %land.end, !dbg !4163

land.rhs:                                         ; preds = %if.end6
  %10 = load ptr, ptr %r1.addr, align 8, !dbg !4164
  %end = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1, !dbg !4165
  %11 = load i64, ptr %end, align 8, !dbg !4165
  %12 = load ptr, ptr %r2.addr, align 8, !dbg !4166
  %end9 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 1, !dbg !4167
  %13 = load i64, ptr %end9, align 8, !dbg !4167
  %cmp10 = icmp uge i64 %11, %13, !dbg !4168
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end6
  %14 = phi i1 [ false, %if.end6 ], [ %cmp10, %land.rhs ], !dbg !4169
  store i1 %14, ptr %retval, align 1, !dbg !4170
  br label %return, !dbg !4170

return:                                           ; preds = %land.end, %if.then5, %if.then
  %15 = load i1, ptr %retval, align 1, !dbg !4171
  ret i1 %15, !dbg !4171
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_type(ptr noundef %res) #4 align 16 !dbg !4172 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !4178, metadata !DIExpression()), !dbg !4179
  %0 = load ptr, ptr %res.addr, align 8, !dbg !4180
  %flags = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 3, !dbg !4181
  %1 = load i64, ptr %flags, align 8, !dbg !4181
  %and = and i64 %1, 7936, !dbg !4182
  ret i64 %and, !dbg !4183
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193}
!llvm.ident = !{!2194}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_resource_memory206", scope: !2, file: !3, line: 138, type: !117, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.resource.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22resource\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/resource.ll drivers/acpi/resource.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !116, globals: !2038, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/resource.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d93a0ad0d10b01d3bdfeb2b9afcfe2b5")
!4 = !{!5, !11, !38, !44, !51, !57, !64, !69, !77, !85, !94, !99, !104, !110}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 77, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce91671074049198389009db13b88160")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!14 = !DIEnumerator(name: "IRQ_TYPE_NONE", value: 0)
!15 = !DIEnumerator(name: "IRQ_TYPE_EDGE_RISING", value: 1)
!16 = !DIEnumerator(name: "IRQ_TYPE_EDGE_FALLING", value: 2)
!17 = !DIEnumerator(name: "IRQ_TYPE_EDGE_BOTH", value: 3)
!18 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_HIGH", value: 4)
!19 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_LOW", value: 8)
!20 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_MASK", value: 12)
!21 = !DIEnumerator(name: "IRQ_TYPE_SENSE_MASK", value: 15)
!22 = !DIEnumerator(name: "IRQ_TYPE_DEFAULT", value: 15)
!23 = !DIEnumerator(name: "IRQ_TYPE_PROBE", value: 16)
!24 = !DIEnumerator(name: "IRQ_LEVEL", value: 256)
!25 = !DIEnumerator(name: "IRQ_PER_CPU", value: 512)
!26 = !DIEnumerator(name: "IRQ_NOPROBE", value: 1024)
!27 = !DIEnumerator(name: "IRQ_NOREQUEST", value: 2048)
!28 = !DIEnumerator(name: "IRQ_NOAUTOEN", value: 4096)
!29 = !DIEnumerator(name: "IRQ_NO_BALANCING", value: 8192)
!30 = !DIEnumerator(name: "IRQ_MOVE_PCNTXT", value: 16384)
!31 = !DIEnumerator(name: "IRQ_NESTED_THREAD", value: 32768)
!32 = !DIEnumerator(name: "IRQ_NOTHREAD", value: 65536)
!33 = !DIEnumerator(name: "IRQ_PER_CPU_DEVID", value: 131072)
!34 = !DIEnumerator(name: "IRQ_IS_POLLED", value: 262144)
!35 = !DIEnumerator(name: "IRQ_DISABLE_UNLAZY", value: 524288)
!36 = !DIEnumerator(name: "IRQ_HIDDEN", value: 1048576)
!37 = !DIEnumerator(name: "IRQ_NO_DEBUG", value: 2097152)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !39, line: 26, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!40 = !{!41, !42, !43}
!41 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!42 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!43 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !45, line: 312, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!46 = !{!47, !48, !49, !50}
!47 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!48 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!49 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!50 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !52, line: 45, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!53 = !{!54, !55, !56}
!54 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!55 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!56 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !58, line: 487, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!59 = !{!60, !61, !62, !63}
!60 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!61 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!62 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!63 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !65, line: 65, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!68 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !70, line: 620, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!71 = !{!72, !73, !74, !75, !76}
!72 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!73 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!74 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!75 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!76 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !70, line: 597, baseType: !78, size: 32, elements: !79)
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !{!80, !81, !82, !83, !84}
!80 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!81 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!82 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!83 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!84 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !58, line: 547, baseType: !7, size: 32, elements: !86)
!86 = !{!87, !88, !89, !90, !91, !92, !93}
!87 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!88 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!89 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!90 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!91 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!92 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!93 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !58, line: 564, baseType: !7, size: 32, elements: !95)
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!97 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!98 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !58, line: 577, baseType: !7, size: 32, elements: !100)
!100 = !{!101, !102, !103}
!101 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!102 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!103 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !58, line: 503, baseType: !7, size: 32, elements: !105)
!105 = !{!106, !107, !108, !109}
!106 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!107 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!108 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!109 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !111, line: 30, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!112 = !{!113, !114, !115}
!113 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!114 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!115 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!116 = !{!117, !118, !123, !150, !78, !151, !153, !162, !166, !167, !2017}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !119, line: 17, baseType: !120)
!119 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !121, line: 21, baseType: !122)
!121 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!122 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !125, line: 309, size: 72, elements: !126)
!125 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e234732d1e15cdbb059f7f7ffd573c0")
!126 = !{!127, !128, !129, !130, !131, !132}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !124, file: !125, line: 310, baseType: !118, size: 8)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !124, file: !125, line: 310, baseType: !118, size: 8, offset: 8)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !124, file: !125, line: 310, baseType: !118, size: 8, offset: 16)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !124, file: !125, line: 310, baseType: !118, size: 8, offset: 24)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !124, file: !125, line: 310, baseType: !118, size: 8, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !124, file: !125, line: 310, baseType: !133, size: 32, offset: 40)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !125, line: 255, size: 32, elements: !134)
!134 = !{!135, !142, !149}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !133, file: !125, line: 256, baseType: !136, size: 32)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !125, line: 241, size: 32, elements: !137)
!137 = !{!138, !139, !140, !141}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !136, file: !125, line: 242, baseType: !118, size: 8)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !136, file: !125, line: 243, baseType: !118, size: 8, offset: 8)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !136, file: !125, line: 244, baseType: !118, size: 8, offset: 16)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !136, file: !125, line: 245, baseType: !118, size: 8, offset: 24)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !133, file: !125, line: 257, baseType: !143, size: 32)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !125, line: 248, size: 32, elements: !144)
!144 = !{!145, !146, !147, !148}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !143, file: !125, line: 249, baseType: !118, size: 8)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !143, file: !125, line: 250, baseType: !118, size: 8, offset: 8)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !143, file: !125, line: 251, baseType: !118, size: 8, offset: 16)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !143, file: !125, line: 252, baseType: !118, size: 8, offset: 24)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !133, file: !125, line: 261, baseType: !118, size: 8)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !158, line: 190, size: 128, elements: !159)
!158 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!159 = !{!160, !161}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !158, line: 191, baseType: !156, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !157, file: !158, line: 191, baseType: !156, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !163, line: 421, baseType: !164)
!163 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !119, line: 21, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !121, line: 27, baseType: !7)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !170, line: 367, size: 11200, elements: !171)
!170 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!171 = !{!172, !173, !174, !176, !1762, !1763, !1764, !1773, !1791, !1870, !1900, !1924, !1945, !1951, !1960, !1992, !2006, !2010, !2011, !2012, !2013, !2014, !2015, !2016}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !169, file: !170, line: 368, baseType: !164, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !169, file: !170, line: 369, baseType: !78, size: 32, offset: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !169, file: !170, line: 370, baseType: !175, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !163, line: 424, baseType: !117)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !169, file: !170, line: 371, baseType: !177, size: 512, offset: 128)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !178, line: 41, size: 512, elements: !179)
!178 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!179 = !{!180, !182, !1758, !1759, !1760, !1761}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !177, file: !178, line: 42, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !177, file: !178, line: 43, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !178, line: 125, size: 1408, elements: !186)
!186 = !{!187, !191, !195, !203, !1688, !1689, !1693, !1697, !1701, !1705, !1709, !1710, !1714, !1718, !1722, !1733, !1734, !1735, !1736, !1746, !1750, !1754}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !185, file: !178, line: 126, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!181, !181}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !185, file: !178, line: 127, baseType: !192, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !181}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !185, file: !178, line: 128, baseType: !196, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!199, !201}
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !158, line: 35, baseType: !200)
!200 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !185, file: !178, line: 129, baseType: !204, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!207, !201, !209}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !58, line: 705, size: 5824, elements: !212)
!212 = !{!213, !866, !868, !871, !872, !923, !1393, !1394, !1395, !1396, !1397, !1404, !1574, !1587, !1597, !1601, !1603, !1604, !1605, !1609, !1616, !1617, !1620, !1623, !1627, !1628, !1629, !1632, !1633, !1634, !1635, !1665, !1666, !1667, !1670, !1673, !1682, !1683, !1684, !1685, !1686, !1687}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !211, file: !58, line: 706, baseType: !214, size: 512)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !215, line: 64, size: 512, elements: !216)
!215 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!216 = !{!217, !221, !222, !224, !308, !736, !851, !861, !862, !863, !864, !865}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !215, line: 65, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !214, file: !215, line: 66, baseType: !157, size: 128, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !214, file: !215, line: 67, baseType: !223, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !214, file: !215, line: 68, baseType: !225, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !215, line: 168, size: 768, elements: !227)
!227 = !{!228, !229, !267, !268}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !226, file: !215, line: 169, baseType: !157, size: 128)
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
!248 = !{!249, !254, !259}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !247, file: !243, line: 16, baseType: !250, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !158, line: 174, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 172, size: 32, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !251, file: !158, line: 173, baseType: !78, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !243, line: 24, baseType: !255, size: 16)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !243, line: 24, size: 16, elements: !256)
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !255, file: !243, line: 25, baseType: !118, size: 8)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !255, file: !243, line: 26, baseType: !118, size: 8, offset: 8)
!259 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !243, line: 28, baseType: !260, size: 32)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !243, line: 28, size: 32, elements: !261)
!261 = !{!262, !266}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !260, file: !243, line: 29, baseType: !263, size: 16)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !119, line: 19, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !121, line: 24, baseType: !265)
!265 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !260, file: !243, line: 30, baseType: !263, size: 16, offset: 16)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !226, file: !215, line: 171, baseType: !214, size: 512, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !226, file: !215, line: 172, baseType: !269, size: 64, offset: 704)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !215, line: 133, size: 192, elements: !272)
!272 = !{!273, !280, !285}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !271, file: !215, line: 134, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!78, !278}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !271, file: !215, line: 135, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!218, !278}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !271, file: !215, line: 136, baseType: !286, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!78, !278, !290}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !215, line: 125, size: 20736, elements: !292)
!292 = !{!293, !298, !302, !303, !307}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !291, file: !215, line: 126, baseType: !294, size: 192)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 192, elements: !296)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!296 = !{!297}
!297 = !DISubrange(count: 3)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !291, file: !215, line: 127, baseType: !299, size: 4096, offset: 192)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 4096, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !291, file: !215, line: 128, baseType: !78, size: 32, offset: 4288)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !291, file: !215, line: 129, baseType: !304, size: 16384, offset: 4320)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 16384, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 2048)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !291, file: !215, line: 130, baseType: !78, size: 32, offset: 20704)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !214, file: !215, line: 69, baseType: !309, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !215, line: 116, size: 384, elements: !312)
!312 = !{!313, !317, !345, !682, !713, !717}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !311, file: !215, line: 117, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !223}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !311, file: !215, line: 118, baseType: !318, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !321, line: 254, size: 128, elements: !322)
!321 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!322 = !{!323, !338}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !320, file: !321, line: 255, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !223, !332, !295}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !158, line: 66, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !329, line: 73, baseType: !330)
!329 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !329, line: 15, baseType: !331)
!331 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !321, line: 30, size: 128, elements: !334)
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !333, file: !321, line: 31, baseType: !218, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !333, file: !321, line: 32, baseType: !337, size: 16, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !158, line: 24, baseType: !265)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !320, file: !321, line: 256, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!327, !223, !332, !218, !342}
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 61, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !329, line: 72, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !329, line: 16, baseType: !152)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !311, file: !215, line: 119, baseType: !346, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !321, line: 84, size: 320, elements: !350)
!350 = !{!351, !352, !356, !678, !680}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !349, file: !321, line: 85, baseType: !218, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !349, file: !321, line: 86, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!337, !223, !332, !78}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !349, file: !321, line: 88, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!337, !223, !360, !78}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !321, line: 175, size: 512, elements: !362)
!362 = !{!363, !364, !365, !366, !373, !383, !384}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !361, file: !321, line: 176, baseType: !333, size: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !361, file: !321, line: 177, baseType: !342, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !361, file: !321, line: 178, baseType: !117, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !361, file: !321, line: 179, baseType: !367, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !372, line: 351, flags: DIFlagFwdDecl)
!372 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!373 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !361, file: !321, line: 180, baseType: !374, size: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!327, !377, !223, !360, !295, !380, !342}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !379, line: 537, flags: DIFlagFwdDecl)
!379 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !158, line: 52, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !329, line: 88, baseType: !382)
!382 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !361, file: !321, line: 182, baseType: !374, size: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !361, file: !321, line: 184, baseType: !385, size: 64, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!78, !377, !223, !360, !388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !390, line: 625, size: 1344, elements: !391)
!390 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!391 = !{!392, !409, !629, !635, !642, !643, !648, !649, !661, !662, !665, !669, !670, !671, !672, !673, !676}
!392 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !390, line: 628, baseType: !393, size: 128)
!393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !390, line: 628, size: 128, elements: !394)
!394 = !{!395, !400}
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !390, line: 629, baseType: !396, size: 128)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !393, file: !390, line: 629, size: 128, elements: !397)
!397 = !{!398, !399}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !396, file: !390, line: 631, baseType: !152, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !396, file: !390, line: 632, baseType: !152, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !393, file: !390, line: 635, baseType: !401, size: 128, align: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !158, line: 232, size: 128, align: 64, elements: !402)
!402 = !{!403, !405}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !401, file: !158, line: 233, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !401, file: !158, line: 234, baseType: !406, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !404}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !389, file: !390, line: 639, baseType: !410, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !390, line: 733, size: 10240, elements: !412)
!412 = !{!413, !625}
!413 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !390, line: 734, baseType: !414, size: 10240)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !411, file: !390, line: 734, size: 10240, elements: !415)
!415 = !{!416, !420, !434, !438, !439, !440, !441, !442, !443, !451, !452, !453, !462, !463, !472, !473, !474, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !521, !535, !538, !591, !592, !593, !596, !599, !600, !603, !604, !605, !612, !613}
!416 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !390, line: 739, baseType: !417, size: 512, align: 512)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !414, file: !390, line: 739, size: 512, align: 512, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !417, file: !390, line: 747, baseType: !250, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !414, file: !390, line: 750, baseType: !421, size: 128, offset: 512)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !422, line: 218, size: 128, elements: !423)
!422 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!423 = !{!424, !432, !433}
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !421, file: !422, line: 219, baseType: !425, size: 32)
!425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !421, file: !422, line: 219, size: 32, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !425, file: !422, line: 220, baseType: !230, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !425, file: !422, line: 221, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !422, line: 197, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !422, line: 197, elements: !431)
!431 = !{}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !421, file: !422, line: 223, baseType: !7, size: 32, offset: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !421, file: !422, line: 224, baseType: !117, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !414, file: !390, line: 752, baseType: !435, size: 64, offset: 640)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!152, !377, !152, !152, !152, !152}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !414, file: !390, line: 756, baseType: !152, size: 64, offset: 704)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !414, file: !390, line: 757, baseType: !152, size: 64, offset: 768)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !414, file: !390, line: 760, baseType: !152, size: 64, offset: 832)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !414, file: !390, line: 761, baseType: !152, size: 64, offset: 896)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !414, file: !390, line: 763, baseType: !152, size: 64, offset: 960)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !414, file: !390, line: 764, baseType: !444, size: 64, offset: 1024)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !379, line: 299, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !379, line: 299, size: 64, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !446, file: !379, line: 299, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !450, line: 18, baseType: !152)
!450 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!451 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !414, file: !390, line: 773, baseType: !250, size: 32, offset: 1088)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !414, file: !390, line: 785, baseType: !250, size: 32, offset: 1120)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !414, file: !390, line: 795, baseType: !454, size: 64, offset: 1152)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !390, line: 726, size: 128, elements: !456)
!456 = !{!457, !461}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !455, file: !390, line: 727, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !119, line: 23, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !121, line: 31, baseType: !460)
!460 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !455, file: !390, line: 728, baseType: !78, size: 32, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !414, file: !390, line: 801, baseType: !152, size: 64, offset: 1216)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !414, file: !390, line: 804, baseType: !464, size: 64, offset: 1280)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !465, line: 13, baseType: !466)
!465 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !158, line: 181, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 179, size: 64, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !467, file: !158, line: 180, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !119, line: 22, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !121, line: 30, baseType: !382)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !414, file: !390, line: 806, baseType: !78, size: 32, offset: 1344)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !414, file: !390, line: 808, baseType: !230, size: 32, offset: 1376)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !414, file: !390, line: 823, baseType: !475, size: 320, offset: 1408)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !476, line: 48, size: 320, elements: !477)
!476 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!477 = !{!478, !479, !480, !485, !487}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !475, file: !476, line: 49, baseType: !464, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !475, file: !476, line: 55, baseType: !464, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !475, file: !476, line: 57, baseType: !481, size: 32, offset: 128)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !482, line: 15, size: 32, elements: !483)
!482 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !481, file: !482, line: 20, baseType: !250, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !475, file: !476, line: 59, baseType: !486, size: 32, offset: 160)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !239, line: 23, baseType: !238)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !475, file: !476, line: 60, baseType: !157, size: 128, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !414, file: !390, line: 825, baseType: !157, size: 128, offset: 1728)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !414, file: !390, line: 845, baseType: !78, size: 32, offset: 1856)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !414, file: !390, line: 849, baseType: !152, size: 64, offset: 1920)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !414, file: !390, line: 850, baseType: !152, size: 64, offset: 1984)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !414, file: !390, line: 852, baseType: !152, size: 64, offset: 2048)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !414, file: !390, line: 853, baseType: !152, size: 64, offset: 2112)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !414, file: !390, line: 854, baseType: !466, size: 64, offset: 2176)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !414, file: !390, line: 855, baseType: !152, size: 64, offset: 2240)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !414, file: !390, line: 856, baseType: !152, size: 64, offset: 2304)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !414, file: !390, line: 857, baseType: !152, size: 64, offset: 2368)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !414, file: !390, line: 858, baseType: !152, size: 64, offset: 2432)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !414, file: !390, line: 865, baseType: !500, size: 32, offset: 2496)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !501, line: 69, baseType: !502)
!501 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !501, line: 64, size: 32, elements: !503)
!503 = !{!504}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !502, file: !501, line: 65, baseType: !7, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !414, file: !390, line: 867, baseType: !230, size: 32, offset: 2528)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !414, file: !390, line: 869, baseType: !152, size: 64, offset: 2560)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !414, file: !390, line: 869, baseType: !152, size: 64, offset: 2624)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !414, file: !390, line: 869, baseType: !152, size: 64, offset: 2688)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !414, file: !390, line: 869, baseType: !152, size: 64, offset: 2752)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !414, file: !390, line: 870, baseType: !152, size: 64, offset: 2816)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !414, file: !390, line: 870, baseType: !152, size: 64, offset: 2880)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !414, file: !390, line: 870, baseType: !152, size: 64, offset: 2944)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !414, file: !390, line: 871, baseType: !152, size: 64, offset: 3008)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !414, file: !390, line: 871, baseType: !152, size: 64, offset: 3072)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !414, file: !390, line: 871, baseType: !152, size: 64, offset: 3136)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !414, file: !390, line: 871, baseType: !152, size: 64, offset: 3200)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !414, file: !390, line: 873, baseType: !518, size: 3328, offset: 3264)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 3328, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 52)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !414, file: !390, line: 875, baseType: !522, size: 1280, offset: 6592)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 1280, elements: !533)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !524, line: 22, size: 320, elements: !525)
!524 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!525 = !{!526, !527, !528, !529}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !523, file: !524, line: 23, baseType: !486, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !523, file: !524, line: 24, baseType: !470, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !523, file: !524, line: 26, baseType: !157, size: 128, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !523, file: !524, line: 28, baseType: !530, size: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !119, line: 20, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !121, line: 26, baseType: !78)
!533 = !{!534}
!534 = !DISubrange(count: 4)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !414, file: !390, line: 877, baseType: !536, size: 64, offset: 7872)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !390, line: 877, flags: DIFlagFwdDecl)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !414, file: !390, line: 880, baseType: !539, size: 1088, offset: 7936)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !540, line: 72, baseType: !541)
!540 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !540, line: 23, size: 1088, elements: !542)
!542 = !{!543, !544, !545, !546, !547, !550, !551, !559, !560, !585, !586, !587}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !541, file: !540, line: 28, baseType: !458, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !541, file: !540, line: 38, baseType: !466, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !541, file: !540, line: 40, baseType: !152, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !541, file: !540, line: 43, baseType: !475, size: 320, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !541, file: !540, line: 44, baseType: !548, size: 64, offset: 512)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !540, line: 44, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !541, file: !540, line: 48, baseType: !152, size: 64, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !541, file: !540, line: 59, baseType: !552, size: 256, offset: 640)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !553, line: 66, size: 256, elements: !554)
!553 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!554 = !{!555, !556, !557, !558}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !552, file: !553, line: 67, baseType: !464, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !552, file: !553, line: 68, baseType: !486, size: 32, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !552, file: !553, line: 70, baseType: !481, size: 32, offset: 96)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !552, file: !553, line: 72, baseType: !157, size: 128, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !541, file: !540, line: 60, baseType: !117, size: 64, offset: 896)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !541, file: !540, line: 61, baseType: !561, size: 64, offset: 960)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !564, line: 13, size: 1216, elements: !565)
!564 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!565 = !{!566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !563, file: !564, line: 14, baseType: !117, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !563, file: !564, line: 15, baseType: !152, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !563, file: !564, line: 17, baseType: !152, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !563, file: !564, line: 17, baseType: !152, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !563, file: !564, line: 18, baseType: !152, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !563, file: !564, line: 18, baseType: !152, size: 64, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !563, file: !564, line: 19, baseType: !207, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !563, file: !564, line: 21, baseType: !331, size: 64, offset: 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !563, file: !564, line: 23, baseType: !331, size: 64, offset: 512)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !563, file: !564, line: 24, baseType: !331, size: 64, offset: 576)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !563, file: !564, line: 25, baseType: !331, size: 64, offset: 640)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !563, file: !564, line: 26, baseType: !331, size: 64, offset: 704)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !563, file: !564, line: 27, baseType: !331, size: 64, offset: 768)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !563, file: !564, line: 28, baseType: !331, size: 64, offset: 832)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !563, file: !564, line: 29, baseType: !331, size: 64, offset: 896)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !563, file: !564, line: 30, baseType: !331, size: 64, offset: 960)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !563, file: !564, line: 31, baseType: !331, size: 64, offset: 1024)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !563, file: !564, line: 32, baseType: !331, size: 64, offset: 1088)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !563, file: !564, line: 33, baseType: !331, size: 64, offset: 1152)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !541, file: !540, line: 63, baseType: !250, size: 32, offset: 1024)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !541, file: !540, line: 69, baseType: !263, size: 16, offset: 1056)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !541, file: !540, line: 70, baseType: !588, size: 16, offset: 1072)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !119, line: 18, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !121, line: 23, baseType: !590)
!590 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !390, line: 882, baseType: !152, size: 64, offset: 9024)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !414, file: !390, line: 885, baseType: !230, size: 32, offset: 9088)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !414, file: !390, line: 886, baseType: !594, size: 64, offset: 9152)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !390, line: 732, flags: DIFlagFwdDecl)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !414, file: !390, line: 901, baseType: !597, size: 64, offset: 9216)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !390, line: 901, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !414, file: !390, line: 904, baseType: !377, size: 64, offset: 9280)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !414, file: !390, line: 906, baseType: !601, size: 64, offset: 9344)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !390, line: 906, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !414, file: !390, line: 930, baseType: !250, size: 32, offset: 9408)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !414, file: !390, line: 933, baseType: !250, size: 32, offset: 9440)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !414, file: !390, line: 935, baseType: !606, size: 64, offset: 9472)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !607, line: 103, size: 64, elements: !608)
!607 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !606, file: !607, line: 104, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !607, line: 101, flags: DIFlagFwdDecl)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !414, file: !390, line: 940, baseType: !464, size: 64, offset: 9536)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !414, file: !390, line: 942, baseType: !614, size: 256, offset: 9600)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !615, line: 98, size: 256, elements: !616)
!615 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!616 = !{!617, !618, !619}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !614, file: !615, line: 99, baseType: !464, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !614, file: !615, line: 100, baseType: !157, size: 128, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !614, file: !615, line: 101, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !615, line: 21, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !624}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !411, file: !390, line: 986, baseType: !626, offset: 10240)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: -1)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !389, file: !390, line: 640, baseType: !630, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !379, line: 297, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !379, line: 297, size: 64, elements: !632)
!632 = !{!633}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !631, file: !379, line: 297, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !450, line: 19, baseType: !152)
!635 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !390, line: 646, baseType: !636, size: 64, offset: 256)
!636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !390, line: 646, size: 64, elements: !637)
!637 = !{!638, !641}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !636, file: !390, line: 647, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !390, line: 542, baseType: !152)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !636, file: !390, line: 648, baseType: !640, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !389, file: !390, line: 666, baseType: !78, size: 32, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !389, file: !390, line: 667, baseType: !644, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !390, line: 579, size: 320, elements: !646)
!646 = !{!647}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !645, file: !390, line: 580, baseType: !475, size: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !389, file: !390, line: 670, baseType: !199, size: 8, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !389, file: !390, line: 681, baseType: !650, size: 256, offset: 512)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !389, file: !390, line: 678, size: 256, elements: !651)
!651 = !{!652, !660}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !650, file: !390, line: 679, baseType: !653, size: 192, align: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !654, line: 5, size: 192, align: 64, elements: !655)
!654 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!655 = !{!656, !657, !659}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !653, file: !654, line: 6, baseType: !152, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !653, file: !654, line: 7, baseType: !658, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !653, file: !654, line: 8, baseType: !658, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !650, file: !390, line: 680, baseType: !152, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !389, file: !390, line: 689, baseType: !157, size: 128, offset: 768)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !389, file: !390, line: 691, baseType: !663, size: 64, offset: 896)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !390, line: 691, flags: DIFlagFwdDecl)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !389, file: !390, line: 694, baseType: !666, size: 64, offset: 960)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !390, line: 694, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !389, file: !390, line: 697, baseType: !152, size: 64, offset: 1024)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !389, file: !390, line: 699, baseType: !377, size: 64, offset: 1088)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !389, file: !390, line: 700, baseType: !117, size: 64, offset: 1152)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !389, file: !390, line: 711, baseType: !464, size: 64, offset: 1216)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !389, file: !390, line: 717, baseType: !674, size: 64, offset: 1280)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !390, line: 717, flags: DIFlagFwdDecl)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !389, file: !390, line: 722, baseType: !677, offset: 1344)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !390, line: 570, elements: !431)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !349, file: !321, line: 90, baseType: !679, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !349, file: !321, line: 91, baseType: !681, size: 64, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !311, file: !215, line: 120, baseType: !683, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!686, !278}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !39, line: 39, size: 384, elements: !689)
!689 = !{!690, !691, !695, !699, !705, !709}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !688, file: !39, line: 40, baseType: !38, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !688, file: !39, line: 41, baseType: !692, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!199}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !688, file: !39, line: 42, baseType: !696, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!117}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !688, file: !39, line: 43, baseType: !700, size: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!207, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !39, line: 19, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !688, file: !39, line: 44, baseType: !706, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!207}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !688, file: !39, line: 45, baseType: !710, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !117}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !311, file: !215, line: 121, baseType: !714, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!207, !278}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !311, file: !215, line: 122, baseType: !718, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !278, !721, !729}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !723, line: 23, baseType: !724)
!723 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !723, line: 21, size: 32, elements: !725)
!725 = !{!726}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !724, file: !723, line: 22, baseType: !727, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !158, line: 37, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !329, line: 49, baseType: !7)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !723, line: 28, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !723, line: 26, size: 32, elements: !732)
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !731, file: !723, line: 27, baseType: !734, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !158, line: 38, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !329, line: 50, baseType: !7)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !214, file: !215, line: 70, baseType: !737, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !739, line: 190, size: 1152, elements: !740)
!739 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !843, !844, !845, !846, !847, !850}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !738, file: !739, line: 191, baseType: !250, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !738, file: !739, line: 192, baseType: !250, size: 32, offset: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !738, file: !739, line: 202, baseType: !737, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !738, file: !739, line: 203, baseType: !218, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !738, file: !739, line: 205, baseType: !653, size: 192, align: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !738, file: !739, line: 207, baseType: !207, size: 64, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !738, file: !739, line: 208, baseType: !7, size: 32, offset: 448)
!748 = !DIDerivedType(tag: DW_TAG_member, scope: !738, file: !739, line: 209, baseType: !749, size: 256, offset: 512)
!749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !738, file: !739, line: 209, size: 256, elements: !750)
!750 = !{!751, !763, !767}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !749, file: !739, line: 210, baseType: !752, size: 256)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !739, line: 153, size: 256, elements: !753)
!753 = !{!754, !755, !759, !762}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !752, file: !739, line: 154, baseType: !152, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !752, file: !739, line: 156, baseType: !756, size: 64, offset: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !654, line: 12, size: 64, elements: !757)
!757 = !{!758}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !756, file: !654, line: 13, baseType: !658, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !752, file: !739, line: 162, baseType: !760, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !739, line: 162, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !752, file: !739, line: 167, baseType: !152, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !749, file: !739, line: 211, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !739, line: 170, size: 64, elements: !765)
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !764, file: !739, line: 171, baseType: !737, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !749, file: !739, line: 212, baseType: !768, size: 256)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !739, line: 174, size: 256, elements: !769)
!769 = !{!770, !838, !841, !842}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !768, file: !739, line: 175, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !739, line: 271, size: 768, elements: !774)
!774 = !{!775, !798, !802, !806, !811, !815, !819, !823, !824, !825, !826, !834}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !773, file: !739, line: 276, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!78, !779}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !739, line: 251, size: 1216, elements: !781)
!781 = !{!782, !783, !784, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !780, file: !739, line: 253, baseType: !737, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !780, file: !739, line: 254, baseType: !377, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !780, file: !739, line: 255, baseType: !785, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !787, line: 66, flags: DIFlagFwdDecl)
!787 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!788 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !780, file: !739, line: 256, baseType: !117, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !780, file: !739, line: 259, baseType: !552, size: 256, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !780, file: !739, line: 260, baseType: !552, size: 256, offset: 512)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !780, file: !739, line: 261, baseType: !78, size: 32, offset: 768)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !780, file: !739, line: 262, baseType: !157, size: 128, offset: 832)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !780, file: !739, line: 263, baseType: !295, size: 64, offset: 960)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !780, file: !739, line: 265, baseType: !342, size: 64, offset: 1024)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !780, file: !739, line: 266, baseType: !199, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !780, file: !739, line: 267, baseType: !199, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !780, file: !739, line: 268, baseType: !666, size: 64, offset: 1152)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !773, file: !739, line: 277, baseType: !799, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !779}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !773, file: !739, line: 290, baseType: !803, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!78, !785, !117}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !773, file: !739, line: 292, baseType: !807, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!117, !785, !810}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !773, file: !739, line: 293, baseType: !812, size: 64, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!117, !785, !117, !810}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !773, file: !739, line: 294, baseType: !816, size: 64, offset: 320)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !785, !117}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !773, file: !739, line: 296, baseType: !820, size: 64, offset: 384)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!327, !779, !295, !342, !380}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !773, file: !739, line: 306, baseType: !342, size: 64, offset: 448)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !773, file: !739, line: 313, baseType: !199, size: 8, offset: 512)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !773, file: !739, line: 314, baseType: !820, size: 64, offset: 576)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !773, file: !739, line: 317, baseType: !827, size: 64, offset: 640)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!830, !779, !832}
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !831, line: 59, baseType: !7)
!831 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !739, line: 31, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !773, file: !739, line: 320, baseType: !835, size: 64, offset: 704)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!78, !779, !388}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !768, file: !739, line: 176, baseType: !839, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !739, line: 35, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !768, file: !739, line: 177, baseType: !380, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !768, file: !739, line: 178, baseType: !737, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !738, file: !739, line: 215, baseType: !117, size: 64, offset: 768)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !738, file: !739, line: 221, baseType: !458, size: 64, offset: 832)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !738, file: !739, line: 223, baseType: !265, size: 16, offset: 896)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !738, file: !739, line: 224, baseType: !337, size: 16, offset: 912)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !738, file: !739, line: 225, baseType: !848, size: 64, offset: 960)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !739, line: 36, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !738, file: !739, line: 227, baseType: !401, size: 128, align: 64, offset: 1024)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !214, file: !215, line: 71, baseType: !852, size: 32, offset: 448)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !853, line: 19, size: 32, elements: !854)
!853 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!854 = !{!855}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !852, file: !853, line: 20, baseType: !856, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !857, line: 113, baseType: !858)
!857 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !857, line: 111, size: 32, elements: !859)
!859 = !{!860}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !858, file: !857, line: 112, baseType: !250, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !214, file: !215, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !214, file: !215, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !214, file: !215, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !214, file: !215, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !214, file: !215, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !211, file: !58, line: 707, baseType: !867, size: 64, offset: 512)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !211, file: !58, line: 709, baseType: !869, size: 64, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !58, line: 37, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !211, file: !58, line: 711, baseType: !218, size: 64, offset: 640)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !211, file: !58, line: 712, baseType: !873, size: 64, offset: 704)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !58, line: 89, size: 384, elements: !876)
!876 = !{!877, !878, !879, !883, !888, !892}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !875, file: !58, line: 90, baseType: !218, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !875, file: !58, line: 91, baseType: !346, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !875, file: !58, line: 92, baseType: !880, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!78, !209, !290}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !875, file: !58, line: 93, baseType: !884, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!295, !209, !887, !721, !729}
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !875, file: !58, line: 95, baseType: !889, size: 64, offset: 256)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !867}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !875, file: !58, line: 97, baseType: !893, size: 64, offset: 320)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !70, line: 286, size: 1472, elements: !896)
!896 = !{!897, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !895, file: !70, line: 287, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!78, !867}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !895, file: !70, line: 288, baseType: !889, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !895, file: !70, line: 289, baseType: !898, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !895, file: !70, line: 290, baseType: !898, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !895, file: !70, line: 291, baseType: !898, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !895, file: !70, line: 292, baseType: !898, size: 64, offset: 320)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !895, file: !70, line: 293, baseType: !898, size: 64, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !895, file: !70, line: 294, baseType: !898, size: 64, offset: 448)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !895, file: !70, line: 295, baseType: !898, size: 64, offset: 512)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !895, file: !70, line: 296, baseType: !898, size: 64, offset: 576)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !895, file: !70, line: 297, baseType: !898, size: 64, offset: 640)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !895, file: !70, line: 298, baseType: !898, size: 64, offset: 704)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !895, file: !70, line: 299, baseType: !898, size: 64, offset: 768)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !895, file: !70, line: 300, baseType: !898, size: 64, offset: 832)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !895, file: !70, line: 301, baseType: !898, size: 64, offset: 896)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !895, file: !70, line: 302, baseType: !898, size: 64, offset: 960)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !895, file: !70, line: 303, baseType: !898, size: 64, offset: 1024)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !895, file: !70, line: 304, baseType: !898, size: 64, offset: 1088)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !895, file: !70, line: 305, baseType: !898, size: 64, offset: 1152)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !895, file: !70, line: 306, baseType: !898, size: 64, offset: 1216)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !895, file: !70, line: 307, baseType: !898, size: 64, offset: 1280)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !895, file: !70, line: 308, baseType: !898, size: 64, offset: 1344)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !895, file: !70, line: 309, baseType: !898, size: 64, offset: 1408)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !211, file: !58, line: 714, baseType: !924, size: 64, offset: 768)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !926)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !927, line: 80, size: 1344, elements: !928)
!927 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!928 = !{!929, !930, !931, !932, !933, !934, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1392}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !926, file: !927, line: 81, baseType: !218, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !926, file: !927, line: 82, baseType: !218, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !926, file: !927, line: 83, baseType: !346, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !926, file: !927, line: 84, baseType: !346, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !926, file: !927, line: 85, baseType: !346, size: 64, offset: 256)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !926, file: !927, line: 87, baseType: !935, size: 64, offset: 320)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!78, !867, !938}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !52, line: 96, size: 1152, elements: !940)
!940 = !{!941, !942, !943, !1323, !1324, !1325, !1326, !1342, !1355, !1356, !1357, !1358, !1359, !1367, !1368, !1369, !1370, !1371, !1372}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !939, file: !52, line: 97, baseType: !218, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !939, file: !52, line: 98, baseType: !924, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !939, file: !52, line: 100, baseType: !944, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !45, line: 402, size: 9216, align: 512, elements: !946)
!946 = !{!947, !948, !949, !953, !974, !1000, !1001, !1002, !1003, !1007, !1010, !1011, !1012, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1080, !1084, !1104, !1122, !1123, !1124, !1125, !1134, !1157, !1158, !1161, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1175, !1176, !1282, !1290, !1291, !1292, !1294, !1298, !1299, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1316, !1317, !1318, !1322}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !945, file: !45, line: 403, baseType: !44, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !945, file: !45, line: 406, baseType: !157, size: 128, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !945, file: !45, line: 409, baseType: !950, size: 448, offset: 192)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 448, elements: !951)
!951 = !{!952}
!952 = !DISubrange(count: 56)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !945, file: !45, line: 417, baseType: !954, size: 768, offset: 640)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !45, line: 45, size: 768, elements: !955)
!955 = !{!956, !957, !958, !959, !962}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !954, file: !45, line: 46, baseType: !214, size: 512)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !954, file: !45, line: 47, baseType: !944, size: 64, offset: 512)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !954, file: !45, line: 48, baseType: !223, size: 64, offset: 576)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !954, file: !45, line: 49, baseType: !960, size: 64, offset: 640)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !45, line: 49, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !954, file: !45, line: 50, baseType: !963, size: 64, offset: 704)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !965, line: 26, size: 256, elements: !966)
!965 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !964, file: !965, line: 27, baseType: !7, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !964, file: !965, line: 28, baseType: !969, size: 192, offset: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !970, line: 43, size: 192, elements: !971)
!970 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !969, file: !970, line: 44, baseType: !486, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !969, file: !970, line: 45, baseType: !157, size: 128, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !945, file: !45, line: 418, baseType: !975, size: 64, offset: 1408)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !45, line: 53, size: 448, elements: !977)
!977 = !{!978, !979, !984, !988, !992, !996}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !976, file: !45, line: 54, baseType: !333, size: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !976, file: !45, line: 55, baseType: !980, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!327, !975, !983, !295}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !976, file: !45, line: 57, baseType: !985, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!327, !975, !983, !218, !342}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !976, file: !45, line: 59, baseType: !989, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !944, !218}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !976, file: !45, line: 60, baseType: !993, size: 64, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!78, !944}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !976, file: !45, line: 61, baseType: !997, size: 64, offset: 384)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{null, !944}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !945, file: !45, line: 419, baseType: !218, size: 64, offset: 1472)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !945, file: !45, line: 420, baseType: !218, size: 64, offset: 1536)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !945, file: !45, line: 421, baseType: !223, size: 64, offset: 1600)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !945, file: !45, line: 424, baseType: !1004, size: 64, offset: 1664)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1006)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !45, line: 424, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !945, file: !45, line: 425, baseType: !1008, size: 64, offset: 1728)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !945, file: !45, line: 426, baseType: !7, size: 32, offset: 1792)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !945, file: !45, line: 435, baseType: !552, size: 256, offset: 1856)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !945, file: !45, line: 437, baseType: !1013, size: 64, offset: 2112)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1015, line: 69, size: 320, elements: !1016)
!1015 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1016 = !{!1017, !1018, !1019, !1036, !1038, !1042, !1043}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1014, file: !1015, line: 70, baseType: !218, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1014, file: !1015, line: 71, baseType: !944, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1014, file: !1015, line: 72, baseType: !1020, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1022)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1015, line: 47, size: 256, elements: !1023)
!1023 = !{!1024, !1025, !1031, !1035}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1022, file: !1015, line: 49, baseType: !7, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1022, file: !1015, line: 51, baseType: !1026, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!78, !218, !1029}
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1014)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1022, file: !1015, line: 53, baseType: !1032, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!78, !295, !1029}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1022, file: !1015, line: 55, baseType: !710, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1014, file: !1015, line: 73, baseType: !1037, size: 16, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1014, file: !1015, line: 74, baseType: !1039, size: 8, offset: 208)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !119, line: 16, baseType: !1040)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !121, line: 20, baseType: !1041)
!1041 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1014, file: !1015, line: 75, baseType: !118, size: 8, offset: 216)
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !1015, line: 76, baseType: !1044, size: 64, offset: 256)
!1044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !1015, line: 76, size: 64, elements: !1045)
!1045 = !{!1046, !1047, !1054}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1044, file: !1015, line: 77, baseType: !117, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1044, file: !1015, line: 78, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1050)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1015, line: 86, size: 128, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1050, file: !1015, line: 87, baseType: !7, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1050, file: !1015, line: 88, baseType: !295, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1044, file: !1015, line: 79, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1057)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1015, line: 92, size: 256, elements: !1058)
!1058 = !{!1059, !1060, !1061, !1063, !1064}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1057, file: !1015, line: 94, baseType: !7, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1057, file: !1015, line: 95, baseType: !7, size: 32, offset: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1057, file: !1015, line: 96, baseType: !1062, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1057, file: !1015, line: 97, baseType: !1020, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1057, file: !1015, line: 98, baseType: !117, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !945, file: !45, line: 438, baseType: !7, size: 32, offset: 2176)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !945, file: !45, line: 441, baseType: !7, size: 32, offset: 2208)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !945, file: !45, line: 442, baseType: !1004, size: 64, offset: 2240)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !945, file: !45, line: 443, baseType: !1008, size: 64, offset: 2304)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !945, file: !45, line: 444, baseType: !199, size: 8, offset: 2368)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !945, file: !45, line: 451, baseType: !199, size: 8, offset: 2376)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !945, file: !45, line: 454, baseType: !7, size: 32, offset: 2400)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !945, file: !45, line: 455, baseType: !1073, size: 64, offset: 2432)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1075, line: 23, size: 96, elements: !1076)
!1075 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1074, file: !1075, line: 24, baseType: !78, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1074, file: !1075, line: 24, baseType: !78, size: 32, offset: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1074, file: !1075, line: 24, baseType: !78, size: 32, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !945, file: !45, line: 458, baseType: !1081, size: 64, offset: 2496)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!78}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !945, file: !45, line: 460, baseType: !1085, size: 4032, align: 512, offset: 2560)
!1085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1086, size: 4032, elements: !1102)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !45, line: 362, size: 576, elements: !1087)
!1087 = !{!1088, !1089, !1090}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1086, file: !45, line: 363, baseType: !117, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1086, file: !45, line: 364, baseType: !7, size: 32, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1086, file: !45, line: 367, baseType: !1091, size: 448, offset: 128)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !45, line: 319, size: 448, elements: !1092)
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1091, file: !45, line: 320, baseType: !944, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1091, file: !45, line: 321, baseType: !1095, size: 384, offset: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1096, line: 40, size: 384, elements: !1097)
!1096 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1097 = !{!1098}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1095, file: !1096, line: 41, baseType: !1099, size: 384, align: 64)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 384, align: 64, elements: !1100)
!1100 = !{!1101}
!1101 = !DISubrange(count: 2)
!1102 = !{!1103}
!1103 = !DISubrange(count: 7)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !945, file: !45, line: 463, baseType: !1105, size: 192, offset: 6592)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1106, line: 8, size: 192, elements: !1107)
!1106 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1107 = !{!1108, !1109, !1111}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1105, file: !1106, line: 10, baseType: !7, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1105, file: !1106, line: 11, baseType: !1110, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1105, file: !1106, line: 12, baseType: !1112, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1114, line: 59, size: 48, elements: !1115)
!1114 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1115 = !{!1116, !1117, !1118, !1119, !1120, !1121}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1113, file: !1114, line: 60, baseType: !588, size: 16)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1113, file: !1114, line: 61, baseType: !588, size: 16, offset: 16)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1113, file: !1114, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1113, file: !1114, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1113, file: !1114, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1113, file: !1114, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !945, file: !45, line: 465, baseType: !152, size: 64, offset: 6784)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !945, file: !45, line: 469, baseType: !7, size: 32, offset: 6848)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !945, file: !45, line: 470, baseType: !157, size: 128, offset: 6912)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !945, file: !45, line: 471, baseType: !1126, size: 64, offset: 7040)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1128, line: 33, size: 96, elements: !1129)
!1128 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1129 = !{!1130, !1131, !1132, !1133}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1127, file: !1128, line: 37, baseType: !78, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1127, file: !1128, line: 43, baseType: !78, size: 32, offset: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1127, file: !1128, line: 45, baseType: !265, size: 16, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1127, file: !1128, line: 47, baseType: !265, size: 16, offset: 80)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !945, file: !45, line: 476, baseType: !1135, size: 64, offset: 7104)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !45, line: 378, size: 256, elements: !1137)
!1137 = !{!1138, !1154, !1155, !1156}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1136, file: !45, line: 379, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1141, line: 204, baseType: !1142)
!1141 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1141, line: 197, size: 192, elements: !1143)
!1143 = !{!1144, !1146, !1147, !1148, !1150, !1152}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1142, file: !1141, line: 198, baseType: !1145, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1141, line: 21, baseType: !165)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1142, file: !1141, line: 199, baseType: !122, size: 8, offset: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1142, file: !1141, line: 200, baseType: !122, size: 8, offset: 40)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1142, file: !1141, line: 201, baseType: !1149, size: 16, offset: 48)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1141, line: 17, baseType: !264)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1142, file: !1141, line: 202, baseType: !1151, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1141, line: 16, baseType: !459)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1142, file: !1141, line: 203, baseType: !1153, size: 64, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1141, line: 22, baseType: !459)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1136, file: !45, line: 380, baseType: !7, size: 32, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1136, file: !45, line: 381, baseType: !295, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1136, file: !45, line: 382, baseType: !295, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !945, file: !45, line: 477, baseType: !1136, size: 256, offset: 7168)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !945, file: !45, line: 480, baseType: !1159, size: 64, offset: 7424)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !45, line: 480, flags: DIFlagFwdDecl)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !945, file: !45, line: 483, baseType: !1162, size: 64, offset: 7488)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !45, line: 483, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !945, file: !45, line: 488, baseType: !295, size: 64, offset: 7552)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !945, file: !45, line: 492, baseType: !117, size: 64, offset: 7616)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !945, file: !45, line: 493, baseType: !7, size: 32, offset: 7680)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !945, file: !45, line: 495, baseType: !117, size: 64, offset: 7744)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !945, file: !45, line: 496, baseType: !7, size: 32, offset: 7808)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !945, file: !45, line: 499, baseType: !7, size: 32, offset: 7840)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !945, file: !45, line: 500, baseType: !1171, size: 64, offset: 7872)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1173, line: 45, baseType: !1174)
!1173 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !945, file: !45, line: 503, baseType: !7, size: 32, offset: 7936)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !945, file: !45, line: 504, baseType: !1177, size: 64, offset: 8000)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1180, line: 96, size: 192, elements: !1181)
!1180 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1181 = !{!1182, !1183, !1243, !1246}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1179, file: !1180, line: 97, baseType: !7, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1179, file: !1180, line: 98, baseType: !1184, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1180, line: 24, size: 3072, elements: !1186)
!1186 = !{!1187, !1189, !1190, !1191, !1192, !1206, !1207, !1208, !1209, !1227, !1228, !1229, !1240, !1241, !1242}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1185, file: !1180, line: 26, baseType: !1188, size: 128)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 128, elements: !1100)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1185, file: !1180, line: 27, baseType: !1188, size: 128, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1185, file: !1180, line: 28, baseType: !78, size: 32, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1185, file: !1180, line: 31, baseType: !230, size: 32, align: 512, offset: 512)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1185, file: !1180, line: 32, baseType: !1193, size: 960, offset: 576)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1194, line: 206, size: 960, elements: !1195)
!1194 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1195 = !{!1196, !1197, !1200, !1202, !1203, !1205}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1193, file: !1194, line: 207, baseType: !404, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1193, file: !1194, line: 208, baseType: !1198, size: 256, offset: 64)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1199, size: 256, elements: !533)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1193, file: !1194, line: 209, baseType: !1201, size: 256, offset: 320)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 256, elements: !533)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1193, file: !1194, line: 213, baseType: !331, size: 64, offset: 576)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1193, file: !1194, line: 215, baseType: !1204, size: 256, offset: 640)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 256, elements: !533)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1193, file: !1194, line: 216, baseType: !118, size: 8, offset: 896)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1185, file: !1180, line: 33, baseType: !152, size: 64, offset: 1536)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1185, file: !1180, line: 34, baseType: !152, size: 64, offset: 1600)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1185, file: !1180, line: 35, baseType: !199, size: 8, offset: 1664)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1185, file: !1180, line: 36, baseType: !1210, size: 320, offset: 1728)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1211, line: 11, size: 320, elements: !1212)
!1211 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1212 = !{!1213, !1220, !1221, !1226}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1210, file: !1211, line: 16, baseType: !1214, size: 128)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !158, line: 198, size: 128, elements: !1215)
!1215 = !{!1216, !1218}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1214, file: !158, line: 199, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1214, file: !158, line: 199, baseType: !1219, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1210, file: !1211, line: 17, baseType: !152, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1210, file: !1211, line: 18, baseType: !1222, size: 64, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !1225}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1210, file: !1211, line: 19, baseType: !164, size: 32, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1185, file: !1180, line: 37, baseType: !614, size: 256, offset: 2048)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1185, file: !1180, line: 38, baseType: !401, size: 128, align: 64, offset: 2304)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1185, file: !1180, line: 39, baseType: !1230, size: 64, offset: 2432)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1180, line: 49, size: 768, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1238, !1239}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1231, file: !1180, line: 50, baseType: !230, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1231, file: !1180, line: 51, baseType: !1201, size: 256, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1231, file: !1180, line: 53, baseType: !1201, size: 256, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1231, file: !1180, line: 54, baseType: !152, size: 64, offset: 576)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1231, file: !1180, line: 55, baseType: !1230, size: 64, offset: 640)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1231, file: !1180, line: 56, baseType: !78, size: 32, offset: 704)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1231, file: !1180, line: 57, baseType: !78, size: 32, offset: 736)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1185, file: !1180, line: 40, baseType: !152, size: 64, offset: 2496)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1185, file: !1180, line: 42, baseType: !78, size: 32, offset: 2560)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1185, file: !1180, line: 43, baseType: !1178, size: 64, offset: 2624)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1179, file: !1180, line: 99, baseType: !1244, offset: 128)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1245, line: 211, elements: !431)
!1245 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1179, file: !1180, line: 100, baseType: !1247, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1180, line: 63, size: 3008, elements: !1249)
!1249 = !{!1250, !1251, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1281}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1248, file: !1180, line: 64, baseType: !1230, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1248, file: !1180, line: 65, baseType: !1252, size: 192, offset: 64)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1230, size: 192, elements: !296)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1248, file: !1180, line: 67, baseType: !78, size: 32, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1248, file: !1180, line: 68, baseType: !552, size: 256, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1248, file: !1180, line: 69, baseType: !230, size: 32, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1248, file: !1180, line: 70, baseType: !552, size: 256, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1248, file: !1180, line: 71, baseType: !152, size: 64, offset: 896)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1248, file: !1180, line: 72, baseType: !152, size: 64, offset: 960)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1248, file: !1180, line: 73, baseType: !152, size: 64, offset: 1024)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1248, file: !1180, line: 74, baseType: !152, size: 64, offset: 1088)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1248, file: !1180, line: 75, baseType: !152, size: 64, offset: 1152)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1248, file: !1180, line: 76, baseType: !152, size: 64, offset: 1216)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1248, file: !1180, line: 77, baseType: !152, size: 64, offset: 1280)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1248, file: !1180, line: 78, baseType: !152, size: 64, offset: 1344)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1248, file: !1180, line: 79, baseType: !199, size: 8, offset: 1408)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1248, file: !1180, line: 80, baseType: !152, size: 64, offset: 1472)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1248, file: !1180, line: 81, baseType: !552, size: 256, offset: 1536)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1248, file: !1180, line: 82, baseType: !964, size: 256, offset: 1792)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1248, file: !1180, line: 84, baseType: !250, size: 32, offset: 2048)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1248, file: !1180, line: 87, baseType: !152, size: 64, offset: 2112)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1248, file: !1180, line: 88, baseType: !152, size: 64, offset: 2176)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1248, file: !1180, line: 89, baseType: !1273, size: 704, offset: 2240)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !615, line: 111, size: 704, elements: !1274)
!1274 = !{!1275, !1276, !1277, !1280}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1273, file: !615, line: 112, baseType: !614, size: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1273, file: !615, line: 113, baseType: !1210, size: 320, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1273, file: !615, line: 116, baseType: !1278, size: 64, offset: 576)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !615, line: 18, flags: DIFlagFwdDecl)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1273, file: !615, line: 117, baseType: !78, size: 32, offset: 640)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1248, file: !1180, line: 90, baseType: !1178, size: 64, offset: 2944)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !945, file: !45, line: 515, baseType: !1283, size: 64, offset: 8064)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1285, line: 117, size: 128, elements: !1286)
!1285 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1286 = !{!1287, !1288, !1289}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1284, file: !1285, line: 118, baseType: !531, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1284, file: !1285, line: 119, baseType: !531, size: 32, offset: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1284, file: !1285, line: 120, baseType: !331, size: 64, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !945, file: !45, line: 516, baseType: !7, size: 32, offset: 8128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !945, file: !45, line: 519, baseType: !7, size: 32, offset: 8160)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !945, file: !45, line: 520, baseType: !1293, size: 64, offset: 8192)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !945, file: !45, line: 523, baseType: !1295, size: 64, offset: 8256)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !45, line: 523, flags: DIFlagFwdDecl)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !945, file: !45, line: 524, baseType: !7, size: 32, offset: 8320)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !945, file: !45, line: 525, baseType: !1300, size: 64, offset: 8384)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !45, line: 525, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !945, file: !45, line: 526, baseType: !7, size: 32, offset: 8448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !945, file: !45, line: 533, baseType: !117, size: 64, offset: 8512)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !945, file: !45, line: 534, baseType: !7, size: 32, offset: 8576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !945, file: !45, line: 535, baseType: !151, size: 64, offset: 8640)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !945, file: !45, line: 536, baseType: !7, size: 32, offset: 8704)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !945, file: !45, line: 539, baseType: !78, size: 32, offset: 8736)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !945, file: !45, line: 540, baseType: !1310, size: 64, offset: 8768)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1312, line: 32, size: 64, elements: !1313)
!1312 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1313 = !{!1314, !1315}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1311, file: !1312, line: 33, baseType: !531, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1311, file: !1312, line: 34, baseType: !531, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !945, file: !45, line: 563, baseType: !157, size: 128, offset: 8832)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !945, file: !45, line: 565, baseType: !157, size: 128, offset: 8960)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !945, file: !45, line: 568, baseType: !1319, size: 64, offset: 9088)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{null}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !945, file: !45, line: 570, baseType: !250, size: 32, offset: 9152)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !939, file: !52, line: 101, baseType: !218, size: 64, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !939, file: !52, line: 103, baseType: !199, size: 8, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !939, file: !52, line: 104, baseType: !51, size: 32, offset: 288)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !939, file: !52, line: 106, baseType: !1327, size: 64, offset: 320)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1329)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1330, line: 282, size: 1600, elements: !1331)
!1330 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1331 = !{!1332, !1336, !1337, !1341}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1329, file: !1330, line: 283, baseType: !1333, size: 256)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 256, elements: !1334)
!1334 = !{!1335}
!1335 = !DISubrange(count: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1329, file: !1330, line: 284, baseType: !1333, size: 256, offset: 256)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1329, file: !1330, line: 285, baseType: !1338, size: 1024, offset: 512)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 1024, elements: !1339)
!1339 = !{!1340}
!1340 = !DISubrange(count: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1329, file: !1330, line: 286, baseType: !207, size: 64, offset: 1536)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !939, file: !52, line: 107, baseType: !1343, size: 64, offset: 384)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1345)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1330, line: 217, size: 256, elements: !1346)
!1346 = !{!1347, !1351, !1353, !1354}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1345, file: !1330, line: 218, baseType: !1348, size: 128)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 128, elements: !1349)
!1349 = !{!1350}
!1350 = !DISubrange(count: 16)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1345, file: !1330, line: 219, baseType: !1352, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1330, line: 15, baseType: !152)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1345, file: !1330, line: 220, baseType: !165, size: 32, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1345, file: !1330, line: 221, baseType: !165, size: 32, offset: 224)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !939, file: !52, line: 109, baseType: !898, size: 64, offset: 448)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !939, file: !52, line: 110, baseType: !889, size: 64, offset: 512)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !939, file: !52, line: 111, baseType: !898, size: 64, offset: 576)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !939, file: !52, line: 112, baseType: !889, size: 64, offset: 640)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !939, file: !52, line: 113, baseType: !1360, size: 64, offset: 704)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!78, !867, !1363}
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !70, line: 60, baseType: !1364)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !70, line: 58, size: 32, elements: !1365)
!1365 = !{!1366}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1364, file: !70, line: 59, baseType: !78, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !939, file: !52, line: 114, baseType: !898, size: 64, offset: 768)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !939, file: !52, line: 115, baseType: !346, size: 64, offset: 832)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !939, file: !52, line: 116, baseType: !346, size: 64, offset: 896)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !939, file: !52, line: 118, baseType: !893, size: 64, offset: 960)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !939, file: !52, line: 119, baseType: !889, size: 64, offset: 1024)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !939, file: !52, line: 121, baseType: !1373, size: 64, offset: 1088)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !52, line: 121, flags: DIFlagFwdDecl)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !926, file: !927, line: 88, baseType: !880, size: 64, offset: 384)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !926, file: !927, line: 89, baseType: !898, size: 64, offset: 448)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !926, file: !927, line: 90, baseType: !889, size: 64, offset: 512)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !926, file: !927, line: 91, baseType: !889, size: 64, offset: 576)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !926, file: !927, line: 92, baseType: !889, size: 64, offset: 640)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !926, file: !927, line: 94, baseType: !898, size: 64, offset: 704)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !926, file: !927, line: 95, baseType: !898, size: 64, offset: 768)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !926, file: !927, line: 97, baseType: !1360, size: 64, offset: 832)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !926, file: !927, line: 98, baseType: !898, size: 64, offset: 896)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !926, file: !927, line: 100, baseType: !898, size: 64, offset: 960)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !926, file: !927, line: 102, baseType: !898, size: 64, offset: 1024)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !926, file: !927, line: 103, baseType: !889, size: 64, offset: 1088)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !926, file: !927, line: 105, baseType: !893, size: 64, offset: 1152)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !926, file: !927, line: 107, baseType: !1389, size: 64, offset: 1216)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1391)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !927, line: 107, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !926, file: !927, line: 109, baseType: !199, size: 8, offset: 1280)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !211, file: !58, line: 715, baseType: !938, size: 64, offset: 832)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !211, file: !58, line: 717, baseType: !117, size: 64, offset: 896)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !211, file: !58, line: 719, baseType: !117, size: 64, offset: 960)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !211, file: !58, line: 721, baseType: !552, size: 256, offset: 1024)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !211, file: !58, line: 725, baseType: !1398, size: 448, offset: 1280)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !58, line: 517, size: 448, elements: !1399)
!1399 = !{!1400, !1401, !1402, !1403}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1398, file: !58, line: 518, baseType: !157, size: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1398, file: !58, line: 519, baseType: !157, size: 128, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1398, file: !58, line: 520, baseType: !157, size: 128, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1398, file: !58, line: 521, baseType: !57, size: 32, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !211, file: !58, line: 726, baseType: !1405, size: 2496, offset: 1728)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !70, line: 663, size: 2496, elements: !1406)
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1451, !1452, !1453, !1454, !1455, !1456, !1527, !1528, !1529, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1567, !1571}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1405, file: !70, line: 664, baseType: !1363, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1405, file: !70, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1405, file: !70, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1405, file: !70, line: 667, baseType: !199, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1405, file: !70, line: 668, baseType: !199, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1405, file: !70, line: 669, baseType: !199, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1405, file: !70, line: 670, baseType: !199, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1405, file: !70, line: 671, baseType: !199, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1405, file: !70, line: 672, baseType: !199, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1405, file: !70, line: 673, baseType: !199, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1405, file: !70, line: 674, baseType: !199, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1405, file: !70, line: 675, baseType: !164, size: 32, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1405, file: !70, line: 676, baseType: !230, size: 32, offset: 96)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1405, file: !70, line: 678, baseType: !157, size: 128, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1405, file: !70, line: 679, baseType: !964, size: 256, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1405, file: !70, line: 680, baseType: !1423, size: 64, offset: 512)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1425, line: 43, size: 1536, elements: !1426)
!1425 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1434, !1435, !1436, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1424, file: !1425, line: 44, baseType: !218, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1424, file: !1425, line: 45, baseType: !78, size: 32, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1424, file: !1425, line: 46, baseType: !157, size: 128, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1424, file: !1425, line: 47, baseType: !230, size: 32, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1424, file: !1425, line: 48, baseType: !1432, size: 64, offset: 320)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !70, line: 629, flags: DIFlagFwdDecl)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1424, file: !1425, line: 49, baseType: !1210, size: 320, offset: 384)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1424, file: !1425, line: 50, baseType: !152, size: 64, offset: 704)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1424, file: !1425, line: 51, baseType: !1437, size: 64, offset: 768)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1438, line: 29, baseType: !470)
!1438 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1424, file: !1425, line: 52, baseType: !1437, size: 64, offset: 832)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1424, file: !1425, line: 53, baseType: !1437, size: 64, offset: 896)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1424, file: !1425, line: 54, baseType: !1437, size: 64, offset: 960)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1424, file: !1425, line: 55, baseType: !1437, size: 64, offset: 1024)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1424, file: !1425, line: 56, baseType: !152, size: 64, offset: 1088)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1424, file: !1425, line: 57, baseType: !152, size: 64, offset: 1152)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1424, file: !1425, line: 58, baseType: !152, size: 64, offset: 1216)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1424, file: !1425, line: 59, baseType: !152, size: 64, offset: 1280)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1424, file: !1425, line: 60, baseType: !152, size: 64, offset: 1344)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1424, file: !1425, line: 61, baseType: !867, size: 64, offset: 1408)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1424, file: !1425, line: 62, baseType: !199, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1424, file: !1425, line: 63, baseType: !199, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1405, file: !70, line: 681, baseType: !199, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1405, file: !70, line: 682, baseType: !199, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1405, file: !70, line: 683, baseType: !199, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1405, file: !70, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1405, file: !70, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1405, file: !70, line: 690, baseType: !1457, size: 512, offset: 640)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !65, line: 118, size: 512, elements: !1458)
!1458 = !{!1459, !1465, !1466, !1471, !1523, !1524, !1525, !1526}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1457, file: !65, line: 119, baseType: !1460, size: 256)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1461, line: 9, size: 256, elements: !1462)
!1461 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1460, file: !1461, line: 10, baseType: !653, size: 192, align: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1460, file: !1461, line: 11, baseType: !1437, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1457, file: !65, line: 120, baseType: !1437, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1457, file: !65, line: 121, baseType: !1467, size: 64, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!64, !1470}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1457, file: !65, line: 122, baseType: !1472, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !65, line: 159, size: 512, align: 512, elements: !1474)
!1474 = !{!1475, !1500, !1501, !1504, !1509, !1510, !1518, !1522}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1473, file: !65, line: 160, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !65, line: 215, size: 4608, align: 512, elements: !1478)
!1478 = !{!1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1477, file: !65, line: 216, baseType: !486, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1477, file: !65, line: 217, baseType: !7, size: 32, offset: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1477, file: !65, line: 218, baseType: !7, size: 32, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1477, file: !65, line: 219, baseType: !7, size: 32, offset: 96)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1477, file: !65, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1477, file: !65, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1477, file: !65, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1477, file: !65, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1477, file: !65, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1477, file: !65, line: 226, baseType: !7, size: 32, offset: 160)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1477, file: !65, line: 227, baseType: !265, size: 16, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1477, file: !65, line: 228, baseType: !265, size: 16, offset: 208)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1477, file: !65, line: 229, baseType: !7, size: 32, offset: 224)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1477, file: !65, line: 235, baseType: !1437, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1477, file: !65, line: 236, baseType: !1470, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1477, file: !65, line: 237, baseType: !1437, size: 64, offset: 384)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1477, file: !65, line: 238, baseType: !1470, size: 64, offset: 448)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1477, file: !65, line: 239, baseType: !1497, size: 4096, align: 512, offset: 512)
!1497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1473, size: 4096, align: 512, elements: !1498)
!1498 = !{!1499}
!1499 = !DISubrange(count: 8)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1473, file: !65, line: 161, baseType: !7, size: 32, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1473, file: !65, line: 162, baseType: !1502, size: 32, offset: 96)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !158, line: 32, baseType: !1503)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !329, line: 96, baseType: !78)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1473, file: !65, line: 163, baseType: !1505, size: 32, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !501, line: 274, baseType: !1506)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !501, line: 274, size: 32, elements: !1507)
!1507 = !{!1508}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1506, file: !501, line: 274, baseType: !500, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1473, file: !65, line: 164, baseType: !1470, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1473, file: !65, line: 165, baseType: !1511, size: 128, offset: 256)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1461, line: 14, size: 128, elements: !1512)
!1512 = !{!1513}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1511, file: !1461, line: 15, baseType: !1514, size: 128)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !654, line: 26, size: 128, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1514, file: !654, line: 27, baseType: !756, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1514, file: !654, line: 28, baseType: !658, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1473, file: !65, line: 166, baseType: !1519, size: 64, offset: 384)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!1437}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1473, file: !65, line: 167, baseType: !1437, size: 64, offset: 448)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1457, file: !65, line: 123, baseType: !118, size: 8, offset: 448)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1457, file: !65, line: 124, baseType: !118, size: 8, offset: 456)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1457, file: !65, line: 125, baseType: !118, size: 8, offset: 464)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1457, file: !65, line: 126, baseType: !118, size: 8, offset: 472)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1405, file: !70, line: 691, baseType: !458, size: 64, offset: 1152)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1405, file: !70, line: 692, baseType: !614, size: 256, offset: 1216)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1405, file: !70, line: 693, baseType: !1530, size: 192, offset: 1472)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1531, line: 41, baseType: !1532)
!1531 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1531, line: 37, size: 192, elements: !1533)
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1532, file: !1531, line: 38, baseType: !230, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1532, file: !1531, line: 39, baseType: !157, size: 128, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1405, file: !70, line: 694, baseType: !1432, size: 64, offset: 1664)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1405, file: !70, line: 695, baseType: !250, size: 32, offset: 1728)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1405, file: !70, line: 696, baseType: !250, size: 32, offset: 1760)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1405, file: !70, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1405, file: !70, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1405, file: !70, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1405, file: !70, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1405, file: !70, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1405, file: !70, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1405, file: !70, line: 703, baseType: !199, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1405, file: !70, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1405, file: !70, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1405, file: !70, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1405, file: !70, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1405, file: !70, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1405, file: !70, line: 709, baseType: !7, size: 32, offset: 1824)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1405, file: !70, line: 710, baseType: !69, size: 32, offset: 1856)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1405, file: !70, line: 711, baseType: !77, size: 32, offset: 1888)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1405, file: !70, line: 712, baseType: !77, size: 32, offset: 1920)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1405, file: !70, line: 713, baseType: !78, size: 32, offset: 1952)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1405, file: !70, line: 714, baseType: !78, size: 32, offset: 1984)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1405, file: !70, line: 715, baseType: !458, size: 64, offset: 2048)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1405, file: !70, line: 716, baseType: !458, size: 64, offset: 2112)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1405, file: !70, line: 717, baseType: !458, size: 64, offset: 2176)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1405, file: !70, line: 718, baseType: !458, size: 64, offset: 2240)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1405, file: !70, line: 720, baseType: !1562, size: 64, offset: 2304)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !70, line: 632, size: 64, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1563, file: !70, line: 633, baseType: !230, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1563, file: !70, line: 634, baseType: !7, size: 32, offset: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1405, file: !70, line: 721, baseType: !1568, size: 64, offset: 2368)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !867, !531}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1405, file: !70, line: 722, baseType: !1572, size: 64, offset: 2432)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !70, line: 722, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !211, file: !58, line: 727, baseType: !1575, size: 64, offset: 4224)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !70, line: 742, size: 1792, elements: !1577)
!1577 = !{!1578, !1579, !1580, !1584, !1585, !1586}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1576, file: !70, line: 743, baseType: !895, size: 1472)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1576, file: !70, line: 744, baseType: !898, size: 64, offset: 1472)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1576, file: !70, line: 745, baseType: !1581, size: 64, offset: 1536)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{null, !867, !199}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1576, file: !70, line: 746, baseType: !898, size: 64, offset: 1600)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1576, file: !70, line: 747, baseType: !889, size: 64, offset: 1664)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1576, file: !70, line: 748, baseType: !889, size: 64, offset: 1728)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !211, file: !58, line: 736, baseType: !1588, size: 128, offset: 4288)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !58, line: 529, size: 128, elements: !1589)
!1589 = !{!1590, !1594}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1588, file: !58, line: 531, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1593, line: 13, flags: DIFlagFwdDecl)
!1593 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1588, file: !58, line: 532, baseType: !1595, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !58, line: 49, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !211, file: !58, line: 738, baseType: !1598, size: 64, offset: 4416)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1600)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !58, line: 738, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !211, file: !58, line: 740, baseType: !1602, size: 64, offset: 4480)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !211, file: !58, line: 741, baseType: !458, size: 64, offset: 4544)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !211, file: !58, line: 746, baseType: !458, size: 64, offset: 4608)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !211, file: !58, line: 747, baseType: !1606, size: 64, offset: 4672)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1608)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !58, line: 747, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !211, file: !58, line: 749, baseType: !1610, size: 64, offset: 4736)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !58, line: 428, size: 128, elements: !1612)
!1612 = !{!1613, !1614, !1615}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1611, file: !58, line: 433, baseType: !7, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1611, file: !58, line: 434, baseType: !7, size: 32, offset: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1611, file: !58, line: 435, baseType: !152, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !211, file: !58, line: 751, baseType: !157, size: 128, offset: 4800)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !211, file: !58, line: 762, baseType: !1618, size: 64, offset: 4928)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !58, line: 762, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !211, file: !58, line: 770, baseType: !1621, offset: 4992)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1622, line: 5, elements: !431)
!1622 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !211, file: !58, line: 772, baseType: !1624, size: 64, offset: 4992)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1626, line: 18, flags: DIFlagFwdDecl)
!1626 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !211, file: !58, line: 773, baseType: !181, size: 64, offset: 5056)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !211, file: !58, line: 776, baseType: !78, size: 32, offset: 5120)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !211, file: !58, line: 778, baseType: !1630, size: 32, offset: 5152)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !158, line: 21, baseType: !1631)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !158, line: 18, baseType: !164)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !211, file: !58, line: 779, baseType: !164, size: 32, offset: 5184)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !211, file: !58, line: 781, baseType: !230, size: 32, offset: 5216)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !211, file: !58, line: 782, baseType: !157, size: 128, offset: 5248)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !211, file: !58, line: 784, baseType: !1636, size: 64, offset: 5376)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1638)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1639, line: 52, size: 768, elements: !1640)
!1639 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1649, !1653, !1654, !1655, !1656, !1660, !1664}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1638, file: !1639, line: 53, baseType: !218, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1638, file: !1639, line: 55, baseType: !346, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1638, file: !1639, line: 56, baseType: !346, size: 64, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1638, file: !1639, line: 58, baseType: !880, size: 64, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1638, file: !1639, line: 59, baseType: !1646, size: 64, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!295, !209, !887}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1638, file: !1639, line: 61, baseType: !1650, size: 64, offset: 320)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{null, !1636}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1638, file: !1639, line: 62, baseType: !889, size: 64, offset: 384)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1638, file: !1639, line: 64, baseType: !898, size: 64, offset: 448)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1638, file: !1639, line: 66, baseType: !686, size: 64, offset: 512)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1638, file: !1639, line: 67, baseType: !1657, size: 64, offset: 576)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!207, !209}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1638, file: !1639, line: 69, baseType: !1661, size: 64, offset: 640)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{null, !209, !721, !729}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1638, file: !1639, line: 71, baseType: !893, size: 64, offset: 704)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !211, file: !58, line: 785, baseType: !346, size: 64, offset: 5440)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !211, file: !58, line: 787, baseType: !889, size: 64, offset: 5504)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !211, file: !58, line: 788, baseType: !1668, size: 64, offset: 5568)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !58, line: 46, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !211, file: !58, line: 789, baseType: !1671, size: 64, offset: 5632)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !58, line: 48, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !211, file: !58, line: 791, baseType: !1674, size: 64, offset: 5696)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !58, line: 597, size: 128, elements: !1676)
!1676 = !{!1677, !1678, !1679, !1680, !1681}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1675, file: !58, line: 598, baseType: !85, size: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1675, file: !58, line: 599, baseType: !94, size: 32, offset: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1675, file: !58, line: 600, baseType: !99, size: 32, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1675, file: !58, line: 601, baseType: !199, size: 8, offset: 96)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1675, file: !58, line: 602, baseType: !199, size: 8, offset: 104)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !211, file: !58, line: 793, baseType: !104, size: 32, offset: 5760)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !211, file: !58, line: 795, baseType: !199, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !211, file: !58, line: 796, baseType: !199, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !211, file: !58, line: 797, baseType: !199, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !211, file: !58, line: 798, baseType: !199, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !211, file: !58, line: 799, baseType: !199, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !185, file: !178, line: 131, baseType: !196, size: 64, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !185, file: !178, line: 133, baseType: !1690, size: 64, offset: 320)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!110, !201}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !185, file: !178, line: 134, baseType: !1694, size: 64, offset: 384)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!199, !201, !218}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !185, file: !178, line: 136, baseType: !1698, size: 64, offset: 448)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!78, !201, !218, !7, !117, !342}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !185, file: !178, line: 141, baseType: !1702, size: 64, offset: 512)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!78, !201, !218, !1293, !342}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !185, file: !178, line: 144, baseType: !1706, size: 64, offset: 576)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!218, !201}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !185, file: !178, line: 145, baseType: !1706, size: 64, offset: 640)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !185, file: !178, line: 146, baseType: !1711, size: 64, offset: 704)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!181, !201}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !185, file: !178, line: 148, baseType: !1715, size: 64, offset: 768)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!181, !201, !181}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !185, file: !178, line: 151, baseType: !1719, size: 64, offset: 832)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!181, !201, !218}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !185, file: !178, line: 153, baseType: !1723, size: 64, offset: 896)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!78, !201, !218, !218, !7, !7, !1726}
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !178, line: 94, size: 640, elements: !1728)
!1728 = !{!1729, !1730, !1731}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1727, file: !178, line: 95, baseType: !181, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1727, file: !178, line: 96, baseType: !7, size: 32, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1727, file: !178, line: 97, baseType: !1732, size: 512, offset: 128)
!1732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 512, elements: !1498)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !185, file: !178, line: 158, baseType: !1715, size: 64, offset: 960)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !185, file: !178, line: 161, baseType: !1711, size: 64, offset: 1024)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !185, file: !178, line: 163, baseType: !188, size: 64, offset: 1088)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !185, file: !178, line: 164, baseType: !1737, size: 64, offset: 1152)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!78, !201, !1740}
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !178, line: 73, size: 128, elements: !1742)
!1742 = !{!1743, !1744, !1745}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1741, file: !178, line: 74, baseType: !7, size: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1741, file: !178, line: 75, baseType: !7, size: 32, offset: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1741, file: !178, line: 76, baseType: !201, size: 64, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !185, file: !178, line: 166, baseType: !1747, size: 64, offset: 1216)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!117, !181, !78}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !185, file: !178, line: 167, baseType: !1751, size: 64, offset: 1280)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!78, !201, !7}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !185, file: !178, line: 168, baseType: !1755, size: 64, offset: 1344)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!78, !181}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !177, file: !178, line: 44, baseType: !867, size: 64, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !177, file: !178, line: 45, baseType: !157, size: 128, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !177, file: !178, line: 46, baseType: !157, size: 128, offset: 320)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !177, file: !178, line: 47, baseType: !118, size: 8, offset: 448)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !169, file: !170, line: 372, baseType: !157, size: 128, offset: 640)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !169, file: !170, line: 373, baseType: !157, size: 128, offset: 768)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !169, file: !170, line: 374, baseType: !1765, size: 32, offset: 896)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !170, line: 181, size: 32, elements: !1766)
!1766 = !{!1767, !1768, !1769, !1770, !1771, !1772}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !1765, file: !170, line: 182, baseType: !164, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1765, file: !170, line: 183, baseType: !164, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !1765, file: !170, line: 184, baseType: !164, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !1765, file: !170, line: 185, baseType: !164, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !1765, file: !170, line: 186, baseType: !164, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1765, file: !170, line: 187, baseType: !164, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !169, file: !170, line: 375, baseType: !1774, size: 32, offset: 928)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !170, line: 192, size: 32, elements: !1775)
!1775 = !{!1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !1774, file: !170, line: 193, baseType: !164, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1774, file: !170, line: 194, baseType: !164, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !1774, file: !170, line: 195, baseType: !164, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !1774, file: !170, line: 196, baseType: !164, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !1774, file: !170, line: 197, baseType: !164, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1774, file: !170, line: 198, baseType: !164, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1774, file: !170, line: 199, baseType: !164, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !1774, file: !170, line: 200, baseType: !164, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !1774, file: !170, line: 201, baseType: !164, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !1774, file: !170, line: 202, baseType: !164, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !1774, file: !170, line: 203, baseType: !164, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !1774, file: !170, line: 204, baseType: !164, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !1774, file: !170, line: 205, baseType: !164, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !1774, file: !170, line: 206, baseType: !164, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1774, file: !170, line: 207, baseType: !164, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !169, file: !170, line: 376, baseType: !1792, size: 960, offset: 960)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !170, line: 238, size: 960, elements: !1793)
!1793 = !{!1794, !1797, !1798, !1806, !1808, !1809, !1810, !1815, !1820}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !1792, file: !170, line: 239, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !170, line: 220, baseType: !1796)
!1796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 64, elements: !1498)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !1792, file: !170, line: 240, baseType: !78, size: 32, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1792, file: !170, line: 241, baseType: !1799, size: 32, offset: 96)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !170, line: 230, size: 32, elements: !1800)
!1800 = !{!1801, !1802, !1803, !1804, !1805}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !1799, file: !170, line: 231, baseType: !164, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1799, file: !170, line: 232, baseType: !164, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !1799, file: !170, line: 233, baseType: !164, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !1799, file: !170, line: 234, baseType: !164, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1799, file: !170, line: 235, baseType: !164, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1792, file: !170, line: 242, baseType: !1807, size: 64, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !170, line: 221, baseType: !458)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !1792, file: !170, line: 243, baseType: !295, size: 64, offset: 192)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1792, file: !170, line: 244, baseType: !157, size: 128, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !1792, file: !170, line: 245, baseType: !1811, size: 320, offset: 384)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !170, line: 222, baseType: !1812)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 320, elements: !1813)
!1813 = !{!1814}
!1814 = !DISubrange(count: 40)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !1792, file: !170, line: 246, baseType: !1816, size: 160, offset: 704)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !170, line: 223, baseType: !1817)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 160, elements: !1818)
!1818 = !{!1819}
!1819 = !DISubrange(count: 20)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !1792, file: !170, line: 247, baseType: !1821, size: 64, offset: 896)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !163, line: 908, size: 192, elements: !1823)
!1823 = !{!1824, !1826, !1831, !1837, !1844, !1850, !1856, !1864}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1822, file: !163, line: 909, baseType: !1825, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !163, line: 644, baseType: !164)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1822, file: !163, line: 913, baseType: !1827, size: 128)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1822, file: !163, line: 910, size: 128, elements: !1828)
!1828 = !{!1829, !1830}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1827, file: !163, line: 911, baseType: !1825, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1827, file: !163, line: 912, baseType: !458, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1822, file: !163, line: 919, baseType: !1832, size: 128)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1822, file: !163, line: 915, size: 128, elements: !1833)
!1833 = !{!1834, !1835, !1836}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1832, file: !163, line: 916, baseType: !1825, size: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1832, file: !163, line: 917, baseType: !164, size: 32, offset: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1832, file: !163, line: 918, baseType: !295, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1822, file: !163, line: 925, baseType: !1838, size: 128)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1822, file: !163, line: 921, size: 128, elements: !1839)
!1839 = !{!1840, !1841, !1842}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1838, file: !163, line: 922, baseType: !1825, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1838, file: !163, line: 923, baseType: !164, size: 32, offset: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1838, file: !163, line: 924, baseType: !1843, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1822, file: !163, line: 931, baseType: !1845, size: 128)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1822, file: !163, line: 927, size: 128, elements: !1846)
!1846 = !{!1847, !1848, !1849}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1845, file: !163, line: 928, baseType: !1825, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1845, file: !163, line: 929, baseType: !164, size: 32, offset: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1845, file: !163, line: 930, baseType: !1821, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1822, file: !163, line: 937, baseType: !1851, size: 128)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1822, file: !163, line: 933, size: 128, elements: !1852)
!1852 = !{!1853, !1854, !1855}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1851, file: !163, line: 934, baseType: !1825, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !1851, file: !163, line: 935, baseType: !1825, size: 32, offset: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1851, file: !163, line: 936, baseType: !175, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1822, file: !163, line: 944, baseType: !1857, size: 192)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1822, file: !163, line: 939, size: 192, elements: !1858)
!1858 = !{!1859, !1860, !1861, !1863}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1857, file: !163, line: 940, baseType: !1825, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1857, file: !163, line: 941, baseType: !164, size: 32, offset: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !1857, file: !163, line: 942, baseType: !1862, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !163, line: 128, baseType: !458)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !1857, file: !163, line: 943, baseType: !164, size: 32, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1822, file: !163, line: 950, baseType: !1865, size: 96)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1822, file: !163, line: 946, size: 96, elements: !1866)
!1866 = !{!1867, !1868, !1869}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1865, file: !163, line: 947, baseType: !1825, size: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1865, file: !163, line: 948, baseType: !164, size: 32, offset: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1865, file: !163, line: 949, baseType: !164, size: 32, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !169, file: !170, line: 377, baseType: !1871, size: 1408, offset: 1920)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !170, line: 280, size: 1408, elements: !1872)
!1872 = !{!1873, !1874, !1884, !1899}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1871, file: !170, line: 281, baseType: !78, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1871, file: !170, line: 282, baseType: !1875, size: 32, offset: 32)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !170, line: 259, size: 32, elements: !1876)
!1876 = !{!1877, !1878, !1879, !1880, !1881, !1882, !1883}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !1875, file: !170, line: 260, baseType: !164, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !1875, file: !170, line: 261, baseType: !164, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !1875, file: !170, line: 262, baseType: !164, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !1875, file: !170, line: 263, baseType: !164, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !1875, file: !170, line: 264, baseType: !164, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !1875, file: !170, line: 265, baseType: !164, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1875, file: !170, line: 266, baseType: !164, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1871, file: !170, line: 283, baseType: !1885, size: 1280, offset: 64)
!1885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1886, size: 1280, elements: !1897)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !170, line: 269, size: 256, elements: !1887)
!1887 = !{!1888, !1894, !1895, !1896}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1886, file: !170, line: 274, baseType: !1889, size: 8)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1886, file: !170, line: 270, size: 8, elements: !1890)
!1890 = !{!1891, !1892, !1893}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1889, file: !170, line: 271, baseType: !118, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !1889, file: !170, line: 272, baseType: !118, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1889, file: !170, line: 273, baseType: !118, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1886, file: !170, line: 275, baseType: !78, size: 32, offset: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1886, file: !170, line: 276, baseType: !78, size: 32, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1886, file: !170, line: 277, baseType: !157, size: 128, offset: 128)
!1897 = !{!1898}
!1898 = !DISubrange(count: 5)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !1871, file: !170, line: 284, baseType: !118, size: 8, offset: 1344)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !169, file: !170, line: 378, baseType: !1901, size: 640, offset: 3328)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !170, line: 330, size: 640, elements: !1902)
!1902 = !{!1903, !1904, !1905, !1906, !1907, !1912, !1921, !1922, !1923}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1901, file: !170, line: 331, baseType: !175, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1901, file: !170, line: 332, baseType: !458, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !1901, file: !170, line: 333, baseType: !458, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1901, file: !170, line: 334, baseType: !157, size: 128, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1901, file: !170, line: 335, baseType: !1908, size: 8, offset: 320)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !170, line: 320, size: 8, elements: !1909)
!1909 = !{!1910, !1911}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1908, file: !170, line: 321, baseType: !118, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !1908, file: !170, line: 322, baseType: !118, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1901, file: !170, line: 336, baseType: !1913, size: 128, offset: 384)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !170, line: 325, size: 128, elements: !1914)
!1914 = !{!1915, !1920}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1913, file: !170, line: 326, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !1919}
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1913, file: !170, line: 327, baseType: !867, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1901, file: !170, line: 337, baseType: !1423, size: 64, offset: 512)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !1901, file: !170, line: 338, baseType: !78, size: 32, offset: 576)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !1901, file: !170, line: 339, baseType: !78, size: 32, offset: 608)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !169, file: !170, line: 379, baseType: !1925, size: 192, offset: 3968)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !170, line: 312, size: 192, elements: !1926)
!1926 = !{!1927, !1928, !1932, !1933}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1925, file: !170, line: 313, baseType: !78, size: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1925, file: !170, line: 314, baseType: !1929, size: 8, offset: 32)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !170, line: 298, size: 8, elements: !1930)
!1930 = !{!1931}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1929, file: !170, line: 299, baseType: !118, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1925, file: !170, line: 315, baseType: !78, size: 32, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1925, file: !170, line: 316, baseType: !1934, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !170, line: 302, size: 64, elements: !1936)
!1936 = !{!1937, !1942, !1943, !1944}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1935, file: !170, line: 306, baseType: !1938, size: 8)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !170, line: 303, size: 8, elements: !1939)
!1939 = !{!1940, !1941}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1938, file: !170, line: 304, baseType: !118, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1938, file: !170, line: 305, baseType: !118, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1935, file: !170, line: 307, baseType: !118, size: 8, offset: 8)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1935, file: !170, line: 308, baseType: !118, size: 8, offset: 16)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1935, file: !170, line: 309, baseType: !78, size: 32, offset: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !169, file: !170, line: 380, baseType: !1946, size: 64, offset: 4160)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !170, line: 212, size: 64, elements: !1947)
!1947 = !{!1948}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1946, file: !170, line: 213, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !170, line: 86, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !169, file: !170, line: 381, baseType: !1952, size: 384, offset: 4224)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !170, line: 357, size: 384, elements: !1953)
!1953 = !{!1954, !1957, !1958, !1959}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1952, file: !170, line: 358, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1822)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1952, file: !170, line: 359, baseType: !157, size: 128, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !1952, file: !170, line: 360, baseType: !1955, size: 64, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !1952, file: !170, line: 361, baseType: !157, size: 128, offset: 256)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !169, file: !170, line: 382, baseType: !1961, size: 64, offset: 4608)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !170, line: 124, size: 1216, elements: !1963)
!1963 = !{!1964, !1965, !1966, !1971, !1975, !1979, !1980, !1981}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1962, file: !170, line: 125, baseType: !1343, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1962, file: !170, line: 126, baseType: !157, size: 128, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1962, file: !170, line: 127, baseType: !1967, size: 64, offset: 192)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!199, !218, !1970}
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !1962, file: !170, line: 128, baseType: !1972, size: 64, offset: 256)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!78, !168, !1343}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1962, file: !170, line: 129, baseType: !1976, size: 64, offset: 320)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null, !168}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1962, file: !170, line: 130, baseType: !889, size: 64, offset: 384)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1962, file: !170, line: 131, baseType: !889, size: 64, offset: 448)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !1962, file: !170, line: 132, baseType: !1982, size: 704, offset: 512)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !170, line: 110, size: 704, elements: !1983)
!1983 = !{!1984, !1985, !1989, !1990, !1991}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1982, file: !170, line: 111, baseType: !214, size: 512)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !1982, file: !170, line: 112, baseType: !1986, size: 64, offset: 512)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!78, !168}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !1982, file: !170, line: 113, baseType: !1976, size: 64, offset: 576)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1982, file: !170, line: 114, baseType: !199, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !1982, file: !170, line: 115, baseType: !199, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !169, file: !170, line: 383, baseType: !1993, size: 64, offset: 4672)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !170, line: 140, size: 256, elements: !1995)
!1995 = !{!1996, !1997, !2001, !2005}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1994, file: !170, line: 141, baseType: !168, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1994, file: !170, line: 142, baseType: !1998, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!78, !168, !164}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1994, file: !170, line: 143, baseType: !2002, size: 64, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{null, !168, !164}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1994, file: !170, line: 144, baseType: !1976, size: 64, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !169, file: !170, line: 384, baseType: !2007, size: 64, offset: 4736)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2009)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !170, line: 364, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !169, file: !170, line: 385, baseType: !117, size: 64, offset: 4800)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !169, file: !170, line: 386, baseType: !211, size: 5824, offset: 4864)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !169, file: !170, line: 387, baseType: !7, size: 32, offset: 10688)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !169, file: !170, line: 388, baseType: !7, size: 32, offset: 10720)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !169, file: !170, line: 389, baseType: !157, size: 128, offset: 10752)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !169, file: !170, line: 390, baseType: !552, size: 256, offset: 10880)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !169, file: !170, line: 391, baseType: !1976, size: 64, offset: 11136)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource_entry", file: !2019, line: 23, size: 768, elements: !2020)
!2019 = !DIFile(filename: "./include/linux/resource_ext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "38257f3d7ebf1230f659bba39b1a0b6a")
!2020 = !{!2021, !2022, !2036, !2037}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2018, file: !2019, line: 24, baseType: !157, size: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !2018, file: !2019, line: 25, baseType: !2023, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !372, line: 21, size: 512, elements: !2025)
!2025 = !{!2026, !2029, !2030, !2031, !2032, !2033, !2034, !2035}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2024, file: !372, line: 22, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !158, line: 164, baseType: !2028)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !158, line: 159, baseType: !458)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2024, file: !372, line: 23, baseType: !2027, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2024, file: !372, line: 24, baseType: !218, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2024, file: !372, line: 25, baseType: !152, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2024, file: !372, line: 26, baseType: !152, size: 64, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2024, file: !372, line: 27, baseType: !2023, size: 64, offset: 320)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2024, file: !372, line: 27, baseType: !2023, size: 64, offset: 384)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2024, file: !372, line: 27, baseType: !2023, size: 64, offset: 448)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2018, file: !2019, line: 26, baseType: !2027, size: 64, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "__res", scope: !2018, file: !2019, line: 27, baseType: !2024, size: 512, offset: 256)
!2038 = !{!0, !2039, !2041, !2043, !2045, !2047, !2049, !2051, !2053, !2056, !2058, !2060, !2062, !2064, !2066, !2071, !2076, !2078, !2083, !2086, !2088, !2090, !2122, !2127, !2129, !2131, !2134, !2139, !2141, !2143, !2145, !2150, !2152, !2154, !2156, !2158, !2163, !2166, !2169, !2171, !2173, !2176, !2181, !2183}
!2039 = !DIGlobalVariableExpression(var: !2040, expr: !DIExpression())
!2040 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_resource_io207", scope: !2, file: !3, line: 204, type: !117, isLocal: true, isDefinition: true)
!2041 = !DIGlobalVariableExpression(var: !2042, expr: !DIExpression())
!2042 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_resource_address_space208", scope: !2, file: !3, line: 301, type: !117, isLocal: true, isDefinition: true)
!2043 = !DIGlobalVariableExpression(var: !2044, expr: !DIExpression())
!2044 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_resource_ext_address_space209", scope: !2, file: !3, line: 332, type: !117, isLocal: true, isDefinition: true)
!2045 = !DIGlobalVariableExpression(var: !2046, expr: !DIExpression())
!2046 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_irq_flags210", scope: !2, file: !3, line: 360, type: !117, isLocal: true, isDefinition: true)
!2047 = !DIGlobalVariableExpression(var: !2048, expr: !DIExpression())
!2048 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_get_irq_type211", scope: !2, file: !3, line: 386, type: !117, isLocal: true, isDefinition: true)
!2049 = !DIGlobalVariableExpression(var: !2050, expr: !DIExpression())
!2050 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_resource_interrupt212", scope: !2, file: !3, line: 826, type: !117, isLocal: true, isDefinition: true)
!2051 = !DIGlobalVariableExpression(var: !2052, expr: !DIExpression())
!2052 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_free_resource_list213", scope: !2, file: !3, line: 836, type: !117, isLocal: true, isDefinition: true)
!2053 = !DIGlobalVariableExpression(var: !2054, expr: !DIExpression())
!2054 = distinct !DIGlobalVariable(scope: null, file: !3, line: 960, type: !2055, isLocal: true, isDefinition: true)
!2055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 40, elements: !1897)
!2056 = !DIGlobalVariableExpression(var: !2057, expr: !DIExpression())
!2057 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_get_resources214", scope: !2, file: !3, line: 962, type: !117, isLocal: true, isDefinition: true)
!2058 = !DIGlobalVariableExpression(var: !2059, expr: !DIExpression())
!2059 = distinct !DIGlobalVariable(scope: null, file: !3, line: 998, type: !2055, isLocal: true, isDefinition: true)
!2060 = !DIGlobalVariableExpression(var: !2061, expr: !DIExpression())
!2061 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_get_dma_resources215", scope: !2, file: !3, line: 1000, type: !117, isLocal: true, isDefinition: true)
!2062 = !DIGlobalVariableExpression(var: !2063, expr: !DIExpression())
!2063 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_get_memory_resources216", scope: !2, file: !3, line: 1017, type: !117, isLocal: true, isDefinition: true)
!2064 = !DIGlobalVariableExpression(var: !2065, expr: !DIExpression())
!2065 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_filter_resource_type217", scope: !2, file: !3, line: 1072, type: !117, isLocal: true, isDefinition: true)
!2066 = !DIGlobalVariableExpression(var: !2067, expr: !DIExpression())
!2067 = distinct !DIGlobalVariable(scope: null, file: !3, line: 744, type: !2068, isLocal: true, isDefinition: true)
!2068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 312, elements: !2069)
!2069 = !{!2070}
!2070 = !DISubrange(count: 39)
!2071 = !DIGlobalVariableExpression(var: !2072, expr: !DIExpression())
!2072 = distinct !DIGlobalVariable(scope: null, file: !3, line: 744, type: !2073, isLocal: true, isDefinition: true)
!2073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 48, elements: !2074)
!2074 = !{!2075}
!2075 = !DISubrange(count: 6)
!2076 = !DIGlobalVariableExpression(var: !2077, expr: !DIExpression())
!2077 = distinct !DIGlobalVariable(scope: null, file: !3, line: 744, type: !2055, isLocal: true, isDefinition: true)
!2078 = !DIGlobalVariableExpression(var: !2079, expr: !DIExpression())
!2079 = distinct !DIGlobalVariable(scope: null, file: !3, line: 744, type: !2080, isLocal: true, isDefinition: true)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 8, elements: !2081)
!2081 = !{!2082}
!2082 = !DISubrange(count: 1)
!2083 = !DIGlobalVariableExpression(var: !2084, expr: !DIExpression())
!2084 = distinct !DIGlobalVariable(scope: null, file: !3, line: 744, type: !2085, isLocal: true, isDefinition: true)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 32, elements: !533)
!2086 = !DIGlobalVariableExpression(var: !2087, expr: !DIExpression())
!2087 = distinct !DIGlobalVariable(scope: null, file: !3, line: 744, type: !2085, isLocal: true, isDefinition: true)
!2088 = !DIGlobalVariableExpression(var: !2089, expr: !DIExpression())
!2089 = distinct !DIGlobalVariable(scope: null, file: !3, line: 744, type: !2055, isLocal: true, isDefinition: true)
!2090 = !DIGlobalVariableExpression(var: !2091, expr: !DIExpression())
!2091 = distinct !DIGlobalVariable(name: "override_table", scope: !2, file: !3, line: 666, type: !2092, isLocal: true, isDefinition: true)
!2092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2093, size: 768, elements: !2074)
!2093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2094)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_override_cmp", file: !3, line: 657, size: 128, elements: !2095)
!2095 = !{!2096, !2117, !2118, !2119, !2120, !2121}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2094, file: !3, line: 658, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2099)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !1330, line: 587, size: 2752, elements: !2100)
!2100 = !{!2101, !2105, !2106, !2116}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !2099, file: !1330, line: 588, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!78, !2097}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !2099, file: !1330, line: 589, baseType: !218, size: 64, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !2099, file: !1330, line: 590, baseType: !2107, size: 2560, offset: 128)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2108, size: 2560, elements: !533)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !1330, line: 581, size: 640, elements: !2109)
!2109 = !{!2110, !2111, !2112}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !2108, file: !1330, line: 582, baseType: !122, size: 7, flags: DIFlagBitField, extraData: i64 0)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !2108, file: !1330, line: 583, baseType: !122, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !2108, file: !1330, line: 584, baseType: !2113, size: 632, offset: 8)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 632, elements: !2114)
!2114 = !{!2115}
!2115 = !DISubrange(count: 79)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2099, file: !1330, line: 591, baseType: !117, size: 64, offset: 2688)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2094, file: !3, line: 659, baseType: !122, size: 8, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !2094, file: !3, line: 660, baseType: !122, size: 8, offset: 72)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2094, file: !3, line: 661, baseType: !122, size: 8, offset: 80)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2094, file: !3, line: 662, baseType: !122, size: 8, offset: 88)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "override", scope: !2094, file: !3, line: 663, baseType: !199, size: 8, offset: 96)
!2122 = !DIGlobalVariableExpression(var: !2123, expr: !DIExpression())
!2123 = distinct !DIGlobalVariable(scope: null, file: !3, line: 390, type: !2124, isLocal: true, isDefinition: true)
!2124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 112, elements: !2125)
!2125 = !{!2126}
!2126 = !DISubrange(count: 14)
!2127 = !DIGlobalVariableExpression(var: !2128, expr: !DIExpression())
!2128 = distinct !DIGlobalVariable(scope: null, file: !3, line: 397, type: !2124, isLocal: true, isDefinition: true)
!2129 = !DIGlobalVariableExpression(var: !2130, expr: !DIExpression())
!2130 = distinct !DIGlobalVariable(scope: null, file: !3, line: 404, type: !2124, isLocal: true, isDefinition: true)
!2131 = !DIGlobalVariableExpression(var: !2132, expr: !DIExpression())
!2132 = distinct !DIGlobalVariable(name: "medion_laptop", scope: !2, file: !3, line: 388, type: !2133, isLocal: true, isDefinition: true)
!2133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2098, size: 11008, elements: !533)
!2134 = !DIGlobalVariableExpression(var: !2135, expr: !DIExpression())
!2135 = distinct !DIGlobalVariable(scope: null, file: !3, line: 415, type: !2136, isLocal: true, isDefinition: true)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 176, elements: !2137)
!2137 = !{!2138}
!2138 = !DISubrange(count: 22)
!2139 = !DIGlobalVariableExpression(var: !2140, expr: !DIExpression())
!2140 = distinct !DIGlobalVariable(scope: null, file: !3, line: 422, type: !2136, isLocal: true, isDefinition: true)
!2141 = !DIGlobalVariableExpression(var: !2142, expr: !DIExpression())
!2142 = distinct !DIGlobalVariable(scope: null, file: !3, line: 429, type: !2136, isLocal: true, isDefinition: true)
!2143 = !DIGlobalVariableExpression(var: !2144, expr: !DIExpression())
!2144 = distinct !DIGlobalVariable(scope: null, file: !3, line: 436, type: !2136, isLocal: true, isDefinition: true)
!2145 = !DIGlobalVariableExpression(var: !2146, expr: !DIExpression())
!2146 = distinct !DIGlobalVariable(scope: null, file: !3, line: 457, type: !2147, isLocal: true, isDefinition: true)
!2147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 200, elements: !2148)
!2148 = !{!2149}
!2149 = !DISubrange(count: 25)
!2150 = !DIGlobalVariableExpression(var: !2151, expr: !DIExpression())
!2151 = distinct !DIGlobalVariable(scope: null, file: !3, line: 471, type: !2147, isLocal: true, isDefinition: true)
!2152 = !DIGlobalVariableExpression(var: !2153, expr: !DIExpression())
!2153 = distinct !DIGlobalVariable(scope: null, file: !3, line: 478, type: !2147, isLocal: true, isDefinition: true)
!2154 = !DIGlobalVariableExpression(var: !2155, expr: !DIExpression())
!2155 = distinct !DIGlobalVariable(scope: null, file: !3, line: 485, type: !2147, isLocal: true, isDefinition: true)
!2156 = !DIGlobalVariableExpression(var: !2157, expr: !DIExpression())
!2157 = distinct !DIGlobalVariable(scope: null, file: !3, line: 492, type: !2136, isLocal: true, isDefinition: true)
!2158 = !DIGlobalVariableExpression(var: !2159, expr: !DIExpression())
!2159 = distinct !DIGlobalVariable(name: "asus_laptop", scope: !2, file: !3, line: 413, type: !2160, isLocal: true, isDefinition: true)
!2160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2098, size: 35776, elements: !2161)
!2161 = !{!2162}
!2162 = !DISubrange(count: 13)
!2163 = !DIGlobalVariableExpression(var: !2164, expr: !DIExpression())
!2164 = distinct !DIGlobalVariable(scope: null, file: !3, line: 503, type: !2165, isLocal: true, isDefinition: true)
!2165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 512, elements: !300)
!2166 = !DIGlobalVariableExpression(var: !2167, expr: !DIExpression())
!2167 = distinct !DIGlobalVariable(name: "tongfang_gm_rg", scope: !2, file: !3, line: 501, type: !2168, isLocal: true, isDefinition: true)
!2168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2098, size: 8256, elements: !296)
!2169 = !DIGlobalVariableExpression(var: !2170, expr: !DIExpression())
!2170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 520, type: !2147, isLocal: true, isDefinition: true)
!2171 = !DIGlobalVariableExpression(var: !2172, expr: !DIExpression())
!2172 = distinct !DIGlobalVariable(scope: null, file: !3, line: 559, type: !2147, isLocal: true, isDefinition: true)
!2173 = !DIGlobalVariableExpression(var: !2174, expr: !DIExpression())
!2174 = distinct !DIGlobalVariable(name: "maingear_laptop", scope: !2, file: !3, line: 518, type: !2175, isLocal: true, isDefinition: true)
!2175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2098, size: 22016, elements: !1498)
!2176 = !DIGlobalVariableExpression(var: !2177, expr: !DIExpression())
!2177 = distinct !DIGlobalVariable(name: "pcspecialist_laptop", scope: !2, file: !3, line: 568, type: !2178, isLocal: true, isDefinition: true)
!2178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2098, size: 24768, elements: !2179)
!2179 = !{!2180}
!2180 = !DISubrange(count: 9)
!2181 = !DIGlobalVariableExpression(var: !2182, expr: !DIExpression())
!2182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 625, type: !2136, isLocal: true, isDefinition: true)
!2183 = !DIGlobalVariableExpression(var: !2184, expr: !DIExpression())
!2184 = distinct !DIGlobalVariable(name: "lg_laptop", scope: !2, file: !3, line: 623, type: !2185, isLocal: true, isDefinition: true)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2098, size: 13760, elements: !1897)
!2186 = !{i32 7, !"Dwarf Version", i32 5}
!2187 = !{i32 2, !"Debug Info Version", i32 3}
!2188 = !{i32 1, !"wchar_size", i32 2}
!2189 = !{i32 8, !"cf-protection-branch", i32 1}
!2190 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2191 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2192 = !{i32 1, !"Code Model", i32 2}
!2193 = !{i32 1, !"override-stack-alignment", i32 8}
!2194 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2195 = distinct !DISubprogram(name: "acpi_dev_resource_memory", scope: !3, file: !3, line: 106, type: !2196, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2585)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!199, !2198, !2023}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !125, line: 678, size: 544, elements: !2200)
!2200 = !{!2201, !2202, !2203}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2199, file: !125, line: 679, baseType: !164, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2199, file: !125, line: 680, baseType: !164, size: 32, offset: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2199, file: !125, line: 681, baseType: !2204, size: 480, offset: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !125, line: 639, size: 480, elements: !2205)
!2205 = !{!2206, !2226, !2243, !2249, !2257, !2262, !2268, !2273, !2281, !2285, !2293, !2301, !2307, !2330, !2348, !2366, !2378, !2399, !2407, !2427, !2443, !2463, !2485, !2500, !2513, !2525, !2538, !2552, !2563, !2575, !2584}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2204, file: !125, line: 640, baseType: !2207, size: 56)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !125, line: 138, size: 56, elements: !2208)
!2208 = !{!2209, !2210, !2211, !2212, !2213, !2214, !2215}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !2207, file: !125, line: 139, baseType: !118, size: 8)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !2207, file: !125, line: 140, baseType: !118, size: 8, offset: 8)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2207, file: !125, line: 141, baseType: !118, size: 8, offset: 16)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2207, file: !125, line: 142, baseType: !118, size: 8, offset: 24)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !2207, file: !125, line: 143, baseType: !118, size: 8, offset: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !2207, file: !125, line: 144, baseType: !118, size: 8, offset: 40)
!2215 = !DIDerivedType(tag: DW_TAG_member, scope: !2207, file: !125, line: 145, baseType: !2216, size: 8, offset: 48)
!2216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2207, file: !125, line: 145, size: 8, elements: !2217)
!2217 = !{!2218, !2219}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !2216, file: !125, line: 146, baseType: !118, size: 8)
!2219 = !DIDerivedType(tag: DW_TAG_member, scope: !2216, file: !125, line: 147, baseType: !2220)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2216, file: !125, line: 147, elements: !2221)
!2221 = !{!2222, !2224}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !2220, file: !125, line: 147, baseType: !2223)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2220, file: !125, line: 147, elements: !431)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !2220, file: !125, line: 147, baseType: !2225)
!2225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, elements: !627)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !2204, file: !125, line: 641, baseType: !2227, size: 40)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !125, line: 151, size: 40, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2232, !2233}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2227, file: !125, line: 152, baseType: !118, size: 8)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !2227, file: !125, line: 153, baseType: !118, size: 8, offset: 8)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !2227, file: !125, line: 154, baseType: !118, size: 8, offset: 16)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !2227, file: !125, line: 155, baseType: !118, size: 8, offset: 24)
!2233 = !DIDerivedType(tag: DW_TAG_member, scope: !2227, file: !125, line: 156, baseType: !2234, size: 8, offset: 32)
!2234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2227, file: !125, line: 156, size: 8, elements: !2235)
!2235 = !{!2236, !2237}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !2234, file: !125, line: 157, baseType: !118, size: 8)
!2237 = !DIDerivedType(tag: DW_TAG_member, scope: !2234, file: !125, line: 158, baseType: !2238)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2234, file: !125, line: 158, elements: !2239)
!2239 = !{!2240, !2242}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_channels", scope: !2238, file: !125, line: 158, baseType: !2241)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2238, file: !125, line: 158, elements: !431)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !2238, file: !125, line: 158, baseType: !2225)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !2204, file: !125, line: 642, baseType: !2244, size: 24)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !125, line: 162, size: 24, elements: !2245)
!2245 = !{!2246, !2247, !2248}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !2244, file: !125, line: 163, baseType: !118, size: 8)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !2244, file: !125, line: 164, baseType: !118, size: 8, offset: 8)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !2244, file: !125, line: 165, baseType: !118, size: 8, offset: 16)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !2204, file: !125, line: 643, baseType: !2250, size: 56)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !125, line: 173, size: 56, elements: !2251)
!2251 = !{!2252, !2253, !2254, !2255, !2256}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !2250, file: !125, line: 174, baseType: !118, size: 8)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2250, file: !125, line: 175, baseType: !118, size: 8, offset: 8)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2250, file: !125, line: 176, baseType: !118, size: 8, offset: 16)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2250, file: !125, line: 177, baseType: !263, size: 16, offset: 24)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2250, file: !125, line: 178, baseType: !263, size: 16, offset: 40)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !2204, file: !125, line: 644, baseType: !2258, size: 24)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !125, line: 181, size: 24, elements: !2259)
!2259 = !{!2260, !2261}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2258, file: !125, line: 182, baseType: !263, size: 16)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2258, file: !125, line: 183, baseType: !118, size: 8, offset: 16)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !2204, file: !125, line: 645, baseType: !2263, size: 40)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !125, line: 186, size: 40, elements: !2264)
!2264 = !{!2265, !2266, !2267}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !2263, file: !125, line: 187, baseType: !263, size: 16)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !2263, file: !125, line: 188, baseType: !263, size: 16, offset: 16)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2263, file: !125, line: 189, baseType: !118, size: 8, offset: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2204, file: !125, line: 646, baseType: !2269, size: 16)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !125, line: 201, size: 16, elements: !2270)
!2270 = !{!2271, !2272}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !2269, file: !125, line: 202, baseType: !263, size: 16)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !2269, file: !125, line: 203, baseType: !2225, offset: 16)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !2204, file: !125, line: 647, baseType: !2274, size: 152)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !125, line: 208, size: 152, elements: !2275)
!2275 = !{!2276, !2277, !2278, !2280}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !2274, file: !125, line: 209, baseType: !263, size: 16)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !2274, file: !125, line: 210, baseType: !118, size: 8, offset: 16)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !2274, file: !125, line: 211, baseType: !2279, size: 128, offset: 24)
!2279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 128, elements: !1349)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !2274, file: !125, line: 212, baseType: !2225, offset: 152)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !2204, file: !125, line: 648, baseType: !2282, size: 8)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !125, line: 215, size: 8, elements: !2283)
!2283 = !{!2284}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !2282, file: !125, line: 216, baseType: !118, size: 8)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !2204, file: !125, line: 649, baseType: !2286, size: 72)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !125, line: 219, size: 72, elements: !2287)
!2287 = !{!2288, !2289, !2290, !2291, !2292}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !2286, file: !125, line: 220, baseType: !118, size: 8)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2286, file: !125, line: 221, baseType: !263, size: 16, offset: 8)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2286, file: !125, line: 222, baseType: !263, size: 16, offset: 24)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2286, file: !125, line: 223, baseType: !263, size: 16, offset: 40)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2286, file: !125, line: 224, baseType: !263, size: 16, offset: 56)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !2204, file: !125, line: 650, baseType: !2294, size: 136)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !125, line: 227, size: 136, elements: !2295)
!2295 = !{!2296, !2297, !2298, !2299, !2300}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !2294, file: !125, line: 228, baseType: !118, size: 8)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2294, file: !125, line: 229, baseType: !164, size: 32, offset: 8)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2294, file: !125, line: 230, baseType: !164, size: 32, offset: 40)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2294, file: !125, line: 231, baseType: !164, size: 32, offset: 72)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2294, file: !125, line: 232, baseType: !164, size: 32, offset: 104)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !2204, file: !125, line: 651, baseType: !2302, size: 72)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !125, line: 235, size: 72, elements: !2303)
!2303 = !{!2304, !2305, !2306}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !2302, file: !125, line: 236, baseType: !118, size: 8)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2302, file: !125, line: 237, baseType: !164, size: 32, offset: 8)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2302, file: !125, line: 238, baseType: !164, size: 32, offset: 40)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !2204, file: !125, line: 652, baseType: !2308, size: 240)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !125, line: 312, size: 240, elements: !2309)
!2309 = !{!2310, !2311, !2312, !2313, !2314, !2315, !2316, !2324}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2308, file: !125, line: 313, baseType: !118, size: 8)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2308, file: !125, line: 313, baseType: !118, size: 8, offset: 8)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2308, file: !125, line: 313, baseType: !118, size: 8, offset: 16)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2308, file: !125, line: 313, baseType: !118, size: 8, offset: 24)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2308, file: !125, line: 313, baseType: !118, size: 8, offset: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2308, file: !125, line: 313, baseType: !133, size: 32, offset: 40)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2308, file: !125, line: 313, baseType: !2317, size: 80, offset: 72)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !125, line: 285, size: 80, elements: !2318)
!2318 = !{!2319, !2320, !2321, !2322, !2323}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !2317, file: !125, line: 286, baseType: !263, size: 16)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2317, file: !125, line: 287, baseType: !263, size: 16, offset: 16)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2317, file: !125, line: 288, baseType: !263, size: 16, offset: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !2317, file: !125, line: 289, baseType: !263, size: 16, offset: 48)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2317, file: !125, line: 290, baseType: !263, size: 16, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2308, file: !125, line: 314, baseType: !2325, size: 88, offset: 152)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !125, line: 269, size: 88, elements: !2326)
!2326 = !{!2327, !2328, !2329}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2325, file: !125, line: 270, baseType: !118, size: 8)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !2325, file: !125, line: 271, baseType: !263, size: 16, offset: 8)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !2325, file: !125, line: 272, baseType: !295, size: 64, offset: 24)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !2204, file: !125, line: 653, baseType: !2331, size: 320)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !125, line: 317, size: 320, elements: !2332)
!2332 = !{!2333, !2334, !2335, !2336, !2337, !2338, !2339, !2347}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2331, file: !125, line: 318, baseType: !118, size: 8)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2331, file: !125, line: 318, baseType: !118, size: 8, offset: 8)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2331, file: !125, line: 318, baseType: !118, size: 8, offset: 16)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2331, file: !125, line: 318, baseType: !118, size: 8, offset: 24)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2331, file: !125, line: 318, baseType: !118, size: 8, offset: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2331, file: !125, line: 318, baseType: !133, size: 32, offset: 40)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2331, file: !125, line: 318, baseType: !2340, size: 160, offset: 72)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !125, line: 293, size: 160, elements: !2341)
!2341 = !{!2342, !2343, !2344, !2345, !2346}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !2340, file: !125, line: 294, baseType: !164, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2340, file: !125, line: 295, baseType: !164, size: 32, offset: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2340, file: !125, line: 296, baseType: !164, size: 32, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !2340, file: !125, line: 297, baseType: !164, size: 32, offset: 96)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2340, file: !125, line: 298, baseType: !164, size: 32, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2331, file: !125, line: 319, baseType: !2325, size: 88, offset: 232)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !2204, file: !125, line: 654, baseType: !2349, size: 480)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !125, line: 322, size: 480, elements: !2350)
!2350 = !{!2351, !2352, !2353, !2354, !2355, !2356, !2357, !2365}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2349, file: !125, line: 323, baseType: !118, size: 8)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2349, file: !125, line: 323, baseType: !118, size: 8, offset: 8)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2349, file: !125, line: 323, baseType: !118, size: 8, offset: 16)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2349, file: !125, line: 323, baseType: !118, size: 8, offset: 24)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2349, file: !125, line: 323, baseType: !118, size: 8, offset: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2349, file: !125, line: 323, baseType: !133, size: 32, offset: 40)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2349, file: !125, line: 323, baseType: !2358, size: 320, offset: 72)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !125, line: 301, size: 320, elements: !2359)
!2359 = !{!2360, !2361, !2362, !2363, !2364}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !2358, file: !125, line: 302, baseType: !458, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2358, file: !125, line: 303, baseType: !458, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2358, file: !125, line: 304, baseType: !458, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !2358, file: !125, line: 305, baseType: !458, size: 64, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2358, file: !125, line: 306, baseType: !458, size: 64, offset: 256)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2349, file: !125, line: 324, baseType: !2325, size: 88, offset: 392)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !2204, file: !125, line: 655, baseType: !2367, size: 464)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !125, line: 327, size: 464, elements: !2368)
!2368 = !{!2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2367, file: !125, line: 328, baseType: !118, size: 8)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2367, file: !125, line: 328, baseType: !118, size: 8, offset: 8)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2367, file: !125, line: 328, baseType: !118, size: 8, offset: 16)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2367, file: !125, line: 328, baseType: !118, size: 8, offset: 24)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2367, file: !125, line: 328, baseType: !118, size: 8, offset: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2367, file: !125, line: 328, baseType: !133, size: 32, offset: 40)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !2367, file: !125, line: 328, baseType: !118, size: 8, offset: 72)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2367, file: !125, line: 329, baseType: !2358, size: 320, offset: 80)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !2367, file: !125, line: 330, baseType: !458, size: 64, offset: 400)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !2204, file: !125, line: 656, baseType: !2379, size: 168)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !125, line: 333, size: 168, elements: !2380)
!2380 = !{!2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2379, file: !125, line: 334, baseType: !118, size: 8)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !2379, file: !125, line: 335, baseType: !118, size: 8, offset: 8)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2379, file: !125, line: 336, baseType: !118, size: 8, offset: 16)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2379, file: !125, line: 337, baseType: !118, size: 8, offset: 24)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !2379, file: !125, line: 338, baseType: !118, size: 8, offset: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !2379, file: !125, line: 339, baseType: !118, size: 8, offset: 40)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2379, file: !125, line: 340, baseType: !2325, size: 88, offset: 48)
!2388 = !DIDerivedType(tag: DW_TAG_member, scope: !2379, file: !125, line: 341, baseType: !2389, size: 32, offset: 136)
!2389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2379, file: !125, line: 341, size: 32, elements: !2390)
!2390 = !{!2391, !2392}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !2389, file: !125, line: 342, baseType: !164, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, scope: !2389, file: !125, line: 343, baseType: !2393)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2389, file: !125, line: 343, elements: !2394)
!2394 = !{!2395, !2397}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !2393, file: !125, line: 343, baseType: !2396)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2393, file: !125, line: 343, elements: !431)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !2393, file: !125, line: 343, baseType: !2398)
!2398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, elements: !627)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !2204, file: !125, line: 657, baseType: !2400, size: 96)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !125, line: 347, size: 96, elements: !2401)
!2401 = !{!2402, !2403, !2404, !2405, !2406}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !2400, file: !125, line: 348, baseType: !118, size: 8)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !2400, file: !125, line: 349, baseType: !118, size: 8, offset: 8)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !2400, file: !125, line: 350, baseType: !118, size: 8, offset: 16)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !2400, file: !125, line: 351, baseType: !118, size: 8, offset: 24)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2400, file: !125, line: 352, baseType: !458, size: 64, offset: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !2204, file: !125, line: 658, baseType: !2408, size: 352)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !125, line: 355, size: 352, elements: !2409)
!2409 = !{!2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2426}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2408, file: !125, line: 356, baseType: !118, size: 8)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !2408, file: !125, line: 357, baseType: !118, size: 8, offset: 8)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2408, file: !125, line: 358, baseType: !118, size: 8, offset: 16)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !2408, file: !125, line: 359, baseType: !118, size: 8, offset: 24)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2408, file: !125, line: 360, baseType: !118, size: 8, offset: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !2408, file: !125, line: 361, baseType: !118, size: 8, offset: 40)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !2408, file: !125, line: 362, baseType: !118, size: 8, offset: 48)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !2408, file: !125, line: 363, baseType: !118, size: 8, offset: 56)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2408, file: !125, line: 364, baseType: !118, size: 8, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !2408, file: !125, line: 365, baseType: !263, size: 16, offset: 72)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !2408, file: !125, line: 366, baseType: !263, size: 16, offset: 88)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !2408, file: !125, line: 367, baseType: !263, size: 16, offset: 104)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2408, file: !125, line: 368, baseType: !263, size: 16, offset: 120)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2408, file: !125, line: 369, baseType: !2325, size: 88, offset: 136)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !2408, file: !125, line: 370, baseType: !2425, size: 64, offset: 224)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2408, file: !125, line: 371, baseType: !1843, size: 64, offset: 288)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !2204, file: !125, line: 659, baseType: !2428, size: 288)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !125, line: 422, size: 288, elements: !2429)
!2429 = !{!2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2428, file: !125, line: 423, baseType: !118, size: 8)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2428, file: !125, line: 423, baseType: !118, size: 8, offset: 8)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2428, file: !125, line: 423, baseType: !118, size: 8, offset: 16)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2428, file: !125, line: 423, baseType: !118, size: 8, offset: 24)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2428, file: !125, line: 423, baseType: !118, size: 8, offset: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2428, file: !125, line: 423, baseType: !118, size: 8, offset: 40)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2428, file: !125, line: 423, baseType: !263, size: 16, offset: 48)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2428, file: !125, line: 423, baseType: !263, size: 16, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2428, file: !125, line: 423, baseType: !2325, size: 88, offset: 80)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2428, file: !125, line: 423, baseType: !1843, size: 64, offset: 168)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !2428, file: !125, line: 423, baseType: !118, size: 8, offset: 232)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !2428, file: !125, line: 424, baseType: !263, size: 16, offset: 240)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !2428, file: !125, line: 425, baseType: !164, size: 32, offset: 256)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !2204, file: !125, line: 660, baseType: !2444, size: 320)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !125, line: 433, size: 320, elements: !2445)
!2445 = !{!2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2444, file: !125, line: 434, baseType: !118, size: 8)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2444, file: !125, line: 434, baseType: !118, size: 8, offset: 8)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2444, file: !125, line: 434, baseType: !118, size: 8, offset: 16)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2444, file: !125, line: 434, baseType: !118, size: 8, offset: 24)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2444, file: !125, line: 434, baseType: !118, size: 8, offset: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2444, file: !125, line: 434, baseType: !118, size: 8, offset: 40)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2444, file: !125, line: 434, baseType: !263, size: 16, offset: 48)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2444, file: !125, line: 434, baseType: !263, size: 16, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2444, file: !125, line: 434, baseType: !2325, size: 88, offset: 80)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2444, file: !125, line: 434, baseType: !1843, size: 64, offset: 168)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !2444, file: !125, line: 434, baseType: !118, size: 8, offset: 232)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !2444, file: !125, line: 435, baseType: !118, size: 8, offset: 240)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !2444, file: !125, line: 436, baseType: !118, size: 8, offset: 248)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !2444, file: !125, line: 437, baseType: !118, size: 8, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !2444, file: !125, line: 438, baseType: !118, size: 8, offset: 264)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !2444, file: !125, line: 439, baseType: !263, size: 16, offset: 272)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !2444, file: !125, line: 440, baseType: !164, size: 32, offset: 288)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !2204, file: !125, line: 661, baseType: !2464, size: 344)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !125, line: 463, size: 344, elements: !2465)
!2465 = !{!2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2464, file: !125, line: 464, baseType: !118, size: 8)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2464, file: !125, line: 464, baseType: !118, size: 8, offset: 8)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2464, file: !125, line: 464, baseType: !118, size: 8, offset: 16)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2464, file: !125, line: 464, baseType: !118, size: 8, offset: 24)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2464, file: !125, line: 464, baseType: !118, size: 8, offset: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2464, file: !125, line: 464, baseType: !118, size: 8, offset: 40)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2464, file: !125, line: 464, baseType: !263, size: 16, offset: 48)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2464, file: !125, line: 464, baseType: !263, size: 16, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2464, file: !125, line: 464, baseType: !2325, size: 88, offset: 80)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2464, file: !125, line: 464, baseType: !1843, size: 64, offset: 168)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !2464, file: !125, line: 464, baseType: !118, size: 8, offset: 232)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !2464, file: !125, line: 465, baseType: !118, size: 8, offset: 240)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !2464, file: !125, line: 466, baseType: !118, size: 8, offset: 248)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !2464, file: !125, line: 467, baseType: !118, size: 8, offset: 256)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !2464, file: !125, line: 468, baseType: !118, size: 8, offset: 264)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !2464, file: !125, line: 469, baseType: !118, size: 8, offset: 272)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !2464, file: !125, line: 470, baseType: !263, size: 16, offset: 280)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !2464, file: !125, line: 471, baseType: !263, size: 16, offset: 296)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !2464, file: !125, line: 472, baseType: !164, size: 32, offset: 312)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "csi2_serial_bus", scope: !2204, file: !125, line: 662, baseType: !2486, size: 248)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_csi2_serialbus", file: !125, line: 518, size: 248, elements: !2487)
!2487 = !{!2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2486, file: !125, line: 519, baseType: !118, size: 8)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2486, file: !125, line: 519, baseType: !118, size: 8, offset: 8)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2486, file: !125, line: 519, baseType: !118, size: 8, offset: 16)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2486, file: !125, line: 519, baseType: !118, size: 8, offset: 24)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2486, file: !125, line: 519, baseType: !118, size: 8, offset: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2486, file: !125, line: 519, baseType: !118, size: 8, offset: 40)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2486, file: !125, line: 519, baseType: !263, size: 16, offset: 48)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2486, file: !125, line: 519, baseType: !263, size: 16, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2486, file: !125, line: 519, baseType: !2325, size: 88, offset: 80)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2486, file: !125, line: 519, baseType: !1843, size: 64, offset: 168)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "local_port_instance", scope: !2486, file: !125, line: 519, baseType: !118, size: 8, offset: 232)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "phy_type", scope: !2486, file: !125, line: 520, baseType: !118, size: 8, offset: 240)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !2204, file: !125, line: 663, baseType: !2501, size: 232)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !125, line: 407, size: 232, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2501, file: !125, line: 408, baseType: !118, size: 8)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2501, file: !125, line: 408, baseType: !118, size: 8, offset: 8)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2501, file: !125, line: 408, baseType: !118, size: 8, offset: 16)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2501, file: !125, line: 408, baseType: !118, size: 8, offset: 24)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2501, file: !125, line: 408, baseType: !118, size: 8, offset: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2501, file: !125, line: 408, baseType: !118, size: 8, offset: 40)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2501, file: !125, line: 408, baseType: !263, size: 16, offset: 48)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2501, file: !125, line: 408, baseType: !263, size: 16, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2501, file: !125, line: 408, baseType: !2325, size: 88, offset: 80)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2501, file: !125, line: 408, baseType: !1843, size: 64, offset: 168)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !2204, file: !125, line: 664, baseType: !2514, size: 288)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !125, line: 523, size: 288, elements: !2515)
!2515 = !{!2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2514, file: !125, line: 524, baseType: !118, size: 8)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !2514, file: !125, line: 525, baseType: !118, size: 8, offset: 8)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2514, file: !125, line: 526, baseType: !118, size: 8, offset: 16)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !2514, file: !125, line: 527, baseType: !263, size: 16, offset: 24)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !2514, file: !125, line: 528, baseType: !263, size: 16, offset: 40)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2514, file: !125, line: 529, baseType: !263, size: 16, offset: 56)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2514, file: !125, line: 530, baseType: !2325, size: 88, offset: 72)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !2514, file: !125, line: 531, baseType: !2425, size: 64, offset: 160)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2514, file: !125, line: 532, baseType: !1843, size: 64, offset: 224)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !2204, file: !125, line: 665, baseType: !2526, size: 312)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !125, line: 535, size: 312, elements: !2527)
!2527 = !{!2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2526, file: !125, line: 536, baseType: !118, size: 8)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2526, file: !125, line: 537, baseType: !118, size: 8, offset: 8)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2526, file: !125, line: 538, baseType: !118, size: 8, offset: 16)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !2526, file: !125, line: 539, baseType: !118, size: 8, offset: 24)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !2526, file: !125, line: 540, baseType: !164, size: 32, offset: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !2526, file: !125, line: 541, baseType: !263, size: 16, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2526, file: !125, line: 542, baseType: !263, size: 16, offset: 80)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2526, file: !125, line: 543, baseType: !2325, size: 88, offset: 96)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !2526, file: !125, line: 544, baseType: !2425, size: 64, offset: 184)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2526, file: !125, line: 545, baseType: !1843, size: 64, offset: 248)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !2204, file: !125, line: 666, baseType: !2539, size: 256)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !125, line: 574, size: 256, elements: !2540)
!2540 = !{!2541, !2542, !2543, !2544, !2545, !2546, !2551}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2539, file: !125, line: 575, baseType: !118, size: 8)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2539, file: !125, line: 576, baseType: !118, size: 8, offset: 8)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !2539, file: !125, line: 577, baseType: !263, size: 16, offset: 16)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2539, file: !125, line: 578, baseType: !263, size: 16, offset: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !2539, file: !125, line: 579, baseType: !2425, size: 64, offset: 48)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !2539, file: !125, line: 580, baseType: !2547, size: 80, offset: 112)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !125, line: 264, size: 80, elements: !2548)
!2548 = !{!2549, !2550}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !2547, file: !125, line: 265, baseType: !263, size: 16)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !2547, file: !125, line: 266, baseType: !295, size: 64, offset: 16)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2539, file: !125, line: 581, baseType: !1843, size: 64, offset: 192)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !2204, file: !125, line: 667, baseType: !2553, size: 288)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !125, line: 584, size: 288, elements: !2554)
!2554 = !{!2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2553, file: !125, line: 585, baseType: !118, size: 8)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2553, file: !125, line: 586, baseType: !118, size: 8, offset: 8)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2553, file: !125, line: 587, baseType: !118, size: 8, offset: 16)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !2553, file: !125, line: 588, baseType: !263, size: 16, offset: 24)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2553, file: !125, line: 589, baseType: !263, size: 16, offset: 40)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2553, file: !125, line: 590, baseType: !2325, size: 88, offset: 56)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !2553, file: !125, line: 591, baseType: !2547, size: 80, offset: 144)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2553, file: !125, line: 592, baseType: !1843, size: 64, offset: 224)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !2204, file: !125, line: 668, baseType: !2564, size: 312)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !125, line: 595, size: 312, elements: !2565)
!2565 = !{!2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2564, file: !125, line: 596, baseType: !118, size: 8)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2564, file: !125, line: 597, baseType: !118, size: 8, offset: 8)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2564, file: !125, line: 598, baseType: !118, size: 8, offset: 16)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !2564, file: !125, line: 599, baseType: !118, size: 8, offset: 24)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !2564, file: !125, line: 600, baseType: !164, size: 32, offset: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2564, file: !125, line: 601, baseType: !263, size: 16, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2564, file: !125, line: 602, baseType: !2325, size: 88, offset: 80)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !2564, file: !125, line: 603, baseType: !2547, size: 80, offset: 168)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2564, file: !125, line: 604, baseType: !1843, size: 64, offset: 248)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "clock_input", scope: !2204, file: !125, line: 669, baseType: !2576, size: 160)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_clock_input", file: !125, line: 548, size: 160, elements: !2577)
!2577 = !{!2578, !2579, !2580, !2581, !2582, !2583}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2576, file: !125, line: 549, baseType: !118, size: 8)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2576, file: !125, line: 550, baseType: !118, size: 8, offset: 8)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !2576, file: !125, line: 551, baseType: !118, size: 8, offset: 16)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_divisor", scope: !2576, file: !125, line: 552, baseType: !263, size: 16, offset: 24)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_numerator", scope: !2576, file: !125, line: 553, baseType: !164, size: 32, offset: 40)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2576, file: !125, line: 554, baseType: !2325, size: 88, offset: 72)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2204, file: !125, line: 673, baseType: !124, size: 72)
!2585 = !{!2586, !2587, !2588, !2590, !2592}
!2586 = !DILocalVariable(name: "ares", arg: 1, scope: !2195, file: !3, line: 106, type: !2198)
!2587 = !DILocalVariable(name: "res", arg: 2, scope: !2195, file: !3, line: 106, type: !2023)
!2588 = !DILocalVariable(name: "memory24", scope: !2195, file: !3, line: 108, type: !2589)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2590 = !DILocalVariable(name: "memory32", scope: !2195, file: !3, line: 109, type: !2591)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2592 = !DILocalVariable(name: "fixed_memory32", scope: !2195, file: !3, line: 110, type: !2593)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2594 = !DILocation(line: 106, column: 53, scope: !2195)
!2595 = !DILocation(line: 106, column: 76, scope: !2195)
!2596 = !DILocation(line: 108, column: 2, scope: !2195)
!2597 = !DILocation(line: 108, column: 33, scope: !2195)
!2598 = !DILocation(line: 109, column: 2, scope: !2195)
!2599 = !DILocation(line: 109, column: 33, scope: !2195)
!2600 = !DILocation(line: 110, column: 2, scope: !2195)
!2601 = !DILocation(line: 110, column: 39, scope: !2195)
!2602 = !DILocation(line: 112, column: 10, scope: !2195)
!2603 = !DILocation(line: 112, column: 16, scope: !2195)
!2604 = !DILocation(line: 112, column: 2, scope: !2195)
!2605 = !DILocation(line: 114, column: 15, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 112, column: 22)
!2607 = !DILocation(line: 114, column: 21, scope: !2606)
!2608 = !DILocation(line: 114, column: 12, scope: !2606)
!2609 = !DILocation(line: 115, column: 28, scope: !2606)
!2610 = !DILocation(line: 115, column: 33, scope: !2606)
!2611 = !DILocation(line: 115, column: 43, scope: !2606)
!2612 = !DILocation(line: 115, column: 51, scope: !2606)
!2613 = !DILocation(line: 116, column: 7, scope: !2606)
!2614 = !DILocation(line: 116, column: 17, scope: !2606)
!2615 = !DILocation(line: 116, column: 32, scope: !2606)
!2616 = !DILocation(line: 117, column: 7, scope: !2606)
!2617 = !DILocation(line: 117, column: 17, scope: !2606)
!2618 = !DILocation(line: 115, column: 3, scope: !2606)
!2619 = !DILocation(line: 118, column: 3, scope: !2606)
!2620 = !DILocation(line: 120, column: 15, scope: !2606)
!2621 = !DILocation(line: 120, column: 21, scope: !2606)
!2622 = !DILocation(line: 120, column: 12, scope: !2606)
!2623 = !DILocation(line: 121, column: 28, scope: !2606)
!2624 = !DILocation(line: 121, column: 33, scope: !2606)
!2625 = !DILocation(line: 121, column: 43, scope: !2606)
!2626 = !DILocation(line: 122, column: 7, scope: !2606)
!2627 = !DILocation(line: 122, column: 17, scope: !2606)
!2628 = !DILocation(line: 123, column: 7, scope: !2606)
!2629 = !DILocation(line: 123, column: 17, scope: !2606)
!2630 = !DILocation(line: 121, column: 3, scope: !2606)
!2631 = !DILocation(line: 124, column: 3, scope: !2606)
!2632 = !DILocation(line: 126, column: 21, scope: !2606)
!2633 = !DILocation(line: 126, column: 27, scope: !2606)
!2634 = !DILocation(line: 126, column: 18, scope: !2606)
!2635 = !DILocation(line: 127, column: 28, scope: !2606)
!2636 = !DILocation(line: 127, column: 33, scope: !2606)
!2637 = !DILocation(line: 127, column: 49, scope: !2606)
!2638 = !DILocation(line: 128, column: 7, scope: !2606)
!2639 = !DILocation(line: 128, column: 23, scope: !2606)
!2640 = !DILocation(line: 129, column: 7, scope: !2606)
!2641 = !DILocation(line: 129, column: 23, scope: !2606)
!2642 = !DILocation(line: 127, column: 3, scope: !2606)
!2643 = !DILocation(line: 130, column: 3, scope: !2606)
!2644 = !DILocation(line: 132, column: 3, scope: !2606)
!2645 = !DILocation(line: 132, column: 8, scope: !2606)
!2646 = !DILocation(line: 132, column: 14, scope: !2606)
!2647 = !DILocation(line: 133, column: 3, scope: !2606)
!2648 = !DILocation(line: 136, column: 11, scope: !2195)
!2649 = !DILocation(line: 136, column: 16, scope: !2195)
!2650 = !DILocation(line: 136, column: 22, scope: !2195)
!2651 = !DILocation(line: 136, column: 9, scope: !2195)
!2652 = !DILocation(line: 136, column: 2, scope: !2195)
!2653 = !DILocation(line: 137, column: 1, scope: !2195)
!2654 = distinct !DISubprogram(name: "acpi_dev_get_memresource", scope: !3, file: !3, line: 84, type: !2655, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2657)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{null, !2023, !458, !458, !118}
!2657 = !{!2658, !2659, !2660, !2661}
!2658 = !DILocalVariable(name: "res", arg: 1, scope: !2654, file: !3, line: 84, type: !2023)
!2659 = !DILocalVariable(name: "start", arg: 2, scope: !2654, file: !3, line: 84, type: !458)
!2660 = !DILocalVariable(name: "len", arg: 3, scope: !2654, file: !3, line: 84, type: !458)
!2661 = !DILocalVariable(name: "write_protect", arg: 4, scope: !2654, file: !3, line: 85, type: !118)
!2662 = !DILocation(line: 84, column: 55, scope: !2654)
!2663 = !DILocation(line: 84, column: 64, scope: !2654)
!2664 = !DILocation(line: 84, column: 75, scope: !2654)
!2665 = !DILocation(line: 85, column: 13, scope: !2654)
!2666 = !DILocation(line: 87, column: 15, scope: !2654)
!2667 = !DILocation(line: 87, column: 2, scope: !2654)
!2668 = !DILocation(line: 87, column: 7, scope: !2654)
!2669 = !DILocation(line: 87, column: 13, scope: !2654)
!2670 = !DILocation(line: 88, column: 13, scope: !2654)
!2671 = !DILocation(line: 88, column: 21, scope: !2654)
!2672 = !DILocation(line: 88, column: 19, scope: !2654)
!2673 = !DILocation(line: 88, column: 25, scope: !2654)
!2674 = !DILocation(line: 88, column: 2, scope: !2654)
!2675 = !DILocation(line: 88, column: 7, scope: !2654)
!2676 = !DILocation(line: 88, column: 11, scope: !2654)
!2677 = !DILocation(line: 89, column: 29, scope: !2654)
!2678 = !DILocation(line: 89, column: 34, scope: !2654)
!2679 = !DILocation(line: 89, column: 39, scope: !2654)
!2680 = !DILocation(line: 89, column: 2, scope: !2654)
!2681 = !DILocation(line: 90, column: 1, scope: !2654)
!2682 = distinct !DISubprogram(name: "acpi_dev_resource_io", scope: !3, file: !3, line: 179, type: !2196, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2683)
!2683 = !{!2684, !2685, !2686, !2688}
!2684 = !DILocalVariable(name: "ares", arg: 1, scope: !2682, file: !3, line: 179, type: !2198)
!2685 = !DILocalVariable(name: "res", arg: 2, scope: !2682, file: !3, line: 179, type: !2023)
!2686 = !DILocalVariable(name: "io", scope: !2682, file: !3, line: 181, type: !2687)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2688 = !DILocalVariable(name: "fixed_io", scope: !2682, file: !3, line: 182, type: !2689)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2690 = !DILocation(line: 179, column: 49, scope: !2682)
!2691 = !DILocation(line: 179, column: 72, scope: !2682)
!2692 = !DILocation(line: 181, column: 2, scope: !2682)
!2693 = !DILocation(line: 181, column: 27, scope: !2682)
!2694 = !DILocation(line: 182, column: 2, scope: !2682)
!2695 = !DILocation(line: 182, column: 33, scope: !2682)
!2696 = !DILocation(line: 184, column: 10, scope: !2682)
!2697 = !DILocation(line: 184, column: 16, scope: !2682)
!2698 = !DILocation(line: 184, column: 2, scope: !2682)
!2699 = !DILocation(line: 186, column: 9, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 184, column: 22)
!2701 = !DILocation(line: 186, column: 15, scope: !2700)
!2702 = !DILocation(line: 186, column: 6, scope: !2700)
!2703 = !DILocation(line: 187, column: 27, scope: !2700)
!2704 = !DILocation(line: 187, column: 32, scope: !2700)
!2705 = !DILocation(line: 187, column: 36, scope: !2700)
!2706 = !DILocation(line: 188, column: 6, scope: !2700)
!2707 = !DILocation(line: 188, column: 10, scope: !2700)
!2708 = !DILocation(line: 189, column: 6, scope: !2700)
!2709 = !DILocation(line: 189, column: 10, scope: !2700)
!2710 = !DILocation(line: 187, column: 3, scope: !2700)
!2711 = !DILocation(line: 190, column: 3, scope: !2700)
!2712 = !DILocation(line: 192, column: 15, scope: !2700)
!2713 = !DILocation(line: 192, column: 21, scope: !2700)
!2714 = !DILocation(line: 192, column: 12, scope: !2700)
!2715 = !DILocation(line: 193, column: 27, scope: !2700)
!2716 = !DILocation(line: 193, column: 32, scope: !2700)
!2717 = !DILocation(line: 193, column: 42, scope: !2700)
!2718 = !DILocation(line: 194, column: 6, scope: !2700)
!2719 = !DILocation(line: 194, column: 16, scope: !2700)
!2720 = !DILocation(line: 193, column: 3, scope: !2700)
!2721 = !DILocation(line: 196, column: 3, scope: !2700)
!2722 = !DILocation(line: 198, column: 3, scope: !2700)
!2723 = !DILocation(line: 198, column: 8, scope: !2700)
!2724 = !DILocation(line: 198, column: 14, scope: !2700)
!2725 = !DILocation(line: 199, column: 3, scope: !2700)
!2726 = !DILocation(line: 202, column: 11, scope: !2682)
!2727 = !DILocation(line: 202, column: 16, scope: !2682)
!2728 = !DILocation(line: 202, column: 22, scope: !2682)
!2729 = !DILocation(line: 202, column: 9, scope: !2682)
!2730 = !DILocation(line: 202, column: 2, scope: !2682)
!2731 = !DILocation(line: 203, column: 1, scope: !2682)
!2732 = distinct !DISubprogram(name: "acpi_dev_get_ioresource", scope: !3, file: !3, line: 157, type: !2655, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2733)
!2733 = !{!2734, !2735, !2736, !2737}
!2734 = !DILocalVariable(name: "res", arg: 1, scope: !2732, file: !3, line: 157, type: !2023)
!2735 = !DILocalVariable(name: "start", arg: 2, scope: !2732, file: !3, line: 157, type: !458)
!2736 = !DILocalVariable(name: "len", arg: 3, scope: !2732, file: !3, line: 157, type: !458)
!2737 = !DILocalVariable(name: "io_decode", arg: 4, scope: !2732, file: !3, line: 158, type: !118)
!2738 = !DILocation(line: 157, column: 54, scope: !2732)
!2739 = !DILocation(line: 157, column: 63, scope: !2732)
!2740 = !DILocation(line: 157, column: 74, scope: !2732)
!2741 = !DILocation(line: 158, column: 12, scope: !2732)
!2742 = !DILocation(line: 160, column: 15, scope: !2732)
!2743 = !DILocation(line: 160, column: 2, scope: !2732)
!2744 = !DILocation(line: 160, column: 7, scope: !2732)
!2745 = !DILocation(line: 160, column: 13, scope: !2732)
!2746 = !DILocation(line: 161, column: 13, scope: !2732)
!2747 = !DILocation(line: 161, column: 21, scope: !2732)
!2748 = !DILocation(line: 161, column: 19, scope: !2732)
!2749 = !DILocation(line: 161, column: 25, scope: !2732)
!2750 = !DILocation(line: 161, column: 2, scope: !2732)
!2751 = !DILocation(line: 161, column: 7, scope: !2732)
!2752 = !DILocation(line: 161, column: 11, scope: !2732)
!2753 = !DILocation(line: 162, column: 28, scope: !2732)
!2754 = !DILocation(line: 162, column: 33, scope: !2732)
!2755 = !DILocation(line: 162, column: 38, scope: !2732)
!2756 = !DILocation(line: 162, column: 2, scope: !2732)
!2757 = !DILocation(line: 163, column: 1, scope: !2732)
!2758 = distinct !DISubprogram(name: "acpi_dev_resource_address_space", scope: !3, file: !3, line: 289, type: !2759, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2766)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!199, !2198, !2761}
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource_win", file: !2019, line: 14, size: 576, elements: !2763)
!2763 = !{!2764, !2765}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !2762, file: !2019, line: 15, baseType: !2024, size: 512)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2762, file: !2019, line: 16, baseType: !2027, size: 64, offset: 512)
!2766 = !{!2767, !2768, !2769}
!2767 = !DILocalVariable(name: "ares", arg: 1, scope: !2758, file: !3, line: 289, type: !2198)
!2768 = !DILocalVariable(name: "win", arg: 2, scope: !2758, file: !3, line: 290, type: !2761)
!2769 = !DILocalVariable(name: "addr", scope: !2758, file: !3, line: 292, type: !2349)
!2770 = !DILocation(line: 289, column: 60, scope: !2758)
!2771 = !DILocation(line: 290, column: 31, scope: !2758)
!2772 = !DILocation(line: 292, column: 2, scope: !2758)
!2773 = !DILocation(line: 292, column: 33, scope: !2758)
!2774 = !DILocation(line: 294, column: 2, scope: !2758)
!2775 = !DILocation(line: 294, column: 7, scope: !2758)
!2776 = !DILocation(line: 294, column: 11, scope: !2758)
!2777 = !DILocation(line: 294, column: 17, scope: !2758)
!2778 = !DILocation(line: 295, column: 6, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 295, column: 6)
!2780 = !DILocation(line: 295, column: 6, scope: !2758)
!2781 = !DILocation(line: 296, column: 3, scope: !2779)
!2782 = !DILocation(line: 298, column: 27, scope: !2758)
!2783 = !DILocation(line: 299, column: 12, scope: !2758)
!2784 = !DILocation(line: 298, column: 9, scope: !2758)
!2785 = !DILocation(line: 298, column: 2, scope: !2758)
!2786 = !DILocation(line: 300, column: 1, scope: !2758)
!2787 = !DISubprogram(name: "acpi_resource_to_address64", scope: !2788, file: !2788, line: 831, type: !2789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2788 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!162, !2198, !2791}
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2792 = distinct !DISubprogram(name: "acpi_decode_space", scope: !3, file: !3, line: 206, type: !2793, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2796)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!199, !2761, !123, !2795}
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2796 = !{!2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806}
!2797 = !DILocalVariable(name: "win", arg: 1, scope: !2792, file: !3, line: 206, type: !2761)
!2798 = !DILocalVariable(name: "addr", arg: 2, scope: !2792, file: !3, line: 207, type: !123)
!2799 = !DILocalVariable(name: "attr", arg: 3, scope: !2792, file: !3, line: 208, type: !2795)
!2800 = !DILocalVariable(name: "iodec", scope: !2792, file: !3, line: 210, type: !118)
!2801 = !DILocalVariable(name: "wp", scope: !2792, file: !3, line: 211, type: !199)
!2802 = !DILocalVariable(name: "len", scope: !2792, file: !3, line: 212, type: !458)
!2803 = !DILocalVariable(name: "start", scope: !2792, file: !3, line: 213, type: !458)
!2804 = !DILocalVariable(name: "end", scope: !2792, file: !3, line: 213, type: !458)
!2805 = !DILocalVariable(name: "offset", scope: !2792, file: !3, line: 213, type: !458)
!2806 = !DILocalVariable(name: "res", scope: !2792, file: !3, line: 214, type: !2023)
!2807 = !DILocation(line: 206, column: 52, scope: !2792)
!2808 = !DILocation(line: 207, column: 40, scope: !2792)
!2809 = !DILocation(line: 208, column: 43, scope: !2792)
!2810 = !DILocation(line: 210, column: 2, scope: !2792)
!2811 = !DILocation(line: 210, column: 5, scope: !2792)
!2812 = !DILocation(line: 210, column: 13, scope: !2792)
!2813 = !DILocation(line: 210, column: 19, scope: !2792)
!2814 = !DILocation(line: 210, column: 31, scope: !2792)
!2815 = !DILocation(line: 211, column: 2, scope: !2792)
!2816 = !DILocation(line: 211, column: 7, scope: !2792)
!2817 = !DILocation(line: 211, column: 12, scope: !2792)
!2818 = !DILocation(line: 211, column: 18, scope: !2792)
!2819 = !DILocation(line: 211, column: 27, scope: !2792)
!2820 = !DILocation(line: 212, column: 2, scope: !2792)
!2821 = !DILocation(line: 212, column: 6, scope: !2792)
!2822 = !DILocation(line: 212, column: 12, scope: !2792)
!2823 = !DILocation(line: 212, column: 18, scope: !2792)
!2824 = !DILocation(line: 213, column: 2, scope: !2792)
!2825 = !DILocation(line: 213, column: 6, scope: !2792)
!2826 = !DILocation(line: 213, column: 13, scope: !2792)
!2827 = !DILocation(line: 213, column: 18, scope: !2792)
!2828 = !DILocation(line: 214, column: 2, scope: !2792)
!2829 = !DILocation(line: 214, column: 19, scope: !2792)
!2830 = !DILocation(line: 214, column: 26, scope: !2792)
!2831 = !DILocation(line: 214, column: 31, scope: !2792)
!2832 = !DILocation(line: 220, column: 7, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 220, column: 6)
!2834 = !DILocation(line: 220, column: 13, scope: !2833)
!2835 = !DILocation(line: 220, column: 34, scope: !2833)
!2836 = !DILocation(line: 220, column: 40, scope: !2833)
!2837 = !DILocation(line: 220, column: 31, scope: !2833)
!2838 = !DILocation(line: 220, column: 58, scope: !2833)
!2839 = !DILocation(line: 220, column: 61, scope: !2833)
!2840 = !DILocation(line: 220, column: 66, scope: !2833)
!2841 = !DILocation(line: 221, column: 7, scope: !2833)
!2842 = !DILocation(line: 221, column: 13, scope: !2833)
!2843 = !DILocation(line: 221, column: 31, scope: !2833)
!2844 = !DILocation(line: 221, column: 34, scope: !2833)
!2845 = !DILocation(line: 221, column: 40, scope: !2833)
!2846 = !DILocation(line: 221, column: 58, scope: !2833)
!2847 = !DILocation(line: 221, column: 62, scope: !2833)
!2848 = !DILocation(line: 220, column: 6, scope: !2792)
!2849 = !DILocation(line: 222, column: 3, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 222, column: 3)
!2851 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 222, column: 3)
!2852 = !DILocation(line: 222, column: 3, scope: !2851)
!2853 = !DILocation(line: 222, column: 3, scope: !2833)
!2854 = !DILocation(line: 232, column: 6, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 232, column: 6)
!2856 = !DILocation(line: 232, column: 12, scope: !2855)
!2857 = !DILocation(line: 232, column: 30, scope: !2855)
!2858 = !DILocation(line: 232, column: 6, scope: !2792)
!2859 = !DILocation(line: 233, column: 12, scope: !2855)
!2860 = !DILocation(line: 233, column: 18, scope: !2855)
!2861 = !DILocation(line: 233, column: 10, scope: !2855)
!2862 = !DILocation(line: 233, column: 3, scope: !2855)
!2863 = !DILocation(line: 234, column: 11, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 234, column: 11)
!2865 = !DILocation(line: 234, column: 17, scope: !2864)
!2866 = !DILocation(line: 234, column: 11, scope: !2855)
!2867 = !DILocation(line: 235, column: 3, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 235, column: 3)
!2869 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 235, column: 3)
!2870 = !DILocation(line: 235, column: 3, scope: !2869)
!2871 = !DILocation(line: 235, column: 3, scope: !2864)
!2872 = !DILocation(line: 237, column: 10, scope: !2792)
!2873 = !DILocation(line: 237, column: 16, scope: !2792)
!2874 = !DILocation(line: 237, column: 26, scope: !2792)
!2875 = !DILocation(line: 237, column: 24, scope: !2792)
!2876 = !DILocation(line: 237, column: 8, scope: !2792)
!2877 = !DILocation(line: 238, column: 8, scope: !2792)
!2878 = !DILocation(line: 238, column: 14, scope: !2792)
!2879 = !DILocation(line: 238, column: 24, scope: !2792)
!2880 = !DILocation(line: 238, column: 22, scope: !2792)
!2881 = !DILocation(line: 238, column: 6, scope: !2792)
!2882 = !DILocation(line: 240, column: 16, scope: !2792)
!2883 = !DILocation(line: 240, column: 2, scope: !2792)
!2884 = !DILocation(line: 240, column: 7, scope: !2792)
!2885 = !DILocation(line: 240, column: 14, scope: !2792)
!2886 = !DILocation(line: 241, column: 15, scope: !2792)
!2887 = !DILocation(line: 241, column: 2, scope: !2792)
!2888 = !DILocation(line: 241, column: 7, scope: !2792)
!2889 = !DILocation(line: 241, column: 13, scope: !2792)
!2890 = !DILocation(line: 242, column: 13, scope: !2792)
!2891 = !DILocation(line: 242, column: 2, scope: !2792)
!2892 = !DILocation(line: 242, column: 7, scope: !2792)
!2893 = !DILocation(line: 242, column: 11, scope: !2792)
!2894 = !DILocation(line: 250, column: 10, scope: !2792)
!2895 = !DILocation(line: 250, column: 16, scope: !2792)
!2896 = !DILocation(line: 250, column: 2, scope: !2792)
!2897 = !DILocation(line: 252, column: 30, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 250, column: 31)
!2899 = !DILocation(line: 252, column: 35, scope: !2898)
!2900 = !DILocation(line: 252, column: 40, scope: !2898)
!2901 = !{i8 0, i8 2}
!2902 = !DILocation(line: 252, column: 3, scope: !2898)
!2903 = !DILocation(line: 254, column: 7, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 254, column: 7)
!2905 = !DILocation(line: 254, column: 13, scope: !2904)
!2906 = !DILocation(line: 254, column: 22, scope: !2904)
!2907 = !DILocation(line: 254, column: 30, scope: !2904)
!2908 = !DILocation(line: 254, column: 7, scope: !2898)
!2909 = !DILocation(line: 255, column: 4, scope: !2904)
!2910 = !DILocation(line: 255, column: 9, scope: !2904)
!2911 = !DILocation(line: 255, column: 15, scope: !2904)
!2912 = !DILocation(line: 256, column: 3, scope: !2898)
!2913 = !DILocation(line: 258, column: 29, scope: !2898)
!2914 = !DILocation(line: 258, column: 34, scope: !2898)
!2915 = !DILocation(line: 258, column: 39, scope: !2898)
!2916 = !DILocation(line: 259, column: 8, scope: !2898)
!2917 = !DILocation(line: 259, column: 14, scope: !2898)
!2918 = !DILocation(line: 259, column: 22, scope: !2898)
!2919 = !DILocation(line: 258, column: 3, scope: !2898)
!2920 = !DILocation(line: 260, column: 3, scope: !2898)
!2921 = !DILocation(line: 262, column: 3, scope: !2898)
!2922 = !DILocation(line: 262, column: 8, scope: !2898)
!2923 = !DILocation(line: 262, column: 14, scope: !2898)
!2924 = !DILocation(line: 263, column: 3, scope: !2898)
!2925 = !DILocation(line: 265, column: 3, scope: !2898)
!2926 = !DILocation(line: 268, column: 6, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 268, column: 6)
!2928 = !DILocation(line: 268, column: 12, scope: !2927)
!2929 = !DILocation(line: 268, column: 30, scope: !2927)
!2930 = !DILocation(line: 268, column: 6, scope: !2792)
!2931 = !DILocation(line: 269, column: 3, scope: !2927)
!2932 = !DILocation(line: 269, column: 8, scope: !2927)
!2933 = !DILocation(line: 269, column: 14, scope: !2927)
!2934 = !DILocation(line: 271, column: 11, scope: !2792)
!2935 = !DILocation(line: 271, column: 16, scope: !2792)
!2936 = !DILocation(line: 271, column: 22, scope: !2792)
!2937 = !DILocation(line: 271, column: 9, scope: !2792)
!2938 = !DILocation(line: 271, column: 2, scope: !2792)
!2939 = !DILocation(line: 272, column: 1, scope: !2792)
!2940 = distinct !DISubprogram(name: "acpi_dev_resource_ext_address_space", scope: !3, file: !3, line: 318, type: !2759, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2941)
!2941 = !{!2942, !2943, !2944}
!2942 = !DILocalVariable(name: "ares", arg: 1, scope: !2940, file: !3, line: 318, type: !2198)
!2943 = !DILocalVariable(name: "win", arg: 2, scope: !2940, file: !3, line: 319, type: !2761)
!2944 = !DILocalVariable(name: "ext_addr", scope: !2940, file: !3, line: 321, type: !2945)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2946 = !DILocation(line: 318, column: 64, scope: !2940)
!2947 = !DILocation(line: 319, column: 28, scope: !2940)
!2948 = !DILocation(line: 321, column: 2, scope: !2940)
!2949 = !DILocation(line: 321, column: 43, scope: !2940)
!2950 = !DILocation(line: 323, column: 2, scope: !2940)
!2951 = !DILocation(line: 323, column: 7, scope: !2940)
!2952 = !DILocation(line: 323, column: 11, scope: !2940)
!2953 = !DILocation(line: 323, column: 17, scope: !2940)
!2954 = !DILocation(line: 324, column: 6, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 324, column: 6)
!2956 = !DILocation(line: 324, column: 12, scope: !2955)
!2957 = !DILocation(line: 324, column: 17, scope: !2955)
!2958 = !DILocation(line: 324, column: 6, scope: !2940)
!2959 = !DILocation(line: 325, column: 3, scope: !2955)
!2960 = !DILocation(line: 327, column: 14, scope: !2940)
!2961 = !DILocation(line: 327, column: 20, scope: !2940)
!2962 = !DILocation(line: 327, column: 11, scope: !2940)
!2963 = !DILocation(line: 329, column: 27, scope: !2940)
!2964 = !DILocation(line: 329, column: 64, scope: !2940)
!2965 = !DILocation(line: 330, column: 7, scope: !2940)
!2966 = !DILocation(line: 330, column: 17, scope: !2940)
!2967 = !DILocation(line: 329, column: 9, scope: !2940)
!2968 = !DILocation(line: 329, column: 2, scope: !2940)
!2969 = !DILocation(line: 331, column: 1, scope: !2940)
!2970 = distinct !DISubprogram(name: "acpi_dev_irq_flags", scope: !3, file: !3, line: 341, type: !2971, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2973)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!152, !118, !118, !118, !118}
!2973 = !{!2974, !2975, !2976, !2977, !2978}
!2974 = !DILocalVariable(name: "triggering", arg: 1, scope: !2970, file: !3, line: 341, type: !118)
!2975 = !DILocalVariable(name: "polarity", arg: 2, scope: !2970, file: !3, line: 341, type: !118)
!2976 = !DILocalVariable(name: "shareable", arg: 3, scope: !2970, file: !3, line: 341, type: !118)
!2977 = !DILocalVariable(name: "wake_capable", arg: 4, scope: !2970, file: !3, line: 341, type: !118)
!2978 = !DILocalVariable(name: "flags", scope: !2970, file: !3, line: 343, type: !152)
!2979 = !DILocation(line: 341, column: 37, scope: !2970)
!2980 = !DILocation(line: 341, column: 52, scope: !2970)
!2981 = !DILocation(line: 341, column: 65, scope: !2970)
!2982 = !DILocation(line: 341, column: 79, scope: !2970)
!2983 = !DILocation(line: 343, column: 2, scope: !2970)
!2984 = !DILocation(line: 343, column: 16, scope: !2970)
!2985 = !DILocation(line: 345, column: 6, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 345, column: 6)
!2987 = !DILocation(line: 345, column: 17, scope: !2986)
!2988 = !DILocation(line: 345, column: 6, scope: !2970)
!2989 = !DILocation(line: 346, column: 11, scope: !2986)
!2990 = !DILocation(line: 346, column: 20, scope: !2986)
!2991 = !DILocation(line: 346, column: 9, scope: !2986)
!2992 = !DILocation(line: 346, column: 3, scope: !2986)
!2993 = !DILocation(line: 349, column: 11, scope: !2986)
!2994 = !DILocation(line: 349, column: 20, scope: !2986)
!2995 = !DILocation(line: 349, column: 9, scope: !2986)
!2996 = !DILocation(line: 352, column: 6, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 352, column: 6)
!2998 = !DILocation(line: 352, column: 16, scope: !2997)
!2999 = !DILocation(line: 352, column: 6, scope: !2970)
!3000 = !DILocation(line: 353, column: 9, scope: !2997)
!3001 = !DILocation(line: 353, column: 3, scope: !2997)
!3002 = !DILocation(line: 355, column: 6, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 355, column: 6)
!3004 = !DILocation(line: 355, column: 19, scope: !3003)
!3005 = !DILocation(line: 355, column: 6, scope: !2970)
!3006 = !DILocation(line: 356, column: 9, scope: !3003)
!3007 = !DILocation(line: 356, column: 3, scope: !3003)
!3008 = !DILocation(line: 358, column: 9, scope: !2970)
!3009 = !DILocation(line: 358, column: 15, scope: !2970)
!3010 = !DILocation(line: 359, column: 1, scope: !2970)
!3011 = !DILocation(line: 358, column: 2, scope: !2970)
!3012 = distinct !DISubprogram(name: "acpi_dev_get_irq_type", scope: !3, file: !3, line: 367, type: !3013, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3015)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!7, !78, !78}
!3015 = !{!3016, !3017}
!3016 = !DILocalVariable(name: "triggering", arg: 1, scope: !3012, file: !3, line: 367, type: !78)
!3017 = !DILocalVariable(name: "polarity", arg: 2, scope: !3012, file: !3, line: 367, type: !78)
!3018 = !DILocation(line: 367, column: 40, scope: !3012)
!3019 = !DILocation(line: 367, column: 56, scope: !3012)
!3020 = !DILocation(line: 369, column: 10, scope: !3012)
!3021 = !DILocation(line: 369, column: 2, scope: !3012)
!3022 = !DILocation(line: 371, column: 10, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 369, column: 20)
!3024 = !DILocation(line: 371, column: 21, scope: !3023)
!3025 = !DILocation(line: 371, column: 3, scope: !3023)
!3026 = !DILocation(line: 375, column: 10, scope: !3023)
!3027 = !DILocation(line: 375, column: 21, scope: !3023)
!3028 = !DILocation(line: 375, column: 3, scope: !3023)
!3029 = !DILocation(line: 379, column: 7, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 379, column: 7)
!3031 = !DILocation(line: 379, column: 18, scope: !3030)
!3032 = !DILocation(line: 379, column: 7, scope: !3023)
!3033 = !DILocation(line: 380, column: 4, scope: !3030)
!3034 = !DILocation(line: 379, column: 21, scope: !3030)
!3035 = !DILocation(line: 383, column: 3, scope: !3023)
!3036 = !DILocation(line: 385, column: 1, scope: !3012)
!3037 = distinct !DISubprogram(name: "acpi_dev_resource_interrupt", scope: !3, file: !3, line: 783, type: !3038, scopeLine: 785, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3040)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!199, !2198, !78, !2023}
!3040 = !{!3041, !3042, !3043, !3044, !3046}
!3041 = !DILocalVariable(name: "ares", arg: 1, scope: !3037, file: !3, line: 783, type: !2198)
!3042 = !DILocalVariable(name: "index", arg: 2, scope: !3037, file: !3, line: 783, type: !78)
!3043 = !DILocalVariable(name: "res", arg: 3, scope: !3037, file: !3, line: 784, type: !2023)
!3044 = !DILocalVariable(name: "irq", scope: !3037, file: !3, line: 786, type: !3045)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!3046 = !DILocalVariable(name: "ext_irq", scope: !3037, file: !3, line: 787, type: !3047)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!3048 = !DILocation(line: 783, column: 56, scope: !3037)
!3049 = !DILocation(line: 783, column: 66, scope: !3037)
!3050 = !DILocation(line: 784, column: 23, scope: !3037)
!3051 = !DILocation(line: 786, column: 2, scope: !3037)
!3052 = !DILocation(line: 786, column: 28, scope: !3037)
!3053 = !DILocation(line: 787, column: 2, scope: !3037)
!3054 = !DILocation(line: 787, column: 37, scope: !3037)
!3055 = !DILocation(line: 789, column: 10, scope: !3037)
!3056 = !DILocation(line: 789, column: 16, scope: !3037)
!3057 = !DILocation(line: 789, column: 2, scope: !3037)
!3058 = !DILocation(line: 795, column: 10, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 789, column: 22)
!3060 = !DILocation(line: 795, column: 16, scope: !3059)
!3061 = !DILocation(line: 795, column: 7, scope: !3059)
!3062 = !DILocation(line: 796, column: 7, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 796, column: 7)
!3064 = !DILocation(line: 796, column: 16, scope: !3063)
!3065 = !DILocation(line: 796, column: 21, scope: !3063)
!3066 = !DILocation(line: 796, column: 13, scope: !3063)
!3067 = !DILocation(line: 796, column: 7, scope: !3059)
!3068 = !DILocation(line: 797, column: 25, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 796, column: 38)
!3070 = !DILocation(line: 797, column: 4, scope: !3069)
!3071 = !DILocation(line: 798, column: 4, scope: !3069)
!3072 = !DILocation(line: 800, column: 28, scope: !3059)
!3073 = !DILocation(line: 800, column: 33, scope: !3059)
!3074 = !DILocation(line: 800, column: 38, scope: !3059)
!3075 = !DILocation(line: 800, column: 49, scope: !3059)
!3076 = !DILocation(line: 801, column: 7, scope: !3059)
!3077 = !DILocation(line: 801, column: 12, scope: !3059)
!3078 = !DILocation(line: 801, column: 24, scope: !3059)
!3079 = !DILocation(line: 801, column: 29, scope: !3059)
!3080 = !DILocation(line: 802, column: 7, scope: !3059)
!3081 = !DILocation(line: 802, column: 12, scope: !3059)
!3082 = !DILocation(line: 802, column: 23, scope: !3059)
!3083 = !DILocation(line: 802, column: 28, scope: !3059)
!3084 = !DILocation(line: 800, column: 3, scope: !3059)
!3085 = !DILocation(line: 804, column: 3, scope: !3059)
!3086 = !DILocation(line: 806, column: 14, scope: !3059)
!3087 = !DILocation(line: 806, column: 20, scope: !3059)
!3088 = !DILocation(line: 806, column: 11, scope: !3059)
!3089 = !DILocation(line: 807, column: 7, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 807, column: 7)
!3091 = !DILocation(line: 807, column: 16, scope: !3090)
!3092 = !DILocation(line: 807, column: 25, scope: !3090)
!3093 = !DILocation(line: 807, column: 13, scope: !3090)
!3094 = !DILocation(line: 807, column: 7, scope: !3059)
!3095 = !DILocation(line: 808, column: 25, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 807, column: 42)
!3097 = !DILocation(line: 808, column: 4, scope: !3096)
!3098 = !DILocation(line: 809, column: 4, scope: !3096)
!3099 = !DILocation(line: 811, column: 14, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 811, column: 7)
!3101 = !DILocation(line: 811, column: 7, scope: !3100)
!3102 = !DILocation(line: 811, column: 7, scope: !3059)
!3103 = !DILocation(line: 812, column: 29, scope: !3100)
!3104 = !DILocation(line: 812, column: 34, scope: !3100)
!3105 = !DILocation(line: 812, column: 43, scope: !3100)
!3106 = !DILocation(line: 812, column: 54, scope: !3100)
!3107 = !DILocation(line: 813, column: 7, scope: !3100)
!3108 = !DILocation(line: 813, column: 16, scope: !3100)
!3109 = !DILocation(line: 813, column: 28, scope: !3100)
!3110 = !DILocation(line: 813, column: 37, scope: !3100)
!3111 = !DILocation(line: 814, column: 7, scope: !3100)
!3112 = !DILocation(line: 814, column: 16, scope: !3100)
!3113 = !DILocation(line: 814, column: 27, scope: !3100)
!3114 = !DILocation(line: 814, column: 36, scope: !3100)
!3115 = !DILocation(line: 812, column: 4, scope: !3100)
!3116 = !DILocation(line: 817, column: 25, scope: !3100)
!3117 = !DILocation(line: 817, column: 4, scope: !3100)
!3118 = !DILocation(line: 818, column: 3, scope: !3059)
!3119 = !DILocation(line: 820, column: 3, scope: !3059)
!3120 = !DILocation(line: 820, column: 8, scope: !3059)
!3121 = !DILocation(line: 820, column: 14, scope: !3059)
!3122 = !DILocation(line: 821, column: 3, scope: !3059)
!3123 = !DILocation(line: 824, column: 2, scope: !3037)
!3124 = !DILocation(line: 825, column: 1, scope: !3037)
!3125 = distinct !DISubprogram(name: "irqresource_disabled", scope: !372, file: !372, line: 344, type: !3126, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{null, !2023, !164}
!3128 = !{!3129, !3130}
!3129 = !DILocalVariable(name: "res", arg: 1, scope: !3125, file: !372, line: 344, type: !2023)
!3130 = !DILocalVariable(name: "irq", arg: 2, scope: !3125, file: !372, line: 344, type: !164)
!3131 = !DILocation(line: 344, column: 58, scope: !3125)
!3132 = !DILocation(line: 344, column: 67, scope: !3125)
!3133 = !DILocation(line: 346, column: 15, scope: !3125)
!3134 = !DILocation(line: 346, column: 2, scope: !3125)
!3135 = !DILocation(line: 346, column: 7, scope: !3125)
!3136 = !DILocation(line: 346, column: 13, scope: !3125)
!3137 = !DILocation(line: 347, column: 13, scope: !3125)
!3138 = !DILocation(line: 347, column: 2, scope: !3125)
!3139 = !DILocation(line: 347, column: 7, scope: !3125)
!3140 = !DILocation(line: 347, column: 11, scope: !3125)
!3141 = !DILocation(line: 348, column: 2, scope: !3125)
!3142 = !DILocation(line: 348, column: 7, scope: !3125)
!3143 = !DILocation(line: 348, column: 13, scope: !3125)
!3144 = !DILocation(line: 349, column: 1, scope: !3125)
!3145 = distinct !DISubprogram(name: "acpi_dev_get_irqresource", scope: !3, file: !3, line: 716, type: !3146, scopeLine: 719, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3148)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{null, !2023, !164, !118, !118, !118, !118, !199}
!3148 = !{!3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3162}
!3149 = !DILocalVariable(name: "res", arg: 1, scope: !3145, file: !3, line: 716, type: !2023)
!3150 = !DILocalVariable(name: "gsi", arg: 2, scope: !3145, file: !3, line: 716, type: !164)
!3151 = !DILocalVariable(name: "triggering", arg: 3, scope: !3145, file: !3, line: 717, type: !118)
!3152 = !DILocalVariable(name: "polarity", arg: 4, scope: !3145, file: !3, line: 717, type: !118)
!3153 = !DILocalVariable(name: "shareable", arg: 5, scope: !3145, file: !3, line: 717, type: !118)
!3154 = !DILocalVariable(name: "wake_capable", arg: 6, scope: !3145, file: !3, line: 718, type: !118)
!3155 = !DILocalVariable(name: "check_override", arg: 7, scope: !3145, file: !3, line: 718, type: !199)
!3156 = !DILocalVariable(name: "irq", scope: !3145, file: !3, line: 720, type: !78)
!3157 = !DILocalVariable(name: "p", scope: !3145, file: !3, line: 720, type: !78)
!3158 = !DILocalVariable(name: "t", scope: !3145, file: !3, line: 720, type: !78)
!3159 = !DILocalVariable(name: "trig", scope: !3160, file: !3, line: 740, type: !118)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 739, column: 43)
!3161 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 737, column: 6)
!3162 = !DILocalVariable(name: "pol", scope: !3160, file: !3, line: 741, type: !118)
!3163 = !DILocation(line: 716, column: 55, scope: !3145)
!3164 = !DILocation(line: 716, column: 64, scope: !3145)
!3165 = !DILocation(line: 717, column: 13, scope: !3145)
!3166 = !DILocation(line: 717, column: 28, scope: !3145)
!3167 = !DILocation(line: 717, column: 41, scope: !3145)
!3168 = !DILocation(line: 718, column: 13, scope: !3145)
!3169 = !DILocation(line: 718, column: 32, scope: !3145)
!3170 = !DILocation(line: 720, column: 2, scope: !3145)
!3171 = !DILocation(line: 720, column: 6, scope: !3145)
!3172 = !DILocation(line: 720, column: 11, scope: !3145)
!3173 = !DILocation(line: 720, column: 14, scope: !3145)
!3174 = !DILocation(line: 722, column: 7, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 722, column: 6)
!3176 = !DILocation(line: 722, column: 6, scope: !3145)
!3177 = !DILocation(line: 723, column: 24, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3175, file: !3, line: 722, column: 23)
!3179 = !DILocation(line: 723, column: 29, scope: !3178)
!3180 = !DILocation(line: 723, column: 3, scope: !3178)
!3181 = !DILocation(line: 724, column: 3, scope: !3178)
!3182 = !DILocation(line: 737, column: 6, scope: !3161)
!3183 = !DILocation(line: 737, column: 21, scope: !3161)
!3184 = !DILocation(line: 738, column: 28, scope: !3161)
!3185 = !DILocation(line: 738, column: 33, scope: !3161)
!3186 = !DILocation(line: 738, column: 45, scope: !3161)
!3187 = !DILocation(line: 738, column: 55, scope: !3161)
!3188 = !DILocation(line: 738, column: 6, scope: !3161)
!3189 = !DILocation(line: 738, column: 66, scope: !3161)
!3190 = !DILocation(line: 739, column: 29, scope: !3161)
!3191 = !DILocation(line: 739, column: 7, scope: !3161)
!3192 = !DILocation(line: 737, column: 6, scope: !3145)
!3193 = !DILocation(line: 740, column: 3, scope: !3160)
!3194 = !DILocation(line: 740, column: 6, scope: !3160)
!3195 = !DILocation(line: 740, column: 13, scope: !3160)
!3196 = !DILocation(line: 741, column: 3, scope: !3160)
!3197 = !DILocation(line: 741, column: 6, scope: !3160)
!3198 = !DILocation(line: 741, column: 12, scope: !3160)
!3199 = !DILocation(line: 743, column: 7, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 743, column: 7)
!3201 = !DILocation(line: 743, column: 21, scope: !3200)
!3202 = !DILocation(line: 743, column: 18, scope: !3200)
!3203 = !DILocation(line: 743, column: 26, scope: !3200)
!3204 = !DILocation(line: 743, column: 29, scope: !3200)
!3205 = !DILocation(line: 743, column: 41, scope: !3200)
!3206 = !DILocation(line: 743, column: 38, scope: !3200)
!3207 = !DILocation(line: 743, column: 7, scope: !3160)
!3208 = !DILocation(line: 744, column: 4, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 744, column: 4)
!3210 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 743, column: 46)
!3211 = !DILocation(line: 744, column: 4, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 744, column: 4)
!3213 = !DILocation(line: 749, column: 17, scope: !3210)
!3214 = !DILocation(line: 749, column: 15, scope: !3210)
!3215 = !DILocation(line: 750, column: 15, scope: !3210)
!3216 = !DILocation(line: 750, column: 13, scope: !3210)
!3217 = !DILocation(line: 751, column: 3, scope: !3210)
!3218 = !DILocation(line: 752, column: 2, scope: !3161)
!3219 = !DILocation(line: 752, column: 2, scope: !3160)
!3220 = !DILocation(line: 754, column: 34, scope: !3145)
!3221 = !DILocation(line: 754, column: 46, scope: !3145)
!3222 = !DILocation(line: 754, column: 56, scope: !3145)
!3223 = !DILocation(line: 754, column: 67, scope: !3145)
!3224 = !DILocation(line: 754, column: 15, scope: !3145)
!3225 = !DILocation(line: 754, column: 2, scope: !3145)
!3226 = !DILocation(line: 754, column: 7, scope: !3145)
!3227 = !DILocation(line: 754, column: 13, scope: !3145)
!3228 = !DILocation(line: 755, column: 32, scope: !3145)
!3229 = !DILocation(line: 755, column: 37, scope: !3145)
!3230 = !DILocation(line: 755, column: 49, scope: !3145)
!3231 = !DILocation(line: 755, column: 8, scope: !3145)
!3232 = !DILocation(line: 755, column: 6, scope: !3145)
!3233 = !DILocation(line: 756, column: 6, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 756, column: 6)
!3235 = !DILocation(line: 756, column: 10, scope: !3234)
!3236 = !DILocation(line: 756, column: 6, scope: !3145)
!3237 = !DILocation(line: 757, column: 16, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 756, column: 16)
!3239 = !DILocation(line: 757, column: 3, scope: !3238)
!3240 = !DILocation(line: 757, column: 8, scope: !3238)
!3241 = !DILocation(line: 757, column: 14, scope: !3238)
!3242 = !DILocation(line: 758, column: 14, scope: !3238)
!3243 = !DILocation(line: 758, column: 3, scope: !3238)
!3244 = !DILocation(line: 758, column: 8, scope: !3238)
!3245 = !DILocation(line: 758, column: 12, scope: !3238)
!3246 = !DILocation(line: 759, column: 2, scope: !3238)
!3247 = !DILocation(line: 760, column: 24, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 759, column: 9)
!3249 = !DILocation(line: 760, column: 29, scope: !3248)
!3250 = !DILocation(line: 760, column: 3, scope: !3248)
!3251 = !DILocation(line: 762, column: 1, scope: !3145)
!3252 = distinct !DISubprogram(name: "is_gsi", scope: !3, file: !3, line: 46, type: !3253, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3255)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!199, !3047}
!3255 = !{!3256}
!3256 = !DILocalVariable(name: "ext_irq", arg: 1, scope: !3252, file: !3, line: 46, type: !3047)
!3257 = !DILocation(line: 46, column: 62, scope: !3252)
!3258 = !DILocation(line: 48, column: 2, scope: !3252)
!3259 = distinct !DISubprogram(name: "acpi_dev_free_resource_list", scope: !3, file: !3, line: 832, type: !3260, scopeLine: 833, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3262)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{null, !156}
!3262 = !{!3263}
!3263 = !DILocalVariable(name: "list", arg: 1, scope: !3259, file: !3, line: 832, type: !156)
!3264 = !DILocation(line: 832, column: 52, scope: !3259)
!3265 = !DILocation(line: 834, column: 21, scope: !3259)
!3266 = !DILocation(line: 834, column: 2, scope: !3259)
!3267 = !DILocation(line: 835, column: 1, scope: !3259)
!3268 = !DISubprogram(name: "resource_list_free", scope: !2019, file: !2019, line: 32, type: !3260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3269 = distinct !DISubprogram(name: "acpi_dev_get_resources", scope: !3, file: !3, line: 955, type: !3270, scopeLine: 958, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3275)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!78, !168, !156, !3272, !117}
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!78, !2198, !117}
!3275 = !{!3276, !3277, !3278, !3279}
!3276 = !DILocalVariable(name: "adev", arg: 1, scope: !3269, file: !3, line: 955, type: !168)
!3277 = !DILocalVariable(name: "list", arg: 2, scope: !3269, file: !3, line: 955, type: !156)
!3278 = !DILocalVariable(name: "preproc", arg: 3, scope: !3269, file: !3, line: 956, type: !3272)
!3279 = !DILocalVariable(name: "preproc_data", arg: 4, scope: !3269, file: !3, line: 957, type: !117)
!3280 = !DILocation(line: 955, column: 48, scope: !3269)
!3281 = !DILocation(line: 955, column: 72, scope: !3269)
!3282 = !DILocation(line: 956, column: 13, scope: !3269)
!3283 = !DILocation(line: 957, column: 13, scope: !3269)
!3284 = !DILocation(line: 959, column: 34, scope: !3269)
!3285 = !DILocation(line: 959, column: 40, scope: !3269)
!3286 = !DILocation(line: 959, column: 46, scope: !3269)
!3287 = !DILocation(line: 959, column: 55, scope: !3269)
!3288 = !DILocation(line: 959, column: 9, scope: !3269)
!3289 = !DILocation(line: 959, column: 2, scope: !3269)
!3290 = distinct !DISubprogram(name: "__acpi_dev_get_resources", scope: !3, file: !3, line: 902, type: !3291, scopeLine: 906, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3293)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!78, !168, !156, !3272, !117, !295}
!3293 = !{!3294, !3295, !3296, !3297, !3298, !3299, !3307}
!3294 = !DILocalVariable(name: "adev", arg: 1, scope: !3290, file: !3, line: 902, type: !168)
!3295 = !DILocalVariable(name: "list", arg: 2, scope: !3290, file: !3, line: 903, type: !156)
!3296 = !DILocalVariable(name: "preproc", arg: 3, scope: !3290, file: !3, line: 904, type: !3272)
!3297 = !DILocalVariable(name: "preproc_data", arg: 4, scope: !3290, file: !3, line: 905, type: !117)
!3298 = !DILocalVariable(name: "method", arg: 5, scope: !3290, file: !3, line: 905, type: !295)
!3299 = !DILocalVariable(name: "c", scope: !3290, file: !3, line: 907, type: !3300)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "res_proc_context", file: !3, line: 838, size: 256, elements: !3301)
!3301 = !{!3302, !3303, !3304, !3305, !3306}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3300, file: !3, line: 839, baseType: !156, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "preproc", scope: !3300, file: !3, line: 840, baseType: !3272, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "preproc_data", scope: !3300, file: !3, line: 841, baseType: !117, size: 64, offset: 128)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3300, file: !3, line: 842, baseType: !78, size: 32, offset: 192)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !3300, file: !3, line: 843, baseType: !78, size: 32, offset: 224)
!3307 = !DILocalVariable(name: "status", scope: !3290, file: !3, line: 908, type: !162)
!3308 = !DILocation(line: 902, column: 57, scope: !3290)
!3309 = !DILocation(line: 903, column: 27, scope: !3290)
!3310 = !DILocation(line: 904, column: 15, scope: !3290)
!3311 = !DILocation(line: 905, column: 15, scope: !3290)
!3312 = !DILocation(line: 905, column: 35, scope: !3290)
!3313 = !DILocation(line: 907, column: 2, scope: !3290)
!3314 = !DILocation(line: 907, column: 26, scope: !3290)
!3315 = !DILocation(line: 908, column: 2, scope: !3290)
!3316 = !DILocation(line: 908, column: 14, scope: !3290)
!3317 = !DILocation(line: 910, column: 7, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 910, column: 6)
!3319 = !DILocation(line: 910, column: 12, scope: !3318)
!3320 = !DILocation(line: 910, column: 16, scope: !3318)
!3321 = !DILocation(line: 910, column: 22, scope: !3318)
!3322 = !DILocation(line: 910, column: 29, scope: !3318)
!3323 = !DILocation(line: 910, column: 44, scope: !3318)
!3324 = !DILocation(line: 910, column: 33, scope: !3318)
!3325 = !DILocation(line: 910, column: 6, scope: !3290)
!3326 = !DILocation(line: 911, column: 3, scope: !3318)
!3327 = !DILocation(line: 913, column: 23, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 913, column: 6)
!3329 = !DILocation(line: 913, column: 29, scope: !3328)
!3330 = !DILocation(line: 913, column: 37, scope: !3328)
!3331 = !DILocation(line: 913, column: 7, scope: !3328)
!3332 = !DILocation(line: 913, column: 6, scope: !3290)
!3333 = !DILocation(line: 914, column: 3, scope: !3328)
!3334 = !DILocation(line: 916, column: 11, scope: !3290)
!3335 = !DILocation(line: 916, column: 4, scope: !3290)
!3336 = !DILocation(line: 916, column: 9, scope: !3290)
!3337 = !DILocation(line: 917, column: 14, scope: !3290)
!3338 = !DILocation(line: 917, column: 4, scope: !3290)
!3339 = !DILocation(line: 917, column: 12, scope: !3290)
!3340 = !DILocation(line: 918, column: 19, scope: !3290)
!3341 = !DILocation(line: 918, column: 4, scope: !3290)
!3342 = !DILocation(line: 918, column: 17, scope: !3290)
!3343 = !DILocation(line: 919, column: 4, scope: !3290)
!3344 = !DILocation(line: 919, column: 10, scope: !3290)
!3345 = !DILocation(line: 920, column: 4, scope: !3290)
!3346 = !DILocation(line: 920, column: 10, scope: !3290)
!3347 = !DILocation(line: 921, column: 31, scope: !3290)
!3348 = !DILocation(line: 921, column: 37, scope: !3290)
!3349 = !DILocation(line: 921, column: 45, scope: !3290)
!3350 = !DILocation(line: 921, column: 11, scope: !3290)
!3351 = !DILocation(line: 921, column: 9, scope: !3290)
!3352 = !DILocation(line: 923, column: 6, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 923, column: 6)
!3354 = !DILocation(line: 923, column: 6, scope: !3290)
!3355 = !DILocation(line: 924, column: 31, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 923, column: 28)
!3357 = !DILocation(line: 924, column: 3, scope: !3356)
!3358 = !DILocation(line: 925, column: 12, scope: !3356)
!3359 = !DILocation(line: 925, column: 10, scope: !3356)
!3360 = !DILocation(line: 925, column: 22, scope: !3356)
!3361 = !DILocation(line: 925, column: 3, scope: !3356)
!3362 = !DILocation(line: 928, column: 11, scope: !3290)
!3363 = !DILocation(line: 928, column: 2, scope: !3290)
!3364 = !DILocation(line: 929, column: 1, scope: !3290)
!3365 = distinct !DISubprogram(name: "acpi_dev_get_dma_resources", scope: !3, file: !3, line: 995, type: !3366, scopeLine: 996, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3368)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!78, !168, !156}
!3368 = !{!3369, !3370}
!3369 = !DILocalVariable(name: "adev", arg: 1, scope: !3365, file: !3, line: 995, type: !168)
!3370 = !DILocalVariable(name: "list", arg: 2, scope: !3365, file: !3, line: 995, type: !156)
!3371 = !DILocation(line: 995, column: 52, scope: !3365)
!3372 = !DILocation(line: 995, column: 76, scope: !3365)
!3373 = !DILocation(line: 997, column: 34, scope: !3365)
!3374 = !DILocation(line: 997, column: 40, scope: !3365)
!3375 = !DILocation(line: 997, column: 9, scope: !3365)
!3376 = !DILocation(line: 997, column: 2, scope: !3365)
!3377 = distinct !DISubprogram(name: "is_memory", scope: !3, file: !3, line: 964, type: !3273, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3378)
!3378 = !{!3379, !3380, !3381, !3382}
!3379 = !DILocalVariable(name: "ares", arg: 1, scope: !3377, file: !3, line: 964, type: !2198)
!3380 = !DILocalVariable(name: "not_used", arg: 2, scope: !3377, file: !3, line: 964, type: !117)
!3381 = !DILocalVariable(name: "win", scope: !3377, file: !3, line: 966, type: !2762)
!3382 = !DILocalVariable(name: "res", scope: !3377, file: !3, line: 967, type: !2023)
!3383 = !DILocation(line: 964, column: 44, scope: !3377)
!3384 = !DILocation(line: 964, column: 56, scope: !3377)
!3385 = !DILocation(line: 966, column: 2, scope: !3377)
!3386 = !DILocation(line: 966, column: 22, scope: !3377)
!3387 = !DILocation(line: 967, column: 2, scope: !3377)
!3388 = !DILocation(line: 967, column: 19, scope: !3377)
!3389 = !DILocation(line: 967, column: 30, scope: !3377)
!3390 = !DILocation(line: 969, column: 2, scope: !3377)
!3391 = !DILocation(line: 971, column: 36, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 971, column: 6)
!3393 = !DILocation(line: 971, column: 6, scope: !3392)
!3394 = !DILocation(line: 971, column: 6, scope: !3377)
!3395 = !DILocation(line: 972, column: 3, scope: !3392)
!3396 = !DILocation(line: 974, column: 36, scope: !3377)
!3397 = !DILocation(line: 974, column: 42, scope: !3377)
!3398 = !DILocation(line: 974, column: 11, scope: !3377)
!3399 = !DILocation(line: 975, column: 9, scope: !3377)
!3400 = !DILocation(line: 975, column: 44, scope: !3377)
!3401 = !DILocation(line: 975, column: 12, scope: !3377)
!3402 = !DILocation(line: 976, column: 9, scope: !3377)
!3403 = !DILocation(line: 976, column: 48, scope: !3377)
!3404 = !DILocation(line: 976, column: 12, scope: !3377)
!3405 = !DILocation(line: 974, column: 9, scope: !3377)
!3406 = !DILocation(line: 974, column: 2, scope: !3377)
!3407 = !DILocation(line: 977, column: 1, scope: !3377)
!3408 = distinct !DISubprogram(name: "acpi_dev_get_memory_resources", scope: !3, file: !3, line: 1013, type: !3366, scopeLine: 1014, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3409)
!3409 = !{!3410, !3411}
!3410 = !DILocalVariable(name: "adev", arg: 1, scope: !3408, file: !3, line: 1013, type: !168)
!3411 = !DILocalVariable(name: "list", arg: 2, scope: !3408, file: !3, line: 1013, type: !156)
!3412 = !DILocation(line: 1013, column: 55, scope: !3408)
!3413 = !DILocation(line: 1013, column: 79, scope: !3408)
!3414 = !DILocation(line: 1015, column: 32, scope: !3408)
!3415 = !DILocation(line: 1015, column: 38, scope: !3408)
!3416 = !DILocation(line: 1015, column: 9, scope: !3408)
!3417 = !DILocation(line: 1015, column: 2, scope: !3408)
!3418 = distinct !DISubprogram(name: "acpi_dev_filter_resource_type", scope: !3, file: !3, line: 1028, type: !3419, scopeLine: 1030, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3421)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!78, !2198, !152}
!3421 = !{!3422, !3423, !3424}
!3422 = !DILocalVariable(name: "ares", arg: 1, scope: !3418, file: !3, line: 1028, type: !2198)
!3423 = !DILocalVariable(name: "types", arg: 2, scope: !3418, file: !3, line: 1029, type: !152)
!3424 = !DILocalVariable(name: "type", scope: !3418, file: !3, line: 1031, type: !152)
!3425 = !DILocation(line: 1028, column: 57, scope: !3418)
!3426 = !DILocation(line: 1029, column: 21, scope: !3418)
!3427 = !DILocation(line: 1031, column: 2, scope: !3418)
!3428 = !DILocation(line: 1031, column: 16, scope: !3418)
!3429 = !DILocation(line: 1033, column: 10, scope: !3418)
!3430 = !DILocation(line: 1033, column: 16, scope: !3418)
!3431 = !DILocation(line: 1033, column: 2, scope: !3418)
!3432 = !DILocation(line: 1037, column: 8, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 1033, column: 22)
!3434 = !DILocation(line: 1038, column: 3, scope: !3433)
!3435 = !DILocation(line: 1041, column: 8, scope: !3433)
!3436 = !DILocation(line: 1042, column: 3, scope: !3433)
!3437 = !DILocation(line: 1045, column: 8, scope: !3433)
!3438 = !DILocation(line: 1046, column: 3, scope: !3433)
!3439 = !DILocation(line: 1049, column: 8, scope: !3433)
!3440 = !DILocation(line: 1050, column: 3, scope: !3433)
!3441 = !DILocation(line: 1052, column: 8, scope: !3433)
!3442 = !DILocation(line: 1053, column: 3, scope: !3433)
!3443 = !DILocation(line: 1058, column: 7, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 1058, column: 7)
!3445 = !DILocation(line: 1058, column: 13, scope: !3444)
!3446 = !DILocation(line: 1058, column: 26, scope: !3444)
!3447 = !DILocation(line: 1058, column: 40, scope: !3444)
!3448 = !DILocation(line: 1058, column: 7, scope: !3433)
!3449 = !DILocation(line: 1059, column: 9, scope: !3444)
!3450 = !DILocation(line: 1059, column: 4, scope: !3444)
!3451 = !DILocation(line: 1060, column: 12, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3444, file: !3, line: 1060, column: 12)
!3453 = !DILocation(line: 1060, column: 18, scope: !3452)
!3454 = !DILocation(line: 1060, column: 31, scope: !3452)
!3455 = !DILocation(line: 1060, column: 45, scope: !3452)
!3456 = !DILocation(line: 1060, column: 12, scope: !3444)
!3457 = !DILocation(line: 1061, column: 9, scope: !3452)
!3458 = !DILocation(line: 1061, column: 4, scope: !3452)
!3459 = !DILocation(line: 1062, column: 12, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 1062, column: 12)
!3461 = !DILocation(line: 1062, column: 18, scope: !3460)
!3462 = !DILocation(line: 1062, column: 31, scope: !3460)
!3463 = !DILocation(line: 1062, column: 45, scope: !3460)
!3464 = !DILocation(line: 1062, column: 12, scope: !3452)
!3465 = !DILocation(line: 1064, column: 9, scope: !3460)
!3466 = !DILocation(line: 1064, column: 4, scope: !3460)
!3467 = !DILocation(line: 1065, column: 3, scope: !3433)
!3468 = !DILocation(line: 1067, column: 3, scope: !3433)
!3469 = !DILocation(line: 1070, column: 10, scope: !3418)
!3470 = !DILocation(line: 1070, column: 17, scope: !3418)
!3471 = !DILocation(line: 1070, column: 15, scope: !3418)
!3472 = !DILocation(line: 1070, column: 9, scope: !3418)
!3473 = !DILocation(line: 1071, column: 1, scope: !3418)
!3474 = !DILocation(line: 1070, column: 2, scope: !3418)
!3475 = distinct !DISubprogram(name: "acpi_resource_consumer", scope: !3, file: !3, line: 1123, type: !3476, scopeLine: 1124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3478)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!168, !2023}
!3478 = !{!3479, !3480}
!3479 = !DILocalVariable(name: "res", arg: 1, scope: !3475, file: !3, line: 1123, type: !2023)
!3480 = !DILocalVariable(name: "consumer", scope: !3475, file: !3, line: 1125, type: !168)
!3481 = !DILocation(line: 1123, column: 61, scope: !3475)
!3482 = !DILocation(line: 1125, column: 2, scope: !3475)
!3483 = !DILocation(line: 1125, column: 22, scope: !3475)
!3484 = !DILocation(line: 1127, column: 47, scope: !3475)
!3485 = !DILocation(line: 1127, column: 2, scope: !3475)
!3486 = !DILocation(line: 1128, column: 9, scope: !3475)
!3487 = !DILocation(line: 1129, column: 1, scope: !3475)
!3488 = !DILocation(line: 1128, column: 2, scope: !3475)
!3489 = !DISubprogram(name: "acpi_get_devices", scope: !2788, file: !2788, line: 519, type: !3490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!162, !218, !3492, !117, !150}
!3492 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_callback", file: !163, line: 1135, baseType: !3493)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!162, !175, !164, !117, !150}
!3496 = distinct !DISubprogram(name: "acpi_res_consumer_cb", scope: !3, file: !3, line: 1097, type: !3494, scopeLine: 1099, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3497)
!3497 = !{!3498, !3499, !3500, !3501, !3502, !3503, !3504}
!3498 = !DILocalVariable(name: "handle", arg: 1, scope: !3496, file: !3, line: 1097, type: !175)
!3499 = !DILocalVariable(name: "depth", arg: 2, scope: !3496, file: !3, line: 1097, type: !164)
!3500 = !DILocalVariable(name: "context", arg: 3, scope: !3496, file: !3, line: 1098, type: !117)
!3501 = !DILocalVariable(name: "ret", arg: 4, scope: !3496, file: !3, line: 1098, type: !150)
!3502 = !DILocalVariable(name: "res", scope: !3496, file: !3, line: 1100, type: !2023)
!3503 = !DILocalVariable(name: "consumer", scope: !3496, file: !3, line: 1101, type: !167)
!3504 = !DILocalVariable(name: "adev", scope: !3496, file: !3, line: 1102, type: !168)
!3505 = !DILocation(line: 1097, column: 53, scope: !3496)
!3506 = !DILocation(line: 1097, column: 65, scope: !3496)
!3507 = !DILocation(line: 1098, column: 13, scope: !3496)
!3508 = !DILocation(line: 1098, column: 29, scope: !3496)
!3509 = !DILocation(line: 1100, column: 2, scope: !3496)
!3510 = !DILocation(line: 1100, column: 19, scope: !3496)
!3511 = !DILocation(line: 1100, column: 25, scope: !3496)
!3512 = !DILocation(line: 1101, column: 2, scope: !3496)
!3513 = !DILocation(line: 1101, column: 23, scope: !3496)
!3514 = !DILocation(line: 1101, column: 58, scope: !3496)
!3515 = !DILocation(line: 1102, column: 2, scope: !3496)
!3516 = !DILocation(line: 1102, column: 22, scope: !3496)
!3517 = !DILocation(line: 1102, column: 49, scope: !3496)
!3518 = !DILocation(line: 1102, column: 29, scope: !3496)
!3519 = !DILocation(line: 1104, column: 7, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 1104, column: 6)
!3521 = !DILocation(line: 1104, column: 6, scope: !3496)
!3522 = !DILocation(line: 1105, column: 3, scope: !3520)
!3523 = !DILocation(line: 1107, column: 28, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 1107, column: 6)
!3525 = !DILocation(line: 1107, column: 34, scope: !3524)
!3526 = !DILocation(line: 1107, column: 6, scope: !3524)
!3527 = !DILocation(line: 1107, column: 6, scope: !3496)
!3528 = !DILocation(line: 1108, column: 15, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 1107, column: 40)
!3530 = !DILocation(line: 1108, column: 4, scope: !3529)
!3531 = !DILocation(line: 1108, column: 13, scope: !3529)
!3532 = !DILocation(line: 1109, column: 3, scope: !3529)
!3533 = !DILocation(line: 1112, column: 2, scope: !3496)
!3534 = !DILocation(line: 1113, column: 1, scope: !3496)
!3535 = distinct !DISubprogram(name: "acpi_dev_memresource_flags", scope: !3, file: !3, line: 72, type: !3536, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3538)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{null, !2023, !458, !118}
!3538 = !{!3539, !3540, !3541}
!3539 = !DILocalVariable(name: "res", arg: 1, scope: !3535, file: !3, line: 72, type: !2023)
!3540 = !DILocalVariable(name: "len", arg: 2, scope: !3535, file: !3, line: 72, type: !458)
!3541 = !DILocalVariable(name: "write_protect", arg: 3, scope: !3535, file: !3, line: 73, type: !118)
!3542 = !DILocation(line: 72, column: 57, scope: !3535)
!3543 = !DILocation(line: 72, column: 66, scope: !3535)
!3544 = !DILocation(line: 73, column: 15, scope: !3535)
!3545 = !DILocation(line: 75, column: 2, scope: !3535)
!3546 = !DILocation(line: 75, column: 7, scope: !3535)
!3547 = !DILocation(line: 75, column: 13, scope: !3535)
!3548 = !DILocation(line: 77, column: 35, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 77, column: 6)
!3550 = !DILocation(line: 77, column: 40, scope: !3549)
!3551 = !DILocation(line: 77, column: 47, scope: !3549)
!3552 = !DILocation(line: 77, column: 52, scope: !3549)
!3553 = !DILocation(line: 77, column: 57, scope: !3549)
!3554 = !DILocation(line: 77, column: 7, scope: !3549)
!3555 = !DILocation(line: 77, column: 6, scope: !3535)
!3556 = !DILocation(line: 78, column: 3, scope: !3549)
!3557 = !DILocation(line: 78, column: 8, scope: !3549)
!3558 = !DILocation(line: 78, column: 14, scope: !3549)
!3559 = !DILocation(line: 80, column: 6, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 80, column: 6)
!3561 = !DILocation(line: 80, column: 20, scope: !3560)
!3562 = !DILocation(line: 80, column: 6, scope: !3535)
!3563 = !DILocation(line: 81, column: 3, scope: !3560)
!3564 = !DILocation(line: 81, column: 8, scope: !3560)
!3565 = !DILocation(line: 81, column: 14, scope: !3560)
!3566 = !DILocation(line: 82, column: 1, scope: !3535)
!3567 = distinct !DISubprogram(name: "acpi_dev_resource_len_valid", scope: !3, file: !3, line: 52, type: !3568, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3570)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!199, !458, !458, !458, !199}
!3570 = !{!3571, !3572, !3573, !3574, !3575}
!3571 = !DILocalVariable(name: "start", arg: 1, scope: !3567, file: !3, line: 52, type: !458)
!3572 = !DILocalVariable(name: "end", arg: 2, scope: !3567, file: !3, line: 52, type: !458)
!3573 = !DILocalVariable(name: "len", arg: 3, scope: !3567, file: !3, line: 52, type: !458)
!3574 = !DILocalVariable(name: "io", arg: 4, scope: !3567, file: !3, line: 52, type: !199)
!3575 = !DILocalVariable(name: "reslen", scope: !3567, file: !3, line: 54, type: !458)
!3576 = !DILocation(line: 52, column: 45, scope: !3567)
!3577 = !DILocation(line: 52, column: 56, scope: !3567)
!3578 = !DILocation(line: 52, column: 65, scope: !3567)
!3579 = !DILocation(line: 52, column: 75, scope: !3567)
!3580 = !DILocation(line: 54, column: 2, scope: !3567)
!3581 = !DILocation(line: 54, column: 6, scope: !3567)
!3582 = !DILocation(line: 54, column: 15, scope: !3567)
!3583 = !DILocation(line: 54, column: 21, scope: !3567)
!3584 = !DILocation(line: 54, column: 19, scope: !3567)
!3585 = !DILocation(line: 54, column: 27, scope: !3567)
!3586 = !DILocation(line: 63, column: 6, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 63, column: 6)
!3588 = !DILocation(line: 63, column: 10, scope: !3587)
!3589 = !DILocation(line: 63, column: 13, scope: !3587)
!3590 = !DILocation(line: 63, column: 20, scope: !3587)
!3591 = !DILocation(line: 63, column: 23, scope: !3587)
!3592 = !DILocation(line: 63, column: 32, scope: !3587)
!3593 = !DILocation(line: 63, column: 29, scope: !3587)
!3594 = !DILocation(line: 63, column: 6, scope: !3567)
!3595 = !DILocation(line: 64, column: 3, scope: !3587)
!3596 = !DILocation(line: 66, column: 2, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 66, column: 2)
!3598 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 66, column: 2)
!3599 = !DILocation(line: 66, column: 2, scope: !3598)
!3600 = !DILocation(line: 69, column: 2, scope: !3567)
!3601 = !DILocation(line: 70, column: 1, scope: !3567)
!3602 = distinct !DISubprogram(name: "acpi_dev_ioresource_flags", scope: !3, file: !3, line: 140, type: !3603, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3605)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{null, !2023, !458, !118, !118}
!3605 = !{!3606, !3607, !3608, !3609}
!3606 = !DILocalVariable(name: "res", arg: 1, scope: !3602, file: !3, line: 140, type: !2023)
!3607 = !DILocalVariable(name: "len", arg: 2, scope: !3602, file: !3, line: 140, type: !458)
!3608 = !DILocalVariable(name: "io_decode", arg: 3, scope: !3602, file: !3, line: 141, type: !118)
!3609 = !DILocalVariable(name: "translation_type", arg: 4, scope: !3602, file: !3, line: 141, type: !118)
!3610 = !DILocation(line: 140, column: 56, scope: !3602)
!3611 = !DILocation(line: 140, column: 65, scope: !3602)
!3612 = !DILocation(line: 141, column: 14, scope: !3602)
!3613 = !DILocation(line: 141, column: 28, scope: !3602)
!3614 = !DILocation(line: 143, column: 2, scope: !3602)
!3615 = !DILocation(line: 143, column: 7, scope: !3602)
!3616 = !DILocation(line: 143, column: 13, scope: !3602)
!3617 = !DILocation(line: 145, column: 35, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 145, column: 6)
!3619 = !DILocation(line: 145, column: 40, scope: !3618)
!3620 = !DILocation(line: 145, column: 47, scope: !3618)
!3621 = !DILocation(line: 145, column: 52, scope: !3618)
!3622 = !DILocation(line: 145, column: 57, scope: !3618)
!3623 = !DILocation(line: 145, column: 7, scope: !3618)
!3624 = !DILocation(line: 145, column: 6, scope: !3602)
!3625 = !DILocation(line: 146, column: 3, scope: !3618)
!3626 = !DILocation(line: 146, column: 8, scope: !3618)
!3627 = !DILocation(line: 146, column: 14, scope: !3618)
!3628 = !DILocation(line: 148, column: 35, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 148, column: 6)
!3630 = !DILocation(line: 148, column: 7, scope: !3629)
!3631 = !DILocation(line: 148, column: 6, scope: !3602)
!3632 = !DILocation(line: 149, column: 3, scope: !3629)
!3633 = !DILocation(line: 149, column: 8, scope: !3629)
!3634 = !DILocation(line: 149, column: 14, scope: !3629)
!3635 = !DILocation(line: 151, column: 6, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 151, column: 6)
!3637 = !DILocation(line: 151, column: 16, scope: !3636)
!3638 = !DILocation(line: 151, column: 6, scope: !3602)
!3639 = !DILocation(line: 152, column: 3, scope: !3636)
!3640 = !DILocation(line: 152, column: 8, scope: !3636)
!3641 = !DILocation(line: 152, column: 14, scope: !3636)
!3642 = !DILocation(line: 153, column: 6, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 153, column: 6)
!3644 = !DILocation(line: 153, column: 23, scope: !3643)
!3645 = !DILocation(line: 153, column: 6, scope: !3602)
!3646 = !DILocation(line: 154, column: 3, scope: !3643)
!3647 = !DILocation(line: 154, column: 8, scope: !3643)
!3648 = !DILocation(line: 154, column: 14, scope: !3643)
!3649 = !DILocation(line: 155, column: 1, scope: !3602)
!3650 = distinct !DISubprogram(name: "acpi_iospace_resource_valid", scope: !3, file: !3, line: 23, type: !3651, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3653)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!199, !2023}
!3653 = !{!3654}
!3654 = !DILocalVariable(name: "res", arg: 1, scope: !3650, file: !3, line: 23, type: !2023)
!3655 = !DILocation(line: 23, column: 65, scope: !3650)
!3656 = !DILocation(line: 26, column: 9, scope: !3650)
!3657 = !DILocation(line: 26, column: 14, scope: !3650)
!3658 = !DILocation(line: 26, column: 18, scope: !3650)
!3659 = !DILocation(line: 26, column: 2, scope: !3650)
!3660 = distinct !DISubprogram(name: "acpi_dev_irq_override", scope: !3, file: !3, line: 675, type: !3661, scopeLine: 677, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3663)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!199, !164, !118, !118, !118}
!3663 = !{!3664, !3665, !3666, !3667, !3668, !3669}
!3664 = !DILocalVariable(name: "gsi", arg: 1, scope: !3660, file: !3, line: 675, type: !164)
!3665 = !DILocalVariable(name: "triggering", arg: 2, scope: !3660, file: !3, line: 675, type: !118)
!3666 = !DILocalVariable(name: "polarity", arg: 3, scope: !3660, file: !3, line: 675, type: !118)
!3667 = !DILocalVariable(name: "shareable", arg: 4, scope: !3660, file: !3, line: 676, type: !118)
!3668 = !DILocalVariable(name: "i", scope: !3660, file: !3, line: 678, type: !78)
!3669 = !DILocalVariable(name: "entry", scope: !3670, file: !3, line: 681, type: !3673)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 680, column: 51)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 680, column: 2)
!3672 = distinct !DILexicalBlock(scope: !3660, file: !3, line: 680, column: 2)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!3674 = !DILocation(line: 675, column: 39, scope: !3660)
!3675 = !DILocation(line: 675, column: 47, scope: !3660)
!3676 = !DILocation(line: 675, column: 62, scope: !3660)
!3677 = !DILocation(line: 676, column: 10, scope: !3660)
!3678 = !DILocation(line: 678, column: 2, scope: !3660)
!3679 = !DILocation(line: 678, column: 6, scope: !3660)
!3680 = !DILocation(line: 680, column: 9, scope: !3672)
!3681 = !DILocation(line: 680, column: 7, scope: !3672)
!3682 = !DILocation(line: 680, column: 14, scope: !3671)
!3683 = !DILocation(line: 680, column: 16, scope: !3671)
!3684 = !DILocation(line: 680, column: 2, scope: !3672)
!3685 = !DILocation(line: 681, column: 3, scope: !3670)
!3686 = !DILocation(line: 681, column: 34, scope: !3670)
!3687 = !DILocation(line: 681, column: 58, scope: !3670)
!3688 = !DILocation(line: 681, column: 43, scope: !3670)
!3689 = !DILocation(line: 683, column: 7, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 683, column: 7)
!3691 = !DILocation(line: 683, column: 14, scope: !3690)
!3692 = !DILocation(line: 683, column: 21, scope: !3690)
!3693 = !DILocation(line: 683, column: 18, scope: !3690)
!3694 = !DILocation(line: 683, column: 25, scope: !3690)
!3695 = !DILocation(line: 684, column: 7, scope: !3690)
!3696 = !DILocation(line: 684, column: 14, scope: !3690)
!3697 = !DILocation(line: 684, column: 28, scope: !3690)
!3698 = !DILocation(line: 684, column: 25, scope: !3690)
!3699 = !DILocation(line: 684, column: 39, scope: !3690)
!3700 = !DILocation(line: 685, column: 7, scope: !3690)
!3701 = !DILocation(line: 685, column: 14, scope: !3690)
!3702 = !DILocation(line: 685, column: 26, scope: !3690)
!3703 = !DILocation(line: 685, column: 23, scope: !3690)
!3704 = !DILocation(line: 685, column: 35, scope: !3690)
!3705 = !DILocation(line: 686, column: 7, scope: !3690)
!3706 = !DILocation(line: 686, column: 14, scope: !3690)
!3707 = !DILocation(line: 686, column: 27, scope: !3690)
!3708 = !DILocation(line: 686, column: 24, scope: !3690)
!3709 = !DILocation(line: 686, column: 37, scope: !3690)
!3710 = !DILocation(line: 687, column: 24, scope: !3690)
!3711 = !DILocation(line: 687, column: 31, scope: !3690)
!3712 = !DILocation(line: 687, column: 7, scope: !3690)
!3713 = !DILocation(line: 683, column: 7, scope: !3670)
!3714 = !DILocation(line: 688, column: 11, scope: !3690)
!3715 = !DILocation(line: 688, column: 18, scope: !3690)
!3716 = !DILocation(line: 688, column: 4, scope: !3690)
!3717 = !DILocation(line: 689, column: 2, scope: !3671)
!3718 = !DILocation(line: 689, column: 2, scope: !3670)
!3719 = !DILocation(line: 680, column: 47, scope: !3671)
!3720 = !DILocation(line: 680, column: 2, scope: !3671)
!3721 = distinct !{!3721, !3684, !3722, !3723, !3724}
!3722 = !DILocation(line: 689, column: 2, scope: !3672)
!3723 = !{!"llvm.loop.mustprogress"}
!3724 = !{!"llvm.loop.unroll.disable"}
!3725 = !DILocation(line: 697, column: 6, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3660, file: !3, line: 697, column: 6)
!3727 = !DILocation(line: 697, column: 10, scope: !3726)
!3728 = !DILocation(line: 697, column: 15, scope: !3726)
!3729 = !DILocation(line: 697, column: 18, scope: !3726)
!3730 = !DILocation(line: 697, column: 22, scope: !3726)
!3731 = !DILocation(line: 697, column: 6, scope: !3660)
!3732 = !DILocation(line: 698, column: 3, scope: !3726)
!3733 = !DILocation(line: 701, column: 23, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3660, file: !3, line: 701, column: 6)
!3735 = !DILocation(line: 701, column: 6, scope: !3734)
!3736 = !DILocation(line: 701, column: 6, scope: !3660)
!3737 = !DILocation(line: 702, column: 3, scope: !3734)
!3738 = !DILocation(line: 709, column: 6, scope: !3660)
!3739 = !DILocation(line: 709, column: 6, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3660, file: !3, line: 709, column: 6)
!3741 = !DILocation(line: 710, column: 3, scope: !3740)
!3742 = !DILocation(line: 713, column: 2, scope: !3660)
!3743 = !DILocation(line: 714, column: 1, scope: !3660)
!3744 = !DISubprogram(name: "acpi_get_override_irq", scope: !3745, file: !3745, line: 362, type: !3746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3745 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!78, !164, !1110, !1110}
!3748 = !DISubprogram(name: "_printk", scope: !3749, file: !3749, line: 153, type: !3750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3749 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!78, !218, null}
!3752 = !DISubprogram(name: "acpi_register_gsi", scope: !3745, file: !3745, line: 347, type: !3753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!78, !867, !164, !78, !78}
!3755 = !DISubprogram(name: "dmi_check_system", scope: !3756, file: !3756, line: 100, type: !2103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3756 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!3757 = distinct !DISubprogram(name: "arch_test_bit", scope: !3758, file: !3758, line: 237, type: !3759, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3764)
!3758 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!199, !152, !3761}
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3763)
!3763 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !152)
!3764 = !{!3765, !3766}
!3765 = !DILocalVariable(name: "nr", arg: 1, scope: !3757, file: !3758, line: 237, type: !152)
!3766 = !DILocalVariable(name: "addr", arg: 2, scope: !3757, file: !3758, line: 237, type: !3761)
!3767 = !DILocation(line: 237, column: 29, scope: !3757)
!3768 = !DILocation(line: 237, column: 63, scope: !3757)
!3769 = !DILocation(line: 239, column: 30, scope: !3757)
!3770 = !DILocation(line: 239, column: 9, scope: !3757)
!3771 = !DILocation(line: 239, column: 54, scope: !3757)
!3772 = !DILocation(line: 239, column: 58, scope: !3757)
!3773 = !DILocation(line: 239, column: 36, scope: !3757)
!3774 = !DILocation(line: 240, column: 26, scope: !3757)
!3775 = !DILocation(line: 240, column: 30, scope: !3757)
!3776 = !DILocation(line: 240, column: 8, scope: !3757)
!3777 = !DILocation(line: 239, column: 2, scope: !3757)
!3778 = distinct !DISubprogram(name: "constant_test_bit", scope: !3758, file: !3758, line: 204, type: !3779, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3781)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!199, !331, !3761}
!3781 = !{!3782, !3783}
!3782 = !DILocalVariable(name: "nr", arg: 1, scope: !3778, file: !3758, line: 204, type: !331)
!3783 = !DILocalVariable(name: "addr", arg: 2, scope: !3778, file: !3758, line: 204, type: !3761)
!3784 = !DILocation(line: 204, column: 52, scope: !3778)
!3785 = !DILocation(line: 204, column: 86, scope: !3778)
!3786 = !DILocation(line: 206, column: 19, scope: !3778)
!3787 = !DILocation(line: 206, column: 22, scope: !3778)
!3788 = !DILocation(line: 206, column: 15, scope: !3778)
!3789 = !DILocation(line: 207, column: 4, scope: !3778)
!3790 = !DILocation(line: 207, column: 9, scope: !3778)
!3791 = !DILocation(line: 207, column: 12, scope: !3778)
!3792 = !DILocation(line: 206, column: 44, scope: !3778)
!3793 = !DILocation(line: 207, column: 37, scope: !3778)
!3794 = !DILocation(line: 206, column: 2, scope: !3778)
!3795 = distinct !DISubprogram(name: "variable_test_bit", scope: !3758, file: !3758, line: 224, type: !3779, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3796)
!3796 = !{!3797, !3798, !3799}
!3797 = !DILocalVariable(name: "nr", arg: 1, scope: !3795, file: !3758, line: 224, type: !331)
!3798 = !DILocalVariable(name: "addr", arg: 2, scope: !3795, file: !3758, line: 224, type: !3761)
!3799 = !DILocalVariable(name: "oldbit", scope: !3795, file: !3758, line: 226, type: !199)
!3800 = !DILocation(line: 224, column: 52, scope: !3795)
!3801 = !DILocation(line: 224, column: 86, scope: !3795)
!3802 = !DILocation(line: 226, column: 2, scope: !3795)
!3803 = !DILocation(line: 226, column: 7, scope: !3795)
!3804 = !DILocation(line: 231, column: 33, scope: !3795)
!3805 = !DILocation(line: 231, column: 46, scope: !3795)
!3806 = !DILocation(line: 228, column: 2, scope: !3795)
!3807 = !{i64 2148229107, i64 2148229181}
!3808 = !DILocation(line: 233, column: 9, scope: !3795)
!3809 = !DILocation(line: 234, column: 1, scope: !3795)
!3810 = !DILocation(line: 233, column: 2, scope: !3795)
!3811 = distinct !DISubprogram(name: "list_empty", scope: !3812, file: !3812, line: 371, type: !3813, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3817)
!3812 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!78, !3815}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!3817 = !{!3818}
!3818 = !DILocalVariable(name: "head", arg: 1, scope: !3811, file: !3812, line: 371, type: !3815)
!3819 = !DILocation(line: 371, column: 54, scope: !3811)
!3820 = !DILocation(line: 373, column: 9, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3811, file: !3812, line: 373, column: 9)
!3822 = !DILocation(line: 373, column: 9, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3821, file: !3812, line: 373, column: 9)
!3824 = !DILocation(line: 373, column: 34, scope: !3811)
!3825 = !DILocation(line: 373, column: 31, scope: !3811)
!3826 = !DILocation(line: 373, column: 2, scope: !3811)
!3827 = !DISubprogram(name: "acpi_has_method", scope: !170, file: !170, line: 42, type: !3828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!199, !175, !295}
!3830 = !DISubprogram(name: "acpi_walk_resources", scope: !2788, file: !2788, line: 819, type: !3831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!162, !175, !295, !3833, !117}
!3833 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_resource_callback", file: !2788, line: 791, baseType: !3834)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!162, !2198, !117}
!3837 = distinct !DISubprogram(name: "acpi_dev_process_resource", scope: !3, file: !3, line: 863, type: !3835, scopeLine: 865, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3838)
!3838 = !{!3839, !3840, !3841, !3843, !3844, !3845, !3846, !3849}
!3839 = !DILocalVariable(name: "ares", arg: 1, scope: !3837, file: !3, line: 863, type: !2198)
!3840 = !DILocalVariable(name: "context", arg: 2, scope: !3837, file: !3, line: 864, type: !117)
!3841 = !DILocalVariable(name: "c", scope: !3837, file: !3, line: 866, type: !3842)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3843 = !DILocalVariable(name: "win", scope: !3837, file: !3, line: 867, type: !2762)
!3844 = !DILocalVariable(name: "res", scope: !3837, file: !3, line: 868, type: !2023)
!3845 = !DILocalVariable(name: "i", scope: !3837, file: !3, line: 869, type: !78)
!3846 = !DILocalVariable(name: "ret", scope: !3847, file: !3, line: 872, type: !78)
!3847 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 871, column: 18)
!3848 = distinct !DILexicalBlock(scope: !3837, file: !3, line: 871, column: 6)
!3849 = !DILocalVariable(name: "status", scope: !3850, file: !3, line: 892, type: !162)
!3850 = distinct !DILexicalBlock(scope: !3851, file: !3, line: 891, column: 62)
!3851 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 891, column: 2)
!3852 = distinct !DILexicalBlock(scope: !3837, file: !3, line: 891, column: 2)
!3853 = !DILocation(line: 863, column: 68, scope: !3837)
!3854 = !DILocation(line: 864, column: 17, scope: !3837)
!3855 = !DILocation(line: 866, column: 2, scope: !3837)
!3856 = !DILocation(line: 866, column: 27, scope: !3837)
!3857 = !DILocation(line: 866, column: 31, scope: !3837)
!3858 = !DILocation(line: 867, column: 2, scope: !3837)
!3859 = !DILocation(line: 867, column: 22, scope: !3837)
!3860 = !DILocation(line: 868, column: 2, scope: !3837)
!3861 = !DILocation(line: 868, column: 19, scope: !3837)
!3862 = !DILocation(line: 868, column: 30, scope: !3837)
!3863 = !DILocation(line: 869, column: 2, scope: !3837)
!3864 = !DILocation(line: 869, column: 6, scope: !3837)
!3865 = !DILocation(line: 871, column: 6, scope: !3848)
!3866 = !DILocation(line: 871, column: 9, scope: !3848)
!3867 = !DILocation(line: 871, column: 6, scope: !3837)
!3868 = !DILocation(line: 872, column: 3, scope: !3847)
!3869 = !DILocation(line: 872, column: 7, scope: !3847)
!3870 = !DILocation(line: 874, column: 9, scope: !3847)
!3871 = !DILocation(line: 874, column: 12, scope: !3847)
!3872 = !DILocation(line: 874, column: 20, scope: !3847)
!3873 = !DILocation(line: 874, column: 26, scope: !3847)
!3874 = !DILocation(line: 874, column: 29, scope: !3847)
!3875 = !DILocation(line: 874, column: 7, scope: !3847)
!3876 = !DILocation(line: 875, column: 7, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 875, column: 7)
!3878 = !DILocation(line: 875, column: 11, scope: !3877)
!3879 = !DILocation(line: 875, column: 7, scope: !3847)
!3880 = !DILocation(line: 876, column: 15, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 875, column: 16)
!3882 = !DILocation(line: 876, column: 4, scope: !3881)
!3883 = !DILocation(line: 876, column: 7, scope: !3881)
!3884 = !DILocation(line: 876, column: 13, scope: !3881)
!3885 = !DILocation(line: 877, column: 4, scope: !3881)
!3886 = !DILocation(line: 878, column: 14, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 878, column: 14)
!3888 = !DILocation(line: 878, column: 18, scope: !3887)
!3889 = !DILocation(line: 878, column: 14, scope: !3877)
!3890 = !DILocation(line: 879, column: 4, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 878, column: 23)
!3892 = !DILocation(line: 881, column: 2, scope: !3848)
!3893 = !DILocation(line: 881, column: 2, scope: !3847)
!3894 = !DILocation(line: 883, column: 2, scope: !3837)
!3895 = !DILocation(line: 885, column: 31, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3837, file: !3, line: 885, column: 6)
!3897 = !DILocation(line: 885, column: 37, scope: !3896)
!3898 = !DILocation(line: 885, column: 6, scope: !3896)
!3899 = !DILocation(line: 886, column: 6, scope: !3896)
!3900 = !DILocation(line: 886, column: 30, scope: !3896)
!3901 = !DILocation(line: 886, column: 36, scope: !3896)
!3902 = !DILocation(line: 886, column: 9, scope: !3896)
!3903 = !DILocation(line: 887, column: 6, scope: !3896)
!3904 = !DILocation(line: 887, column: 41, scope: !3896)
!3905 = !DILocation(line: 887, column: 9, scope: !3896)
!3906 = !DILocation(line: 888, column: 6, scope: !3896)
!3907 = !DILocation(line: 888, column: 45, scope: !3896)
!3908 = !DILocation(line: 888, column: 9, scope: !3896)
!3909 = !DILocation(line: 885, column: 6, scope: !3837)
!3910 = !DILocation(line: 889, column: 44, scope: !3896)
!3911 = !DILocation(line: 889, column: 10, scope: !3896)
!3912 = !DILocation(line: 889, column: 3, scope: !3896)
!3913 = !DILocation(line: 891, column: 9, scope: !3852)
!3914 = !DILocation(line: 891, column: 7, scope: !3852)
!3915 = !DILocation(line: 891, column: 42, scope: !3851)
!3916 = !DILocation(line: 891, column: 48, scope: !3851)
!3917 = !DILocation(line: 891, column: 51, scope: !3851)
!3918 = !DILocation(line: 891, column: 14, scope: !3851)
!3919 = !DILocation(line: 891, column: 2, scope: !3852)
!3920 = !DILocation(line: 892, column: 3, scope: !3850)
!3921 = !DILocation(line: 892, column: 15, scope: !3850)
!3922 = !DILocation(line: 894, column: 46, scope: !3850)
!3923 = !DILocation(line: 894, column: 12, scope: !3850)
!3924 = !DILocation(line: 894, column: 10, scope: !3850)
!3925 = !DILocation(line: 895, column: 7, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 895, column: 7)
!3927 = !DILocation(line: 895, column: 7, scope: !3850)
!3928 = !DILocation(line: 896, column: 11, scope: !3926)
!3929 = !DILocation(line: 896, column: 4, scope: !3926)
!3930 = !DILocation(line: 897, column: 2, scope: !3851)
!3931 = !DILocation(line: 897, column: 2, scope: !3850)
!3932 = !DILocation(line: 891, column: 58, scope: !3851)
!3933 = !DILocation(line: 891, column: 2, scope: !3851)
!3934 = distinct !{!3934, !3919, !3935, !3723, !3724}
!3935 = !DILocation(line: 897, column: 2, scope: !3852)
!3936 = !DILocation(line: 899, column: 2, scope: !3837)
!3937 = !DILocation(line: 900, column: 1, scope: !3837)
!3938 = distinct !DISubprogram(name: "acpi_dev_new_resource_entry", scope: !3, file: !3, line: 846, type: !3939, scopeLine: 848, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3941)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!162, !2761, !3842}
!3941 = !{!3942, !3943, !3944}
!3942 = !DILocalVariable(name: "win", arg: 1, scope: !3938, file: !3, line: 846, type: !2761)
!3943 = !DILocalVariable(name: "c", arg: 2, scope: !3938, file: !3, line: 847, type: !3842)
!3944 = !DILocalVariable(name: "rentry", scope: !3938, file: !3, line: 849, type: !2017)
!3945 = !DILocation(line: 846, column: 69, scope: !3938)
!3946 = !DILocation(line: 847, column: 38, scope: !3938)
!3947 = !DILocation(line: 849, column: 2, scope: !3938)
!3948 = !DILocation(line: 849, column: 25, scope: !3938)
!3949 = !DILocation(line: 851, column: 11, scope: !3938)
!3950 = !DILocation(line: 851, column: 9, scope: !3938)
!3951 = !DILocation(line: 852, column: 7, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 852, column: 6)
!3953 = !DILocation(line: 852, column: 6, scope: !3938)
!3954 = !DILocation(line: 853, column: 3, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 852, column: 15)
!3956 = !DILocation(line: 853, column: 6, scope: !3955)
!3957 = !DILocation(line: 853, column: 12, scope: !3955)
!3958 = !DILocation(line: 854, column: 3, scope: !3955)
!3959 = !DILocation(line: 856, column: 3, scope: !3938)
!3960 = !DILocation(line: 856, column: 11, scope: !3938)
!3961 = !DILocation(line: 856, column: 17, scope: !3938)
!3962 = !DILocation(line: 856, column: 22, scope: !3938)
!3963 = !DILocation(line: 857, column: 19, scope: !3938)
!3964 = !DILocation(line: 857, column: 24, scope: !3938)
!3965 = !DILocation(line: 857, column: 2, scope: !3938)
!3966 = !DILocation(line: 857, column: 10, scope: !3938)
!3967 = !DILocation(line: 857, column: 17, scope: !3938)
!3968 = !DILocation(line: 858, column: 25, scope: !3938)
!3969 = !DILocation(line: 858, column: 33, scope: !3938)
!3970 = !DILocation(line: 858, column: 36, scope: !3938)
!3971 = !DILocation(line: 858, column: 2, scope: !3938)
!3972 = !DILocation(line: 859, column: 2, scope: !3938)
!3973 = !DILocation(line: 859, column: 5, scope: !3938)
!3974 = !DILocation(line: 859, column: 10, scope: !3938)
!3975 = !DILocation(line: 860, column: 2, scope: !3938)
!3976 = !DILocation(line: 861, column: 1, scope: !3938)
!3977 = !DISubprogram(name: "resource_list_create_entry", scope: !2019, file: !2019, line: 31, type: !3978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!2017, !2023, !342}
!3980 = distinct !DISubprogram(name: "resource_list_add_tail", scope: !2019, file: !2019, line: 40, type: !3981, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3983)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{null, !2017, !156}
!3983 = !{!3984, !3985}
!3984 = !DILocalVariable(name: "entry", arg: 1, scope: !3980, file: !2019, line: 40, type: !2017)
!3985 = !DILocalVariable(name: "head", arg: 2, scope: !3980, file: !2019, line: 41, type: !156)
!3986 = !DILocation(line: 40, column: 66, scope: !3980)
!3987 = !DILocation(line: 41, column: 26, scope: !3980)
!3988 = !DILocation(line: 43, column: 17, scope: !3980)
!3989 = !DILocation(line: 43, column: 24, scope: !3980)
!3990 = !DILocation(line: 43, column: 30, scope: !3980)
!3991 = !DILocation(line: 43, column: 2, scope: !3980)
!3992 = !DILocation(line: 44, column: 1, scope: !3980)
!3993 = distinct !DISubprogram(name: "list_add_tail", scope: !3812, file: !3812, line: 181, type: !3994, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3996)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{null, !156, !156}
!3996 = !{!3997, !3998}
!3997 = !DILocalVariable(name: "new", arg: 1, scope: !3993, file: !3812, line: 181, type: !156)
!3998 = !DILocalVariable(name: "head", arg: 2, scope: !3993, file: !3812, line: 181, type: !156)
!3999 = !DILocation(line: 181, column: 52, scope: !3993)
!4000 = !DILocation(line: 181, column: 75, scope: !3993)
!4001 = !DILocation(line: 183, column: 13, scope: !3993)
!4002 = !DILocation(line: 183, column: 18, scope: !3993)
!4003 = !DILocation(line: 183, column: 24, scope: !3993)
!4004 = !DILocation(line: 183, column: 30, scope: !3993)
!4005 = !DILocation(line: 183, column: 2, scope: !3993)
!4006 = !DILocation(line: 184, column: 1, scope: !3993)
!4007 = distinct !DISubprogram(name: "__list_add", scope: !3812, file: !3812, line: 146, type: !4008, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4010)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{null, !156, !156, !156}
!4010 = !{!4011, !4012, !4013}
!4011 = !DILocalVariable(name: "new", arg: 1, scope: !4007, file: !3812, line: 146, type: !156)
!4012 = !DILocalVariable(name: "prev", arg: 2, scope: !4007, file: !3812, line: 147, type: !156)
!4013 = !DILocalVariable(name: "next", arg: 3, scope: !4007, file: !3812, line: 148, type: !156)
!4014 = !DILocation(line: 146, column: 49, scope: !4007)
!4015 = !DILocation(line: 147, column: 28, scope: !4007)
!4016 = !DILocation(line: 148, column: 28, scope: !4007)
!4017 = !DILocation(line: 150, column: 24, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4007, file: !3812, line: 150, column: 6)
!4019 = !DILocation(line: 150, column: 29, scope: !4018)
!4020 = !DILocation(line: 150, column: 35, scope: !4018)
!4021 = !DILocation(line: 150, column: 7, scope: !4018)
!4022 = !DILocation(line: 150, column: 6, scope: !4007)
!4023 = !DILocation(line: 151, column: 3, scope: !4018)
!4024 = !DILocation(line: 153, column: 15, scope: !4007)
!4025 = !DILocation(line: 153, column: 2, scope: !4007)
!4026 = !DILocation(line: 153, column: 8, scope: !4007)
!4027 = !DILocation(line: 153, column: 13, scope: !4007)
!4028 = !DILocation(line: 154, column: 14, scope: !4007)
!4029 = !DILocation(line: 154, column: 2, scope: !4007)
!4030 = !DILocation(line: 154, column: 7, scope: !4007)
!4031 = !DILocation(line: 154, column: 12, scope: !4007)
!4032 = !DILocation(line: 155, column: 14, scope: !4007)
!4033 = !DILocation(line: 155, column: 2, scope: !4007)
!4034 = !DILocation(line: 155, column: 7, scope: !4007)
!4035 = !DILocation(line: 155, column: 12, scope: !4007)
!4036 = !DILocation(line: 156, column: 2, scope: !4007)
!4037 = !DILocation(line: 156, column: 2, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4007, file: !3812, line: 156, column: 2)
!4039 = !DILocation(line: 156, column: 2, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4038, file: !3812, line: 156, column: 2)
!4041 = !DILocation(line: 156, column: 2, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4038, file: !3812, line: 156, column: 2)
!4043 = !DILocation(line: 157, column: 1, scope: !4007)
!4044 = distinct !DISubprogram(name: "__list_add_valid", scope: !3812, file: !3812, line: 128, type: !4045, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4047)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!199, !156, !156, !156}
!4047 = !{!4048, !4049, !4050}
!4048 = !DILocalVariable(name: "new", arg: 1, scope: !4044, file: !3812, line: 128, type: !156)
!4049 = !DILocalVariable(name: "prev", arg: 2, scope: !4044, file: !3812, line: 129, type: !156)
!4050 = !DILocalVariable(name: "next", arg: 3, scope: !4044, file: !3812, line: 130, type: !156)
!4051 = !DILocation(line: 128, column: 55, scope: !4044)
!4052 = !DILocation(line: 129, column: 23, scope: !4044)
!4053 = !DILocation(line: 130, column: 23, scope: !4044)
!4054 = !DILocation(line: 132, column: 2, scope: !4044)
!4055 = !DISubprogram(name: "acpi_fetch_acpi_dev", scope: !170, file: !170, line: 813, type: !4056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!168, !175}
!4058 = distinct !DISubprogram(name: "acpi_dev_consumes_res", scope: !3, file: !3, line: 1074, type: !4059, scopeLine: 1075, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4061)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!78, !168, !2023}
!4061 = !{!4062, !4063, !4064, !4065, !4066, !4067, !4068, !4071}
!4062 = !DILocalVariable(name: "adev", arg: 1, scope: !4058, file: !3, line: 1074, type: !168)
!4063 = !DILocalVariable(name: "res", arg: 2, scope: !4058, file: !3, line: 1074, type: !2023)
!4064 = !DILocalVariable(name: "resource_list", scope: !4058, file: !3, line: 1076, type: !157)
!4065 = !DILocalVariable(name: "rentry", scope: !4058, file: !3, line: 1077, type: !2017)
!4066 = !DILocalVariable(name: "ret", scope: !4058, file: !3, line: 1078, type: !78)
!4067 = !DILocalVariable(name: "found", scope: !4058, file: !3, line: 1078, type: !78)
!4068 = !DILocalVariable(name: "__mptr", scope: !4069, file: !3, line: 1085, type: !117)
!4069 = distinct !DILexicalBlock(scope: !4070, file: !3, line: 1085, column: 2)
!4070 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 1085, column: 2)
!4071 = !DILocalVariable(name: "__mptr", scope: !4072, file: !3, line: 1085, type: !117)
!4072 = distinct !DILexicalBlock(scope: !4073, file: !3, line: 1085, column: 2)
!4073 = distinct !DILexicalBlock(scope: !4070, file: !3, line: 1085, column: 2)
!4074 = !DILocation(line: 1074, column: 54, scope: !4058)
!4075 = !DILocation(line: 1074, column: 77, scope: !4058)
!4076 = !DILocation(line: 1076, column: 2, scope: !4058)
!4077 = !DILocation(line: 1076, column: 19, scope: !4058)
!4078 = !DILocation(line: 1077, column: 2, scope: !4058)
!4079 = !DILocation(line: 1077, column: 25, scope: !4058)
!4080 = !DILocation(line: 1078, column: 2, scope: !4058)
!4081 = !DILocation(line: 1078, column: 6, scope: !4058)
!4082 = !DILocation(line: 1078, column: 11, scope: !4058)
!4083 = !DILocation(line: 1080, column: 2, scope: !4058)
!4084 = !DILocation(line: 1081, column: 31, scope: !4058)
!4085 = !DILocation(line: 1081, column: 8, scope: !4058)
!4086 = !DILocation(line: 1081, column: 6, scope: !4058)
!4087 = !DILocation(line: 1082, column: 6, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 1082, column: 6)
!4089 = !DILocation(line: 1082, column: 10, scope: !4088)
!4090 = !DILocation(line: 1082, column: 6, scope: !4058)
!4091 = !DILocation(line: 1083, column: 3, scope: !4088)
!4092 = !DILocation(line: 1085, column: 2, scope: !4069)
!4093 = !DILocation(line: 1085, column: 2, scope: !4070)
!4094 = !DILocation(line: 1085, column: 2, scope: !4073)
!4095 = !DILocation(line: 1086, column: 25, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4097, file: !3, line: 1086, column: 7)
!4097 = distinct !DILexicalBlock(scope: !4073, file: !3, line: 1085, column: 52)
!4098 = !DILocation(line: 1086, column: 33, scope: !4096)
!4099 = !DILocation(line: 1086, column: 38, scope: !4096)
!4100 = !DILocation(line: 1086, column: 7, scope: !4096)
!4101 = !DILocation(line: 1086, column: 7, scope: !4097)
!4102 = !DILocation(line: 1087, column: 10, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 1086, column: 44)
!4104 = !DILocation(line: 1088, column: 4, scope: !4103)
!4105 = !DILocation(line: 1091, column: 2, scope: !4097)
!4106 = !DILocation(line: 1085, column: 2, scope: !4072)
!4107 = distinct !{!4107, !4093, !4108, !3723, !3724}
!4108 = !DILocation(line: 1091, column: 2, scope: !4070)
!4109 = !DILocation(line: 1093, column: 2, scope: !4058)
!4110 = !DILocation(line: 1094, column: 9, scope: !4058)
!4111 = !DILocation(line: 1094, column: 2, scope: !4058)
!4112 = !DILocation(line: 1095, column: 1, scope: !4058)
!4113 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3812, file: !3812, line: 35, type: !3260, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4114)
!4114 = !{!4115}
!4115 = !DILocalVariable(name: "list", arg: 1, scope: !4113, file: !3812, line: 35, type: !156)
!4116 = !DILocation(line: 35, column: 53, scope: !4113)
!4117 = !DILocation(line: 37, column: 2, scope: !4113)
!4118 = !DILocation(line: 37, column: 2, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4113, file: !3812, line: 37, column: 2)
!4120 = !DILocation(line: 37, column: 2, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4119, file: !3812, line: 37, column: 2)
!4122 = !DILocation(line: 37, column: 2, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4119, file: !3812, line: 37, column: 2)
!4124 = !DILocation(line: 38, column: 2, scope: !4113)
!4125 = !DILocation(line: 38, column: 2, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4113, file: !3812, line: 38, column: 2)
!4127 = !DILocation(line: 38, column: 2, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4126, file: !3812, line: 38, column: 2)
!4129 = !DILocation(line: 38, column: 2, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4126, file: !3812, line: 38, column: 2)
!4131 = !DILocation(line: 39, column: 1, scope: !4113)
!4132 = distinct !DISubprogram(name: "resource_contains", scope: !372, file: !372, line: 232, type: !4133, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4135)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!199, !2023, !2023}
!4135 = !{!4136, !4137}
!4136 = !DILocalVariable(name: "r1", arg: 1, scope: !4132, file: !372, line: 232, type: !2023)
!4137 = !DILocalVariable(name: "r2", arg: 2, scope: !4132, file: !372, line: 232, type: !2023)
!4138 = !DILocation(line: 232, column: 55, scope: !4132)
!4139 = !DILocation(line: 232, column: 76, scope: !4132)
!4140 = !DILocation(line: 234, column: 20, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4132, file: !372, line: 234, column: 6)
!4142 = !DILocation(line: 234, column: 6, scope: !4141)
!4143 = !DILocation(line: 234, column: 41, scope: !4141)
!4144 = !DILocation(line: 234, column: 27, scope: !4141)
!4145 = !DILocation(line: 234, column: 24, scope: !4141)
!4146 = !DILocation(line: 234, column: 6, scope: !4132)
!4147 = !DILocation(line: 235, column: 3, scope: !4141)
!4148 = !DILocation(line: 236, column: 6, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4132, file: !372, line: 236, column: 6)
!4150 = !DILocation(line: 236, column: 10, scope: !4149)
!4151 = !DILocation(line: 236, column: 16, scope: !4149)
!4152 = !DILocation(line: 236, column: 35, scope: !4149)
!4153 = !DILocation(line: 236, column: 38, scope: !4149)
!4154 = !DILocation(line: 236, column: 42, scope: !4149)
!4155 = !DILocation(line: 236, column: 48, scope: !4149)
!4156 = !DILocation(line: 236, column: 6, scope: !4132)
!4157 = !DILocation(line: 237, column: 3, scope: !4149)
!4158 = !DILocation(line: 238, column: 9, scope: !4132)
!4159 = !DILocation(line: 238, column: 13, scope: !4132)
!4160 = !DILocation(line: 238, column: 22, scope: !4132)
!4161 = !DILocation(line: 238, column: 26, scope: !4132)
!4162 = !DILocation(line: 238, column: 19, scope: !4132)
!4163 = !DILocation(line: 238, column: 32, scope: !4132)
!4164 = !DILocation(line: 238, column: 35, scope: !4132)
!4165 = !DILocation(line: 238, column: 39, scope: !4132)
!4166 = !DILocation(line: 238, column: 46, scope: !4132)
!4167 = !DILocation(line: 238, column: 50, scope: !4132)
!4168 = !DILocation(line: 238, column: 43, scope: !4132)
!4169 = !DILocation(line: 0, scope: !4132)
!4170 = !DILocation(line: 238, column: 2, scope: !4132)
!4171 = !DILocation(line: 239, column: 1, scope: !4132)
!4172 = distinct !DISubprogram(name: "resource_type", scope: !372, file: !372, line: 223, type: !4173, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4177)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!152, !4175}
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2024)
!4177 = !{!4178}
!4178 = !DILocalVariable(name: "res", arg: 1, scope: !4172, file: !372, line: 223, type: !4175)
!4179 = !DILocation(line: 223, column: 66, scope: !4172)
!4180 = !DILocation(line: 225, column: 9, scope: !4172)
!4181 = !DILocation(line: 225, column: 14, scope: !4172)
!4182 = !DILocation(line: 225, column: 20, scope: !4172)
!4183 = !DILocation(line: 225, column: 2, scope: !4172)
