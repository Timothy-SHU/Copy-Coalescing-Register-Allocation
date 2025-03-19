; ModuleID = 'drivers/acpi/utils.c'
source_filename = "drivers/acpi/utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_extract_package: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_extract_package ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_evaluate_integer: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_evaluate_integer ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_local_address: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_local_address ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_subsystem_id: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_subsystem_id ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_evaluate_reference: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_evaluate_reference ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_physical_device_location: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_physical_device_location ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_evaluate_ost: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_evaluate_ost ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_handle_printk: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_handle_printk ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_evaluation_failure_warn: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_evaluation_failure_warn ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_has_method: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_has_method ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_execute_simple_method: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_execute_simple_method ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_evaluate_reg: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_evaluate_reg ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_evaluate_dsm: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_evaluate_dsm ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_check_dsm: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_check_dsm ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_hid_uid_match: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_hid_uid_match ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_uid_to_integer: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_uid_to_integer ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_found: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_found ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_present: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_present ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_get_next_match_dev: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_get_next_match_dev ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dev_get_first_match_dev: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dev_get_first_match_dev ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_reduced_hardware: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_reduced_hardware ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_video_backlight_string: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_video_backlight_string ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_match_platform_list: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_match_platform_list ; .previous"

%struct.acpi_buffer = type { i64, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pcpu_hot = type { %union.anon.11 }
%union.anon.11 = type { %struct.anon.12, [16 x i8] }
%struct.anon.12 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.anon.2 = type { i32, i32, ptr }
%union.acpi_object = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, i64, i32 }
%struct.anon.0 = type { i32, i32, ptr }
%struct.anon.1 = type { i32, i32, ptr }
%struct.anon = type { i32, i64 }
%struct.anon.3 = type { i32, i32, ptr }
%struct.va_format = type { ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.acpi_handle_list = type { i32, [10 x ptr] }
%struct.acpi_object_list = type { i32, ptr }
%struct.acpi_device = type { i32, i32, ptr, %struct.fwnode_handle, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, ptr, ptr, ptr, ptr, %struct.device, i32, i32, %struct.list_head, %struct.mutex, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], i32, %struct.acpi_pnp_type, i64, ptr, %struct.list_head, [40 x i8], [20 x i8], ptr }
%struct.acpi_pnp_type = type { i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state], i8 }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.9, i32, i32, %struct.list_head }
%struct.anon.9 = type { i8 }
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
%struct.acpi_device_bus_id = type { ptr, %struct.ida, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.acpi_dev_match_info = type { [2 x %struct.acpi_device_id], ptr, i64 }
%struct.acpi_device_id = type { [16 x i8], i64, i32, i32 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_platform_list = type { [7 x i8], [9 x i8], i32, ptr, i32, ptr, i32 }

@__UNIQUE_ID___addressable_acpi_extract_package206 = internal global ptr @acpi_extract_package, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_acpi_evaluate_integer207 = internal global ptr @acpi_evaluate_integer, section ".discard.addressable", align 8, !dbg !1990
@.str = private unnamed_addr constant [5 x i8] c"_ADR\00", align 1, !dbg !1992
@__UNIQUE_ID___addressable_acpi_get_local_address208 = internal global ptr @acpi_get_local_address, section ".discard.addressable", align 8, !dbg !1995
@__const.acpi_get_subsystem_id.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_SUB\00", align 1, !dbg !1997
@.str.2 = private unnamed_addr constant [3 x i8] c"\013\00", align 1, !dbg !1999
@.str.3 = private unnamed_addr constant [33 x i8] c"ACPI _SUB Length %zu is Invalid\0A\00", align 1, !dbg !2002
@.str.4 = private unnamed_addr constant [3 x i8] c"\014\00", align 1, !dbg !2007
@.str.5 = private unnamed_addr constant [43 x i8] c"Warning ACPI _SUB did not return a string\0A\00", align 1, !dbg !2009
@__UNIQUE_ID___addressable_acpi_get_subsystem_id209 = internal global ptr @acpi_get_subsystem_id, section ".discard.addressable", align 8, !dbg !2014
@__const.acpi_evaluate_reference.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@__UNIQUE_ID___addressable_acpi_evaluate_reference210 = internal global ptr @acpi_evaluate_reference, section ".discard.addressable", align 8, !dbg !2016
@__const.acpi_get_physical_device_location.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"_PLD\00", align 1, !dbg !2018
@__UNIQUE_ID___addressable_acpi_get_physical_device_location211 = internal global ptr @acpi_get_physical_device_location, section ".discard.addressable", align 8, !dbg !2020
@.str.7 = private unnamed_addr constant [5 x i8] c"_OST\00", align 1, !dbg !2022
@__UNIQUE_ID___addressable_acpi_evaluate_ost212 = internal global ptr @acpi_evaluate_ost, section ".discard.addressable", align 8, !dbg !2024
@.str.8 = private unnamed_addr constant [16 x i8] c"%sACPI: %s: %pV\00", align 1, !dbg !2026
@.str.9 = private unnamed_addr constant [6 x i8] c"<n/a>\00", align 1, !dbg !2029
@__UNIQUE_ID___addressable_acpi_handle_printk213 = internal global ptr @acpi_handle_printk, section ".discard.addressable", align 8, !dbg !2034
@.str.10 = private unnamed_addr constant [26 x i8] c"%s evaluation failed: %s\0A\00", align 1, !dbg !2036
@__UNIQUE_ID___addressable_acpi_evaluation_failure_warn214 = internal global ptr @acpi_evaluation_failure_warn, section ".discard.addressable", align 8, !dbg !2041
@__UNIQUE_ID___addressable_acpi_has_method215 = internal global ptr @acpi_has_method, section ".discard.addressable", align 8, !dbg !2043
@__const.acpi_execute_simple_method.obj = private unnamed_addr constant { i32, [20 x i8] } { i32 1, [20 x i8] undef }, align 8
@__UNIQUE_ID___addressable_acpi_execute_simple_method216 = internal global ptr @acpi_execute_simple_method, section ".discard.addressable", align 8, !dbg !2045
@.str.11 = private unnamed_addr constant [5 x i8] c"_EJ0\00", align 1, !dbg !2047
@.str.12 = private unnamed_addr constant [28 x i8] c"No _EJ0 support for device\0A\00", align 1, !dbg !2049
@.str.13 = private unnamed_addr constant [21 x i8] c"Eject failed (0x%x)\0A\00", align 1, !dbg !2054
@.str.14 = private unnamed_addr constant [5 x i8] c"_LCK\00", align 1, !dbg !2059
@.str.15 = private unnamed_addr constant [30 x i8] c"Locking device failed (0x%x)\0A\00", align 1, !dbg !2061
@.str.16 = private unnamed_addr constant [32 x i8] c"Unlocking device failed (0x%x)\0A\00", align 1, !dbg !2066
@.str.17 = private unnamed_addr constant [5 x i8] c"_REG\00", align 1, !dbg !2068
@__UNIQUE_ID___addressable_acpi_evaluate_reg217 = internal global ptr @acpi_evaluate_reg, section ".discard.addressable", align 8, !dbg !2070
@__const.acpi_evaluate_dsm.buf = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str.18 = private unnamed_addr constant [5 x i8] c"_DSM\00", align 1, !dbg !2072
@.str.19 = private unnamed_addr constant [37 x i8] c"failed to evaluate _DSM %pUb (0x%x)\0A\00", align 1, !dbg !2074
@__UNIQUE_ID___addressable_acpi_evaluate_dsm218 = internal global ptr @acpi_evaluate_dsm, section ".discard.addressable", align 8, !dbg !2079
@__UNIQUE_ID___addressable_acpi_check_dsm219 = internal global ptr @acpi_check_dsm, section ".discard.addressable", align 8, !dbg !2081
@__UNIQUE_ID___addressable_acpi_dev_hid_uid_match220 = internal global ptr @acpi_dev_hid_uid_match, section ".discard.addressable", align 8, !dbg !2083
@__UNIQUE_ID___addressable_acpi_dev_uid_to_integer221 = internal global ptr @acpi_dev_uid_to_integer, section ".discard.addressable", align 8, !dbg !2085
@acpi_device_lock = external dso_local global %struct.mutex, align 8
@acpi_bus_id_list = external dso_local global %struct.list_head, align 8
@__UNIQUE_ID___addressable_acpi_dev_found222 = internal global ptr @acpi_dev_found, section ".discard.addressable", align 8, !dbg !2087
@acpi_bus_type = external dso_local global %struct.bus_type, align 8
@__UNIQUE_ID___addressable_acpi_dev_present223 = internal global ptr @acpi_dev_present, section ".discard.addressable", align 8, !dbg !2089
@__UNIQUE_ID___addressable_acpi_dev_get_next_match_dev224 = internal global ptr @acpi_dev_get_next_match_dev, section ".discard.addressable", align 8, !dbg !2091
@__UNIQUE_ID___addressable_acpi_dev_get_first_match_dev225 = internal global ptr @acpi_dev_get_first_match_dev, section ".discard.addressable", align 8, !dbg !2093
@acpi_gbl_reduced_hardware = external dso_local global i8, align 1
@__UNIQUE_ID___addressable_acpi_reduced_hardware226 = internal global ptr @acpi_reduced_hardware, section ".discard.addressable", align 8, !dbg !2095
@acpi_video_backlight_string = hidden global [16 x i8] zeroinitializer, align 16, !dbg !2112
@__UNIQUE_ID___addressable_acpi_video_backlight_string227 = internal global ptr @acpi_video_backlight_string, section ".discard.addressable", align 8, !dbg !2097
@__setup_str_acpi_backlight = internal constant [16 x i8] c"acpi_backlight=\00", section ".init.rodata", align 1, !dbg !2118
@__setup_acpi_backlight = internal global %struct.obs_kernel_param { ptr @__setup_str_acpi_backlight, ptr @acpi_backlight, i32 0 }, section ".init.setup", align 8, !dbg !2099
@acpi_disabled = external dso_local global i32, align 4
@__UNIQUE_ID___addressable_acpi_match_platform_list228 = internal global ptr @acpi_match_platform_list, section ".discard.addressable", align 8, !dbg !2110
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.20 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !2114
@__const.acpi_handle_path.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.21 = private unnamed_addr constant [5 x i8] c"_HRV\00", align 1, !dbg !2116
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_extract_package206, ptr @__UNIQUE_ID___addressable_acpi_evaluate_integer207, ptr @__UNIQUE_ID___addressable_acpi_get_local_address208, ptr @__UNIQUE_ID___addressable_acpi_get_subsystem_id209, ptr @__UNIQUE_ID___addressable_acpi_evaluate_reference210, ptr @__UNIQUE_ID___addressable_acpi_get_physical_device_location211, ptr @__UNIQUE_ID___addressable_acpi_evaluate_ost212, ptr @__UNIQUE_ID___addressable_acpi_handle_printk213, ptr @__UNIQUE_ID___addressable_acpi_evaluation_failure_warn214, ptr @__UNIQUE_ID___addressable_acpi_has_method215, ptr @__UNIQUE_ID___addressable_acpi_execute_simple_method216, ptr @__UNIQUE_ID___addressable_acpi_evaluate_reg217, ptr @__UNIQUE_ID___addressable_acpi_evaluate_dsm218, ptr @__UNIQUE_ID___addressable_acpi_check_dsm219, ptr @__UNIQUE_ID___addressable_acpi_dev_hid_uid_match220, ptr @__UNIQUE_ID___addressable_acpi_dev_uid_to_integer221, ptr @__UNIQUE_ID___addressable_acpi_dev_found222, ptr @__UNIQUE_ID___addressable_acpi_dev_present223, ptr @__UNIQUE_ID___addressable_acpi_dev_get_next_match_dev224, ptr @__UNIQUE_ID___addressable_acpi_dev_get_first_match_dev225, ptr @__UNIQUE_ID___addressable_acpi_reduced_hardware226, ptr @__UNIQUE_ID___addressable_acpi_video_backlight_string227, ptr @__setup_acpi_backlight, ptr @__UNIQUE_ID___addressable_acpi_match_platform_list228], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_extract_package(ptr noundef %package, ptr noundef %format, ptr noundef %buffer) #0 align 16 !dbg !2130 {
entry:
  %retval = alloca i32, align 4
  %package.addr = alloca ptr, align 8
  %format.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %size_required = alloca i32, align 4
  %tail_offset = alloca i32, align 4
  %format_string = alloca ptr, align 8
  %format_count = alloca i32, align 4
  %i = alloca i32, align 4
  %head = alloca ptr, align 8
  %tail = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %element = alloca ptr, align 8
  %tmp41 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  %tmp82 = alloca i32, align 4
  %tmp86 = alloca i32, align 4
  %pointer125 = alloca ptr, align 8
  %element126 = alloca ptr, align 8
  store ptr %package, ptr %package.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %package.addr, metadata !2139, metadata !DIExpression()), !dbg !2158
  store ptr %format, ptr %format.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !2140, metadata !DIExpression()), !dbg !2159
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !2141, metadata !DIExpression()), !dbg !2160
  call void @llvm.lifetime.start.p0(i64 4, ptr %size_required) #18, !dbg !2161
  call void @llvm.dbg.declare(metadata ptr %size_required, metadata !2142, metadata !DIExpression()), !dbg !2162
  store i32 0, ptr %size_required, align 4, !dbg !2162
  call void @llvm.lifetime.start.p0(i64 4, ptr %tail_offset) #18, !dbg !2163
  call void @llvm.dbg.declare(metadata ptr %tail_offset, metadata !2143, metadata !DIExpression()), !dbg !2164
  store i32 0, ptr %tail_offset, align 4, !dbg !2164
  call void @llvm.lifetime.start.p0(i64 8, ptr %format_string) #18, !dbg !2165
  call void @llvm.dbg.declare(metadata ptr %format_string, metadata !2144, metadata !DIExpression()), !dbg !2166
  store ptr null, ptr %format_string, align 8, !dbg !2166
  call void @llvm.lifetime.start.p0(i64 4, ptr %format_count) #18, !dbg !2167
  call void @llvm.dbg.declare(metadata ptr %format_count, metadata !2145, metadata !DIExpression()), !dbg !2168
  store i32 0, ptr %format_count, align 4, !dbg !2168
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !2169
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2146, metadata !DIExpression()), !dbg !2170
  store i32 0, ptr %i, align 4, !dbg !2170
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #18, !dbg !2171
  call void @llvm.dbg.declare(metadata ptr %head, metadata !2147, metadata !DIExpression()), !dbg !2172
  store ptr null, ptr %head, align 8, !dbg !2172
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail) #18, !dbg !2173
  call void @llvm.dbg.declare(metadata ptr %tail, metadata !2148, metadata !DIExpression()), !dbg !2174
  store ptr null, ptr %tail, align 8, !dbg !2174
  %0 = load ptr, ptr %package.addr, align 8, !dbg !2175
  %tobool = icmp ne ptr %0, null, !dbg !2175
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2177

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %package.addr, align 8, !dbg !2178
  %2 = load i32, ptr %1, align 8, !dbg !2179
  %cmp = icmp ne i32 %2, 4, !dbg !2180
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !2181

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %package.addr, align 8, !dbg !2182
  %count = getelementptr inbounds %struct.anon.2, ptr %3, i32 0, i32 1, !dbg !2183
  %4 = load i32, ptr %count, align 4, !dbg !2183
  %cmp2 = icmp ult i32 %4, 1, !dbg !2184
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2185

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 0, ptr %tmp, align 4, !dbg !2186
  %5 = load i32, ptr %tmp, align 4, !dbg !2190
  store i32 4097, ptr %retval, align 4, !dbg !2191
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup181, !dbg !2191

if.end:                                           ; preds = %lor.lhs.false1
  %6 = load ptr, ptr %format.addr, align 8, !dbg !2192
  %tobool3 = icmp ne ptr %6, null, !dbg !2192
  br i1 %tobool3, label %lor.lhs.false4, label %if.then8, !dbg !2194

lor.lhs.false4:                                   ; preds = %if.end
  %7 = load ptr, ptr %format.addr, align 8, !dbg !2195
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %7, i32 0, i32 1, !dbg !2196
  %8 = load ptr, ptr %pointer, align 8, !dbg !2196
  %tobool5 = icmp ne ptr %8, null, !dbg !2195
  br i1 %tobool5, label %lor.lhs.false6, label %if.then8, !dbg !2197

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %9 = load ptr, ptr %format.addr, align 8, !dbg !2198
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %9, i32 0, i32 0, !dbg !2199
  %10 = load i64, ptr %length, align 8, !dbg !2199
  %cmp7 = icmp ult i64 %10, 1, !dbg !2200
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !2201

if.then8:                                         ; preds = %lor.lhs.false6, %lor.lhs.false4, %if.end
  store i32 0, ptr %tmp9, align 4, !dbg !2202
  %11 = load i32, ptr %tmp9, align 4, !dbg !2206
  store i32 4097, ptr %retval, align 4, !dbg !2207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup181, !dbg !2207

if.end10:                                         ; preds = %lor.lhs.false6
  %12 = load ptr, ptr %buffer.addr, align 8, !dbg !2208
  %tobool11 = icmp ne ptr %12, null, !dbg !2208
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !2210

if.then12:                                        ; preds = %if.end10
  store i32 0, ptr %tmp13, align 4, !dbg !2211
  %13 = load i32, ptr %tmp13, align 4, !dbg !2215
  store i32 4097, ptr %retval, align 4, !dbg !2216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup181, !dbg !2216

if.end14:                                         ; preds = %if.end10
  %14 = load ptr, ptr %format.addr, align 8, !dbg !2217
  %length15 = getelementptr inbounds %struct.acpi_buffer, ptr %14, i32 0, i32 0, !dbg !2218
  %15 = load i64, ptr %length15, align 8, !dbg !2218
  %div = udiv i64 %15, 1, !dbg !2219
  %sub = sub i64 %div, 1, !dbg !2220
  %conv = trunc i64 %sub to i32, !dbg !2221
  store i32 %conv, ptr %format_count, align 4, !dbg !2222
  %16 = load i32, ptr %format_count, align 4, !dbg !2223
  %17 = load ptr, ptr %package.addr, align 8, !dbg !2225
  %count16 = getelementptr inbounds %struct.anon.2, ptr %17, i32 0, i32 1, !dbg !2226
  %18 = load i32, ptr %count16, align 4, !dbg !2226
  %cmp17 = icmp ugt i32 %16, %18, !dbg !2227
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !2228

if.then19:                                        ; preds = %if.end14
  store i32 0, ptr %tmp20, align 4, !dbg !2229
  %19 = load i32, ptr %tmp20, align 4, !dbg !2233
  store i32 4100, ptr %retval, align 4, !dbg !2234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup181, !dbg !2234

if.end21:                                         ; preds = %if.end14
  %20 = load ptr, ptr %format.addr, align 8, !dbg !2235
  %pointer22 = getelementptr inbounds %struct.acpi_buffer, ptr %20, i32 0, i32 1, !dbg !2236
  %21 = load ptr, ptr %pointer22, align 8, !dbg !2236
  store ptr %21, ptr %format_string, align 8, !dbg !2237
  store i32 0, ptr %i, align 4, !dbg !2238
  br label %for.cond, !dbg !2239

for.cond:                                         ; preds = %for.inc, %if.end21
  %22 = load i32, ptr %i, align 4, !dbg !2240
  %23 = load i32, ptr %format_count, align 4, !dbg !2241
  %cmp23 = icmp ult i32 %22, %23, !dbg !2242
  br i1 %cmp23, label %for.body, label %for.end, !dbg !2243

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #18, !dbg !2244
  call void @llvm.dbg.declare(metadata ptr %element, metadata !2149, metadata !DIExpression()), !dbg !2245
  %24 = load ptr, ptr %package.addr, align 8, !dbg !2246
  %elements = getelementptr inbounds %struct.anon.2, ptr %24, i32 0, i32 2, !dbg !2247
  %25 = load ptr, ptr %elements, align 8, !dbg !2247
  %26 = load i32, ptr %i, align 4, !dbg !2248
  %idxprom = zext i32 %26 to i64, !dbg !2246
  %arrayidx = getelementptr %union.acpi_object, ptr %25, i64 %idxprom, !dbg !2246
  store ptr %arrayidx, ptr %element, align 8, !dbg !2245
  %27 = load ptr, ptr %element, align 8, !dbg !2249
  %28 = load i32, ptr %27, align 8, !dbg !2250
  switch i32 %28, label %sw.default85 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb42
    i32 3, label %sw.bb42
    i32 20, label %sw.bb70
    i32 4, label %sw.bb84
  ], !dbg !2251

sw.bb:                                            ; preds = %for.body
  %29 = load ptr, ptr %format_string, align 8, !dbg !2252
  %30 = load i32, ptr %i, align 4, !dbg !2254
  %idxprom25 = zext i32 %30 to i64, !dbg !2252
  %arrayidx26 = getelementptr i8, ptr %29, i64 %idxprom25, !dbg !2252
  %31 = load i8, ptr %arrayidx26, align 1, !dbg !2252
  %conv27 = zext i8 %31 to i32, !dbg !2252
  switch i32 %conv27, label %sw.default [
    i32 78, label %sw.bb28
    i32 83, label %sw.bb34
  ], !dbg !2255

sw.bb28:                                          ; preds = %sw.bb
  %32 = load i32, ptr %size_required, align 4, !dbg !2256
  %conv29 = zext i32 %32 to i64, !dbg !2256
  %add = add i64 %conv29, 8, !dbg !2256
  %conv30 = trunc i64 %add to i32, !dbg !2256
  store i32 %conv30, ptr %size_required, align 4, !dbg !2256
  %33 = load i32, ptr %tail_offset, align 4, !dbg !2258
  %conv31 = zext i32 %33 to i64, !dbg !2258
  %add32 = add i64 %conv31, 8, !dbg !2258
  %conv33 = trunc i64 %add32 to i32, !dbg !2258
  store i32 %conv33, ptr %tail_offset, align 4, !dbg !2258
  br label %sw.epilog, !dbg !2259

sw.bb34:                                          ; preds = %sw.bb
  %34 = load i32, ptr %size_required, align 4, !dbg !2260
  %conv35 = zext i32 %34 to i64, !dbg !2260
  %add36 = add i64 %conv35, 17, !dbg !2260
  %conv37 = trunc i64 %add36 to i32, !dbg !2260
  store i32 %conv37, ptr %size_required, align 4, !dbg !2260
  %35 = load i32, ptr %tail_offset, align 4, !dbg !2261
  %conv38 = zext i32 %35 to i64, !dbg !2261
  %add39 = add i64 %conv38, 8, !dbg !2261
  %conv40 = trunc i64 %add39 to i32, !dbg !2261
  store i32 %conv40, ptr %tail_offset, align 4, !dbg !2261
  br label %sw.epilog, !dbg !2262

sw.default:                                       ; preds = %sw.bb
  store i32 0, ptr %tmp41, align 4, !dbg !2263
  %36 = load i32, ptr %tmp41, align 4, !dbg !2266
  store i32 4100, ptr %retval, align 4, !dbg !2267
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2267

sw.epilog:                                        ; preds = %sw.bb34, %sw.bb28
  br label %sw.epilog87, !dbg !2268

sw.bb42:                                          ; preds = %for.body, %for.body
  %37 = load ptr, ptr %format_string, align 8, !dbg !2269
  %38 = load i32, ptr %i, align 4, !dbg !2270
  %idxprom43 = zext i32 %38 to i64, !dbg !2269
  %arrayidx44 = getelementptr i8, ptr %37, i64 %idxprom43, !dbg !2269
  %39 = load i8, ptr %arrayidx44, align 1, !dbg !2269
  %conv45 = zext i8 %39 to i32, !dbg !2269
  switch i32 %conv45, label %sw.default67 [
    i32 83, label %sw.bb46
    i32 66, label %sw.bb57
  ], !dbg !2271

sw.bb46:                                          ; preds = %sw.bb42
  %40 = load ptr, ptr %element, align 8, !dbg !2272
  %length47 = getelementptr inbounds %struct.anon.0, ptr %40, i32 0, i32 1, !dbg !2274
  %41 = load i32, ptr %length47, align 4, !dbg !2274
  %conv48 = zext i32 %41 to i64, !dbg !2272
  %mul = mul i64 %conv48, 1, !dbg !2275
  %add49 = add i64 8, %mul, !dbg !2276
  %add50 = add i64 %add49, 1, !dbg !2277
  %42 = load i32, ptr %size_required, align 4, !dbg !2278
  %conv51 = zext i32 %42 to i64, !dbg !2278
  %add52 = add i64 %conv51, %add50, !dbg !2278
  %conv53 = trunc i64 %add52 to i32, !dbg !2278
  store i32 %conv53, ptr %size_required, align 4, !dbg !2278
  %43 = load i32, ptr %tail_offset, align 4, !dbg !2279
  %conv54 = zext i32 %43 to i64, !dbg !2279
  %add55 = add i64 %conv54, 8, !dbg !2279
  %conv56 = trunc i64 %add55 to i32, !dbg !2279
  store i32 %conv56, ptr %tail_offset, align 4, !dbg !2279
  br label %sw.epilog69, !dbg !2280

sw.bb57:                                          ; preds = %sw.bb42
  %44 = load ptr, ptr %element, align 8, !dbg !2281
  %length58 = getelementptr inbounds %struct.anon.1, ptr %44, i32 0, i32 1, !dbg !2282
  %45 = load i32, ptr %length58, align 4, !dbg !2282
  %conv59 = zext i32 %45 to i64, !dbg !2281
  %add60 = add i64 8, %conv59, !dbg !2283
  %46 = load i32, ptr %size_required, align 4, !dbg !2284
  %conv61 = zext i32 %46 to i64, !dbg !2284
  %add62 = add i64 %conv61, %add60, !dbg !2284
  %conv63 = trunc i64 %add62 to i32, !dbg !2284
  store i32 %conv63, ptr %size_required, align 4, !dbg !2284
  %47 = load i32, ptr %tail_offset, align 4, !dbg !2285
  %conv64 = zext i32 %47 to i64, !dbg !2285
  %add65 = add i64 %conv64, 8, !dbg !2285
  %conv66 = trunc i64 %add65 to i32, !dbg !2285
  store i32 %conv66, ptr %tail_offset, align 4, !dbg !2285
  br label %sw.epilog69, !dbg !2286

sw.default67:                                     ; preds = %sw.bb42
  store i32 0, ptr %tmp68, align 4, !dbg !2287
  %48 = load i32, ptr %tmp68, align 4, !dbg !2290
  store i32 4100, ptr %retval, align 4, !dbg !2291
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2291

sw.epilog69:                                      ; preds = %sw.bb57, %sw.bb46
  br label %sw.epilog87, !dbg !2292

sw.bb70:                                          ; preds = %for.body
  %49 = load ptr, ptr %format_string, align 8, !dbg !2293
  %50 = load i32, ptr %i, align 4, !dbg !2294
  %idxprom71 = zext i32 %50 to i64, !dbg !2293
  %arrayidx72 = getelementptr i8, ptr %49, i64 %idxprom71, !dbg !2293
  %51 = load i8, ptr %arrayidx72, align 1, !dbg !2293
  %conv73 = zext i8 %51 to i32, !dbg !2293
  switch i32 %conv73, label %sw.default81 [
    i32 82, label %sw.bb74
  ], !dbg !2295

sw.bb74:                                          ; preds = %sw.bb70
  %52 = load i32, ptr %size_required, align 4, !dbg !2296
  %conv75 = zext i32 %52 to i64, !dbg !2296
  %add76 = add i64 %conv75, 8, !dbg !2296
  %conv77 = trunc i64 %add76 to i32, !dbg !2296
  store i32 %conv77, ptr %size_required, align 4, !dbg !2296
  %53 = load i32, ptr %tail_offset, align 4, !dbg !2298
  %conv78 = zext i32 %53 to i64, !dbg !2298
  %add79 = add i64 %conv78, 8, !dbg !2298
  %conv80 = trunc i64 %add79 to i32, !dbg !2298
  store i32 %conv80, ptr %tail_offset, align 4, !dbg !2298
  br label %sw.epilog83, !dbg !2299

sw.default81:                                     ; preds = %sw.bb70
  store i32 0, ptr %tmp82, align 4, !dbg !2300
  %54 = load i32, ptr %tmp82, align 4, !dbg !2303
  store i32 4100, ptr %retval, align 4, !dbg !2304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2304

sw.epilog83:                                      ; preds = %sw.bb74
  br label %sw.epilog87, !dbg !2305

sw.bb84:                                          ; preds = %for.body
  br label %sw.default85, !dbg !2306

sw.default85:                                     ; preds = %for.body, %sw.bb84
  store i32 0, ptr %tmp86, align 4, !dbg !2307
  %55 = load i32, ptr %tmp86, align 4, !dbg !2310
  store i32 15, ptr %retval, align 4, !dbg !2311
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2311

sw.epilog87:                                      ; preds = %sw.epilog83, %sw.epilog69, %sw.epilog
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2312
  br label %cleanup, !dbg !2312

cleanup:                                          ; preds = %sw.epilog87, %sw.default85, %sw.default81, %sw.default67, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #18, !dbg !2312
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup181 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2313

for.inc:                                          ; preds = %cleanup.cont
  %56 = load i32, ptr %i, align 4, !dbg !2314
  %inc = add i32 %56, 1, !dbg !2314
  store i32 %inc, ptr %i, align 4, !dbg !2314
  br label %for.cond, !dbg !2315, !llvm.loop !2316

for.end:                                          ; preds = %for.cond
  %57 = load ptr, ptr %buffer.addr, align 8, !dbg !2320
  %length88 = getelementptr inbounds %struct.acpi_buffer, ptr %57, i32 0, i32 0, !dbg !2322
  %58 = load i64, ptr %length88, align 8, !dbg !2322
  %cmp89 = icmp eq i64 %58, -1, !dbg !2323
  br i1 %cmp89, label %if.then91, label %if.else, !dbg !2324

if.then91:                                        ; preds = %for.end
  %59 = load i32, ptr %size_required, align 4, !dbg !2325
  %conv92 = zext i32 %59 to i64, !dbg !2325
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef %conv92) #19, !dbg !2325
  %60 = load ptr, ptr %buffer.addr, align 8, !dbg !2327
  %pointer93 = getelementptr inbounds %struct.acpi_buffer, ptr %60, i32 0, i32 1, !dbg !2328
  store ptr %call, ptr %pointer93, align 8, !dbg !2329
  %61 = load ptr, ptr %buffer.addr, align 8, !dbg !2330
  %pointer94 = getelementptr inbounds %struct.acpi_buffer, ptr %61, i32 0, i32 1, !dbg !2332
  %62 = load ptr, ptr %pointer94, align 8, !dbg !2332
  %tobool95 = icmp ne ptr %62, null, !dbg !2330
  br i1 %tobool95, label %if.end97, label %if.then96, !dbg !2333

if.then96:                                        ; preds = %if.then91
  store i32 4, ptr %retval, align 4, !dbg !2334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup181, !dbg !2334

if.end97:                                         ; preds = %if.then91
  %63 = load i32, ptr %size_required, align 4, !dbg !2335
  %conv98 = zext i32 %63 to i64, !dbg !2335
  %64 = load ptr, ptr %buffer.addr, align 8, !dbg !2336
  %length99 = getelementptr inbounds %struct.acpi_buffer, ptr %64, i32 0, i32 0, !dbg !2337
  store i64 %conv98, ptr %length99, align 8, !dbg !2338
  br label %if.end118, !dbg !2339

if.else:                                          ; preds = %for.end
  %65 = load ptr, ptr %buffer.addr, align 8, !dbg !2340
  %length100 = getelementptr inbounds %struct.acpi_buffer, ptr %65, i32 0, i32 0, !dbg !2343
  %66 = load i64, ptr %length100, align 8, !dbg !2343
  %67 = load i32, ptr %size_required, align 4, !dbg !2344
  %conv101 = zext i32 %67 to i64, !dbg !2344
  %cmp102 = icmp ult i64 %66, %conv101, !dbg !2345
  br i1 %cmp102, label %if.then104, label %if.else107, !dbg !2346

if.then104:                                       ; preds = %if.else
  %68 = load i32, ptr %size_required, align 4, !dbg !2347
  %conv105 = zext i32 %68 to i64, !dbg !2347
  %69 = load ptr, ptr %buffer.addr, align 8, !dbg !2349
  %length106 = getelementptr inbounds %struct.acpi_buffer, ptr %69, i32 0, i32 0, !dbg !2350
  store i64 %conv105, ptr %length106, align 8, !dbg !2351
  store i32 11, ptr %retval, align 4, !dbg !2352
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup181, !dbg !2352

if.else107:                                       ; preds = %if.else
  %70 = load ptr, ptr %buffer.addr, align 8, !dbg !2353
  %length108 = getelementptr inbounds %struct.acpi_buffer, ptr %70, i32 0, i32 0, !dbg !2355
  %71 = load i64, ptr %length108, align 8, !dbg !2355
  %72 = load i32, ptr %size_required, align 4, !dbg !2356
  %conv109 = zext i32 %72 to i64, !dbg !2356
  %cmp110 = icmp ne i64 %71, %conv109, !dbg !2357
  br i1 %cmp110, label %if.then115, label %lor.lhs.false112, !dbg !2358

lor.lhs.false112:                                 ; preds = %if.else107
  %73 = load ptr, ptr %buffer.addr, align 8, !dbg !2359
  %pointer113 = getelementptr inbounds %struct.acpi_buffer, ptr %73, i32 0, i32 1, !dbg !2360
  %74 = load ptr, ptr %pointer113, align 8, !dbg !2360
  %tobool114 = icmp ne ptr %74, null, !dbg !2359
  br i1 %tobool114, label %if.end116, label %if.then115, !dbg !2361

if.then115:                                       ; preds = %lor.lhs.false112, %if.else107
  store i32 4097, ptr %retval, align 4, !dbg !2362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup181, !dbg !2362

if.end116:                                        ; preds = %lor.lhs.false112
  br label %if.end117

if.end117:                                        ; preds = %if.end116
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.end97
  %75 = load ptr, ptr %buffer.addr, align 8, !dbg !2364
  %pointer119 = getelementptr inbounds %struct.acpi_buffer, ptr %75, i32 0, i32 1, !dbg !2365
  %76 = load ptr, ptr %pointer119, align 8, !dbg !2365
  store ptr %76, ptr %head, align 8, !dbg !2366
  %77 = load ptr, ptr %buffer.addr, align 8, !dbg !2367
  %pointer120 = getelementptr inbounds %struct.acpi_buffer, ptr %77, i32 0, i32 1, !dbg !2368
  %78 = load ptr, ptr %pointer120, align 8, !dbg !2368
  %79 = load i32, ptr %tail_offset, align 4, !dbg !2369
  %idx.ext = zext i32 %79 to i64, !dbg !2370
  %add.ptr = getelementptr i8, ptr %78, i64 %idx.ext, !dbg !2370
  store ptr %add.ptr, ptr %tail, align 8, !dbg !2371
  store i32 0, ptr %i, align 4, !dbg !2372
  br label %for.cond121, !dbg !2373

for.cond121:                                      ; preds = %for.inc178, %if.end118
  %80 = load i32, ptr %i, align 4, !dbg !2374
  %81 = load i32, ptr %format_count, align 4, !dbg !2375
  %cmp122 = icmp ult i32 %80, %81, !dbg !2376
  br i1 %cmp122, label %for.body124, label %for.end180, !dbg !2377

for.body124:                                      ; preds = %for.cond121
  call void @llvm.lifetime.start.p0(i64 8, ptr %pointer125) #18, !dbg !2378
  call void @llvm.dbg.declare(metadata ptr %pointer125, metadata !2153, metadata !DIExpression()), !dbg !2379
  store ptr null, ptr %pointer125, align 8, !dbg !2379
  call void @llvm.lifetime.start.p0(i64 8, ptr %element126) #18, !dbg !2380
  call void @llvm.dbg.declare(metadata ptr %element126, metadata !2157, metadata !DIExpression()), !dbg !2381
  %82 = load ptr, ptr %package.addr, align 8, !dbg !2382
  %elements127 = getelementptr inbounds %struct.anon.2, ptr %82, i32 0, i32 2, !dbg !2383
  %83 = load ptr, ptr %elements127, align 8, !dbg !2383
  %84 = load i32, ptr %i, align 4, !dbg !2384
  %idxprom128 = zext i32 %84 to i64, !dbg !2382
  %arrayidx129 = getelementptr %union.acpi_object, ptr %83, i64 %idxprom128, !dbg !2382
  store ptr %arrayidx129, ptr %element126, align 8, !dbg !2381
  %85 = load ptr, ptr %element126, align 8, !dbg !2385
  %86 = load i32, ptr %85, align 8, !dbg !2386
  switch i32 %86, label %sw.default176 [
    i32 1, label %sw.bb130
    i32 2, label %sw.bb143
    i32 3, label %sw.bb143
    i32 20, label %sw.bb167
    i32 4, label %sw.bb175
  ], !dbg !2387

sw.bb130:                                         ; preds = %for.body124
  %87 = load ptr, ptr %format_string, align 8, !dbg !2388
  %88 = load i32, ptr %i, align 4, !dbg !2390
  %idxprom131 = zext i32 %88 to i64, !dbg !2388
  %arrayidx132 = getelementptr i8, ptr %87, i64 %idxprom131, !dbg !2388
  %89 = load i8, ptr %arrayidx132, align 1, !dbg !2388
  %conv133 = zext i8 %89 to i32, !dbg !2388
  switch i32 %conv133, label %sw.default141 [
    i32 78, label %sw.bb134
    i32 83, label %sw.bb136
  ], !dbg !2391

sw.bb134:                                         ; preds = %sw.bb130
  %90 = load ptr, ptr %element126, align 8, !dbg !2392
  %value = getelementptr inbounds %struct.anon, ptr %90, i32 0, i32 1, !dbg !2394
  %91 = load i64, ptr %value, align 8, !dbg !2394
  %92 = load ptr, ptr %head, align 8, !dbg !2395
  store i64 %91, ptr %92, align 8, !dbg !2396
  %93 = load ptr, ptr %head, align 8, !dbg !2397
  %add.ptr135 = getelementptr i8, ptr %93, i64 8, !dbg !2397
  store ptr %add.ptr135, ptr %head, align 8, !dbg !2397
  br label %sw.epilog142, !dbg !2398

sw.bb136:                                         ; preds = %sw.bb130
  %94 = load ptr, ptr %head, align 8, !dbg !2399
  store ptr %94, ptr %pointer125, align 8, !dbg !2400
  %95 = load ptr, ptr %tail, align 8, !dbg !2401
  %96 = load ptr, ptr %pointer125, align 8, !dbg !2402
  store ptr %95, ptr %96, align 8, !dbg !2403
  %97 = load ptr, ptr %element126, align 8, !dbg !2404
  %value137 = getelementptr inbounds %struct.anon, ptr %97, i32 0, i32 1, !dbg !2405
  %98 = load i64, ptr %value137, align 8, !dbg !2405
  %99 = load ptr, ptr %tail, align 8, !dbg !2406
  store i64 %98, ptr %99, align 8, !dbg !2407
  %100 = load ptr, ptr %head, align 8, !dbg !2408
  %add.ptr138 = getelementptr i8, ptr %100, i64 8, !dbg !2408
  store ptr %add.ptr138, ptr %head, align 8, !dbg !2408
  %101 = load ptr, ptr %tail, align 8, !dbg !2409
  %add.ptr139 = getelementptr i8, ptr %101, i64 8, !dbg !2409
  store ptr %add.ptr139, ptr %tail, align 8, !dbg !2409
  %102 = load ptr, ptr %tail, align 8, !dbg !2410
  store i8 0, ptr %102, align 1, !dbg !2411
  %103 = load ptr, ptr %tail, align 8, !dbg !2412
  %add.ptr140 = getelementptr i8, ptr %103, i64 1, !dbg !2412
  store ptr %add.ptr140, ptr %tail, align 8, !dbg !2412
  br label %sw.epilog142, !dbg !2413

sw.default141:                                    ; preds = %sw.bb130
  br label %sw.epilog142, !dbg !2414

sw.epilog142:                                     ; preds = %sw.default141, %sw.bb136, %sw.bb134
  br label %sw.epilog177, !dbg !2415

sw.bb143:                                         ; preds = %for.body124, %for.body124
  %104 = load ptr, ptr %format_string, align 8, !dbg !2416
  %105 = load i32, ptr %i, align 4, !dbg !2417
  %idxprom144 = zext i32 %105 to i64, !dbg !2416
  %arrayidx145 = getelementptr i8, ptr %104, i64 %idxprom144, !dbg !2416
  %106 = load i8, ptr %arrayidx145, align 1, !dbg !2416
  %conv146 = zext i8 %106 to i32, !dbg !2416
  switch i32 %conv146, label %sw.default165 [
    i32 83, label %sw.bb147
    i32 66, label %sw.bb157
  ], !dbg !2418

sw.bb147:                                         ; preds = %sw.bb143
  %107 = load ptr, ptr %head, align 8, !dbg !2419
  store ptr %107, ptr %pointer125, align 8, !dbg !2421
  %108 = load ptr, ptr %tail, align 8, !dbg !2422
  %109 = load ptr, ptr %pointer125, align 8, !dbg !2423
  store ptr %108, ptr %109, align 8, !dbg !2424
  %110 = load ptr, ptr %tail, align 8, !dbg !2425
  %111 = load ptr, ptr %element126, align 8, !dbg !2426
  %pointer148 = getelementptr inbounds %struct.anon.0, ptr %111, i32 0, i32 2, !dbg !2427
  %112 = load ptr, ptr %pointer148, align 8, !dbg !2427
  %113 = load ptr, ptr %element126, align 8, !dbg !2428
  %length149 = getelementptr inbounds %struct.anon.0, ptr %113, i32 0, i32 1, !dbg !2429
  %114 = load i32, ptr %length149, align 4, !dbg !2429
  %conv150 = zext i32 %114 to i64, !dbg !2428
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %110, ptr align 1 %112, i64 %conv150, i1 false), !dbg !2430
  %115 = load ptr, ptr %head, align 8, !dbg !2431
  %add.ptr151 = getelementptr i8, ptr %115, i64 8, !dbg !2431
  store ptr %add.ptr151, ptr %head, align 8, !dbg !2431
  %116 = load ptr, ptr %element126, align 8, !dbg !2432
  %length152 = getelementptr inbounds %struct.anon.0, ptr %116, i32 0, i32 1, !dbg !2433
  %117 = load i32, ptr %length152, align 4, !dbg !2433
  %conv153 = zext i32 %117 to i64, !dbg !2432
  %mul154 = mul i64 %conv153, 1, !dbg !2434
  %118 = load ptr, ptr %tail, align 8, !dbg !2435
  %add.ptr155 = getelementptr i8, ptr %118, i64 %mul154, !dbg !2435
  store ptr %add.ptr155, ptr %tail, align 8, !dbg !2435
  %119 = load ptr, ptr %tail, align 8, !dbg !2436
  store i8 0, ptr %119, align 1, !dbg !2437
  %120 = load ptr, ptr %tail, align 8, !dbg !2438
  %add.ptr156 = getelementptr i8, ptr %120, i64 1, !dbg !2438
  store ptr %add.ptr156, ptr %tail, align 8, !dbg !2438
  br label %sw.epilog166, !dbg !2439

sw.bb157:                                         ; preds = %sw.bb143
  %121 = load ptr, ptr %head, align 8, !dbg !2440
  store ptr %121, ptr %pointer125, align 8, !dbg !2441
  %122 = load ptr, ptr %tail, align 8, !dbg !2442
  %123 = load ptr, ptr %pointer125, align 8, !dbg !2443
  store ptr %122, ptr %123, align 8, !dbg !2444
  %124 = load ptr, ptr %tail, align 8, !dbg !2445
  %125 = load ptr, ptr %element126, align 8, !dbg !2446
  %pointer158 = getelementptr inbounds %struct.anon.1, ptr %125, i32 0, i32 2, !dbg !2447
  %126 = load ptr, ptr %pointer158, align 8, !dbg !2447
  %127 = load ptr, ptr %element126, align 8, !dbg !2448
  %length159 = getelementptr inbounds %struct.anon.1, ptr %127, i32 0, i32 1, !dbg !2449
  %128 = load i32, ptr %length159, align 4, !dbg !2449
  %conv160 = zext i32 %128 to i64, !dbg !2448
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %124, ptr align 1 %126, i64 %conv160, i1 false), !dbg !2450
  %129 = load ptr, ptr %head, align 8, !dbg !2451
  %add.ptr161 = getelementptr i8, ptr %129, i64 8, !dbg !2451
  store ptr %add.ptr161, ptr %head, align 8, !dbg !2451
  %130 = load ptr, ptr %element126, align 8, !dbg !2452
  %length162 = getelementptr inbounds %struct.anon.1, ptr %130, i32 0, i32 1, !dbg !2453
  %131 = load i32, ptr %length162, align 4, !dbg !2453
  %132 = load ptr, ptr %tail, align 8, !dbg !2454
  %idx.ext163 = zext i32 %131 to i64, !dbg !2454
  %add.ptr164 = getelementptr i8, ptr %132, i64 %idx.ext163, !dbg !2454
  store ptr %add.ptr164, ptr %tail, align 8, !dbg !2454
  br label %sw.epilog166, !dbg !2455

sw.default165:                                    ; preds = %sw.bb143
  br label %sw.epilog166, !dbg !2456

sw.epilog166:                                     ; preds = %sw.default165, %sw.bb157, %sw.bb147
  br label %sw.epilog177, !dbg !2457

sw.bb167:                                         ; preds = %for.body124
  %133 = load ptr, ptr %format_string, align 8, !dbg !2458
  %134 = load i32, ptr %i, align 4, !dbg !2459
  %idxprom168 = zext i32 %134 to i64, !dbg !2458
  %arrayidx169 = getelementptr i8, ptr %133, i64 %idxprom168, !dbg !2458
  %135 = load i8, ptr %arrayidx169, align 1, !dbg !2458
  %conv170 = zext i8 %135 to i32, !dbg !2458
  switch i32 %conv170, label %sw.default173 [
    i32 82, label %sw.bb171
  ], !dbg !2460

sw.bb171:                                         ; preds = %sw.bb167
  %136 = load ptr, ptr %element126, align 8, !dbg !2461
  %handle = getelementptr inbounds %struct.anon.3, ptr %136, i32 0, i32 2, !dbg !2463
  %137 = load ptr, ptr %handle, align 8, !dbg !2463
  %138 = load ptr, ptr %head, align 8, !dbg !2464
  store ptr %137, ptr %138, align 8, !dbg !2465
  %139 = load ptr, ptr %head, align 8, !dbg !2466
  %add.ptr172 = getelementptr i8, ptr %139, i64 8, !dbg !2466
  store ptr %add.ptr172, ptr %head, align 8, !dbg !2466
  br label %sw.epilog174, !dbg !2467

sw.default173:                                    ; preds = %sw.bb167
  br label %sw.epilog174, !dbg !2468

sw.epilog174:                                     ; preds = %sw.default173, %sw.bb171
  br label %sw.epilog177, !dbg !2469

sw.bb175:                                         ; preds = %for.body124
  br label %sw.default176, !dbg !2470

sw.default176:                                    ; preds = %for.body124, %sw.bb175
  br label %sw.epilog177, !dbg !2471

sw.epilog177:                                     ; preds = %sw.default176, %sw.epilog174, %sw.epilog166, %sw.epilog142
  call void @llvm.lifetime.end.p0(i64 8, ptr %element126) #18, !dbg !2472
  call void @llvm.lifetime.end.p0(i64 8, ptr %pointer125) #18, !dbg !2472
  br label %for.inc178, !dbg !2473

for.inc178:                                       ; preds = %sw.epilog177
  %140 = load i32, ptr %i, align 4, !dbg !2474
  %inc179 = add i32 %140, 1, !dbg !2474
  store i32 %inc179, ptr %i, align 4, !dbg !2474
  br label %for.cond121, !dbg !2475, !llvm.loop !2476

for.end180:                                       ; preds = %for.cond121
  store i32 0, ptr %retval, align 4, !dbg !2478
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup181, !dbg !2478

cleanup181:                                       ; preds = %for.end180, %if.then115, %if.then104, %if.then96, %cleanup, %if.then19, %if.then12, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail) #18, !dbg !2479
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #18, !dbg !2479
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !2479
  call void @llvm.lifetime.end.p0(i64 4, ptr %format_count) #18, !dbg !2479
  call void @llvm.lifetime.end.p0(i64 8, ptr %format_string) #18, !dbg !2479
  call void @llvm.lifetime.end.p0(i64 4, ptr %tail_offset) #18, !dbg !2479
  call void @llvm.lifetime.end.p0(i64 4, ptr %size_required) #18, !dbg !2479
  %141 = load i32, ptr %retval, align 4, !dbg !2479
  ret i32 %141, !dbg !2479
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #3 align 16 !dbg !2480 {
entry:
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2485, metadata !DIExpression()), !dbg !2496
  %0 = load i64, ptr %size.addr, align 8, !dbg !2497
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #18, !dbg !2498
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !2486, metadata !DIExpression()), !dbg !2498
  br label %do.body, !dbg !2498

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !2499
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2488, metadata !DIExpression()), !dbg !2499
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !2499
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2491, metadata !DIExpression()), !dbg !2499
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2499
  %conv = zext i1 %cmp to i32, !dbg !2499
  store i32 1, ptr %tmp, align 4, !dbg !2499
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !2500
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !2500
  %1 = load i32, ptr %tmp, align 4, !dbg !2499
  %call = call i64 @arch_local_save_flags() #19, !dbg !2500
  store i64 %call, ptr %_flags, align 8, !dbg !2500
  br label %do.cond, !dbg !2500

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2500

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #18, !dbg !2501
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !2492, metadata !DIExpression()), !dbg !2501
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #18, !dbg !2501
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !2495, metadata !DIExpression()), !dbg !2501
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !2501
  %conv6 = zext i1 %cmp5 to i32, !dbg !2501
  store i32 1, ptr %tmp7, align 4, !dbg !2501
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #18, !dbg !2502
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #18, !dbg !2502
  %2 = load i32, ptr %tmp7, align 4, !dbg !2501
  %3 = load i64, ptr %_flags, align 8, !dbg !2502
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #19, !dbg !2502
  store i32 %call9, ptr %tmp8, align 4, !dbg !2502
  %4 = load i32, ptr %tmp8, align 4, !dbg !2502
  store i32 %4, ptr %tmp1, align 4, !dbg !2500
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #18, !dbg !2503
  %5 = load i32, ptr %tmp1, align 4, !dbg !2498
  %tobool = icmp ne i32 %5, 0, !dbg !2503
  %6 = zext i1 %tobool to i64, !dbg !2503
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !2503
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #20, !dbg !2504
  ret ptr %call10, !dbg !2505
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_evaluate_integer(ptr noundef %handle, ptr noundef %pathname, ptr noundef %arguments, ptr noundef %data) #0 align 16 !dbg !2506 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %pathname.addr = alloca ptr, align 8
  %arguments.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %element = alloca %union.acpi_object, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2517, metadata !DIExpression()), !dbg !2524
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !2518, metadata !DIExpression()), !dbg !2525
  store ptr %arguments, ptr %arguments.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arguments.addr, metadata !2519, metadata !DIExpression()), !dbg !2526
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2520, metadata !DIExpression()), !dbg !2527
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #18, !dbg !2528
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2521, metadata !DIExpression()), !dbg !2529
  store i32 0, ptr %status, align 4, !dbg !2529
  call void @llvm.lifetime.start.p0(i64 24, ptr %element) #18, !dbg !2530
  call void @llvm.dbg.declare(metadata ptr %element, metadata !2522, metadata !DIExpression()), !dbg !2531
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #18, !dbg !2532
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2523, metadata !DIExpression()), !dbg !2533
  call void @llvm.memset.p0.i64(ptr align 8 %buffer, i8 0, i64 16, i1 false), !dbg !2533
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2534
  %tobool = icmp ne ptr %0, null, !dbg !2534
  br i1 %tobool, label %if.end, label %if.then, !dbg !2536

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !2537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2537

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 0, !dbg !2538
  store i64 24, ptr %length, align 8, !dbg !2539
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !2540
  store ptr %element, ptr %pointer, align 8, !dbg !2541
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !2542
  %2 = load ptr, ptr %pathname.addr, align 8, !dbg !2543
  %3 = load ptr, ptr %arguments.addr, align 8, !dbg !2544
  %call = call i32 @acpi_evaluate_object(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %buffer) #19, !dbg !2545
  store i32 %call, ptr %status, align 4, !dbg !2546
  %4 = load i32, ptr %status, align 4, !dbg !2547
  %tobool1 = icmp ne i32 %4, 0, !dbg !2547
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2549

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %handle.addr, align 8, !dbg !2550
  %6 = load ptr, ptr %pathname.addr, align 8, !dbg !2552
  %7 = load i32, ptr %status, align 4, !dbg !2553
  call void @acpi_util_eval_error(ptr noundef %5, ptr noundef %6, i32 noundef %7) #19, !dbg !2554
  %8 = load i32, ptr %status, align 4, !dbg !2555
  store i32 %8, ptr %retval, align 4, !dbg !2556
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2556

if.end3:                                          ; preds = %if.end
  %9 = load i32, ptr %element, align 8, !dbg !2557
  %cmp = icmp ne i32 %9, 1, !dbg !2559
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !2560

if.then4:                                         ; preds = %if.end3
  %10 = load ptr, ptr %handle.addr, align 8, !dbg !2561
  %11 = load ptr, ptr %pathname.addr, align 8, !dbg !2563
  call void @acpi_util_eval_error(ptr noundef %10, ptr noundef %11, i32 noundef 4100) #19, !dbg !2564
  store i32 4100, ptr %retval, align 4, !dbg !2565
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2565

if.end5:                                          ; preds = %if.end3
  %value = getelementptr inbounds %struct.anon, ptr %element, i32 0, i32 1, !dbg !2566
  %12 = load i64, ptr %value, align 8, !dbg !2566
  %13 = load ptr, ptr %data.addr, align 8, !dbg !2567
  store i64 %12, ptr %13, align 8, !dbg !2568
  store i32 0, ptr %tmp, align 4, !dbg !2569
  %14 = load i32, ptr %tmp, align 4, !dbg !2572
  store i32 0, ptr %retval, align 4, !dbg !2573
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2573

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #18, !dbg !2574
  call void @llvm.lifetime.end.p0(i64 24, ptr %element) #18, !dbg !2574
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #18, !dbg !2574
  %15 = load i32, ptr %retval, align 4, !dbg !2574
  ret i32 %15, !dbg !2574
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2575 dso_local i32 @acpi_evaluate_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_util_eval_error(ptr noundef %h, ptr noundef %p, i32 noundef %s) #0 align 16 !dbg !2579 {
entry:
  %h.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %s.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !2583, metadata !DIExpression()), !dbg !2586
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2584, metadata !DIExpression()), !dbg !2587
  store i32 %s, ptr %s.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2585, metadata !DIExpression()), !dbg !2588
  store i32 0, ptr %tmp, align 4, !dbg !2589
  %0 = load i32, ptr %tmp, align 4, !dbg !2592
  ret void, !dbg !2593
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_local_address(ptr noundef %handle, ptr noundef %addr) #0 align 16 !dbg !2594 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %adr = alloca i64, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2599, metadata !DIExpression()), !dbg !2603
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2600, metadata !DIExpression()), !dbg !2604
  call void @llvm.lifetime.start.p0(i64 8, ptr %adr) #18, !dbg !2605
  call void @llvm.dbg.declare(metadata ptr %adr, metadata !2601, metadata !DIExpression()), !dbg !2606
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #18, !dbg !2607
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2602, metadata !DIExpression()), !dbg !2608
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !2609
  %call = call i32 @acpi_evaluate_integer(ptr noundef %0, ptr noundef @.str, ptr noundef null, ptr noundef %adr) #19, !dbg !2610
  store i32 %call, ptr %status, align 4, !dbg !2611
  %1 = load i32, ptr %status, align 4, !dbg !2612
  %tobool = icmp ne i32 %1, 0, !dbg !2612
  br i1 %tobool, label %if.then, label %if.end, !dbg !2614

if.then:                                          ; preds = %entry
  store i32 -61, ptr %retval, align 4, !dbg !2615
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2615

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %adr, align 8, !dbg !2616
  %conv = trunc i64 %2 to i32, !dbg !2617
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2618
  store i32 %conv, ptr %3, align 4, !dbg !2619
  store i32 0, ptr %retval, align 4, !dbg !2620
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2620

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #18, !dbg !2621
  call void @llvm.lifetime.end.p0(i64 8, ptr %adr) #18, !dbg !2621
  %4 = load i32, ptr %retval, align 4, !dbg !2621
  ret i32 %4, !dbg !2621
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_get_subsystem_id(ptr noundef %handle) #0 align 16 !dbg !2622 {
entry:
  %retval = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %obj = alloca ptr, align 8
  %status = alloca i32, align 4
  %sub = alloca ptr, align 8
  %len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2626, metadata !DIExpression()), !dbg !2632
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #18, !dbg !2633
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2627, metadata !DIExpression()), !dbg !2634
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @__const.acpi_get_subsystem_id.buffer, i64 16, i1 false), !dbg !2634
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #18, !dbg !2635
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !2628, metadata !DIExpression()), !dbg !2636
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #18, !dbg !2637
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2629, metadata !DIExpression()), !dbg !2638
  call void @llvm.lifetime.start.p0(i64 8, ptr %sub) #18, !dbg !2639
  call void @llvm.dbg.declare(metadata ptr %sub, metadata !2630, metadata !DIExpression()), !dbg !2640
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #18, !dbg !2641
  call void @llvm.dbg.declare(metadata ptr %len, metadata !2631, metadata !DIExpression()), !dbg !2642
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !2643
  %call = call i32 @acpi_evaluate_object(ptr noundef %0, ptr noundef @.str.1, ptr noundef null, ptr noundef %buffer) #19, !dbg !2644
  store i32 %call, ptr %status, align 4, !dbg !2645
  %1 = load i32, ptr %status, align 4, !dbg !2646
  %tobool = icmp ne i32 %1, 0, !dbg !2646
  br i1 %tobool, label %if.then, label %if.end, !dbg !2648

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !2649
  %2 = load i32, ptr %tmp, align 4, !dbg !2653
  %call1 = call ptr @ERR_PTR(i64 noundef -61) #19, !dbg !2654
  store ptr %call1, ptr %retval, align 8, !dbg !2655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2655

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !2656
  %3 = load ptr, ptr %pointer, align 8, !dbg !2656
  store ptr %3, ptr %obj, align 8, !dbg !2657
  %4 = load ptr, ptr %obj, align 8, !dbg !2658
  %5 = load i32, ptr %4, align 8, !dbg !2660
  %cmp = icmp eq i32 %5, 2, !dbg !2661
  br i1 %cmp, label %if.then2, label %if.else16, !dbg !2662

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %obj, align 8, !dbg !2663
  %pointer3 = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 2, !dbg !2665
  %7 = load ptr, ptr %pointer3, align 8, !dbg !2665
  %call4 = call i64 @strlen(ptr noundef %7) #19, !dbg !2666
  store i64 %call4, ptr %len, align 8, !dbg !2667
  %8 = load i64, ptr %len, align 8, !dbg !2668
  %cmp5 = icmp ult i64 %8, 9, !dbg !2670
  br i1 %cmp5, label %land.lhs.true, label %if.else, !dbg !2671

land.lhs.true:                                    ; preds = %if.then2
  %9 = load i64, ptr %len, align 8, !dbg !2672
  %cmp6 = icmp ugt i64 %9, 0, !dbg !2673
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !2674

if.then7:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %obj, align 8, !dbg !2675
  %pointer8 = getelementptr inbounds %struct.anon.0, ptr %10, i32 0, i32 2, !dbg !2677
  %11 = load ptr, ptr %pointer8, align 8, !dbg !2677
  %call9 = call noalias ptr @kstrdup(ptr noundef %11, i32 noundef 3264) #19, !dbg !2678
  store ptr %call9, ptr %sub, align 8, !dbg !2679
  %12 = load ptr, ptr %sub, align 8, !dbg !2680
  %tobool10 = icmp ne ptr %12, null, !dbg !2680
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !2682

if.then11:                                        ; preds = %if.then7
  %call12 = call ptr @ERR_PTR(i64 noundef -12) #19, !dbg !2683
  store ptr %call12, ptr %sub, align 8, !dbg !2684
  br label %if.end13, !dbg !2685

if.end13:                                         ; preds = %if.then11, %if.then7
  br label %if.end15, !dbg !2686

if.else:                                          ; preds = %land.lhs.true, %if.then2
  %13 = load ptr, ptr %handle.addr, align 8, !dbg !2687
  %14 = load i64, ptr %len, align 8, !dbg !2687
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.2, ptr noundef %13, ptr noundef @.str.3, i64 noundef %14) #19, !dbg !2687
  %call14 = call ptr @ERR_PTR(i64 noundef -61) #19, !dbg !2689
  store ptr %call14, ptr %sub, align 8, !dbg !2690
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end13
  br label %if.end18, !dbg !2691

if.else16:                                        ; preds = %if.end
  %15 = load ptr, ptr %handle.addr, align 8, !dbg !2692
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.4, ptr noundef %15, ptr noundef @.str.5) #19, !dbg !2692
  %call17 = call ptr @ERR_PTR(i64 noundef -61) #19, !dbg !2694
  store ptr %call17, ptr %sub, align 8, !dbg !2695
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.end15
  %pointer19 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !2696
  %16 = load ptr, ptr %pointer19, align 8, !dbg !2696
  call void @acpi_os_free(ptr noundef %16) #19, !dbg !2697
  %17 = load ptr, ptr %sub, align 8, !dbg !2698
  store ptr %17, ptr %retval, align 8, !dbg !2699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2699

cleanup:                                          ; preds = %if.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #18, !dbg !2700
  call void @llvm.lifetime.end.p0(i64 8, ptr %sub) #18, !dbg !2700
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #18, !dbg !2700
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #18, !dbg !2700
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #18, !dbg !2700
  %18 = load ptr, ptr %retval, align 8, !dbg !2700
  ret ptr %18, !dbg !2700
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !2701 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !2706, metadata !DIExpression()), !dbg !2707
  %0 = load i64, ptr %error.addr, align 8, !dbg !2708
  %1 = inttoptr i64 %0 to ptr, !dbg !2709
  ret ptr %1, !dbg !2710
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2711 dso_local i64 @strlen(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2715 dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_handle_printk(ptr noundef %level, ptr noundef %handle, ptr noundef %fmt, ...) #0 align 16 !dbg !2718 {
entry:
  %level.addr = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %vaf = alloca %struct.va_format, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %path = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %level, ptr %level.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !2722, metadata !DIExpression()), !dbg !2746
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2723, metadata !DIExpression()), !dbg !2747
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !2724, metadata !DIExpression()), !dbg !2748
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaf) #18, !dbg !2749
  call void @llvm.dbg.declare(metadata ptr %vaf, metadata !2725, metadata !DIExpression()), !dbg !2750
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #18, !dbg !2751
  call void @llvm.dbg.declare(metadata ptr %args, metadata !2744, metadata !DIExpression()), !dbg !2752
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #18, !dbg !2753
  call void @llvm.dbg.declare(metadata ptr %path, metadata !2745, metadata !DIExpression()), !dbg !2754
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !2755
  call void @llvm.va_start(ptr %arraydecay), !dbg !2755
  %0 = load ptr, ptr %fmt.addr, align 8, !dbg !2756
  %fmt1 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 0, !dbg !2757
  store ptr %0, ptr %fmt1, align 8, !dbg !2758
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1, !dbg !2759
  store ptr %args, ptr %va, align 8, !dbg !2760
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !2761
  %call = call ptr @acpi_handle_path(ptr noundef %1) #19, !dbg !2762
  store ptr %call, ptr %path, align 8, !dbg !2763
  br label %do.body, !dbg !2764

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2766

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2766

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %level.addr, align 8, !dbg !2764
  %3 = load ptr, ptr %path, align 8, !dbg !2764
  %tobool = icmp ne ptr %3, null, !dbg !2764
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2764

cond.true:                                        ; preds = %do.end
  %4 = load ptr, ptr %path, align 8, !dbg !2764
  br label %cond.end, !dbg !2764

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !2764

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ @.str.9, %cond.false ], !dbg !2764
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, ptr noundef %2, ptr noundef %cond, ptr noundef %vaf) #21, !dbg !2764
  store i32 %call2, ptr %tmp, align 4, !dbg !2766
  %5 = load i32, ptr %tmp, align 4, !dbg !2764
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !2768
  call void @llvm.va_end(ptr %arraydecay3), !dbg !2768
  %6 = load ptr, ptr %path, align 8, !dbg !2769
  call void @kfree(ptr noundef %6) #19, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #18, !dbg !2771
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #18, !dbg !2771
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaf) #18, !dbg !2771
  ret void, !dbg !2771
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #3 align 16 !dbg !2772 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !2774, metadata !DIExpression()), !dbg !2775
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !2776
  call void @kfree(ptr noundef %0) #19, !dbg !2777
  ret void, !dbg !2778
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_evaluate_reference(ptr noundef %handle, ptr noundef %pathname, ptr noundef %arguments, ptr noundef %list) #0 align 16 !dbg !2779 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %pathname.addr = alloca ptr, align 8
  %arguments.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %package = alloca ptr, align 8
  %element = alloca ptr, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2791, metadata !DIExpression()), !dbg !2801
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !2792, metadata !DIExpression()), !dbg !2802
  store ptr %arguments, ptr %arguments.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arguments.addr, metadata !2793, metadata !DIExpression()), !dbg !2803
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2794, metadata !DIExpression()), !dbg !2804
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #18, !dbg !2805
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2795, metadata !DIExpression()), !dbg !2806
  store i32 0, ptr %status, align 4, !dbg !2806
  call void @llvm.lifetime.start.p0(i64 8, ptr %package) #18, !dbg !2807
  call void @llvm.dbg.declare(metadata ptr %package, metadata !2796, metadata !DIExpression()), !dbg !2808
  store ptr null, ptr %package, align 8, !dbg !2808
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #18, !dbg !2809
  call void @llvm.dbg.declare(metadata ptr %element, metadata !2797, metadata !DIExpression()), !dbg !2810
  store ptr null, ptr %element, align 8, !dbg !2810
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #18, !dbg !2811
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2798, metadata !DIExpression()), !dbg !2812
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @__const.acpi_evaluate_reference.buffer, i64 16, i1 false), !dbg !2812
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !2813
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2799, metadata !DIExpression()), !dbg !2814
  store i32 0, ptr %i, align 4, !dbg !2814
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2815
  %tobool = icmp ne ptr %0, null, !dbg !2815
  br i1 %tobool, label %if.end, label %if.then, !dbg !2817

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !2818
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2818

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !2820
  %2 = load ptr, ptr %pathname.addr, align 8, !dbg !2821
  %3 = load ptr, ptr %arguments.addr, align 8, !dbg !2822
  %call = call i32 @acpi_evaluate_object(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %buffer) #19, !dbg !2823
  store i32 %call, ptr %status, align 4, !dbg !2824
  %4 = load i32, ptr %status, align 4, !dbg !2825
  %tobool1 = icmp ne i32 %4, 0, !dbg !2825
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2827

if.then2:                                         ; preds = %if.end
  br label %end, !dbg !2828

if.end3:                                          ; preds = %if.end
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !2829
  %5 = load ptr, ptr %pointer, align 8, !dbg !2829
  store ptr %5, ptr %package, align 8, !dbg !2830
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 0, !dbg !2831
  %6 = load i64, ptr %length, align 8, !dbg !2831
  %cmp = icmp eq i64 %6, 0, !dbg !2833
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !2834

lor.lhs.false:                                    ; preds = %if.end3
  %7 = load ptr, ptr %package, align 8, !dbg !2835
  %tobool4 = icmp ne ptr %7, null, !dbg !2835
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2836

if.then5:                                         ; preds = %lor.lhs.false, %if.end3
  store i32 4100, ptr %status, align 4, !dbg !2837
  %8 = load ptr, ptr %handle.addr, align 8, !dbg !2839
  %9 = load ptr, ptr %pathname.addr, align 8, !dbg !2840
  %10 = load i32, ptr %status, align 4, !dbg !2841
  call void @acpi_util_eval_error(ptr noundef %8, ptr noundef %9, i32 noundef %10) #19, !dbg !2842
  br label %end, !dbg !2843

if.end6:                                          ; preds = %lor.lhs.false
  %11 = load ptr, ptr %package, align 8, !dbg !2844
  %12 = load i32, ptr %11, align 8, !dbg !2846
  %cmp7 = icmp ne i32 %12, 4, !dbg !2847
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2848

if.then8:                                         ; preds = %if.end6
  store i32 4100, ptr %status, align 4, !dbg !2849
  %13 = load ptr, ptr %handle.addr, align 8, !dbg !2851
  %14 = load ptr, ptr %pathname.addr, align 8, !dbg !2852
  %15 = load i32, ptr %status, align 4, !dbg !2853
  call void @acpi_util_eval_error(ptr noundef %13, ptr noundef %14, i32 noundef %15) #19, !dbg !2854
  br label %end, !dbg !2855

if.end9:                                          ; preds = %if.end6
  %16 = load ptr, ptr %package, align 8, !dbg !2856
  %count = getelementptr inbounds %struct.anon.2, ptr %16, i32 0, i32 1, !dbg !2858
  %17 = load i32, ptr %count, align 4, !dbg !2858
  %tobool10 = icmp ne i32 %17, 0, !dbg !2856
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !2859

if.then11:                                        ; preds = %if.end9
  store i32 4100, ptr %status, align 4, !dbg !2860
  %18 = load ptr, ptr %handle.addr, align 8, !dbg !2862
  %19 = load ptr, ptr %pathname.addr, align 8, !dbg !2863
  %20 = load i32, ptr %status, align 4, !dbg !2864
  call void @acpi_util_eval_error(ptr noundef %18, ptr noundef %19, i32 noundef %20) #19, !dbg !2865
  br label %end, !dbg !2866

if.end12:                                         ; preds = %if.end9
  %21 = load ptr, ptr %package, align 8, !dbg !2867
  %count13 = getelementptr inbounds %struct.anon.2, ptr %21, i32 0, i32 1, !dbg !2869
  %22 = load i32, ptr %count13, align 4, !dbg !2869
  %cmp14 = icmp ugt i32 %22, 10, !dbg !2870
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !2871

if.then15:                                        ; preds = %if.end12
  %23 = load ptr, ptr %package, align 8, !dbg !2872
  call void @kfree(ptr noundef %23) #19, !dbg !2874
  store i32 4, ptr %retval, align 4, !dbg !2875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2875

if.end16:                                         ; preds = %if.end12
  %24 = load ptr, ptr %package, align 8, !dbg !2876
  %count17 = getelementptr inbounds %struct.anon.2, ptr %24, i32 0, i32 1, !dbg !2877
  %25 = load i32, ptr %count17, align 4, !dbg !2877
  %26 = load ptr, ptr %list.addr, align 8, !dbg !2878
  %count18 = getelementptr inbounds %struct.acpi_handle_list, ptr %26, i32 0, i32 0, !dbg !2879
  store i32 %25, ptr %count18, align 8, !dbg !2880
  store i32 0, ptr %i, align 4, !dbg !2881
  br label %for.cond, !dbg !2883

for.cond:                                         ; preds = %for.inc, %if.end16
  %27 = load i32, ptr %i, align 4, !dbg !2884
  %28 = load ptr, ptr %list.addr, align 8, !dbg !2886
  %count19 = getelementptr inbounds %struct.acpi_handle_list, ptr %28, i32 0, i32 0, !dbg !2887
  %29 = load i32, ptr %count19, align 8, !dbg !2887
  %cmp20 = icmp ult i32 %27, %29, !dbg !2888
  br i1 %cmp20, label %for.body, label %for.end, !dbg !2889

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %package, align 8, !dbg !2890
  %elements = getelementptr inbounds %struct.anon.2, ptr %30, i32 0, i32 2, !dbg !2892
  %31 = load ptr, ptr %elements, align 8, !dbg !2892
  %32 = load i32, ptr %i, align 4, !dbg !2893
  %idxprom = zext i32 %32 to i64, !dbg !2890
  %arrayidx = getelementptr %union.acpi_object, ptr %31, i64 %idxprom, !dbg !2890
  store ptr %arrayidx, ptr %element, align 8, !dbg !2894
  %33 = load ptr, ptr %element, align 8, !dbg !2895
  %34 = load i32, ptr %33, align 8, !dbg !2897
  %cmp21 = icmp ne i32 %34, 20, !dbg !2898
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2899

if.then22:                                        ; preds = %for.body
  store i32 4100, ptr %status, align 4, !dbg !2900
  %35 = load ptr, ptr %handle.addr, align 8, !dbg !2902
  %36 = load ptr, ptr %pathname.addr, align 8, !dbg !2903
  %37 = load i32, ptr %status, align 4, !dbg !2904
  call void @acpi_util_eval_error(ptr noundef %35, ptr noundef %36, i32 noundef %37) #19, !dbg !2905
  br label %for.end, !dbg !2906

if.end23:                                         ; preds = %for.body
  %38 = load ptr, ptr %element, align 8, !dbg !2907
  %handle24 = getelementptr inbounds %struct.anon.3, ptr %38, i32 0, i32 2, !dbg !2909
  %39 = load ptr, ptr %handle24, align 8, !dbg !2909
  %tobool25 = icmp ne ptr %39, null, !dbg !2907
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !2910

if.then26:                                        ; preds = %if.end23
  store i32 10, ptr %status, align 4, !dbg !2911
  %40 = load ptr, ptr %handle.addr, align 8, !dbg !2913
  %41 = load ptr, ptr %pathname.addr, align 8, !dbg !2914
  %42 = load i32, ptr %status, align 4, !dbg !2915
  call void @acpi_util_eval_error(ptr noundef %40, ptr noundef %41, i32 noundef %42) #19, !dbg !2916
  br label %for.end, !dbg !2917

if.end27:                                         ; preds = %if.end23
  %43 = load ptr, ptr %element, align 8, !dbg !2918
  %handle28 = getelementptr inbounds %struct.anon.3, ptr %43, i32 0, i32 2, !dbg !2919
  %44 = load ptr, ptr %handle28, align 8, !dbg !2919
  %45 = load ptr, ptr %list.addr, align 8, !dbg !2920
  %handles = getelementptr inbounds %struct.acpi_handle_list, ptr %45, i32 0, i32 1, !dbg !2921
  %46 = load i32, ptr %i, align 4, !dbg !2922
  %idxprom29 = zext i32 %46 to i64, !dbg !2920
  %arrayidx30 = getelementptr [10 x ptr], ptr %handles, i64 0, i64 %idxprom29, !dbg !2920
  store ptr %44, ptr %arrayidx30, align 8, !dbg !2923
  store i32 0, ptr %tmp, align 4, !dbg !2924
  %47 = load i32, ptr %tmp, align 4, !dbg !2927
  br label %for.inc, !dbg !2928

for.inc:                                          ; preds = %if.end27
  %48 = load i32, ptr %i, align 4, !dbg !2929
  %inc = add i32 %48, 1, !dbg !2929
  store i32 %inc, ptr %i, align 4, !dbg !2929
  br label %for.cond, !dbg !2930, !llvm.loop !2931

for.end:                                          ; preds = %if.then26, %if.then22, %for.cond
  br label %end, !dbg !2932

end:                                              ; preds = %for.end, %if.then11, %if.then8, %if.then5, %if.then2
  call void @llvm.dbg.label(metadata !2800), !dbg !2933
  %49 = load i32, ptr %status, align 4, !dbg !2934
  %tobool31 = icmp ne i32 %49, 0, !dbg !2934
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !2936

if.then32:                                        ; preds = %end
  %50 = load ptr, ptr %list.addr, align 8, !dbg !2937
  %count33 = getelementptr inbounds %struct.acpi_handle_list, ptr %50, i32 0, i32 0, !dbg !2939
  store i32 0, ptr %count33, align 8, !dbg !2940
  br label %if.end34, !dbg !2941

if.end34:                                         ; preds = %if.then32, %end
  %pointer35 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !2942
  %51 = load ptr, ptr %pointer35, align 8, !dbg !2942
  call void @kfree(ptr noundef %51) #19, !dbg !2943
  %52 = load i32, ptr %status, align 4, !dbg !2944
  store i32 %52, ptr %retval, align 4, !dbg !2945
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2945

cleanup:                                          ; preds = %if.end34, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !2946
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #18, !dbg !2946
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #18, !dbg !2946
  call void @llvm.lifetime.end.p0(i64 8, ptr %package) #18, !dbg !2946
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #18, !dbg !2946
  %53 = load i32, ptr %retval, align 4, !dbg !2946
  ret i32 %53, !dbg !2946
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2947 dso_local void @kfree(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_physical_device_location(ptr noundef %handle, ptr noundef %pld) #0 align 16 !dbg !2950 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %pld.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  %output = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2987, metadata !DIExpression()), !dbg !2993
  store ptr %pld, ptr %pld.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pld.addr, metadata !2988, metadata !DIExpression()), !dbg !2994
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #18, !dbg !2995
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2989, metadata !DIExpression()), !dbg !2996
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #18, !dbg !2997
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2990, metadata !DIExpression()), !dbg !2998
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @__const.acpi_get_physical_device_location.buffer, i64 16, i1 false), !dbg !2998
  call void @llvm.lifetime.start.p0(i64 8, ptr %output) #18, !dbg !2999
  call void @llvm.dbg.declare(metadata ptr %output, metadata !2991, metadata !DIExpression()), !dbg !3000
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !3001
  %call = call i32 @acpi_evaluate_object(ptr noundef %0, ptr noundef @.str.6, ptr noundef null, ptr noundef %buffer) #19, !dbg !3002
  store i32 %call, ptr %status, align 4, !dbg !3003
  %1 = load i32, ptr %status, align 4, !dbg !3004
  %tobool = icmp ne i32 %1, 0, !dbg !3004
  br i1 %tobool, label %if.then, label %if.end, !dbg !3006

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !3007
  store i32 %2, ptr %retval, align 4, !dbg !3008
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3008

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !3009
  %3 = load ptr, ptr %pointer, align 8, !dbg !3009
  store ptr %3, ptr %output, align 8, !dbg !3010
  %4 = load ptr, ptr %output, align 8, !dbg !3011
  %tobool1 = icmp ne ptr %4, null, !dbg !3011
  br i1 %tobool1, label %lor.lhs.false, label %if.then10, !dbg !3013

lor.lhs.false:                                    ; preds = %if.end
  %5 = load ptr, ptr %output, align 8, !dbg !3014
  %6 = load i32, ptr %5, align 8, !dbg !3015
  %cmp = icmp ne i32 %6, 4, !dbg !3016
  br i1 %cmp, label %if.then10, label %lor.lhs.false2, !dbg !3017

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %7 = load ptr, ptr %output, align 8, !dbg !3018
  %count = getelementptr inbounds %struct.anon.2, ptr %7, i32 0, i32 1, !dbg !3019
  %8 = load i32, ptr %count, align 4, !dbg !3019
  %tobool3 = icmp ne i32 %8, 0, !dbg !3018
  br i1 %tobool3, label %lor.lhs.false4, label %if.then10, !dbg !3020

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %9 = load ptr, ptr %output, align 8, !dbg !3021
  %elements = getelementptr inbounds %struct.anon.2, ptr %9, i32 0, i32 2, !dbg !3022
  %10 = load ptr, ptr %elements, align 8, !dbg !3022
  %arrayidx = getelementptr %union.acpi_object, ptr %10, i64 0, !dbg !3021
  %11 = load i32, ptr %arrayidx, align 8, !dbg !3023
  %cmp5 = icmp ne i32 %11, 3, !dbg !3024
  br i1 %cmp5, label %if.then10, label %lor.lhs.false6, !dbg !3025

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %12 = load ptr, ptr %output, align 8, !dbg !3026
  %elements7 = getelementptr inbounds %struct.anon.2, ptr %12, i32 0, i32 2, !dbg !3027
  %13 = load ptr, ptr %elements7, align 8, !dbg !3027
  %arrayidx8 = getelementptr %union.acpi_object, ptr %13, i64 0, !dbg !3026
  %length = getelementptr inbounds %struct.anon.1, ptr %arrayidx8, i32 0, i32 1, !dbg !3028
  %14 = load i32, ptr %length, align 4, !dbg !3028
  %cmp9 = icmp ult i32 %14, 16, !dbg !3029
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3030

if.then10:                                        ; preds = %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %if.end
  store i32 8, ptr %status, align 4, !dbg !3031
  br label %out, !dbg !3033

if.end11:                                         ; preds = %lor.lhs.false6
  %15 = load ptr, ptr %output, align 8, !dbg !3034
  %elements12 = getelementptr inbounds %struct.anon.2, ptr %15, i32 0, i32 2, !dbg !3035
  %16 = load ptr, ptr %elements12, align 8, !dbg !3035
  %arrayidx13 = getelementptr %union.acpi_object, ptr %16, i64 0, !dbg !3034
  %pointer14 = getelementptr inbounds %struct.anon.1, ptr %arrayidx13, i32 0, i32 2, !dbg !3036
  %17 = load ptr, ptr %pointer14, align 8, !dbg !3036
  %18 = load ptr, ptr %output, align 8, !dbg !3037
  %elements15 = getelementptr inbounds %struct.anon.2, ptr %18, i32 0, i32 2, !dbg !3038
  %19 = load ptr, ptr %elements15, align 8, !dbg !3038
  %arrayidx16 = getelementptr %union.acpi_object, ptr %19, i64 0, !dbg !3037
  %length17 = getelementptr inbounds %struct.anon.1, ptr %arrayidx16, i32 0, i32 1, !dbg !3039
  %20 = load i32, ptr %length17, align 4, !dbg !3039
  %conv = zext i32 %20 to i64, !dbg !3037
  %21 = load ptr, ptr %pld.addr, align 8, !dbg !3040
  %call18 = call i32 @acpi_decode_pld_buffer(ptr noundef %17, i64 noundef %conv, ptr noundef %21) #19, !dbg !3041
  store i32 %call18, ptr %status, align 4, !dbg !3042
  br label %out, !dbg !3043

out:                                              ; preds = %if.end11, %if.then10
  call void @llvm.dbg.label(metadata !2992), !dbg !3044
  %pointer19 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !3045
  %22 = load ptr, ptr %pointer19, align 8, !dbg !3045
  call void @kfree(ptr noundef %22) #19, !dbg !3046
  %23 = load i32, ptr %status, align 4, !dbg !3047
  store i32 %23, ptr %retval, align 4, !dbg !3048
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3048

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %output) #18, !dbg !3049
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #18, !dbg !3049
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #18, !dbg !3049
  %24 = load i32, ptr %retval, align 4, !dbg !3049
  ret i32 %24, !dbg !3049
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3050 dso_local i32 @acpi_decode_pld_buffer(ptr noundef, i64 noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_evaluate_ost(ptr noundef %handle, i32 noundef %source_event, i32 noundef %status_code, ptr noundef %status_buf) #0 align 16 !dbg !3053 {
entry:
  %handle.addr = alloca ptr, align 8
  %source_event.addr = alloca i32, align 4
  %status_code.addr = alloca i32, align 4
  %status_buf.addr = alloca ptr, align 8
  %params = alloca [3 x %union.acpi_object], align 16
  %arg_list = alloca %struct.acpi_object_list, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !3057, metadata !DIExpression()), !dbg !3064
  store i32 %source_event, ptr %source_event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %source_event.addr, metadata !3058, metadata !DIExpression()), !dbg !3065
  store i32 %status_code, ptr %status_code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status_code.addr, metadata !3059, metadata !DIExpression()), !dbg !3066
  store ptr %status_buf, ptr %status_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status_buf.addr, metadata !3060, metadata !DIExpression()), !dbg !3067
  call void @llvm.lifetime.start.p0(i64 72, ptr %params) #18, !dbg !3068
  call void @llvm.dbg.declare(metadata ptr %params, metadata !3061, metadata !DIExpression()), !dbg !3069
  call void @llvm.memset.p0.i64(ptr align 16 %params, i8 0, i64 72, i1 false), !dbg !3069
  %0 = getelementptr inbounds [3 x { i32, [20 x i8] }], ptr %params, i32 0, i32 0, !dbg !3069
  %1 = getelementptr inbounds { i32, [20 x i8] }, ptr %0, i32 0, i32 0, !dbg !3069
  store i32 1, ptr %1, align 16, !dbg !3069
  %2 = getelementptr inbounds [3 x { i32, [20 x i8] }], ptr %params, i32 0, i32 1, !dbg !3069
  %3 = getelementptr inbounds { i32, [20 x i8] }, ptr %2, i32 0, i32 0, !dbg !3069
  store i32 1, ptr %3, align 8, !dbg !3069
  %4 = getelementptr inbounds [3 x { i32, [20 x i8] }], ptr %params, i32 0, i32 2, !dbg !3069
  %5 = getelementptr inbounds { i32, [20 x i8] }, ptr %4, i32 0, i32 0, !dbg !3069
  store i32 3, ptr %5, align 16, !dbg !3069
  call void @llvm.lifetime.start.p0(i64 16, ptr %arg_list) #18, !dbg !3070
  call void @llvm.dbg.declare(metadata ptr %arg_list, metadata !3063, metadata !DIExpression()), !dbg !3071
  %count = getelementptr inbounds %struct.acpi_object_list, ptr %arg_list, i32 0, i32 0, !dbg !3072
  store i32 3, ptr %count, align 8, !dbg !3072
  %pointer = getelementptr inbounds %struct.acpi_object_list, ptr %arg_list, i32 0, i32 1, !dbg !3072
  %arraydecay = getelementptr inbounds [3 x %union.acpi_object], ptr %params, i64 0, i64 0, !dbg !3073
  store ptr %arraydecay, ptr %pointer, align 8, !dbg !3072
  %6 = load i32, ptr %source_event.addr, align 4, !dbg !3074
  %conv = zext i32 %6 to i64, !dbg !3074
  %arrayidx = getelementptr [3 x %union.acpi_object], ptr %params, i64 0, i64 0, !dbg !3075
  %value = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 1, !dbg !3076
  store i64 %conv, ptr %value, align 8, !dbg !3077
  %7 = load i32, ptr %status_code.addr, align 4, !dbg !3078
  %conv1 = zext i32 %7 to i64, !dbg !3078
  %arrayidx2 = getelementptr [3 x %union.acpi_object], ptr %params, i64 0, i64 1, !dbg !3079
  %value3 = getelementptr inbounds %struct.anon, ptr %arrayidx2, i32 0, i32 1, !dbg !3080
  store i64 %conv1, ptr %value3, align 8, !dbg !3081
  %8 = load ptr, ptr %status_buf.addr, align 8, !dbg !3082
  %cmp = icmp ne ptr %8, null, !dbg !3084
  br i1 %cmp, label %if.then, label %if.else, !dbg !3085

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %status_buf.addr, align 8, !dbg !3086
  %pointer5 = getelementptr inbounds %struct.acpi_buffer, ptr %9, i32 0, i32 1, !dbg !3088
  %10 = load ptr, ptr %pointer5, align 8, !dbg !3088
  %arrayidx6 = getelementptr [3 x %union.acpi_object], ptr %params, i64 0, i64 2, !dbg !3089
  %pointer7 = getelementptr inbounds %struct.anon.1, ptr %arrayidx6, i32 0, i32 2, !dbg !3090
  store ptr %10, ptr %pointer7, align 8, !dbg !3091
  %11 = load ptr, ptr %status_buf.addr, align 8, !dbg !3092
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %11, i32 0, i32 0, !dbg !3093
  %12 = load i64, ptr %length, align 8, !dbg !3093
  %conv8 = trunc i64 %12 to i32, !dbg !3092
  %arrayidx9 = getelementptr [3 x %union.acpi_object], ptr %params, i64 0, i64 2, !dbg !3094
  %length10 = getelementptr inbounds %struct.anon.1, ptr %arrayidx9, i32 0, i32 1, !dbg !3095
  store i32 %conv8, ptr %length10, align 4, !dbg !3096
  br label %if.end, !dbg !3097

if.else:                                          ; preds = %entry
  %arrayidx11 = getelementptr [3 x %union.acpi_object], ptr %params, i64 0, i64 2, !dbg !3098
  %pointer12 = getelementptr inbounds %struct.anon.1, ptr %arrayidx11, i32 0, i32 2, !dbg !3100
  store ptr null, ptr %pointer12, align 8, !dbg !3101
  %arrayidx13 = getelementptr [3 x %union.acpi_object], ptr %params, i64 0, i64 2, !dbg !3102
  %length14 = getelementptr inbounds %struct.anon.1, ptr %arrayidx13, i32 0, i32 1, !dbg !3103
  store i32 0, ptr %length14, align 4, !dbg !3104
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load ptr, ptr %handle.addr, align 8, !dbg !3105
  %call = call i32 @acpi_evaluate_object(ptr noundef %13, ptr noundef @.str.7, ptr noundef %arg_list, ptr noundef null) #19, !dbg !3106
  call void @llvm.lifetime.end.p0(i64 16, ptr %arg_list) #18, !dbg !3107
  call void @llvm.lifetime.end.p0(i64 72, ptr %params) #18, !dbg !3107
  ret i32 %call, !dbg !3108
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_handle_path(ptr noundef %handle) #0 align 16 !dbg !3109 {
entry:
  %retval = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !3113, metadata !DIExpression()), !dbg !3115
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #18, !dbg !3116
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !3114, metadata !DIExpression()), !dbg !3117
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @__const.acpi_handle_path.buffer, i64 16, i1 false), !dbg !3117
  %call = call i32 @preempt_count() #19, !dbg !3118
  %conv = sext i32 %call to i64, !dbg !3118
  %and = and i64 %conv, 16776960, !dbg !3118
  %tobool = icmp ne i64 %and, 0, !dbg !3118
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3120

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !3121
  %call1 = call i32 @acpi_get_name(ptr noundef %0, i32 noundef 0, ptr noundef %buffer) #19, !dbg !3122
  %cmp = icmp ne i32 %call1, 0, !dbg !3123
  br i1 %cmp, label %if.then, label %if.end, !dbg !3124

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !3125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3125

if.end:                                           ; preds = %lor.lhs.false
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !3126
  %1 = load ptr, ptr %pointer, align 8, !dbg !3126
  store ptr %1, ptr %retval, align 8, !dbg !3127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3127

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #18, !dbg !3128
  %2 = load ptr, ptr %retval, align 8, !dbg !3128
  ret ptr %2, !dbg !3128
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3129 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_evaluation_failure_warn(ptr noundef %handle, ptr noundef %name, i32 noundef %status) #0 align 16 !dbg !3132 {
entry:
  %handle.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !3136, metadata !DIExpression()), !dbg !3139
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3137, metadata !DIExpression()), !dbg !3140
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !3138, metadata !DIExpression()), !dbg !3141
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !3142
  %1 = load ptr, ptr %name.addr, align 8, !dbg !3142
  %2 = load i32, ptr %status.addr, align 4, !dbg !3142
  %call = call ptr @acpi_format_exception(i32 noundef %2) #19, !dbg !3142
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.4, ptr noundef %0, ptr noundef @.str.10, ptr noundef %1, ptr noundef %call) #19, !dbg !3142
  ret void, !dbg !3143
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3144 dso_local ptr @acpi_format_exception(i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @acpi_has_method(ptr noundef %handle, ptr noundef %name) #0 align 16 !dbg !3147 {
entry:
  %handle.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !3151, metadata !DIExpression()), !dbg !3154
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3152, metadata !DIExpression()), !dbg !3155
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #18, !dbg !3156
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !3153, metadata !DIExpression()), !dbg !3157
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !3158
  %1 = load ptr, ptr %name.addr, align 8, !dbg !3158
  %call = call i32 @acpi_get_handle(ptr noundef %0, ptr noundef %1, ptr noundef %tmp) #19, !dbg !3158
  %tobool = icmp ne i32 %call, 0, !dbg !3158
  %lnot = xor i1 %tobool, true, !dbg !3158
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #18, !dbg !3159
  ret i1 %lnot, !dbg !3160
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3161 dso_local i32 @acpi_get_handle(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_execute_simple_method(ptr noundef %handle, ptr noundef %method, i64 noundef %arg) #0 align 16 !dbg !3165 {
entry:
  %handle.addr = alloca ptr, align 8
  %method.addr = alloca ptr, align 8
  %arg.addr = alloca i64, align 8
  %obj = alloca %union.acpi_object, align 8
  %arg_list = alloca %struct.acpi_object_list, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !3169, metadata !DIExpression()), !dbg !3174
  store ptr %method, ptr %method.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %method.addr, metadata !3170, metadata !DIExpression()), !dbg !3175
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !3171, metadata !DIExpression()), !dbg !3176
  call void @llvm.lifetime.start.p0(i64 24, ptr %obj) #18, !dbg !3177
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !3172, metadata !DIExpression()), !dbg !3178
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %obj, ptr align 8 @__const.acpi_execute_simple_method.obj, i64 24, i1 false), !dbg !3178
  call void @llvm.lifetime.start.p0(i64 16, ptr %arg_list) #18, !dbg !3179
  call void @llvm.dbg.declare(metadata ptr %arg_list, metadata !3173, metadata !DIExpression()), !dbg !3180
  %count = getelementptr inbounds %struct.acpi_object_list, ptr %arg_list, i32 0, i32 0, !dbg !3181
  store i32 1, ptr %count, align 8, !dbg !3181
  %pointer = getelementptr inbounds %struct.acpi_object_list, ptr %arg_list, i32 0, i32 1, !dbg !3181
  store ptr %obj, ptr %pointer, align 8, !dbg !3181
  %0 = load i64, ptr %arg.addr, align 8, !dbg !3182
  %value = getelementptr inbounds %struct.anon, ptr %obj, i32 0, i32 1, !dbg !3183
  store i64 %0, ptr %value, align 8, !dbg !3184
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !3185
  %2 = load ptr, ptr %method.addr, align 8, !dbg !3186
  %call = call i32 @acpi_evaluate_object(ptr noundef %1, ptr noundef %2, ptr noundef %arg_list, ptr noundef null) #19, !dbg !3187
  call void @llvm.lifetime.end.p0(i64 16, ptr %arg_list) #18, !dbg !3188
  call void @llvm.lifetime.end.p0(i64 24, ptr %obj) #18, !dbg !3188
  ret i32 %call, !dbg !3189
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_evaluate_ej0(ptr noundef %handle) #0 align 16 !dbg !3190 {
entry:
  %handle.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !3194, metadata !DIExpression()), !dbg !3196
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #18, !dbg !3197
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3195, metadata !DIExpression()), !dbg !3198
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !3199
  %call = call i32 @acpi_execute_simple_method(ptr noundef %0, ptr noundef @.str.11, i64 noundef 1) #19, !dbg !3200
  store i32 %call, ptr %status, align 4, !dbg !3201
  %1 = load i32, ptr %status, align 4, !dbg !3202
  %cmp = icmp eq i32 %1, 5, !dbg !3204
  br i1 %cmp, label %if.then, label %if.else, !dbg !3205

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %handle.addr, align 8, !dbg !3206
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.4, ptr noundef %2, ptr noundef @.str.12) #19, !dbg !3206
  br label %if.end2, !dbg !3206

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !3207
  %tobool = icmp ne i32 %3, 0, !dbg !3207
  br i1 %tobool, label %if.then1, label %if.end, !dbg !3209

if.then1:                                         ; preds = %if.else
  %4 = load ptr, ptr %handle.addr, align 8, !dbg !3210
  %5 = load i32, ptr %status, align 4, !dbg !3210
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.4, ptr noundef %4, ptr noundef @.str.13, i32 noundef %5) #19, !dbg !3210
  br label %if.end, !dbg !3210

if.end:                                           ; preds = %if.then1, %if.else
  br label %if.end2

if.end2:                                          ; preds = %if.end, %if.then
  %6 = load i32, ptr %status, align 4, !dbg !3211
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #18, !dbg !3212
  ret i32 %6, !dbg !3213
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_evaluate_lck(ptr noundef %handle, i32 noundef %lock) #0 align 16 !dbg !3214 {
entry:
  %handle.addr = alloca ptr, align 8
  %lock.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !3218, metadata !DIExpression()), !dbg !3221
  store i32 %lock, ptr %lock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3219, metadata !DIExpression()), !dbg !3222
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #18, !dbg !3223
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3220, metadata !DIExpression()), !dbg !3224
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !3225
  %1 = load i32, ptr %lock.addr, align 4, !dbg !3226
  %tobool = icmp ne i32 %1, 0, !dbg !3227
  %lnot = xor i1 %tobool, true, !dbg !3227
  %lnot1 = xor i1 %lnot, true, !dbg !3228
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3228
  %conv = sext i32 %lnot.ext to i64, !dbg !3228
  %call = call i32 @acpi_execute_simple_method(ptr noundef %0, ptr noundef @.str.14, i64 noundef %conv) #19, !dbg !3229
  store i32 %call, ptr %status, align 4, !dbg !3230
  %2 = load i32, ptr %status, align 4, !dbg !3231
  %tobool2 = icmp ne i32 %2, 0, !dbg !3231
  br i1 %tobool2, label %land.lhs.true, label %if.end6, !dbg !3233

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !3234
  %cmp = icmp ne i32 %3, 5, !dbg !3235
  br i1 %cmp, label %if.then, label %if.end6, !dbg !3236

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr %lock.addr, align 4, !dbg !3237
  %tobool4 = icmp ne i32 %4, 0, !dbg !3237
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !3240

if.then5:                                         ; preds = %if.then
  %5 = load ptr, ptr %handle.addr, align 8, !dbg !3241
  %6 = load i32, ptr %status, align 4, !dbg !3241
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.4, ptr noundef %5, ptr noundef @.str.15, i32 noundef %6) #19, !dbg !3241
  br label %if.end, !dbg !3241

if.else:                                          ; preds = %if.then
  %7 = load ptr, ptr %handle.addr, align 8, !dbg !3242
  %8 = load i32, ptr %status, align 4, !dbg !3242
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.4, ptr noundef %7, ptr noundef @.str.16, i32 noundef %8) #19, !dbg !3242
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  br label %if.end6, !dbg !3243

if.end6:                                          ; preds = %if.end, %land.lhs.true, %entry
  %9 = load i32, ptr %status, align 4, !dbg !3244
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #18, !dbg !3245
  ret i32 %9, !dbg !3246
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_evaluate_reg(ptr noundef %handle, i8 noundef zeroext %space_id, i32 noundef %function) #0 align 16 !dbg !3247 {
entry:
  %handle.addr = alloca ptr, align 8
  %space_id.addr = alloca i8, align 1
  %function.addr = alloca i32, align 4
  %arg_list = alloca %struct.acpi_object_list, align 8
  %params = alloca [2 x %union.acpi_object], align 16
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !3251, metadata !DIExpression()), !dbg !3257
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !3252, metadata !DIExpression()), !dbg !3258
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !3253, metadata !DIExpression()), !dbg !3259
  call void @llvm.lifetime.start.p0(i64 16, ptr %arg_list) #18, !dbg !3260
  call void @llvm.dbg.declare(metadata ptr %arg_list, metadata !3254, metadata !DIExpression()), !dbg !3261
  call void @llvm.lifetime.start.p0(i64 48, ptr %params) #18, !dbg !3262
  call void @llvm.dbg.declare(metadata ptr %params, metadata !3255, metadata !DIExpression()), !dbg !3263
  %arrayidx = getelementptr [2 x %union.acpi_object], ptr %params, i64 0, i64 0, !dbg !3264
  store i32 1, ptr %arrayidx, align 16, !dbg !3265
  %0 = load i8, ptr %space_id.addr, align 1, !dbg !3266
  %conv = zext i8 %0 to i64, !dbg !3266
  %arrayidx1 = getelementptr [2 x %union.acpi_object], ptr %params, i64 0, i64 0, !dbg !3267
  %value = getelementptr inbounds %struct.anon, ptr %arrayidx1, i32 0, i32 1, !dbg !3268
  store i64 %conv, ptr %value, align 8, !dbg !3269
  %arrayidx2 = getelementptr [2 x %union.acpi_object], ptr %params, i64 0, i64 1, !dbg !3270
  store i32 1, ptr %arrayidx2, align 8, !dbg !3271
  %1 = load i32, ptr %function.addr, align 4, !dbg !3272
  %conv3 = zext i32 %1 to i64, !dbg !3272
  %arrayidx4 = getelementptr [2 x %union.acpi_object], ptr %params, i64 0, i64 1, !dbg !3273
  %value5 = getelementptr inbounds %struct.anon, ptr %arrayidx4, i32 0, i32 1, !dbg !3274
  store i64 %conv3, ptr %value5, align 8, !dbg !3275
  %count = getelementptr inbounds %struct.acpi_object_list, ptr %arg_list, i32 0, i32 0, !dbg !3276
  store i32 2, ptr %count, align 8, !dbg !3277
  %arraydecay = getelementptr inbounds [2 x %union.acpi_object], ptr %params, i64 0, i64 0, !dbg !3278
  %pointer = getelementptr inbounds %struct.acpi_object_list, ptr %arg_list, i32 0, i32 1, !dbg !3279
  store ptr %arraydecay, ptr %pointer, align 8, !dbg !3280
  %2 = load ptr, ptr %handle.addr, align 8, !dbg !3281
  %call = call i32 @acpi_evaluate_object(ptr noundef %2, ptr noundef @.str.17, ptr noundef %arg_list, ptr noundef null) #19, !dbg !3282
  call void @llvm.lifetime.end.p0(i64 48, ptr %params) #18, !dbg !3283
  call void @llvm.lifetime.end.p0(i64 16, ptr %arg_list) #18, !dbg !3283
  ret i32 %call, !dbg !3284
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_evaluate_dsm(ptr noundef %handle, ptr noundef %guid, i64 noundef %rev, i64 noundef %func, ptr noundef %argv4) #0 align 16 !dbg !3285 {
entry:
  %retval = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %guid.addr = alloca ptr, align 8
  %rev.addr = alloca i64, align 8
  %func.addr = alloca i64, align 8
  %argv4.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %buf = alloca %struct.acpi_buffer, align 8
  %params = alloca [4 x %union.acpi_object], align 16
  %input = alloca %struct.acpi_object_list, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !3296, metadata !DIExpression()), !dbg !3306
  store ptr %guid, ptr %guid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %guid.addr, metadata !3297, metadata !DIExpression()), !dbg !3307
  store i64 %rev, ptr %rev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rev.addr, metadata !3298, metadata !DIExpression()), !dbg !3308
  store i64 %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !3299, metadata !DIExpression()), !dbg !3309
  store ptr %argv4, ptr %argv4.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %argv4.addr, metadata !3300, metadata !DIExpression()), !dbg !3310
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !3311
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3301, metadata !DIExpression()), !dbg !3312
  call void @llvm.lifetime.start.p0(i64 16, ptr %buf) #18, !dbg !3313
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !3302, metadata !DIExpression()), !dbg !3314
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buf, ptr align 8 @__const.acpi_evaluate_dsm.buf, i64 16, i1 false), !dbg !3314
  call void @llvm.lifetime.start.p0(i64 96, ptr %params) #18, !dbg !3315
  call void @llvm.dbg.declare(metadata ptr %params, metadata !3303, metadata !DIExpression()), !dbg !3316
  call void @llvm.lifetime.start.p0(i64 16, ptr %input) #18, !dbg !3317
  call void @llvm.dbg.declare(metadata ptr %input, metadata !3305, metadata !DIExpression()), !dbg !3318
  %count = getelementptr inbounds %struct.acpi_object_list, ptr %input, i32 0, i32 0, !dbg !3319
  store i32 4, ptr %count, align 8, !dbg !3319
  %pointer = getelementptr inbounds %struct.acpi_object_list, ptr %input, i32 0, i32 1, !dbg !3319
  %arraydecay = getelementptr inbounds [4 x %union.acpi_object], ptr %params, i64 0, i64 0, !dbg !3320
  store ptr %arraydecay, ptr %pointer, align 8, !dbg !3319
  %arrayidx = getelementptr [4 x %union.acpi_object], ptr %params, i64 0, i64 0, !dbg !3321
  store i32 3, ptr %arrayidx, align 16, !dbg !3322
  %arrayidx1 = getelementptr [4 x %union.acpi_object], ptr %params, i64 0, i64 0, !dbg !3323
  %length = getelementptr inbounds %struct.anon.1, ptr %arrayidx1, i32 0, i32 1, !dbg !3324
  store i32 16, ptr %length, align 4, !dbg !3325
  %0 = load ptr, ptr %guid.addr, align 8, !dbg !3326
  %arrayidx2 = getelementptr [4 x %union.acpi_object], ptr %params, i64 0, i64 0, !dbg !3327
  %pointer3 = getelementptr inbounds %struct.anon.1, ptr %arrayidx2, i32 0, i32 2, !dbg !3328
  store ptr %0, ptr %pointer3, align 8, !dbg !3329
  %arrayidx4 = getelementptr [4 x %union.acpi_object], ptr %params, i64 0, i64 1, !dbg !3330
  store i32 1, ptr %arrayidx4, align 8, !dbg !3331
  %1 = load i64, ptr %rev.addr, align 8, !dbg !3332
  %arrayidx5 = getelementptr [4 x %union.acpi_object], ptr %params, i64 0, i64 1, !dbg !3333
  %value = getelementptr inbounds %struct.anon, ptr %arrayidx5, i32 0, i32 1, !dbg !3334
  store i64 %1, ptr %value, align 8, !dbg !3335
  %arrayidx6 = getelementptr [4 x %union.acpi_object], ptr %params, i64 0, i64 2, !dbg !3336
  store i32 1, ptr %arrayidx6, align 16, !dbg !3337
  %2 = load i64, ptr %func.addr, align 8, !dbg !3338
  %arrayidx7 = getelementptr [4 x %union.acpi_object], ptr %params, i64 0, i64 2, !dbg !3339
  %value8 = getelementptr inbounds %struct.anon, ptr %arrayidx7, i32 0, i32 1, !dbg !3340
  store i64 %2, ptr %value8, align 8, !dbg !3341
  %3 = load ptr, ptr %argv4.addr, align 8, !dbg !3342
  %tobool = icmp ne ptr %3, null, !dbg !3342
  br i1 %tobool, label %if.then, label %if.else, !dbg !3344

if.then:                                          ; preds = %entry
  %arrayidx9 = getelementptr [4 x %union.acpi_object], ptr %params, i64 0, i64 3, !dbg !3345
  %4 = load ptr, ptr %argv4.addr, align 8, !dbg !3347
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx9, ptr align 8 %4, i64 24, i1 false), !dbg !3348
  br label %if.end, !dbg !3349

if.else:                                          ; preds = %entry
  %arrayidx10 = getelementptr [4 x %union.acpi_object], ptr %params, i64 0, i64 3, !dbg !3350
  store i32 4, ptr %arrayidx10, align 8, !dbg !3352
  %arrayidx11 = getelementptr [4 x %union.acpi_object], ptr %params, i64 0, i64 3, !dbg !3353
  %count12 = getelementptr inbounds %struct.anon.2, ptr %arrayidx11, i32 0, i32 1, !dbg !3354
  store i32 0, ptr %count12, align 4, !dbg !3355
  %arrayidx13 = getelementptr [4 x %union.acpi_object], ptr %params, i64 0, i64 3, !dbg !3356
  %elements = getelementptr inbounds %struct.anon.2, ptr %arrayidx13, i32 0, i32 2, !dbg !3357
  store ptr null, ptr %elements, align 8, !dbg !3358
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %handle.addr, align 8, !dbg !3359
  %call = call i32 @acpi_evaluate_object(ptr noundef %5, ptr noundef @.str.18, ptr noundef %input, ptr noundef %buf) #19, !dbg !3360
  store i32 %call, ptr %ret, align 4, !dbg !3361
  %6 = load i32, ptr %ret, align 4, !dbg !3362
  %tobool14 = icmp ne i32 %6, 0, !dbg !3362
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !3364

if.then15:                                        ; preds = %if.end
  %pointer16 = getelementptr inbounds %struct.acpi_buffer, ptr %buf, i32 0, i32 1, !dbg !3365
  %7 = load ptr, ptr %pointer16, align 8, !dbg !3365
  store ptr %7, ptr %retval, align 8, !dbg !3366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3366

if.end17:                                         ; preds = %if.end
  %8 = load i32, ptr %ret, align 4, !dbg !3367
  %cmp = icmp ne i32 %8, 5, !dbg !3369
  br i1 %cmp, label %if.then18, label %if.end19, !dbg !3370

if.then18:                                        ; preds = %if.end17
  %9 = load ptr, ptr %handle.addr, align 8, !dbg !3371
  %10 = load ptr, ptr %guid.addr, align 8, !dbg !3371
  %11 = load i32, ptr %ret, align 4, !dbg !3371
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.4, ptr noundef %9, ptr noundef @.str.19, ptr noundef %10, i32 noundef %11) #19, !dbg !3371
  br label %if.end19, !dbg !3371

if.end19:                                         ; preds = %if.then18, %if.end17
  store ptr null, ptr %retval, align 8, !dbg !3372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3372

cleanup:                                          ; preds = %if.end19, %if.then15
  call void @llvm.lifetime.end.p0(i64 16, ptr %input) #18, !dbg !3373
  call void @llvm.lifetime.end.p0(i64 96, ptr %params) #18, !dbg !3373
  call void @llvm.lifetime.end.p0(i64 16, ptr %buf) #18, !dbg !3373
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !3373
  %12 = load ptr, ptr %retval, align 8, !dbg !3373
  ret ptr %12, !dbg !3373
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @acpi_check_dsm(ptr noundef %handle, ptr noundef %guid, i64 noundef %rev, i64 noundef %funcs) #0 align 16 !dbg !3374 {
entry:
  %retval = alloca i1, align 1
  %handle.addr = alloca ptr, align 8
  %guid.addr = alloca ptr, align 8
  %rev.addr = alloca i64, align 8
  %funcs.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %mask = alloca i64, align 8
  %obj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !3378, metadata !DIExpression()), !dbg !3385
  store ptr %guid, ptr %guid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %guid.addr, metadata !3379, metadata !DIExpression()), !dbg !3386
  store i64 %rev, ptr %rev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rev.addr, metadata !3380, metadata !DIExpression()), !dbg !3387
  store i64 %funcs, ptr %funcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %funcs.addr, metadata !3381, metadata !DIExpression()), !dbg !3388
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !3389
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3382, metadata !DIExpression()), !dbg !3390
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #18, !dbg !3391
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !3383, metadata !DIExpression()), !dbg !3392
  store i64 0, ptr %mask, align 8, !dbg !3392
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #18, !dbg !3393
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !3384, metadata !DIExpression()), !dbg !3394
  %0 = load i64, ptr %funcs.addr, align 8, !dbg !3395
  %cmp = icmp eq i64 %0, 0, !dbg !3397
  br i1 %cmp, label %if.then, label %if.end, !dbg !3398

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !3399
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3399

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !3400
  %2 = load ptr, ptr %guid.addr, align 8, !dbg !3401
  %3 = load i64, ptr %rev.addr, align 8, !dbg !3402
  %call = call ptr @acpi_evaluate_dsm(ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef 0, ptr noundef null) #19, !dbg !3403
  store ptr %call, ptr %obj, align 8, !dbg !3404
  %4 = load ptr, ptr %obj, align 8, !dbg !3405
  %tobool = icmp ne ptr %4, null, !dbg !3405
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !3407

if.then1:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !3408
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3408

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %obj, align 8, !dbg !3409
  %6 = load i32, ptr %5, align 8, !dbg !3411
  %cmp3 = icmp eq i32 %6, 1, !dbg !3412
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !3413

if.then4:                                         ; preds = %if.end2
  %7 = load ptr, ptr %obj, align 8, !dbg !3414
  %value = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 1, !dbg !3415
  %8 = load i64, ptr %value, align 8, !dbg !3415
  store i64 %8, ptr %mask, align 8, !dbg !3416
  br label %if.end10, !dbg !3417

if.else:                                          ; preds = %if.end2
  %9 = load ptr, ptr %obj, align 8, !dbg !3418
  %10 = load i32, ptr %9, align 8, !dbg !3420
  %cmp5 = icmp eq i32 %10, 3, !dbg !3421
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !3422

if.then6:                                         ; preds = %if.else
  store i32 0, ptr %i, align 4, !dbg !3423
  br label %for.cond, !dbg !3425

for.cond:                                         ; preds = %for.inc, %if.then6
  %11 = load i32, ptr %i, align 4, !dbg !3426
  %12 = load ptr, ptr %obj, align 8, !dbg !3428
  %length = getelementptr inbounds %struct.anon.1, ptr %12, i32 0, i32 1, !dbg !3429
  %13 = load i32, ptr %length, align 4, !dbg !3429
  %cmp7 = icmp ult i32 %11, %13, !dbg !3430
  br i1 %cmp7, label %land.rhs, label %land.end, !dbg !3431

land.rhs:                                         ; preds = %for.cond
  %14 = load i32, ptr %i, align 4, !dbg !3432
  %cmp8 = icmp slt i32 %14, 8, !dbg !3433
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %cmp8, %land.rhs ], !dbg !3434
  br i1 %15, label %for.body, label %for.end, !dbg !3435

for.body:                                         ; preds = %land.end
  %16 = load ptr, ptr %obj, align 8, !dbg !3436
  %pointer = getelementptr inbounds %struct.anon.1, ptr %16, i32 0, i32 2, !dbg !3437
  %17 = load ptr, ptr %pointer, align 8, !dbg !3437
  %18 = load i32, ptr %i, align 4, !dbg !3438
  %idxprom = sext i32 %18 to i64, !dbg !3436
  %arrayidx = getelementptr i8, ptr %17, i64 %idxprom, !dbg !3436
  %19 = load i8, ptr %arrayidx, align 1, !dbg !3436
  %conv = zext i8 %19 to i64, !dbg !3439
  %20 = load i32, ptr %i, align 4, !dbg !3440
  %mul = mul i32 %20, 8, !dbg !3441
  %sh_prom = zext i32 %mul to i64, !dbg !3442
  %shl = shl i64 %conv, %sh_prom, !dbg !3442
  %21 = load i64, ptr %mask, align 8, !dbg !3443
  %or = or i64 %21, %shl, !dbg !3443
  store i64 %or, ptr %mask, align 8, !dbg !3443
  br label %for.inc, !dbg !3444

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %i, align 4, !dbg !3445
  %inc = add i32 %22, 1, !dbg !3445
  store i32 %inc, ptr %i, align 4, !dbg !3445
  br label %for.cond, !dbg !3446, !llvm.loop !3447

for.end:                                          ; preds = %land.end
  br label %if.end9, !dbg !3448

if.end9:                                          ; preds = %for.end, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then4
  %23 = load ptr, ptr %obj, align 8, !dbg !3449
  call void @acpi_os_free(ptr noundef %23) #19, !dbg !3449
  %24 = load i64, ptr %mask, align 8, !dbg !3450
  %and = and i64 %24, 1, !dbg !3452
  %tobool11 = icmp ne i64 %and, 0, !dbg !3452
  br i1 %tobool11, label %land.lhs.true, label %if.end16, !dbg !3453

land.lhs.true:                                    ; preds = %if.end10
  %25 = load i64, ptr %mask, align 8, !dbg !3454
  %26 = load i64, ptr %funcs.addr, align 8, !dbg !3455
  %and12 = and i64 %25, %26, !dbg !3456
  %27 = load i64, ptr %funcs.addr, align 8, !dbg !3457
  %cmp13 = icmp eq i64 %and12, %27, !dbg !3458
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !3459

if.then15:                                        ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !3460
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3460

if.end16:                                         ; preds = %land.lhs.true, %if.end10
  store i1 false, ptr %retval, align 1, !dbg !3461
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3461

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #18, !dbg !3462
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #18, !dbg !3462
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !3462
  %28 = load i1, ptr %retval, align 1, !dbg !3462
  ret i1 %28, !dbg !3462
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @acpi_dev_hid_uid_match(ptr noundef %adev, ptr noundef %hid2, ptr noundef %uid2) #0 align 16 !dbg !3463 {
entry:
  %retval = alloca i1, align 1
  %adev.addr = alloca ptr, align 8
  %hid2.addr = alloca ptr, align 8
  %uid2.addr = alloca ptr, align 8
  %hid1 = alloca ptr, align 8
  %uid1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !3467, metadata !DIExpression()), !dbg !3472
  store ptr %hid2, ptr %hid2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hid2.addr, metadata !3468, metadata !DIExpression()), !dbg !3473
  store ptr %uid2, ptr %uid2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uid2.addr, metadata !3469, metadata !DIExpression()), !dbg !3474
  call void @llvm.lifetime.start.p0(i64 8, ptr %hid1) #18, !dbg !3475
  call void @llvm.dbg.declare(metadata ptr %hid1, metadata !3470, metadata !DIExpression()), !dbg !3476
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !3477
  %call = call ptr @acpi_device_hid(ptr noundef %0) #19, !dbg !3478
  store ptr %call, ptr %hid1, align 8, !dbg !3476
  call void @llvm.lifetime.start.p0(i64 8, ptr %uid1) #18, !dbg !3479
  call void @llvm.dbg.declare(metadata ptr %uid1, metadata !3471, metadata !DIExpression()), !dbg !3480
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !3481
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 8, !dbg !3481
  %unique_id = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 4, !dbg !3481
  %2 = load ptr, ptr %unique_id, align 8, !dbg !3481
  store ptr %2, ptr %uid1, align 8, !dbg !3480
  %3 = load ptr, ptr %hid1, align 8, !dbg !3482
  %4 = load ptr, ptr %hid2.addr, align 8, !dbg !3484
  %call1 = call i32 @strcmp(ptr noundef %3, ptr noundef %4) #19, !dbg !3485
  %tobool = icmp ne i32 %call1, 0, !dbg !3485
  br i1 %tobool, label %if.then, label %if.end, !dbg !3486

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !3487
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3487

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %uid2.addr, align 8, !dbg !3488
  %tobool2 = icmp ne ptr %5, null, !dbg !3488
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3490

if.then3:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !3491
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3491

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %uid1, align 8, !dbg !3492
  %tobool5 = icmp ne ptr %6, null, !dbg !3492
  br i1 %tobool5, label %land.rhs, label %land.end, !dbg !3493

land.rhs:                                         ; preds = %if.end4
  %7 = load ptr, ptr %uid1, align 8, !dbg !3494
  %8 = load ptr, ptr %uid2.addr, align 8, !dbg !3495
  %call6 = call i32 @strcmp(ptr noundef %7, ptr noundef %8) #19, !dbg !3496
  %tobool7 = icmp ne i32 %call6, 0, !dbg !3497
  %lnot = xor i1 %tobool7, true, !dbg !3497
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end4
  %9 = phi i1 [ false, %if.end4 ], [ %lnot, %land.rhs ], !dbg !3498
  store i1 %9, ptr %retval, align 1, !dbg !3499
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3499

cleanup:                                          ; preds = %land.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %uid1) #18, !dbg !3500
  call void @llvm.lifetime.end.p0(i64 8, ptr %hid1) #18, !dbg !3500
  %10 = load i1, ptr %retval, align 1, !dbg !3500
  ret i1 %10, !dbg !3500
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3501 dso_local ptr @acpi_device_hid(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3504 dso_local i32 @strcmp(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_dev_uid_to_integer(ptr noundef %adev, ptr noundef %integer) #0 align 16 !dbg !3507 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca ptr, align 8
  %integer.addr = alloca ptr, align 8
  %uid = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !3511, metadata !DIExpression()), !dbg !3514
  store ptr %integer, ptr %integer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %integer.addr, metadata !3512, metadata !DIExpression()), !dbg !3515
  call void @llvm.lifetime.start.p0(i64 8, ptr %uid) #18, !dbg !3516
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !3513, metadata !DIExpression()), !dbg !3517
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !3518
  %tobool = icmp ne ptr %0, null, !dbg !3518
  br i1 %tobool, label %if.end, label %if.then, !dbg !3520

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !3521
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3521

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !3522
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 8, !dbg !3522
  %unique_id = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 4, !dbg !3522
  %2 = load ptr, ptr %unique_id, align 8, !dbg !3522
  store ptr %2, ptr %uid, align 8, !dbg !3523
  %3 = load ptr, ptr %uid, align 8, !dbg !3524
  %tobool1 = icmp ne ptr %3, null, !dbg !3524
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3526

if.then2:                                         ; preds = %if.end
  store i32 -61, ptr %retval, align 4, !dbg !3527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3527

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %uid, align 8, !dbg !3528
  %5 = load ptr, ptr %integer.addr, align 8, !dbg !3529
  %call = call i32 @kstrtou64(ptr noundef %4, i32 noundef 0, ptr noundef %5) #19, !dbg !3530
  store i32 %call, ptr %retval, align 4, !dbg !3531
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3531

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %uid) #18, !dbg !3532
  %6 = load i32, ptr %retval, align 4, !dbg !3532
  ret i32 %6, !dbg !3532
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtou64(ptr noundef %s, i32 noundef %base, ptr noundef %res) #3 align 16 !dbg !3533 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3538, metadata !DIExpression()), !dbg !3541
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !3539, metadata !DIExpression()), !dbg !3542
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3540, metadata !DIExpression()), !dbg !3543
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3544
  %1 = load i32, ptr %base.addr, align 4, !dbg !3545
  %2 = load ptr, ptr %res.addr, align 8, !dbg !3546
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef %2) #19, !dbg !3547
  ret i32 %call, !dbg !3548
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @acpi_dev_found(ptr noundef %hid) #0 align 16 !dbg !3549 {
entry:
  %hid.addr = alloca ptr, align 8
  %acpi_device_bus_id = alloca ptr, align 8
  %found = alloca i8, align 1
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store ptr %hid, ptr %hid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hid.addr, metadata !3553, metadata !DIExpression()), !dbg !3562
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_device_bus_id) #18, !dbg !3563
  call void @llvm.dbg.declare(metadata ptr %acpi_device_bus_id, metadata !3554, metadata !DIExpression()), !dbg !3564
  call void @llvm.lifetime.start.p0(i64 1, ptr %found) #18, !dbg !3565
  call void @llvm.dbg.declare(metadata ptr %found, metadata !3555, metadata !DIExpression()), !dbg !3566
  store i8 0, ptr %found, align 1, !dbg !3566
  call void @mutex_lock(ptr noundef @acpi_device_lock) #19, !dbg !3567
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !3568
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3556, metadata !DIExpression()), !dbg !3568
  %0 = load ptr, ptr @acpi_bus_id_list, align 8, !dbg !3568
  store ptr %0, ptr %__mptr, align 8, !dbg !3568
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3568
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3568
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3568
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !3569
  %2 = load ptr, ptr %tmp, align 8, !dbg !3568
  store ptr %2, ptr %acpi_device_bus_id, align 8, !dbg !3569
  br label %for.cond, !dbg !3569

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %acpi_device_bus_id, align 8, !dbg !3570
  %node = getelementptr inbounds %struct.acpi_device_bus_id, ptr %3, i32 0, i32 2, !dbg !3570
  %cmp = icmp eq ptr %node, @acpi_bus_id_list, !dbg !3570
  %lnot = xor i1 %cmp, true, !dbg !3570
  br i1 %lnot, label %for.body, label %for.end, !dbg !3569

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %acpi_device_bus_id, align 8, !dbg !3571
  %bus_id = getelementptr inbounds %struct.acpi_device_bus_id, ptr %4, i32 0, i32 0, !dbg !3573
  %5 = load ptr, ptr %bus_id, align 8, !dbg !3573
  %6 = load ptr, ptr %hid.addr, align 8, !dbg !3574
  %call = call i32 @strcmp(ptr noundef %5, ptr noundef %6) #19, !dbg !3575
  %tobool = icmp ne i32 %call, 0, !dbg !3575
  br i1 %tobool, label %if.end, label %if.then, !dbg !3576

if.then:                                          ; preds = %for.body
  store i8 1, ptr %found, align 1, !dbg !3577
  br label %for.end, !dbg !3579

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3580

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #18, !dbg !3581
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !3559, metadata !DIExpression()), !dbg !3581
  %7 = load ptr, ptr %acpi_device_bus_id, align 8, !dbg !3581
  %node2 = getelementptr inbounds %struct.acpi_device_bus_id, ptr %7, i32 0, i32 2, !dbg !3581
  %next = getelementptr inbounds %struct.list_head, ptr %node2, i32 0, i32 0, !dbg !3581
  %8 = load ptr, ptr %next, align 8, !dbg !3581
  store ptr %8, ptr %__mptr1, align 8, !dbg !3581
  %9 = load ptr, ptr %__mptr1, align 8, !dbg !3581
  %add.ptr4 = getelementptr i8, ptr %9, i64 -24, !dbg !3581
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !3581
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #18, !dbg !3570
  %10 = load ptr, ptr %tmp3, align 8, !dbg !3581
  store ptr %10, ptr %acpi_device_bus_id, align 8, !dbg !3570
  br label %for.cond, !dbg !3570, !llvm.loop !3582

for.end:                                          ; preds = %if.then, %for.cond
  call void @mutex_unlock(ptr noundef @acpi_device_lock) #19, !dbg !3584
  %11 = load i8, ptr %found, align 1, !dbg !3585, !range !3586, !noundef !460
  %tobool5 = trunc i8 %11 to i1, !dbg !3585
  call void @llvm.lifetime.end.p0(i64 1, ptr %found) #18, !dbg !3587
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_device_bus_id) #18, !dbg !3587
  ret i1 %tobool5, !dbg !3588
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3589 dso_local void @mutex_lock(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3593 dso_local void @mutex_unlock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @acpi_dev_present(ptr noundef %hid, ptr noundef %uid, i64 noundef %hrv) #0 align 16 !dbg !3594 {
entry:
  %hid.addr = alloca ptr, align 8
  %uid.addr = alloca ptr, align 8
  %hrv.addr = alloca i64, align 8
  %match = alloca %struct.acpi_dev_match_info, align 8
  %dev = alloca ptr, align 8
  store ptr %hid, ptr %hid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hid.addr, metadata !3598, metadata !DIExpression()), !dbg !3609
  store ptr %uid, ptr %uid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !3599, metadata !DIExpression()), !dbg !3610
  store i64 %hrv, ptr %hrv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hrv.addr, metadata !3600, metadata !DIExpression()), !dbg !3611
  call void @llvm.lifetime.start.p0(i64 80, ptr %match) #18, !dbg !3612
  call void @llvm.dbg.declare(metadata ptr %match, metadata !3601, metadata !DIExpression()), !dbg !3613
  call void @llvm.memset.p0.i64(ptr align 8 %match, i8 0, i64 80, i1 false), !dbg !3613
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #18, !dbg !3614
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !3608, metadata !DIExpression()), !dbg !3615
  %hid1 = getelementptr inbounds %struct.acpi_dev_match_info, ptr %match, i32 0, i32 0, !dbg !3616
  %arrayidx = getelementptr [2 x %struct.acpi_device_id], ptr %hid1, i64 0, i64 0, !dbg !3617
  %id = getelementptr inbounds %struct.acpi_device_id, ptr %arrayidx, i32 0, i32 0, !dbg !3618
  %arraydecay = getelementptr inbounds [16 x i8], ptr %id, i64 0, i64 0, !dbg !3617
  %0 = load ptr, ptr %hid.addr, align 8, !dbg !3619
  %call = call i64 @strscpy(ptr noundef %arraydecay, ptr noundef %0, i64 noundef 16) #19, !dbg !3620
  %1 = load ptr, ptr %uid.addr, align 8, !dbg !3621
  %uid2 = getelementptr inbounds %struct.acpi_dev_match_info, ptr %match, i32 0, i32 1, !dbg !3622
  store ptr %1, ptr %uid2, align 8, !dbg !3623
  %2 = load i64, ptr %hrv.addr, align 8, !dbg !3624
  %hrv3 = getelementptr inbounds %struct.acpi_dev_match_info, ptr %match, i32 0, i32 2, !dbg !3625
  store i64 %2, ptr %hrv3, align 8, !dbg !3626
  %call4 = call ptr @bus_find_device(ptr noundef @acpi_bus_type, ptr noundef null, ptr noundef %match, ptr noundef @acpi_dev_match_cb) #19, !dbg !3627
  store ptr %call4, ptr %dev, align 8, !dbg !3628
  %3 = load ptr, ptr %dev, align 8, !dbg !3629
  call void @put_device(ptr noundef %3) #19, !dbg !3630
  %4 = load ptr, ptr %dev, align 8, !dbg !3631
  %tobool = icmp ne ptr %4, null, !dbg !3632
  %lnot = xor i1 %tobool, true, !dbg !3632
  %lnot5 = xor i1 %lnot, true, !dbg !3633
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #18, !dbg !3634
  call void @llvm.lifetime.end.p0(i64 80, ptr %match) #18, !dbg !3634
  ret i1 %lnot5, !dbg !3635
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3636 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3639 dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_dev_match_cb(ptr noundef %dev, ptr noundef %data) #0 align 16 !dbg !3645 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %adev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %match = alloca ptr, align 8
  %hrv = alloca i64, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3647, metadata !DIExpression()), !dbg !3657
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3648, metadata !DIExpression()), !dbg !3658
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #18, !dbg !3659
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !3649, metadata !DIExpression()), !dbg !3660
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !3661
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3650, metadata !DIExpression()), !dbg !3661
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3661
  store ptr %0, ptr %__mptr, align 8, !dbg !3661
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3661
  %add.ptr = getelementptr i8, ptr %1, i64 -608, !dbg !3661
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3661
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !3662
  %2 = load ptr, ptr %tmp, align 8, !dbg !3661
  store ptr %2, ptr %adev, align 8, !dbg !3660
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #18, !dbg !3663
  call void @llvm.dbg.declare(metadata ptr %match, metadata !3652, metadata !DIExpression()), !dbg !3664
  %3 = load ptr, ptr %data.addr, align 8, !dbg !3665
  store ptr %3, ptr %match, align 8, !dbg !3664
  call void @llvm.lifetime.start.p0(i64 8, ptr %hrv) #18, !dbg !3666
  call void @llvm.dbg.declare(metadata ptr %hrv, metadata !3655, metadata !DIExpression()), !dbg !3667
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #18, !dbg !3668
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3656, metadata !DIExpression()), !dbg !3669
  %4 = load ptr, ptr %adev, align 8, !dbg !3670
  %5 = load ptr, ptr %match, align 8, !dbg !3672
  %hid = getelementptr inbounds %struct.acpi_dev_match_info, ptr %5, i32 0, i32 0, !dbg !3673
  %arraydecay = getelementptr inbounds [2 x %struct.acpi_device_id], ptr %hid, i64 0, i64 0, !dbg !3672
  %call = call i32 @acpi_match_device_ids(ptr noundef %4, ptr noundef %arraydecay) #19, !dbg !3674
  %tobool = icmp ne i32 %call, 0, !dbg !3674
  br i1 %tobool, label %if.then, label %if.end, !dbg !3675

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3676

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %match, align 8, !dbg !3677
  %uid = getelementptr inbounds %struct.acpi_dev_match_info, ptr %6, i32 0, i32 1, !dbg !3679
  %7 = load ptr, ptr %uid, align 8, !dbg !3679
  %tobool1 = icmp ne ptr %7, null, !dbg !3677
  br i1 %tobool1, label %land.lhs.true, label %if.end9, !dbg !3680

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %adev, align 8, !dbg !3681
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %8, i32 0, i32 8, !dbg !3682
  %unique_id = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 4, !dbg !3683
  %9 = load ptr, ptr %unique_id, align 8, !dbg !3683
  %tobool2 = icmp ne ptr %9, null, !dbg !3681
  br i1 %tobool2, label %lor.lhs.false, label %if.then8, !dbg !3684

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load ptr, ptr %adev, align 8, !dbg !3685
  %pnp3 = getelementptr inbounds %struct.acpi_device, ptr %10, i32 0, i32 8, !dbg !3686
  %unique_id4 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp3, i32 0, i32 4, !dbg !3687
  %11 = load ptr, ptr %unique_id4, align 8, !dbg !3687
  %12 = load ptr, ptr %match, align 8, !dbg !3688
  %uid5 = getelementptr inbounds %struct.acpi_dev_match_info, ptr %12, i32 0, i32 1, !dbg !3689
  %13 = load ptr, ptr %uid5, align 8, !dbg !3689
  %call6 = call i32 @strcmp(ptr noundef %11, ptr noundef %13) #19, !dbg !3690
  %tobool7 = icmp ne i32 %call6, 0, !dbg !3690
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !3691

if.then8:                                         ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !3692
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3692

if.end9:                                          ; preds = %lor.lhs.false, %if.end
  %14 = load ptr, ptr %match, align 8, !dbg !3693
  %hrv10 = getelementptr inbounds %struct.acpi_dev_match_info, ptr %14, i32 0, i32 2, !dbg !3695
  %15 = load i64, ptr %hrv10, align 8, !dbg !3695
  %cmp = icmp eq i64 %15, -1, !dbg !3696
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !3697

if.then11:                                        ; preds = %if.end9
  store i32 1, ptr %retval, align 4, !dbg !3698
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3698

if.end12:                                         ; preds = %if.end9
  %16 = load ptr, ptr %adev, align 8, !dbg !3699
  %handle = getelementptr inbounds %struct.acpi_device, ptr %16, i32 0, i32 2, !dbg !3700
  %17 = load ptr, ptr %handle, align 8, !dbg !3700
  %call13 = call i32 @acpi_evaluate_integer(ptr noundef %17, ptr noundef @.str.21, ptr noundef null, ptr noundef %hrv) #19, !dbg !3701
  store i32 %call13, ptr %status, align 4, !dbg !3702
  %18 = load i32, ptr %status, align 4, !dbg !3703
  %tobool14 = icmp ne i32 %18, 0, !dbg !3703
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !3705

if.then15:                                        ; preds = %if.end12
  store i32 0, ptr %retval, align 4, !dbg !3706
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3706

if.end16:                                         ; preds = %if.end12
  %19 = load i64, ptr %hrv, align 8, !dbg !3707
  %20 = load ptr, ptr %match, align 8, !dbg !3708
  %hrv17 = getelementptr inbounds %struct.acpi_dev_match_info, ptr %20, i32 0, i32 2, !dbg !3709
  %21 = load i64, ptr %hrv17, align 8, !dbg !3709
  %cmp18 = icmp eq i64 %19, %21, !dbg !3710
  %conv = zext i1 %cmp18 to i32, !dbg !3710
  store i32 %conv, ptr %retval, align 4, !dbg !3711
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3711

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then11, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #18, !dbg !3712
  call void @llvm.lifetime.end.p0(i64 8, ptr %hrv) #18, !dbg !3712
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #18, !dbg !3712
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #18, !dbg !3712
  %22 = load i32, ptr %retval, align 4, !dbg !3712
  ret i32 %22, !dbg !3712
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3713 dso_local void @put_device(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_dev_get_next_match_dev(ptr noundef %adev, ptr noundef %hid, ptr noundef %uid, i64 noundef %hrv) #0 align 16 !dbg !3714 {
entry:
  %adev.addr = alloca ptr, align 8
  %hid.addr = alloca ptr, align 8
  %uid.addr = alloca ptr, align 8
  %hrv.addr = alloca i64, align 8
  %start = alloca ptr, align 8
  %match = alloca %struct.acpi_dev_match_info, align 8
  %dev1 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !3718, metadata !DIExpression()), !dbg !3727
  store ptr %hid, ptr %hid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hid.addr, metadata !3719, metadata !DIExpression()), !dbg !3728
  store ptr %uid, ptr %uid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !3720, metadata !DIExpression()), !dbg !3729
  store i64 %hrv, ptr %hrv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hrv.addr, metadata !3721, metadata !DIExpression()), !dbg !3730
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #18, !dbg !3731
  call void @llvm.dbg.declare(metadata ptr %start, metadata !3722, metadata !DIExpression()), !dbg !3732
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !3733
  %tobool = icmp ne ptr %0, null, !dbg !3733
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3733

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !3734
  %dev = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 18, !dbg !3735
  br label %cond.end, !dbg !3733

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3733

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %dev, %cond.true ], [ null, %cond.false ], !dbg !3733
  store ptr %cond, ptr %start, align 8, !dbg !3732
  call void @llvm.lifetime.start.p0(i64 80, ptr %match) #18, !dbg !3736
  call void @llvm.dbg.declare(metadata ptr %match, metadata !3723, metadata !DIExpression()), !dbg !3737
  call void @llvm.memset.p0.i64(ptr align 8 %match, i8 0, i64 80, i1 false), !dbg !3737
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev1) #18, !dbg !3738
  call void @llvm.dbg.declare(metadata ptr %dev1, metadata !3724, metadata !DIExpression()), !dbg !3739
  %hid2 = getelementptr inbounds %struct.acpi_dev_match_info, ptr %match, i32 0, i32 0, !dbg !3740
  %arrayidx = getelementptr [2 x %struct.acpi_device_id], ptr %hid2, i64 0, i64 0, !dbg !3741
  %id = getelementptr inbounds %struct.acpi_device_id, ptr %arrayidx, i32 0, i32 0, !dbg !3742
  %arraydecay = getelementptr inbounds [16 x i8], ptr %id, i64 0, i64 0, !dbg !3741
  %2 = load ptr, ptr %hid.addr, align 8, !dbg !3743
  %call = call i64 @strscpy(ptr noundef %arraydecay, ptr noundef %2, i64 noundef 16) #19, !dbg !3744
  %3 = load ptr, ptr %uid.addr, align 8, !dbg !3745
  %uid3 = getelementptr inbounds %struct.acpi_dev_match_info, ptr %match, i32 0, i32 1, !dbg !3746
  store ptr %3, ptr %uid3, align 8, !dbg !3747
  %4 = load i64, ptr %hrv.addr, align 8, !dbg !3748
  %hrv4 = getelementptr inbounds %struct.acpi_dev_match_info, ptr %match, i32 0, i32 2, !dbg !3749
  store i64 %4, ptr %hrv4, align 8, !dbg !3750
  %5 = load ptr, ptr %start, align 8, !dbg !3751
  %call5 = call ptr @bus_find_device(ptr noundef @acpi_bus_type, ptr noundef %5, ptr noundef %match, ptr noundef @acpi_dev_match_cb) #19, !dbg !3752
  store ptr %call5, ptr %dev1, align 8, !dbg !3753
  %6 = load ptr, ptr %adev.addr, align 8, !dbg !3754
  call void @acpi_dev_put(ptr noundef %6) #19, !dbg !3755
  %7 = load ptr, ptr %dev1, align 8, !dbg !3756
  %tobool6 = icmp ne ptr %7, null, !dbg !3756
  br i1 %tobool6, label %cond.true7, label %cond.false8, !dbg !3756

cond.true7:                                       ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !3757
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3725, metadata !DIExpression()), !dbg !3757
  %8 = load ptr, ptr %dev1, align 8, !dbg !3757
  store ptr %8, ptr %__mptr, align 8, !dbg !3757
  %9 = load ptr, ptr %__mptr, align 8, !dbg !3757
  %add.ptr = getelementptr i8, ptr %9, i64 -608, !dbg !3757
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3757
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !3758
  %10 = load ptr, ptr %tmp, align 8, !dbg !3757
  br label %cond.end9, !dbg !3756

cond.false8:                                      ; preds = %cond.end
  br label %cond.end9, !dbg !3756

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi ptr [ %10, %cond.true7 ], [ null, %cond.false8 ], !dbg !3756
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev1) #18, !dbg !3759
  call void @llvm.lifetime.end.p0(i64 80, ptr %match) #18, !dbg !3759
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #18, !dbg !3759
  ret ptr %cond10, !dbg !3760
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_dev_put(ptr noundef %adev) #3 align 16 !dbg !3761 {
entry:
  %adev.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !3763, metadata !DIExpression()), !dbg !3764
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !3765
  %tobool = icmp ne ptr %0, null, !dbg !3765
  br i1 %tobool, label %if.then, label %if.end, !dbg !3767

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !3768
  %dev = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 18, !dbg !3769
  call void @put_device(ptr noundef %dev) #19, !dbg !3770
  br label %if.end, !dbg !3770

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3771
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_dev_get_first_match_dev(ptr noundef %hid, ptr noundef %uid, i64 noundef %hrv) #0 align 16 !dbg !3772 {
entry:
  %hid.addr = alloca ptr, align 8
  %uid.addr = alloca ptr, align 8
  %hrv.addr = alloca i64, align 8
  store ptr %hid, ptr %hid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hid.addr, metadata !3776, metadata !DIExpression()), !dbg !3779
  store ptr %uid, ptr %uid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !3777, metadata !DIExpression()), !dbg !3780
  store i64 %hrv, ptr %hrv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hrv.addr, metadata !3778, metadata !DIExpression()), !dbg !3781
  %0 = load ptr, ptr %hid.addr, align 8, !dbg !3782
  %1 = load ptr, ptr %uid.addr, align 8, !dbg !3783
  %2 = load i64, ptr %hrv.addr, align 8, !dbg !3784
  %call = call ptr @acpi_dev_get_next_match_dev(ptr noundef null, ptr noundef %0, ptr noundef %1, i64 noundef %2) #19, !dbg !3785
  ret ptr %call, !dbg !3786
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @acpi_reduced_hardware() #0 align 16 !dbg !3787 {
entry:
  %0 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !3788
  %tobool = icmp ne i8 %0, 0, !dbg !3788
  ret i1 %tobool, !dbg !3789
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_backlight(ptr noundef %str) #9 section ".init.text" align 16 !dbg !3790 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !3792, metadata !DIExpression()), !dbg !3793
  %0 = load ptr, ptr %str.addr, align 8, !dbg !3794
  %call = call i64 @strscpy(ptr noundef @acpi_video_backlight_string, ptr noundef %0, i64 noundef 16) #19, !dbg !3795
  ret i32 1, !dbg !3796
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_match_platform_list(ptr noundef %plat) #0 align 16 !dbg !3797 {
entry:
  %retval = alloca i32, align 4
  %plat.addr = alloca ptr, align 8
  %hdr = alloca %struct.acpi_table_header, align 1
  %idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %plat, ptr %plat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plat.addr, metadata !3816, metadata !DIExpression()), !dbg !3832
  call void @llvm.lifetime.start.p0(i64 36, ptr %hdr) #18, !dbg !3833
  call void @llvm.dbg.declare(metadata ptr %hdr, metadata !3817, metadata !DIExpression()), !dbg !3834
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #18, !dbg !3835
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !3831, metadata !DIExpression()), !dbg !3836
  store i32 0, ptr %idx, align 4, !dbg !3836
  %0 = load i32, ptr @acpi_disabled, align 4, !dbg !3837
  %tobool = icmp ne i32 %0, 0, !dbg !3837
  br i1 %tobool, label %if.then, label %if.end, !dbg !3839

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !3840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3840

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !3841

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load ptr, ptr %plat.addr, align 8, !dbg !3842
  %oem_id = getelementptr inbounds %struct.acpi_platform_list, ptr %1, i32 0, i32 0, !dbg !3845
  %arrayidx = getelementptr [7 x i8], ptr %oem_id, i64 0, i64 0, !dbg !3842
  %2 = load i8, ptr %arrayidx, align 8, !dbg !3842
  %tobool1 = icmp ne i8 %2, 0, !dbg !3846
  br i1 %tobool1, label %for.body, label %for.end, !dbg !3846

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %plat.addr, align 8, !dbg !3847
  %table = getelementptr inbounds %struct.acpi_platform_list, ptr %3, i32 0, i32 3, !dbg !3847
  %4 = load ptr, ptr %table, align 8, !dbg !3847
  %call = call i32 @acpi_get_table_header(ptr noundef %4, i32 noundef 0, ptr noundef %hdr) #19, !dbg !3847
  %tobool2 = icmp ne i32 %call, 0, !dbg !3847
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3850

if.then3:                                         ; preds = %for.body
  br label %for.inc, !dbg !3851

if.end4:                                          ; preds = %for.body
  %5 = load ptr, ptr %plat.addr, align 8, !dbg !3852
  %oem_id5 = getelementptr inbounds %struct.acpi_platform_list, ptr %5, i32 0, i32 0, !dbg !3854
  %arraydecay = getelementptr inbounds [7 x i8], ptr %oem_id5, i64 0, i64 0, !dbg !3852
  %oem_id6 = getelementptr inbounds %struct.acpi_table_header, ptr %hdr, i32 0, i32 4, !dbg !3855
  %arraydecay7 = getelementptr inbounds [6 x i8], ptr %oem_id6, i64 0, i64 0, !dbg !3856
  %call8 = call i32 @strncmp(ptr noundef %arraydecay, ptr noundef %arraydecay7, i64 noundef 6) #19, !dbg !3857
  %tobool9 = icmp ne i32 %call8, 0, !dbg !3857
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3858

if.then10:                                        ; preds = %if.end4
  br label %for.inc, !dbg !3859

if.end11:                                         ; preds = %if.end4
  %6 = load ptr, ptr %plat.addr, align 8, !dbg !3860
  %oem_table_id = getelementptr inbounds %struct.acpi_platform_list, ptr %6, i32 0, i32 1, !dbg !3862
  %arraydecay12 = getelementptr inbounds [9 x i8], ptr %oem_table_id, i64 0, i64 0, !dbg !3860
  %oem_table_id13 = getelementptr inbounds %struct.acpi_table_header, ptr %hdr, i32 0, i32 5, !dbg !3863
  %arraydecay14 = getelementptr inbounds [8 x i8], ptr %oem_table_id13, i64 0, i64 0, !dbg !3864
  %call15 = call i32 @strncmp(ptr noundef %arraydecay12, ptr noundef %arraydecay14, i64 noundef 8) #19, !dbg !3865
  %tobool16 = icmp ne i32 %call15, 0, !dbg !3865
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !3866

if.then17:                                        ; preds = %if.end11
  br label %for.inc, !dbg !3867

if.end18:                                         ; preds = %if.end11
  %7 = load ptr, ptr %plat.addr, align 8, !dbg !3868
  %pred = getelementptr inbounds %struct.acpi_platform_list, ptr %7, i32 0, i32 4, !dbg !3870
  %8 = load i32, ptr %pred, align 8, !dbg !3870
  %cmp = icmp eq i32 %8, 0, !dbg !3871
  br i1 %cmp, label %if.then37, label %lor.lhs.false, !dbg !3872

lor.lhs.false:                                    ; preds = %if.end18
  %9 = load ptr, ptr %plat.addr, align 8, !dbg !3873
  %pred19 = getelementptr inbounds %struct.acpi_platform_list, ptr %9, i32 0, i32 4, !dbg !3874
  %10 = load i32, ptr %pred19, align 8, !dbg !3874
  %cmp20 = icmp eq i32 %10, 1, !dbg !3875
  br i1 %cmp20, label %land.lhs.true, label %lor.lhs.false23, !dbg !3876

land.lhs.true:                                    ; preds = %lor.lhs.false
  %oem_revision = getelementptr inbounds %struct.acpi_table_header, ptr %hdr, i32 0, i32 6, !dbg !3877
  %11 = load i32, ptr %oem_revision, align 1, !dbg !3877
  %12 = load ptr, ptr %plat.addr, align 8, !dbg !3878
  %oem_revision21 = getelementptr inbounds %struct.acpi_platform_list, ptr %12, i32 0, i32 2, !dbg !3879
  %13 = load i32, ptr %oem_revision21, align 8, !dbg !3879
  %cmp22 = icmp ule i32 %11, %13, !dbg !3880
  br i1 %cmp22, label %if.then37, label %lor.lhs.false23, !dbg !3881

lor.lhs.false23:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %14 = load ptr, ptr %plat.addr, align 8, !dbg !3882
  %pred24 = getelementptr inbounds %struct.acpi_platform_list, ptr %14, i32 0, i32 4, !dbg !3883
  %15 = load i32, ptr %pred24, align 8, !dbg !3883
  %cmp25 = icmp eq i32 %15, 3, !dbg !3884
  br i1 %cmp25, label %land.lhs.true26, label %lor.lhs.false30, !dbg !3885

land.lhs.true26:                                  ; preds = %lor.lhs.false23
  %oem_revision27 = getelementptr inbounds %struct.acpi_table_header, ptr %hdr, i32 0, i32 6, !dbg !3886
  %16 = load i32, ptr %oem_revision27, align 1, !dbg !3886
  %17 = load ptr, ptr %plat.addr, align 8, !dbg !3887
  %oem_revision28 = getelementptr inbounds %struct.acpi_platform_list, ptr %17, i32 0, i32 2, !dbg !3888
  %18 = load i32, ptr %oem_revision28, align 8, !dbg !3888
  %cmp29 = icmp uge i32 %16, %18, !dbg !3889
  br i1 %cmp29, label %if.then37, label %lor.lhs.false30, !dbg !3890

lor.lhs.false30:                                  ; preds = %land.lhs.true26, %lor.lhs.false23
  %19 = load ptr, ptr %plat.addr, align 8, !dbg !3891
  %pred31 = getelementptr inbounds %struct.acpi_platform_list, ptr %19, i32 0, i32 4, !dbg !3892
  %20 = load i32, ptr %pred31, align 8, !dbg !3892
  %cmp32 = icmp eq i32 %20, 2, !dbg !3893
  br i1 %cmp32, label %land.lhs.true33, label %if.end38, !dbg !3894

land.lhs.true33:                                  ; preds = %lor.lhs.false30
  %oem_revision34 = getelementptr inbounds %struct.acpi_table_header, ptr %hdr, i32 0, i32 6, !dbg !3895
  %21 = load i32, ptr %oem_revision34, align 1, !dbg !3895
  %22 = load ptr, ptr %plat.addr, align 8, !dbg !3896
  %oem_revision35 = getelementptr inbounds %struct.acpi_platform_list, ptr %22, i32 0, i32 2, !dbg !3897
  %23 = load i32, ptr %oem_revision35, align 8, !dbg !3897
  %cmp36 = icmp eq i32 %21, %23, !dbg !3898
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3899

if.then37:                                        ; preds = %land.lhs.true33, %land.lhs.true26, %land.lhs.true, %if.end18
  %24 = load i32, ptr %idx, align 4, !dbg !3900
  store i32 %24, ptr %retval, align 4, !dbg !3901
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3901

if.end38:                                         ; preds = %land.lhs.true33, %lor.lhs.false30
  br label %for.inc, !dbg !3902

for.inc:                                          ; preds = %if.end38, %if.then17, %if.then10, %if.then3
  %25 = load ptr, ptr %plat.addr, align 8, !dbg !3903
  %incdec.ptr = getelementptr %struct.acpi_platform_list, ptr %25, i32 1, !dbg !3903
  store ptr %incdec.ptr, ptr %plat.addr, align 8, !dbg !3903
  %26 = load i32, ptr %idx, align 4, !dbg !3904
  %inc = add i32 %26, 1, !dbg !3904
  store i32 %inc, ptr %idx, align 4, !dbg !3904
  br label %for.cond, !dbg !3905, !llvm.loop !3906

for.end:                                          ; preds = %for.cond
  store i32 -19, ptr %retval, align 4, !dbg !3908
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3908

cleanup:                                          ; preds = %for.end, %if.then37, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #18, !dbg !3909
  call void @llvm.lifetime.end.p0(i64 36, ptr %hdr) #18, !dbg !3909
  %27 = load i32, ptr %retval, align 4, !dbg !3909
  ret i32 %27, !dbg !3909
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3910 dso_local i32 @acpi_get_table_header(ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3914 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !3917 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3921, metadata !DIExpression()), !dbg !3923
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3922, metadata !DIExpression()), !dbg !3924
  %0 = load i64, ptr %size.addr, align 8, !dbg !3925
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3926
  %or = or i32 %1, 256, !dbg !3927
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !3928
  ret ptr %call, !dbg !3929
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #11 align 16 !dbg !3930 {
entry:
  %call = call i64 @native_save_fl() #19, !dbg !3934
  ret i64 %call, !dbg !3935
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #11 align 16 !dbg !3936 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3940, metadata !DIExpression()), !dbg !3941
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3942
  %and = and i64 %0, 512, !dbg !3943
  %tobool = icmp ne i64 %and, 0, !dbg !3944
  %lnot = xor i1 %tobool, true, !dbg !3944
  %lnot.ext = zext i1 %lnot to i32, !dbg !3944
  ret i32 %lnot.ext, !dbg !3945
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !3946 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3948, metadata !DIExpression()), !dbg !3953
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3949, metadata !DIExpression()), !dbg !3954
  %0 = load i64, ptr %size.addr, align 8, !dbg !3955
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3956
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3957

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3958
  %tobool = icmp ne i64 %2, 0, !dbg !3958
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3959

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !3960
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3950, metadata !DIExpression()), !dbg !3961
  %3 = load i64, ptr %size.addr, align 8, !dbg !3962
  %cmp = icmp ugt i64 %3, 8192, !dbg !3964
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3965

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3966
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3967
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !3968
  store ptr %call, ptr %retval, align 8, !dbg !3969
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3969

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3970
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #19, !dbg !3970
  store i32 %call2, ptr %index, align 4, !dbg !3971
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3972
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3973
  %9 = ptrtoint ptr %8 to i64, !dbg !3973
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #19, !dbg !3974
  %idxprom = zext i32 %call3 to i64, !dbg !3975
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3975
  %10 = load i32, ptr %index, align 4, !dbg !3976
  %idxprom4 = zext i32 %10 to i64, !dbg !3975
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3975
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3975
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3977
  %13 = load i64, ptr %size.addr, align 8, !dbg !3978
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !3979
  store ptr %call6, ptr %retval, align 8, !dbg !3980
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3980

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !3981
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3982
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3983
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !3984
  store ptr %call8, ptr %retval, align 8, !dbg !3985
  br label %return, !dbg !3985

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3986
  ret ptr %16, !dbg !3986
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3987 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !3988 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3992, metadata !DIExpression()), !dbg !3994
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3993, metadata !DIExpression()), !dbg !3995
  %0 = load i64, ptr %size.addr, align 8, !dbg !3996
  %tobool = icmp ne i64 %0, 0, !dbg !3996
  br i1 %tobool, label %if.end, label %if.then, !dbg !3998

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3999
  br label %return, !dbg !3999

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4000
  %cmp = icmp ule i64 %1, 8, !dbg !4002
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4003

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4004
  br label %return, !dbg !4004

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4005
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4007
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4008

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4009
  %cmp4 = icmp ule i64 %3, 96, !dbg !4010
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4011

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4012
  br label %return, !dbg !4012

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4013
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4015
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4016

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4017
  %cmp9 = icmp ule i64 %5, 192, !dbg !4018
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4019

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4020
  br label %return, !dbg !4020

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4021
  %cmp12 = icmp ule i64 %6, 8, !dbg !4023
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4024

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4025
  br label %return, !dbg !4025

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4026
  %cmp15 = icmp ule i64 %7, 16, !dbg !4028
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4029

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4030
  br label %return, !dbg !4030

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4031
  %cmp18 = icmp ule i64 %8, 32, !dbg !4033
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4034

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4035
  br label %return, !dbg !4035

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4036
  %cmp21 = icmp ule i64 %9, 64, !dbg !4038
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4039

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4040
  br label %return, !dbg !4040

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4041
  %cmp24 = icmp ule i64 %10, 128, !dbg !4043
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4044

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4045
  br label %return, !dbg !4045

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4046
  %cmp27 = icmp ule i64 %11, 256, !dbg !4048
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4049

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4050
  br label %return, !dbg !4050

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4051
  %cmp30 = icmp ule i64 %12, 512, !dbg !4053
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4054

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4055
  br label %return, !dbg !4055

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4056
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4058
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4059

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4060
  br label %return, !dbg !4060

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4061
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4063
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4064

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4065
  br label %return, !dbg !4065

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4066
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4068
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4069

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4070
  br label %return, !dbg !4070

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4071
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4073
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4074

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4075
  br label %return, !dbg !4075

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4076
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4078
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4079

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4080
  br label %return, !dbg !4080

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4081
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4083
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4084

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4085
  br label %return, !dbg !4085

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4086
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4088
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4089

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4090
  br label %return, !dbg !4090

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4091
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4093
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4094

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4095
  br label %return, !dbg !4095

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4096
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4098
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4099

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4100
  br label %return, !dbg !4100

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4101
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4103
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4104

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4105
  br label %return, !dbg !4105

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4106
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4108
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4109

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4110
  br label %return, !dbg !4110

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4111
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4113
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4114

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4115
  br label %return, !dbg !4115

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4116, !range !3586, !noundef !460
  %tobool69 = trunc i8 %25 to i1, !dbg !4116
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4118

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4119

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_196() #23, !dbg !4120, !srcloc !4123
  unreachable, !dbg !4120

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4124

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4125

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4126

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4128

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4126

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.20, i32 480, i32 0, i64 12) #18, !dbg !4130, !srcloc !4132
  br label %do.end75, !dbg !4130

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4126

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4133
  br label %return, !dbg !4133

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4134
  ret i32 %26, !dbg !4134
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4135 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !4141 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4145, metadata !DIExpression()), !dbg !4147
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4146, metadata !DIExpression()), !dbg !4148
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4149
  %and = and i32 %0, 17, !dbg !4149
  %cmp = icmp eq i32 %and, 0, !dbg !4149
  %lnot = xor i1 %cmp, true, !dbg !4149
  %lnot1 = xor i1 %lnot, true, !dbg !4149
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4149
  %conv = sext i32 %lnot.ext to i64, !dbg !4149
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4149
  %tobool = icmp ne i64 %expval, 0, !dbg !4149
  br i1 %tobool, label %if.then, label %if.end, !dbg !4151

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4152
  br label %return, !dbg !4152

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4153
  %and2 = and i32 %1, 1, !dbg !4155
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4155
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4156

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4157
  br label %return, !dbg !4157

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4158
  br label %return, !dbg !4158

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4160
  ret i32 %2, !dbg !4160
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #16

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4161 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4162 dso_local void @__compiletime_assert_196() #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #11 align 16 !dbg !4163 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !4166
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4165, metadata !DIExpression()), !dbg !4167
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #18, !dbg !4168, !srcloc !4169
  %0 = load i64, ptr %flags, align 8, !dbg !4170
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !4171
  ret i64 %0, !dbg !4172
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preempt_count() #11 align 16 !dbg !4173 {
entry:
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #18, !dbg !4178
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4176, metadata !DIExpression()), !dbg !4178
  %0 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.12, ptr @pcpu_hot, i32 0, i32 1)) #24, !dbg !4178, !srcloc !4179
  store i32 %0, ptr %pfo_val__, align 4, !dbg !4178
  %1 = load i32, ptr %pfo_val__, align 4, !dbg !4178
  %conv = zext i32 %1 to i64, !dbg !4178
  %conv1 = trunc i64 %conv to i32, !dbg !4178
  store i32 %conv1, ptr %tmp, align 4, !dbg !4178
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #18, !dbg !4180
  %2 = load i32, ptr %tmp, align 4, !dbg !4178
  %and = and i32 %2, 2147483647, !dbg !4181
  ret i32 %and, !dbg !4182
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4183 dso_local i32 @acpi_get_name(ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4186 dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4189 dso_local i32 @acpi_match_device_ids(ptr noundef, ptr noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #17 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { noredzone }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { cold noredzone }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }
attributes #24 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128}
!llvm.ident = !{!2129}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_extract_package206", scope: !2, file: !3, line: 244, type: !124, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.utils.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22utils\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/utils.ll drivers/acpi/utils.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !106, globals: !1989, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/utils.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c716b6c26d940b97511389349305a11b")
!4 = !{!5, !11, !17, !24, !30, !37, !42, !50, !58, !67, !72, !77, !83, !89, !96}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !12, line: 26, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!15 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!16 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !18, line: 312, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!21 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!22 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!23 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !25, line: 45, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!28 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!29 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !31, line: 487, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!34 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!35 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!36 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !38, line: 65, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!39 = !{!40, !41}
!40 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!41 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !43, line: 620, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!46 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!47 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!48 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!49 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !43, line: 597, baseType: !51, size: 32, elements: !52)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!54 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!55 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!56 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!57 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !31, line: 547, baseType: !7, size: 32, elements: !59)
!59 = !{!60, !61, !62, !63, !64, !65, !66}
!60 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!61 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!62 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!63 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!64 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!65 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!66 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !31, line: 564, baseType: !7, size: 32, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!70 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!71 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !31, line: 577, baseType: !7, size: 32, elements: !73)
!73 = !{!74, !75, !76}
!74 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!75 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!76 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !31, line: 503, baseType: !7, size: 32, elements: !78)
!78 = !{!79, !80, !81, !82}
!79 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!80 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!81 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!82 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !84, line: 30, baseType: !7, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!85 = !{!86, !87, !88}
!86 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!87 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!88 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_predicate", file: !90, line: 681, baseType: !7, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!91 = !{!92, !93, !94, !95}
!92 = !DIEnumerator(name: "all_versions", value: 0)
!93 = !DIEnumerator(name: "less_than_or_equal", value: 1)
!94 = !DIEnumerator(name: "equal", value: 2)
!95 = !DIEnumerator(name: "greater_than_or_equal", value: 3)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !97, line: 364, baseType: !7, size: 32, elements: !98)
!97 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!98 = !{!99, !100, !101, !102, !103, !104, !105}
!99 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!100 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!101 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!102 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!103 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!104 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!105 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!106 = !{!107, !113, !117, !118, !123, !124, !125, !109, !126, !119, !128, !114, !178, !239, !374, !51}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !108, line: 421, baseType: !109)
!108 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !110, line: 21, baseType: !111)
!110 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !112, line: 27, baseType: !7)
!112 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !108, line: 127, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !110, line: 23, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !112, line: 31, baseType: !116)
!116 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !110, line: 17, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !112, line: 21, baseType: !122)
!122 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!123 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !127, line: 154, baseType: !7)
!127 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !108, line: 908, size: 192, elements: !130)
!130 = !{!131, !133, !138, !145, !151, !157, !164, !172}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !108, line: 909, baseType: !132, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !108, line: 644, baseType: !109)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !129, file: !108, line: 913, baseType: !134, size: 128)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !129, file: !108, line: 910, size: 128, elements: !135)
!135 = !{!136, !137}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !108, line: 911, baseType: !132, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !134, file: !108, line: 912, baseType: !114, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !129, file: !108, line: 919, baseType: !139, size: 128)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !129, file: !108, line: 915, size: 128, elements: !140)
!140 = !{!141, !142, !143}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !108, line: 916, baseType: !132, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !139, file: !108, line: 917, baseType: !109, size: 32, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !139, file: !108, line: 918, baseType: !144, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !129, file: !108, line: 925, baseType: !146, size: 128)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !129, file: !108, line: 921, size: 128, elements: !147)
!147 = !{!148, !149, !150}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !108, line: 922, baseType: !132, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !146, file: !108, line: 923, baseType: !109, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !146, file: !108, line: 924, baseType: !119, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !129, file: !108, line: 931, baseType: !152, size: 128)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !129, file: !108, line: 927, size: 128, elements: !153)
!153 = !{!154, !155, !156}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !152, file: !108, line: 928, baseType: !132, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !152, file: !108, line: 929, baseType: !109, size: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !152, file: !108, line: 930, baseType: !128, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !129, file: !108, line: 937, baseType: !158, size: 128)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !129, file: !108, line: 933, size: 128, elements: !159)
!159 = !{!160, !161, !162}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !158, file: !108, line: 934, baseType: !132, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !158, file: !108, line: 935, baseType: !132, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !158, file: !108, line: 936, baseType: !163, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !108, line: 424, baseType: !124)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !129, file: !108, line: 944, baseType: !165, size: 192)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !129, file: !108, line: 939, size: 192, elements: !166)
!166 = !{!167, !168, !169, !171}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !165, file: !108, line: 940, baseType: !132, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !165, file: !108, line: 941, baseType: !109, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !165, file: !108, line: 942, baseType: !170, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !108, line: 128, baseType: !114)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !165, file: !108, line: 943, baseType: !109, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !129, file: !108, line: 950, baseType: !173, size: 96)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !129, file: !108, line: 946, size: 96, elements: !174)
!174 = !{!175, !176, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !173, file: !108, line: 947, baseType: !132, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !173, file: !108, line: 948, baseType: !109, size: 32, offset: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !173, file: !108, line: 949, baseType: !109, size: 32, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_bus_id", file: !180, line: 96, size: 320, elements: !181)
!180 = !DIFile(filename: "drivers/acpi/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5cf5cbbce8a2c7457da3066f6da7b3bd")
!181 = !{!182, !185, !233}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !179, file: !180, line: 97, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "instance_ida", scope: !179, file: !180, line: 98, baseType: !186, size: 128, offset: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !187, line: 246, size: 128, elements: !188)
!187 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!188 = !{!189}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !186, file: !187, line: 247, baseType: !190, size: 128)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !191, line: 296, size: 128, elements: !192)
!191 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!192 = !{!193, !231, !232}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !190, file: !191, line: 297, baseType: !194, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !195, line: 29, baseType: !196)
!195 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !195, line: 17, size: 32, elements: !197)
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, scope: !196, file: !195, line: 18, baseType: !199, size: 32)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !196, file: !195, line: 18, size: 32, elements: !200)
!200 = !{!201}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !199, file: !195, line: 19, baseType: !202, size: 32)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !203, line: 14, size: 32, elements: !204)
!203 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !202, file: !203, line: 15, baseType: !206, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !207, line: 44, baseType: !208)
!207 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !207, line: 14, size: 32, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !207, line: 15, baseType: !211, size: 32)
!211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !208, file: !207, line: 15, size: 32, elements: !212)
!212 = !{!213, !218, !223}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !211, file: !207, line: 16, baseType: !214, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !127, line: 174, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 172, size: 32, elements: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !215, file: !127, line: 173, baseType: !51, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, scope: !211, file: !207, line: 24, baseType: !219, size: 16)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !207, line: 24, size: 16, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !219, file: !207, line: 25, baseType: !120, size: 8)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !219, file: !207, line: 26, baseType: !120, size: 8, offset: 8)
!223 = !DIDerivedType(tag: DW_TAG_member, scope: !211, file: !207, line: 28, baseType: !224, size: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !207, line: 28, size: 32, elements: !225)
!225 = !{!226, !230}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !224, file: !207, line: 29, baseType: !227, size: 16)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !110, line: 19, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !112, line: 24, baseType: !229)
!229 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !224, file: !207, line: 30, baseType: !227, size: 16, offset: 16)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !190, file: !191, line: 299, baseType: !126, size: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !190, file: !191, line: 300, baseType: !124, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !179, file: !180, line: 99, baseType: !234, size: 128, offset: 192)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !127, line: 190, size: 128, elements: !235)
!235 = !{!236, !238}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !234, file: !127, line: 191, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !234, file: !127, line: 191, baseType: !237, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !241, line: 367, size: 11200, elements: !242)
!241 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!242 = !{!243, !244, !245, !246, !1783, !1784, !1785, !1794, !1812, !1842, !1872, !1896, !1917, !1923, !1932, !1964, !1978, !1982, !1983, !1984, !1985, !1986, !1987, !1988}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !240, file: !241, line: 368, baseType: !109, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !240, file: !241, line: 369, baseType: !51, size: 32, offset: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !240, file: !241, line: 370, baseType: !163, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !240, file: !241, line: 371, baseType: !247, size: 512, offset: 128)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !248, line: 41, size: 512, elements: !249)
!248 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!249 = !{!250, !252, !1779, !1780, !1781, !1782}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !247, file: !248, line: 42, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !247, file: !248, line: 43, baseType: !253, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !248, line: 125, size: 1408, elements: !256)
!256 = !{!257, !261, !265, !273, !1709, !1710, !1714, !1718, !1722, !1726, !1730, !1731, !1735, !1739, !1743, !1754, !1755, !1756, !1757, !1767, !1771, !1775}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !255, file: !248, line: 126, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!251, !251}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !255, file: !248, line: 127, baseType: !262, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !251}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !255, file: !248, line: 128, baseType: !266, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!269, !271}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !127, line: 35, baseType: !270)
!270 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !255, file: !248, line: 129, baseType: !274, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!277, !271, !279}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !31, line: 705, size: 5824, elements: !282)
!282 = !{!283, !892, !894, !897, !898, !949, !1415, !1416, !1417, !1418, !1419, !1426, !1596, !1609, !1619, !1623, !1624, !1625, !1626, !1630, !1637, !1638, !1641, !1644, !1648, !1649, !1650, !1653, !1654, !1655, !1656, !1686, !1687, !1688, !1691, !1694, !1703, !1704, !1705, !1706, !1707, !1708}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !281, file: !31, line: 706, baseType: !284, size: 512)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !285, line: 64, size: 512, elements: !286)
!285 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!286 = !{!287, !288, !289, !291, !337, !762, !877, !887, !888, !889, !890, !891}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !284, file: !285, line: 65, baseType: !183, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !284, file: !285, line: 66, baseType: !234, size: 128, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !284, file: !285, line: 67, baseType: !290, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !284, file: !285, line: 68, baseType: !292, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !285, line: 168, size: 768, elements: !294)
!294 = !{!295, !296, !297, !298}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !293, file: !285, line: 169, baseType: !234, size: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !293, file: !285, line: 170, baseType: !194, size: 32, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !293, file: !285, line: 171, baseType: !284, size: 512, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !293, file: !285, line: 172, baseType: !299, size: 64, offset: 704)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !285, line: 133, size: 192, elements: !302)
!302 = !{!303, !310, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !301, file: !285, line: 134, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!51, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !301, file: !285, line: 135, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!183, !308}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !301, file: !285, line: 136, baseType: !316, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!51, !308, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !285, line: 125, size: 20736, elements: !322)
!322 = !{!323, !327, !331, !332, !336}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !321, file: !285, line: 126, baseType: !324, size: 192)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 192, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 3)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !321, file: !285, line: 127, baseType: !328, size: 4096, offset: 192)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 4096, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !321, file: !285, line: 128, baseType: !51, size: 32, offset: 4288)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !321, file: !285, line: 129, baseType: !333, size: 16384, offset: 4320)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 16384, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 2048)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !321, file: !285, line: 130, baseType: !51, size: 32, offset: 20704)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !284, file: !285, line: 69, baseType: !338, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !285, line: 116, size: 384, elements: !341)
!341 = !{!342, !346, !375, !709, !740, !744}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !340, file: !285, line: 117, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !290}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !340, file: !285, line: 118, baseType: !347, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !350, line: 254, size: 128, elements: !351)
!350 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!351 = !{!352, !367}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !349, file: !350, line: 255, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!356, !290, !361, !144}
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !127, line: 66, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !358, line: 73, baseType: !359)
!358 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !358, line: 15, baseType: !360)
!360 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !350, line: 30, size: 128, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !362, file: !350, line: 31, baseType: !183, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !362, file: !350, line: 32, baseType: !366, size: 16, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !127, line: 24, baseType: !229)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !349, file: !350, line: 256, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!356, !290, !361, !183, !371}
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !127, line: 61, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !358, line: 72, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !358, line: 16, baseType: !374)
!374 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !340, file: !285, line: 119, baseType: !376, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !350, line: 84, size: 320, elements: !380)
!380 = !{!381, !382, !386, !705, !707}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !379, file: !350, line: 85, baseType: !183, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !379, file: !350, line: 86, baseType: !383, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!366, !290, !361, !51}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !379, file: !350, line: 88, baseType: !387, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!366, !290, !390, !51}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !350, line: 175, size: 512, elements: !392)
!392 = !{!393, !394, !395, !396, !403, !413, !414}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !391, file: !350, line: 176, baseType: !362, size: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !391, file: !350, line: 177, baseType: !371, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !391, file: !350, line: 178, baseType: !124, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !391, file: !350, line: 179, baseType: !397, size: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !402, line: 32, flags: DIFlagFwdDecl)
!402 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!403 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !391, file: !350, line: 180, baseType: !404, size: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!356, !407, !290, !390, !144, !410, !371}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !409, line: 537, flags: DIFlagFwdDecl)
!409 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !127, line: 52, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !358, line: 88, baseType: !412)
!412 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !391, file: !350, line: 182, baseType: !404, size: 64, offset: 384)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !391, file: !350, line: 184, baseType: !415, size: 64, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!51, !407, !290, !390, !418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !402, line: 625, size: 1344, elements: !420)
!420 = !{!421, !438, !656, !662, !669, !670, !675, !676, !688, !689, !692, !696, !697, !698, !699, !700, !703}
!421 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !402, line: 628, baseType: !422, size: 128)
!422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !402, line: 628, size: 128, elements: !423)
!423 = !{!424, !429}
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !402, line: 629, baseType: !425, size: 128)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !422, file: !402, line: 629, size: 128, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !425, file: !402, line: 631, baseType: !374, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !425, file: !402, line: 632, baseType: !374, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !422, file: !402, line: 635, baseType: !430, size: 128, align: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !127, line: 232, size: 128, align: 64, elements: !431)
!431 = !{!432, !434}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !430, file: !127, line: 233, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !430, file: !127, line: 234, baseType: !435, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !433}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !419, file: !402, line: 639, baseType: !439, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !402, line: 733, size: 10240, elements: !441)
!441 = !{!442, !652}
!442 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !402, line: 734, baseType: !443, size: 10240)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !440, file: !402, line: 734, size: 10240, elements: !444)
!444 = !{!445, !449, !463, !467, !468, !469, !470, !471, !472, !480, !481, !482, !488, !489, !498, !499, !500, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !547, !561, !564, !617, !618, !619, !622, !626, !627, !630, !631, !632, !639, !640}
!445 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !402, line: 739, baseType: !446, size: 512, align: 512)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !443, file: !402, line: 739, size: 512, align: 512, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !446, file: !402, line: 747, baseType: !214, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !443, file: !402, line: 750, baseType: !450, size: 128, offset: 512)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !451, line: 218, size: 128, elements: !452)
!451 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!452 = !{!453, !461, !462}
!453 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !451, line: 219, baseType: !454, size: 32)
!454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !451, line: 219, size: 32, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !454, file: !451, line: 220, baseType: !194, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !454, file: !451, line: 221, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !451, line: 197, baseType: !459)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !451, line: 197, elements: !460)
!460 = !{}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !450, file: !451, line: 223, baseType: !7, size: 32, offset: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !450, file: !451, line: 224, baseType: !124, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !443, file: !402, line: 752, baseType: !464, size: 64, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!374, !407, !374, !374, !374, !374}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !443, file: !402, line: 756, baseType: !374, size: 64, offset: 704)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !443, file: !402, line: 757, baseType: !374, size: 64, offset: 768)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !443, file: !402, line: 760, baseType: !374, size: 64, offset: 832)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !443, file: !402, line: 761, baseType: !374, size: 64, offset: 896)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !443, file: !402, line: 763, baseType: !374, size: 64, offset: 960)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !443, file: !402, line: 764, baseType: !473, size: 64, offset: 1024)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !409, line: 299, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 299, size: 64, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !475, file: !409, line: 299, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !479, line: 18, baseType: !374)
!479 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!480 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !443, file: !402, line: 773, baseType: !214, size: 32, offset: 1088)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !443, file: !402, line: 785, baseType: !214, size: 32, offset: 1120)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !443, file: !402, line: 795, baseType: !483, size: 64, offset: 1152)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !402, line: 726, size: 128, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !484, file: !402, line: 727, baseType: !114, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !484, file: !402, line: 728, baseType: !51, size: 32, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !443, file: !402, line: 801, baseType: !374, size: 64, offset: 1216)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !443, file: !402, line: 804, baseType: !490, size: 64, offset: 1280)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !491, line: 13, baseType: !492)
!491 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !127, line: 181, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 179, size: 64, elements: !494)
!494 = !{!495}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !493, file: !127, line: 180, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !110, line: 22, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !112, line: 30, baseType: !412)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !443, file: !402, line: 806, baseType: !51, size: 32, offset: 1344)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !443, file: !402, line: 808, baseType: !194, size: 32, offset: 1376)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !443, file: !402, line: 823, baseType: !501, size: 320, offset: 1408)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !502, line: 48, size: 320, elements: !503)
!502 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!503 = !{!504, !505, !506, !511, !513}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !501, file: !502, line: 49, baseType: !490, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !501, file: !502, line: 55, baseType: !490, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !501, file: !502, line: 57, baseType: !507, size: 32, offset: 128)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !508, line: 15, size: 32, elements: !509)
!508 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!509 = !{!510}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !507, file: !508, line: 20, baseType: !214, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !501, file: !502, line: 59, baseType: !512, size: 32, offset: 160)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !203, line: 23, baseType: !202)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !501, file: !502, line: 60, baseType: !234, size: 128, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !443, file: !402, line: 825, baseType: !234, size: 128, offset: 1728)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !443, file: !402, line: 845, baseType: !51, size: 32, offset: 1856)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !443, file: !402, line: 849, baseType: !374, size: 64, offset: 1920)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !443, file: !402, line: 850, baseType: !374, size: 64, offset: 1984)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !443, file: !402, line: 852, baseType: !374, size: 64, offset: 2048)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !443, file: !402, line: 853, baseType: !374, size: 64, offset: 2112)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !443, file: !402, line: 854, baseType: !492, size: 64, offset: 2176)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !443, file: !402, line: 855, baseType: !374, size: 64, offset: 2240)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !443, file: !402, line: 856, baseType: !374, size: 64, offset: 2304)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !443, file: !402, line: 857, baseType: !374, size: 64, offset: 2368)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !443, file: !402, line: 858, baseType: !374, size: 64, offset: 2432)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !443, file: !402, line: 865, baseType: !526, size: 32, offset: 2496)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !527, line: 69, baseType: !528)
!527 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !527, line: 64, size: 32, elements: !529)
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !528, file: !527, line: 65, baseType: !7, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !443, file: !402, line: 867, baseType: !194, size: 32, offset: 2528)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !443, file: !402, line: 869, baseType: !374, size: 64, offset: 2560)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !443, file: !402, line: 869, baseType: !374, size: 64, offset: 2624)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !443, file: !402, line: 869, baseType: !374, size: 64, offset: 2688)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !443, file: !402, line: 869, baseType: !374, size: 64, offset: 2752)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !443, file: !402, line: 870, baseType: !374, size: 64, offset: 2816)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !443, file: !402, line: 870, baseType: !374, size: 64, offset: 2880)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !443, file: !402, line: 870, baseType: !374, size: 64, offset: 2944)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !443, file: !402, line: 871, baseType: !374, size: 64, offset: 3008)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !443, file: !402, line: 871, baseType: !374, size: 64, offset: 3072)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !443, file: !402, line: 871, baseType: !374, size: 64, offset: 3136)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !443, file: !402, line: 871, baseType: !374, size: 64, offset: 3200)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !443, file: !402, line: 873, baseType: !544, size: 3328, offset: 3264)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 3328, elements: !545)
!545 = !{!546}
!546 = !DISubrange(count: 52)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !443, file: !402, line: 875, baseType: !548, size: 1280, offset: 6592)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 1280, elements: !559)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !550, line: 22, size: 320, elements: !551)
!550 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!551 = !{!552, !553, !554, !555}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !549, file: !550, line: 23, baseType: !512, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !549, file: !550, line: 24, baseType: !496, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !549, file: !550, line: 26, baseType: !234, size: 128, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !549, file: !550, line: 28, baseType: !556, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !110, line: 20, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !112, line: 26, baseType: !51)
!559 = !{!560}
!560 = !DISubrange(count: 4)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !443, file: !402, line: 877, baseType: !562, size: 64, offset: 7872)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !402, line: 877, flags: DIFlagFwdDecl)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !443, file: !402, line: 880, baseType: !565, size: 1088, offset: 7936)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !566, line: 72, baseType: !567)
!566 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !566, line: 23, size: 1088, elements: !568)
!568 = !{!569, !570, !571, !572, !573, !576, !577, !585, !586, !611, !612, !613}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !567, file: !566, line: 28, baseType: !114, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !567, file: !566, line: 38, baseType: !492, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !567, file: !566, line: 40, baseType: !374, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !567, file: !566, line: 43, baseType: !501, size: 320, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !567, file: !566, line: 44, baseType: !574, size: 64, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !566, line: 44, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !567, file: !566, line: 48, baseType: !374, size: 64, offset: 576)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !567, file: !566, line: 59, baseType: !578, size: 256, offset: 640)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !579, line: 66, size: 256, elements: !580)
!579 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!580 = !{!581, !582, !583, !584}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !578, file: !579, line: 67, baseType: !490, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !578, file: !579, line: 68, baseType: !512, size: 32, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !578, file: !579, line: 70, baseType: !507, size: 32, offset: 96)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !578, file: !579, line: 72, baseType: !234, size: 128, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !567, file: !566, line: 60, baseType: !124, size: 64, offset: 896)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !567, file: !566, line: 61, baseType: !587, size: 64, offset: 960)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !590, line: 13, size: 1216, elements: !591)
!590 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!591 = !{!592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !589, file: !590, line: 14, baseType: !124, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !589, file: !590, line: 15, baseType: !374, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !589, file: !590, line: 17, baseType: !374, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !589, file: !590, line: 17, baseType: !374, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !589, file: !590, line: 18, baseType: !374, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !589, file: !590, line: 18, baseType: !374, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !589, file: !590, line: 19, baseType: !277, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !589, file: !590, line: 21, baseType: !360, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !589, file: !590, line: 23, baseType: !360, size: 64, offset: 512)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !589, file: !590, line: 24, baseType: !360, size: 64, offset: 576)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !589, file: !590, line: 25, baseType: !360, size: 64, offset: 640)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !589, file: !590, line: 26, baseType: !360, size: 64, offset: 704)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !589, file: !590, line: 27, baseType: !360, size: 64, offset: 768)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !589, file: !590, line: 28, baseType: !360, size: 64, offset: 832)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !589, file: !590, line: 29, baseType: !360, size: 64, offset: 896)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !589, file: !590, line: 30, baseType: !360, size: 64, offset: 960)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !589, file: !590, line: 31, baseType: !360, size: 64, offset: 1024)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !589, file: !590, line: 32, baseType: !360, size: 64, offset: 1088)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !589, file: !590, line: 33, baseType: !360, size: 64, offset: 1152)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !567, file: !566, line: 63, baseType: !214, size: 32, offset: 1024)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !567, file: !566, line: 69, baseType: !227, size: 16, offset: 1056)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !567, file: !566, line: 70, baseType: !614, size: 16, offset: 1072)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !110, line: 18, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !112, line: 23, baseType: !616)
!616 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !443, file: !402, line: 882, baseType: !374, size: 64, offset: 9024)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !443, file: !402, line: 885, baseType: !194, size: 32, offset: 9088)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !443, file: !402, line: 886, baseType: !620, size: 64, offset: 9152)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !402, line: 732, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !443, file: !402, line: 901, baseType: !623, size: 64, offset: 9216)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !625, line: 18, flags: DIFlagFwdDecl)
!625 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!626 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !443, file: !402, line: 904, baseType: !407, size: 64, offset: 9280)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !443, file: !402, line: 906, baseType: !628, size: 64, offset: 9344)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !402, line: 906, flags: DIFlagFwdDecl)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !443, file: !402, line: 930, baseType: !214, size: 32, offset: 9408)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !443, file: !402, line: 933, baseType: !214, size: 32, offset: 9440)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !443, file: !402, line: 935, baseType: !633, size: 64, offset: 9472)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !634, line: 103, size: 64, elements: !635)
!634 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !633, file: !634, line: 104, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !634, line: 101, flags: DIFlagFwdDecl)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !443, file: !402, line: 940, baseType: !490, size: 64, offset: 9536)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !443, file: !402, line: 942, baseType: !641, size: 256, offset: 9600)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !642, line: 98, size: 256, elements: !643)
!642 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!643 = !{!644, !645, !646}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !641, file: !642, line: 99, baseType: !490, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !641, file: !642, line: 100, baseType: !234, size: 128, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !641, file: !642, line: 101, baseType: !647, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !642, line: 21, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !440, file: !402, line: 986, baseType: !653, offset: 10240)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: -1)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !419, file: !402, line: 640, baseType: !657, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !409, line: 297, baseType: !658)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !409, line: 297, size: 64, elements: !659)
!659 = !{!660}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !658, file: !409, line: 297, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !479, line: 19, baseType: !374)
!662 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !402, line: 646, baseType: !663, size: 64, offset: 256)
!663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !402, line: 646, size: 64, elements: !664)
!664 = !{!665, !668}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !663, file: !402, line: 647, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !402, line: 542, baseType: !374)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !663, file: !402, line: 648, baseType: !667, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !419, file: !402, line: 666, baseType: !51, size: 32, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !419, file: !402, line: 667, baseType: !671, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !402, line: 579, size: 320, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !672, file: !402, line: 580, baseType: !501, size: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !419, file: !402, line: 670, baseType: !269, size: 8, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !419, file: !402, line: 681, baseType: !677, size: 256, offset: 512)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !419, file: !402, line: 678, size: 256, elements: !678)
!678 = !{!679, !687}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !677, file: !402, line: 679, baseType: !680, size: 192, align: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !681, line: 5, size: 192, align: 64, elements: !682)
!681 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!682 = !{!683, !684, !686}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !680, file: !681, line: 6, baseType: !374, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !680, file: !681, line: 7, baseType: !685, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !680, file: !681, line: 8, baseType: !685, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !677, file: !402, line: 680, baseType: !374, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !419, file: !402, line: 689, baseType: !234, size: 128, offset: 768)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !419, file: !402, line: 691, baseType: !690, size: 64, offset: 896)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !402, line: 691, flags: DIFlagFwdDecl)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !419, file: !402, line: 694, baseType: !693, size: 64, offset: 960)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !402, line: 694, flags: DIFlagFwdDecl)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !419, file: !402, line: 697, baseType: !374, size: 64, offset: 1024)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !419, file: !402, line: 699, baseType: !407, size: 64, offset: 1088)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !419, file: !402, line: 700, baseType: !124, size: 64, offset: 1152)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !419, file: !402, line: 711, baseType: !490, size: 64, offset: 1216)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !419, file: !402, line: 717, baseType: !701, size: 64, offset: 1280)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !402, line: 717, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !419, file: !402, line: 722, baseType: !704, offset: 1344)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !402, line: 570, elements: !460)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !379, file: !350, line: 90, baseType: !706, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !379, file: !350, line: 91, baseType: !708, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !340, file: !285, line: 120, baseType: !710, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!713, !308}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !12, line: 39, size: 384, elements: !716)
!716 = !{!717, !718, !722, !726, !732, !736}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !12, line: 40, baseType: !11, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !715, file: !12, line: 41, baseType: !719, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!269}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !715, file: !12, line: 42, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!124}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !715, file: !12, line: 43, baseType: !727, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!277, !730}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !12, line: 19, flags: DIFlagFwdDecl)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !715, file: !12, line: 44, baseType: !733, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!277}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !715, file: !12, line: 45, baseType: !737, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !124}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !340, file: !285, line: 121, baseType: !741, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!277, !308}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !340, file: !285, line: 122, baseType: !745, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !308, !748, !755}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !625, line: 23, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !625, line: 21, size: 32, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !750, file: !625, line: 22, baseType: !753, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !127, line: 37, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !358, line: 49, baseType: !7)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !625, line: 28, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !625, line: 26, size: 32, elements: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !757, file: !625, line: 27, baseType: !760, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !127, line: 38, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !358, line: 50, baseType: !7)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !284, file: !285, line: 70, baseType: !763, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !765, line: 190, size: 1152, elements: !766)
!765 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !869, !870, !871, !872, !873, !876}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !764, file: !765, line: 191, baseType: !214, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !764, file: !765, line: 192, baseType: !214, size: 32, offset: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !764, file: !765, line: 202, baseType: !763, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !764, file: !765, line: 203, baseType: !183, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !764, file: !765, line: 205, baseType: !680, size: 192, align: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !764, file: !765, line: 207, baseType: !277, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !764, file: !765, line: 208, baseType: !7, size: 32, offset: 448)
!774 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !765, line: 209, baseType: !775, size: 256, offset: 512)
!775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !764, file: !765, line: 209, size: 256, elements: !776)
!776 = !{!777, !789, !793}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !775, file: !765, line: 210, baseType: !778, size: 256)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !765, line: 153, size: 256, elements: !779)
!779 = !{!780, !781, !785, !788}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !778, file: !765, line: 154, baseType: !374, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !778, file: !765, line: 156, baseType: !782, size: 64, offset: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !681, line: 12, size: 64, elements: !783)
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !782, file: !681, line: 13, baseType: !685, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !778, file: !765, line: 162, baseType: !786, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !765, line: 162, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !778, file: !765, line: 167, baseType: !374, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !775, file: !765, line: 211, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !765, line: 170, size: 64, elements: !791)
!791 = !{!792}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !790, file: !765, line: 171, baseType: !763, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !775, file: !765, line: 212, baseType: !794, size: 256)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !765, line: 174, size: 256, elements: !795)
!795 = !{!796, !864, !867, !868}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !794, file: !765, line: 175, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !799)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !765, line: 271, size: 768, elements: !800)
!800 = !{!801, !824, !828, !832, !837, !841, !845, !849, !850, !851, !852, !860}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !799, file: !765, line: 276, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!51, !805}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !765, line: 251, size: 1216, elements: !807)
!807 = !{!808, !809, !810, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !806, file: !765, line: 253, baseType: !763, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !806, file: !765, line: 254, baseType: !407, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !806, file: !765, line: 255, baseType: !811, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !813, line: 66, flags: DIFlagFwdDecl)
!813 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!814 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !806, file: !765, line: 256, baseType: !124, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !806, file: !765, line: 259, baseType: !578, size: 256, offset: 256)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !806, file: !765, line: 260, baseType: !578, size: 256, offset: 512)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !806, file: !765, line: 261, baseType: !51, size: 32, offset: 768)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !806, file: !765, line: 262, baseType: !234, size: 128, offset: 832)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !806, file: !765, line: 263, baseType: !144, size: 64, offset: 960)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !806, file: !765, line: 265, baseType: !371, size: 64, offset: 1024)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !806, file: !765, line: 266, baseType: !269, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !806, file: !765, line: 267, baseType: !269, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !806, file: !765, line: 268, baseType: !693, size: 64, offset: 1152)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !799, file: !765, line: 277, baseType: !825, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !805}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !799, file: !765, line: 290, baseType: !829, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!51, !811, !124}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !799, file: !765, line: 292, baseType: !833, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!124, !811, !836}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !799, file: !765, line: 293, baseType: !838, size: 64, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!124, !811, !124, !836}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !799, file: !765, line: 294, baseType: !842, size: 64, offset: 320)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !811, !124}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !799, file: !765, line: 296, baseType: !846, size: 64, offset: 384)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!356, !805, !144, !371, !410}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !799, file: !765, line: 306, baseType: !371, size: 64, offset: 448)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !799, file: !765, line: 313, baseType: !269, size: 8, offset: 512)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !799, file: !765, line: 314, baseType: !846, size: 64, offset: 576)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !799, file: !765, line: 317, baseType: !853, size: 64, offset: 640)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!856, !805, !858}
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !857, line: 59, baseType: !7)
!857 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !765, line: 31, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !799, file: !765, line: 320, baseType: !861, size: 64, offset: 704)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!51, !805, !418}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !794, file: !765, line: 176, baseType: !865, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !765, line: 35, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !794, file: !765, line: 177, baseType: !410, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !794, file: !765, line: 178, baseType: !763, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !764, file: !765, line: 215, baseType: !124, size: 64, offset: 768)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !764, file: !765, line: 221, baseType: !114, size: 64, offset: 832)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !765, line: 223, baseType: !229, size: 16, offset: 896)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !764, file: !765, line: 224, baseType: !366, size: 16, offset: 912)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !764, file: !765, line: 225, baseType: !874, size: 64, offset: 960)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !765, line: 36, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !764, file: !765, line: 227, baseType: !430, size: 128, align: 64, offset: 1024)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !284, file: !285, line: 71, baseType: !878, size: 32, offset: 448)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !879, line: 19, size: 32, elements: !880)
!879 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !878, file: !879, line: 20, baseType: !882, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !883, line: 113, baseType: !884)
!883 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !883, line: 111, size: 32, elements: !885)
!885 = !{!886}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !884, file: !883, line: 112, baseType: !214, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !284, file: !285, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !284, file: !285, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !284, file: !285, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !284, file: !285, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !284, file: !285, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !281, file: !31, line: 707, baseType: !893, size: 64, offset: 512)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !281, file: !31, line: 709, baseType: !895, size: 64, offset: 576)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !31, line: 37, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !281, file: !31, line: 711, baseType: !183, size: 64, offset: 640)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !281, file: !31, line: 712, baseType: !899, size: 64, offset: 704)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !31, line: 89, size: 384, elements: !902)
!902 = !{!903, !904, !905, !909, !914, !918}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !901, file: !31, line: 90, baseType: !183, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !901, file: !31, line: 91, baseType: !376, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !901, file: !31, line: 92, baseType: !906, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!51, !279, !320}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !901, file: !31, line: 93, baseType: !910, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!144, !279, !913, !748, !755}
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !901, file: !31, line: 95, baseType: !915, size: 64, offset: 256)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !893}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !901, file: !31, line: 97, baseType: !919, size: 64, offset: 320)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !43, line: 286, size: 1472, elements: !922)
!922 = !{!923, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !921, file: !43, line: 287, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!51, !893}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !921, file: !43, line: 288, baseType: !915, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !921, file: !43, line: 289, baseType: !924, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !921, file: !43, line: 290, baseType: !924, size: 64, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !921, file: !43, line: 291, baseType: !924, size: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !921, file: !43, line: 292, baseType: !924, size: 64, offset: 320)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !921, file: !43, line: 293, baseType: !924, size: 64, offset: 384)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !921, file: !43, line: 294, baseType: !924, size: 64, offset: 448)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !921, file: !43, line: 295, baseType: !924, size: 64, offset: 512)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !921, file: !43, line: 296, baseType: !924, size: 64, offset: 576)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !921, file: !43, line: 297, baseType: !924, size: 64, offset: 640)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !921, file: !43, line: 298, baseType: !924, size: 64, offset: 704)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !921, file: !43, line: 299, baseType: !924, size: 64, offset: 768)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !921, file: !43, line: 300, baseType: !924, size: 64, offset: 832)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !921, file: !43, line: 301, baseType: !924, size: 64, offset: 896)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !921, file: !43, line: 302, baseType: !924, size: 64, offset: 960)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !921, file: !43, line: 303, baseType: !924, size: 64, offset: 1024)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !921, file: !43, line: 304, baseType: !924, size: 64, offset: 1088)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !921, file: !43, line: 305, baseType: !924, size: 64, offset: 1152)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !921, file: !43, line: 306, baseType: !924, size: 64, offset: 1216)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !921, file: !43, line: 307, baseType: !924, size: 64, offset: 1280)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !921, file: !43, line: 308, baseType: !924, size: 64, offset: 1344)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !921, file: !43, line: 309, baseType: !924, size: 64, offset: 1408)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !281, file: !31, line: 714, baseType: !950, size: 64, offset: 768)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !952)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !953, line: 80, size: 1344, elements: !954)
!953 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!954 = !{!955, !956, !957, !958, !959, !960, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1414}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !952, file: !953, line: 81, baseType: !183, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !952, file: !953, line: 82, baseType: !183, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !952, file: !953, line: 83, baseType: !376, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !952, file: !953, line: 84, baseType: !376, size: 64, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !952, file: !953, line: 85, baseType: !376, size: 64, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !952, file: !953, line: 87, baseType: !961, size: 64, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!51, !893, !964}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !25, line: 96, size: 1152, elements: !966)
!966 = !{!967, !968, !969, !1345, !1346, !1347, !1348, !1364, !1377, !1378, !1379, !1380, !1381, !1389, !1390, !1391, !1392, !1393, !1394}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !965, file: !25, line: 97, baseType: !183, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !965, file: !25, line: 98, baseType: !950, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !965, file: !25, line: 100, baseType: !970, size: 64, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !18, line: 402, size: 9216, align: 512, elements: !972)
!972 = !{!973, !974, !975, !979, !1000, !1026, !1027, !1028, !1029, !1033, !1036, !1037, !1038, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1101, !1105, !1125, !1143, !1144, !1145, !1146, !1155, !1178, !1179, !1182, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1196, !1197, !1303, !1311, !1312, !1313, !1315, !1319, !1320, !1324, !1325, !1326, !1327, !1329, !1330, !1331, !1338, !1339, !1340, !1344}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !971, file: !18, line: 403, baseType: !17, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !971, file: !18, line: 406, baseType: !234, size: 128, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !971, file: !18, line: 409, baseType: !976, size: 448, offset: 192)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 448, elements: !977)
!977 = !{!978}
!978 = !DISubrange(count: 56)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !971, file: !18, line: 417, baseType: !980, size: 768, offset: 640)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !18, line: 45, size: 768, elements: !981)
!981 = !{!982, !983, !984, !985, !988}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !980, file: !18, line: 46, baseType: !284, size: 512)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !980, file: !18, line: 47, baseType: !970, size: 64, offset: 512)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !980, file: !18, line: 48, baseType: !290, size: 64, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !980, file: !18, line: 49, baseType: !986, size: 64, offset: 640)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !18, line: 49, flags: DIFlagFwdDecl)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !980, file: !18, line: 50, baseType: !989, size: 64, offset: 704)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !991, line: 26, size: 256, elements: !992)
!991 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !990, file: !991, line: 27, baseType: !7, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !990, file: !991, line: 28, baseType: !995, size: 192, offset: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !996, line: 43, size: 192, elements: !997)
!996 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !995, file: !996, line: 44, baseType: !512, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !995, file: !996, line: 45, baseType: !234, size: 128, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !971, file: !18, line: 418, baseType: !1001, size: 64, offset: 1408)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !18, line: 53, size: 448, elements: !1003)
!1003 = !{!1004, !1005, !1010, !1014, !1018, !1022}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1002, file: !18, line: 54, baseType: !362, size: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1002, file: !18, line: 55, baseType: !1006, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!356, !1001, !1009, !144}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1002, file: !18, line: 57, baseType: !1011, size: 64, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!356, !1001, !1009, !183, !371}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1002, file: !18, line: 59, baseType: !1015, size: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !970, !183}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1002, file: !18, line: 60, baseType: !1019, size: 64, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!51, !970}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1002, file: !18, line: 61, baseType: !1023, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null, !970}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !971, file: !18, line: 419, baseType: !183, size: 64, offset: 1472)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !971, file: !18, line: 420, baseType: !183, size: 64, offset: 1536)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !971, file: !18, line: 421, baseType: !290, size: 64, offset: 1600)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !971, file: !18, line: 424, baseType: !1030, size: 64, offset: 1664)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1032)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !18, line: 424, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !971, file: !18, line: 425, baseType: !1034, size: 64, offset: 1728)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !971, file: !18, line: 426, baseType: !7, size: 32, offset: 1792)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !971, file: !18, line: 435, baseType: !578, size: 256, offset: 1856)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !971, file: !18, line: 437, baseType: !1039, size: 64, offset: 2112)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1041, line: 69, size: 320, elements: !1042)
!1041 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1042 = !{!1043, !1044, !1045, !1062, !1064, !1068, !1069}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1040, file: !1041, line: 70, baseType: !183, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1040, file: !1041, line: 71, baseType: !970, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1040, file: !1041, line: 72, baseType: !1046, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1048)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1041, line: 47, size: 256, elements: !1049)
!1049 = !{!1050, !1051, !1057, !1061}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1048, file: !1041, line: 49, baseType: !7, size: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1048, file: !1041, line: 51, baseType: !1052, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!51, !183, !1055}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1040)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1048, file: !1041, line: 53, baseType: !1058, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!51, !144, !1055}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1048, file: !1041, line: 55, baseType: !737, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1040, file: !1041, line: 73, baseType: !1063, size: 16, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1040, file: !1041, line: 74, baseType: !1065, size: 8, offset: 208)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !110, line: 16, baseType: !1066)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !112, line: 20, baseType: !1067)
!1067 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1040, file: !1041, line: 75, baseType: !120, size: 8, offset: 216)
!1069 = !DIDerivedType(tag: DW_TAG_member, scope: !1040, file: !1041, line: 76, baseType: !1070, size: 64, offset: 256)
!1070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1040, file: !1041, line: 76, size: 64, elements: !1071)
!1071 = !{!1072, !1073, !1080}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1070, file: !1041, line: 77, baseType: !124, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1070, file: !1041, line: 78, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1076)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1041, line: 86, size: 128, elements: !1077)
!1077 = !{!1078, !1079}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1076, file: !1041, line: 87, baseType: !7, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1076, file: !1041, line: 88, baseType: !144, size: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1070, file: !1041, line: 79, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1083)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1041, line: 92, size: 256, elements: !1084)
!1084 = !{!1085, !1086, !1087, !1089, !1090}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1083, file: !1041, line: 94, baseType: !7, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1083, file: !1041, line: 95, baseType: !7, size: 32, offset: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1083, file: !1041, line: 96, baseType: !1088, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1083, file: !1041, line: 97, baseType: !1046, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1083, file: !1041, line: 98, baseType: !124, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !971, file: !18, line: 438, baseType: !7, size: 32, offset: 2176)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !971, file: !18, line: 441, baseType: !7, size: 32, offset: 2208)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !971, file: !18, line: 442, baseType: !1030, size: 64, offset: 2240)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !971, file: !18, line: 443, baseType: !1034, size: 64, offset: 2304)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !971, file: !18, line: 444, baseType: !269, size: 8, offset: 2368)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !971, file: !18, line: 451, baseType: !269, size: 8, offset: 2376)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !971, file: !18, line: 454, baseType: !7, size: 32, offset: 2400)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !971, file: !18, line: 455, baseType: !1099, size: 64, offset: 2432)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !18, line: 43, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !971, file: !18, line: 458, baseType: !1102, size: 64, offset: 2496)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!51}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !971, file: !18, line: 460, baseType: !1106, size: 4032, align: 512, offset: 2560)
!1106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1107, size: 4032, elements: !1123)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !18, line: 362, size: 576, elements: !1108)
!1108 = !{!1109, !1110, !1111}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1107, file: !18, line: 363, baseType: !124, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1107, file: !18, line: 364, baseType: !7, size: 32, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1107, file: !18, line: 367, baseType: !1112, size: 448, offset: 128)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !18, line: 319, size: 448, elements: !1113)
!1113 = !{!1114, !1115}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1112, file: !18, line: 320, baseType: !970, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1112, file: !18, line: 321, baseType: !1116, size: 384, offset: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1117, line: 40, size: 384, elements: !1118)
!1117 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1118 = !{!1119}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1116, file: !1117, line: 41, baseType: !1120, size: 384, align: 64)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 384, align: 64, elements: !1121)
!1121 = !{!1122}
!1122 = !DISubrange(count: 2)
!1123 = !{!1124}
!1124 = !DISubrange(count: 7)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !971, file: !18, line: 463, baseType: !1126, size: 192, offset: 6592)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1127, line: 8, size: 192, elements: !1128)
!1127 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1128 = !{!1129, !1130, !1132}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1126, file: !1127, line: 10, baseType: !7, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1126, file: !1127, line: 11, baseType: !1131, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1126, file: !1127, line: 12, baseType: !1133, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1135, line: 59, size: 48, elements: !1136)
!1135 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1136 = !{!1137, !1138, !1139, !1140, !1141, !1142}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1134, file: !1135, line: 60, baseType: !614, size: 16)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1134, file: !1135, line: 61, baseType: !614, size: 16, offset: 16)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1134, file: !1135, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1134, file: !1135, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1134, file: !1135, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1134, file: !1135, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !971, file: !18, line: 465, baseType: !374, size: 64, offset: 6784)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !971, file: !18, line: 469, baseType: !7, size: 32, offset: 6848)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !971, file: !18, line: 470, baseType: !234, size: 128, offset: 6912)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !971, file: !18, line: 471, baseType: !1147, size: 64, offset: 7040)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1149, line: 33, size: 96, elements: !1150)
!1149 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1150 = !{!1151, !1152, !1153, !1154}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1148, file: !1149, line: 37, baseType: !51, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1148, file: !1149, line: 43, baseType: !51, size: 32, offset: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1148, file: !1149, line: 45, baseType: !229, size: 16, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1148, file: !1149, line: 47, baseType: !229, size: 16, offset: 80)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !971, file: !18, line: 476, baseType: !1156, size: 64, offset: 7104)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !18, line: 378, size: 256, elements: !1158)
!1158 = !{!1159, !1175, !1176, !1177}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1157, file: !18, line: 379, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1162, line: 204, baseType: !1163)
!1162 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1162, line: 197, size: 192, elements: !1164)
!1164 = !{!1165, !1167, !1168, !1169, !1171, !1173}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1163, file: !1162, line: 198, baseType: !1166, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1162, line: 21, baseType: !111)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1163, file: !1162, line: 199, baseType: !122, size: 8, offset: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1163, file: !1162, line: 200, baseType: !122, size: 8, offset: 40)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1163, file: !1162, line: 201, baseType: !1170, size: 16, offset: 48)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1162, line: 17, baseType: !228)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1163, file: !1162, line: 202, baseType: !1172, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1162, line: 16, baseType: !115)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1163, file: !1162, line: 203, baseType: !1174, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1162, line: 22, baseType: !115)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1157, file: !18, line: 380, baseType: !7, size: 32, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1157, file: !18, line: 381, baseType: !144, size: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1157, file: !18, line: 382, baseType: !144, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !971, file: !18, line: 477, baseType: !1157, size: 256, offset: 7168)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !971, file: !18, line: 480, baseType: !1180, size: 64, offset: 7424)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !18, line: 480, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !971, file: !18, line: 483, baseType: !1183, size: 64, offset: 7488)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !18, line: 483, flags: DIFlagFwdDecl)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !971, file: !18, line: 488, baseType: !144, size: 64, offset: 7552)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !971, file: !18, line: 492, baseType: !124, size: 64, offset: 7616)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !971, file: !18, line: 493, baseType: !7, size: 32, offset: 7680)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !971, file: !18, line: 495, baseType: !124, size: 64, offset: 7744)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !971, file: !18, line: 496, baseType: !7, size: 32, offset: 7808)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !971, file: !18, line: 499, baseType: !7, size: 32, offset: 7840)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !971, file: !18, line: 500, baseType: !1192, size: 64, offset: 7872)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1194, line: 45, baseType: !1195)
!1194 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !971, file: !18, line: 503, baseType: !7, size: 32, offset: 7936)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !971, file: !18, line: 504, baseType: !1198, size: 64, offset: 8000)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1201, line: 96, size: 192, elements: !1202)
!1201 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1202 = !{!1203, !1204, !1264, !1267}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1200, file: !1201, line: 97, baseType: !7, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1200, file: !1201, line: 98, baseType: !1205, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1201, line: 24, size: 3072, elements: !1207)
!1207 = !{!1208, !1210, !1211, !1212, !1213, !1227, !1228, !1229, !1230, !1248, !1249, !1250, !1261, !1262, !1263}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1206, file: !1201, line: 26, baseType: !1209, size: 128)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 128, elements: !1121)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1206, file: !1201, line: 27, baseType: !1209, size: 128, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1206, file: !1201, line: 28, baseType: !51, size: 32, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1206, file: !1201, line: 31, baseType: !194, size: 32, align: 512, offset: 512)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1206, file: !1201, line: 32, baseType: !1214, size: 960, offset: 576)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1215, line: 206, size: 960, elements: !1216)
!1215 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1216 = !{!1217, !1218, !1221, !1223, !1224, !1226}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1214, file: !1215, line: 207, baseType: !433, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1214, file: !1215, line: 208, baseType: !1219, size: 256, offset: 64)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1220, size: 256, elements: !559)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1214, file: !1215, line: 209, baseType: !1222, size: 256, offset: 320)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 256, elements: !559)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1214, file: !1215, line: 213, baseType: !360, size: 64, offset: 576)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1214, file: !1215, line: 215, baseType: !1225, size: 256, offset: 640)
!1225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 256, elements: !559)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1214, file: !1215, line: 216, baseType: !120, size: 8, offset: 896)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1206, file: !1201, line: 33, baseType: !374, size: 64, offset: 1536)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1206, file: !1201, line: 34, baseType: !374, size: 64, offset: 1600)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1206, file: !1201, line: 35, baseType: !269, size: 8, offset: 1664)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1206, file: !1201, line: 36, baseType: !1231, size: 320, offset: 1728)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1232, line: 11, size: 320, elements: !1233)
!1232 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1233 = !{!1234, !1241, !1242, !1247}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1231, file: !1232, line: 16, baseType: !1235, size: 128)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !127, line: 198, size: 128, elements: !1236)
!1236 = !{!1237, !1239}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1235, file: !127, line: 199, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1235, file: !127, line: 199, baseType: !1240, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1231, file: !1232, line: 17, baseType: !374, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1231, file: !1232, line: 18, baseType: !1243, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !1246}
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1231, file: !1232, line: 19, baseType: !109, size: 32, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1206, file: !1201, line: 37, baseType: !641, size: 256, offset: 2048)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1206, file: !1201, line: 38, baseType: !430, size: 128, align: 64, offset: 2304)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1206, file: !1201, line: 39, baseType: !1251, size: 64, offset: 2432)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1201, line: 49, size: 768, elements: !1253)
!1253 = !{!1254, !1255, !1256, !1257, !1258, !1259, !1260}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1252, file: !1201, line: 50, baseType: !194, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1252, file: !1201, line: 51, baseType: !1222, size: 256, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1252, file: !1201, line: 53, baseType: !1222, size: 256, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1252, file: !1201, line: 54, baseType: !374, size: 64, offset: 576)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1252, file: !1201, line: 55, baseType: !1251, size: 64, offset: 640)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1252, file: !1201, line: 56, baseType: !51, size: 32, offset: 704)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1252, file: !1201, line: 57, baseType: !51, size: 32, offset: 736)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1206, file: !1201, line: 40, baseType: !374, size: 64, offset: 2496)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1206, file: !1201, line: 42, baseType: !51, size: 32, offset: 2560)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1206, file: !1201, line: 43, baseType: !1199, size: 64, offset: 2624)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1200, file: !1201, line: 99, baseType: !1265, offset: 128)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1266, line: 211, elements: !460)
!1266 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1200, file: !1201, line: 100, baseType: !1268, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1201, line: 63, size: 3008, elements: !1270)
!1270 = !{!1271, !1272, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1302}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1269, file: !1201, line: 64, baseType: !1251, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1269, file: !1201, line: 65, baseType: !1273, size: 192, offset: 64)
!1273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1251, size: 192, elements: !325)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1269, file: !1201, line: 67, baseType: !51, size: 32, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1269, file: !1201, line: 68, baseType: !578, size: 256, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1269, file: !1201, line: 69, baseType: !194, size: 32, offset: 576)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1269, file: !1201, line: 70, baseType: !578, size: 256, offset: 640)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1269, file: !1201, line: 71, baseType: !374, size: 64, offset: 896)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1269, file: !1201, line: 72, baseType: !374, size: 64, offset: 960)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1269, file: !1201, line: 73, baseType: !374, size: 64, offset: 1024)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1269, file: !1201, line: 74, baseType: !374, size: 64, offset: 1088)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1269, file: !1201, line: 75, baseType: !374, size: 64, offset: 1152)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1269, file: !1201, line: 76, baseType: !374, size: 64, offset: 1216)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1269, file: !1201, line: 77, baseType: !374, size: 64, offset: 1280)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1269, file: !1201, line: 78, baseType: !374, size: 64, offset: 1344)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1269, file: !1201, line: 79, baseType: !269, size: 8, offset: 1408)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1269, file: !1201, line: 80, baseType: !374, size: 64, offset: 1472)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1269, file: !1201, line: 81, baseType: !578, size: 256, offset: 1536)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1269, file: !1201, line: 82, baseType: !990, size: 256, offset: 1792)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1269, file: !1201, line: 84, baseType: !214, size: 32, offset: 2048)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1269, file: !1201, line: 87, baseType: !374, size: 64, offset: 2112)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1269, file: !1201, line: 88, baseType: !374, size: 64, offset: 2176)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1269, file: !1201, line: 89, baseType: !1294, size: 704, offset: 2240)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !642, line: 111, size: 704, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1301}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1294, file: !642, line: 112, baseType: !641, size: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1294, file: !642, line: 113, baseType: !1231, size: 320, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1294, file: !642, line: 116, baseType: !1299, size: 64, offset: 576)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !642, line: 18, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1294, file: !642, line: 117, baseType: !51, size: 32, offset: 640)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1269, file: !1201, line: 90, baseType: !1199, size: 64, offset: 2944)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !971, file: !18, line: 515, baseType: !1304, size: 64, offset: 8064)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1306, line: 117, size: 128, elements: !1307)
!1306 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1307 = !{!1308, !1309, !1310}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1305, file: !1306, line: 118, baseType: !557, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1305, file: !1306, line: 119, baseType: !557, size: 32, offset: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1305, file: !1306, line: 120, baseType: !360, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !971, file: !18, line: 516, baseType: !7, size: 32, offset: 8128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !971, file: !18, line: 519, baseType: !7, size: 32, offset: 8160)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !971, file: !18, line: 520, baseType: !1314, size: 64, offset: 8192)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !971, file: !18, line: 523, baseType: !1316, size: 64, offset: 8256)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !18, line: 523, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !971, file: !18, line: 524, baseType: !7, size: 32, offset: 8320)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !971, file: !18, line: 525, baseType: !1321, size: 64, offset: 8384)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !18, line: 525, flags: DIFlagFwdDecl)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !971, file: !18, line: 526, baseType: !7, size: 32, offset: 8448)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !971, file: !18, line: 533, baseType: !124, size: 64, offset: 8512)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !971, file: !18, line: 534, baseType: !7, size: 32, offset: 8576)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !971, file: !18, line: 535, baseType: !1328, size: 64, offset: 8640)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !971, file: !18, line: 536, baseType: !7, size: 32, offset: 8704)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !971, file: !18, line: 539, baseType: !51, size: 32, offset: 8736)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !971, file: !18, line: 540, baseType: !1332, size: 64, offset: 8768)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1334, line: 32, size: 64, elements: !1335)
!1334 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1333, file: !1334, line: 33, baseType: !557, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1333, file: !1334, line: 34, baseType: !557, size: 32, offset: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !971, file: !18, line: 563, baseType: !234, size: 128, offset: 8832)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !971, file: !18, line: 565, baseType: !234, size: 128, offset: 8960)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !971, file: !18, line: 568, baseType: !1341, size: 64, offset: 9088)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{null}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !971, file: !18, line: 570, baseType: !214, size: 32, offset: 9152)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !965, file: !25, line: 101, baseType: !183, size: 64, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !965, file: !25, line: 103, baseType: !269, size: 8, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !965, file: !25, line: 104, baseType: !24, size: 32, offset: 288)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !965, file: !25, line: 106, baseType: !1349, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1351)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1352, line: 282, size: 1600, elements: !1353)
!1352 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1353 = !{!1354, !1358, !1359, !1363}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1351, file: !1352, line: 283, baseType: !1355, size: 256)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 256, elements: !1356)
!1356 = !{!1357}
!1357 = !DISubrange(count: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1351, file: !1352, line: 284, baseType: !1355, size: 256, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1351, file: !1352, line: 285, baseType: !1360, size: 1024, offset: 512)
!1360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 1024, elements: !1361)
!1361 = !{!1362}
!1362 = !DISubrange(count: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1351, file: !1352, line: 286, baseType: !277, size: 64, offset: 1536)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !965, file: !25, line: 107, baseType: !1365, size: 64, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1367)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1352, line: 217, size: 256, elements: !1368)
!1368 = !{!1369, !1373, !1375, !1376}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1367, file: !1352, line: 218, baseType: !1370, size: 128)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !1371)
!1371 = !{!1372}
!1372 = !DISubrange(count: 16)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1367, file: !1352, line: 219, baseType: !1374, size: 64, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1352, line: 15, baseType: !374)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1367, file: !1352, line: 220, baseType: !111, size: 32, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1367, file: !1352, line: 221, baseType: !111, size: 32, offset: 224)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !965, file: !25, line: 109, baseType: !924, size: 64, offset: 448)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !965, file: !25, line: 110, baseType: !915, size: 64, offset: 512)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !965, file: !25, line: 111, baseType: !924, size: 64, offset: 576)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !965, file: !25, line: 112, baseType: !915, size: 64, offset: 640)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !965, file: !25, line: 113, baseType: !1382, size: 64, offset: 704)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!51, !893, !1385}
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !43, line: 60, baseType: !1386)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !43, line: 58, size: 32, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1386, file: !43, line: 59, baseType: !51, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !965, file: !25, line: 114, baseType: !924, size: 64, offset: 768)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !965, file: !25, line: 115, baseType: !376, size: 64, offset: 832)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !965, file: !25, line: 116, baseType: !376, size: 64, offset: 896)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !965, file: !25, line: 118, baseType: !919, size: 64, offset: 960)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !965, file: !25, line: 119, baseType: !915, size: 64, offset: 1024)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !965, file: !25, line: 121, baseType: !1395, size: 64, offset: 1088)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !25, line: 121, flags: DIFlagFwdDecl)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !952, file: !953, line: 88, baseType: !906, size: 64, offset: 384)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !952, file: !953, line: 89, baseType: !924, size: 64, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !952, file: !953, line: 90, baseType: !915, size: 64, offset: 512)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !952, file: !953, line: 91, baseType: !915, size: 64, offset: 576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !952, file: !953, line: 92, baseType: !915, size: 64, offset: 640)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !952, file: !953, line: 94, baseType: !924, size: 64, offset: 704)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !952, file: !953, line: 95, baseType: !924, size: 64, offset: 768)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !952, file: !953, line: 97, baseType: !1382, size: 64, offset: 832)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !952, file: !953, line: 98, baseType: !924, size: 64, offset: 896)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !952, file: !953, line: 100, baseType: !924, size: 64, offset: 960)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !952, file: !953, line: 102, baseType: !924, size: 64, offset: 1024)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !952, file: !953, line: 103, baseType: !915, size: 64, offset: 1088)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !952, file: !953, line: 105, baseType: !919, size: 64, offset: 1152)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !952, file: !953, line: 107, baseType: !1411, size: 64, offset: 1216)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1413)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !953, line: 107, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !952, file: !953, line: 109, baseType: !269, size: 8, offset: 1280)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !281, file: !31, line: 715, baseType: !964, size: 64, offset: 832)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !281, file: !31, line: 717, baseType: !124, size: 64, offset: 896)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !281, file: !31, line: 719, baseType: !124, size: 64, offset: 960)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !281, file: !31, line: 721, baseType: !578, size: 256, offset: 1024)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !281, file: !31, line: 725, baseType: !1420, size: 448, offset: 1280)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !31, line: 517, size: 448, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1425}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1420, file: !31, line: 518, baseType: !234, size: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1420, file: !31, line: 519, baseType: !234, size: 128, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1420, file: !31, line: 520, baseType: !234, size: 128, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1420, file: !31, line: 521, baseType: !30, size: 32, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !281, file: !31, line: 726, baseType: !1427, size: 2496, offset: 1728)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !43, line: 663, size: 2496, elements: !1428)
!1428 = !{!1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1473, !1474, !1475, !1476, !1477, !1478, !1549, !1550, !1551, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1589, !1593}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1427, file: !43, line: 664, baseType: !1385, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1427, file: !43, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1427, file: !43, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1427, file: !43, line: 667, baseType: !269, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1427, file: !43, line: 668, baseType: !269, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1427, file: !43, line: 669, baseType: !269, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1427, file: !43, line: 670, baseType: !269, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1427, file: !43, line: 671, baseType: !269, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1427, file: !43, line: 672, baseType: !269, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1427, file: !43, line: 673, baseType: !269, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1427, file: !43, line: 674, baseType: !269, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1427, file: !43, line: 675, baseType: !109, size: 32, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1427, file: !43, line: 676, baseType: !194, size: 32, offset: 96)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1427, file: !43, line: 678, baseType: !234, size: 128, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1427, file: !43, line: 679, baseType: !990, size: 256, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1427, file: !43, line: 680, baseType: !1445, size: 64, offset: 512)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1447, line: 43, size: 1536, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1448 = !{!1449, !1450, !1451, !1452, !1453, !1456, !1457, !1458, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1446, file: !1447, line: 44, baseType: !183, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1446, file: !1447, line: 45, baseType: !51, size: 32, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1446, file: !1447, line: 46, baseType: !234, size: 128, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1446, file: !1447, line: 47, baseType: !194, size: 32, offset: 256)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1446, file: !1447, line: 48, baseType: !1454, size: 64, offset: 320)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !43, line: 629, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1446, file: !1447, line: 49, baseType: !1231, size: 320, offset: 384)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1446, file: !1447, line: 50, baseType: !374, size: 64, offset: 704)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1446, file: !1447, line: 51, baseType: !1459, size: 64, offset: 768)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1460, line: 29, baseType: !496)
!1460 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1446, file: !1447, line: 52, baseType: !1459, size: 64, offset: 832)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1446, file: !1447, line: 53, baseType: !1459, size: 64, offset: 896)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1446, file: !1447, line: 54, baseType: !1459, size: 64, offset: 960)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1446, file: !1447, line: 55, baseType: !1459, size: 64, offset: 1024)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1446, file: !1447, line: 56, baseType: !374, size: 64, offset: 1088)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1446, file: !1447, line: 57, baseType: !374, size: 64, offset: 1152)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1446, file: !1447, line: 58, baseType: !374, size: 64, offset: 1216)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1446, file: !1447, line: 59, baseType: !374, size: 64, offset: 1280)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1446, file: !1447, line: 60, baseType: !374, size: 64, offset: 1344)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1446, file: !1447, line: 61, baseType: !893, size: 64, offset: 1408)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1446, file: !1447, line: 62, baseType: !269, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1446, file: !1447, line: 63, baseType: !269, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1427, file: !43, line: 681, baseType: !269, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1427, file: !43, line: 682, baseType: !269, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1427, file: !43, line: 683, baseType: !269, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1427, file: !43, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1427, file: !43, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1427, file: !43, line: 690, baseType: !1479, size: 512, offset: 640)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !38, line: 118, size: 512, elements: !1480)
!1480 = !{!1481, !1487, !1488, !1493, !1545, !1546, !1547, !1548}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1479, file: !38, line: 119, baseType: !1482, size: 256)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1483, line: 9, size: 256, elements: !1484)
!1483 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1484 = !{!1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1482, file: !1483, line: 10, baseType: !680, size: 192, align: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1482, file: !1483, line: 11, baseType: !1459, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1479, file: !38, line: 120, baseType: !1459, size: 64, offset: 256)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1479, file: !38, line: 121, baseType: !1489, size: 64, offset: 320)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!37, !1492}
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1479, file: !38, line: 122, baseType: !1494, size: 64, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !38, line: 159, size: 512, align: 512, elements: !1496)
!1496 = !{!1497, !1522, !1523, !1526, !1531, !1532, !1540, !1544}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1495, file: !38, line: 160, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !38, line: 215, size: 4608, align: 512, elements: !1500)
!1500 = !{!1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1499, file: !38, line: 216, baseType: !512, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1499, file: !38, line: 217, baseType: !7, size: 32, offset: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1499, file: !38, line: 218, baseType: !7, size: 32, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1499, file: !38, line: 219, baseType: !7, size: 32, offset: 96)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1499, file: !38, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1499, file: !38, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1499, file: !38, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1499, file: !38, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1499, file: !38, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1499, file: !38, line: 226, baseType: !7, size: 32, offset: 160)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1499, file: !38, line: 227, baseType: !229, size: 16, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1499, file: !38, line: 228, baseType: !229, size: 16, offset: 208)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1499, file: !38, line: 229, baseType: !7, size: 32, offset: 224)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1499, file: !38, line: 235, baseType: !1459, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1499, file: !38, line: 236, baseType: !1492, size: 64, offset: 320)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1499, file: !38, line: 237, baseType: !1459, size: 64, offset: 384)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1499, file: !38, line: 238, baseType: !1492, size: 64, offset: 448)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1499, file: !38, line: 239, baseType: !1519, size: 4096, align: 512, offset: 512)
!1519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1495, size: 4096, align: 512, elements: !1520)
!1520 = !{!1521}
!1521 = !DISubrange(count: 8)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1495, file: !38, line: 161, baseType: !7, size: 32, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1495, file: !38, line: 162, baseType: !1524, size: 32, offset: 96)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !127, line: 32, baseType: !1525)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !358, line: 96, baseType: !51)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1495, file: !38, line: 163, baseType: !1527, size: 32, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !527, line: 274, baseType: !1528)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !527, line: 274, size: 32, elements: !1529)
!1529 = !{!1530}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1528, file: !527, line: 274, baseType: !526, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1495, file: !38, line: 164, baseType: !1492, size: 64, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1495, file: !38, line: 165, baseType: !1533, size: 128, offset: 256)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1483, line: 14, size: 128, elements: !1534)
!1534 = !{!1535}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1533, file: !1483, line: 15, baseType: !1536, size: 128)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !681, line: 26, size: 128, elements: !1537)
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1536, file: !681, line: 27, baseType: !782, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1536, file: !681, line: 28, baseType: !685, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1495, file: !38, line: 166, baseType: !1541, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!1459}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1495, file: !38, line: 167, baseType: !1459, size: 64, offset: 448)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1479, file: !38, line: 123, baseType: !120, size: 8, offset: 448)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1479, file: !38, line: 124, baseType: !120, size: 8, offset: 456)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1479, file: !38, line: 125, baseType: !120, size: 8, offset: 464)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1479, file: !38, line: 126, baseType: !120, size: 8, offset: 472)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1427, file: !43, line: 691, baseType: !114, size: 64, offset: 1152)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1427, file: !43, line: 692, baseType: !641, size: 256, offset: 1216)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1427, file: !43, line: 693, baseType: !1552, size: 192, offset: 1472)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1553, line: 41, baseType: !1554)
!1553 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1553, line: 37, size: 192, elements: !1555)
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1554, file: !1553, line: 38, baseType: !194, size: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1554, file: !1553, line: 39, baseType: !234, size: 128, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1427, file: !43, line: 694, baseType: !1454, size: 64, offset: 1664)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1427, file: !43, line: 695, baseType: !214, size: 32, offset: 1728)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1427, file: !43, line: 696, baseType: !214, size: 32, offset: 1760)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1427, file: !43, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1427, file: !43, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1427, file: !43, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1427, file: !43, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1427, file: !43, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1427, file: !43, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1427, file: !43, line: 703, baseType: !269, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1427, file: !43, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1427, file: !43, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1427, file: !43, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1427, file: !43, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1427, file: !43, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1427, file: !43, line: 709, baseType: !7, size: 32, offset: 1824)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1427, file: !43, line: 710, baseType: !42, size: 32, offset: 1856)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1427, file: !43, line: 711, baseType: !50, size: 32, offset: 1888)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1427, file: !43, line: 712, baseType: !50, size: 32, offset: 1920)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1427, file: !43, line: 713, baseType: !51, size: 32, offset: 1952)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1427, file: !43, line: 714, baseType: !51, size: 32, offset: 1984)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1427, file: !43, line: 715, baseType: !114, size: 64, offset: 2048)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1427, file: !43, line: 716, baseType: !114, size: 64, offset: 2112)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1427, file: !43, line: 717, baseType: !114, size: 64, offset: 2176)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1427, file: !43, line: 718, baseType: !114, size: 64, offset: 2240)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1427, file: !43, line: 720, baseType: !1584, size: 64, offset: 2304)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !43, line: 632, size: 64, elements: !1586)
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1585, file: !43, line: 633, baseType: !194, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1585, file: !43, line: 634, baseType: !7, size: 32, offset: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1427, file: !43, line: 721, baseType: !1590, size: 64, offset: 2368)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !893, !557}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1427, file: !43, line: 722, baseType: !1594, size: 64, offset: 2432)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !43, line: 722, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !281, file: !31, line: 727, baseType: !1597, size: 64, offset: 4224)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !43, line: 742, size: 1792, elements: !1599)
!1599 = !{!1600, !1601, !1602, !1606, !1607, !1608}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1598, file: !43, line: 743, baseType: !921, size: 1472)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1598, file: !43, line: 744, baseType: !924, size: 64, offset: 1472)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1598, file: !43, line: 745, baseType: !1603, size: 64, offset: 1536)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !893, !269}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1598, file: !43, line: 746, baseType: !924, size: 64, offset: 1600)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1598, file: !43, line: 747, baseType: !915, size: 64, offset: 1664)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1598, file: !43, line: 748, baseType: !915, size: 64, offset: 1728)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !281, file: !31, line: 736, baseType: !1610, size: 128, offset: 4288)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !31, line: 529, size: 128, elements: !1611)
!1611 = !{!1612, !1616}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1610, file: !31, line: 531, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1615, line: 13, flags: DIFlagFwdDecl)
!1615 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1610, file: !31, line: 532, baseType: !1617, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !31, line: 49, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !281, file: !31, line: 738, baseType: !1620, size: 64, offset: 4416)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1622)
!1622 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !31, line: 738, flags: DIFlagFwdDecl)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !281, file: !31, line: 740, baseType: !117, size: 64, offset: 4480)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !281, file: !31, line: 741, baseType: !114, size: 64, offset: 4544)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !281, file: !31, line: 746, baseType: !114, size: 64, offset: 4608)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !281, file: !31, line: 747, baseType: !1627, size: 64, offset: 4672)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1629)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !31, line: 747, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !281, file: !31, line: 749, baseType: !1631, size: 64, offset: 4736)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !31, line: 428, size: 128, elements: !1633)
!1633 = !{!1634, !1635, !1636}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1632, file: !31, line: 433, baseType: !7, size: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1632, file: !31, line: 434, baseType: !7, size: 32, offset: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1632, file: !31, line: 435, baseType: !374, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !281, file: !31, line: 751, baseType: !234, size: 128, offset: 4800)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !281, file: !31, line: 762, baseType: !1639, size: 64, offset: 4928)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !31, line: 762, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !281, file: !31, line: 770, baseType: !1642, offset: 4992)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1643, line: 5, elements: !460)
!1643 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !281, file: !31, line: 772, baseType: !1645, size: 64, offset: 4992)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1647, line: 18, flags: DIFlagFwdDecl)
!1647 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !281, file: !31, line: 773, baseType: !251, size: 64, offset: 5056)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !281, file: !31, line: 776, baseType: !51, size: 32, offset: 5120)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !281, file: !31, line: 778, baseType: !1651, size: 32, offset: 5152)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !127, line: 21, baseType: !1652)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !127, line: 18, baseType: !109)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !281, file: !31, line: 779, baseType: !109, size: 32, offset: 5184)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !281, file: !31, line: 781, baseType: !194, size: 32, offset: 5216)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !281, file: !31, line: 782, baseType: !234, size: 128, offset: 5248)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !281, file: !31, line: 784, baseType: !1657, size: 64, offset: 5376)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1659)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1660, line: 52, size: 768, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1661 = !{!1662, !1663, !1664, !1665, !1666, !1670, !1674, !1675, !1676, !1677, !1681, !1685}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1659, file: !1660, line: 53, baseType: !183, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1659, file: !1660, line: 55, baseType: !376, size: 64, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1659, file: !1660, line: 56, baseType: !376, size: 64, offset: 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1659, file: !1660, line: 58, baseType: !906, size: 64, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1659, file: !1660, line: 59, baseType: !1667, size: 64, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!144, !279, !913}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1659, file: !1660, line: 61, baseType: !1671, size: 64, offset: 320)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{null, !1657}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1659, file: !1660, line: 62, baseType: !915, size: 64, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1659, file: !1660, line: 64, baseType: !924, size: 64, offset: 448)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1659, file: !1660, line: 66, baseType: !713, size: 64, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1659, file: !1660, line: 67, baseType: !1678, size: 64, offset: 576)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!277, !279}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1659, file: !1660, line: 69, baseType: !1682, size: 64, offset: 640)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !279, !748, !755}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1659, file: !1660, line: 71, baseType: !919, size: 64, offset: 704)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !281, file: !31, line: 785, baseType: !376, size: 64, offset: 5440)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !281, file: !31, line: 787, baseType: !915, size: 64, offset: 5504)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !281, file: !31, line: 788, baseType: !1689, size: 64, offset: 5568)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !31, line: 46, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !281, file: !31, line: 789, baseType: !1692, size: 64, offset: 5632)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !31, line: 48, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !281, file: !31, line: 791, baseType: !1695, size: 64, offset: 5696)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !31, line: 597, size: 128, elements: !1697)
!1697 = !{!1698, !1699, !1700, !1701, !1702}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1696, file: !31, line: 598, baseType: !58, size: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1696, file: !31, line: 599, baseType: !67, size: 32, offset: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1696, file: !31, line: 600, baseType: !72, size: 32, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1696, file: !31, line: 601, baseType: !269, size: 8, offset: 96)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1696, file: !31, line: 602, baseType: !269, size: 8, offset: 104)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !281, file: !31, line: 793, baseType: !77, size: 32, offset: 5760)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !281, file: !31, line: 795, baseType: !269, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !281, file: !31, line: 796, baseType: !269, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !281, file: !31, line: 797, baseType: !269, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !281, file: !31, line: 798, baseType: !269, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !281, file: !31, line: 799, baseType: !269, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !255, file: !248, line: 131, baseType: !266, size: 64, offset: 256)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !255, file: !248, line: 133, baseType: !1711, size: 64, offset: 320)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!83, !271}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !255, file: !248, line: 134, baseType: !1715, size: 64, offset: 384)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!269, !271, !183}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !255, file: !248, line: 136, baseType: !1719, size: 64, offset: 448)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!51, !271, !183, !7, !124, !371}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !255, file: !248, line: 141, baseType: !1723, size: 64, offset: 512)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!51, !271, !183, !1314, !371}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !255, file: !248, line: 144, baseType: !1727, size: 64, offset: 576)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!183, !271}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !255, file: !248, line: 145, baseType: !1727, size: 64, offset: 640)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !255, file: !248, line: 146, baseType: !1732, size: 64, offset: 704)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!251, !271}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !255, file: !248, line: 148, baseType: !1736, size: 64, offset: 768)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!251, !271, !251}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !255, file: !248, line: 151, baseType: !1740, size: 64, offset: 832)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!251, !271, !183}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !255, file: !248, line: 153, baseType: !1744, size: 64, offset: 896)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!51, !271, !183, !183, !7, !7, !1747}
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !248, line: 94, size: 640, elements: !1749)
!1749 = !{!1750, !1751, !1752}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1748, file: !248, line: 95, baseType: !251, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1748, file: !248, line: 96, baseType: !7, size: 32, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1748, file: !248, line: 97, baseType: !1753, size: 512, offset: 128)
!1753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 512, elements: !1520)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !255, file: !248, line: 158, baseType: !1736, size: 64, offset: 960)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !255, file: !248, line: 161, baseType: !1732, size: 64, offset: 1024)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !255, file: !248, line: 163, baseType: !258, size: 64, offset: 1088)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !255, file: !248, line: 164, baseType: !1758, size: 64, offset: 1152)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!51, !271, !1761}
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !248, line: 73, size: 128, elements: !1763)
!1763 = !{!1764, !1765, !1766}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1762, file: !248, line: 74, baseType: !7, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1762, file: !248, line: 75, baseType: !7, size: 32, offset: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1762, file: !248, line: 76, baseType: !271, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !255, file: !248, line: 166, baseType: !1768, size: 64, offset: 1216)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!124, !251, !51}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !255, file: !248, line: 167, baseType: !1772, size: 64, offset: 1280)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!51, !271, !7}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !255, file: !248, line: 168, baseType: !1776, size: 64, offset: 1344)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!51, !251}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !247, file: !248, line: 44, baseType: !893, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !247, file: !248, line: 45, baseType: !234, size: 128, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !247, file: !248, line: 46, baseType: !234, size: 128, offset: 320)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !247, file: !248, line: 47, baseType: !120, size: 8, offset: 448)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !240, file: !241, line: 372, baseType: !234, size: 128, offset: 640)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !240, file: !241, line: 373, baseType: !234, size: 128, offset: 768)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !240, file: !241, line: 374, baseType: !1786, size: 32, offset: 896)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !241, line: 181, size: 32, elements: !1787)
!1787 = !{!1788, !1789, !1790, !1791, !1792, !1793}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !1786, file: !241, line: 182, baseType: !109, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1786, file: !241, line: 183, baseType: !109, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !1786, file: !241, line: 184, baseType: !109, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !1786, file: !241, line: 185, baseType: !109, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !1786, file: !241, line: 186, baseType: !109, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1786, file: !241, line: 187, baseType: !109, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !240, file: !241, line: 375, baseType: !1795, size: 32, offset: 928)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !241, line: 192, size: 32, elements: !1796)
!1796 = !{!1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !1795, file: !241, line: 193, baseType: !109, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1795, file: !241, line: 194, baseType: !109, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !1795, file: !241, line: 195, baseType: !109, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !1795, file: !241, line: 196, baseType: !109, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !1795, file: !241, line: 197, baseType: !109, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1795, file: !241, line: 198, baseType: !109, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1795, file: !241, line: 199, baseType: !109, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !1795, file: !241, line: 200, baseType: !109, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !1795, file: !241, line: 201, baseType: !109, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !1795, file: !241, line: 202, baseType: !109, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !1795, file: !241, line: 203, baseType: !109, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !1795, file: !241, line: 204, baseType: !109, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !1795, file: !241, line: 205, baseType: !109, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !1795, file: !241, line: 206, baseType: !109, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1795, file: !241, line: 207, baseType: !109, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !240, file: !241, line: 376, baseType: !1813, size: 960, offset: 960)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !241, line: 238, size: 960, elements: !1814)
!1814 = !{!1815, !1818, !1819, !1827, !1829, !1830, !1831, !1836, !1841}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !1813, file: !241, line: 239, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !241, line: 220, baseType: !1817)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 64, elements: !1520)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !1813, file: !241, line: 240, baseType: !51, size: 32, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1813, file: !241, line: 241, baseType: !1820, size: 32, offset: 96)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !241, line: 230, size: 32, elements: !1821)
!1821 = !{!1822, !1823, !1824, !1825, !1826}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !1820, file: !241, line: 231, baseType: !109, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1820, file: !241, line: 232, baseType: !109, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !1820, file: !241, line: 233, baseType: !109, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !1820, file: !241, line: 234, baseType: !109, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1820, file: !241, line: 235, baseType: !109, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1813, file: !241, line: 242, baseType: !1828, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !241, line: 221, baseType: !114)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !1813, file: !241, line: 243, baseType: !144, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1813, file: !241, line: 244, baseType: !234, size: 128, offset: 256)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !1813, file: !241, line: 245, baseType: !1832, size: 320, offset: 384)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !241, line: 222, baseType: !1833)
!1833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 320, elements: !1834)
!1834 = !{!1835}
!1835 = !DISubrange(count: 40)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !1813, file: !241, line: 246, baseType: !1837, size: 160, offset: 704)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !241, line: 223, baseType: !1838)
!1838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 160, elements: !1839)
!1839 = !{!1840}
!1840 = !DISubrange(count: 20)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !1813, file: !241, line: 247, baseType: !128, size: 64, offset: 896)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !240, file: !241, line: 377, baseType: !1843, size: 1408, offset: 1920)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !241, line: 280, size: 1408, elements: !1844)
!1844 = !{!1845, !1846, !1856, !1871}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1843, file: !241, line: 281, baseType: !51, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1843, file: !241, line: 282, baseType: !1847, size: 32, offset: 32)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !241, line: 259, size: 32, elements: !1848)
!1848 = !{!1849, !1850, !1851, !1852, !1853, !1854, !1855}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !1847, file: !241, line: 260, baseType: !109, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !1847, file: !241, line: 261, baseType: !109, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !1847, file: !241, line: 262, baseType: !109, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !1847, file: !241, line: 263, baseType: !109, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !1847, file: !241, line: 264, baseType: !109, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !1847, file: !241, line: 265, baseType: !109, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1847, file: !241, line: 266, baseType: !109, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1843, file: !241, line: 283, baseType: !1857, size: 1280, offset: 64)
!1857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1858, size: 1280, elements: !1869)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !241, line: 269, size: 256, elements: !1859)
!1859 = !{!1860, !1866, !1867, !1868}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1858, file: !241, line: 274, baseType: !1861, size: 8)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !241, line: 270, size: 8, elements: !1862)
!1862 = !{!1863, !1864, !1865}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1861, file: !241, line: 271, baseType: !120, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !1861, file: !241, line: 272, baseType: !120, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1861, file: !241, line: 273, baseType: !120, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1858, file: !241, line: 275, baseType: !51, size: 32, offset: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1858, file: !241, line: 276, baseType: !51, size: 32, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1858, file: !241, line: 277, baseType: !234, size: 128, offset: 128)
!1869 = !{!1870}
!1870 = !DISubrange(count: 5)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !1843, file: !241, line: 284, baseType: !120, size: 8, offset: 1344)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !240, file: !241, line: 378, baseType: !1873, size: 640, offset: 3328)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !241, line: 330, size: 640, elements: !1874)
!1874 = !{!1875, !1876, !1877, !1878, !1879, !1884, !1893, !1894, !1895}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1873, file: !241, line: 331, baseType: !163, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1873, file: !241, line: 332, baseType: !114, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !1873, file: !241, line: 333, baseType: !114, size: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1873, file: !241, line: 334, baseType: !234, size: 128, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1873, file: !241, line: 335, baseType: !1880, size: 8, offset: 320)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !241, line: 320, size: 8, elements: !1881)
!1881 = !{!1882, !1883}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1880, file: !241, line: 321, baseType: !120, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !1880, file: !241, line: 322, baseType: !120, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1873, file: !241, line: 336, baseType: !1885, size: 128, offset: 384)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !241, line: 325, size: 128, elements: !1886)
!1886 = !{!1887, !1892}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1885, file: !241, line: 326, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !1891}
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1885, file: !241, line: 327, baseType: !893, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1873, file: !241, line: 337, baseType: !1445, size: 64, offset: 512)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !1873, file: !241, line: 338, baseType: !51, size: 32, offset: 576)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !1873, file: !241, line: 339, baseType: !51, size: 32, offset: 608)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !240, file: !241, line: 379, baseType: !1897, size: 192, offset: 3968)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !241, line: 312, size: 192, elements: !1898)
!1898 = !{!1899, !1900, !1904, !1905}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1897, file: !241, line: 313, baseType: !51, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1897, file: !241, line: 314, baseType: !1901, size: 8, offset: 32)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !241, line: 298, size: 8, elements: !1902)
!1902 = !{!1903}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1901, file: !241, line: 299, baseType: !120, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1897, file: !241, line: 315, baseType: !51, size: 32, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1897, file: !241, line: 316, baseType: !1906, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !241, line: 302, size: 64, elements: !1908)
!1908 = !{!1909, !1914, !1915, !1916}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1907, file: !241, line: 306, baseType: !1910, size: 8)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1907, file: !241, line: 303, size: 8, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1910, file: !241, line: 304, baseType: !120, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1910, file: !241, line: 305, baseType: !120, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1907, file: !241, line: 307, baseType: !120, size: 8, offset: 8)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1907, file: !241, line: 308, baseType: !120, size: 8, offset: 16)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1907, file: !241, line: 309, baseType: !51, size: 32, offset: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !240, file: !241, line: 380, baseType: !1918, size: 64, offset: 4160)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !241, line: 212, size: 64, elements: !1919)
!1919 = !{!1920}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1918, file: !241, line: 213, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !241, line: 86, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !240, file: !241, line: 381, baseType: !1924, size: 384, offset: 4224)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !241, line: 357, size: 384, elements: !1925)
!1925 = !{!1926, !1929, !1930, !1931}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1924, file: !241, line: 358, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1924, file: !241, line: 359, baseType: !234, size: 128, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !1924, file: !241, line: 360, baseType: !1927, size: 64, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !1924, file: !241, line: 361, baseType: !234, size: 128, offset: 256)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !240, file: !241, line: 382, baseType: !1933, size: 64, offset: 4608)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !241, line: 124, size: 1216, elements: !1935)
!1935 = !{!1936, !1937, !1938, !1943, !1947, !1951, !1952, !1953}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1934, file: !241, line: 125, baseType: !1365, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1934, file: !241, line: 126, baseType: !234, size: 128, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1934, file: !241, line: 127, baseType: !1939, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!269, !183, !1942}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !1934, file: !241, line: 128, baseType: !1944, size: 64, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!51, !239, !1365}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1934, file: !241, line: 129, baseType: !1948, size: 64, offset: 320)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !239}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1934, file: !241, line: 130, baseType: !915, size: 64, offset: 384)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1934, file: !241, line: 131, baseType: !915, size: 64, offset: 448)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !1934, file: !241, line: 132, baseType: !1954, size: 704, offset: 512)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !241, line: 110, size: 704, elements: !1955)
!1955 = !{!1956, !1957, !1961, !1962, !1963}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1954, file: !241, line: 111, baseType: !284, size: 512)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !1954, file: !241, line: 112, baseType: !1958, size: 64, offset: 512)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!51, !239}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !1954, file: !241, line: 113, baseType: !1948, size: 64, offset: 576)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1954, file: !241, line: 114, baseType: !269, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !1954, file: !241, line: 115, baseType: !269, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !240, file: !241, line: 383, baseType: !1965, size: 64, offset: 4672)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !241, line: 140, size: 256, elements: !1967)
!1967 = !{!1968, !1969, !1973, !1977}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1966, file: !241, line: 141, baseType: !239, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1966, file: !241, line: 142, baseType: !1970, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!51, !239, !109}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1966, file: !241, line: 143, baseType: !1974, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !239, !109}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1966, file: !241, line: 144, baseType: !1948, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !240, file: !241, line: 384, baseType: !1979, size: 64, offset: 4736)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1981)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !241, line: 364, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !240, file: !241, line: 385, baseType: !124, size: 64, offset: 4800)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !240, file: !241, line: 386, baseType: !281, size: 5824, offset: 4864)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !240, file: !241, line: 387, baseType: !7, size: 32, offset: 10688)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !240, file: !241, line: 388, baseType: !7, size: 32, offset: 10720)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !240, file: !241, line: 389, baseType: !234, size: 128, offset: 10752)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !240, file: !241, line: 390, baseType: !578, size: 256, offset: 10880)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !240, file: !241, line: 391, baseType: !1948, size: 64, offset: 11136)
!1989 = !{!0, !1990, !1992, !1995, !1997, !1999, !2002, !2007, !2009, !2014, !2016, !2018, !2020, !2022, !2024, !2026, !2029, !2034, !2036, !2041, !2043, !2045, !2047, !2049, !2054, !2059, !2061, !2066, !2068, !2070, !2072, !2074, !2079, !2081, !2083, !2085, !2087, !2089, !2091, !2093, !2095, !2097, !2099, !2110, !2112, !2114, !2116, !2118}
!1990 = !DIGlobalVariableExpression(var: !1991, expr: !DIExpression())
!1991 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_evaluate_integer207", scope: !2, file: !3, line: 278, type: !124, isLocal: true, isDefinition: true)
!1992 = !DIGlobalVariableExpression(var: !1993, expr: !DIExpression())
!1993 = distinct !DIGlobalVariable(scope: null, file: !3, line: 285, type: !1994, isLocal: true, isDefinition: true)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 40, elements: !1869)
!1995 = !DIGlobalVariableExpression(var: !1996, expr: !DIExpression())
!1996 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_local_address208", scope: !2, file: !3, line: 292, type: !124, isLocal: true, isDefinition: true)
!1997 = !DIGlobalVariableExpression(var: !1998, expr: !DIExpression())
!1998 = distinct !DIGlobalVariable(scope: null, file: !3, line: 304, type: !1994, isLocal: true, isDefinition: true)
!1999 = !DIGlobalVariableExpression(var: !2000, expr: !DIExpression())
!2000 = distinct !DIGlobalVariable(scope: null, file: !3, line: 318, type: !2001, isLocal: true, isDefinition: true)
!2001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 24, elements: !325)
!2002 = !DIGlobalVariableExpression(var: !2003, expr: !DIExpression())
!2003 = distinct !DIGlobalVariable(scope: null, file: !3, line: 318, type: !2004, isLocal: true, isDefinition: true)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 264, elements: !2005)
!2005 = !{!2006}
!2006 = !DISubrange(count: 33)
!2007 = !DIGlobalVariableExpression(var: !2008, expr: !DIExpression())
!2008 = distinct !DIGlobalVariable(scope: null, file: !3, line: 322, type: !2001, isLocal: true, isDefinition: true)
!2009 = !DIGlobalVariableExpression(var: !2010, expr: !DIExpression())
!2010 = distinct !DIGlobalVariable(scope: null, file: !3, line: 322, type: !2011, isLocal: true, isDefinition: true)
!2011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 344, elements: !2012)
!2012 = !{!2013}
!2013 = !DISubrange(count: 43)
!2014 = !DIGlobalVariableExpression(var: !2015, expr: !DIExpression())
!2015 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_subsystem_id209", scope: !2, file: !3, line: 330, type: !124, isLocal: true, isDefinition: true)
!2016 = !DIGlobalVariableExpression(var: !2017, expr: !DIExpression())
!2017 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_evaluate_reference210", scope: !2, file: !3, line: 413, type: !124, isLocal: true, isDefinition: true)
!2018 = !DIGlobalVariableExpression(var: !2019, expr: !DIExpression())
!2019 = distinct !DIGlobalVariable(scope: null, file: !3, line: 422, type: !1994, isLocal: true, isDefinition: true)
!2020 = !DIGlobalVariableExpression(var: !2021, expr: !DIExpression())
!2021 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_physical_device_location211", scope: !2, file: !3, line: 446, type: !124, isLocal: true, isDefinition: true)
!2022 = !DIGlobalVariableExpression(var: !2023, expr: !DIExpression())
!2023 = distinct !DIGlobalVariable(scope: null, file: !3, line: 480, type: !1994, isLocal: true, isDefinition: true)
!2024 = !DIGlobalVariableExpression(var: !2025, expr: !DIExpression())
!2025 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_evaluate_ost212", scope: !2, file: !3, line: 482, type: !124, isLocal: true, isDefinition: true)
!2026 = !DIGlobalVariableExpression(var: !2027, expr: !DIExpression())
!2027 = distinct !DIGlobalVariable(scope: null, file: !3, line: 526, type: !2028, isLocal: true, isDefinition: true)
!2028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, elements: !1371)
!2029 = !DIGlobalVariableExpression(var: !2030, expr: !DIExpression())
!2030 = distinct !DIGlobalVariable(scope: null, file: !3, line: 526, type: !2031, isLocal: true, isDefinition: true)
!2031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 48, elements: !2032)
!2032 = !{!2033}
!2033 = !DISubrange(count: 6)
!2034 = !DIGlobalVariableExpression(var: !2035, expr: !DIExpression())
!2035 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_handle_printk213", scope: !2, file: !3, line: 531, type: !124, isLocal: true, isDefinition: true)
!2036 = !DIGlobalVariableExpression(var: !2037, expr: !DIExpression())
!2037 = distinct !DIGlobalVariable(scope: null, file: !3, line: 575, type: !2038, isLocal: true, isDefinition: true)
!2038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 208, elements: !2039)
!2039 = !{!2040}
!2040 = !DISubrange(count: 26)
!2041 = !DIGlobalVariableExpression(var: !2042, expr: !DIExpression())
!2042 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_evaluation_failure_warn214", scope: !2, file: !3, line: 578, type: !124, isLocal: true, isDefinition: true)
!2043 = !DIGlobalVariableExpression(var: !2044, expr: !DIExpression())
!2044 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_has_method215", scope: !2, file: !3, line: 593, type: !124, isLocal: true, isDefinition: true)
!2045 = !DIGlobalVariableExpression(var: !2046, expr: !DIExpression())
!2046 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_execute_simple_method216", scope: !2, file: !3, line: 605, type: !124, isLocal: true, isDefinition: true)
!2047 = !DIGlobalVariableExpression(var: !2048, expr: !DIExpression())
!2048 = distinct !DIGlobalVariable(scope: null, file: !3, line: 617, type: !1994, isLocal: true, isDefinition: true)
!2049 = !DIGlobalVariableExpression(var: !2050, expr: !DIExpression())
!2050 = distinct !DIGlobalVariable(scope: null, file: !3, line: 619, type: !2051, isLocal: true, isDefinition: true)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 224, elements: !2052)
!2052 = !{!2053}
!2053 = !DISubrange(count: 28)
!2054 = !DIGlobalVariableExpression(var: !2055, expr: !DIExpression())
!2055 = distinct !DIGlobalVariable(scope: null, file: !3, line: 621, type: !2056, isLocal: true, isDefinition: true)
!2056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 168, elements: !2057)
!2057 = !{!2058}
!2058 = !DISubrange(count: 21)
!2059 = !DIGlobalVariableExpression(var: !2060, expr: !DIExpression())
!2060 = distinct !DIGlobalVariable(scope: null, file: !3, line: 637, type: !1994, isLocal: true, isDefinition: true)
!2061 = !DIGlobalVariableExpression(var: !2062, expr: !DIExpression())
!2062 = distinct !DIGlobalVariable(scope: null, file: !3, line: 640, type: !2063, isLocal: true, isDefinition: true)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 240, elements: !2064)
!2064 = !{!2065}
!2065 = !DISubrange(count: 30)
!2066 = !DIGlobalVariableExpression(var: !2067, expr: !DIExpression())
!2067 = distinct !DIGlobalVariable(scope: null, file: !3, line: 643, type: !1355, isLocal: true, isDefinition: true)
!2068 = !DIGlobalVariableExpression(var: !2069, expr: !DIExpression())
!2069 = distinct !DIGlobalVariable(scope: null, file: !3, line: 671, type: !1994, isLocal: true, isDefinition: true)
!2070 = !DIGlobalVariableExpression(var: !2071, expr: !DIExpression())
!2071 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_evaluate_reg217", scope: !2, file: !3, line: 673, type: !124, isLocal: true, isDefinition: true)
!2072 = !DIGlobalVariableExpression(var: !2073, expr: !DIExpression())
!2073 = distinct !DIGlobalVariable(scope: null, file: !3, line: 716, type: !1994, isLocal: true, isDefinition: true)
!2074 = !DIGlobalVariableExpression(var: !2075, expr: !DIExpression())
!2075 = distinct !DIGlobalVariable(scope: null, file: !3, line: 721, type: !2076, isLocal: true, isDefinition: true)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 296, elements: !2077)
!2077 = !{!2078}
!2078 = !DISubrange(count: 37)
!2079 = !DIGlobalVariableExpression(var: !2080, expr: !DIExpression())
!2080 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_evaluate_dsm218", scope: !2, file: !3, line: 726, type: !124, isLocal: true, isDefinition: true)
!2081 = !DIGlobalVariableExpression(var: !2082, expr: !DIExpression())
!2082 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_check_dsm219", scope: !2, file: !3, line: 769, type: !124, isLocal: true, isDefinition: true)
!2083 = !DIGlobalVariableExpression(var: !2084, expr: !DIExpression())
!2084 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_hid_uid_match220", scope: !2, file: !3, line: 794, type: !124, isLocal: true, isDefinition: true)
!2085 = !DIGlobalVariableExpression(var: !2086, expr: !DIExpression())
!2086 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_uid_to_integer221", scope: !2, file: !3, line: 818, type: !124, isLocal: true, isDefinition: true)
!2087 = !DIGlobalVariableExpression(var: !2088, expr: !DIExpression())
!2088 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_found222", scope: !2, file: !3, line: 848, type: !124, isLocal: true, isDefinition: true)
!2089 = !DIGlobalVariableExpression(var: !2090, expr: !DIExpression())
!2090 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_present223", scope: !2, file: !3, line: 913, type: !124, isLocal: true, isDefinition: true)
!2091 = !DIGlobalVariableExpression(var: !2092, expr: !DIExpression())
!2092 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_get_next_match_dev224", scope: !2, file: !3, line: 946, type: !124, isLocal: true, isDefinition: true)
!2093 = !DIGlobalVariableExpression(var: !2094, expr: !DIExpression())
!2094 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dev_get_first_match_dev225", scope: !2, file: !3, line: 966, type: !124, isLocal: true, isDefinition: true)
!2095 = !DIGlobalVariableExpression(var: !2096, expr: !DIExpression())
!2096 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_reduced_hardware226", scope: !2, file: !3, line: 977, type: !124, isLocal: true, isDefinition: true)
!2097 = !DIGlobalVariableExpression(var: !2098, expr: !DIExpression())
!2098 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_video_backlight_string227", scope: !2, file: !3, line: 984, type: !124, isLocal: true, isDefinition: true)
!2099 = !DIGlobalVariableExpression(var: !2100, expr: !DIExpression())
!2100 = distinct !DIGlobalVariable(name: "__setup_acpi_backlight", scope: !2, file: !3, line: 992, type: !2101, isLocal: true, isDefinition: true, align: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !2102, line: 324, size: 192, elements: !2103)
!2102 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!2103 = !{!2104, !2105, !2109}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2101, file: !2102, line: 325, baseType: !183, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !2101, file: !2102, line: 326, baseType: !2106, size: 64, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!51, !144}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !2101, file: !2102, line: 327, baseType: !51, size: 32, offset: 128)
!2110 = !DIGlobalVariableExpression(var: !2111, expr: !DIExpression())
!2111 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_match_platform_list228", scope: !2, file: !3, line: 1028, type: !124, isLocal: true, isDefinition: true)
!2112 = !DIGlobalVariableExpression(var: !2113, expr: !DIExpression())
!2113 = distinct !DIGlobalVariable(name: "acpi_video_backlight_string", scope: !2, file: !3, line: 983, type: !2028, isLocal: false, isDefinition: true)
!2114 = !DIGlobalVariableExpression(var: !2115, expr: !DIExpression())
!2115 = distinct !DIGlobalVariable(scope: null, file: !97, line: 480, type: !2056, isLocal: true, isDefinition: true)
!2116 = !DIGlobalVariableExpression(var: !2117, expr: !DIExpression())
!2117 = distinct !DIGlobalVariable(scope: null, file: !3, line: 873, type: !1994, isLocal: true, isDefinition: true)
!2118 = !DIGlobalVariableExpression(var: !2119, expr: !DIExpression())
!2119 = distinct !DIGlobalVariable(name: "__setup_str_acpi_backlight", scope: !2, file: !3, line: 992, type: !2120, isLocal: true, isDefinition: true, align: 8)
!2120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 128, elements: !1371)
!2121 = !{i32 7, !"Dwarf Version", i32 5}
!2122 = !{i32 2, !"Debug Info Version", i32 3}
!2123 = !{i32 1, !"wchar_size", i32 2}
!2124 = !{i32 8, !"cf-protection-branch", i32 1}
!2125 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2126 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2127 = !{i32 1, !"Code Model", i32 2}
!2128 = !{i32 1, !"override-stack-alignment", i32 8}
!2129 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2130 = distinct !DISubprogram(name: "acpi_extract_package", scope: !3, file: !3, line: 32, type: !2131, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!107, !128, !2133, !2133}
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !108, line: 978, size: 128, elements: !2135)
!2135 = !{!2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2134, file: !108, line: 979, baseType: !113, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2134, file: !108, line: 980, baseType: !124, size: 64, offset: 64)
!2138 = !{!2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2153, !2157}
!2139 = !DILocalVariable(name: "package", arg: 1, scope: !2130, file: !3, line: 32, type: !128)
!2140 = !DILocalVariable(name: "format", arg: 2, scope: !2130, file: !3, line: 33, type: !2133)
!2141 = !DILocalVariable(name: "buffer", arg: 3, scope: !2130, file: !3, line: 33, type: !2133)
!2142 = !DILocalVariable(name: "size_required", scope: !2130, file: !3, line: 35, type: !109)
!2143 = !DILocalVariable(name: "tail_offset", scope: !2130, file: !3, line: 36, type: !109)
!2144 = !DILocalVariable(name: "format_string", scope: !2130, file: !3, line: 37, type: !144)
!2145 = !DILocalVariable(name: "format_count", scope: !2130, file: !3, line: 38, type: !109)
!2146 = !DILocalVariable(name: "i", scope: !2130, file: !3, line: 39, type: !109)
!2147 = !DILocalVariable(name: "head", scope: !2130, file: !3, line: 40, type: !119)
!2148 = !DILocalVariable(name: "tail", scope: !2130, file: !3, line: 41, type: !119)
!2149 = !DILocalVariable(name: "element", scope: !2150, file: !3, line: 74, type: !128)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 72, column: 37)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 72, column: 2)
!2152 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 72, column: 2)
!2153 = !DILocalVariable(name: "pointer", scope: !2154, file: !3, line: 165, type: !118)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 163, column: 37)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 163, column: 2)
!2156 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 163, column: 2)
!2157 = !DILocalVariable(name: "element", scope: !2154, file: !3, line: 166, type: !128)
!2158 = !DILocation(line: 32, column: 41, scope: !2130)
!2159 = !DILocation(line: 33, column: 28, scope: !2130)
!2160 = !DILocation(line: 33, column: 56, scope: !2130)
!2161 = !DILocation(line: 35, column: 2, scope: !2130)
!2162 = !DILocation(line: 35, column: 6, scope: !2130)
!2163 = !DILocation(line: 36, column: 2, scope: !2130)
!2164 = !DILocation(line: 36, column: 6, scope: !2130)
!2165 = !DILocation(line: 37, column: 2, scope: !2130)
!2166 = !DILocation(line: 37, column: 8, scope: !2130)
!2167 = !DILocation(line: 38, column: 2, scope: !2130)
!2168 = !DILocation(line: 38, column: 6, scope: !2130)
!2169 = !DILocation(line: 39, column: 2, scope: !2130)
!2170 = !DILocation(line: 39, column: 6, scope: !2130)
!2171 = !DILocation(line: 40, column: 2, scope: !2130)
!2172 = !DILocation(line: 40, column: 6, scope: !2130)
!2173 = !DILocation(line: 41, column: 2, scope: !2130)
!2174 = !DILocation(line: 41, column: 6, scope: !2130)
!2175 = !DILocation(line: 44, column: 7, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 44, column: 6)
!2177 = !DILocation(line: 44, column: 15, scope: !2176)
!2178 = !DILocation(line: 44, column: 19, scope: !2176)
!2179 = !DILocation(line: 44, column: 28, scope: !2176)
!2180 = !DILocation(line: 44, column: 33, scope: !2176)
!2181 = !DILocation(line: 45, column: 6, scope: !2176)
!2182 = !DILocation(line: 45, column: 10, scope: !2176)
!2183 = !DILocation(line: 45, column: 27, scope: !2176)
!2184 = !DILocation(line: 45, column: 33, scope: !2176)
!2185 = !DILocation(line: 44, column: 6, scope: !2130)
!2186 = !DILocation(line: 46, column: 3, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 46, column: 3)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 46, column: 3)
!2189 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 45, column: 39)
!2190 = !DILocation(line: 46, column: 3, scope: !2188)
!2191 = !DILocation(line: 47, column: 3, scope: !2189)
!2192 = !DILocation(line: 50, column: 7, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 50, column: 6)
!2194 = !DILocation(line: 50, column: 14, scope: !2193)
!2195 = !DILocation(line: 50, column: 18, scope: !2193)
!2196 = !DILocation(line: 50, column: 26, scope: !2193)
!2197 = !DILocation(line: 50, column: 34, scope: !2193)
!2198 = !DILocation(line: 50, column: 38, scope: !2193)
!2199 = !DILocation(line: 50, column: 46, scope: !2193)
!2200 = !DILocation(line: 50, column: 53, scope: !2193)
!2201 = !DILocation(line: 50, column: 6, scope: !2130)
!2202 = !DILocation(line: 51, column: 3, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 51, column: 3)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 51, column: 3)
!2205 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 50, column: 59)
!2206 = !DILocation(line: 51, column: 3, scope: !2204)
!2207 = !DILocation(line: 52, column: 3, scope: !2205)
!2208 = !DILocation(line: 55, column: 7, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 55, column: 6)
!2210 = !DILocation(line: 55, column: 6, scope: !2130)
!2211 = !DILocation(line: 56, column: 3, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 56, column: 3)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 56, column: 3)
!2214 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 55, column: 15)
!2215 = !DILocation(line: 56, column: 3, scope: !2213)
!2216 = !DILocation(line: 57, column: 3, scope: !2214)
!2217 = !DILocation(line: 60, column: 18, scope: !2130)
!2218 = !DILocation(line: 60, column: 26, scope: !2130)
!2219 = !DILocation(line: 60, column: 33, scope: !2130)
!2220 = !DILocation(line: 60, column: 49, scope: !2130)
!2221 = !DILocation(line: 60, column: 17, scope: !2130)
!2222 = !DILocation(line: 60, column: 15, scope: !2130)
!2223 = !DILocation(line: 61, column: 6, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 61, column: 6)
!2225 = !DILocation(line: 61, column: 21, scope: !2224)
!2226 = !DILocation(line: 61, column: 38, scope: !2224)
!2227 = !DILocation(line: 61, column: 19, scope: !2224)
!2228 = !DILocation(line: 61, column: 6, scope: !2130)
!2229 = !DILocation(line: 62, column: 3, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 62, column: 3)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 62, column: 3)
!2232 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 61, column: 45)
!2233 = !DILocation(line: 62, column: 3, scope: !2231)
!2234 = !DILocation(line: 64, column: 3, scope: !2232)
!2235 = !DILocation(line: 67, column: 18, scope: !2130)
!2236 = !DILocation(line: 67, column: 26, scope: !2130)
!2237 = !DILocation(line: 67, column: 16, scope: !2130)
!2238 = !DILocation(line: 72, column: 9, scope: !2152)
!2239 = !DILocation(line: 72, column: 7, scope: !2152)
!2240 = !DILocation(line: 72, column: 14, scope: !2151)
!2241 = !DILocation(line: 72, column: 18, scope: !2151)
!2242 = !DILocation(line: 72, column: 16, scope: !2151)
!2243 = !DILocation(line: 72, column: 2, scope: !2152)
!2244 = !DILocation(line: 74, column: 3, scope: !2150)
!2245 = !DILocation(line: 74, column: 22, scope: !2150)
!2246 = !DILocation(line: 74, column: 34, scope: !2150)
!2247 = !DILocation(line: 74, column: 51, scope: !2150)
!2248 = !DILocation(line: 74, column: 60, scope: !2150)
!2249 = !DILocation(line: 76, column: 11, scope: !2150)
!2250 = !DILocation(line: 76, column: 20, scope: !2150)
!2251 = !DILocation(line: 76, column: 3, scope: !2150)
!2252 = !DILocation(line: 79, column: 12, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 76, column: 26)
!2254 = !DILocation(line: 79, column: 26, scope: !2253)
!2255 = !DILocation(line: 79, column: 4, scope: !2253)
!2256 = !DILocation(line: 81, column: 19, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 79, column: 30)
!2258 = !DILocation(line: 82, column: 17, scope: !2257)
!2259 = !DILocation(line: 83, column: 5, scope: !2257)
!2260 = !DILocation(line: 85, column: 19, scope: !2257)
!2261 = !DILocation(line: 88, column: 17, scope: !2257)
!2262 = !DILocation(line: 89, column: 5, scope: !2257)
!2263 = !DILocation(line: 91, column: 5, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 91, column: 5)
!2265 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 91, column: 5)
!2266 = !DILocation(line: 91, column: 5, scope: !2265)
!2267 = !DILocation(line: 93, column: 5, scope: !2257)
!2268 = !DILocation(line: 95, column: 4, scope: !2253)
!2269 = !DILocation(line: 99, column: 12, scope: !2253)
!2270 = !DILocation(line: 99, column: 26, scope: !2253)
!2271 = !DILocation(line: 99, column: 4, scope: !2253)
!2272 = !DILocation(line: 103, column: 10, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 99, column: 30)
!2274 = !DILocation(line: 103, column: 26, scope: !2273)
!2275 = !DILocation(line: 103, column: 33, scope: !2273)
!2276 = !DILocation(line: 102, column: 24, scope: !2273)
!2277 = !DILocation(line: 103, column: 49, scope: !2273)
!2278 = !DILocation(line: 101, column: 19, scope: !2273)
!2279 = !DILocation(line: 105, column: 17, scope: !2273)
!2280 = !DILocation(line: 106, column: 5, scope: !2273)
!2281 = !DILocation(line: 109, column: 24, scope: !2273)
!2282 = !DILocation(line: 109, column: 40, scope: !2273)
!2283 = !DILocation(line: 109, column: 22, scope: !2273)
!2284 = !DILocation(line: 108, column: 19, scope: !2273)
!2285 = !DILocation(line: 110, column: 17, scope: !2273)
!2286 = !DILocation(line: 111, column: 5, scope: !2273)
!2287 = !DILocation(line: 113, column: 5, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 113, column: 5)
!2289 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 113, column: 5)
!2290 = !DILocation(line: 113, column: 5, scope: !2289)
!2291 = !DILocation(line: 115, column: 5, scope: !2273)
!2292 = !DILocation(line: 117, column: 4, scope: !2253)
!2293 = !DILocation(line: 119, column: 12, scope: !2253)
!2294 = !DILocation(line: 119, column: 26, scope: !2253)
!2295 = !DILocation(line: 119, column: 4, scope: !2253)
!2296 = !DILocation(line: 121, column: 19, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 119, column: 30)
!2298 = !DILocation(line: 122, column: 17, scope: !2297)
!2299 = !DILocation(line: 123, column: 5, scope: !2297)
!2300 = !DILocation(line: 125, column: 5, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 125, column: 5)
!2302 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 125, column: 5)
!2303 = !DILocation(line: 125, column: 5, scope: !2302)
!2304 = !DILocation(line: 127, column: 5, scope: !2297)
!2305 = !DILocation(line: 129, column: 4, scope: !2253)
!2306 = !DILocation(line: 131, column: 3, scope: !2253)
!2307 = !DILocation(line: 133, column: 4, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !3, line: 133, column: 4)
!2309 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 133, column: 4)
!2310 = !DILocation(line: 133, column: 4, scope: !2309)
!2311 = !DILocation(line: 135, column: 4, scope: !2253)
!2312 = !DILocation(line: 137, column: 2, scope: !2151)
!2313 = !DILocation(line: 137, column: 2, scope: !2150)
!2314 = !DILocation(line: 72, column: 33, scope: !2151)
!2315 = !DILocation(line: 72, column: 2, scope: !2151)
!2316 = distinct !{!2316, !2243, !2317, !2318, !2319}
!2317 = !DILocation(line: 137, column: 2, scope: !2152)
!2318 = !{!"llvm.loop.mustprogress"}
!2319 = !{!"llvm.loop.unroll.disable"}
!2320 = !DILocation(line: 142, column: 6, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 142, column: 6)
!2322 = !DILocation(line: 142, column: 14, scope: !2321)
!2323 = !DILocation(line: 142, column: 21, scope: !2321)
!2324 = !DILocation(line: 142, column: 6, scope: !2130)
!2325 = !DILocation(line: 143, column: 21, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 142, column: 46)
!2327 = !DILocation(line: 143, column: 3, scope: !2326)
!2328 = !DILocation(line: 143, column: 11, scope: !2326)
!2329 = !DILocation(line: 143, column: 19, scope: !2326)
!2330 = !DILocation(line: 144, column: 8, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 144, column: 7)
!2332 = !DILocation(line: 144, column: 16, scope: !2331)
!2333 = !DILocation(line: 144, column: 7, scope: !2326)
!2334 = !DILocation(line: 145, column: 4, scope: !2331)
!2335 = !DILocation(line: 146, column: 20, scope: !2326)
!2336 = !DILocation(line: 146, column: 3, scope: !2326)
!2337 = !DILocation(line: 146, column: 11, scope: !2326)
!2338 = !DILocation(line: 146, column: 18, scope: !2326)
!2339 = !DILocation(line: 147, column: 2, scope: !2326)
!2340 = !DILocation(line: 148, column: 7, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 148, column: 7)
!2342 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 147, column: 9)
!2343 = !DILocation(line: 148, column: 15, scope: !2341)
!2344 = !DILocation(line: 148, column: 24, scope: !2341)
!2345 = !DILocation(line: 148, column: 22, scope: !2341)
!2346 = !DILocation(line: 148, column: 7, scope: !2342)
!2347 = !DILocation(line: 149, column: 21, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 148, column: 39)
!2349 = !DILocation(line: 149, column: 4, scope: !2348)
!2350 = !DILocation(line: 149, column: 12, scope: !2348)
!2351 = !DILocation(line: 149, column: 19, scope: !2348)
!2352 = !DILocation(line: 150, column: 4, scope: !2348)
!2353 = !DILocation(line: 151, column: 14, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 151, column: 14)
!2355 = !DILocation(line: 151, column: 22, scope: !2354)
!2356 = !DILocation(line: 151, column: 32, scope: !2354)
!2357 = !DILocation(line: 151, column: 29, scope: !2354)
!2358 = !DILocation(line: 151, column: 46, scope: !2354)
!2359 = !DILocation(line: 152, column: 8, scope: !2354)
!2360 = !DILocation(line: 152, column: 16, scope: !2354)
!2361 = !DILocation(line: 151, column: 14, scope: !2341)
!2362 = !DILocation(line: 153, column: 4, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 152, column: 25)
!2364 = !DILocation(line: 157, column: 9, scope: !2130)
!2365 = !DILocation(line: 157, column: 17, scope: !2130)
!2366 = !DILocation(line: 157, column: 7, scope: !2130)
!2367 = !DILocation(line: 158, column: 9, scope: !2130)
!2368 = !DILocation(line: 158, column: 17, scope: !2130)
!2369 = !DILocation(line: 158, column: 27, scope: !2130)
!2370 = !DILocation(line: 158, column: 25, scope: !2130)
!2371 = !DILocation(line: 158, column: 7, scope: !2130)
!2372 = !DILocation(line: 163, column: 9, scope: !2156)
!2373 = !DILocation(line: 163, column: 7, scope: !2156)
!2374 = !DILocation(line: 163, column: 14, scope: !2155)
!2375 = !DILocation(line: 163, column: 18, scope: !2155)
!2376 = !DILocation(line: 163, column: 16, scope: !2155)
!2377 = !DILocation(line: 163, column: 2, scope: !2156)
!2378 = !DILocation(line: 165, column: 3, scope: !2154)
!2379 = !DILocation(line: 165, column: 8, scope: !2154)
!2380 = !DILocation(line: 166, column: 3, scope: !2154)
!2381 = !DILocation(line: 166, column: 22, scope: !2154)
!2382 = !DILocation(line: 166, column: 34, scope: !2154)
!2383 = !DILocation(line: 166, column: 51, scope: !2154)
!2384 = !DILocation(line: 166, column: 60, scope: !2154)
!2385 = !DILocation(line: 168, column: 11, scope: !2154)
!2386 = !DILocation(line: 168, column: 20, scope: !2154)
!2387 = !DILocation(line: 168, column: 3, scope: !2154)
!2388 = !DILocation(line: 171, column: 12, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 168, column: 26)
!2390 = !DILocation(line: 171, column: 26, scope: !2389)
!2391 = !DILocation(line: 171, column: 4, scope: !2389)
!2392 = !DILocation(line: 174, column: 9, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 171, column: 30)
!2394 = !DILocation(line: 174, column: 26, scope: !2393)
!2395 = !DILocation(line: 173, column: 15, scope: !2393)
!2396 = !DILocation(line: 173, column: 21, scope: !2393)
!2397 = !DILocation(line: 175, column: 10, scope: !2393)
!2398 = !DILocation(line: 176, column: 5, scope: !2393)
!2399 = !DILocation(line: 178, column: 23, scope: !2393)
!2400 = !DILocation(line: 178, column: 13, scope: !2393)
!2401 = !DILocation(line: 179, column: 16, scope: !2393)
!2402 = !DILocation(line: 179, column: 6, scope: !2393)
!2403 = !DILocation(line: 179, column: 14, scope: !2393)
!2404 = !DILocation(line: 181, column: 9, scope: !2393)
!2405 = !DILocation(line: 181, column: 26, scope: !2393)
!2406 = !DILocation(line: 180, column: 15, scope: !2393)
!2407 = !DILocation(line: 180, column: 21, scope: !2393)
!2408 = !DILocation(line: 182, column: 10, scope: !2393)
!2409 = !DILocation(line: 183, column: 10, scope: !2393)
!2410 = !DILocation(line: 185, column: 6, scope: !2393)
!2411 = !DILocation(line: 185, column: 11, scope: !2393)
!2412 = !DILocation(line: 186, column: 10, scope: !2393)
!2413 = !DILocation(line: 187, column: 5, scope: !2393)
!2414 = !DILocation(line: 190, column: 5, scope: !2393)
!2415 = !DILocation(line: 192, column: 4, scope: !2389)
!2416 = !DILocation(line: 196, column: 12, scope: !2389)
!2417 = !DILocation(line: 196, column: 26, scope: !2389)
!2418 = !DILocation(line: 196, column: 4, scope: !2389)
!2419 = !DILocation(line: 198, column: 23, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 196, column: 30)
!2421 = !DILocation(line: 198, column: 13, scope: !2420)
!2422 = !DILocation(line: 199, column: 16, scope: !2420)
!2423 = !DILocation(line: 199, column: 6, scope: !2420)
!2424 = !DILocation(line: 199, column: 14, scope: !2420)
!2425 = !DILocation(line: 200, column: 12, scope: !2420)
!2426 = !DILocation(line: 200, column: 18, scope: !2420)
!2427 = !DILocation(line: 200, column: 34, scope: !2420)
!2428 = !DILocation(line: 201, column: 12, scope: !2420)
!2429 = !DILocation(line: 201, column: 28, scope: !2420)
!2430 = !DILocation(line: 200, column: 5, scope: !2420)
!2431 = !DILocation(line: 202, column: 10, scope: !2420)
!2432 = !DILocation(line: 203, column: 13, scope: !2420)
!2433 = !DILocation(line: 203, column: 29, scope: !2420)
!2434 = !DILocation(line: 203, column: 36, scope: !2420)
!2435 = !DILocation(line: 203, column: 10, scope: !2420)
!2436 = !DILocation(line: 205, column: 6, scope: !2420)
!2437 = !DILocation(line: 205, column: 11, scope: !2420)
!2438 = !DILocation(line: 206, column: 10, scope: !2420)
!2439 = !DILocation(line: 207, column: 5, scope: !2420)
!2440 = !DILocation(line: 209, column: 23, scope: !2420)
!2441 = !DILocation(line: 209, column: 13, scope: !2420)
!2442 = !DILocation(line: 210, column: 16, scope: !2420)
!2443 = !DILocation(line: 210, column: 6, scope: !2420)
!2444 = !DILocation(line: 210, column: 14, scope: !2420)
!2445 = !DILocation(line: 211, column: 12, scope: !2420)
!2446 = !DILocation(line: 211, column: 18, scope: !2420)
!2447 = !DILocation(line: 211, column: 34, scope: !2420)
!2448 = !DILocation(line: 212, column: 12, scope: !2420)
!2449 = !DILocation(line: 212, column: 28, scope: !2420)
!2450 = !DILocation(line: 211, column: 5, scope: !2420)
!2451 = !DILocation(line: 213, column: 10, scope: !2420)
!2452 = !DILocation(line: 214, column: 13, scope: !2420)
!2453 = !DILocation(line: 214, column: 29, scope: !2420)
!2454 = !DILocation(line: 214, column: 10, scope: !2420)
!2455 = !DILocation(line: 215, column: 5, scope: !2420)
!2456 = !DILocation(line: 218, column: 5, scope: !2420)
!2457 = !DILocation(line: 220, column: 4, scope: !2389)
!2458 = !DILocation(line: 222, column: 12, scope: !2389)
!2459 = !DILocation(line: 222, column: 26, scope: !2389)
!2460 = !DILocation(line: 222, column: 4, scope: !2389)
!2461 = !DILocation(line: 225, column: 17, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 222, column: 30)
!2463 = !DILocation(line: 225, column: 36, scope: !2462)
!2464 = !DILocation(line: 224, column: 15, scope: !2462)
!2465 = !DILocation(line: 224, column: 20, scope: !2462)
!2466 = !DILocation(line: 226, column: 10, scope: !2462)
!2467 = !DILocation(line: 227, column: 5, scope: !2462)
!2468 = !DILocation(line: 230, column: 5, scope: !2462)
!2469 = !DILocation(line: 232, column: 4, scope: !2389)
!2470 = !DILocation(line: 233, column: 3, scope: !2389)
!2471 = !DILocation(line: 237, column: 4, scope: !2389)
!2472 = !DILocation(line: 239, column: 2, scope: !2155)
!2473 = !DILocation(line: 239, column: 2, scope: !2154)
!2474 = !DILocation(line: 163, column: 33, scope: !2155)
!2475 = !DILocation(line: 163, column: 2, scope: !2155)
!2476 = distinct !{!2476, !2377, !2477, !2318, !2319}
!2477 = !DILocation(line: 239, column: 2, scope: !2156)
!2478 = !DILocation(line: 241, column: 2, scope: !2130)
!2479 = !DILocation(line: 242, column: 1, scope: !2130)
!2480 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !2481, file: !2481, line: 55, type: !2482, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2484)
!2481 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!124, !113}
!2484 = !{!2485, !2486, !2488, !2491, !2492, !2495}
!2485 = !DILocalVariable(name: "size", arg: 1, scope: !2480, file: !2481, line: 55, type: !113)
!2486 = !DILocalVariable(name: "_flags", scope: !2487, file: !2481, line: 57, type: !374)
!2487 = distinct !DILexicalBlock(scope: !2480, file: !2481, line: 57, column: 23)
!2488 = !DILocalVariable(name: "__dummy", scope: !2489, file: !2481, line: 57, type: !374)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !2481, line: 57, column: 23)
!2490 = distinct !DILexicalBlock(scope: !2487, file: !2481, line: 57, column: 23)
!2491 = !DILocalVariable(name: "__dummy2", scope: !2489, file: !2481, line: 57, type: !374)
!2492 = !DILocalVariable(name: "__dummy", scope: !2493, file: !2481, line: 57, type: !374)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !2481, line: 57, column: 23)
!2494 = distinct !DILexicalBlock(scope: !2487, file: !2481, line: 57, column: 23)
!2495 = !DILocalVariable(name: "__dummy2", scope: !2493, file: !2481, line: 57, type: !374)
!2496 = !DILocation(line: 55, column: 55, scope: !2480)
!2497 = !DILocation(line: 57, column: 17, scope: !2480)
!2498 = !DILocation(line: 57, column: 23, scope: !2487)
!2499 = !DILocation(line: 57, column: 23, scope: !2489)
!2500 = !DILocation(line: 57, column: 23, scope: !2490)
!2501 = !DILocation(line: 57, column: 23, scope: !2493)
!2502 = !DILocation(line: 57, column: 23, scope: !2494)
!2503 = !DILocation(line: 57, column: 23, scope: !2480)
!2504 = !DILocation(line: 57, column: 9, scope: !2480)
!2505 = !DILocation(line: 57, column: 2, scope: !2480)
!2506 = distinct !DISubprogram(name: "acpi_evaluate_integer", scope: !3, file: !3, line: 247, type: !2507, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2516)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!107, !163, !2509, !2510, !2515}
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !108, line: 423, baseType: !144)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !108, line: 956, size: 128, elements: !2512)
!2512 = !{!2513, !2514}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2511, file: !108, line: 957, baseType: !109, size: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2511, file: !108, line: 958, baseType: !128, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!2516 = !{!2517, !2518, !2519, !2520, !2521, !2522, !2523}
!2517 = !DILocalVariable(name: "handle", arg: 1, scope: !2506, file: !3, line: 247, type: !163)
!2518 = !DILocalVariable(name: "pathname", arg: 2, scope: !2506, file: !3, line: 248, type: !2509)
!2519 = !DILocalVariable(name: "arguments", arg: 3, scope: !2506, file: !3, line: 249, type: !2510)
!2520 = !DILocalVariable(name: "data", arg: 4, scope: !2506, file: !3, line: 249, type: !2515)
!2521 = !DILocalVariable(name: "status", scope: !2506, file: !3, line: 251, type: !107)
!2522 = !DILocalVariable(name: "element", scope: !2506, file: !3, line: 252, type: !129)
!2523 = !DILocalVariable(name: "buffer", scope: !2506, file: !3, line: 253, type: !2134)
!2524 = !DILocation(line: 247, column: 35, scope: !2506)
!2525 = !DILocation(line: 248, column: 21, scope: !2506)
!2526 = !DILocation(line: 249, column: 34, scope: !2506)
!2527 = !DILocation(line: 249, column: 65, scope: !2506)
!2528 = !DILocation(line: 251, column: 2, scope: !2506)
!2529 = !DILocation(line: 251, column: 14, scope: !2506)
!2530 = !DILocation(line: 252, column: 2, scope: !2506)
!2531 = !DILocation(line: 252, column: 20, scope: !2506)
!2532 = !DILocation(line: 253, column: 2, scope: !2506)
!2533 = !DILocation(line: 253, column: 21, scope: !2506)
!2534 = !DILocation(line: 255, column: 7, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 255, column: 6)
!2536 = !DILocation(line: 255, column: 6, scope: !2506)
!2537 = !DILocation(line: 256, column: 3, scope: !2535)
!2538 = !DILocation(line: 258, column: 9, scope: !2506)
!2539 = !DILocation(line: 258, column: 16, scope: !2506)
!2540 = !DILocation(line: 259, column: 9, scope: !2506)
!2541 = !DILocation(line: 259, column: 17, scope: !2506)
!2542 = !DILocation(line: 260, column: 32, scope: !2506)
!2543 = !DILocation(line: 260, column: 40, scope: !2506)
!2544 = !DILocation(line: 260, column: 50, scope: !2506)
!2545 = !DILocation(line: 260, column: 11, scope: !2506)
!2546 = !DILocation(line: 260, column: 9, scope: !2506)
!2547 = !DILocation(line: 261, column: 6, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 261, column: 6)
!2549 = !DILocation(line: 261, column: 6, scope: !2506)
!2550 = !DILocation(line: 262, column: 24, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 261, column: 28)
!2552 = !DILocation(line: 262, column: 32, scope: !2551)
!2553 = !DILocation(line: 262, column: 42, scope: !2551)
!2554 = !DILocation(line: 262, column: 3, scope: !2551)
!2555 = !DILocation(line: 263, column: 10, scope: !2551)
!2556 = !DILocation(line: 263, column: 3, scope: !2551)
!2557 = !DILocation(line: 266, column: 14, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 266, column: 6)
!2559 = !DILocation(line: 266, column: 19, scope: !2558)
!2560 = !DILocation(line: 266, column: 6, scope: !2506)
!2561 = !DILocation(line: 267, column: 24, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 266, column: 41)
!2563 = !DILocation(line: 267, column: 32, scope: !2562)
!2564 = !DILocation(line: 267, column: 3, scope: !2562)
!2565 = !DILocation(line: 268, column: 3, scope: !2562)
!2566 = !DILocation(line: 271, column: 26, scope: !2506)
!2567 = !DILocation(line: 271, column: 3, scope: !2506)
!2568 = !DILocation(line: 271, column: 8, scope: !2506)
!2569 = !DILocation(line: 273, column: 2, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 273, column: 2)
!2571 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 273, column: 2)
!2572 = !DILocation(line: 273, column: 2, scope: !2571)
!2573 = !DILocation(line: 275, column: 2, scope: !2506)
!2574 = !DILocation(line: 276, column: 1, scope: !2506)
!2575 = !DISubprogram(name: "acpi_evaluate_object", scope: !2576, file: !2576, line: 549, type: !2577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2576 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!107, !163, !2509, !2510, !2133}
!2579 = distinct !DISubprogram(name: "acpi_util_eval_error", scope: !3, file: !3, line: 26, type: !2580, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2582)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{null, !163, !2509, !107}
!2582 = !{!2583, !2584, !2585}
!2583 = !DILocalVariable(name: "h", arg: 1, scope: !2579, file: !3, line: 26, type: !163)
!2584 = !DILocalVariable(name: "p", arg: 2, scope: !2579, file: !3, line: 26, type: !2509)
!2585 = !DILocalVariable(name: "s", arg: 3, scope: !2579, file: !3, line: 26, type: !107)
!2586 = !DILocation(line: 26, column: 46, scope: !2579)
!2587 = !DILocation(line: 26, column: 61, scope: !2579)
!2588 = !DILocation(line: 26, column: 76, scope: !2579)
!2589 = !DILocation(line: 28, column: 2, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 28, column: 2)
!2591 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 28, column: 2)
!2592 = !DILocation(line: 28, column: 2, scope: !2591)
!2593 = !DILocation(line: 29, column: 1, scope: !2579)
!2594 = distinct !DISubprogram(name: "acpi_get_local_address", scope: !3, file: !3, line: 280, type: !2595, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2598)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!51, !163, !2597}
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2598 = !{!2599, !2600, !2601, !2602}
!2599 = !DILocalVariable(name: "handle", arg: 1, scope: !2594, file: !3, line: 280, type: !163)
!2600 = !DILocalVariable(name: "addr", arg: 2, scope: !2594, file: !3, line: 280, type: !2597)
!2601 = !DILocalVariable(name: "adr", scope: !2594, file: !3, line: 282, type: !116)
!2602 = !DILocalVariable(name: "status", scope: !2594, file: !3, line: 283, type: !107)
!2603 = !DILocation(line: 280, column: 40, scope: !2594)
!2604 = !DILocation(line: 280, column: 53, scope: !2594)
!2605 = !DILocation(line: 282, column: 2, scope: !2594)
!2606 = !DILocation(line: 282, column: 21, scope: !2594)
!2607 = !DILocation(line: 283, column: 2, scope: !2594)
!2608 = !DILocation(line: 283, column: 14, scope: !2594)
!2609 = !DILocation(line: 285, column: 33, scope: !2594)
!2610 = !DILocation(line: 285, column: 11, scope: !2594)
!2611 = !DILocation(line: 285, column: 9, scope: !2594)
!2612 = !DILocation(line: 286, column: 6, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 286, column: 6)
!2614 = !DILocation(line: 286, column: 6, scope: !2594)
!2615 = !DILocation(line: 287, column: 3, scope: !2613)
!2616 = !DILocation(line: 289, column: 15, scope: !2594)
!2617 = !DILocation(line: 289, column: 10, scope: !2594)
!2618 = !DILocation(line: 289, column: 3, scope: !2594)
!2619 = !DILocation(line: 289, column: 8, scope: !2594)
!2620 = !DILocation(line: 290, column: 2, scope: !2594)
!2621 = !DILocation(line: 291, column: 1, scope: !2594)
!2622 = distinct !DISubprogram(name: "acpi_get_subsystem_id", scope: !3, file: !3, line: 296, type: !2623, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!183, !163}
!2625 = !{!2626, !2627, !2628, !2629, !2630, !2631}
!2626 = !DILocalVariable(name: "handle", arg: 1, scope: !2622, file: !3, line: 296, type: !163)
!2627 = !DILocalVariable(name: "buffer", scope: !2622, file: !3, line: 298, type: !2134)
!2628 = !DILocalVariable(name: "obj", scope: !2622, file: !3, line: 299, type: !128)
!2629 = !DILocalVariable(name: "status", scope: !2622, file: !3, line: 300, type: !107)
!2630 = !DILocalVariable(name: "sub", scope: !2622, file: !3, line: 301, type: !183)
!2631 = !DILocalVariable(name: "len", scope: !2622, file: !3, line: 302, type: !371)
!2632 = !DILocation(line: 296, column: 47, scope: !2622)
!2633 = !DILocation(line: 298, column: 2, scope: !2622)
!2634 = !DILocation(line: 298, column: 21, scope: !2622)
!2635 = !DILocation(line: 299, column: 2, scope: !2622)
!2636 = !DILocation(line: 299, column: 21, scope: !2622)
!2637 = !DILocation(line: 300, column: 2, scope: !2622)
!2638 = !DILocation(line: 300, column: 14, scope: !2622)
!2639 = !DILocation(line: 301, column: 2, scope: !2622)
!2640 = !DILocation(line: 301, column: 14, scope: !2622)
!2641 = !DILocation(line: 302, column: 2, scope: !2622)
!2642 = !DILocation(line: 302, column: 9, scope: !2622)
!2643 = !DILocation(line: 304, column: 32, scope: !2622)
!2644 = !DILocation(line: 304, column: 11, scope: !2622)
!2645 = !DILocation(line: 304, column: 9, scope: !2622)
!2646 = !DILocation(line: 305, column: 6, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 305, column: 6)
!2648 = !DILocation(line: 305, column: 6, scope: !2622)
!2649 = !DILocation(line: 306, column: 3, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 306, column: 3)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 306, column: 3)
!2652 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 305, column: 28)
!2653 = !DILocation(line: 306, column: 3, scope: !2651)
!2654 = !DILocation(line: 307, column: 10, scope: !2652)
!2655 = !DILocation(line: 307, column: 3, scope: !2652)
!2656 = !DILocation(line: 310, column: 15, scope: !2622)
!2657 = !DILocation(line: 310, column: 6, scope: !2622)
!2658 = !DILocation(line: 311, column: 6, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 311, column: 6)
!2660 = !DILocation(line: 311, column: 11, scope: !2659)
!2661 = !DILocation(line: 311, column: 16, scope: !2659)
!2662 = !DILocation(line: 311, column: 6, scope: !2622)
!2663 = !DILocation(line: 312, column: 16, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 311, column: 37)
!2665 = !DILocation(line: 312, column: 28, scope: !2664)
!2666 = !DILocation(line: 312, column: 9, scope: !2664)
!2667 = !DILocation(line: 312, column: 7, scope: !2664)
!2668 = !DILocation(line: 313, column: 7, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 313, column: 7)
!2670 = !DILocation(line: 313, column: 11, scope: !2669)
!2671 = !DILocation(line: 313, column: 35, scope: !2669)
!2672 = !DILocation(line: 313, column: 38, scope: !2669)
!2673 = !DILocation(line: 313, column: 42, scope: !2669)
!2674 = !DILocation(line: 313, column: 7, scope: !2664)
!2675 = !DILocation(line: 314, column: 18, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 313, column: 47)
!2677 = !DILocation(line: 314, column: 30, scope: !2676)
!2678 = !DILocation(line: 314, column: 10, scope: !2676)
!2679 = !DILocation(line: 314, column: 8, scope: !2676)
!2680 = !DILocation(line: 315, column: 9, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 315, column: 8)
!2682 = !DILocation(line: 315, column: 8, scope: !2676)
!2683 = !DILocation(line: 316, column: 11, scope: !2681)
!2684 = !DILocation(line: 316, column: 9, scope: !2681)
!2685 = !DILocation(line: 316, column: 5, scope: !2681)
!2686 = !DILocation(line: 317, column: 3, scope: !2676)
!2687 = !DILocation(line: 318, column: 4, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 317, column: 10)
!2689 = !DILocation(line: 319, column: 10, scope: !2688)
!2690 = !DILocation(line: 319, column: 8, scope: !2688)
!2691 = !DILocation(line: 321, column: 2, scope: !2664)
!2692 = !DILocation(line: 322, column: 3, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 321, column: 9)
!2694 = !DILocation(line: 323, column: 9, scope: !2693)
!2695 = !DILocation(line: 323, column: 7, scope: !2693)
!2696 = !DILocation(line: 326, column: 22, scope: !2622)
!2697 = !DILocation(line: 326, column: 2, scope: !2622)
!2698 = !DILocation(line: 328, column: 9, scope: !2622)
!2699 = !DILocation(line: 328, column: 2, scope: !2622)
!2700 = !DILocation(line: 329, column: 1, scope: !2622)
!2701 = distinct !DISubprogram(name: "ERR_PTR", scope: !2702, file: !2702, line: 39, type: !2703, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2705)
!2702 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!124, !360}
!2705 = !{!2706}
!2706 = !DILocalVariable(name: "error", arg: 1, scope: !2701, file: !2702, line: 39, type: !360)
!2707 = !DILocation(line: 39, column: 48, scope: !2701)
!2708 = !DILocation(line: 41, column: 18, scope: !2701)
!2709 = !DILocation(line: 41, column: 9, scope: !2701)
!2710 = !DILocation(line: 41, column: 2, scope: !2701)
!2711 = !DISubprogram(name: "strlen", scope: !2712, file: !2712, line: 128, type: !2713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2712 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!374, !183}
!2715 = !DISubprogram(name: "kstrdup", scope: !2712, file: !2712, line: 216, type: !2716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!144, !183, !126}
!2718 = distinct !DISubprogram(name: "acpi_handle_printk", scope: !3, file: !3, line: 515, type: !2719, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2721)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{null, !183, !163, !183, null}
!2721 = !{!2722, !2723, !2724, !2725, !2744, !2745}
!2722 = !DILocalVariable(name: "level", arg: 1, scope: !2718, file: !3, line: 515, type: !183)
!2723 = !DILocalVariable(name: "handle", arg: 2, scope: !2718, file: !3, line: 515, type: !163)
!2724 = !DILocalVariable(name: "fmt", arg: 3, scope: !2718, file: !3, line: 515, type: !183)
!2725 = !DILocalVariable(name: "vaf", scope: !2718, file: !3, line: 517, type: !2726)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !2727, line: 79, size: 128, elements: !2728)
!2727 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2728 = !{!2729, !2730}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2726, file: !2727, line: 80, baseType: !183, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !2726, file: !2727, line: 81, baseType: !2731, size: 64, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2733, line: 5, baseType: !2734)
!2733 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !2735)
!2735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2736, size: 192, elements: !2742)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2737)
!2737 = !{!2738, !2739, !2740, !2741}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2736, file: !3, line: 517, baseType: !7, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2736, file: !3, line: 517, baseType: !7, size: 32, offset: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2736, file: !3, line: 517, baseType: !124, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2736, file: !3, line: 517, baseType: !124, size: 64, offset: 128)
!2742 = !{!2743}
!2743 = !DISubrange(count: 1)
!2744 = !DILocalVariable(name: "args", scope: !2718, file: !3, line: 518, type: !2732)
!2745 = !DILocalVariable(name: "path", scope: !2718, file: !3, line: 519, type: !183)
!2746 = !DILocation(line: 515, column: 32, scope: !2718)
!2747 = !DILocation(line: 515, column: 51, scope: !2718)
!2748 = !DILocation(line: 515, column: 71, scope: !2718)
!2749 = !DILocation(line: 517, column: 2, scope: !2718)
!2750 = !DILocation(line: 517, column: 19, scope: !2718)
!2751 = !DILocation(line: 518, column: 2, scope: !2718)
!2752 = !DILocation(line: 518, column: 10, scope: !2718)
!2753 = !DILocation(line: 519, column: 2, scope: !2718)
!2754 = !DILocation(line: 519, column: 14, scope: !2718)
!2755 = !DILocation(line: 521, column: 2, scope: !2718)
!2756 = !DILocation(line: 522, column: 12, scope: !2718)
!2757 = !DILocation(line: 522, column: 6, scope: !2718)
!2758 = !DILocation(line: 522, column: 10, scope: !2718)
!2759 = !DILocation(line: 523, column: 6, scope: !2718)
!2760 = !DILocation(line: 523, column: 9, scope: !2718)
!2761 = !DILocation(line: 525, column: 26, scope: !2718)
!2762 = !DILocation(line: 525, column: 9, scope: !2718)
!2763 = !DILocation(line: 525, column: 7, scope: !2718)
!2764 = !DILocation(line: 526, column: 2, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 526, column: 2)
!2766 = !DILocation(line: 526, column: 2, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 526, column: 2)
!2768 = !DILocation(line: 528, column: 2, scope: !2718)
!2769 = !DILocation(line: 529, column: 8, scope: !2718)
!2770 = !DILocation(line: 529, column: 2, scope: !2718)
!2771 = !DILocation(line: 530, column: 1, scope: !2718)
!2772 = distinct !DISubprogram(name: "acpi_os_free", scope: !2481, file: !2481, line: 60, type: !738, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2773)
!2773 = !{!2774}
!2774 = !DILocalVariable(name: "memory", arg: 1, scope: !2772, file: !2481, line: 60, type: !124)
!2775 = !DILocation(line: 60, column: 39, scope: !2772)
!2776 = !DILocation(line: 62, column: 8, scope: !2772)
!2777 = !DILocation(line: 62, column: 2, scope: !2772)
!2778 = !DILocation(line: 63, column: 1, scope: !2772)
!2779 = distinct !DISubprogram(name: "acpi_evaluate_reference", scope: !3, file: !3, line: 333, type: !2780, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2790)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!107, !163, !2509, !2510, !2782}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_handle_list", file: !241, line: 17, size: 704, elements: !2784)
!2784 = !{!2785, !2786}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2783, file: !241, line: 18, baseType: !109, size: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !2783, file: !241, line: 19, baseType: !2787, size: 640, offset: 64)
!2787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 640, elements: !2788)
!2788 = !{!2789}
!2789 = !DISubrange(count: 10)
!2790 = !{!2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800}
!2791 = !DILocalVariable(name: "handle", arg: 1, scope: !2779, file: !3, line: 333, type: !163)
!2792 = !DILocalVariable(name: "pathname", arg: 2, scope: !2779, file: !3, line: 334, type: !2509)
!2793 = !DILocalVariable(name: "arguments", arg: 3, scope: !2779, file: !3, line: 335, type: !2510)
!2794 = !DILocalVariable(name: "list", arg: 4, scope: !2779, file: !3, line: 336, type: !2782)
!2795 = !DILocalVariable(name: "status", scope: !2779, file: !3, line: 338, type: !107)
!2796 = !DILocalVariable(name: "package", scope: !2779, file: !3, line: 339, type: !128)
!2797 = !DILocalVariable(name: "element", scope: !2779, file: !3, line: 340, type: !128)
!2798 = !DILocalVariable(name: "buffer", scope: !2779, file: !3, line: 341, type: !2134)
!2799 = !DILocalVariable(name: "i", scope: !2779, file: !3, line: 342, type: !109)
!2800 = !DILabel(scope: !2779, name: "end", file: !3, line: 402)
!2801 = !DILocation(line: 333, column: 37, scope: !2779)
!2802 = !DILocation(line: 334, column: 16, scope: !2779)
!2803 = !DILocation(line: 335, column: 29, scope: !2779)
!2804 = !DILocation(line: 336, column: 29, scope: !2779)
!2805 = !DILocation(line: 338, column: 2, scope: !2779)
!2806 = !DILocation(line: 338, column: 14, scope: !2779)
!2807 = !DILocation(line: 339, column: 2, scope: !2779)
!2808 = !DILocation(line: 339, column: 21, scope: !2779)
!2809 = !DILocation(line: 340, column: 2, scope: !2779)
!2810 = !DILocation(line: 340, column: 21, scope: !2779)
!2811 = !DILocation(line: 341, column: 2, scope: !2779)
!2812 = !DILocation(line: 341, column: 21, scope: !2779)
!2813 = !DILocation(line: 342, column: 2, scope: !2779)
!2814 = !DILocation(line: 342, column: 6, scope: !2779)
!2815 = !DILocation(line: 345, column: 7, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 345, column: 6)
!2817 = !DILocation(line: 345, column: 6, scope: !2779)
!2818 = !DILocation(line: 346, column: 3, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 345, column: 13)
!2820 = !DILocation(line: 351, column: 32, scope: !2779)
!2821 = !DILocation(line: 351, column: 40, scope: !2779)
!2822 = !DILocation(line: 351, column: 50, scope: !2779)
!2823 = !DILocation(line: 351, column: 11, scope: !2779)
!2824 = !DILocation(line: 351, column: 9, scope: !2779)
!2825 = !DILocation(line: 352, column: 6, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 352, column: 6)
!2827 = !DILocation(line: 352, column: 6, scope: !2779)
!2828 = !DILocation(line: 353, column: 3, scope: !2826)
!2829 = !DILocation(line: 355, column: 19, scope: !2779)
!2830 = !DILocation(line: 355, column: 10, scope: !2779)
!2831 = !DILocation(line: 357, column: 14, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 357, column: 6)
!2833 = !DILocation(line: 357, column: 21, scope: !2832)
!2834 = !DILocation(line: 357, column: 27, scope: !2832)
!2835 = !DILocation(line: 357, column: 31, scope: !2832)
!2836 = !DILocation(line: 357, column: 6, scope: !2779)
!2837 = !DILocation(line: 358, column: 10, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 357, column: 40)
!2839 = !DILocation(line: 359, column: 24, scope: !2838)
!2840 = !DILocation(line: 359, column: 32, scope: !2838)
!2841 = !DILocation(line: 359, column: 42, scope: !2838)
!2842 = !DILocation(line: 359, column: 3, scope: !2838)
!2843 = !DILocation(line: 360, column: 3, scope: !2838)
!2844 = !DILocation(line: 362, column: 6, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 362, column: 6)
!2846 = !DILocation(line: 362, column: 15, scope: !2845)
!2847 = !DILocation(line: 362, column: 20, scope: !2845)
!2848 = !DILocation(line: 362, column: 6, scope: !2779)
!2849 = !DILocation(line: 363, column: 10, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2845, file: !3, line: 362, column: 42)
!2851 = !DILocation(line: 364, column: 24, scope: !2850)
!2852 = !DILocation(line: 364, column: 32, scope: !2850)
!2853 = !DILocation(line: 364, column: 42, scope: !2850)
!2854 = !DILocation(line: 364, column: 3, scope: !2850)
!2855 = !DILocation(line: 365, column: 3, scope: !2850)
!2856 = !DILocation(line: 367, column: 7, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 367, column: 6)
!2858 = !DILocation(line: 367, column: 24, scope: !2857)
!2859 = !DILocation(line: 367, column: 6, scope: !2779)
!2860 = !DILocation(line: 368, column: 10, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 367, column: 31)
!2862 = !DILocation(line: 369, column: 24, scope: !2861)
!2863 = !DILocation(line: 369, column: 32, scope: !2861)
!2864 = !DILocation(line: 369, column: 42, scope: !2861)
!2865 = !DILocation(line: 369, column: 3, scope: !2861)
!2866 = !DILocation(line: 370, column: 3, scope: !2861)
!2867 = !DILocation(line: 373, column: 6, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 373, column: 6)
!2869 = !DILocation(line: 373, column: 23, scope: !2868)
!2870 = !DILocation(line: 373, column: 29, scope: !2868)
!2871 = !DILocation(line: 373, column: 6, scope: !2779)
!2872 = !DILocation(line: 374, column: 9, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 373, column: 49)
!2874 = !DILocation(line: 374, column: 3, scope: !2873)
!2875 = !DILocation(line: 375, column: 3, scope: !2873)
!2876 = !DILocation(line: 377, column: 16, scope: !2779)
!2877 = !DILocation(line: 377, column: 33, scope: !2779)
!2878 = !DILocation(line: 377, column: 2, scope: !2779)
!2879 = !DILocation(line: 377, column: 8, scope: !2779)
!2880 = !DILocation(line: 377, column: 14, scope: !2779)
!2881 = !DILocation(line: 381, column: 9, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 381, column: 2)
!2883 = !DILocation(line: 381, column: 7, scope: !2882)
!2884 = !DILocation(line: 381, column: 14, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 381, column: 2)
!2886 = !DILocation(line: 381, column: 18, scope: !2885)
!2887 = !DILocation(line: 381, column: 24, scope: !2885)
!2888 = !DILocation(line: 381, column: 16, scope: !2885)
!2889 = !DILocation(line: 381, column: 2, scope: !2882)
!2890 = !DILocation(line: 383, column: 15, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 381, column: 36)
!2892 = !DILocation(line: 383, column: 32, scope: !2891)
!2893 = !DILocation(line: 383, column: 41, scope: !2891)
!2894 = !DILocation(line: 383, column: 11, scope: !2891)
!2895 = !DILocation(line: 385, column: 7, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 385, column: 7)
!2897 = !DILocation(line: 385, column: 16, scope: !2896)
!2898 = !DILocation(line: 385, column: 21, scope: !2896)
!2899 = !DILocation(line: 385, column: 7, scope: !2891)
!2900 = !DILocation(line: 386, column: 11, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 385, column: 51)
!2902 = !DILocation(line: 387, column: 25, scope: !2901)
!2903 = !DILocation(line: 387, column: 33, scope: !2901)
!2904 = !DILocation(line: 387, column: 43, scope: !2901)
!2905 = !DILocation(line: 387, column: 4, scope: !2901)
!2906 = !DILocation(line: 388, column: 4, scope: !2901)
!2907 = !DILocation(line: 391, column: 8, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 391, column: 7)
!2909 = !DILocation(line: 391, column: 27, scope: !2908)
!2910 = !DILocation(line: 391, column: 7, scope: !2891)
!2911 = !DILocation(line: 392, column: 11, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 391, column: 35)
!2913 = !DILocation(line: 393, column: 25, scope: !2912)
!2914 = !DILocation(line: 393, column: 33, scope: !2912)
!2915 = !DILocation(line: 393, column: 43, scope: !2912)
!2916 = !DILocation(line: 393, column: 4, scope: !2912)
!2917 = !DILocation(line: 394, column: 4, scope: !2912)
!2918 = !DILocation(line: 398, column: 22, scope: !2891)
!2919 = !DILocation(line: 398, column: 41, scope: !2891)
!2920 = !DILocation(line: 398, column: 3, scope: !2891)
!2921 = !DILocation(line: 398, column: 9, scope: !2891)
!2922 = !DILocation(line: 398, column: 17, scope: !2891)
!2923 = !DILocation(line: 398, column: 20, scope: !2891)
!2924 = !DILocation(line: 399, column: 3, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 399, column: 3)
!2926 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 399, column: 3)
!2927 = !DILocation(line: 399, column: 3, scope: !2926)
!2928 = !DILocation(line: 400, column: 2, scope: !2891)
!2929 = !DILocation(line: 381, column: 32, scope: !2885)
!2930 = !DILocation(line: 381, column: 2, scope: !2885)
!2931 = distinct !{!2931, !2889, !2932, !2318, !2319}
!2932 = !DILocation(line: 400, column: 2, scope: !2882)
!2933 = !DILocation(line: 402, column: 7, scope: !2779)
!2934 = !DILocation(line: 403, column: 6, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 403, column: 6)
!2936 = !DILocation(line: 403, column: 6, scope: !2779)
!2937 = !DILocation(line: 404, column: 3, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 403, column: 28)
!2939 = !DILocation(line: 404, column: 9, scope: !2938)
!2940 = !DILocation(line: 404, column: 15, scope: !2938)
!2941 = !DILocation(line: 406, column: 2, scope: !2938)
!2942 = !DILocation(line: 408, column: 15, scope: !2779)
!2943 = !DILocation(line: 408, column: 2, scope: !2779)
!2944 = !DILocation(line: 410, column: 9, scope: !2779)
!2945 = !DILocation(line: 410, column: 2, scope: !2779)
!2946 = !DILocation(line: 411, column: 1, scope: !2779)
!2947 = !DISubprogram(name: "kfree", scope: !97, file: !97, line: 227, type: !2948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{null, !277}
!2950 = distinct !DISubprogram(name: "acpi_get_physical_device_location", scope: !3, file: !3, line: 416, type: !2951, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2986)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!107, !163, !2953}
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pld_info", file: !2956, line: 77, size: 272, elements: !2957)
!2956 = !DIFile(filename: "./include/acpi/acbuffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65439b7b1669741c8cb9b42802ea004c")
!2957 = !{!2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2955, file: !2956, line: 78, baseType: !120, size: 8)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_color", scope: !2955, file: !2956, line: 79, baseType: !120, size: 8, offset: 8)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !2955, file: !2956, line: 80, baseType: !120, size: 8, offset: 16)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !2955, file: !2956, line: 81, baseType: !120, size: 8, offset: 24)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !2955, file: !2956, line: 82, baseType: !120, size: 8, offset: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2955, file: !2956, line: 83, baseType: !227, size: 16, offset: 48)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !2955, file: !2956, line: 84, baseType: !227, size: 16, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "user_visible", scope: !2955, file: !2956, line: 85, baseType: !120, size: 8, offset: 80)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2955, file: !2956, line: 86, baseType: !120, size: 8, offset: 88)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2955, file: !2956, line: 87, baseType: !120, size: 8, offset: 96)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2955, file: !2956, line: 88, baseType: !120, size: 8, offset: 104)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2955, file: !2956, line: 89, baseType: !120, size: 8, offset: 112)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2955, file: !2956, line: 90, baseType: !120, size: 8, offset: 120)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !2955, file: !2956, line: 91, baseType: !120, size: 8, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "group_orientation", scope: !2955, file: !2956, line: 92, baseType: !120, size: 8, offset: 136)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "group_token", scope: !2955, file: !2956, line: 93, baseType: !120, size: 8, offset: 144)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "group_position", scope: !2955, file: !2956, line: 94, baseType: !120, size: 8, offset: 152)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "bay", scope: !2955, file: !2956, line: 95, baseType: !120, size: 8, offset: 160)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2955, file: !2956, line: 96, baseType: !120, size: 8, offset: 168)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "ospm_eject_required", scope: !2955, file: !2956, line: 97, baseType: !120, size: 8, offset: 176)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "cabinet_number", scope: !2955, file: !2956, line: 98, baseType: !120, size: 8, offset: 184)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "card_cage_number", scope: !2955, file: !2956, line: 99, baseType: !120, size: 8, offset: 192)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2955, file: !2956, line: 100, baseType: !120, size: 8, offset: 200)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !2955, file: !2956, line: 101, baseType: !120, size: 8, offset: 208)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2955, file: !2956, line: 102, baseType: !120, size: 8, offset: 216)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2955, file: !2956, line: 103, baseType: !120, size: 8, offset: 224)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_offset", scope: !2955, file: !2956, line: 104, baseType: !227, size: 16, offset: 240)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_offset", scope: !2955, file: !2956, line: 105, baseType: !227, size: 16, offset: 256)
!2986 = !{!2987, !2988, !2989, !2990, !2991, !2992}
!2987 = !DILocalVariable(name: "handle", arg: 1, scope: !2950, file: !3, line: 416, type: !163)
!2988 = !DILocalVariable(name: "pld", arg: 2, scope: !2950, file: !3, line: 416, type: !2953)
!2989 = !DILocalVariable(name: "status", scope: !2950, file: !3, line: 418, type: !107)
!2990 = !DILocalVariable(name: "buffer", scope: !2950, file: !3, line: 419, type: !2134)
!2991 = !DILocalVariable(name: "output", scope: !2950, file: !3, line: 420, type: !128)
!2992 = !DILabel(scope: !2950, name: "out", file: !3, line: 442)
!2993 = !DILocation(line: 416, column: 47, scope: !2950)
!2994 = !DILocation(line: 416, column: 78, scope: !2950)
!2995 = !DILocation(line: 418, column: 2, scope: !2950)
!2996 = !DILocation(line: 418, column: 14, scope: !2950)
!2997 = !DILocation(line: 419, column: 2, scope: !2950)
!2998 = !DILocation(line: 419, column: 21, scope: !2950)
!2999 = !DILocation(line: 420, column: 2, scope: !2950)
!3000 = !DILocation(line: 420, column: 21, scope: !2950)
!3001 = !DILocation(line: 422, column: 32, scope: !2950)
!3002 = !DILocation(line: 422, column: 11, scope: !2950)
!3003 = !DILocation(line: 422, column: 9, scope: !2950)
!3004 = !DILocation(line: 424, column: 6, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 424, column: 6)
!3006 = !DILocation(line: 424, column: 6, scope: !2950)
!3007 = !DILocation(line: 425, column: 10, scope: !3005)
!3008 = !DILocation(line: 425, column: 3, scope: !3005)
!3009 = !DILocation(line: 427, column: 18, scope: !2950)
!3010 = !DILocation(line: 427, column: 9, scope: !2950)
!3011 = !DILocation(line: 429, column: 7, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 429, column: 6)
!3013 = !DILocation(line: 429, column: 14, scope: !3012)
!3014 = !DILocation(line: 429, column: 17, scope: !3012)
!3015 = !DILocation(line: 429, column: 25, scope: !3012)
!3016 = !DILocation(line: 429, column: 30, scope: !3012)
!3017 = !DILocation(line: 430, column: 6, scope: !3012)
!3018 = !DILocation(line: 430, column: 10, scope: !3012)
!3019 = !DILocation(line: 430, column: 26, scope: !3012)
!3020 = !DILocation(line: 431, column: 6, scope: !3012)
!3021 = !DILocation(line: 431, column: 9, scope: !3012)
!3022 = !DILocation(line: 431, column: 25, scope: !3012)
!3023 = !DILocation(line: 431, column: 37, scope: !3012)
!3024 = !DILocation(line: 431, column: 42, scope: !3012)
!3025 = !DILocation(line: 432, column: 6, scope: !3012)
!3026 = !DILocation(line: 432, column: 9, scope: !3012)
!3027 = !DILocation(line: 432, column: 25, scope: !3012)
!3028 = !DILocation(line: 432, column: 44, scope: !3012)
!3029 = !DILocation(line: 432, column: 51, scope: !3012)
!3030 = !DILocation(line: 429, column: 6, scope: !2950)
!3031 = !DILocation(line: 433, column: 10, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 432, column: 80)
!3033 = !DILocation(line: 434, column: 3, scope: !3032)
!3034 = !DILocation(line: 438, column: 4, scope: !2950)
!3035 = !DILocation(line: 438, column: 20, scope: !2950)
!3036 = !DILocation(line: 438, column: 39, scope: !2950)
!3037 = !DILocation(line: 439, column: 4, scope: !2950)
!3038 = !DILocation(line: 439, column: 20, scope: !2950)
!3039 = !DILocation(line: 439, column: 39, scope: !2950)
!3040 = !DILocation(line: 440, column: 4, scope: !2950)
!3041 = !DILocation(line: 437, column: 11, scope: !2950)
!3042 = !DILocation(line: 437, column: 9, scope: !2950)
!3043 = !DILocation(line: 437, column: 2, scope: !2950)
!3044 = !DILocation(line: 442, column: 1, scope: !2950)
!3045 = !DILocation(line: 443, column: 15, scope: !2950)
!3046 = !DILocation(line: 443, column: 2, scope: !2950)
!3047 = !DILocation(line: 444, column: 9, scope: !2950)
!3048 = !DILocation(line: 444, column: 2, scope: !2950)
!3049 = !DILocation(line: 445, column: 1, scope: !2950)
!3050 = !DISubprogram(name: "acpi_decode_pld_buffer", scope: !2576, file: !2576, line: 447, type: !3051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!107, !119, !113, !2953}
!3053 = distinct !DISubprogram(name: "acpi_evaluate_ost", scope: !3, file: !3, line: 460, type: !3054, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3056)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!107, !163, !109, !109, !2133}
!3056 = !{!3057, !3058, !3059, !3060, !3061, !3063}
!3057 = !DILocalVariable(name: "handle", arg: 1, scope: !3053, file: !3, line: 460, type: !163)
!3058 = !DILocalVariable(name: "source_event", arg: 2, scope: !3053, file: !3, line: 460, type: !109)
!3059 = !DILocalVariable(name: "status_code", arg: 3, scope: !3053, file: !3, line: 460, type: !109)
!3060 = !DILocalVariable(name: "status_buf", arg: 4, scope: !3053, file: !3, line: 461, type: !2133)
!3061 = !DILocalVariable(name: "params", scope: !3053, file: !3, line: 463, type: !3062)
!3062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 576, elements: !325)
!3063 = !DILocalVariable(name: "arg_list", scope: !3053, file: !3, line: 468, type: !2511)
!3064 = !DILocation(line: 460, column: 31, scope: !3053)
!3065 = !DILocation(line: 460, column: 43, scope: !3053)
!3066 = !DILocation(line: 460, column: 61, scope: !3053)
!3067 = !DILocation(line: 461, column: 25, scope: !3053)
!3068 = !DILocation(line: 463, column: 2, scope: !3053)
!3069 = !DILocation(line: 463, column: 20, scope: !3053)
!3070 = !DILocation(line: 468, column: 2, scope: !3053)
!3071 = !DILocation(line: 468, column: 26, scope: !3053)
!3072 = !DILocation(line: 468, column: 37, scope: !3053)
!3073 = !DILocation(line: 468, column: 41, scope: !3053)
!3074 = !DILocation(line: 470, column: 28, scope: !3053)
!3075 = !DILocation(line: 470, column: 2, scope: !3053)
!3076 = !DILocation(line: 470, column: 20, scope: !3053)
!3077 = !DILocation(line: 470, column: 26, scope: !3053)
!3078 = !DILocation(line: 471, column: 28, scope: !3053)
!3079 = !DILocation(line: 471, column: 2, scope: !3053)
!3080 = !DILocation(line: 471, column: 20, scope: !3053)
!3081 = !DILocation(line: 471, column: 26, scope: !3053)
!3082 = !DILocation(line: 472, column: 6, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 472, column: 6)
!3084 = !DILocation(line: 472, column: 17, scope: !3083)
!3085 = !DILocation(line: 472, column: 6, scope: !3053)
!3086 = !DILocation(line: 473, column: 30, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 472, column: 26)
!3088 = !DILocation(line: 473, column: 42, scope: !3087)
!3089 = !DILocation(line: 473, column: 3, scope: !3087)
!3090 = !DILocation(line: 473, column: 20, scope: !3087)
!3091 = !DILocation(line: 473, column: 28, scope: !3087)
!3092 = !DILocation(line: 474, column: 29, scope: !3087)
!3093 = !DILocation(line: 474, column: 41, scope: !3087)
!3094 = !DILocation(line: 474, column: 3, scope: !3087)
!3095 = !DILocation(line: 474, column: 20, scope: !3087)
!3096 = !DILocation(line: 474, column: 27, scope: !3087)
!3097 = !DILocation(line: 475, column: 2, scope: !3087)
!3098 = !DILocation(line: 476, column: 3, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 475, column: 9)
!3100 = !DILocation(line: 476, column: 20, scope: !3099)
!3101 = !DILocation(line: 476, column: 28, scope: !3099)
!3102 = !DILocation(line: 477, column: 3, scope: !3099)
!3103 = !DILocation(line: 477, column: 20, scope: !3099)
!3104 = !DILocation(line: 477, column: 27, scope: !3099)
!3105 = !DILocation(line: 480, column: 30, scope: !3053)
!3106 = !DILocation(line: 480, column: 9, scope: !3053)
!3107 = !DILocation(line: 481, column: 1, scope: !3053)
!3108 = !DILocation(line: 480, column: 2, scope: !3053)
!3109 = distinct !DISubprogram(name: "acpi_handle_path", scope: !3, file: !3, line: 490, type: !3110, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3112)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!144, !163}
!3112 = !{!3113, !3114}
!3113 = !DILocalVariable(name: "handle", arg: 1, scope: !3109, file: !3, line: 490, type: !163)
!3114 = !DILocalVariable(name: "buffer", scope: !3109, file: !3, line: 492, type: !2134)
!3115 = !DILocation(line: 490, column: 43, scope: !3109)
!3116 = !DILocation(line: 492, column: 2, scope: !3109)
!3117 = !DILocation(line: 492, column: 21, scope: !3109)
!3118 = !DILocation(line: 497, column: 6, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 497, column: 6)
!3120 = !DILocation(line: 497, column: 21, scope: !3119)
!3121 = !DILocation(line: 498, column: 20, scope: !3119)
!3122 = !DILocation(line: 498, column: 6, scope: !3119)
!3123 = !DILocation(line: 498, column: 57, scope: !3119)
!3124 = !DILocation(line: 497, column: 6, scope: !3109)
!3125 = !DILocation(line: 499, column: 3, scope: !3119)
!3126 = !DILocation(line: 500, column: 16, scope: !3109)
!3127 = !DILocation(line: 500, column: 2, scope: !3109)
!3128 = !DILocation(line: 501, column: 1, scope: !3109)
!3129 = !DISubprogram(name: "_printk", scope: !2727, file: !2727, line: 153, type: !3130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!51, !183, null}
!3132 = distinct !DISubprogram(name: "acpi_evaluation_failure_warn", scope: !3, file: !3, line: 572, type: !3133, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3135)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{null, !163, !183, !107}
!3135 = !{!3136, !3137, !3138}
!3136 = !DILocalVariable(name: "handle", arg: 1, scope: !3132, file: !3, line: 572, type: !163)
!3137 = !DILocalVariable(name: "name", arg: 2, scope: !3132, file: !3, line: 572, type: !183)
!3138 = !DILocalVariable(name: "status", arg: 3, scope: !3132, file: !3, line: 573, type: !107)
!3139 = !DILocation(line: 572, column: 47, scope: !3132)
!3140 = !DILocation(line: 572, column: 67, scope: !3132)
!3141 = !DILocation(line: 573, column: 19, scope: !3132)
!3142 = !DILocation(line: 575, column: 2, scope: !3132)
!3143 = !DILocation(line: 577, column: 1, scope: !3132)
!3144 = !DISubprogram(name: "acpi_format_exception", scope: !2576, file: !2576, line: 430, type: !3145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!183, !107}
!3147 = distinct !DISubprogram(name: "acpi_has_method", scope: !3, file: !3, line: 587, type: !3148, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3150)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!269, !163, !144}
!3150 = !{!3151, !3152, !3153}
!3151 = !DILocalVariable(name: "handle", arg: 1, scope: !3147, file: !3, line: 587, type: !163)
!3152 = !DILocalVariable(name: "name", arg: 2, scope: !3147, file: !3, line: 587, type: !144)
!3153 = !DILocalVariable(name: "tmp", scope: !3147, file: !3, line: 589, type: !163)
!3154 = !DILocation(line: 587, column: 34, scope: !3147)
!3155 = !DILocation(line: 587, column: 48, scope: !3147)
!3156 = !DILocation(line: 589, column: 2, scope: !3147)
!3157 = !DILocation(line: 589, column: 14, scope: !3147)
!3158 = !DILocation(line: 591, column: 9, scope: !3147)
!3159 = !DILocation(line: 592, column: 1, scope: !3147)
!3160 = !DILocation(line: 591, column: 2, scope: !3147)
!3161 = !DISubprogram(name: "acpi_get_handle", scope: !2576, file: !2576, line: 527, type: !3162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!107, !163, !183, !3164}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!3165 = distinct !DISubprogram(name: "acpi_execute_simple_method", scope: !3, file: !3, line: 595, type: !3166, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!107, !163, !144, !114}
!3168 = !{!3169, !3170, !3171, !3172, !3173}
!3169 = !DILocalVariable(name: "handle", arg: 1, scope: !3165, file: !3, line: 595, type: !163)
!3170 = !DILocalVariable(name: "method", arg: 2, scope: !3165, file: !3, line: 595, type: !144)
!3171 = !DILocalVariable(name: "arg", arg: 3, scope: !3165, file: !3, line: 596, type: !114)
!3172 = !DILocalVariable(name: "obj", scope: !3165, file: !3, line: 598, type: !129)
!3173 = !DILocalVariable(name: "arg_list", scope: !3165, file: !3, line: 599, type: !2511)
!3174 = !DILocation(line: 595, column: 52, scope: !3165)
!3175 = !DILocation(line: 595, column: 66, scope: !3165)
!3176 = !DILocation(line: 596, column: 16, scope: !3165)
!3177 = !DILocation(line: 598, column: 2, scope: !3165)
!3178 = !DILocation(line: 598, column: 20, scope: !3165)
!3179 = !DILocation(line: 599, column: 2, scope: !3165)
!3180 = !DILocation(line: 599, column: 26, scope: !3165)
!3181 = !DILocation(line: 599, column: 37, scope: !3165)
!3182 = !DILocation(line: 601, column: 22, scope: !3165)
!3183 = !DILocation(line: 601, column: 14, scope: !3165)
!3184 = !DILocation(line: 601, column: 20, scope: !3165)
!3185 = !DILocation(line: 603, column: 30, scope: !3165)
!3186 = !DILocation(line: 603, column: 38, scope: !3165)
!3187 = !DILocation(line: 603, column: 9, scope: !3165)
!3188 = !DILocation(line: 604, column: 1, scope: !3165)
!3189 = !DILocation(line: 603, column: 2, scope: !3165)
!3190 = distinct !DISubprogram(name: "acpi_evaluate_ej0", scope: !3, file: !3, line: 613, type: !3191, scopeLine: 614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!107, !163}
!3193 = !{!3194, !3195}
!3194 = !DILocalVariable(name: "handle", arg: 1, scope: !3190, file: !3, line: 613, type: !163)
!3195 = !DILocalVariable(name: "status", scope: !3190, file: !3, line: 615, type: !107)
!3196 = !DILocation(line: 613, column: 43, scope: !3190)
!3197 = !DILocation(line: 615, column: 2, scope: !3190)
!3198 = !DILocation(line: 615, column: 14, scope: !3190)
!3199 = !DILocation(line: 617, column: 38, scope: !3190)
!3200 = !DILocation(line: 617, column: 11, scope: !3190)
!3201 = !DILocation(line: 617, column: 9, scope: !3190)
!3202 = !DILocation(line: 618, column: 6, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 618, column: 6)
!3204 = !DILocation(line: 618, column: 13, scope: !3203)
!3205 = !DILocation(line: 618, column: 6, scope: !3190)
!3206 = !DILocation(line: 619, column: 3, scope: !3203)
!3207 = !DILocation(line: 620, column: 11, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 620, column: 11)
!3209 = !DILocation(line: 620, column: 11, scope: !3203)
!3210 = !DILocation(line: 621, column: 3, scope: !3208)
!3211 = !DILocation(line: 623, column: 9, scope: !3190)
!3212 = !DILocation(line: 624, column: 1, scope: !3190)
!3213 = !DILocation(line: 623, column: 2, scope: !3190)
!3214 = distinct !DISubprogram(name: "acpi_evaluate_lck", scope: !3, file: !3, line: 633, type: !3215, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3217)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!107, !163, !51}
!3217 = !{!3218, !3219, !3220}
!3218 = !DILocalVariable(name: "handle", arg: 1, scope: !3214, file: !3, line: 633, type: !163)
!3219 = !DILocalVariable(name: "lock", arg: 2, scope: !3214, file: !3, line: 633, type: !51)
!3220 = !DILocalVariable(name: "status", scope: !3214, file: !3, line: 635, type: !107)
!3221 = !DILocation(line: 633, column: 43, scope: !3214)
!3222 = !DILocation(line: 633, column: 55, scope: !3214)
!3223 = !DILocation(line: 635, column: 2, scope: !3214)
!3224 = !DILocation(line: 635, column: 14, scope: !3214)
!3225 = !DILocation(line: 637, column: 38, scope: !3214)
!3226 = !DILocation(line: 637, column: 56, scope: !3214)
!3227 = !DILocation(line: 637, column: 55, scope: !3214)
!3228 = !DILocation(line: 637, column: 54, scope: !3214)
!3229 = !DILocation(line: 637, column: 11, scope: !3214)
!3230 = !DILocation(line: 637, column: 9, scope: !3214)
!3231 = !DILocation(line: 638, column: 6, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 638, column: 6)
!3233 = !DILocation(line: 638, column: 27, scope: !3232)
!3234 = !DILocation(line: 638, column: 30, scope: !3232)
!3235 = !DILocation(line: 638, column: 37, scope: !3232)
!3236 = !DILocation(line: 638, column: 6, scope: !3214)
!3237 = !DILocation(line: 639, column: 7, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 639, column: 7)
!3239 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 638, column: 54)
!3240 = !DILocation(line: 639, column: 7, scope: !3239)
!3241 = !DILocation(line: 640, column: 4, scope: !3238)
!3242 = !DILocation(line: 643, column: 4, scope: !3238)
!3243 = !DILocation(line: 645, column: 2, scope: !3239)
!3244 = !DILocation(line: 647, column: 9, scope: !3214)
!3245 = !DILocation(line: 648, column: 1, scope: !3214)
!3246 = !DILocation(line: 647, column: 2, scope: !3214)
!3247 = distinct !DISubprogram(name: "acpi_evaluate_reg", scope: !3, file: !3, line: 659, type: !3248, scopeLine: 660, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3250)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!107, !163, !120, !109}
!3250 = !{!3251, !3252, !3253, !3254, !3255}
!3251 = !DILocalVariable(name: "handle", arg: 1, scope: !3247, file: !3, line: 659, type: !163)
!3252 = !DILocalVariable(name: "space_id", arg: 2, scope: !3247, file: !3, line: 659, type: !120)
!3253 = !DILocalVariable(name: "function", arg: 3, scope: !3247, file: !3, line: 659, type: !109)
!3254 = !DILocalVariable(name: "arg_list", scope: !3247, file: !3, line: 661, type: !2511)
!3255 = !DILocalVariable(name: "params", scope: !3247, file: !3, line: 662, type: !3256)
!3256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 384, elements: !1121)
!3257 = !DILocation(line: 659, column: 43, scope: !3247)
!3258 = !DILocation(line: 659, column: 54, scope: !3247)
!3259 = !DILocation(line: 659, column: 68, scope: !3247)
!3260 = !DILocation(line: 661, column: 2, scope: !3247)
!3261 = !DILocation(line: 661, column: 26, scope: !3247)
!3262 = !DILocation(line: 662, column: 2, scope: !3247)
!3263 = !DILocation(line: 662, column: 20, scope: !3247)
!3264 = !DILocation(line: 664, column: 2, scope: !3247)
!3265 = !DILocation(line: 664, column: 17, scope: !3247)
!3266 = !DILocation(line: 665, column: 28, scope: !3247)
!3267 = !DILocation(line: 665, column: 2, scope: !3247)
!3268 = !DILocation(line: 665, column: 20, scope: !3247)
!3269 = !DILocation(line: 665, column: 26, scope: !3247)
!3270 = !DILocation(line: 666, column: 2, scope: !3247)
!3271 = !DILocation(line: 666, column: 17, scope: !3247)
!3272 = !DILocation(line: 667, column: 28, scope: !3247)
!3273 = !DILocation(line: 667, column: 2, scope: !3247)
!3274 = !DILocation(line: 667, column: 20, scope: !3247)
!3275 = !DILocation(line: 667, column: 26, scope: !3247)
!3276 = !DILocation(line: 668, column: 11, scope: !3247)
!3277 = !DILocation(line: 668, column: 17, scope: !3247)
!3278 = !DILocation(line: 669, column: 21, scope: !3247)
!3279 = !DILocation(line: 669, column: 11, scope: !3247)
!3280 = !DILocation(line: 669, column: 19, scope: !3247)
!3281 = !DILocation(line: 671, column: 30, scope: !3247)
!3282 = !DILocation(line: 671, column: 9, scope: !3247)
!3283 = !DILocation(line: 672, column: 1, scope: !3247)
!3284 = !DILocation(line: 671, column: 2, scope: !3247)
!3285 = distinct !DISubprogram(name: "acpi_evaluate_dsm", scope: !3, file: !3, line: 690, type: !3286, scopeLine: 692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3295)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!128, !163, !3288, !114, !114, !128}
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3290)
!3290 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !3291, line: 17, baseType: !3292)
!3291 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3291, line: 15, size: 128, elements: !3293)
!3293 = !{!3294}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3292, file: !3291, line: 16, baseType: !1370, size: 128)
!3295 = !{!3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3305}
!3296 = !DILocalVariable(name: "handle", arg: 1, scope: !3285, file: !3, line: 690, type: !163)
!3297 = !DILocalVariable(name: "guid", arg: 2, scope: !3285, file: !3, line: 690, type: !3288)
!3298 = !DILocalVariable(name: "rev", arg: 3, scope: !3285, file: !3, line: 690, type: !114)
!3299 = !DILocalVariable(name: "func", arg: 4, scope: !3285, file: !3, line: 690, type: !114)
!3300 = !DILocalVariable(name: "argv4", arg: 5, scope: !3285, file: !3, line: 691, type: !128)
!3301 = !DILocalVariable(name: "ret", scope: !3285, file: !3, line: 693, type: !107)
!3302 = !DILocalVariable(name: "buf", scope: !3285, file: !3, line: 694, type: !2134)
!3303 = !DILocalVariable(name: "params", scope: !3285, file: !3, line: 695, type: !3304)
!3304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 768, elements: !559)
!3305 = !DILocalVariable(name: "input", scope: !3285, file: !3, line: 696, type: !2511)
!3306 = !DILocation(line: 690, column: 31, scope: !3285)
!3307 = !DILocation(line: 690, column: 53, scope: !3285)
!3308 = !DILocation(line: 690, column: 63, scope: !3285)
!3309 = !DILocation(line: 690, column: 72, scope: !3285)
!3310 = !DILocation(line: 691, column: 24, scope: !3285)
!3311 = !DILocation(line: 693, column: 2, scope: !3285)
!3312 = !DILocation(line: 693, column: 14, scope: !3285)
!3313 = !DILocation(line: 694, column: 2, scope: !3285)
!3314 = !DILocation(line: 694, column: 21, scope: !3285)
!3315 = !DILocation(line: 695, column: 2, scope: !3285)
!3316 = !DILocation(line: 695, column: 20, scope: !3285)
!3317 = !DILocation(line: 696, column: 2, scope: !3285)
!3318 = !DILocation(line: 696, column: 26, scope: !3285)
!3319 = !DILocation(line: 696, column: 34, scope: !3285)
!3320 = !DILocation(line: 698, column: 14, scope: !3285)
!3321 = !DILocation(line: 701, column: 2, scope: !3285)
!3322 = !DILocation(line: 701, column: 17, scope: !3285)
!3323 = !DILocation(line: 702, column: 2, scope: !3285)
!3324 = !DILocation(line: 702, column: 19, scope: !3285)
!3325 = !DILocation(line: 702, column: 26, scope: !3285)
!3326 = !DILocation(line: 703, column: 35, scope: !3285)
!3327 = !DILocation(line: 703, column: 2, scope: !3285)
!3328 = !DILocation(line: 703, column: 19, scope: !3285)
!3329 = !DILocation(line: 703, column: 27, scope: !3285)
!3330 = !DILocation(line: 704, column: 2, scope: !3285)
!3331 = !DILocation(line: 704, column: 17, scope: !3285)
!3332 = !DILocation(line: 705, column: 28, scope: !3285)
!3333 = !DILocation(line: 705, column: 2, scope: !3285)
!3334 = !DILocation(line: 705, column: 20, scope: !3285)
!3335 = !DILocation(line: 705, column: 26, scope: !3285)
!3336 = !DILocation(line: 706, column: 2, scope: !3285)
!3337 = !DILocation(line: 706, column: 17, scope: !3285)
!3338 = !DILocation(line: 707, column: 28, scope: !3285)
!3339 = !DILocation(line: 707, column: 2, scope: !3285)
!3340 = !DILocation(line: 707, column: 20, scope: !3285)
!3341 = !DILocation(line: 707, column: 26, scope: !3285)
!3342 = !DILocation(line: 708, column: 6, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3285, file: !3, line: 708, column: 6)
!3344 = !DILocation(line: 708, column: 6, scope: !3285)
!3345 = !DILocation(line: 709, column: 3, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3343, file: !3, line: 708, column: 13)
!3347 = !DILocation(line: 709, column: 16, scope: !3346)
!3348 = !DILocation(line: 709, column: 15, scope: !3346)
!3349 = !DILocation(line: 710, column: 2, scope: !3346)
!3350 = !DILocation(line: 711, column: 3, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3343, file: !3, line: 710, column: 9)
!3352 = !DILocation(line: 711, column: 18, scope: !3351)
!3353 = !DILocation(line: 712, column: 3, scope: !3351)
!3354 = !DILocation(line: 712, column: 21, scope: !3351)
!3355 = !DILocation(line: 712, column: 27, scope: !3351)
!3356 = !DILocation(line: 713, column: 3, scope: !3351)
!3357 = !DILocation(line: 713, column: 21, scope: !3351)
!3358 = !DILocation(line: 713, column: 30, scope: !3351)
!3359 = !DILocation(line: 716, column: 29, scope: !3285)
!3360 = !DILocation(line: 716, column: 8, scope: !3285)
!3361 = !DILocation(line: 716, column: 6, scope: !3285)
!3362 = !DILocation(line: 717, column: 6, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3285, file: !3, line: 717, column: 6)
!3364 = !DILocation(line: 717, column: 6, scope: !3285)
!3365 = !DILocation(line: 718, column: 35, scope: !3363)
!3366 = !DILocation(line: 718, column: 3, scope: !3363)
!3367 = !DILocation(line: 720, column: 6, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3285, file: !3, line: 720, column: 6)
!3369 = !DILocation(line: 720, column: 10, scope: !3368)
!3370 = !DILocation(line: 720, column: 6, scope: !3285)
!3371 = !DILocation(line: 721, column: 3, scope: !3368)
!3372 = !DILocation(line: 724, column: 2, scope: !3285)
!3373 = !DILocation(line: 725, column: 1, scope: !3285)
!3374 = distinct !DISubprogram(name: "acpi_check_dsm", scope: !3, file: !3, line: 739, type: !3375, scopeLine: 740, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3377)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!269, !163, !3288, !114, !114}
!3377 = !{!3378, !3379, !3380, !3381, !3382, !3383, !3384}
!3378 = !DILocalVariable(name: "handle", arg: 1, scope: !3374, file: !3, line: 739, type: !163)
!3379 = !DILocalVariable(name: "guid", arg: 2, scope: !3374, file: !3, line: 739, type: !3288)
!3380 = !DILocalVariable(name: "rev", arg: 3, scope: !3374, file: !3, line: 739, type: !114)
!3381 = !DILocalVariable(name: "funcs", arg: 4, scope: !3374, file: !3, line: 739, type: !114)
!3382 = !DILocalVariable(name: "i", scope: !3374, file: !3, line: 741, type: !51)
!3383 = !DILocalVariable(name: "mask", scope: !3374, file: !3, line: 742, type: !114)
!3384 = !DILocalVariable(name: "obj", scope: !3374, file: !3, line: 743, type: !128)
!3385 = !DILocation(line: 739, column: 33, scope: !3374)
!3386 = !DILocation(line: 739, column: 55, scope: !3374)
!3387 = !DILocation(line: 739, column: 65, scope: !3374)
!3388 = !DILocation(line: 739, column: 74, scope: !3374)
!3389 = !DILocation(line: 741, column: 2, scope: !3374)
!3390 = !DILocation(line: 741, column: 6, scope: !3374)
!3391 = !DILocation(line: 742, column: 2, scope: !3374)
!3392 = !DILocation(line: 742, column: 6, scope: !3374)
!3393 = !DILocation(line: 743, column: 2, scope: !3374)
!3394 = !DILocation(line: 743, column: 21, scope: !3374)
!3395 = !DILocation(line: 745, column: 6, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 745, column: 6)
!3397 = !DILocation(line: 745, column: 12, scope: !3396)
!3398 = !DILocation(line: 745, column: 6, scope: !3374)
!3399 = !DILocation(line: 746, column: 3, scope: !3396)
!3400 = !DILocation(line: 748, column: 26, scope: !3374)
!3401 = !DILocation(line: 748, column: 34, scope: !3374)
!3402 = !DILocation(line: 748, column: 40, scope: !3374)
!3403 = !DILocation(line: 748, column: 8, scope: !3374)
!3404 = !DILocation(line: 748, column: 6, scope: !3374)
!3405 = !DILocation(line: 749, column: 7, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 749, column: 6)
!3407 = !DILocation(line: 749, column: 6, scope: !3374)
!3408 = !DILocation(line: 750, column: 3, scope: !3406)
!3409 = !DILocation(line: 753, column: 6, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 753, column: 6)
!3411 = !DILocation(line: 753, column: 11, scope: !3410)
!3412 = !DILocation(line: 753, column: 16, scope: !3410)
!3413 = !DILocation(line: 753, column: 6, scope: !3374)
!3414 = !DILocation(line: 754, column: 10, scope: !3410)
!3415 = !DILocation(line: 754, column: 23, scope: !3410)
!3416 = !DILocation(line: 754, column: 8, scope: !3410)
!3417 = !DILocation(line: 754, column: 3, scope: !3410)
!3418 = !DILocation(line: 755, column: 11, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 755, column: 11)
!3420 = !DILocation(line: 755, column: 16, scope: !3419)
!3421 = !DILocation(line: 755, column: 21, scope: !3419)
!3422 = !DILocation(line: 755, column: 11, scope: !3410)
!3423 = !DILocation(line: 756, column: 10, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 756, column: 3)
!3425 = !DILocation(line: 756, column: 8, scope: !3424)
!3426 = !DILocation(line: 756, column: 15, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3424, file: !3, line: 756, column: 3)
!3428 = !DILocation(line: 756, column: 19, scope: !3427)
!3429 = !DILocation(line: 756, column: 31, scope: !3427)
!3430 = !DILocation(line: 756, column: 17, scope: !3427)
!3431 = !DILocation(line: 756, column: 38, scope: !3427)
!3432 = !DILocation(line: 756, column: 41, scope: !3427)
!3433 = !DILocation(line: 756, column: 43, scope: !3427)
!3434 = !DILocation(line: 0, scope: !3427)
!3435 = !DILocation(line: 756, column: 3, scope: !3424)
!3436 = !DILocation(line: 757, column: 19, scope: !3427)
!3437 = !DILocation(line: 757, column: 31, scope: !3427)
!3438 = !DILocation(line: 757, column: 39, scope: !3427)
!3439 = !DILocation(line: 757, column: 14, scope: !3427)
!3440 = !DILocation(line: 757, column: 47, scope: !3427)
!3441 = !DILocation(line: 757, column: 49, scope: !3427)
!3442 = !DILocation(line: 757, column: 43, scope: !3427)
!3443 = !DILocation(line: 757, column: 9, scope: !3427)
!3444 = !DILocation(line: 757, column: 4, scope: !3427)
!3445 = !DILocation(line: 756, column: 49, scope: !3427)
!3446 = !DILocation(line: 756, column: 3, scope: !3427)
!3447 = distinct !{!3447, !3435, !3448, !2318, !2319}
!3448 = !DILocation(line: 757, column: 53, scope: !3424)
!3449 = !DILocation(line: 758, column: 2, scope: !3374)
!3450 = !DILocation(line: 764, column: 7, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 764, column: 6)
!3452 = !DILocation(line: 764, column: 12, scope: !3451)
!3453 = !DILocation(line: 764, column: 19, scope: !3451)
!3454 = !DILocation(line: 764, column: 23, scope: !3451)
!3455 = !DILocation(line: 764, column: 30, scope: !3451)
!3456 = !DILocation(line: 764, column: 28, scope: !3451)
!3457 = !DILocation(line: 764, column: 40, scope: !3451)
!3458 = !DILocation(line: 764, column: 37, scope: !3451)
!3459 = !DILocation(line: 764, column: 6, scope: !3374)
!3460 = !DILocation(line: 765, column: 3, scope: !3451)
!3461 = !DILocation(line: 767, column: 2, scope: !3374)
!3462 = !DILocation(line: 768, column: 1, scope: !3374)
!3463 = distinct !DISubprogram(name: "acpi_dev_hid_uid_match", scope: !3, file: !3, line: 780, type: !3464, scopeLine: 782, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3466)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!269, !239, !183, !183}
!3466 = !{!3467, !3468, !3469, !3470, !3471}
!3467 = !DILocalVariable(name: "adev", arg: 1, scope: !3463, file: !3, line: 780, type: !239)
!3468 = !DILocalVariable(name: "hid2", arg: 2, scope: !3463, file: !3, line: 781, type: !183)
!3469 = !DILocalVariable(name: "uid2", arg: 3, scope: !3463, file: !3, line: 781, type: !183)
!3470 = !DILocalVariable(name: "hid1", scope: !3463, file: !3, line: 783, type: !183)
!3471 = !DILocalVariable(name: "uid1", scope: !3463, file: !3, line: 784, type: !183)
!3472 = !DILocation(line: 780, column: 49, scope: !3463)
!3473 = !DILocation(line: 781, column: 20, scope: !3463)
!3474 = !DILocation(line: 781, column: 38, scope: !3463)
!3475 = !DILocation(line: 783, column: 2, scope: !3463)
!3476 = !DILocation(line: 783, column: 14, scope: !3463)
!3477 = !DILocation(line: 783, column: 37, scope: !3463)
!3478 = !DILocation(line: 783, column: 21, scope: !3463)
!3479 = !DILocation(line: 784, column: 2, scope: !3463)
!3480 = !DILocation(line: 784, column: 14, scope: !3463)
!3481 = !DILocation(line: 784, column: 21, scope: !3463)
!3482 = !DILocation(line: 786, column: 13, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 786, column: 6)
!3484 = !DILocation(line: 786, column: 19, scope: !3483)
!3485 = !DILocation(line: 786, column: 6, scope: !3483)
!3486 = !DILocation(line: 786, column: 6, scope: !3463)
!3487 = !DILocation(line: 787, column: 3, scope: !3483)
!3488 = !DILocation(line: 789, column: 7, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 789, column: 6)
!3490 = !DILocation(line: 789, column: 6, scope: !3463)
!3491 = !DILocation(line: 790, column: 3, scope: !3489)
!3492 = !DILocation(line: 792, column: 9, scope: !3463)
!3493 = !DILocation(line: 792, column: 14, scope: !3463)
!3494 = !DILocation(line: 792, column: 25, scope: !3463)
!3495 = !DILocation(line: 792, column: 31, scope: !3463)
!3496 = !DILocation(line: 792, column: 18, scope: !3463)
!3497 = !DILocation(line: 792, column: 17, scope: !3463)
!3498 = !DILocation(line: 0, scope: !3463)
!3499 = !DILocation(line: 792, column: 2, scope: !3463)
!3500 = !DILocation(line: 793, column: 1, scope: !3463)
!3501 = !DISubprogram(name: "acpi_device_hid", scope: !241, file: !241, line: 252, type: !3502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!183, !239}
!3504 = !DISubprogram(name: "strcmp", scope: !2712, file: !2712, line: 88, type: !3505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!51, !183, !183}
!3507 = distinct !DISubprogram(name: "acpi_dev_uid_to_integer", scope: !3, file: !3, line: 805, type: !3508, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3510)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!51, !239, !117}
!3510 = !{!3511, !3512, !3513}
!3511 = !DILocalVariable(name: "adev", arg: 1, scope: !3507, file: !3, line: 805, type: !239)
!3512 = !DILocalVariable(name: "integer", arg: 2, scope: !3507, file: !3, line: 805, type: !117)
!3513 = !DILocalVariable(name: "uid", scope: !3507, file: !3, line: 807, type: !183)
!3514 = !DILocation(line: 805, column: 49, scope: !3507)
!3515 = !DILocation(line: 805, column: 60, scope: !3507)
!3516 = !DILocation(line: 807, column: 2, scope: !3507)
!3517 = !DILocation(line: 807, column: 14, scope: !3507)
!3518 = !DILocation(line: 809, column: 7, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 809, column: 6)
!3520 = !DILocation(line: 809, column: 6, scope: !3507)
!3521 = !DILocation(line: 810, column: 3, scope: !3519)
!3522 = !DILocation(line: 812, column: 8, scope: !3507)
!3523 = !DILocation(line: 812, column: 6, scope: !3507)
!3524 = !DILocation(line: 813, column: 7, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 813, column: 6)
!3526 = !DILocation(line: 813, column: 6, scope: !3507)
!3527 = !DILocation(line: 814, column: 3, scope: !3525)
!3528 = !DILocation(line: 816, column: 19, scope: !3507)
!3529 = !DILocation(line: 816, column: 27, scope: !3507)
!3530 = !DILocation(line: 816, column: 9, scope: !3507)
!3531 = !DILocation(line: 816, column: 2, scope: !3507)
!3532 = !DILocation(line: 817, column: 1, scope: !3507)
!3533 = distinct !DISubprogram(name: "kstrtou64", scope: !3534, file: !3534, line: 74, type: !3535, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3537)
!3534 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!51, !183, !7, !117}
!3537 = !{!3538, !3539, !3540}
!3538 = !DILocalVariable(name: "s", arg: 1, scope: !3533, file: !3534, line: 74, type: !183)
!3539 = !DILocalVariable(name: "base", arg: 2, scope: !3533, file: !3534, line: 74, type: !7)
!3540 = !DILocalVariable(name: "res", arg: 3, scope: !3533, file: !3534, line: 74, type: !117)
!3541 = !DILocation(line: 74, column: 54, scope: !3533)
!3542 = !DILocation(line: 74, column: 70, scope: !3533)
!3543 = !DILocation(line: 74, column: 81, scope: !3533)
!3544 = !DILocation(line: 76, column: 19, scope: !3533)
!3545 = !DILocation(line: 76, column: 22, scope: !3533)
!3546 = !DILocation(line: 76, column: 28, scope: !3533)
!3547 = !DILocation(line: 76, column: 9, scope: !3533)
!3548 = !DILocation(line: 76, column: 2, scope: !3533)
!3549 = distinct !DISubprogram(name: "acpi_dev_found", scope: !3, file: !3, line: 833, type: !3550, scopeLine: 834, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3552)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!269, !183}
!3552 = !{!3553, !3554, !3555, !3556, !3559}
!3553 = !DILocalVariable(name: "hid", arg: 1, scope: !3549, file: !3, line: 833, type: !183)
!3554 = !DILocalVariable(name: "acpi_device_bus_id", scope: !3549, file: !3, line: 835, type: !178)
!3555 = !DILocalVariable(name: "found", scope: !3549, file: !3, line: 836, type: !269)
!3556 = !DILocalVariable(name: "__mptr", scope: !3557, file: !3, line: 839, type: !124)
!3557 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 839, column: 2)
!3558 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 839, column: 2)
!3559 = !DILocalVariable(name: "__mptr", scope: !3560, file: !3, line: 839, type: !124)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 839, column: 2)
!3561 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 839, column: 2)
!3562 = !DILocation(line: 833, column: 33, scope: !3549)
!3563 = !DILocation(line: 835, column: 2, scope: !3549)
!3564 = !DILocation(line: 835, column: 29, scope: !3549)
!3565 = !DILocation(line: 836, column: 2, scope: !3549)
!3566 = !DILocation(line: 836, column: 7, scope: !3549)
!3567 = !DILocation(line: 838, column: 2, scope: !3549)
!3568 = !DILocation(line: 839, column: 2, scope: !3557)
!3569 = !DILocation(line: 839, column: 2, scope: !3558)
!3570 = !DILocation(line: 839, column: 2, scope: !3561)
!3571 = !DILocation(line: 840, column: 15, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 840, column: 7)
!3573 = !DILocation(line: 840, column: 35, scope: !3572)
!3574 = !DILocation(line: 840, column: 43, scope: !3572)
!3575 = !DILocation(line: 840, column: 8, scope: !3572)
!3576 = !DILocation(line: 840, column: 7, scope: !3561)
!3577 = !DILocation(line: 841, column: 10, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 840, column: 49)
!3579 = !DILocation(line: 842, column: 4, scope: !3578)
!3580 = !DILocation(line: 840, column: 46, scope: !3572)
!3581 = !DILocation(line: 839, column: 2, scope: !3560)
!3582 = distinct !{!3582, !3569, !3583, !2318, !2319}
!3583 = !DILocation(line: 843, column: 3, scope: !3558)
!3584 = !DILocation(line: 844, column: 2, scope: !3549)
!3585 = !DILocation(line: 846, column: 9, scope: !3549)
!3586 = !{i8 0, i8 2}
!3587 = !DILocation(line: 847, column: 1, scope: !3549)
!3588 = !DILocation(line: 846, column: 2, scope: !3549)
!3589 = !DISubprogram(name: "mutex_lock", scope: !579, file: !579, line: 227, type: !3590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{null, !3592}
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!3593 = !DISubprogram(name: "mutex_unlock", scope: !579, file: !579, line: 246, type: !3590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3594 = distinct !DISubprogram(name: "acpi_dev_present", scope: !3, file: !3, line: 900, type: !3595, scopeLine: 901, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3597)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!269, !183, !183, !496}
!3597 = !{!3598, !3599, !3600, !3601, !3608}
!3598 = !DILocalVariable(name: "hid", arg: 1, scope: !3594, file: !3, line: 900, type: !183)
!3599 = !DILocalVariable(name: "uid", arg: 2, scope: !3594, file: !3, line: 900, type: !183)
!3600 = !DILocalVariable(name: "hrv", arg: 3, scope: !3594, file: !3, line: 900, type: !496)
!3601 = !DILocalVariable(name: "match", scope: !3594, file: !3, line: 902, type: !3602)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_dev_match_info", file: !3, line: 850, size: 640, elements: !3603)
!3603 = !{!3604, !3606, !3607}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "hid", scope: !3602, file: !3, line: 851, baseType: !3605, size: 512)
!3605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1367, size: 512, elements: !1121)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3602, file: !3, line: 852, baseType: !183, size: 64, offset: 512)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "hrv", scope: !3602, file: !3, line: 853, baseType: !496, size: 64, offset: 576)
!3608 = !DILocalVariable(name: "dev", scope: !3594, file: !3, line: 903, type: !893)
!3609 = !DILocation(line: 900, column: 35, scope: !3594)
!3610 = !DILocation(line: 900, column: 52, scope: !3594)
!3611 = !DILocation(line: 900, column: 61, scope: !3594)
!3612 = !DILocation(line: 902, column: 2, scope: !3594)
!3613 = !DILocation(line: 902, column: 29, scope: !3594)
!3614 = !DILocation(line: 903, column: 2, scope: !3594)
!3615 = !DILocation(line: 903, column: 17, scope: !3594)
!3616 = !DILocation(line: 905, column: 16, scope: !3594)
!3617 = !DILocation(line: 905, column: 10, scope: !3594)
!3618 = !DILocation(line: 905, column: 23, scope: !3594)
!3619 = !DILocation(line: 905, column: 27, scope: !3594)
!3620 = !DILocation(line: 905, column: 2, scope: !3594)
!3621 = !DILocation(line: 906, column: 14, scope: !3594)
!3622 = !DILocation(line: 906, column: 8, scope: !3594)
!3623 = !DILocation(line: 906, column: 12, scope: !3594)
!3624 = !DILocation(line: 907, column: 14, scope: !3594)
!3625 = !DILocation(line: 907, column: 8, scope: !3594)
!3626 = !DILocation(line: 907, column: 12, scope: !3594)
!3627 = !DILocation(line: 909, column: 8, scope: !3594)
!3628 = !DILocation(line: 909, column: 6, scope: !3594)
!3629 = !DILocation(line: 910, column: 13, scope: !3594)
!3630 = !DILocation(line: 910, column: 2, scope: !3594)
!3631 = !DILocation(line: 911, column: 11, scope: !3594)
!3632 = !DILocation(line: 911, column: 10, scope: !3594)
!3633 = !DILocation(line: 911, column: 9, scope: !3594)
!3634 = !DILocation(line: 912, column: 1, scope: !3594)
!3635 = !DILocation(line: 911, column: 2, scope: !3594)
!3636 = !DISubprogram(name: "strscpy", scope: !2712, file: !2712, line: 72, type: !3637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!356, !144, !183, !371}
!3639 = !DISubprogram(name: "bus_find_device", scope: !953, file: !953, line: 146, type: !3640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!893, !950, !893, !277, !3642}
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!51, !893, !277}
!3645 = distinct !DISubprogram(name: "acpi_dev_match_cb", scope: !3, file: !3, line: 856, type: !3643, scopeLine: 857, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3646)
!3646 = !{!3647, !3648, !3649, !3650, !3652, !3655, !3656}
!3647 = !DILocalVariable(name: "dev", arg: 1, scope: !3645, file: !3, line: 856, type: !893)
!3648 = !DILocalVariable(name: "data", arg: 2, scope: !3645, file: !3, line: 856, type: !277)
!3649 = !DILocalVariable(name: "adev", scope: !3645, file: !3, line: 858, type: !239)
!3650 = !DILocalVariable(name: "__mptr", scope: !3651, file: !3, line: 858, type: !124)
!3651 = distinct !DILexicalBlock(scope: !3645, file: !3, line: 858, column: 29)
!3652 = !DILocalVariable(name: "match", scope: !3645, file: !3, line: 859, type: !3653)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3602)
!3655 = !DILocalVariable(name: "hrv", scope: !3645, file: !3, line: 860, type: !116)
!3656 = !DILocalVariable(name: "status", scope: !3645, file: !3, line: 861, type: !107)
!3657 = !DILocation(line: 856, column: 45, scope: !3645)
!3658 = !DILocation(line: 856, column: 62, scope: !3645)
!3659 = !DILocation(line: 858, column: 2, scope: !3645)
!3660 = !DILocation(line: 858, column: 22, scope: !3645)
!3661 = !DILocation(line: 858, column: 29, scope: !3651)
!3662 = !DILocation(line: 858, column: 29, scope: !3645)
!3663 = !DILocation(line: 859, column: 2, scope: !3645)
!3664 = !DILocation(line: 859, column: 36, scope: !3645)
!3665 = !DILocation(line: 859, column: 44, scope: !3645)
!3666 = !DILocation(line: 860, column: 2, scope: !3645)
!3667 = !DILocation(line: 860, column: 21, scope: !3645)
!3668 = !DILocation(line: 861, column: 2, scope: !3645)
!3669 = !DILocation(line: 861, column: 14, scope: !3645)
!3670 = !DILocation(line: 863, column: 28, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3645, file: !3, line: 863, column: 6)
!3672 = !DILocation(line: 863, column: 34, scope: !3671)
!3673 = !DILocation(line: 863, column: 41, scope: !3671)
!3674 = !DILocation(line: 863, column: 6, scope: !3671)
!3675 = !DILocation(line: 863, column: 6, scope: !3645)
!3676 = !DILocation(line: 864, column: 3, scope: !3671)
!3677 = !DILocation(line: 866, column: 6, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3645, file: !3, line: 866, column: 6)
!3679 = !DILocation(line: 866, column: 13, scope: !3678)
!3680 = !DILocation(line: 866, column: 17, scope: !3678)
!3681 = !DILocation(line: 866, column: 22, scope: !3678)
!3682 = !DILocation(line: 866, column: 28, scope: !3678)
!3683 = !DILocation(line: 866, column: 32, scope: !3678)
!3684 = !DILocation(line: 866, column: 42, scope: !3678)
!3685 = !DILocation(line: 867, column: 13, scope: !3678)
!3686 = !DILocation(line: 867, column: 19, scope: !3678)
!3687 = !DILocation(line: 867, column: 23, scope: !3678)
!3688 = !DILocation(line: 867, column: 34, scope: !3678)
!3689 = !DILocation(line: 867, column: 41, scope: !3678)
!3690 = !DILocation(line: 867, column: 6, scope: !3678)
!3691 = !DILocation(line: 866, column: 6, scope: !3645)
!3692 = !DILocation(line: 868, column: 3, scope: !3678)
!3693 = !DILocation(line: 870, column: 6, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3645, file: !3, line: 870, column: 6)
!3695 = !DILocation(line: 870, column: 13, scope: !3694)
!3696 = !DILocation(line: 870, column: 17, scope: !3694)
!3697 = !DILocation(line: 870, column: 6, scope: !3645)
!3698 = !DILocation(line: 871, column: 3, scope: !3694)
!3699 = !DILocation(line: 873, column: 33, scope: !3645)
!3700 = !DILocation(line: 873, column: 39, scope: !3645)
!3701 = !DILocation(line: 873, column: 11, scope: !3645)
!3702 = !DILocation(line: 873, column: 9, scope: !3645)
!3703 = !DILocation(line: 874, column: 6, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3645, file: !3, line: 874, column: 6)
!3705 = !DILocation(line: 874, column: 6, scope: !3645)
!3706 = !DILocation(line: 875, column: 3, scope: !3704)
!3707 = !DILocation(line: 877, column: 9, scope: !3645)
!3708 = !DILocation(line: 877, column: 16, scope: !3645)
!3709 = !DILocation(line: 877, column: 23, scope: !3645)
!3710 = !DILocation(line: 877, column: 13, scope: !3645)
!3711 = !DILocation(line: 877, column: 2, scope: !3645)
!3712 = !DILocation(line: 878, column: 1, scope: !3645)
!3713 = !DISubprogram(name: "put_device", scope: !31, file: !31, line: 1231, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3714 = distinct !DISubprogram(name: "acpi_dev_get_next_match_dev", scope: !3, file: !3, line: 932, type: !3715, scopeLine: 933, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3717)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!239, !239, !183, !183, !496}
!3717 = !{!3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725}
!3718 = !DILocalVariable(name: "adev", arg: 1, scope: !3714, file: !3, line: 932, type: !239)
!3719 = !DILocalVariable(name: "hid", arg: 2, scope: !3714, file: !3, line: 932, type: !183)
!3720 = !DILocalVariable(name: "uid", arg: 3, scope: !3714, file: !3, line: 932, type: !183)
!3721 = !DILocalVariable(name: "hrv", arg: 4, scope: !3714, file: !3, line: 932, type: !496)
!3722 = !DILocalVariable(name: "start", scope: !3714, file: !3, line: 934, type: !893)
!3723 = !DILocalVariable(name: "match", scope: !3714, file: !3, line: 935, type: !3602)
!3724 = !DILocalVariable(name: "dev", scope: !3714, file: !3, line: 936, type: !893)
!3725 = !DILocalVariable(name: "__mptr", scope: !3726, file: !3, line: 944, type: !124)
!3726 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 944, column: 15)
!3727 = !DILocation(line: 932, column: 49, scope: !3714)
!3728 = !DILocation(line: 932, column: 67, scope: !3714)
!3729 = !DILocation(line: 932, column: 84, scope: !3714)
!3730 = !DILocation(line: 932, column: 93, scope: !3714)
!3731 = !DILocation(line: 934, column: 2, scope: !3714)
!3732 = !DILocation(line: 934, column: 17, scope: !3714)
!3733 = !DILocation(line: 934, column: 25, scope: !3714)
!3734 = !DILocation(line: 934, column: 33, scope: !3714)
!3735 = !DILocation(line: 934, column: 39, scope: !3714)
!3736 = !DILocation(line: 935, column: 2, scope: !3714)
!3737 = !DILocation(line: 935, column: 29, scope: !3714)
!3738 = !DILocation(line: 936, column: 2, scope: !3714)
!3739 = !DILocation(line: 936, column: 17, scope: !3714)
!3740 = !DILocation(line: 938, column: 16, scope: !3714)
!3741 = !DILocation(line: 938, column: 10, scope: !3714)
!3742 = !DILocation(line: 938, column: 23, scope: !3714)
!3743 = !DILocation(line: 938, column: 27, scope: !3714)
!3744 = !DILocation(line: 938, column: 2, scope: !3714)
!3745 = !DILocation(line: 939, column: 14, scope: !3714)
!3746 = !DILocation(line: 939, column: 8, scope: !3714)
!3747 = !DILocation(line: 939, column: 12, scope: !3714)
!3748 = !DILocation(line: 940, column: 14, scope: !3714)
!3749 = !DILocation(line: 940, column: 8, scope: !3714)
!3750 = !DILocation(line: 940, column: 12, scope: !3714)
!3751 = !DILocation(line: 942, column: 40, scope: !3714)
!3752 = !DILocation(line: 942, column: 8, scope: !3714)
!3753 = !DILocation(line: 942, column: 6, scope: !3714)
!3754 = !DILocation(line: 943, column: 15, scope: !3714)
!3755 = !DILocation(line: 943, column: 2, scope: !3714)
!3756 = !DILocation(line: 944, column: 9, scope: !3714)
!3757 = !DILocation(line: 944, column: 15, scope: !3726)
!3758 = !DILocation(line: 944, column: 15, scope: !3714)
!3759 = !DILocation(line: 945, column: 1, scope: !3714)
!3760 = !DILocation(line: 944, column: 2, scope: !3714)
!3761 = distinct !DISubprogram(name: "acpi_dev_put", scope: !241, file: !241, line: 807, type: !1949, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3762)
!3762 = !{!3763}
!3763 = !DILocalVariable(name: "adev", arg: 1, scope: !3761, file: !241, line: 807, type: !239)
!3764 = !DILocation(line: 807, column: 53, scope: !3761)
!3765 = !DILocation(line: 809, column: 6, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3761, file: !241, line: 809, column: 6)
!3767 = !DILocation(line: 809, column: 6, scope: !3761)
!3768 = !DILocation(line: 810, column: 15, scope: !3766)
!3769 = !DILocation(line: 810, column: 21, scope: !3766)
!3770 = !DILocation(line: 810, column: 3, scope: !3766)
!3771 = !DILocation(line: 811, column: 1, scope: !3761)
!3772 = distinct !DISubprogram(name: "acpi_dev_get_first_match_dev", scope: !3, file: !3, line: 962, type: !3773, scopeLine: 963, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3775)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!239, !183, !183, !496}
!3775 = !{!3776, !3777, !3778}
!3776 = !DILocalVariable(name: "hid", arg: 1, scope: !3772, file: !3, line: 962, type: !183)
!3777 = !DILocalVariable(name: "uid", arg: 2, scope: !3772, file: !3, line: 962, type: !183)
!3778 = !DILocalVariable(name: "hrv", arg: 3, scope: !3772, file: !3, line: 962, type: !496)
!3779 = !DILocation(line: 962, column: 42, scope: !3772)
!3780 = !DILocation(line: 962, column: 59, scope: !3772)
!3781 = !DILocation(line: 962, column: 68, scope: !3772)
!3782 = !DILocation(line: 964, column: 43, scope: !3772)
!3783 = !DILocation(line: 964, column: 48, scope: !3772)
!3784 = !DILocation(line: 964, column: 53, scope: !3772)
!3785 = !DILocation(line: 964, column: 9, scope: !3772)
!3786 = !DILocation(line: 964, column: 2, scope: !3772)
!3787 = distinct !DISubprogram(name: "acpi_reduced_hardware", scope: !3, file: !3, line: 973, type: !720, scopeLine: 974, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3788 = !DILocation(line: 975, column: 9, scope: !3787)
!3789 = !DILocation(line: 975, column: 2, scope: !3787)
!3790 = distinct !DISubprogram(name: "acpi_backlight", scope: !3, file: !3, line: 986, type: !2107, scopeLine: 987, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3791)
!3791 = !{!3792}
!3792 = !DILocalVariable(name: "str", arg: 1, scope: !3790, file: !3, line: 986, type: !144)
!3793 = !DILocation(line: 986, column: 40, scope: !3790)
!3794 = !DILocation(line: 988, column: 39, scope: !3790)
!3795 = !DILocation(line: 988, column: 2, scope: !3790)
!3796 = !DILocation(line: 990, column: 2, scope: !3790)
!3797 = distinct !DISubprogram(name: "acpi_match_platform_list", scope: !3, file: !3, line: 1001, type: !3798, scopeLine: 1002, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3815)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!51, !3800}
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3802)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_platform_list", file: !90, line: 689, size: 448, elements: !3803)
!3803 = !{!3804, !3806, !3810, !3811, !3812, !3813, !3814}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !3802, file: !90, line: 690, baseType: !3805, size: 56)
!3805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 56, elements: !1123)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !3802, file: !90, line: 691, baseType: !3807, size: 72, offset: 56)
!3807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 72, elements: !3808)
!3808 = !{!3809}
!3809 = !DISubrange(count: 9)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !3802, file: !90, line: 692, baseType: !109, size: 32, offset: 128)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !3802, file: !90, line: 693, baseType: !144, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !3802, file: !90, line: 694, baseType: !89, size: 32, offset: 256)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !3802, file: !90, line: 695, baseType: !144, size: 64, offset: 320)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3802, file: !90, line: 696, baseType: !109, size: 32, offset: 384)
!3815 = !{!3816, !3817, !3831}
!3816 = !DILocalVariable(name: "plat", arg: 1, scope: !3797, file: !3, line: 1001, type: !3800)
!3817 = !DILocalVariable(name: "hdr", scope: !3797, file: !3, line: 1003, type: !3818)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !3819, line: 68, size: 288, elements: !3820)
!3819 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!3820 = !{!3821, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !3818, file: !3819, line: 69, baseType: !3822, size: 32)
!3822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 32, elements: !559)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3818, file: !3819, line: 70, baseType: !109, size: 32, offset: 32)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !3818, file: !3819, line: 71, baseType: !120, size: 8, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !3818, file: !3819, line: 72, baseType: !120, size: 8, offset: 72)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !3818, file: !3819, line: 73, baseType: !2031, size: 48, offset: 80)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !3818, file: !3819, line: 74, baseType: !1817, size: 64, offset: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !3818, file: !3819, line: 75, baseType: !109, size: 32, offset: 192)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !3818, file: !3819, line: 76, baseType: !3822, size: 32, offset: 224)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !3818, file: !3819, line: 77, baseType: !109, size: 32, offset: 256)
!3831 = !DILocalVariable(name: "idx", scope: !3797, file: !3, line: 1004, type: !51)
!3832 = !DILocation(line: 1001, column: 63, scope: !3797)
!3833 = !DILocation(line: 1003, column: 2, scope: !3797)
!3834 = !DILocation(line: 1003, column: 27, scope: !3797)
!3835 = !DILocation(line: 1004, column: 2, scope: !3797)
!3836 = !DILocation(line: 1004, column: 6, scope: !3797)
!3837 = !DILocation(line: 1006, column: 6, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3797, file: !3, line: 1006, column: 6)
!3839 = !DILocation(line: 1006, column: 6, scope: !3797)
!3840 = !DILocation(line: 1007, column: 3, scope: !3838)
!3841 = !DILocation(line: 1009, column: 2, scope: !3797)
!3842 = !DILocation(line: 1009, column: 9, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !3, line: 1009, column: 2)
!3844 = distinct !DILexicalBlock(scope: !3797, file: !3, line: 1009, column: 2)
!3845 = !DILocation(line: 1009, column: 15, scope: !3843)
!3846 = !DILocation(line: 1009, column: 2, scope: !3844)
!3847 = !DILocation(line: 1010, column: 7, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 1010, column: 7)
!3849 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 1009, column: 41)
!3850 = !DILocation(line: 1010, column: 7, scope: !3849)
!3851 = !DILocation(line: 1011, column: 4, scope: !3848)
!3852 = !DILocation(line: 1013, column: 15, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 1013, column: 7)
!3854 = !DILocation(line: 1013, column: 21, scope: !3853)
!3855 = !DILocation(line: 1013, column: 33, scope: !3853)
!3856 = !DILocation(line: 1013, column: 29, scope: !3853)
!3857 = !DILocation(line: 1013, column: 7, scope: !3853)
!3858 = !DILocation(line: 1013, column: 7, scope: !3849)
!3859 = !DILocation(line: 1014, column: 4, scope: !3853)
!3860 = !DILocation(line: 1016, column: 15, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 1016, column: 7)
!3862 = !DILocation(line: 1016, column: 21, scope: !3861)
!3863 = !DILocation(line: 1016, column: 39, scope: !3861)
!3864 = !DILocation(line: 1016, column: 35, scope: !3861)
!3865 = !DILocation(line: 1016, column: 7, scope: !3861)
!3866 = !DILocation(line: 1016, column: 7, scope: !3849)
!3867 = !DILocation(line: 1017, column: 4, scope: !3861)
!3868 = !DILocation(line: 1019, column: 8, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 1019, column: 7)
!3870 = !DILocation(line: 1019, column: 14, scope: !3869)
!3871 = !DILocation(line: 1019, column: 19, scope: !3869)
!3872 = !DILocation(line: 1019, column: 36, scope: !3869)
!3873 = !DILocation(line: 1020, column: 8, scope: !3869)
!3874 = !DILocation(line: 1020, column: 14, scope: !3869)
!3875 = !DILocation(line: 1020, column: 19, scope: !3869)
!3876 = !DILocation(line: 1020, column: 41, scope: !3869)
!3877 = !DILocation(line: 1020, column: 48, scope: !3869)
!3878 = !DILocation(line: 1020, column: 64, scope: !3869)
!3879 = !DILocation(line: 1020, column: 70, scope: !3869)
!3880 = !DILocation(line: 1020, column: 61, scope: !3869)
!3881 = !DILocation(line: 1020, column: 84, scope: !3869)
!3882 = !DILocation(line: 1021, column: 8, scope: !3869)
!3883 = !DILocation(line: 1021, column: 14, scope: !3869)
!3884 = !DILocation(line: 1021, column: 19, scope: !3869)
!3885 = !DILocation(line: 1021, column: 44, scope: !3869)
!3886 = !DILocation(line: 1021, column: 51, scope: !3869)
!3887 = !DILocation(line: 1021, column: 67, scope: !3869)
!3888 = !DILocation(line: 1021, column: 73, scope: !3869)
!3889 = !DILocation(line: 1021, column: 64, scope: !3869)
!3890 = !DILocation(line: 1021, column: 87, scope: !3869)
!3891 = !DILocation(line: 1022, column: 8, scope: !3869)
!3892 = !DILocation(line: 1022, column: 14, scope: !3869)
!3893 = !DILocation(line: 1022, column: 19, scope: !3869)
!3894 = !DILocation(line: 1022, column: 28, scope: !3869)
!3895 = !DILocation(line: 1022, column: 35, scope: !3869)
!3896 = !DILocation(line: 1022, column: 51, scope: !3869)
!3897 = !DILocation(line: 1022, column: 57, scope: !3869)
!3898 = !DILocation(line: 1022, column: 48, scope: !3869)
!3899 = !DILocation(line: 1019, column: 7, scope: !3849)
!3900 = !DILocation(line: 1023, column: 11, scope: !3869)
!3901 = !DILocation(line: 1023, column: 4, scope: !3869)
!3902 = !DILocation(line: 1024, column: 2, scope: !3849)
!3903 = !DILocation(line: 1009, column: 30, scope: !3843)
!3904 = !DILocation(line: 1009, column: 37, scope: !3843)
!3905 = !DILocation(line: 1009, column: 2, scope: !3843)
!3906 = distinct !{!3906, !3846, !3907, !2318, !2319}
!3907 = !DILocation(line: 1024, column: 2, scope: !3844)
!3908 = !DILocation(line: 1026, column: 2, scope: !3797)
!3909 = !DILocation(line: 1027, column: 1, scope: !3797)
!3910 = !DISubprogram(name: "acpi_get_table_header", scope: !2576, file: !2576, line: 484, type: !3911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!107, !2509, !109, !3913}
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3914 = !DISubprogram(name: "strncmp", scope: !2712, file: !2712, line: 91, type: !3915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!51, !183, !183, !372}
!3917 = distinct !DISubprogram(name: "kzalloc", scope: !97, file: !97, line: 719, type: !3918, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3920)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!124, !371, !126}
!3920 = !{!3921, !3922}
!3921 = !DILocalVariable(name: "size", arg: 1, scope: !3917, file: !97, line: 719, type: !371)
!3922 = !DILocalVariable(name: "flags", arg: 2, scope: !3917, file: !97, line: 719, type: !126)
!3923 = !DILocation(line: 719, column: 52, scope: !3917)
!3924 = !DILocation(line: 719, column: 64, scope: !3917)
!3925 = !DILocation(line: 721, column: 17, scope: !3917)
!3926 = !DILocation(line: 721, column: 23, scope: !3917)
!3927 = !DILocation(line: 721, column: 29, scope: !3917)
!3928 = !DILocation(line: 721, column: 9, scope: !3917)
!3929 = !DILocation(line: 721, column: 2, scope: !3917)
!3930 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !3931, file: !3931, line: 65, type: !3932, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3931 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!374}
!3934 = !DILocation(line: 67, column: 9, scope: !3930)
!3935 = !DILocation(line: 67, column: 2, scope: !3930)
!3936 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !3931, file: !3931, line: 120, type: !3937, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3939)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!51, !374}
!3939 = !{!3940}
!3940 = !DILocalVariable(name: "flags", arg: 1, scope: !3936, file: !3931, line: 120, type: !374)
!3941 = !DILocation(line: 120, column: 67, scope: !3936)
!3942 = !DILocation(line: 122, column: 11, scope: !3936)
!3943 = !DILocation(line: 122, column: 17, scope: !3936)
!3944 = !DILocation(line: 122, column: 9, scope: !3936)
!3945 = !DILocation(line: 122, column: 2, scope: !3936)
!3946 = distinct !DISubprogram(name: "kmalloc", scope: !97, file: !97, line: 591, type: !3918, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3947)
!3947 = !{!3948, !3949, !3950}
!3948 = !DILocalVariable(name: "size", arg: 1, scope: !3946, file: !97, line: 591, type: !371)
!3949 = !DILocalVariable(name: "flags", arg: 2, scope: !3946, file: !97, line: 591, type: !126)
!3950 = !DILocalVariable(name: "index", scope: !3951, file: !97, line: 594, type: !7)
!3951 = distinct !DILexicalBlock(scope: !3952, file: !97, line: 593, column: 42)
!3952 = distinct !DILexicalBlock(scope: !3946, file: !97, line: 593, column: 6)
!3953 = !DILocation(line: 591, column: 61, scope: !3946)
!3954 = !DILocation(line: 591, column: 73, scope: !3946)
!3955 = !DILocation(line: 593, column: 27, scope: !3952)
!3956 = !DILocation(line: 593, column: 6, scope: !3952)
!3957 = !DILocation(line: 593, column: 33, scope: !3952)
!3958 = !DILocation(line: 593, column: 36, scope: !3952)
!3959 = !DILocation(line: 593, column: 6, scope: !3946)
!3960 = !DILocation(line: 594, column: 3, scope: !3951)
!3961 = !DILocation(line: 594, column: 16, scope: !3951)
!3962 = !DILocation(line: 596, column: 7, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3951, file: !97, line: 596, column: 7)
!3964 = !DILocation(line: 596, column: 12, scope: !3963)
!3965 = !DILocation(line: 596, column: 7, scope: !3951)
!3966 = !DILocation(line: 597, column: 25, scope: !3963)
!3967 = !DILocation(line: 597, column: 31, scope: !3963)
!3968 = !DILocation(line: 597, column: 11, scope: !3963)
!3969 = !DILocation(line: 597, column: 4, scope: !3963)
!3970 = !DILocation(line: 599, column: 11, scope: !3951)
!3971 = !DILocation(line: 599, column: 9, scope: !3951)
!3972 = !DILocation(line: 601, column: 33, scope: !3951)
!3973 = !DILocation(line: 601, column: 40, scope: !3951)
!3974 = !DILocation(line: 601, column: 20, scope: !3951)
!3975 = !DILocation(line: 601, column: 5, scope: !3951)
!3976 = !DILocation(line: 601, column: 51, scope: !3951)
!3977 = !DILocation(line: 602, column: 5, scope: !3951)
!3978 = !DILocation(line: 602, column: 12, scope: !3951)
!3979 = !DILocation(line: 600, column: 10, scope: !3951)
!3980 = !DILocation(line: 600, column: 3, scope: !3951)
!3981 = !DILocation(line: 603, column: 2, scope: !3952)
!3982 = !DILocation(line: 604, column: 19, scope: !3946)
!3983 = !DILocation(line: 604, column: 25, scope: !3946)
!3984 = !DILocation(line: 604, column: 9, scope: !3946)
!3985 = !DILocation(line: 604, column: 2, scope: !3946)
!3986 = !DILocation(line: 605, column: 1, scope: !3946)
!3987 = !DISubprogram(name: "kmalloc_large", scope: !97, file: !97, line: 531, type: !3918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3988 = distinct !DISubprogram(name: "__kmalloc_index", scope: !97, file: !97, line: 444, type: !3989, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3991)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!7, !371, !269}
!3991 = !{!3992, !3993}
!3992 = !DILocalVariable(name: "size", arg: 1, scope: !3988, file: !97, line: 444, type: !371)
!3993 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3988, file: !97, line: 445, type: !269)
!3994 = !DILocation(line: 444, column: 60, scope: !3988)
!3995 = !DILocation(line: 445, column: 16, scope: !3988)
!3996 = !DILocation(line: 447, column: 7, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 447, column: 6)
!3998 = !DILocation(line: 447, column: 6, scope: !3988)
!3999 = !DILocation(line: 448, column: 3, scope: !3997)
!4000 = !DILocation(line: 450, column: 6, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 450, column: 6)
!4002 = !DILocation(line: 450, column: 11, scope: !4001)
!4003 = !DILocation(line: 450, column: 6, scope: !3988)
!4004 = !DILocation(line: 451, column: 3, scope: !4001)
!4005 = !DILocation(line: 453, column: 32, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 453, column: 6)
!4007 = !DILocation(line: 453, column: 37, scope: !4006)
!4008 = !DILocation(line: 453, column: 42, scope: !4006)
!4009 = !DILocation(line: 453, column: 45, scope: !4006)
!4010 = !DILocation(line: 453, column: 50, scope: !4006)
!4011 = !DILocation(line: 453, column: 6, scope: !3988)
!4012 = !DILocation(line: 454, column: 3, scope: !4006)
!4013 = !DILocation(line: 455, column: 32, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 455, column: 6)
!4015 = !DILocation(line: 455, column: 37, scope: !4014)
!4016 = !DILocation(line: 455, column: 43, scope: !4014)
!4017 = !DILocation(line: 455, column: 46, scope: !4014)
!4018 = !DILocation(line: 455, column: 51, scope: !4014)
!4019 = !DILocation(line: 455, column: 6, scope: !3988)
!4020 = !DILocation(line: 456, column: 3, scope: !4014)
!4021 = !DILocation(line: 457, column: 6, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 457, column: 6)
!4023 = !DILocation(line: 457, column: 11, scope: !4022)
!4024 = !DILocation(line: 457, column: 6, scope: !3988)
!4025 = !DILocation(line: 457, column: 26, scope: !4022)
!4026 = !DILocation(line: 458, column: 6, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 458, column: 6)
!4028 = !DILocation(line: 458, column: 11, scope: !4027)
!4029 = !DILocation(line: 458, column: 6, scope: !3988)
!4030 = !DILocation(line: 458, column: 26, scope: !4027)
!4031 = !DILocation(line: 459, column: 6, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 459, column: 6)
!4033 = !DILocation(line: 459, column: 11, scope: !4032)
!4034 = !DILocation(line: 459, column: 6, scope: !3988)
!4035 = !DILocation(line: 459, column: 26, scope: !4032)
!4036 = !DILocation(line: 460, column: 6, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 460, column: 6)
!4038 = !DILocation(line: 460, column: 11, scope: !4037)
!4039 = !DILocation(line: 460, column: 6, scope: !3988)
!4040 = !DILocation(line: 460, column: 26, scope: !4037)
!4041 = !DILocation(line: 461, column: 6, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 461, column: 6)
!4043 = !DILocation(line: 461, column: 11, scope: !4042)
!4044 = !DILocation(line: 461, column: 6, scope: !3988)
!4045 = !DILocation(line: 461, column: 26, scope: !4042)
!4046 = !DILocation(line: 462, column: 6, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 462, column: 6)
!4048 = !DILocation(line: 462, column: 11, scope: !4047)
!4049 = !DILocation(line: 462, column: 6, scope: !3988)
!4050 = !DILocation(line: 462, column: 26, scope: !4047)
!4051 = !DILocation(line: 463, column: 6, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 463, column: 6)
!4053 = !DILocation(line: 463, column: 11, scope: !4052)
!4054 = !DILocation(line: 463, column: 6, scope: !3988)
!4055 = !DILocation(line: 463, column: 26, scope: !4052)
!4056 = !DILocation(line: 464, column: 6, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 464, column: 6)
!4058 = !DILocation(line: 464, column: 11, scope: !4057)
!4059 = !DILocation(line: 464, column: 6, scope: !3988)
!4060 = !DILocation(line: 464, column: 26, scope: !4057)
!4061 = !DILocation(line: 465, column: 6, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 465, column: 6)
!4063 = !DILocation(line: 465, column: 11, scope: !4062)
!4064 = !DILocation(line: 465, column: 6, scope: !3988)
!4065 = !DILocation(line: 465, column: 26, scope: !4062)
!4066 = !DILocation(line: 466, column: 6, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 466, column: 6)
!4068 = !DILocation(line: 466, column: 11, scope: !4067)
!4069 = !DILocation(line: 466, column: 6, scope: !3988)
!4070 = !DILocation(line: 466, column: 26, scope: !4067)
!4071 = !DILocation(line: 467, column: 6, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 467, column: 6)
!4073 = !DILocation(line: 467, column: 11, scope: !4072)
!4074 = !DILocation(line: 467, column: 6, scope: !3988)
!4075 = !DILocation(line: 467, column: 26, scope: !4072)
!4076 = !DILocation(line: 468, column: 6, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 468, column: 6)
!4078 = !DILocation(line: 468, column: 11, scope: !4077)
!4079 = !DILocation(line: 468, column: 6, scope: !3988)
!4080 = !DILocation(line: 468, column: 26, scope: !4077)
!4081 = !DILocation(line: 469, column: 6, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 469, column: 6)
!4083 = !DILocation(line: 469, column: 11, scope: !4082)
!4084 = !DILocation(line: 469, column: 6, scope: !3988)
!4085 = !DILocation(line: 469, column: 26, scope: !4082)
!4086 = !DILocation(line: 470, column: 6, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 470, column: 6)
!4088 = !DILocation(line: 470, column: 11, scope: !4087)
!4089 = !DILocation(line: 470, column: 6, scope: !3988)
!4090 = !DILocation(line: 470, column: 26, scope: !4087)
!4091 = !DILocation(line: 471, column: 6, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 471, column: 6)
!4093 = !DILocation(line: 471, column: 11, scope: !4092)
!4094 = !DILocation(line: 471, column: 6, scope: !3988)
!4095 = !DILocation(line: 471, column: 26, scope: !4092)
!4096 = !DILocation(line: 472, column: 6, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 472, column: 6)
!4098 = !DILocation(line: 472, column: 11, scope: !4097)
!4099 = !DILocation(line: 472, column: 6, scope: !3988)
!4100 = !DILocation(line: 472, column: 26, scope: !4097)
!4101 = !DILocation(line: 473, column: 6, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 473, column: 6)
!4103 = !DILocation(line: 473, column: 11, scope: !4102)
!4104 = !DILocation(line: 473, column: 6, scope: !3988)
!4105 = !DILocation(line: 473, column: 26, scope: !4102)
!4106 = !DILocation(line: 474, column: 6, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 474, column: 6)
!4108 = !DILocation(line: 474, column: 11, scope: !4107)
!4109 = !DILocation(line: 474, column: 6, scope: !3988)
!4110 = !DILocation(line: 474, column: 27, scope: !4107)
!4111 = !DILocation(line: 475, column: 6, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 475, column: 6)
!4113 = !DILocation(line: 475, column: 11, scope: !4112)
!4114 = !DILocation(line: 475, column: 6, scope: !3988)
!4115 = !DILocation(line: 475, column: 32, scope: !4112)
!4116 = !DILocation(line: 477, column: 50, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !3988, file: !97, line: 477, column: 6)
!4118 = !DILocation(line: 477, column: 6, scope: !3988)
!4119 = !DILocation(line: 478, column: 3, scope: !4117)
!4120 = !DILocation(line: 478, column: 3, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4122, file: !97, line: 478, column: 3)
!4122 = distinct !DILexicalBlock(scope: !4117, file: !97, line: 478, column: 3)
!4123 = !{i32 -2142577765}
!4124 = !DILocation(line: 478, column: 3, scope: !4122)
!4125 = !DILocation(line: 480, column: 3, scope: !4117)
!4126 = !DILocation(line: 480, column: 3, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4117, file: !97, line: 480, column: 3)
!4128 = !DILocation(line: 480, column: 3, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4127, file: !97, line: 480, column: 3)
!4130 = !DILocation(line: 480, column: 3, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4127, file: !97, line: 480, column: 3)
!4132 = !{i64 2152389734, i64 2152389763, i64 2152389809, i64 2152389867, i64 2152389921, i64 2152389975, i64 2152390030, i64 2152390061}
!4133 = !DILocation(line: 483, column: 2, scope: !3988)
!4134 = !DILocation(line: 484, column: 1, scope: !3988)
!4135 = !DISubprogram(name: "kmalloc_trace", scope: !97, file: !97, line: 525, type: !4136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!124, !4138, !126, !371}
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4140, line: 11, flags: DIFlagFwdDecl)
!4140 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!4141 = distinct !DISubprogram(name: "kmalloc_type", scope: !97, file: !97, line: 401, type: !4142, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4144)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!96, !126, !374}
!4144 = !{!4145, !4146}
!4145 = !DILocalVariable(name: "flags", arg: 1, scope: !4141, file: !97, line: 401, type: !126)
!4146 = !DILocalVariable(name: "caller", arg: 2, scope: !4141, file: !97, line: 401, type: !374)
!4147 = !DILocation(line: 401, column: 67, scope: !4141)
!4148 = !DILocation(line: 401, column: 88, scope: !4141)
!4149 = !DILocation(line: 407, column: 6, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4141, file: !97, line: 407, column: 6)
!4151 = !DILocation(line: 407, column: 6, scope: !4141)
!4152 = !DILocation(line: 413, column: 3, scope: !4150)
!4153 = !DILocation(line: 423, column: 38, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4141, file: !97, line: 423, column: 6)
!4155 = !DILocation(line: 423, column: 44, scope: !4154)
!4156 = !DILocation(line: 423, column: 6, scope: !4141)
!4157 = !DILocation(line: 424, column: 3, scope: !4154)
!4158 = !DILocation(line: 426, column: 3, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4141, file: !97, line: 425, column: 6)
!4160 = !DILocation(line: 429, column: 1, scope: !4141)
!4161 = !DISubprogram(name: "__kmalloc", scope: !97, file: !97, line: 488, type: !3918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4162 = !DISubprogram(name: "__compiletime_assert_196", scope: !97, file: !97, line: 478, type: !1342, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4163 = distinct !DISubprogram(name: "native_save_fl", scope: !3931, file: !3931, line: 17, type: !3932, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4164)
!4164 = !{!4165}
!4165 = !DILocalVariable(name: "flags", scope: !4163, file: !3931, line: 19, type: !374)
!4166 = !DILocation(line: 19, column: 2, scope: !4163)
!4167 = !DILocation(line: 19, column: 16, scope: !4163)
!4168 = !DILocation(line: 26, column: 2, scope: !4163)
!4169 = !{i64 1905108, i64 1905129}
!4170 = !DILocation(line: 32, column: 9, scope: !4163)
!4171 = !DILocation(line: 33, column: 1, scope: !4163)
!4172 = !DILocation(line: 32, column: 2, scope: !4163)
!4173 = distinct !DISubprogram(name: "preempt_count", scope: !4174, file: !4174, line: 25, type: !1103, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4175)
!4174 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!4175 = !{!4176}
!4176 = !DILocalVariable(name: "pfo_val__", scope: !4177, file: !4174, line: 27, type: !109)
!4177 = distinct !DILexicalBlock(scope: !4173, file: !4174, line: 27, column: 9)
!4178 = !DILocation(line: 27, column: 9, scope: !4177)
!4179 = !{i64 2149634254}
!4180 = !DILocation(line: 27, column: 9, scope: !4173)
!4181 = !DILocation(line: 27, column: 48, scope: !4173)
!4182 = !DILocation(line: 27, column: 2, scope: !4173)
!4183 = !DISubprogram(name: "acpi_get_name", scope: !2576, file: !2576, line: 524, type: !4184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!107, !163, !109, !2133}
!4186 = !DISubprogram(name: "kstrtoull", scope: !3534, file: !3534, line: 12, type: !4187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!51, !183, !7, !2515}
!4189 = !DISubprogram(name: "acpi_match_device_ids", scope: !241, file: !241, line: 569, type: !1945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
