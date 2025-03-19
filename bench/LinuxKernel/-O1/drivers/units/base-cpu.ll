; ModuleID = 'drivers/base/cpu.c'
source_filename = "drivers/base/cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpu_subsys: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpu_subsys ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_get_cpu_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad get_cpu_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpu_device_create: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpu_device_create ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpu_is_hotpluggable: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpu_is_hotpluggable ; .previous"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.cpuinfo_x86 = type { %union.anon.13, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.15, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.13 = type { i32 }
%union.anon.15 = type { i64, [88 x i8] }
%struct.cpumask = type { [1 x i64] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.cpu_attr = type { %struct.device_attribute, ptr }
%struct.cpu = type { i32, i32, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.anon.14 = type { i8, i8, i8, i8 }

@cpu_sys_devices = internal global ptr null, section ".data..percpu", align 8, !dbg !0
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1, !dbg !4879
@cpu_subsys = hidden global %struct.bus_type { ptr @.str, ptr @.str, ptr null, ptr null, ptr null, ptr @cpu_subsys_match, ptr @cpu_uevent, ptr null, ptr null, ptr null, ptr null, ptr @cpu_subsys_online, ptr @cpu_subsys_offline, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, align 8, !dbg !4882
@__UNIQUE_ID___addressable_cpu_subsys324 = internal global ptr @cpu_subsys, section ".discard.addressable", align 8, !dbg !4884
@common_cpu_attr_groups = internal global [2 x ptr] [ptr @crash_note_cpu_attr_group, ptr null], align 16, !dbg !4927
@hotplugable_cpu_attr_groups = internal global [2 x ptr] [ptr @crash_note_cpu_attr_group, ptr null], align 16, !dbg !4953
@nr_cpu_ids = external dso_local global i32, align 4
@__UNIQUE_ID___addressable_get_cpu_device325 = internal global ptr @get_cpu_device, section ".discard.addressable", align 8, !dbg !4886
@__UNIQUE_ID___addressable_cpu_device_create326 = internal global ptr @cpu_device_create, section ".discard.addressable", align 8, !dbg !4888
@__UNIQUE_ID___addressable_cpu_is_hotpluggable327 = internal global ptr @cpu_is_hotpluggable, section ".discard.addressable", align 8, !dbg !4890
@cpu_root_attr_groups = internal global [2 x ptr] [ptr @cpu_root_attr_group, ptr null], align 16, !dbg !4960
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to register CPU subsystem\00", align 1, !dbg !4892
@total_cpus = hidden global i32 0, align 4, !dbg !4897
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"MODALIAS=%s\00", align 1, !dbg !4899
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4902
@.str.4 = private unnamed_addr constant [44 x i8] c"cpu:type:x86,ven%04Xfam%04Xmod%04X:feature:\00", align 1, !dbg !4907
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"CPU features overflow page\0A\00", align 1, !dbg !4912
@.str.6 = private unnamed_addr constant [19 x i8] c"drivers/base/cpu.c\00", align 1, !dbg !4917
@.str.7 = private unnamed_addr constant [6 x i8] c",%04X\00", align 1, !dbg !4922
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !4924
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@crash_note_cpu_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @crash_note_cpu_attrs, ptr null }, align 8, !dbg !4930
@crash_note_cpu_attrs = internal global [3 x ptr] [ptr @dev_attr_crash_notes, ptr @dev_attr_crash_notes_size, ptr null], align 16, !dbg !4932
@dev_attr_crash_notes = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 256 }, ptr @crash_notes_show, ptr null }, align 8, !dbg !4937
@dev_attr_crash_notes_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 256 }, ptr @crash_notes_size_show, ptr null }, align 8, !dbg !4946
@.str.9 = private unnamed_addr constant [12 x i8] c"crash_notes\00", align 1, !dbg !4935
@crash_notes = external dso_local global ptr, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"%llx\0A\00", align 1, !dbg !4939
@.str.11 = private unnamed_addr constant [17 x i8] c"crash_notes_size\00", align 1, !dbg !4941
@.str.12 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1, !dbg !4948
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"Not affected\0A\00", align 1, !dbg !4955
@cpu_root_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cpu_root_attrs, ptr null }, align 8, !dbg !4962
@cpu_root_attrs = internal global [9 x ptr] [ptr @cpu_attrs, ptr getelementptr (i8, ptr @cpu_attrs, i64 40), ptr getelementptr (i8, ptr @cpu_attrs, i64 80), ptr @dev_attr_kernel_max, ptr @dev_attr_offline, ptr @dev_attr_isolated, ptr @dev_attr_crash_hotplug, ptr @dev_attr_modalias, ptr null], align 16, !dbg !4964
@cpu_attrs = internal global [3 x %struct.cpu_attr] [%struct.cpu_attr { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @show_cpus_attr, ptr null }, ptr @__cpu_online_mask }, %struct.cpu_attr { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @show_cpus_attr, ptr null }, ptr @__cpu_possible_mask }, %struct.cpu_attr { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @show_cpus_attr, ptr null }, ptr @__cpu_present_mask }], align 16, !dbg !4977
@dev_attr_kernel_max = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292 }, ptr @print_cpus_kernel_max, ptr null }, align 8, !dbg !4985
@dev_attr_offline = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @print_cpus_offline, ptr null }, align 8, !dbg !4991
@dev_attr_isolated = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @print_cpus_isolated, ptr null }, align 8, !dbg !5004
@dev_attr_crash_hotplug = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 256 }, ptr @crash_hotplug_show, ptr null }, align 8, !dbg !5010
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292 }, ptr @print_cpu_modalias, ptr null }, align 8, !dbg !5014
@.str.14 = private unnamed_addr constant [7 x i8] c"online\00", align 1, !dbg !4969
@.str.15 = private unnamed_addr constant [9 x i8] c"possible\00", align 1, !dbg !4972
@.str.16 = private unnamed_addr constant [8 x i8] c"present\00", align 1, !dbg !4975
@__cpu_present_mask = external dso_local global %struct.cpumask, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"kernel_max\00", align 1, !dbg !4980
@.str.18 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !4987
@.str.19 = private unnamed_addr constant [8 x i8] c"offline\00", align 1, !dbg !4989
@.str.20 = private unnamed_addr constant [6 x i8] c"%*pbl\00", align 1, !dbg !4993
@.str.21 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !4995
@.str.22 = private unnamed_addr constant [3 x i8] c"%u\00", align 1, !dbg !4997
@.str.23 = private unnamed_addr constant [6 x i8] c"%u-%d\00", align 1, !dbg !5000
@.str.24 = private unnamed_addr constant [9 x i8] c"isolated\00", align 1, !dbg !5002
@.str.25 = private unnamed_addr constant [7 x i8] c"%*pbl\0A\00", align 1, !dbg !5006
@.str.26 = private unnamed_addr constant [14 x i8] c"crash_hotplug\00", align 1, !dbg !5008
@.str.27 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1, !dbg !5012
@cpu_root_vulnerabilities_group = internal constant %struct.attribute_group { ptr @.str.29, ptr null, ptr null, ptr @cpu_root_vulnerabilities_attrs, ptr null }, align 8, !dbg !5023
@.str.28 = private unnamed_addr constant [42 x i8] c"\013Unable to register CPU vulnerabilities\0A\00", align 1, !dbg !5016
@.str.29 = private unnamed_addr constant [16 x i8] c"vulnerabilities\00", align 1, !dbg !5021
@cpu_root_vulnerabilities_attrs = internal global [15 x ptr] [ptr @dev_attr_meltdown, ptr @dev_attr_spectre_v1, ptr @dev_attr_spectre_v2, ptr @dev_attr_spec_store_bypass, ptr @dev_attr_l1tf, ptr @dev_attr_mds, ptr @dev_attr_tsx_async_abort, ptr @dev_attr_itlb_multihit, ptr @dev_attr_srbds, ptr @dev_attr_mmio_stale_data, ptr @dev_attr_retbleed, ptr @dev_attr_spec_rstack_overflow, ptr @dev_attr_gather_data_sampling, ptr @dev_attr_reg_file_data_sampling, ptr null], align 16, !dbg !5025
@dev_attr_meltdown = internal global %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292 }, ptr @cpu_show_meltdown, ptr null }, align 8, !dbg !5032
@dev_attr_spectre_v1 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @cpu_show_spectre_v1, ptr null }, align 8, !dbg !5036
@dev_attr_spectre_v2 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @cpu_show_spectre_v2, ptr null }, align 8, !dbg !5040
@dev_attr_spec_store_bypass = internal global %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292 }, ptr @cpu_show_spec_store_bypass, ptr null }, align 8, !dbg !5047
@dev_attr_l1tf = internal global %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292 }, ptr @cpu_show_l1tf, ptr null }, align 8, !dbg !5051
@dev_attr_mds = internal global %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292 }, ptr @cpu_show_mds, ptr null }, align 8, !dbg !5055
@dev_attr_tsx_async_abort = internal global %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292 }, ptr @cpu_show_tsx_async_abort, ptr null }, align 8, !dbg !5059
@dev_attr_itlb_multihit = internal global %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292 }, ptr @cpu_show_itlb_multihit, ptr null }, align 8, !dbg !5063
@dev_attr_srbds = internal global %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292 }, ptr @cpu_show_srbds, ptr null }, align 8, !dbg !5067
@dev_attr_mmio_stale_data = internal global %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292 }, ptr @cpu_show_mmio_stale_data, ptr null }, align 8, !dbg !5071
@dev_attr_retbleed = internal global %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292 }, ptr @cpu_show_retbleed, ptr null }, align 8, !dbg !5075
@dev_attr_spec_rstack_overflow = internal global %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292 }, ptr @cpu_show_spec_rstack_overflow, ptr null }, align 8, !dbg !5079
@dev_attr_gather_data_sampling = internal global %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292 }, ptr @cpu_show_gds, ptr null }, align 8, !dbg !5083
@dev_attr_reg_file_data_sampling = internal global %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292 }, ptr @cpu_show_reg_file_data_sampling, ptr null }, align 8, !dbg !5090
@.str.30 = private unnamed_addr constant [9 x i8] c"meltdown\00", align 1, !dbg !5030
@.str.31 = private unnamed_addr constant [11 x i8] c"spectre_v1\00", align 1, !dbg !5034
@.str.32 = private unnamed_addr constant [11 x i8] c"spectre_v2\00", align 1, !dbg !5038
@.str.33 = private unnamed_addr constant [18 x i8] c"spec_store_bypass\00", align 1, !dbg !5042
@.str.34 = private unnamed_addr constant [5 x i8] c"l1tf\00", align 1, !dbg !5049
@.str.35 = private unnamed_addr constant [4 x i8] c"mds\00", align 1, !dbg !5053
@.str.36 = private unnamed_addr constant [16 x i8] c"tsx_async_abort\00", align 1, !dbg !5057
@.str.37 = private unnamed_addr constant [14 x i8] c"itlb_multihit\00", align 1, !dbg !5061
@.str.38 = private unnamed_addr constant [6 x i8] c"srbds\00", align 1, !dbg !5065
@.str.39 = private unnamed_addr constant [16 x i8] c"mmio_stale_data\00", align 1, !dbg !5069
@.str.40 = private unnamed_addr constant [9 x i8] c"retbleed\00", align 1, !dbg !5073
@.str.41 = private unnamed_addr constant [21 x i8] c"spec_rstack_overflow\00", align 1, !dbg !5077
@.str.42 = private unnamed_addr constant [21 x i8] c"gather_data_sampling\00", align 1, !dbg !5081
@.str.43 = private unnamed_addr constant [23 x i8] c"reg_file_data_sampling\00", align 1, !dbg !5085
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_cpu_subsys324, ptr @__UNIQUE_ID___addressable_get_cpu_device325, ptr @__UNIQUE_ID___addressable_cpu_device_create326, ptr @__UNIQUE_ID___addressable_cpu_is_hotpluggable327], section "llvm.metadata"

@cpu_show_meltdown = weak hidden alias i64 (ptr, ptr, ptr), ptr @cpu_show_not_affected
@cpu_show_spectre_v1 = weak hidden alias i64 (ptr, ptr, ptr), ptr @cpu_show_not_affected
@cpu_show_spectre_v2 = weak hidden alias i64 (ptr, ptr, ptr), ptr @cpu_show_not_affected
@cpu_show_spec_store_bypass = weak hidden alias i64 (ptr, ptr, ptr), ptr @cpu_show_not_affected
@cpu_show_l1tf = weak hidden alias i64 (ptr, ptr, ptr), ptr @cpu_show_not_affected
@cpu_show_mds = weak hidden alias i64 (ptr, ptr, ptr), ptr @cpu_show_not_affected
@cpu_show_tsx_async_abort = weak hidden alias i64 (ptr, ptr, ptr), ptr @cpu_show_not_affected
@cpu_show_itlb_multihit = weak hidden alias i64 (ptr, ptr, ptr), ptr @cpu_show_not_affected
@cpu_show_srbds = weak hidden alias i64 (ptr, ptr, ptr), ptr @cpu_show_not_affected
@cpu_show_mmio_stale_data = weak hidden alias i64 (ptr, ptr, ptr), ptr @cpu_show_not_affected
@cpu_show_retbleed = weak hidden alias i64 (ptr, ptr, ptr), ptr @cpu_show_not_affected
@cpu_show_spec_rstack_overflow = weak hidden alias i64 (ptr, ptr, ptr), ptr @cpu_show_not_affected
@cpu_show_gds = weak hidden alias i64 (ptr, ptr, ptr), ptr @cpu_show_not_affected
@cpu_show_reg_file_data_sampling = weak hidden alias i64 (ptr, ptr, ptr), ptr @cpu_show_not_affected

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @unregister_cpu(ptr noundef %cpu) #0 align 16 !dbg !5101 {
entry:
  %cpu.addr = alloca ptr, align 8
  %logical_cpu = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp3 = alloca ptr, align 8
  store ptr %cpu, ptr %cpu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5105, metadata !DIExpression()), !dbg !5112
  call void @llvm.lifetime.start.p0(i64 4, ptr %logical_cpu) #19, !dbg !5113
  call void @llvm.dbg.declare(metadata ptr %logical_cpu, metadata !5106, metadata !DIExpression()), !dbg !5114
  %0 = load ptr, ptr %cpu.addr, align 8, !dbg !5115
  %dev = getelementptr inbounds %struct.cpu, ptr %0, i32 0, i32 2, !dbg !5116
  %id = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27, !dbg !5117
  %1 = load i32, ptr %id, align 8, !dbg !5117
  store i32 %1, ptr %logical_cpu, align 4, !dbg !5114
  %2 = load i32, ptr %logical_cpu, align 4, !dbg !5118
  %3 = load i32, ptr %logical_cpu, align 4, !dbg !5119
  %call = call i32 @cpu_to_node(i32 noundef %3) #20, !dbg !5120
  %call1 = call i32 @unregister_cpu_under_node(i32 noundef %2, i32 noundef %call) #20, !dbg !5121
  %4 = load ptr, ptr %cpu.addr, align 8, !dbg !5122
  %dev2 = getelementptr inbounds %struct.cpu, ptr %4, i32 0, i32 2, !dbg !5123
  call void @device_unregister(ptr noundef %dev2) #20, !dbg !5124
  br label %do.body, !dbg !5125

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #19, !dbg !5126
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5107, metadata !DIExpression()), !dbg !5126
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5126
  %5 = load ptr, ptr %__vpp_verify, align 8, !dbg !5126
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #19, !dbg !5125
  br label %do.cond, !dbg !5126

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5126

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !5127
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5110, metadata !DIExpression()), !dbg !5127
  store i64 ptrtoint (ptr @cpu_sys_devices to i64), ptr %__ptr, align 8, !dbg !5127
  %6 = load i64, ptr %__ptr, align 8, !dbg !5127
  %7 = load i32, ptr %logical_cpu, align 4, !dbg !5127
  %idxprom = sext i32 %7 to i64, !dbg !5127
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5127
  %8 = load i64, ptr %arrayidx, align 8, !dbg !5127
  %add = add i64 %6, %8, !dbg !5127
  %9 = inttoptr i64 %add to ptr, !dbg !5127
  store ptr %9, ptr %tmp3, align 8, !dbg !5127
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !5125
  %10 = load ptr, ptr %tmp3, align 8, !dbg !5127
  store ptr %10, ptr %tmp, align 8, !dbg !5126
  %11 = load ptr, ptr %tmp, align 8, !dbg !5125
  store ptr null, ptr %11, align 8, !dbg !5128
  call void @llvm.lifetime.end.p0(i64 4, ptr %logical_cpu) #19, !dbg !5129
  ret void, !dbg !5129
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5130 dso_local i32 @unregister_cpu_under_node(i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_to_node(i32 noundef %cpu) #4 align 16 !dbg !5134 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5137, metadata !DIExpression()), !dbg !5143
  br label %do.body, !dbg !5144

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #19, !dbg !5145
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5138, metadata !DIExpression()), !dbg !5145
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5145
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5145
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #19, !dbg !5144
  br label %do.end, !dbg !5145

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !5146
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5141, metadata !DIExpression()), !dbg !5146
  store i64 ptrtoint (ptr @numa_node to i64), ptr %__ptr, align 8, !dbg !5146
  %1 = load i64, ptr %__ptr, align 8, !dbg !5146
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !5146
  %idxprom = sext i32 %2 to i64, !dbg !5146
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5146
  %3 = load i64, ptr %arrayidx, align 8, !dbg !5146
  %add = add i64 %1, %3, !dbg !5146
  %4 = inttoptr i64 %add to ptr, !dbg !5146
  store ptr %4, ptr %tmp1, align 8, !dbg !5146
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !5144
  %5 = load ptr, ptr %tmp1, align 8, !dbg !5146
  store ptr %5, ptr %tmp, align 8, !dbg !5145
  %6 = load ptr, ptr %tmp, align 8, !dbg !5144
  %7 = load i32, ptr %6, align 4, !dbg !5147
  ret i32 %7, !dbg !5148
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5149 dso_local void @device_unregister(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_subsys_match(ptr noundef %dev, ptr noundef %drv) #0 align 16 !dbg !5150 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5152, metadata !DIExpression()), !dbg !5154
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !5153, metadata !DIExpression()), !dbg !5155
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5156
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !5158
  %call = call zeroext i1 @acpi_driver_match_device(ptr noundef %0, ptr noundef %1) #20, !dbg !5159
  br i1 %call, label %if.then, label %if.end, !dbg !5160

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !5161
  br label %return, !dbg !5161

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5162
  br label %return, !dbg !5162

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5163
  ret i32 %2, !dbg !5163
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_uevent(ptr noundef %dev, ptr noundef %env) #0 align 16 !dbg !5164 {
entry:
  %dev.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5166, metadata !DIExpression()), !dbg !5169
  store ptr %env, ptr %env.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %env.addr, metadata !5167, metadata !DIExpression()), !dbg !5170
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #19, !dbg !5171
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5168, metadata !DIExpression()), !dbg !5172
  %call = call noalias ptr @kzalloc(i64 noundef 4096, i32 noundef 3264) #21, !dbg !5173
  store ptr %call, ptr %buf, align 8, !dbg !5172
  %0 = load ptr, ptr %buf, align 8, !dbg !5174
  %tobool = icmp ne ptr %0, null, !dbg !5174
  br i1 %tobool, label %if.then, label %if.end, !dbg !5176

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %buf, align 8, !dbg !5177
  %call1 = call i64 @print_cpu_modalias(ptr noundef null, ptr noundef null, ptr noundef %1) #20, !dbg !5179
  %2 = load ptr, ptr %env.addr, align 8, !dbg !5180
  %3 = load ptr, ptr %buf, align 8, !dbg !5181
  %call2 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %2, ptr noundef @.str.2, ptr noundef %3) #20, !dbg !5182
  %4 = load ptr, ptr %buf, align 8, !dbg !5183
  call void @kfree(ptr noundef %4) #20, !dbg !5184
  br label %if.end, !dbg !5185

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #19, !dbg !5186
  ret i32 0, !dbg !5187
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_subsys_online(ptr noundef %dev) #0 align 16 !dbg !5188 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %cpu = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cpuid = alloca i32, align 4
  %from_nid = alloca i32, align 4
  %to_nid = alloca i32, align 4
  %ret = alloca i32, align 4
  %retries = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5190, metadata !DIExpression()), !dbg !5200
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu) #19, !dbg !5201
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !5191, metadata !DIExpression()), !dbg !5202
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !5203
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5192, metadata !DIExpression()), !dbg !5203
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5203
  store ptr %0, ptr %__mptr, align 8, !dbg !5203
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5203
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !5203
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5203
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !5204
  %2 = load ptr, ptr %tmp, align 8, !dbg !5203
  store ptr %2, ptr %cpu, align 8, !dbg !5202
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpuid) #19, !dbg !5205
  call void @llvm.dbg.declare(metadata ptr %cpuid, metadata !5194, metadata !DIExpression()), !dbg !5206
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5207
  %id = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27, !dbg !5208
  %4 = load i32, ptr %id, align 8, !dbg !5208
  store i32 %4, ptr %cpuid, align 4, !dbg !5206
  call void @llvm.lifetime.start.p0(i64 4, ptr %from_nid) #19, !dbg !5209
  call void @llvm.dbg.declare(metadata ptr %from_nid, metadata !5195, metadata !DIExpression()), !dbg !5210
  call void @llvm.lifetime.start.p0(i64 4, ptr %to_nid) #19, !dbg !5209
  call void @llvm.dbg.declare(metadata ptr %to_nid, metadata !5196, metadata !DIExpression()), !dbg !5211
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !5212
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5197, metadata !DIExpression()), !dbg !5213
  call void @llvm.lifetime.start.p0(i64 4, ptr %retries) #19, !dbg !5214
  call void @llvm.dbg.declare(metadata ptr %retries, metadata !5198, metadata !DIExpression()), !dbg !5215
  store i32 0, ptr %retries, align 4, !dbg !5215
  %5 = load i32, ptr %cpuid, align 4, !dbg !5216
  %call = call i32 @cpu_to_node(i32 noundef %5) #20, !dbg !5217
  store i32 %call, ptr %from_nid, align 4, !dbg !5218
  %6 = load i32, ptr %from_nid, align 4, !dbg !5219
  %cmp = icmp eq i32 %6, -1, !dbg !5221
  br i1 %cmp, label %if.then, label %if.end, !dbg !5222

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5223

if.end:                                           ; preds = %entry
  br label %retry, !dbg !5224

retry:                                            ; preds = %if.end6, %if.end
  call void @llvm.dbg.label(metadata !5199), !dbg !5225
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5226
  %call1 = call i32 @cpu_device_up(ptr noundef %7) #20, !dbg !5227
  store i32 %call1, ptr %ret, align 4, !dbg !5228
  %8 = load i32, ptr %ret, align 4, !dbg !5229
  %cmp2 = icmp eq i32 %8, -16, !dbg !5231
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !5232

if.then3:                                         ; preds = %retry
  %9 = load i32, ptr %retries, align 4, !dbg !5233
  %inc = add i32 %9, 1, !dbg !5233
  store i32 %inc, ptr %retries, align 4, !dbg !5233
  %10 = load i32, ptr %retries, align 4, !dbg !5235
  %cmp4 = icmp sgt i32 %10, 5, !dbg !5237
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5238

if.then5:                                         ; preds = %if.then3
  %11 = load i32, ptr %ret, align 4, !dbg !5239
  store i32 %11, ptr %retval, align 4, !dbg !5240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5240

if.end6:                                          ; preds = %if.then3
  %12 = load i32, ptr %retries, align 4, !dbg !5241
  %shl = shl i32 1, %12, !dbg !5242
  %mul = mul i32 10, %shl, !dbg !5243
  call void @msleep(i32 noundef %mul) #20, !dbg !5244
  br label %retry, !dbg !5245

if.end7:                                          ; preds = %retry
  %13 = load i32, ptr %cpuid, align 4, !dbg !5246
  %call8 = call i32 @cpu_to_node(i32 noundef %13) #20, !dbg !5247
  store i32 %call8, ptr %to_nid, align 4, !dbg !5248
  %14 = load i32, ptr %from_nid, align 4, !dbg !5249
  %15 = load i32, ptr %to_nid, align 4, !dbg !5251
  %cmp9 = icmp ne i32 %14, %15, !dbg !5252
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5253

if.then10:                                        ; preds = %if.end7
  %16 = load ptr, ptr %cpu, align 8, !dbg !5254
  %17 = load i32, ptr %from_nid, align 4, !dbg !5255
  %18 = load i32, ptr %to_nid, align 4, !dbg !5256
  call void @change_cpu_under_node(ptr noundef %16, i32 noundef %17, i32 noundef %18) #20, !dbg !5257
  br label %if.end11, !dbg !5257

if.end11:                                         ; preds = %if.then10, %if.end7
  %19 = load i32, ptr %ret, align 4, !dbg !5258
  store i32 %19, ptr %retval, align 4, !dbg !5259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5259

cleanup:                                          ; preds = %if.end11, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retries) #19, !dbg !5260
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !5260
  call void @llvm.lifetime.end.p0(i64 4, ptr %to_nid) #19, !dbg !5260
  call void @llvm.lifetime.end.p0(i64 4, ptr %from_nid) #19, !dbg !5260
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpuid) #19, !dbg !5260
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu) #19, !dbg !5260
  %20 = load i32, ptr %retval, align 4, !dbg !5260
  ret i32 %20, !dbg !5260
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_subsys_offline(ptr noundef %dev) #0 align 16 !dbg !5261 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5263, metadata !DIExpression()), !dbg !5264
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5265
  %call = call i32 @cpu_device_down(ptr noundef %0) #20, !dbg !5266
  ret i32 %call, !dbg !5267
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @register_cpu(ptr noundef %cpu, i32 noundef %num) #0 align 16 !dbg !5268 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp27 = alloca ptr, align 8
  store ptr %cpu, ptr %cpu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5272, metadata !DIExpression()), !dbg !5280
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !5273, metadata !DIExpression()), !dbg !5281
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #19, !dbg !5282
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5274, metadata !DIExpression()), !dbg !5283
  %0 = load i32, ptr %num.addr, align 4, !dbg !5284
  %call = call i32 @cpu_to_node(i32 noundef %0) #20, !dbg !5285
  %1 = load ptr, ptr %cpu.addr, align 8, !dbg !5286
  %node_id = getelementptr inbounds %struct.cpu, ptr %1, i32 0, i32 0, !dbg !5287
  store i32 %call, ptr %node_id, align 8, !dbg !5288
  %2 = load ptr, ptr %cpu.addr, align 8, !dbg !5289
  %dev = getelementptr inbounds %struct.cpu, ptr %2, i32 0, i32 2, !dbg !5290
  call void @llvm.memset.p0.i64(ptr align 8 %dev, i8 0, i64 728, i1 false), !dbg !5291
  %3 = load i32, ptr %num.addr, align 4, !dbg !5292
  %4 = load ptr, ptr %cpu.addr, align 8, !dbg !5293
  %dev1 = getelementptr inbounds %struct.cpu, ptr %4, i32 0, i32 2, !dbg !5294
  %id = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 27, !dbg !5295
  store i32 %3, ptr %id, align 8, !dbg !5296
  %5 = load ptr, ptr %cpu.addr, align 8, !dbg !5297
  %dev2 = getelementptr inbounds %struct.cpu, ptr %5, i32 0, i32 2, !dbg !5298
  %bus = getelementptr inbounds %struct.device, ptr %dev2, i32 0, i32 5, !dbg !5299
  store ptr @cpu_subsys, ptr %bus, align 8, !dbg !5300
  %6 = load ptr, ptr %cpu.addr, align 8, !dbg !5301
  %dev3 = getelementptr inbounds %struct.cpu, ptr %6, i32 0, i32 2, !dbg !5302
  %release = getelementptr inbounds %struct.device, ptr %dev3, i32 0, i32 32, !dbg !5303
  store ptr @cpu_device_release, ptr %release, align 8, !dbg !5304
  %7 = load ptr, ptr %cpu.addr, align 8, !dbg !5305
  %hotpluggable = getelementptr inbounds %struct.cpu, ptr %7, i32 0, i32 1, !dbg !5306
  %8 = load i32, ptr %hotpluggable, align 4, !dbg !5306
  %tobool = icmp ne i32 %8, 0, !dbg !5307
  %lnot = xor i1 %tobool, true, !dbg !5307
  %9 = load ptr, ptr %cpu.addr, align 8, !dbg !5308
  %dev4 = getelementptr inbounds %struct.cpu, ptr %9, i32 0, i32 2, !dbg !5309
  %offline_disabled = getelementptr inbounds %struct.device, ptr %dev4, i32 0, i32 37, !dbg !5310
  %10 = zext i1 %lnot to i8, !dbg !5311
  %bf.load = load i8, ptr %offline_disabled, align 4, !dbg !5311
  %bf.clear = and i8 %bf.load, -2, !dbg !5311
  %bf.set = or i8 %bf.clear, %10, !dbg !5311
  store i8 %bf.set, ptr %offline_disabled, align 4, !dbg !5311
  %tobool5 = trunc i8 %10 to i1, !dbg !5311
  %11 = load i32, ptr %num.addr, align 4, !dbg !5312
  %call6 = call zeroext i1 @cpu_online(i32 noundef %11) #20, !dbg !5313
  %lnot7 = xor i1 %call6, true, !dbg !5314
  %12 = load ptr, ptr %cpu.addr, align 8, !dbg !5315
  %dev8 = getelementptr inbounds %struct.cpu, ptr %12, i32 0, i32 2, !dbg !5316
  %offline = getelementptr inbounds %struct.device, ptr %dev8, i32 0, i32 37, !dbg !5317
  %13 = zext i1 %lnot7 to i8, !dbg !5318
  %bf.load9 = load i8, ptr %offline, align 4, !dbg !5318
  %bf.shl = shl i8 %13, 1, !dbg !5318
  %bf.clear10 = and i8 %bf.load9, -3, !dbg !5318
  %bf.set11 = or i8 %bf.clear10, %bf.shl, !dbg !5318
  store i8 %bf.set11, ptr %offline, align 4, !dbg !5318
  %tobool12 = trunc i8 %13 to i1, !dbg !5318
  %14 = load i32, ptr %num.addr, align 4, !dbg !5319
  %call13 = call ptr @of_get_cpu_node(i32 noundef %14, ptr noundef null) #20, !dbg !5320
  %15 = load ptr, ptr %cpu.addr, align 8, !dbg !5321
  %dev14 = getelementptr inbounds %struct.cpu, ptr %15, i32 0, i32 2, !dbg !5322
  %of_node = getelementptr inbounds %struct.device, ptr %dev14, i32 0, i32 23, !dbg !5323
  store ptr %call13, ptr %of_node, align 8, !dbg !5324
  %16 = load ptr, ptr %cpu.addr, align 8, !dbg !5325
  %dev15 = getelementptr inbounds %struct.cpu, ptr %16, i32 0, i32 2, !dbg !5326
  %groups = getelementptr inbounds %struct.device, ptr %dev15, i32 0, i32 31, !dbg !5327
  store ptr @common_cpu_attr_groups, ptr %groups, align 8, !dbg !5328
  %17 = load ptr, ptr %cpu.addr, align 8, !dbg !5329
  %hotpluggable16 = getelementptr inbounds %struct.cpu, ptr %17, i32 0, i32 1, !dbg !5331
  %18 = load i32, ptr %hotpluggable16, align 4, !dbg !5331
  %tobool17 = icmp ne i32 %18, 0, !dbg !5329
  br i1 %tobool17, label %if.then, label %if.end, !dbg !5332

if.then:                                          ; preds = %entry
  %19 = load ptr, ptr %cpu.addr, align 8, !dbg !5333
  %dev18 = getelementptr inbounds %struct.cpu, ptr %19, i32 0, i32 2, !dbg !5334
  %groups19 = getelementptr inbounds %struct.device, ptr %dev18, i32 0, i32 31, !dbg !5335
  store ptr @hotplugable_cpu_attr_groups, ptr %groups19, align 8, !dbg !5336
  br label %if.end, !dbg !5333

if.end:                                           ; preds = %if.then, %entry
  %20 = load ptr, ptr %cpu.addr, align 8, !dbg !5337
  %dev20 = getelementptr inbounds %struct.cpu, ptr %20, i32 0, i32 2, !dbg !5338
  %call21 = call i32 @device_register(ptr noundef %dev20) #20, !dbg !5339
  store i32 %call21, ptr %error, align 4, !dbg !5340
  %21 = load i32, ptr %error, align 4, !dbg !5341
  %tobool22 = icmp ne i32 %21, 0, !dbg !5341
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !5343

if.then23:                                        ; preds = %if.end
  %22 = load ptr, ptr %cpu.addr, align 8, !dbg !5344
  %dev24 = getelementptr inbounds %struct.cpu, ptr %22, i32 0, i32 2, !dbg !5346
  call void @put_device(ptr noundef %dev24) #20, !dbg !5347
  %23 = load i32, ptr %error, align 4, !dbg !5348
  store i32 %23, ptr %retval, align 4, !dbg !5349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5349

if.end25:                                         ; preds = %if.end
  %24 = load ptr, ptr %cpu.addr, align 8, !dbg !5350
  %dev26 = getelementptr inbounds %struct.cpu, ptr %24, i32 0, i32 2, !dbg !5351
  br label %do.body, !dbg !5352

do.body:                                          ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #19, !dbg !5353
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5275, metadata !DIExpression()), !dbg !5353
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5353
  %25 = load ptr, ptr %__vpp_verify, align 8, !dbg !5353
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #19, !dbg !5352
  br label %do.cond, !dbg !5353

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5353

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !5354
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5278, metadata !DIExpression()), !dbg !5354
  store i64 ptrtoint (ptr @cpu_sys_devices to i64), ptr %__ptr, align 8, !dbg !5354
  %26 = load i64, ptr %__ptr, align 8, !dbg !5354
  %27 = load i32, ptr %num.addr, align 4, !dbg !5354
  %idxprom = sext i32 %27 to i64, !dbg !5354
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5354
  %28 = load i64, ptr %arrayidx, align 8, !dbg !5354
  %add = add i64 %26, %28, !dbg !5354
  %29 = inttoptr i64 %add to ptr, !dbg !5354
  store ptr %29, ptr %tmp27, align 8, !dbg !5354
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !5352
  %30 = load ptr, ptr %tmp27, align 8, !dbg !5354
  store ptr %30, ptr %tmp, align 8, !dbg !5353
  %31 = load ptr, ptr %tmp, align 8, !dbg !5352
  store ptr %dev26, ptr %31, align 8, !dbg !5355
  %32 = load i32, ptr %num.addr, align 4, !dbg !5356
  %33 = load i32, ptr %num.addr, align 4, !dbg !5357
  %call28 = call i32 @cpu_to_node(i32 noundef %33) #20, !dbg !5358
  %call29 = call i32 @register_cpu_under_node(i32 noundef %32, i32 noundef %call28) #20, !dbg !5359
  %34 = load ptr, ptr %cpu.addr, align 8, !dbg !5360
  %dev30 = getelementptr inbounds %struct.cpu, ptr %34, i32 0, i32 2, !dbg !5361
  %call31 = call i32 @dev_pm_qos_expose_latency_limit(ptr noundef %dev30, i32 noundef 2147483647) #20, !dbg !5362
  store i32 0, ptr %retval, align 4, !dbg !5363
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5363

cleanup:                                          ; preds = %do.end, %if.then23
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #19, !dbg !5364
  %35 = load i32, ptr %retval, align 4, !dbg !5364
  ret i32 %35, !dbg !5364
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_device_release(ptr noundef %dev) #0 align 16 !dbg !5365 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5367, metadata !DIExpression()), !dbg !5368
  ret void, !dbg !5369
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #4 align 16 !dbg !5370 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5374, metadata !DIExpression()), !dbg !5375
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5376
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #20, !dbg !5377
  ret i1 %call, !dbg !5378
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @of_get_cpu_node(i32 noundef %cpu, ptr noundef %thread) #4 align 16 !dbg !5379 {
entry:
  %cpu.addr = alloca i32, align 4
  %thread.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5383, metadata !DIExpression()), !dbg !5385
  store ptr %thread, ptr %thread.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %thread.addr, metadata !5384, metadata !DIExpression()), !dbg !5386
  ret ptr null, !dbg !5387
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5388 dso_local i32 @device_register(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5389 dso_local void @put_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5390 dso_local i32 @register_cpu_under_node(i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5391 dso_local i32 @dev_pm_qos_expose_latency_limit(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @get_cpu_device(i32 noundef %cpu) #0 align 16 !dbg !5394 {
entry:
  %retval = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5398, metadata !DIExpression()), !dbg !5405
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5406
  %1 = load i32, ptr @nr_cpu_ids, align 4, !dbg !5407
  %cmp = icmp ult i32 %0, %1, !dbg !5408
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !5409

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !5410
  %call = call zeroext i1 @cpu_possible(i32 noundef %2) #20, !dbg !5411
  br i1 %call, label %if.then, label %if.else, !dbg !5412

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !5413

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #19, !dbg !5414
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5399, metadata !DIExpression()), !dbg !5414
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5414
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !5414
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #19, !dbg !5413
  br label %do.end, !dbg !5414

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !5415
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5403, metadata !DIExpression()), !dbg !5415
  store i64 ptrtoint (ptr @cpu_sys_devices to i64), ptr %__ptr, align 8, !dbg !5415
  %4 = load i64, ptr %__ptr, align 8, !dbg !5415
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !5415
  %idxprom = zext i32 %5 to i64, !dbg !5415
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5415
  %6 = load i64, ptr %arrayidx, align 8, !dbg !5415
  %add = add i64 %4, %6, !dbg !5415
  %7 = inttoptr i64 %add to ptr, !dbg !5415
  store ptr %7, ptr %tmp1, align 8, !dbg !5415
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !5413
  %8 = load ptr, ptr %tmp1, align 8, !dbg !5415
  store ptr %8, ptr %tmp, align 8, !dbg !5414
  %9 = load ptr, ptr %tmp, align 8, !dbg !5413
  %10 = load ptr, ptr %9, align 8, !dbg !5416
  store ptr %10, ptr %retval, align 8, !dbg !5417
  br label %return, !dbg !5417

if.else:                                          ; preds = %land.lhs.true, %entry
  store ptr null, ptr %retval, align 8, !dbg !5418
  br label %return, !dbg !5418

return:                                           ; preds = %if.else, %do.end
  %11 = load ptr, ptr %retval, align 8, !dbg !5419
  ret ptr %11, !dbg !5419
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_possible(i32 noundef %cpu) #4 align 16 !dbg !5420 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5422, metadata !DIExpression()), !dbg !5423
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5424
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_possible_mask) #20, !dbg !5425
  ret i1 %call, !dbg !5426
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @cpu_device_create(ptr noundef %parent, ptr noundef %drvdata, ptr noundef %groups, ptr noundef %fmt, ...) #0 align 16 !dbg !5427 {
entry:
  %parent.addr = alloca ptr, align 8
  %drvdata.addr = alloca ptr, align 8
  %groups.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  %dev = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5431, metadata !DIExpression()), !dbg !5447
  store ptr %drvdata, ptr %drvdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drvdata.addr, metadata !5432, metadata !DIExpression()), !dbg !5448
  store ptr %groups, ptr %groups.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %groups.addr, metadata !5433, metadata !DIExpression()), !dbg !5449
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !5434, metadata !DIExpression()), !dbg !5450
  call void @llvm.lifetime.start.p0(i64 24, ptr %vargs) #19, !dbg !5451
  call void @llvm.dbg.declare(metadata ptr %vargs, metadata !5435, metadata !DIExpression()), !dbg !5452
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #19, !dbg !5453
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5446, metadata !DIExpression()), !dbg !5454
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %vargs, i64 0, i64 0, !dbg !5455
  call void @llvm.va_start(ptr %arraydecay), !dbg !5455
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !5456
  %1 = load ptr, ptr %drvdata.addr, align 8, !dbg !5457
  %2 = load ptr, ptr %groups.addr, align 8, !dbg !5458
  %3 = load ptr, ptr %fmt.addr, align 8, !dbg !5459
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %vargs, i64 0, i64 0, !dbg !5460
  %call = call ptr @__cpu_device_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %arraydecay1) #20, !dbg !5461
  store ptr %call, ptr %dev, align 8, !dbg !5462
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %vargs, i64 0, i64 0, !dbg !5463
  call void @llvm.va_end(ptr %arraydecay2), !dbg !5463
  %4 = load ptr, ptr %dev, align 8, !dbg !5464
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #19, !dbg !5465
  call void @llvm.lifetime.end.p0(i64 24, ptr %vargs) #19, !dbg !5465
  ret ptr %4, !dbg !5466
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__cpu_device_create(ptr noundef %parent, ptr noundef %drvdata, ptr noundef %groups, ptr noundef %fmt, ptr noundef %args) #0 align 16 !dbg !5467 {
entry:
  %retval = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %drvdata.addr = alloca ptr, align 8
  %groups.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5472, metadata !DIExpression()), !dbg !5480
  store ptr %drvdata, ptr %drvdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drvdata.addr, metadata !5473, metadata !DIExpression()), !dbg !5481
  store ptr %groups, ptr %groups.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %groups.addr, metadata !5474, metadata !DIExpression()), !dbg !5482
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !5475, metadata !DIExpression()), !dbg !5483
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !5476, metadata !DIExpression()), !dbg !5484
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #19, !dbg !5485
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5477, metadata !DIExpression()), !dbg !5486
  store ptr null, ptr %dev, align 8, !dbg !5486
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #19, !dbg !5487
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5478, metadata !DIExpression()), !dbg !5488
  store i32 -12, ptr %retval1, align 4, !dbg !5488
  %call = call noalias ptr @kzalloc(i64 noundef 728, i32 noundef 3264) #21, !dbg !5489
  store ptr %call, ptr %dev, align 8, !dbg !5490
  %0 = load ptr, ptr %dev, align 8, !dbg !5491
  %tobool = icmp ne ptr %0, null, !dbg !5491
  br i1 %tobool, label %if.end, label %if.then, !dbg !5493

if.then:                                          ; preds = %entry
  br label %error, !dbg !5494

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev, align 8, !dbg !5495
  call void @device_initialize(ptr noundef %1) #20, !dbg !5496
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !5497
  %3 = load ptr, ptr %dev, align 8, !dbg !5498
  %parent2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1, !dbg !5499
  store ptr %2, ptr %parent2, align 8, !dbg !5500
  %4 = load ptr, ptr %groups.addr, align 8, !dbg !5501
  %5 = load ptr, ptr %dev, align 8, !dbg !5502
  %groups3 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 31, !dbg !5503
  store ptr %4, ptr %groups3, align 8, !dbg !5504
  %6 = load ptr, ptr %dev, align 8, !dbg !5505
  %release = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 32, !dbg !5506
  store ptr @device_create_release, ptr %release, align 8, !dbg !5507
  %7 = load ptr, ptr %dev, align 8, !dbg !5508
  call void @device_set_pm_not_required(ptr noundef %7) #20, !dbg !5509
  %8 = load ptr, ptr %dev, align 8, !dbg !5510
  %9 = load ptr, ptr %drvdata.addr, align 8, !dbg !5511
  call void @dev_set_drvdata(ptr noundef %8, ptr noundef %9) #20, !dbg !5512
  %10 = load ptr, ptr %dev, align 8, !dbg !5513
  %kobj = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 0, !dbg !5514
  %11 = load ptr, ptr %fmt.addr, align 8, !dbg !5515
  %12 = load ptr, ptr %args.addr, align 8, !dbg !5516
  %call4 = call i32 @kobject_set_name_vargs(ptr noundef %kobj, ptr noundef %11, ptr noundef %12) #20, !dbg !5517
  store i32 %call4, ptr %retval1, align 4, !dbg !5518
  %13 = load i32, ptr %retval1, align 4, !dbg !5519
  %tobool5 = icmp ne i32 %13, 0, !dbg !5519
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5521

if.then6:                                         ; preds = %if.end
  br label %error, !dbg !5522

if.end7:                                          ; preds = %if.end
  %14 = load ptr, ptr %dev, align 8, !dbg !5523
  %call8 = call i32 @device_add(ptr noundef %14) #20, !dbg !5524
  store i32 %call8, ptr %retval1, align 4, !dbg !5525
  %15 = load i32, ptr %retval1, align 4, !dbg !5526
  %tobool9 = icmp ne i32 %15, 0, !dbg !5526
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5528

if.then10:                                        ; preds = %if.end7
  br label %error, !dbg !5529

if.end11:                                         ; preds = %if.end7
  %16 = load ptr, ptr %dev, align 8, !dbg !5530
  store ptr %16, ptr %retval, align 8, !dbg !5531
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5531

error:                                            ; preds = %if.then10, %if.then6, %if.then
  call void @llvm.dbg.label(metadata !5479), !dbg !5532
  %17 = load ptr, ptr %dev, align 8, !dbg !5533
  call void @put_device(ptr noundef %17) #20, !dbg !5534
  %18 = load i32, ptr %retval1, align 4, !dbg !5535
  %conv = sext i32 %18 to i64, !dbg !5535
  %call12 = call ptr @ERR_PTR(i64 noundef %conv) #20, !dbg !5536
  store ptr %call12, ptr %retval, align 8, !dbg !5537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5537

cleanup:                                          ; preds = %error, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #19, !dbg !5538
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #19, !dbg !5538
  %19 = load ptr, ptr %retval, align 8, !dbg !5538
  ret ptr %19, !dbg !5538
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @cpu_is_hotpluggable(i32 noundef %cpu) #0 align 16 !dbg !5539 {
entry:
  %cpu.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5541, metadata !DIExpression()), !dbg !5545
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #19, !dbg !5546
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5542, metadata !DIExpression()), !dbg !5547
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5548
  %call = call ptr @get_cpu_device(i32 noundef %0) #20, !dbg !5549
  store ptr %call, ptr %dev, align 8, !dbg !5547
  %1 = load ptr, ptr %dev, align 8, !dbg !5550
  %tobool = icmp ne ptr %1, null, !dbg !5550
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !5551

land.lhs.true:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !5552
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5543, metadata !DIExpression()), !dbg !5552
  %2 = load ptr, ptr %dev, align 8, !dbg !5552
  store ptr %2, ptr %__mptr, align 8, !dbg !5552
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5552
  %add.ptr = getelementptr i8, ptr %3, i64 -8, !dbg !5552
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5552
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !5553
  %4 = load ptr, ptr %tmp, align 8, !dbg !5552
  %hotpluggable = getelementptr inbounds %struct.cpu, ptr %4, i32 0, i32 1, !dbg !5554
  %5 = load i32, ptr %hotpluggable, align 4, !dbg !5554
  %tobool1 = icmp ne i32 %5, 0, !dbg !5553
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !5555

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load i32, ptr %cpu.addr, align 4, !dbg !5556
  %call2 = call zeroext i1 @tick_nohz_cpu_hotpluggable(i32 noundef %6) #20, !dbg !5557
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %call2, %land.rhs ], !dbg !5558
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #19, !dbg !5559
  ret i1 %7, !dbg !5560
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tick_nohz_cpu_hotpluggable(i32 noundef %cpu) #4 align 16 !dbg !5561 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5564, metadata !DIExpression()), !dbg !5565
  ret i1 true, !dbg !5566
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cpu_show_not_affected(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5567 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5569, metadata !DIExpression()), !dbg !5572
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5570, metadata !DIExpression()), !dbg !5573
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5571, metadata !DIExpression()), !dbg !5574
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5575
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.13) #20, !dbg !5576
  %conv = sext i32 %call to i64, !dbg !5576
  ret i64 %conv, !dbg !5577
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @cpu_dev_init() #7 section ".init.text" align 16 !dbg !5578 {
entry:
  %call = call i32 @subsys_system_register(ptr noundef @cpu_subsys, ptr noundef @cpu_root_attr_groups) #20, !dbg !5579
  %tobool = icmp ne i32 %call, 0, !dbg !5579
  br i1 %tobool, label %if.then, label %if.end, !dbg !5581

if.then:                                          ; preds = %entry
  call void (ptr, ...) @panic(ptr noundef @.str.1) #22, !dbg !5582
  unreachable, !dbg !5582

if.end:                                           ; preds = %entry
  call void @cpu_dev_register_generic() #23, !dbg !5583
  call void @cpu_register_vulnerabilities() #23, !dbg !5584
  ret void, !dbg !5585
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5586 dso_local i32 @subsys_system_register(ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !5590 dso_local void @panic(ptr noundef, ...) #8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @cpu_dev_register_generic() #7 section ".init.text" align 16 !dbg !5594 {
entry:
  ret void, !dbg !5595
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @cpu_register_vulnerabilities() #7 section ".init.text" align 16 !dbg !5596 {
entry:
  %dev = alloca ptr, align 8
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #19, !dbg !5599
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5598, metadata !DIExpression()), !dbg !5600
  %call = call ptr @bus_get_dev_root(ptr noundef @cpu_subsys) #20, !dbg !5601
  store ptr %call, ptr %dev, align 8, !dbg !5600
  %0 = load ptr, ptr %dev, align 8, !dbg !5602
  %tobool = icmp ne ptr %0, null, !dbg !5602
  br i1 %tobool, label %if.then, label %if.end5, !dbg !5604

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dev, align 8, !dbg !5605
  %kobj = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 0, !dbg !5608
  %call1 = call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef @cpu_root_vulnerabilities_group) #20, !dbg !5609
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5609
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !5610

if.then3:                                         ; preds = %if.then
  br label %do.body, !dbg !5611

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !5613

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5613

do.end:                                           ; preds = %do.cond
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.28) #23, !dbg !5611
  store i32 %call4, ptr %tmp, align 4, !dbg !5613
  %2 = load i32, ptr %tmp, align 4, !dbg !5611
  br label %if.end, !dbg !5615

if.end:                                           ; preds = %do.end, %if.then
  %3 = load ptr, ptr %dev, align 8, !dbg !5616
  call void @put_device(ptr noundef %3) #20, !dbg !5617
  br label %if.end5, !dbg !5618

if.end5:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #19, !dbg !5619
  ret void, !dbg !5619
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5620 dso_local zeroext i1 @acpi_driver_match_device(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !5626 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5630, metadata !DIExpression()), !dbg !5632
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5631, metadata !DIExpression()), !dbg !5633
  %0 = load i64, ptr %size.addr, align 8, !dbg !5634
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5635
  %or = or i32 %1, 256, !dbg !5636
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #21, !dbg !5637
  ret ptr %call, !dbg !5638
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @print_cpu_modalias(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5639 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5641, metadata !DIExpression()), !dbg !5658
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5642, metadata !DIExpression()), !dbg !5659
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5643, metadata !DIExpression()), !dbg !5660
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #19, !dbg !5661
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5644, metadata !DIExpression()), !dbg !5662
  store i32 0, ptr %len, align 4, !dbg !5662
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #19, !dbg !5663
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5645, metadata !DIExpression()), !dbg !5664
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5665
  %1 = load i32, ptr %len, align 4, !dbg !5666
  %2 = load i8, ptr getelementptr inbounds (%struct.anon.14, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !5667
  %conv = zext i8 %2 to i32, !dbg !5667
  %3 = load i8, ptr getelementptr inbounds (%struct.anon.14, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !5667
  %conv1 = zext i8 %3 to i32, !dbg !5667
  %4 = load i8, ptr @boot_cpu_data, align 8, !dbg !5667
  %conv2 = zext i8 %4 to i32, !dbg !5667
  %call = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %0, i32 noundef %1, ptr noundef @.str.4, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #20, !dbg !5668
  %5 = load i32, ptr %len, align 4, !dbg !5669
  %add = add i32 %5, %call, !dbg !5669
  store i32 %add, ptr %len, align 4, !dbg !5669
  store i32 0, ptr %i, align 4, !dbg !5670
  br label %for.cond, !dbg !5671

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4, !dbg !5672
  %cmp = icmp ult i32 %6, 704, !dbg !5673
  br i1 %cmp, label %for.body, label %for.end, !dbg !5674

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %i, align 4, !dbg !5675
  %8 = call i1 @llvm.is.constant.i32(i32 %7), !dbg !5675
  br i1 %8, label %land.lhs.true, label %cond.false, !dbg !5675

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !5675
  %shr = lshr i32 %9, 5, !dbg !5675
  %cmp4 = icmp eq i32 %shr, 0, !dbg !5675
  br i1 %cmp4, label %land.lhs.true6, label %lor.lhs.false, !dbg !5675

land.lhs.true6:                                   ; preds = %land.lhs.true
  %10 = load i32, ptr %i, align 4, !dbg !5675
  %and = and i32 %10, 31, !dbg !5675
  %sh_prom = zext i32 %and to i64, !dbg !5675
  %shl = shl i64 1, %sh_prom, !dbg !5675
  %and7 = and i64 %shl, 117473641, !dbg !5675
  %tobool = icmp ne i64 %and7, 0, !dbg !5675
  br i1 %tobool, label %cond.true, label %lor.lhs.false, !dbg !5675

lor.lhs.false:                                    ; preds = %land.lhs.true6, %land.lhs.true
  %11 = load i32, ptr %i, align 4, !dbg !5675
  %shr8 = lshr i32 %11, 5, !dbg !5675
  %cmp9 = icmp eq i32 %shr8, 1, !dbg !5675
  br i1 %cmp9, label %land.lhs.true11, label %lor.lhs.false17, !dbg !5675

land.lhs.true11:                                  ; preds = %lor.lhs.false
  %12 = load i32, ptr %i, align 4, !dbg !5675
  %and12 = and i32 %12, 31, !dbg !5675
  %sh_prom13 = zext i32 %and12 to i64, !dbg !5675
  %shl14 = shl i64 1, %sh_prom13, !dbg !5675
  %and15 = and i64 %shl14, 536870912, !dbg !5675
  %tobool16 = icmp ne i64 %and15, 0, !dbg !5675
  br i1 %tobool16, label %cond.true, label %lor.lhs.false17, !dbg !5675

lor.lhs.false17:                                  ; preds = %land.lhs.true11, %lor.lhs.false
  %13 = load i32, ptr %i, align 4, !dbg !5675
  %shr18 = lshr i32 %13, 5, !dbg !5675
  %cmp19 = icmp eq i32 %shr18, 2, !dbg !5675
  br i1 %cmp19, label %land.lhs.true21, label %lor.lhs.false27, !dbg !5675

land.lhs.true21:                                  ; preds = %lor.lhs.false17
  %14 = load i32, ptr %i, align 4, !dbg !5675
  %and22 = and i32 %14, 31, !dbg !5675
  %sh_prom23 = zext i32 %and22 to i64, !dbg !5675
  %shl24 = shl i64 1, %sh_prom23, !dbg !5675
  %and25 = and i64 %shl24, 0, !dbg !5675
  %tobool26 = icmp ne i64 %and25, 0, !dbg !5675
  br i1 %tobool26, label %cond.true, label %lor.lhs.false27, !dbg !5675

lor.lhs.false27:                                  ; preds = %land.lhs.true21, %lor.lhs.false17
  %15 = load i32, ptr %i, align 4, !dbg !5675
  %shr28 = lshr i32 %15, 5, !dbg !5675
  %cmp29 = icmp eq i32 %shr28, 3, !dbg !5675
  br i1 %cmp29, label %land.lhs.true31, label %lor.lhs.false37, !dbg !5675

land.lhs.true31:                                  ; preds = %lor.lhs.false27
  %16 = load i32, ptr %i, align 4, !dbg !5675
  %and32 = and i32 %16, 31, !dbg !5675
  %sh_prom33 = zext i32 %and32 to i64, !dbg !5675
  %shl34 = shl i64 1, %sh_prom33, !dbg !5675
  %and35 = and i64 %shl34, 1048576, !dbg !5675
  %tobool36 = icmp ne i64 %and35, 0, !dbg !5675
  br i1 %tobool36, label %cond.true, label %lor.lhs.false37, !dbg !5675

lor.lhs.false37:                                  ; preds = %land.lhs.true31, %lor.lhs.false27
  %17 = load i32, ptr %i, align 4, !dbg !5675
  %shr38 = lshr i32 %17, 5, !dbg !5675
  %cmp39 = icmp eq i32 %shr38, 4, !dbg !5675
  br i1 %cmp39, label %land.lhs.true41, label %lor.lhs.false47, !dbg !5675

land.lhs.true41:                                  ; preds = %lor.lhs.false37
  %18 = load i32, ptr %i, align 4, !dbg !5675
  %and42 = and i32 %18, 31, !dbg !5675
  %sh_prom43 = zext i32 %and42 to i64, !dbg !5675
  %shl44 = shl i64 1, %sh_prom43, !dbg !5675
  %and45 = and i64 %shl44, 0, !dbg !5675
  %tobool46 = icmp ne i64 %and45, 0, !dbg !5675
  br i1 %tobool46, label %cond.true, label %lor.lhs.false47, !dbg !5675

lor.lhs.false47:                                  ; preds = %land.lhs.true41, %lor.lhs.false37
  %19 = load i32, ptr %i, align 4, !dbg !5675
  %shr48 = lshr i32 %19, 5, !dbg !5675
  %cmp49 = icmp eq i32 %shr48, 5, !dbg !5675
  br i1 %cmp49, label %land.lhs.true51, label %lor.lhs.false57, !dbg !5675

land.lhs.true51:                                  ; preds = %lor.lhs.false47
  %20 = load i32, ptr %i, align 4, !dbg !5675
  %and52 = and i32 %20, 31, !dbg !5675
  %sh_prom53 = zext i32 %and52 to i64, !dbg !5675
  %shl54 = shl i64 1, %sh_prom53, !dbg !5675
  %and55 = and i64 %shl54, 0, !dbg !5675
  %tobool56 = icmp ne i64 %and55, 0, !dbg !5675
  br i1 %tobool56, label %cond.true, label %lor.lhs.false57, !dbg !5675

lor.lhs.false57:                                  ; preds = %land.lhs.true51, %lor.lhs.false47
  %21 = load i32, ptr %i, align 4, !dbg !5675
  %shr58 = lshr i32 %21, 5, !dbg !5675
  %cmp59 = icmp eq i32 %shr58, 6, !dbg !5675
  br i1 %cmp59, label %land.lhs.true61, label %lor.lhs.false67, !dbg !5675

land.lhs.true61:                                  ; preds = %lor.lhs.false57
  %22 = load i32, ptr %i, align 4, !dbg !5675
  %and62 = and i32 %22, 31, !dbg !5675
  %sh_prom63 = zext i32 %and62 to i64, !dbg !5675
  %shl64 = shl i64 1, %sh_prom63, !dbg !5675
  %and65 = and i64 %shl64, 0, !dbg !5675
  %tobool66 = icmp ne i64 %and65, 0, !dbg !5675
  br i1 %tobool66, label %cond.true, label %lor.lhs.false67, !dbg !5675

lor.lhs.false67:                                  ; preds = %land.lhs.true61, %lor.lhs.false57
  %23 = load i32, ptr %i, align 4, !dbg !5675
  %shr68 = lshr i32 %23, 5, !dbg !5675
  %cmp69 = icmp eq i32 %shr68, 7, !dbg !5675
  br i1 %cmp69, label %land.lhs.true71, label %lor.lhs.false77, !dbg !5675

land.lhs.true71:                                  ; preds = %lor.lhs.false67
  %24 = load i32, ptr %i, align 4, !dbg !5675
  %and72 = and i32 %24, 31, !dbg !5675
  %sh_prom73 = zext i32 %and72 to i64, !dbg !5675
  %shl74 = shl i64 1, %sh_prom73, !dbg !5675
  %and75 = and i64 %shl74, 0, !dbg !5675
  %tobool76 = icmp ne i64 %and75, 0, !dbg !5675
  br i1 %tobool76, label %cond.true, label %lor.lhs.false77, !dbg !5675

lor.lhs.false77:                                  ; preds = %land.lhs.true71, %lor.lhs.false67
  %25 = load i32, ptr %i, align 4, !dbg !5675
  %shr78 = lshr i32 %25, 5, !dbg !5675
  %cmp79 = icmp eq i32 %shr78, 8, !dbg !5675
  br i1 %cmp79, label %land.lhs.true81, label %lor.lhs.false87, !dbg !5675

land.lhs.true81:                                  ; preds = %lor.lhs.false77
  %26 = load i32, ptr %i, align 4, !dbg !5675
  %and82 = and i32 %26, 31, !dbg !5675
  %sh_prom83 = zext i32 %and82 to i64, !dbg !5675
  %shl84 = shl i64 1, %sh_prom83, !dbg !5675
  %and85 = and i64 %shl84, 0, !dbg !5675
  %tobool86 = icmp ne i64 %and85, 0, !dbg !5675
  br i1 %tobool86, label %cond.true, label %lor.lhs.false87, !dbg !5675

lor.lhs.false87:                                  ; preds = %land.lhs.true81, %lor.lhs.false77
  %27 = load i32, ptr %i, align 4, !dbg !5675
  %shr88 = lshr i32 %27, 5, !dbg !5675
  %cmp89 = icmp eq i32 %shr88, 9, !dbg !5675
  br i1 %cmp89, label %land.lhs.true91, label %lor.lhs.false97, !dbg !5675

land.lhs.true91:                                  ; preds = %lor.lhs.false87
  %28 = load i32, ptr %i, align 4, !dbg !5675
  %and92 = and i32 %28, 31, !dbg !5675
  %sh_prom93 = zext i32 %and92 to i64, !dbg !5675
  %shl94 = shl i64 1, %sh_prom93, !dbg !5675
  %and95 = and i64 %shl94, 0, !dbg !5675
  %tobool96 = icmp ne i64 %and95, 0, !dbg !5675
  br i1 %tobool96, label %cond.true, label %lor.lhs.false97, !dbg !5675

lor.lhs.false97:                                  ; preds = %land.lhs.true91, %lor.lhs.false87
  %29 = load i32, ptr %i, align 4, !dbg !5675
  %shr98 = lshr i32 %29, 5, !dbg !5675
  %cmp99 = icmp eq i32 %shr98, 10, !dbg !5675
  br i1 %cmp99, label %land.lhs.true101, label %lor.lhs.false107, !dbg !5675

land.lhs.true101:                                 ; preds = %lor.lhs.false97
  %30 = load i32, ptr %i, align 4, !dbg !5675
  %and102 = and i32 %30, 31, !dbg !5675
  %sh_prom103 = zext i32 %and102 to i64, !dbg !5675
  %shl104 = shl i64 1, %sh_prom103, !dbg !5675
  %and105 = and i64 %shl104, 0, !dbg !5675
  %tobool106 = icmp ne i64 %and105, 0, !dbg !5675
  br i1 %tobool106, label %cond.true, label %lor.lhs.false107, !dbg !5675

lor.lhs.false107:                                 ; preds = %land.lhs.true101, %lor.lhs.false97
  %31 = load i32, ptr %i, align 4, !dbg !5675
  %shr108 = lshr i32 %31, 5, !dbg !5675
  %cmp109 = icmp eq i32 %shr108, 11, !dbg !5675
  br i1 %cmp109, label %land.lhs.true111, label %lor.lhs.false117, !dbg !5675

land.lhs.true111:                                 ; preds = %lor.lhs.false107
  %32 = load i32, ptr %i, align 4, !dbg !5675
  %and112 = and i32 %32, 31, !dbg !5675
  %sh_prom113 = zext i32 %and112 to i64, !dbg !5675
  %shl114 = shl i64 1, %sh_prom113, !dbg !5675
  %and115 = and i64 %shl114, 0, !dbg !5675
  %tobool116 = icmp ne i64 %and115, 0, !dbg !5675
  br i1 %tobool116, label %cond.true, label %lor.lhs.false117, !dbg !5675

lor.lhs.false117:                                 ; preds = %land.lhs.true111, %lor.lhs.false107
  %33 = load i32, ptr %i, align 4, !dbg !5675
  %shr118 = lshr i32 %33, 5, !dbg !5675
  %cmp119 = icmp eq i32 %shr118, 12, !dbg !5675
  br i1 %cmp119, label %land.lhs.true121, label %lor.lhs.false127, !dbg !5675

land.lhs.true121:                                 ; preds = %lor.lhs.false117
  %34 = load i32, ptr %i, align 4, !dbg !5675
  %and122 = and i32 %34, 31, !dbg !5675
  %sh_prom123 = zext i32 %and122 to i64, !dbg !5675
  %shl124 = shl i64 1, %sh_prom123, !dbg !5675
  %and125 = and i64 %shl124, 0, !dbg !5675
  %tobool126 = icmp ne i64 %and125, 0, !dbg !5675
  br i1 %tobool126, label %cond.true, label %lor.lhs.false127, !dbg !5675

lor.lhs.false127:                                 ; preds = %land.lhs.true121, %lor.lhs.false117
  %35 = load i32, ptr %i, align 4, !dbg !5675
  %shr128 = lshr i32 %35, 5, !dbg !5675
  %cmp129 = icmp eq i32 %shr128, 13, !dbg !5675
  br i1 %cmp129, label %land.lhs.true131, label %lor.lhs.false137, !dbg !5675

land.lhs.true131:                                 ; preds = %lor.lhs.false127
  %36 = load i32, ptr %i, align 4, !dbg !5675
  %and132 = and i32 %36, 31, !dbg !5675
  %sh_prom133 = zext i32 %and132 to i64, !dbg !5675
  %shl134 = shl i64 1, %sh_prom133, !dbg !5675
  %and135 = and i64 %shl134, 0, !dbg !5675
  %tobool136 = icmp ne i64 %and135, 0, !dbg !5675
  br i1 %tobool136, label %cond.true, label %lor.lhs.false137, !dbg !5675

lor.lhs.false137:                                 ; preds = %land.lhs.true131, %lor.lhs.false127
  %37 = load i32, ptr %i, align 4, !dbg !5675
  %shr138 = lshr i32 %37, 5, !dbg !5675
  %cmp139 = icmp eq i32 %shr138, 14, !dbg !5675
  br i1 %cmp139, label %land.lhs.true141, label %lor.lhs.false147, !dbg !5675

land.lhs.true141:                                 ; preds = %lor.lhs.false137
  %38 = load i32, ptr %i, align 4, !dbg !5675
  %and142 = and i32 %38, 31, !dbg !5675
  %sh_prom143 = zext i32 %and142 to i64, !dbg !5675
  %shl144 = shl i64 1, %sh_prom143, !dbg !5675
  %and145 = and i64 %shl144, 0, !dbg !5675
  %tobool146 = icmp ne i64 %and145, 0, !dbg !5675
  br i1 %tobool146, label %cond.true, label %lor.lhs.false147, !dbg !5675

lor.lhs.false147:                                 ; preds = %land.lhs.true141, %lor.lhs.false137
  %39 = load i32, ptr %i, align 4, !dbg !5675
  %shr148 = lshr i32 %39, 5, !dbg !5675
  %cmp149 = icmp eq i32 %shr148, 15, !dbg !5675
  br i1 %cmp149, label %land.lhs.true151, label %lor.lhs.false157, !dbg !5675

land.lhs.true151:                                 ; preds = %lor.lhs.false147
  %40 = load i32, ptr %i, align 4, !dbg !5675
  %and152 = and i32 %40, 31, !dbg !5675
  %sh_prom153 = zext i32 %and152 to i64, !dbg !5675
  %shl154 = shl i64 1, %sh_prom153, !dbg !5675
  %and155 = and i64 %shl154, 0, !dbg !5675
  %tobool156 = icmp ne i64 %and155, 0, !dbg !5675
  br i1 %tobool156, label %cond.true, label %lor.lhs.false157, !dbg !5675

lor.lhs.false157:                                 ; preds = %land.lhs.true151, %lor.lhs.false147
  %41 = load i32, ptr %i, align 4, !dbg !5675
  %shr158 = lshr i32 %41, 5, !dbg !5675
  %cmp159 = icmp eq i32 %shr158, 16, !dbg !5675
  br i1 %cmp159, label %land.lhs.true161, label %lor.lhs.false167, !dbg !5675

land.lhs.true161:                                 ; preds = %lor.lhs.false157
  %42 = load i32, ptr %i, align 4, !dbg !5675
  %and162 = and i32 %42, 31, !dbg !5675
  %sh_prom163 = zext i32 %and162 to i64, !dbg !5675
  %shl164 = shl i64 1, %sh_prom163, !dbg !5675
  %and165 = and i64 %shl164, 0, !dbg !5675
  %tobool166 = icmp ne i64 %and165, 0, !dbg !5675
  br i1 %tobool166, label %cond.true, label %lor.lhs.false167, !dbg !5675

lor.lhs.false167:                                 ; preds = %land.lhs.true161, %lor.lhs.false157
  %43 = load i32, ptr %i, align 4, !dbg !5675
  %shr168 = lshr i32 %43, 5, !dbg !5675
  %cmp169 = icmp eq i32 %shr168, 17, !dbg !5675
  br i1 %cmp169, label %land.lhs.true171, label %lor.lhs.false177, !dbg !5675

land.lhs.true171:                                 ; preds = %lor.lhs.false167
  %44 = load i32, ptr %i, align 4, !dbg !5675
  %and172 = and i32 %44, 31, !dbg !5675
  %sh_prom173 = zext i32 %and172 to i64, !dbg !5675
  %shl174 = shl i64 1, %sh_prom173, !dbg !5675
  %and175 = and i64 %shl174, 0, !dbg !5675
  %tobool176 = icmp ne i64 %and175, 0, !dbg !5675
  br i1 %tobool176, label %cond.true, label %lor.lhs.false177, !dbg !5675

lor.lhs.false177:                                 ; preds = %land.lhs.true171, %lor.lhs.false167
  %45 = load i32, ptr %i, align 4, !dbg !5675
  %shr178 = lshr i32 %45, 5, !dbg !5675
  %cmp179 = icmp eq i32 %shr178, 18, !dbg !5675
  br i1 %cmp179, label %land.lhs.true181, label %lor.lhs.false187, !dbg !5675

land.lhs.true181:                                 ; preds = %lor.lhs.false177
  %46 = load i32, ptr %i, align 4, !dbg !5675
  %and182 = and i32 %46, 31, !dbg !5675
  %sh_prom183 = zext i32 %and182 to i64, !dbg !5675
  %shl184 = shl i64 1, %sh_prom183, !dbg !5675
  %and185 = and i64 %shl184, 0, !dbg !5675
  %tobool186 = icmp ne i64 %and185, 0, !dbg !5675
  br i1 %tobool186, label %cond.true, label %lor.lhs.false187, !dbg !5675

lor.lhs.false187:                                 ; preds = %land.lhs.true181, %lor.lhs.false177
  %47 = load i32, ptr %i, align 4, !dbg !5675
  %shr188 = lshr i32 %47, 5, !dbg !5675
  %cmp189 = icmp eq i32 %shr188, 19, !dbg !5675
  br i1 %cmp189, label %land.lhs.true191, label %lor.lhs.false197, !dbg !5675

land.lhs.true191:                                 ; preds = %lor.lhs.false187
  %48 = load i32, ptr %i, align 4, !dbg !5675
  %and192 = and i32 %48, 31, !dbg !5675
  %sh_prom193 = zext i32 %and192 to i64, !dbg !5675
  %shl194 = shl i64 1, %sh_prom193, !dbg !5675
  %and195 = and i64 %shl194, 0, !dbg !5675
  %tobool196 = icmp ne i64 %and195, 0, !dbg !5675
  br i1 %tobool196, label %cond.true, label %lor.lhs.false197, !dbg !5675

lor.lhs.false197:                                 ; preds = %land.lhs.true191, %lor.lhs.false187
  %49 = load i32, ptr %i, align 4, !dbg !5675
  %shr198 = lshr i32 %49, 5, !dbg !5675
  %cmp199 = icmp eq i32 %shr198, 20, !dbg !5675
  br i1 %cmp199, label %land.lhs.true201, label %lor.lhs.false207, !dbg !5675

land.lhs.true201:                                 ; preds = %lor.lhs.false197
  %50 = load i32, ptr %i, align 4, !dbg !5675
  %and202 = and i32 %50, 31, !dbg !5675
  %sh_prom203 = zext i32 %and202 to i64, !dbg !5675
  %shl204 = shl i64 1, %sh_prom203, !dbg !5675
  %and205 = and i64 %shl204, 0, !dbg !5675
  %tobool206 = icmp ne i64 %and205, 0, !dbg !5675
  br i1 %tobool206, label %cond.true, label %lor.lhs.false207, !dbg !5675

lor.lhs.false207:                                 ; preds = %land.lhs.true201, %lor.lhs.false197
  %51 = load i32, ptr %i, align 4, !dbg !5675
  %shr208 = lshr i32 %51, 5, !dbg !5675
  %cmp209 = icmp eq i32 %shr208, 21, !dbg !5675
  br i1 %cmp209, label %land.lhs.true211, label %cond.false, !dbg !5675

land.lhs.true211:                                 ; preds = %lor.lhs.false207
  %52 = load i32, ptr %i, align 4, !dbg !5675
  %and212 = and i32 %52, 31, !dbg !5675
  %sh_prom213 = zext i32 %and212 to i64, !dbg !5675
  %shl214 = shl i64 1, %sh_prom213, !dbg !5675
  %and215 = and i64 %shl214, 0, !dbg !5675
  %tobool216 = icmp ne i64 %and215, 0, !dbg !5675
  br i1 %tobool216, label %cond.true, label %cond.false, !dbg !5676

cond.true:                                        ; preds = %land.lhs.true211, %land.lhs.true201, %land.lhs.true191, %land.lhs.true181, %land.lhs.true171, %land.lhs.true161, %land.lhs.true151, %land.lhs.true141, %land.lhs.true131, %land.lhs.true121, %land.lhs.true111, %land.lhs.true101, %land.lhs.true91, %land.lhs.true81, %land.lhs.true71, %land.lhs.true61, %land.lhs.true51, %land.lhs.true41, %land.lhs.true31, %land.lhs.true21, %land.lhs.true11, %land.lhs.true6
  br i1 true, label %if.then, label %if.end258, !dbg !5675

cond.false:                                       ; preds = %land.lhs.true211, %lor.lhs.false207, %for.body
  %53 = load i32, ptr %i, align 4, !dbg !5675
  %conv217 = zext i32 %53 to i64, !dbg !5675
  %call218 = call zeroext i1 @arch_test_bit(i64 noundef %conv217, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #20, !dbg !5675
  br i1 %call218, label %if.then, label %if.end258, !dbg !5676

if.then:                                          ; preds = %cond.false, %cond.true
  %54 = load i32, ptr %len, align 4, !dbg !5677
  %conv220 = sext i32 %54 to i64, !dbg !5677
  %add221 = add i64 %conv220, 7, !dbg !5678
  %cmp222 = icmp uge i64 %add221, 4096, !dbg !5679
  br i1 %cmp222, label %if.then224, label %if.end255, !dbg !5680

if.then224:                                       ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !5681
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5646, metadata !DIExpression()), !dbg !5681
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5681
  %55 = load i32, ptr %__ret_warn_on, align 4, !dbg !5682
  %tobool225 = icmp ne i32 %55, 0, !dbg !5682
  %lnot = xor i1 %tobool225, true, !dbg !5682
  %lnot226 = xor i1 %lnot, true, !dbg !5682
  %lnot.ext = zext i1 %lnot226 to i32, !dbg !5682
  %conv227 = sext i32 %lnot.ext to i64, !dbg !5682
  %expval = call i64 @llvm.expect.i64(i64 %conv227, i64 0), !dbg !5682
  %tobool228 = icmp ne i64 %expval, 0, !dbg !5682
  br i1 %tobool228, label %if.then229, label %if.end, !dbg !5681

if.then229:                                       ; preds = %if.then224
  br label %do.body, !dbg !5682

do.body:                                          ; preds = %if.then229
  br label %do.body230, !dbg !5683

do.body230:                                       ; preds = %do.body
  br label %do.cond, !dbg !5684

do.cond:                                          ; preds = %do.body230
  br label %do.end, !dbg !5684

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.5) #20, !dbg !5683
  br label %do.body231, !dbg !5683

do.body231:                                       ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !5686
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5654, metadata !DIExpression()), !dbg !5686
  store i32 2313, ptr %__flags, align 4, !dbg !5686
  br label %do.body232, !dbg !5686

do.body232:                                       ; preds = %do.body231
  br label %do.cond233, !dbg !5687

do.cond233:                                       ; preds = %do.body232
  br label %do.end234, !dbg !5687

do.end234:                                        ; preds = %do.cond233
  br label %do.body235, !dbg !5686

do.body235:                                       ; preds = %do.end234
  %56 = load i32, ptr %__flags, align 4, !dbg !5689
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 348, i32 %56, i64 12) #19, !dbg !5689, !srcloc !5691
  br label %do.cond236, !dbg !5689

do.cond236:                                       ; preds = %do.body235
  br label %do.end237, !dbg !5689

do.end237:                                        ; preds = %do.cond236
  br label %do.body238, !dbg !5686

do.body238:                                       ; preds = %do.end237
  br label %do.cond239, !dbg !5692

do.cond239:                                       ; preds = %do.body238
  br label %do.end240, !dbg !5692

do.end240:                                        ; preds = %do.cond239
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !5683
  br label %do.cond241, !dbg !5686

do.cond241:                                       ; preds = %do.end240
  br label %do.end242, !dbg !5686

do.end242:                                        ; preds = %do.cond241
  br label %do.body243, !dbg !5683

do.body243:                                       ; preds = %do.end242
  br label %do.cond244, !dbg !5694

do.cond244:                                       ; preds = %do.body243
  br label %do.end245, !dbg !5694

do.end245:                                        ; preds = %do.cond244
  br label %do.cond246, !dbg !5683

do.cond246:                                       ; preds = %do.end245
  br label %do.end247, !dbg !5683

do.end247:                                        ; preds = %do.cond246
  br label %if.end, !dbg !5683

if.end:                                           ; preds = %do.end247, %if.then224
  %57 = load i32, ptr %__ret_warn_on, align 4, !dbg !5681
  %tobool248 = icmp ne i32 %57, 0, !dbg !5681
  %lnot249 = xor i1 %tobool248, true, !dbg !5681
  %lnot251 = xor i1 %lnot249, true, !dbg !5681
  %lnot.ext252 = zext i1 %lnot251 to i32, !dbg !5681
  %conv253 = sext i32 %lnot.ext252 to i64, !dbg !5681
  %expval254 = call i64 @llvm.expect.i64(i64 %conv253, i64 0), !dbg !5681
  store i64 %expval254, ptr %tmp, align 8, !dbg !5682
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !5696
  %58 = load i64, ptr %tmp, align 8, !dbg !5681
  br label %for.end, !dbg !5697

if.end255:                                        ; preds = %if.then
  %59 = load ptr, ptr %buf.addr, align 8, !dbg !5698
  %60 = load i32, ptr %len, align 4, !dbg !5699
  %61 = load i32, ptr %i, align 4, !dbg !5700
  %call256 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %59, i32 noundef %60, ptr noundef @.str.7, i32 noundef %61) #20, !dbg !5701
  %62 = load i32, ptr %len, align 4, !dbg !5702
  %add257 = add i32 %62, %call256, !dbg !5702
  store i32 %add257, ptr %len, align 4, !dbg !5702
  br label %if.end258, !dbg !5703

if.end258:                                        ; preds = %if.end255, %cond.false, %cond.true
  br label %for.inc, !dbg !5675

for.inc:                                          ; preds = %if.end258
  %63 = load i32, ptr %i, align 4, !dbg !5704
  %inc = add i32 %63, 1, !dbg !5704
  store i32 %inc, ptr %i, align 4, !dbg !5704
  br label %for.cond, !dbg !5705, !llvm.loop !5706

for.end:                                          ; preds = %if.end, %for.cond
  %64 = load ptr, ptr %buf.addr, align 8, !dbg !5710
  %65 = load i32, ptr %len, align 4, !dbg !5711
  %call259 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %64, i32 noundef %65, ptr noundef @.str.8) #20, !dbg !5712
  %66 = load i32, ptr %len, align 4, !dbg !5713
  %add260 = add i32 %66, %call259, !dbg !5713
  store i32 %add260, ptr %len, align 4, !dbg !5713
  %67 = load i32, ptr %len, align 4, !dbg !5714
  %conv261 = sext i32 %67 to i64, !dbg !5714
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #19, !dbg !5715
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #19, !dbg !5715
  ret i64 %conv261, !dbg !5716
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5717 dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5720 dso_local void @kfree(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !5723 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5725, metadata !DIExpression()), !dbg !5730
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5726, metadata !DIExpression()), !dbg !5731
  %0 = load i64, ptr %size.addr, align 8, !dbg !5732
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5733
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5734

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5735
  %tobool = icmp ne i64 %2, 0, !dbg !5735
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5736

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #19, !dbg !5737
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5727, metadata !DIExpression()), !dbg !5738
  %3 = load i64, ptr %size.addr, align 8, !dbg !5739
  %cmp = icmp ugt i64 %3, 8192, !dbg !5741
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5742

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5743
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5744
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #21, !dbg !5745
  store ptr %call, ptr %retval, align 8, !dbg !5746
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5746

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5747
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #20, !dbg !5747
  store i32 %call2, ptr %index, align 4, !dbg !5748
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5749
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5750
  %9 = ptrtoint ptr %8 to i64, !dbg !5750
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #20, !dbg !5751
  %idxprom = zext i32 %call3 to i64, !dbg !5752
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5752
  %10 = load i32, ptr %index, align 4, !dbg !5753
  %idxprom4 = zext i32 %10 to i64, !dbg !5752
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5752
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5752
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5754
  %13 = load i64, ptr %size.addr, align 8, !dbg !5755
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #24, !dbg !5756
  store ptr %call6, ptr %retval, align 8, !dbg !5757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5757

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #19, !dbg !5758
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5759
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5760
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #21, !dbg !5761
  store ptr %call8, ptr %retval, align 8, !dbg !5762
  br label %return, !dbg !5762

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5763
  ret ptr %16, !dbg !5763
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5764 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #13 align 16 !dbg !5765 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5769, metadata !DIExpression()), !dbg !5771
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5770, metadata !DIExpression()), !dbg !5772
  %0 = load i64, ptr %size.addr, align 8, !dbg !5773
  %tobool = icmp ne i64 %0, 0, !dbg !5773
  br i1 %tobool, label %if.end, label %if.then, !dbg !5775

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5776
  br label %return, !dbg !5776

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5777
  %cmp = icmp ule i64 %1, 8, !dbg !5779
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5780

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5781
  br label %return, !dbg !5781

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5782
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5784
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5785

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5786
  %cmp4 = icmp ule i64 %3, 96, !dbg !5787
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5788

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5789
  br label %return, !dbg !5789

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5790
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5792
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5793

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5794
  %cmp9 = icmp ule i64 %5, 192, !dbg !5795
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5796

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5797
  br label %return, !dbg !5797

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5798
  %cmp12 = icmp ule i64 %6, 8, !dbg !5800
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5801

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5802
  br label %return, !dbg !5802

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5803
  %cmp15 = icmp ule i64 %7, 16, !dbg !5805
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5806

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5807
  br label %return, !dbg !5807

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5808
  %cmp18 = icmp ule i64 %8, 32, !dbg !5810
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5811

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5812
  br label %return, !dbg !5812

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5813
  %cmp21 = icmp ule i64 %9, 64, !dbg !5815
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5816

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5817
  br label %return, !dbg !5817

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5818
  %cmp24 = icmp ule i64 %10, 128, !dbg !5820
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5821

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5822
  br label %return, !dbg !5822

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5823
  %cmp27 = icmp ule i64 %11, 256, !dbg !5825
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5826

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5827
  br label %return, !dbg !5827

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5828
  %cmp30 = icmp ule i64 %12, 512, !dbg !5830
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5831

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5832
  br label %return, !dbg !5832

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5833
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5835
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5836

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5837
  br label %return, !dbg !5837

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5838
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5840
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5841

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5842
  br label %return, !dbg !5842

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5843
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5845
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5846

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5847
  br label %return, !dbg !5847

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5848
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5850
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5851

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5852
  br label %return, !dbg !5852

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5853
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5855
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5856

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5857
  br label %return, !dbg !5857

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5858
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5860
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5861

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5862
  br label %return, !dbg !5862

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5863
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5865
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5866

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5867
  br label %return, !dbg !5867

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5868
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5870
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5871

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5872
  br label %return, !dbg !5872

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5873
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5875
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5876

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5877
  br label %return, !dbg !5877

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5878
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5880
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5881

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5882
  br label %return, !dbg !5882

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5883
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5885
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5886

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5887
  br label %return, !dbg !5887

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5888
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5890
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5891

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5892
  br label %return, !dbg !5892

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5893, !range !5895, !noundef !921
  %tobool69 = trunc i8 %25 to i1, !dbg !5893
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5896

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5897

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #25, !dbg !5898, !srcloc !5901
  unreachable, !dbg !5898

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5902

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5903

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5904

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5906

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5904

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #19, !dbg !5908, !srcloc !5910
  br label %do.end75, !dbg !5908

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5904

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5911
  br label %return, !dbg !5911

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5912
  ret i32 %26, !dbg !5912
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5913 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #13 align 16 !dbg !5916 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5920, metadata !DIExpression()), !dbg !5922
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5921, metadata !DIExpression()), !dbg !5923
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5924
  %and = and i32 %0, 17, !dbg !5924
  %cmp = icmp eq i32 %and, 0, !dbg !5924
  %lnot = xor i1 %cmp, true, !dbg !5924
  %lnot1 = xor i1 %lnot, true, !dbg !5924
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5924
  %conv = sext i32 %lnot.ext to i64, !dbg !5924
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5924
  %tobool = icmp ne i64 %expval, 0, !dbg !5924
  br i1 %tobool, label %if.then, label %if.end, !dbg !5926

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5927
  br label %return, !dbg !5927

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5928
  %and2 = and i32 %1, 1, !dbg !5930
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5930
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5931

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5932
  br label %return, !dbg !5932

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5933
  br label %return, !dbg !5933

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5935
  ret i32 %2, !dbg !5935
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #15

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5936 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5937 dso_local void @__compiletime_assert_204() #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5938 dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #13 align 16 !dbg !5941 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5949, metadata !DIExpression()), !dbg !5951
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5950, metadata !DIExpression()), !dbg !5952
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5953
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5954
  br i1 %1, label %cond.true, label %cond.false, !dbg !5954

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5955
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5956
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !5957
  %conv = zext i1 %call to i32, !dbg !5957
  br label %cond.end, !dbg !5954

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5958
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5959
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #20, !dbg !5960
  %conv2 = zext i1 %call1 to i32, !dbg !5960
  br label %cond.end, !dbg !5954

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5954
  %tobool = icmp ne i32 %cond, 0, !dbg !5954
  ret i1 %tobool, !dbg !5961
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5962 dso_local void @__warn_printk(ptr noundef, ...) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #13 align 16 !dbg !5963 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5967, metadata !DIExpression()), !dbg !5969
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5968, metadata !DIExpression()), !dbg !5970
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5971
  %and = and i64 %0, 63, !dbg !5972
  %shl = shl i64 1, %and, !dbg !5973
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5974
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5975
  %shr = ashr i64 %2, 6, !dbg !5976
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5974
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5974
  %and1 = and i64 %shl, %3, !dbg !5977
  %cmp = icmp ne i64 %and1, 0, !dbg !5978
  ret i1 %cmp, !dbg !5979
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #13 align 16 !dbg !5980 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5982, metadata !DIExpression()), !dbg !5985
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5983, metadata !DIExpression()), !dbg !5986
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #19, !dbg !5987
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5984, metadata !DIExpression()), !dbg !5988
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5989
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5990
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #19, !dbg !5991, !srcloc !5992
  %3 = icmp ult i8 %2, 2, !dbg !5991
  call void @llvm.assume(i1 %3), !dbg !5991
  store i8 %2, ptr %oldbit, align 1, !dbg !5991
  %4 = load i8, ptr %oldbit, align 1, !dbg !5993, !range !5895, !noundef !921
  %tobool = trunc i8 %4 to i1, !dbg !5993
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #19, !dbg !5994
  ret i1 %tobool, !dbg !5995
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5996 dso_local i32 @cpu_device_up(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5997 dso_local void @msleep(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @change_cpu_under_node(ptr noundef %cpu, i32 noundef %from_nid, i32 noundef %to_nid) #0 align 16 !dbg !6001 {
entry:
  %cpu.addr = alloca ptr, align 8
  %from_nid.addr = alloca i32, align 4
  %to_nid.addr = alloca i32, align 4
  %cpuid = alloca i32, align 4
  store ptr %cpu, ptr %cpu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6005, metadata !DIExpression()), !dbg !6009
  store i32 %from_nid, ptr %from_nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %from_nid.addr, metadata !6006, metadata !DIExpression()), !dbg !6010
  store i32 %to_nid, ptr %to_nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %to_nid.addr, metadata !6007, metadata !DIExpression()), !dbg !6011
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpuid) #19, !dbg !6012
  call void @llvm.dbg.declare(metadata ptr %cpuid, metadata !6008, metadata !DIExpression()), !dbg !6013
  %0 = load ptr, ptr %cpu.addr, align 8, !dbg !6014
  %dev = getelementptr inbounds %struct.cpu, ptr %0, i32 0, i32 2, !dbg !6015
  %id = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27, !dbg !6016
  %1 = load i32, ptr %id, align 8, !dbg !6016
  store i32 %1, ptr %cpuid, align 4, !dbg !6013
  %2 = load i32, ptr %cpuid, align 4, !dbg !6017
  %3 = load i32, ptr %from_nid.addr, align 4, !dbg !6018
  %call = call i32 @unregister_cpu_under_node(i32 noundef %2, i32 noundef %3) #20, !dbg !6019
  %4 = load i32, ptr %cpuid, align 4, !dbg !6020
  %5 = load i32, ptr %to_nid.addr, align 4, !dbg !6021
  %call1 = call i32 @register_cpu_under_node(i32 noundef %4, i32 noundef %5) #20, !dbg !6022
  %6 = load i32, ptr %to_nid.addr, align 4, !dbg !6023
  %7 = load ptr, ptr %cpu.addr, align 8, !dbg !6024
  %node_id = getelementptr inbounds %struct.cpu, ptr %7, i32 0, i32 0, !dbg !6025
  store i32 %6, ptr %node_id, align 8, !dbg !6026
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpuid) #19, !dbg !6027
  ret void, !dbg !6027
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6028 dso_local i32 @cpu_device_down(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #13 align 16 !dbg !6029 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6033, metadata !DIExpression()), !dbg !6035
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !6034, metadata !DIExpression()), !dbg !6036
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6037
  %call = call i32 @cpumask_check(i32 noundef %0) #20, !dbg !6037
  %conv = zext i32 %call to i64, !dbg !6037
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !6037
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !6037
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6037
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #20, !dbg !6037
  ret i1 %call1, !dbg !6038
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #13 align 16 !dbg !6039 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6042, metadata !DIExpression()), !dbg !6044
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6043, metadata !DIExpression()), !dbg !6045
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6046
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6047
  %div = udiv i64 %1, 64, !dbg !6047
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6048
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #20, !dbg !6049
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6050
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6051
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !6052
  ret i1 %call, !dbg !6053
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #13 align 16 !dbg !6054 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6060
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #20, !dbg !6061
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !6062
  ret i32 %1, !dbg !6063
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #13 align 16 !dbg !6064 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6072, metadata !DIExpression()), !dbg !6074
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6073, metadata !DIExpression()), !dbg !6075
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6076
  %1 = load i64, ptr %size.addr, align 8, !dbg !6077
  %conv = trunc i64 %1 to i32, !dbg !6077
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #20, !dbg !6078
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6079
  %3 = load i64, ptr %size.addr, align 8, !dbg !6079
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #20, !dbg !6079
  ret void, !dbg !6080
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6081 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6086, metadata !DIExpression()), !dbg !6088
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6087, metadata !DIExpression()), !dbg !6089
  ret i1 true, !dbg !6090
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !6091 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6096, metadata !DIExpression()), !dbg !6099
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6097, metadata !DIExpression()), !dbg !6100
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6098, metadata !DIExpression()), !dbg !6101
  ret void, !dbg !6102
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #13 align 16 !dbg !6103 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6107, metadata !DIExpression()), !dbg !6109
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !6108, metadata !DIExpression()), !dbg !6110
  ret void, !dbg !6111
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @crash_notes_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6112 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cpu = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %addr = alloca i64, align 8
  %cpunum = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp3 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6114, metadata !DIExpression()), !dbg !6127
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6115, metadata !DIExpression()), !dbg !6128
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6116, metadata !DIExpression()), !dbg !6129
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu) #19, !dbg !6130
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !6117, metadata !DIExpression()), !dbg !6131
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !6132
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6118, metadata !DIExpression()), !dbg !6132
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6132
  store ptr %0, ptr %__mptr, align 8, !dbg !6132
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6132
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !6132
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6132
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !6133
  %2 = load ptr, ptr %tmp, align 8, !dbg !6132
  store ptr %2, ptr %cpu, align 8, !dbg !6131
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #19, !dbg !6134
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !6120, metadata !DIExpression()), !dbg !6135
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpunum) #19, !dbg !6136
  call void @llvm.dbg.declare(metadata ptr %cpunum, metadata !6121, metadata !DIExpression()), !dbg !6137
  %3 = load ptr, ptr %cpu, align 8, !dbg !6138
  %dev1 = getelementptr inbounds %struct.cpu, ptr %3, i32 0, i32 2, !dbg !6139
  %id = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 27, !dbg !6140
  %4 = load i32, ptr %id, align 8, !dbg !6140
  store i32 %4, ptr %cpunum, align 4, !dbg !6141
  br label %do.body, !dbg !6142

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #19, !dbg !6143
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6122, metadata !DIExpression()), !dbg !6143
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6143
  %5 = load ptr, ptr %__vpp_verify, align 8, !dbg !6143
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #19, !dbg !6142
  br label %do.cond, !dbg !6143

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6143

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !6144
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6125, metadata !DIExpression()), !dbg !6144
  %6 = load ptr, ptr @crash_notes, align 8, !dbg !6144
  %7 = ptrtoint ptr %6 to i64, !dbg !6144
  store i64 %7, ptr %__ptr, align 8, !dbg !6144
  %8 = load i64, ptr %__ptr, align 8, !dbg !6144
  %9 = load i32, ptr %cpunum, align 4, !dbg !6144
  %idxprom = sext i32 %9 to i64, !dbg !6144
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6144
  %10 = load i64, ptr %arrayidx, align 8, !dbg !6144
  %add = add i64 %8, %10, !dbg !6144
  %11 = inttoptr i64 %add to ptr, !dbg !6144
  store ptr %11, ptr %tmp3, align 8, !dbg !6144
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !6142
  %12 = load ptr, ptr %tmp3, align 8, !dbg !6144
  store ptr %12, ptr %tmp2, align 8, !dbg !6143
  %13 = load ptr, ptr %tmp2, align 8, !dbg !6142
  %call = call i64 @per_cpu_ptr_to_phys(ptr noundef %13) #20, !dbg !6145
  store i64 %call, ptr %addr, align 8, !dbg !6146
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !6147
  %15 = load i64, ptr %addr, align 8, !dbg !6148
  %call4 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %14, ptr noundef @.str.10, i64 noundef %15) #20, !dbg !6149
  %conv = sext i32 %call4 to i64, !dbg !6149
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpunum) #19, !dbg !6150
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #19, !dbg !6150
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu) #19, !dbg !6150
  ret i64 %conv, !dbg !6151
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6152 dso_local i64 @per_cpu_ptr_to_phys(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6156 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @crash_notes_size_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6159 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6161, metadata !DIExpression()), !dbg !6164
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6162, metadata !DIExpression()), !dbg !6165
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6163, metadata !DIExpression()), !dbg !6166
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6167
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.12, i64 noundef 368) #20, !dbg !6168
  %conv = sext i32 %call to i64, !dbg !6168
  ret i64 %conv, !dbg !6169
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6170 dso_local void @device_initialize(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_create_release(ptr noundef %dev) #0 align 16 !dbg !6171 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6173, metadata !DIExpression()), !dbg !6174
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6175
  call void @kfree(ptr noundef %0) #20, !dbg !6176
  ret void, !dbg !6177
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_set_pm_not_required(ptr noundef %dev) #4 align 16 !dbg !6178 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6180, metadata !DIExpression()), !dbg !6181
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6182
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !6183
  %no_pm = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 1, !dbg !6184
  %bf.load = load i16, ptr %no_pm, align 4, !dbg !6185
  %bf.clear = and i16 %bf.load, -129, !dbg !6185
  %bf.set = or i16 %bf.clear, 128, !dbg !6185
  store i16 %bf.set, ptr %no_pm, align 4, !dbg !6185
  ret void, !dbg !6186
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_set_drvdata(ptr noundef %dev, ptr noundef %data) #4 align 16 !dbg !6187 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6191, metadata !DIExpression()), !dbg !6193
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6192, metadata !DIExpression()), !dbg !6194
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6195
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6196
  %driver_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8, !dbg !6197
  store ptr %0, ptr %driver_data, align 8, !dbg !6198
  ret void, !dbg !6199
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6200 dso_local i32 @kobject_set_name_vargs(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6203 dso_local i32 @device_add(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !6204 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6209, metadata !DIExpression()), !dbg !6210
  %0 = load i64, ptr %error.addr, align 8, !dbg !6211
  %1 = inttoptr i64 %0 to ptr, !dbg !6212
  ret ptr %1, !dbg !6213
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_cpus_attr(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6214 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ca = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6216, metadata !DIExpression()), !dbg !6222
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6217, metadata !DIExpression()), !dbg !6223
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6218, metadata !DIExpression()), !dbg !6224
  call void @llvm.lifetime.start.p0(i64 8, ptr %ca) #19, !dbg !6225
  call void @llvm.dbg.declare(metadata ptr %ca, metadata !6219, metadata !DIExpression()), !dbg !6226
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !6227
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6220, metadata !DIExpression()), !dbg !6227
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !6227
  store ptr %0, ptr %__mptr, align 8, !dbg !6227
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6227
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6227
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6227
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !6228
  %2 = load ptr, ptr %tmp, align 8, !dbg !6227
  store ptr %2, ptr %ca, align 8, !dbg !6226
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !6229
  %4 = load ptr, ptr %ca, align 8, !dbg !6230
  %map = getelementptr inbounds %struct.cpu_attr, ptr %4, i32 0, i32 1, !dbg !6231
  %5 = load ptr, ptr %map, align 8, !dbg !6231
  %call = call i64 @cpumap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %3, ptr noundef %5) #20, !dbg !6232
  call void @llvm.lifetime.end.p0(i64 8, ptr %ca) #19, !dbg !6233
  ret i64 %call, !dbg !6234
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cpumap_print_to_pagebuf(i1 noundef zeroext %list, ptr noundef %buf, ptr noundef %mask) #4 align 16 !dbg !6235 {
entry:
  %list.addr = alloca i8, align 1
  %buf.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %frombool = zext i1 %list to i8
  store i8 %frombool, ptr %list.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6239, metadata !DIExpression()), !dbg !6242
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6240, metadata !DIExpression()), !dbg !6243
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6241, metadata !DIExpression()), !dbg !6244
  %0 = load i8, ptr %list.addr, align 1, !dbg !6245, !range !5895, !noundef !921
  %tobool = trunc i8 %0 to i1, !dbg !6245
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !6246
  %2 = load ptr, ptr %mask.addr, align 8, !dbg !6247
  %bits = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !6247
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6247
  %3 = load i32, ptr @nr_cpu_ids, align 4, !dbg !6248
  %call = call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext %tobool, ptr noundef %1, ptr noundef %arraydecay, i32 noundef %3) #20, !dbg !6249
  %conv = sext i32 %call to i64, !dbg !6249
  ret i64 %conv, !dbg !6250
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6251 dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @print_cpus_kernel_max(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6256 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6258, metadata !DIExpression()), !dbg !6261
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6259, metadata !DIExpression()), !dbg !6262
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6260, metadata !DIExpression()), !dbg !6263
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6264
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.18, i32 noundef 63) #20, !dbg !6265
  %conv = sext i32 %call to i64, !dbg !6265
  ret i64 %conv, !dbg !6266
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @print_cpus_offline(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6267 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %offline = alloca [1 x %struct.cpumask], align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6269, metadata !DIExpression()), !dbg !6276
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6270, metadata !DIExpression()), !dbg !6277
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6271, metadata !DIExpression()), !dbg !6278
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #19, !dbg !6279
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6272, metadata !DIExpression()), !dbg !6280
  store i32 0, ptr %len, align 4, !dbg !6280
  call void @llvm.lifetime.start.p0(i64 8, ptr %offline) #19, !dbg !6281
  call void @llvm.dbg.declare(metadata ptr %offline, metadata !6273, metadata !DIExpression()), !dbg !6282
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef %offline, i32 noundef 3264) #20, !dbg !6283
  br i1 %call, label %if.end, label %if.then, !dbg !6285

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !6286
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6286

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %offline, i64 0, i64 0, !dbg !6287
  %call1 = call zeroext i1 @cpumask_andnot(ptr noundef %arraydecay, ptr noundef @__cpu_possible_mask, ptr noundef @__cpu_online_mask) #20, !dbg !6288
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6289
  %1 = load i32, ptr %len, align 4, !dbg !6290
  %2 = load i32, ptr @nr_cpu_ids, align 4, !dbg !6291
  %arraydecay2 = getelementptr inbounds [1 x %struct.cpumask], ptr %offline, i64 0, i64 0, !dbg !6291
  %bits = getelementptr inbounds %struct.cpumask, ptr %arraydecay2, i32 0, i32 0, !dbg !6291
  %arraydecay3 = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6291
  %call4 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %0, i32 noundef %1, ptr noundef @.str.20, i32 noundef %2, ptr noundef %arraydecay3) #20, !dbg !6292
  %3 = load i32, ptr %len, align 4, !dbg !6293
  %add = add i32 %3, %call4, !dbg !6293
  store i32 %add, ptr %len, align 4, !dbg !6293
  %arraydecay5 = getelementptr inbounds [1 x %struct.cpumask], ptr %offline, i64 0, i64 0, !dbg !6294
  call void @free_cpumask_var(ptr noundef %arraydecay5) #20, !dbg !6295
  %4 = load i32, ptr @total_cpus, align 4, !dbg !6296
  %tobool = icmp ne i32 %4, 0, !dbg !6296
  br i1 %tobool, label %land.lhs.true, label %if.end17, !dbg !6298

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, ptr @nr_cpu_ids, align 4, !dbg !6299
  %6 = load i32, ptr @total_cpus, align 4, !dbg !6300
  %cmp = icmp ult i32 %5, %6, !dbg !6301
  br i1 %cmp, label %if.then6, label %if.end17, !dbg !6302

if.then6:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !6303
  %8 = load i32, ptr %len, align 4, !dbg !6305
  %call7 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %7, i32 noundef %8, ptr noundef @.str.21) #20, !dbg !6306
  %9 = load i32, ptr %len, align 4, !dbg !6307
  %add8 = add i32 %9, %call7, !dbg !6307
  store i32 %add8, ptr %len, align 4, !dbg !6307
  %10 = load i32, ptr @nr_cpu_ids, align 4, !dbg !6308
  %11 = load i32, ptr @total_cpus, align 4, !dbg !6310
  %sub = sub i32 %11, 1, !dbg !6311
  %cmp9 = icmp eq i32 %10, %sub, !dbg !6312
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !6313

if.then10:                                        ; preds = %if.then6
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !6314
  %13 = load i32, ptr %len, align 4, !dbg !6315
  %14 = load i32, ptr @nr_cpu_ids, align 4, !dbg !6316
  %call11 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %12, i32 noundef %13, ptr noundef @.str.22, i32 noundef %14) #20, !dbg !6317
  %15 = load i32, ptr %len, align 4, !dbg !6318
  %add12 = add i32 %15, %call11, !dbg !6318
  store i32 %add12, ptr %len, align 4, !dbg !6318
  br label %if.end16, !dbg !6319

if.else:                                          ; preds = %if.then6
  %16 = load ptr, ptr %buf.addr, align 8, !dbg !6320
  %17 = load i32, ptr %len, align 4, !dbg !6321
  %18 = load i32, ptr @nr_cpu_ids, align 4, !dbg !6322
  %19 = load i32, ptr @total_cpus, align 4, !dbg !6323
  %sub13 = sub i32 %19, 1, !dbg !6324
  %call14 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %16, i32 noundef %17, ptr noundef @.str.23, i32 noundef %18, i32 noundef %sub13) #20, !dbg !6325
  %20 = load i32, ptr %len, align 4, !dbg !6326
  %add15 = add i32 %20, %call14, !dbg !6326
  store i32 %add15, ptr %len, align 4, !dbg !6326
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then10
  br label %if.end17, !dbg !6327

if.end17:                                         ; preds = %if.end16, %land.lhs.true, %if.end
  %21 = load ptr, ptr %buf.addr, align 8, !dbg !6328
  %22 = load i32, ptr %len, align 4, !dbg !6329
  %call18 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %21, i32 noundef %22, ptr noundef @.str.8) #20, !dbg !6330
  %23 = load i32, ptr %len, align 4, !dbg !6331
  %add19 = add i32 %23, %call18, !dbg !6331
  store i32 %add19, ptr %len, align 4, !dbg !6331
  %24 = load i32, ptr %len, align 4, !dbg !6332
  %conv = sext i32 %24 to i64, !dbg !6332
  store i64 %conv, ptr %retval, align 8, !dbg !6333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6333

cleanup:                                          ; preds = %if.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %offline) #19, !dbg !6334
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #19, !dbg !6334
  %25 = load i64, ptr %retval, align 8, !dbg !6334
  ret i64 %25, !dbg !6334
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @alloc_cpumask_var(ptr noundef %mask, i32 noundef %flags) #4 align 16 !dbg !6335 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6340, metadata !DIExpression()), !dbg !6342
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6341, metadata !DIExpression()), !dbg !6343
  ret i1 true, !dbg !6344
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_andnot(ptr noundef %dstp, ptr noundef %src1p, ptr noundef %src2p) #4 align 16 !dbg !6345 {
entry:
  %dstp.addr = alloca ptr, align 8
  %src1p.addr = alloca ptr, align 8
  %src2p.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !6350, metadata !DIExpression()), !dbg !6353
  store ptr %src1p, ptr %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1p.addr, metadata !6351, metadata !DIExpression()), !dbg !6354
  store ptr %src2p, ptr %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2p.addr, metadata !6352, metadata !DIExpression()), !dbg !6355
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !6356
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !6356
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6356
  %1 = load ptr, ptr %src1p.addr, align 8, !dbg !6357
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !6357
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !6357
  %2 = load ptr, ptr %src2p.addr, align 8, !dbg !6358
  %bits3 = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !6358
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %bits3, i64 0, i64 0, !dbg !6358
  %call = call zeroext i1 @bitmap_andnot(ptr noundef %arraydecay, ptr noundef %arraydecay2, ptr noundef %arraydecay4, i32 noundef 64) #20, !dbg !6359
  ret i1 %call, !dbg !6360
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_cpumask_var(ptr noundef %mask) #4 align 16 !dbg !6361 {
entry:
  %mask.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6365, metadata !DIExpression()), !dbg !6366
  ret void, !dbg !6367
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_andnot(ptr noundef %dst, ptr noundef %src1, ptr noundef %src2, i32 noundef %nbits) #4 align 16 !dbg !6368 {
entry:
  %retval = alloca i1, align 1
  %dst.addr = alloca ptr, align 8
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !6372, metadata !DIExpression()), !dbg !6376
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !6373, metadata !DIExpression()), !dbg !6377
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !6374, metadata !DIExpression()), !dbg !6378
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !6375, metadata !DIExpression()), !dbg !6379
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !6380
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6380
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !6380

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !6380
  %cmp = icmp ule i32 %2, 64, !dbg !6380
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !6380

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !6380
  %cmp2 = icmp ugt i32 %3, 0, !dbg !6380
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6382

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src1.addr, align 8, !dbg !6383
  %5 = load i64, ptr %4, align 8, !dbg !6384
  %6 = load ptr, ptr %src2.addr, align 8, !dbg !6385
  %7 = load i64, ptr %6, align 8, !dbg !6386
  %not = xor i64 %7, -1, !dbg !6387
  %and = and i64 %5, %not, !dbg !6388
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !6389
  %sub = sub i32 0, %8, !dbg !6389
  %and3 = and i32 %sub, 63, !dbg !6389
  %sh_prom = zext i32 %and3 to i64, !dbg !6389
  %shr = lshr i64 -1, %sh_prom, !dbg !6389
  %and4 = and i64 %and, %shr, !dbg !6390
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !6391
  store i64 %and4, ptr %9, align 8, !dbg !6392
  %cmp5 = icmp ne i64 %and4, 0, !dbg !6393
  store i1 %cmp5, ptr %retval, align 1, !dbg !6394
  br label %return, !dbg !6394

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !6395
  %11 = load ptr, ptr %src1.addr, align 8, !dbg !6396
  %12 = load ptr, ptr %src2.addr, align 8, !dbg !6397
  %13 = load i32, ptr %nbits.addr, align 4, !dbg !6398
  %call = call zeroext i1 @__bitmap_andnot(ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13) #20, !dbg !6399
  store i1 %call, ptr %retval, align 1, !dbg !6400
  br label %return, !dbg !6400

return:                                           ; preds = %if.end, %if.then
  %14 = load i1, ptr %retval, align 1, !dbg !6401
  ret i1 %14, !dbg !6401
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6402 dso_local zeroext i1 @__bitmap_andnot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @print_cpus_isolated(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6403 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %isolated = alloca [1 x %struct.cpumask], align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6405, metadata !DIExpression()), !dbg !6410
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6406, metadata !DIExpression()), !dbg !6411
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6407, metadata !DIExpression()), !dbg !6412
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #19, !dbg !6413
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6408, metadata !DIExpression()), !dbg !6414
  call void @llvm.lifetime.start.p0(i64 8, ptr %isolated) #19, !dbg !6415
  call void @llvm.dbg.declare(metadata ptr %isolated, metadata !6409, metadata !DIExpression()), !dbg !6416
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef %isolated, i32 noundef 3264) #20, !dbg !6417
  br i1 %call, label %if.end, label %if.then, !dbg !6419

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !6420
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6420

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %isolated, i64 0, i64 0, !dbg !6421
  %call1 = call ptr @housekeeping_cpumask(i32 noundef 5) #20, !dbg !6422
  %call2 = call zeroext i1 @cpumask_andnot(ptr noundef %arraydecay, ptr noundef @__cpu_possible_mask, ptr noundef %call1) #20, !dbg !6423
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6424
  %1 = load i32, ptr @nr_cpu_ids, align 4, !dbg !6425
  %arraydecay3 = getelementptr inbounds [1 x %struct.cpumask], ptr %isolated, i64 0, i64 0, !dbg !6425
  %bits = getelementptr inbounds %struct.cpumask, ptr %arraydecay3, i32 0, i32 0, !dbg !6425
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6425
  %call5 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.25, i32 noundef %1, ptr noundef %arraydecay4) #20, !dbg !6426
  store i32 %call5, ptr %len, align 4, !dbg !6427
  %arraydecay6 = getelementptr inbounds [1 x %struct.cpumask], ptr %isolated, i64 0, i64 0, !dbg !6428
  call void @free_cpumask_var(ptr noundef %arraydecay6) #20, !dbg !6429
  %2 = load i32, ptr %len, align 4, !dbg !6430
  %conv = sext i32 %2 to i64, !dbg !6430
  store i64 %conv, ptr %retval, align 8, !dbg !6431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6431

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %isolated) #19, !dbg !6432
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #19, !dbg !6432
  %3 = load i64, ptr %retval, align 8, !dbg !6432
  ret i64 %3, !dbg !6432
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6433 dso_local ptr @housekeeping_cpumask(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @crash_hotplug_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6436 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6438, metadata !DIExpression()), !dbg !6441
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6439, metadata !DIExpression()), !dbg !6442
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6440, metadata !DIExpression()), !dbg !6443
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6444
  %call = call i32 @arch_crash_hotplug_cpu_support() #20, !dbg !6445
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.18, i32 noundef %call) #20, !dbg !6446
  %conv = sext i32 %call1 to i64, !dbg !6446
  ret i64 %conv, !dbg !6447
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6448 dso_local i32 @arch_crash_hotplug_cpu_support() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6450 dso_local ptr @bus_get_dev_root(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6453 dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6456 dso_local i32 @_printk(ptr noundef, ...) #18

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { noredzone }
attributes #21 = { noredzone allocsize(0) }
attributes #22 = { cold noredzone noreturn }
attributes #23 = { cold noredzone }
attributes #24 = { noredzone allocsize(2) }
attributes #25 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099}
!llvm.ident = !{!5100}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cpu_sys_devices", scope: !2, file: !3, line: 27, type: !194, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.cpu.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/cpu\22 -D KBUILD_BASENAME=\22cpu\22 -D KBUILD_MODNAME=\22cpu\22 -D __KBUILD_MODNAME=kmod_cpu -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/cpu.ll drivers/base/cpu.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !192, globals: !4878, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/cpu.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4393e3ead098ff3ddce7d71f42eb64c")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !59, !66, !70, !76, !85, !90, !95, !101, !117, !125, !132, !140, !146, !152, !159, !164, !169, !179}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !13, line: 312, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !20, line: 45, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!23 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!24 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !26, line: 487, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!29 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!30 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!31 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !38, line: 620, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!41 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!42 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!43 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!44 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !38, line: 597, baseType: !46, size: 32, elements: !47)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!49 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!50 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!51 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!52 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !54, line: 41, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!57 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!58 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !54, line: 99, baseType: !7, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1)
!62 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2)
!63 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3)
!64 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4)
!65 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !54, line: 80, baseType: !7, size: 32, elements: !67)
!67 = !{!68, !69}
!68 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!69 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !71, line: 30, baseType: !7, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!72 = !{!73, !74, !75}
!73 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!74 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!75 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84}
!78 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!79 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!80 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!81 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!82 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!83 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!84 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !86)
!86 = !{!87, !88, !89}
!87 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!88 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!89 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !91)
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!93 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!94 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !96)
!96 = !{!97, !98, !99, !100}
!97 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!98 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!99 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!100 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !102, line: 1325, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!104 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!105 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!106 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!107 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!108 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!109 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!110 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!111 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!112 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!113 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!114 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!115 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!116 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !118, line: 68, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!119 = !{!120, !121, !122, !123, !124}
!120 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!121 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!122 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!123 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!124 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !126, line: 15, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!127 = !{!128, !129, !130, !131}
!128 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!129 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!130 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!131 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !133, line: 9, baseType: !7, size: 32, elements: !134)
!133 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!134 = !{!135, !136, !137, !138, !139}
!135 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!136 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!137 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!138 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!139 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !141, line: 54, baseType: !7, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!142 = !{!143, !144, !145}
!143 = !DIEnumerator(name: "USRQUOTA", value: 0)
!144 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!145 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !147, line: 16, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "TT_NONE", value: 0)
!150 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!151 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !153, line: 51, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!154 = !{!155, !156, !157, !158}
!155 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!156 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!157 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!158 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !160, line: 2052, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!161 = !{!162, !163}
!162 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!163 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !165, line: 10, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!166 = !{!167, !168}
!167 = !DIEnumerator(name: "false", value: 0)
!168 = !DIEnumerator(name: "true", value: 1)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !170, line: 364, baseType: !7, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!171 = !{!172, !173, !174, !175, !176, !177, !178}
!172 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!173 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!174 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!175 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!176 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!177 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!178 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hk_type", file: !180, line: 8, baseType: !7, size: 32, elements: !181)
!180 = !DIFile(filename: "./include/linux/sched/isolation.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f45135f5b311296c29424234bd6ab2ab")
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190, !191}
!182 = !DIEnumerator(name: "HK_TYPE_TIMER", value: 0)
!183 = !DIEnumerator(name: "HK_TYPE_RCU", value: 1)
!184 = !DIEnumerator(name: "HK_TYPE_MISC", value: 2)
!185 = !DIEnumerator(name: "HK_TYPE_SCHED", value: 3)
!186 = !DIEnumerator(name: "HK_TYPE_TICK", value: 4)
!187 = !DIEnumerator(name: "HK_TYPE_DOMAIN", value: 5)
!188 = !DIEnumerator(name: "HK_TYPE_WQ", value: 6)
!189 = !DIEnumerator(name: "HK_TYPE_MANAGED_IRQ", value: 7)
!190 = !DIEnumerator(name: "HK_TYPE_KTHREAD", value: 8)
!191 = !DIEnumerator(name: "HK_TYPE_MAX", value: 9)
!192 = !{!193, !362, !340, !628, !440, !4845, !761, !1146, !983, !4852, !7, !4854, !4860}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !196)
!196 = !{!197, !4265, !4266, !4425, !4426, !4441, !4442, !4443, !4444, !4445, !4446, !4453, !4611, !4624, !4634, !4638, !4640, !4641, !4642, !4646, !4653, !4654, !4657, !4660, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4822, !4823, !4824, !4827, !4830, !4839, !4840, !4841, !4842, !4843, !4844}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !195, file: !26, line: 706, baseType: !198, size: 512)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !199, line: 64, size: 512, elements: !200)
!199 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!200 = !{!201, !205, !212, !214, !303, !4152, !4255, !4260, !4261, !4262, !4263, !4264}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !199, line: 65, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !198, file: !199, line: 66, baseType: !206, size: 128, offset: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !207, line: 190, size: 128, elements: !208)
!207 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!208 = !{!209, !211}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !207, line: 191, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !206, file: !207, line: 191, baseType: !210, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !198, file: !199, line: 67, baseType: !213, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !198, file: !199, line: 68, baseType: !215, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !199, line: 168, size: 768, elements: !217)
!217 = !{!218, !219, !262, !263}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !216, file: !199, line: 169, baseType: !206, size: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !216, file: !199, line: 170, baseType: !220, size: 32, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !221, line: 29, baseType: !222)
!221 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !221, line: 17, size: 32, elements: !223)
!223 = !{!224}
!224 = !DIDerivedType(tag: DW_TAG_member, scope: !222, file: !221, line: 18, baseType: !225, size: 32)
!225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !222, file: !221, line: 18, size: 32, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !225, file: !221, line: 19, baseType: !228, size: 32)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !229, line: 14, size: 32, elements: !230)
!229 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !228, file: !229, line: 15, baseType: !232, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !233, line: 44, baseType: !234)
!233 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !233, line: 14, size: 32, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, scope: !234, file: !233, line: 15, baseType: !237, size: 32)
!237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !234, file: !233, line: 15, size: 32, elements: !238)
!238 = !{!239, !244, !254}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !237, file: !233, line: 16, baseType: !240, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !207, line: 174, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !207, line: 172, size: 32, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !241, file: !207, line: 173, baseType: !46, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !233, line: 24, baseType: !245, size: 16)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !237, file: !233, line: 24, size: 16, elements: !246)
!246 = !{!247, !253}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !245, file: !233, line: 25, baseType: !248, size: 8)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !249, line: 17, baseType: !250)
!249 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !251, line: 21, baseType: !252)
!251 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!252 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !245, file: !233, line: 26, baseType: !248, size: 8, offset: 8)
!254 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !233, line: 28, baseType: !255, size: 32)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !237, file: !233, line: 28, size: 32, elements: !256)
!256 = !{!257, !261}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !255, file: !233, line: 29, baseType: !258, size: 16)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !249, line: 19, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !251, line: 24, baseType: !260)
!260 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !255, file: !233, line: 30, baseType: !258, size: 16, offset: 16)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !216, file: !199, line: 171, baseType: !198, size: 512, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !216, file: !199, line: 172, baseType: !264, size: 64, offset: 704)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !199, line: 133, size: 192, elements: !267)
!267 = !{!268, !275, !280}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !266, file: !199, line: 134, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!46, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !266, file: !199, line: 135, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!202, !273}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !266, file: !199, line: 136, baseType: !281, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!46, !273, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !199, line: 125, size: 20736, elements: !287)
!287 = !{!288, !293, !297, !298, !302}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !286, file: !199, line: 126, baseType: !289, size: 192)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 192, elements: !291)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!291 = !{!292}
!292 = !DISubrange(count: 3)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !286, file: !199, line: 127, baseType: !294, size: 4096, offset: 192)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 4096, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !286, file: !199, line: 128, baseType: !46, size: 32, offset: 4288)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !286, file: !199, line: 129, baseType: !299, size: 16384, offset: 4320)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 16384, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 2048)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !286, file: !199, line: 130, baseType: !46, size: 32, offset: 20704)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !198, file: !199, line: 69, baseType: !304, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !199, line: 116, size: 384, elements: !307)
!307 = !{!308, !312, !341, !4114, !4142, !4146}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !306, file: !199, line: 117, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !213}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !306, file: !199, line: 118, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !316, line: 254, size: 128, elements: !317)
!316 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!317 = !{!318, !333}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !315, file: !316, line: 255, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!322, !213, !327, !290}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !207, line: 66, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !324, line: 73, baseType: !325)
!324 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !324, line: 15, baseType: !326)
!326 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !316, line: 30, size: 128, elements: !329)
!329 = !{!330, !331}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !328, file: !316, line: 31, baseType: !202, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !328, file: !316, line: 32, baseType: !332, size: 16, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !207, line: 24, baseType: !260)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !315, file: !316, line: 256, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!322, !213, !327, !202, !337}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !207, line: 61, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !324, line: 72, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !324, line: 16, baseType: !340)
!340 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !306, file: !199, line: 119, baseType: !342, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !316, line: 84, size: 320, elements: !346)
!346 = !{!347, !348, !352, !4110, !4112}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !345, file: !316, line: 85, baseType: !202, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !345, file: !316, line: 86, baseType: !349, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!332, !213, !327, !46}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !345, file: !316, line: 88, baseType: !353, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!332, !213, !356, !46}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !316, line: 175, size: 512, elements: !358)
!358 = !{!359, !360, !361, !363, !4101, !4105, !4106}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !357, file: !316, line: 176, baseType: !328, size: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !357, file: !316, line: 177, baseType: !337, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !357, file: !316, line: 178, baseType: !362, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !357, file: !316, line: 179, baseType: !364, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !160, line: 472, size: 1536, align: 64, elements: !369)
!369 = !{!370, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !4095, !4096, !4097, !4098, !4099, !4100}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !368, file: !160, line: 473, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !160, line: 641, size: 4800, elements: !373)
!373 = !{!374, !375, !376, !384, !385, !392, !393, !396, !397, !3874, !3875, !3876, !3877, !3878, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3918, !3921, !3922, !3923, !3932, !3933, !3934, !3935}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !372, file: !160, line: 642, baseType: !332, size: 16)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !372, file: !160, line: 643, baseType: !260, size: 16, offset: 16)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !372, file: !160, line: 644, baseType: !377, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !378, line: 23, baseType: !379)
!378 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 21, size: 32, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !379, file: !378, line: 22, baseType: !382, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !207, line: 37, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !324, line: 49, baseType: !7)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !372, file: !160, line: 645, baseType: !206, size: 128, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !372, file: !160, line: 646, baseType: !386, size: 32, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !378, line: 28, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 26, size: 32, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !387, file: !378, line: 27, baseType: !390, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !207, line: 38, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !324, line: 50, baseType: !7)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !372, file: !160, line: 647, baseType: !7, size: 32, offset: 224)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !372, file: !160, line: 650, baseType: !394, size: 64, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !160, line: 607, flags: DIFlagFwdDecl)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !372, file: !160, line: 651, baseType: !394, size: 64, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !372, file: !160, line: 654, baseType: !398, size: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !160, line: 1966, size: 2048, align: 512, elements: !401)
!401 = !{!402, !3708, !3718, !3722, !3726, !3730, !3734, !3738, !3742, !3746, !3750, !3751, !3755, !3759, !3796, !3825, !3829, !3835, !3839, !3843, !3847, !3851, !3855, !3861, !3865}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !400, file: !160, line: 1967, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!406, !371, !406, !7}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !408, line: 82, size: 1536, elements: !409)
!408 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!409 = !{!410, !411, !421, !429, !430, !450, !451, !455, !468, !3691, !3692, !3693, !3694, !3700, !3701, !3702}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !407, file: !408, line: 84, baseType: !7, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !407, file: !408, line: 85, baseType: !412, size: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !413, line: 275, baseType: !414)
!413 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !413, line: 275, size: 32, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !414, file: !413, line: 275, baseType: !417, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !413, line: 69, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !413, line: 64, size: 32, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !418, file: !413, line: 65, baseType: !7, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !407, file: !408, line: 86, baseType: !422, size: 128, offset: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !423, line: 38, size: 128, elements: !424)
!423 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!424 = !{!425, !427}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !422, file: !423, line: 39, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !422, file: !423, line: 39, baseType: !428, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !407, file: !408, line: 87, baseType: !406, size: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !407, file: !408, line: 88, baseType: !431, size: 128, offset: 256)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !408, line: 49, size: 128, elements: !432)
!432 = !{!433, !447}
!433 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !408, line: 50, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !408, line: 50, size: 64, elements: !435)
!435 = !{!436, !443}
!436 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !408, line: 51, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !434, file: !408, line: 51, size: 64, elements: !438)
!438 = !{!439, !442}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !437, file: !408, line: 52, baseType: !440, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !249, line: 21, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !251, line: 27, baseType: !7)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !437, file: !408, line: 52, baseType: !440, size: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !434, file: !408, line: 54, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !249, line: 23, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !251, line: 31, baseType: !446)
!446 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !431, file: !408, line: 56, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !407, file: !408, line: 89, baseType: !371, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !407, file: !408, line: 91, baseType: !452, size: 256, offset: 448)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 256, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !407, file: !408, line: 94, baseType: !456, size: 64, offset: 704)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !457, line: 25, size: 64, elements: !458)
!457 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !457, line: 26, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !457, line: 26, size: 64, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !460, file: !457, line: 28, baseType: !445, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !457, line: 30, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !460, file: !457, line: 30, size: 64, elements: !465)
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !464, file: !457, line: 31, baseType: !220, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !464, file: !457, line: 32, baseType: !46, size: 32, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !407, file: !408, line: 95, baseType: !469, size: 64, offset: 768)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !408, line: 128, size: 1024, align: 512, elements: !472)
!472 = !{!473, !477, !478, !485, !491, !495, !499, !503, !504, !508, !512, !3681, !3685}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !471, file: !408, line: 129, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!46, !406, !7}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !471, file: !408, line: 130, baseType: !474, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !471, file: !408, line: 131, baseType: !479, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!46, !482, !484}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !471, file: !408, line: 132, baseType: !486, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!46, !482, !7, !202, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !471, file: !408, line: 134, baseType: !492, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!46, !482}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !471, file: !408, line: 135, baseType: !496, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!46, !406}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !471, file: !408, line: 136, baseType: !500, size: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !406}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !471, file: !408, line: 137, baseType: !500, size: 64, offset: 448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !471, file: !408, line: 138, baseType: !505, size: 64, offset: 512)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !406, !371}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !471, file: !408, line: 139, baseType: !509, size: 64, offset: 576)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!290, !406, !290, !46}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !471, file: !408, line: 140, baseType: !513, size: 64, offset: 640)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!516, !3680}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !518, line: 70, size: 256, elements: !519)
!518 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!519 = !{!520, !521, !3676, !3677}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !517, file: !518, line: 71, baseType: !406, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !517, file: !518, line: 72, baseType: !522, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !160, line: 1190, size: 10752, elements: !524)
!524 = !{!525, !526, !529, !530, !531, !535, !1015, !1155, !1195, !1285, !1289, !1290, !1291, !1292, !1293, !1302, !1303, !1304, !1305, !1310, !1314, !1315, !1318, !1321, !1324, !1327, !1328, !1329, !1370, !3609, !3610, !3611, !3612, !3613, !3614, !3617, !3619, !3626, !3627, !3628, !3629, !3630, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !523, file: !160, line: 1191, baseType: !206, size: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !523, file: !160, line: 1192, baseType: !527, size: 32, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !207, line: 21, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !207, line: 18, baseType: !440)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !523, file: !160, line: 1193, baseType: !252, size: 8, offset: 160)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !523, file: !160, line: 1194, baseType: !340, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !523, file: !160, line: 1195, baseType: !532, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !207, line: 52, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !324, line: 88, baseType: !534)
!534 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !523, file: !160, line: 1196, baseType: !536, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !160, line: 2366, size: 576, elements: !538)
!538 = !{!539, !540, !541, !548, !552, !556, !560, !1000, !1001, !1005, !1007, !1008, !1009, !1011, !1012, !1013, !1014}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !537, file: !160, line: 2367, baseType: !202, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !537, file: !160, line: 2368, baseType: !46, size: 32, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !537, file: !160, line: 2376, baseType: !542, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!46, !545}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !547, line: 32, flags: DIFlagFwdDecl)
!547 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!548 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !537, file: !160, line: 2377, baseType: !549, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !160, line: 75, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !537, file: !160, line: 2378, baseType: !553, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!406, !536, !46, !202, !362}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !537, file: !160, line: 2380, baseType: !557, size: 64, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !522}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !537, file: !160, line: 2381, baseType: !561, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !563)
!563 = !{!564, !565, !566, !570, !592, !618, !619, !620, !621, !625, !630, !631, !651, !707, !708, !709, !710, !711, !714, !715, !716, !724, !728, !755, !776, !777, !778, !779, !788, !811, !812, !815, !818, !819, !820, !821, !822, !823, !824, !829, !830, !958, !966, !967, !968, !970, !974, !975, !979, !980, !981, !982, !984, !985, !986, !993, !994, !995, !999}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !562, file: !13, line: 403, baseType: !12, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !562, file: !13, line: 406, baseType: !206, size: 128, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !562, file: !13, line: 409, baseType: !567, size: 448, offset: 192)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 448, elements: !568)
!568 = !{!569}
!569 = !DISubrange(count: 56)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !562, file: !13, line: 417, baseType: !571, size: 768, offset: 640)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !572)
!572 = !{!573, !574, !575, !576, !579}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !571, file: !13, line: 46, baseType: !198, size: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !571, file: !13, line: 47, baseType: !561, size: 64, offset: 512)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !571, file: !13, line: 48, baseType: !213, size: 64, offset: 576)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !571, file: !13, line: 49, baseType: !577, size: 64, offset: 640)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !571, file: !13, line: 50, baseType: !580, size: 64, offset: 704)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !582, line: 26, size: 256, elements: !583)
!582 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !581, file: !582, line: 27, baseType: !7, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !581, file: !582, line: 28, baseType: !586, size: 192, offset: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !587, line: 43, size: 192, elements: !588)
!587 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!588 = !{!589, !591}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !586, file: !587, line: 44, baseType: !590, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !229, line: 23, baseType: !228)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !586, file: !587, line: 45, baseType: !206, size: 128, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !562, file: !13, line: 418, baseType: !593, size: 64, offset: 1408)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !595)
!595 = !{!596, !597, !602, !606, !610, !614}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !594, file: !13, line: 54, baseType: !328, size: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !594, file: !13, line: 55, baseType: !598, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!322, !593, !601, !290}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !594, file: !13, line: 57, baseType: !603, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!322, !593, !601, !202, !337}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !594, file: !13, line: 59, baseType: !607, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !561, !202}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !594, file: !13, line: 60, baseType: !611, size: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!46, !561}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !594, file: !13, line: 61, baseType: !615, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !561}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !562, file: !13, line: 419, baseType: !202, size: 64, offset: 1472)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !562, file: !13, line: 420, baseType: !202, size: 64, offset: 1536)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !562, file: !13, line: 421, baseType: !213, size: 64, offset: 1600)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !562, file: !13, line: 424, baseType: !622, size: 64, offset: 1664)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !562, file: !13, line: 425, baseType: !626, size: 64, offset: 1728)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !249, line: 20, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !251, line: 26, baseType: !46)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !562, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !562, file: !13, line: 435, baseType: !632, size: 256, offset: 1856)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !633, line: 66, size: 256, elements: !634)
!633 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!634 = !{!635, !644, !645, !650}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !632, file: !633, line: 67, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !637, line: 13, baseType: !638)
!637 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !207, line: 181, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !207, line: 179, size: 64, elements: !640)
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !639, file: !207, line: 180, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !249, line: 22, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !251, line: 30, baseType: !534)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !632, file: !633, line: 68, baseType: !590, size: 32, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !632, file: !633, line: 70, baseType: !646, size: 32, offset: 96)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !647, line: 15, size: 32, elements: !648)
!647 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !646, file: !647, line: 20, baseType: !240, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !632, file: !633, line: 72, baseType: !206, size: 128, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !562, file: !13, line: 437, baseType: !652, size: 64, offset: 2112)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !654, line: 69, size: 320, elements: !655)
!654 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!655 = !{!656, !657, !658, !678, !680, !684, !685}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !653, file: !654, line: 70, baseType: !202, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !653, file: !654, line: 71, baseType: !561, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !653, file: !654, line: 72, baseType: !659, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !654, line: 47, size: 256, elements: !662)
!662 = !{!663, !664, !670, !674}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !654, line: 49, baseType: !7, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !661, file: !654, line: 51, baseType: !665, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!46, !202, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !661, file: !654, line: 53, baseType: !671, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!46, !290, !668}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !661, file: !654, line: 55, baseType: !675, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !362}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !653, file: !654, line: 73, baseType: !679, size: 16, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !653, file: !654, line: 74, baseType: !681, size: 8, offset: 208)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !249, line: 16, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !251, line: 20, baseType: !683)
!683 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !653, file: !654, line: 75, baseType: !248, size: 8, offset: 216)
!685 = !DIDerivedType(tag: DW_TAG_member, scope: !653, file: !654, line: 76, baseType: !686, size: 64, offset: 256)
!686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !653, file: !654, line: 76, size: 64, elements: !687)
!687 = !{!688, !689, !696}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !686, file: !654, line: 77, baseType: !362, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !686, file: !654, line: 78, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !654, line: 86, size: 128, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !692, file: !654, line: 87, baseType: !7, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !692, file: !654, line: 88, baseType: !290, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !686, file: !654, line: 79, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !654, line: 92, size: 256, elements: !700)
!700 = !{!701, !702, !703, !705, !706}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !699, file: !654, line: 94, baseType: !7, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !699, file: !654, line: 95, baseType: !7, size: 32, offset: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !699, file: !654, line: 96, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !699, file: !654, line: 97, baseType: !659, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !699, file: !654, line: 98, baseType: !362, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !562, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !562, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !562, file: !13, line: 442, baseType: !622, size: 64, offset: 2240)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !562, file: !13, line: 443, baseType: !626, size: 64, offset: 2304)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !562, file: !13, line: 444, baseType: !712, size: 8, offset: 2368)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !207, line: 35, baseType: !713)
!713 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !562, file: !13, line: 451, baseType: !712, size: 8, offset: 2376)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !562, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !562, file: !13, line: 455, baseType: !717, size: 64, offset: 2432)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !719, line: 23, size: 96, elements: !720)
!719 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!720 = !{!721, !722, !723}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !718, file: !719, line: 24, baseType: !46, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !718, file: !719, line: 24, baseType: !46, size: 32, offset: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !718, file: !719, line: 24, baseType: !46, size: 32, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !562, file: !13, line: 458, baseType: !725, size: 64, offset: 2496)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!46}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !562, file: !13, line: 460, baseType: !729, size: 4032, align: 512, offset: 2560)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 4032, elements: !753)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !731)
!731 = !{!732, !733, !734}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !730, file: !13, line: 363, baseType: !362, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !730, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !730, file: !13, line: 367, baseType: !735, size: 448, offset: 128)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !736)
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !735, file: !13, line: 320, baseType: !561, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !735, file: !13, line: 321, baseType: !739, size: 384, offset: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !740, line: 40, size: 384, elements: !741)
!740 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!741 = !{!742}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !739, file: !740, line: 41, baseType: !743, size: 384, align: 64)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, size: 384, align: 64, elements: !751)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !745, line: 5, size: 192, align: 64, elements: !746)
!745 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!746 = !{!747, !748, !750}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !744, file: !745, line: 6, baseType: !340, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !744, file: !745, line: 7, baseType: !749, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !744, file: !745, line: 8, baseType: !749, size: 64, offset: 128)
!751 = !{!752}
!752 = !DISubrange(count: 2)
!753 = !{!754}
!754 = !DISubrange(count: 7)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !562, file: !13, line: 463, baseType: !756, size: 192, offset: 6592)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !757, line: 8, size: 192, elements: !758)
!757 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!758 = !{!759, !760, !762}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !756, file: !757, line: 10, baseType: !7, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !756, file: !757, line: 11, baseType: !761, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !756, file: !757, line: 12, baseType: !763, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !765, line: 59, size: 48, elements: !766)
!765 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!766 = !{!767, !771, !772, !773, !774, !775}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !764, file: !765, line: 60, baseType: !768, size: 16)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !249, line: 18, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !251, line: 23, baseType: !770)
!770 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !764, file: !765, line: 61, baseType: !768, size: 16, offset: 16)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !764, file: !765, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !764, file: !765, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !765, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !764, file: !765, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !562, file: !13, line: 465, baseType: !340, size: 64, offset: 6784)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !562, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !562, file: !13, line: 470, baseType: !206, size: 128, offset: 6912)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !562, file: !13, line: 471, baseType: !780, size: 64, offset: 7040)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !782, line: 33, size: 96, elements: !783)
!782 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!783 = !{!784, !785, !786, !787}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !781, file: !782, line: 37, baseType: !46, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !781, file: !782, line: 43, baseType: !46, size: 32, offset: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !781, file: !782, line: 45, baseType: !260, size: 16, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !782, line: 47, baseType: !260, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !562, file: !13, line: 476, baseType: !789, size: 64, offset: 7104)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !791)
!791 = !{!792, !808, !809, !810}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !790, file: !13, line: 379, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !795, line: 204, baseType: !796)
!795 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !795, line: 197, size: 192, elements: !797)
!797 = !{!798, !800, !801, !802, !804, !806}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !796, file: !795, line: 198, baseType: !799, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !795, line: 21, baseType: !441)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !796, file: !795, line: 199, baseType: !252, size: 8, offset: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !796, file: !795, line: 200, baseType: !252, size: 8, offset: 40)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !796, file: !795, line: 201, baseType: !803, size: 16, offset: 48)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !795, line: 17, baseType: !259)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !796, file: !795, line: 202, baseType: !805, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !795, line: 16, baseType: !445)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !796, file: !795, line: 203, baseType: !807, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !795, line: 22, baseType: !445)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !790, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !790, file: !13, line: 381, baseType: !290, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !790, file: !13, line: 382, baseType: !290, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !562, file: !13, line: 477, baseType: !790, size: 256, offset: 7168)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !562, file: !13, line: 480, baseType: !813, size: 64, offset: 7424)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !562, file: !13, line: 483, baseType: !816, size: 64, offset: 7488)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !562, file: !13, line: 488, baseType: !290, size: 64, offset: 7552)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !562, file: !13, line: 492, baseType: !362, size: 64, offset: 7616)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !562, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !562, file: !13, line: 495, baseType: !362, size: 64, offset: 7744)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !562, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !562, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !562, file: !13, line: 500, baseType: !825, size: 64, offset: 7872)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !827, line: 45, baseType: !828)
!827 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !562, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !562, file: !13, line: 504, baseType: !831, size: 64, offset: 8000)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !834, line: 96, size: 192, elements: !835)
!834 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!835 = !{!836, !837, !918, !922}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !833, file: !834, line: 97, baseType: !7, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !833, file: !834, line: 98, baseType: !838, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !834, line: 24, size: 3072, elements: !840)
!840 = !{!841, !843, !844, !845, !846, !870, !871, !872, !873, !891, !903, !904, !915, !916, !917}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !839, file: !834, line: 26, baseType: !842, size: 128)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !636, size: 128, elements: !751)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !839, file: !834, line: 27, baseType: !842, size: 128, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !839, file: !834, line: 28, baseType: !46, size: 32, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !839, file: !834, line: 31, baseType: !220, size: 32, align: 512, offset: 512)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !839, file: !834, line: 32, baseType: !847, size: 960, offset: 576)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !848, line: 206, size: 960, elements: !849)
!848 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!849 = !{!850, !859, !864, !866, !867, !869}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !847, file: !848, line: 207, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !207, line: 232, size: 128, align: 64, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !852, file: !207, line: 233, baseType: !851, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !852, file: !207, line: 234, baseType: !856, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !851}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !847, file: !848, line: 208, baseType: !860, size: 256, offset: 64)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 256, elements: !862)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!862 = !{!863}
!863 = !DISubrange(count: 4)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !847, file: !848, line: 209, baseType: !865, size: 256, offset: 320)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 256, elements: !862)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !847, file: !848, line: 213, baseType: !326, size: 64, offset: 576)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !847, file: !848, line: 215, baseType: !868, size: 256, offset: 640)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 256, elements: !862)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !847, file: !848, line: 216, baseType: !248, size: 8, offset: 896)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !839, file: !834, line: 33, baseType: !340, size: 64, offset: 1536)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !839, file: !834, line: 34, baseType: !340, size: 64, offset: 1600)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !839, file: !834, line: 35, baseType: !712, size: 8, offset: 1664)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !839, file: !834, line: 36, baseType: !874, size: 320, offset: 1728)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !875, line: 11, size: 320, elements: !876)
!875 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!876 = !{!877, !884, !885, !890}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !874, file: !875, line: 16, baseType: !878, size: 128)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !207, line: 198, size: 128, elements: !879)
!879 = !{!880, !882}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !878, file: !207, line: 199, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !878, file: !207, line: 199, baseType: !883, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !874, file: !875, line: 17, baseType: !340, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !874, file: !875, line: 18, baseType: !886, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !889}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !874, file: !875, line: 19, baseType: !440, size: 32, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !839, file: !834, line: 37, baseType: !892, size: 256, offset: 2048)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !893, line: 98, size: 256, elements: !894)
!893 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!894 = !{!895, !896, !897}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !892, file: !893, line: 99, baseType: !636, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !892, file: !893, line: 100, baseType: !206, size: 128, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !892, file: !893, line: 101, baseType: !898, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !893, line: 21, baseType: !899)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !902}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !839, file: !834, line: 38, baseType: !852, size: 128, align: 64, offset: 2304)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !839, file: !834, line: 39, baseType: !905, size: 64, offset: 2432)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !834, line: 49, size: 768, elements: !907)
!907 = !{!908, !909, !910, !911, !912, !913, !914}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !906, file: !834, line: 50, baseType: !220, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !906, file: !834, line: 51, baseType: !865, size: 256, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !906, file: !834, line: 53, baseType: !865, size: 256, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !906, file: !834, line: 54, baseType: !340, size: 64, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !906, file: !834, line: 55, baseType: !905, size: 64, offset: 640)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !906, file: !834, line: 56, baseType: !46, size: 32, offset: 704)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !906, file: !834, line: 57, baseType: !46, size: 32, offset: 736)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !839, file: !834, line: 40, baseType: !340, size: 64, offset: 2496)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !839, file: !834, line: 42, baseType: !46, size: 32, offset: 2560)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !839, file: !834, line: 43, baseType: !832, size: 64, offset: 2624)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !833, file: !834, line: 99, baseType: !919, offset: 128)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !920, line: 211, elements: !921)
!920 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!921 = !{}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !833, file: !834, line: 100, baseType: !923, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !834, line: 63, size: 3008, elements: !925)
!925 = !{!926, !927, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !957}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !924, file: !834, line: 64, baseType: !905, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !924, file: !834, line: 65, baseType: !928, size: 192, offset: 64)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 192, elements: !291)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !924, file: !834, line: 67, baseType: !46, size: 32, offset: 256)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !924, file: !834, line: 68, baseType: !632, size: 256, offset: 320)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !924, file: !834, line: 69, baseType: !220, size: 32, offset: 576)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !924, file: !834, line: 70, baseType: !632, size: 256, offset: 640)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !924, file: !834, line: 71, baseType: !340, size: 64, offset: 896)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !924, file: !834, line: 72, baseType: !340, size: 64, offset: 960)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !924, file: !834, line: 73, baseType: !340, size: 64, offset: 1024)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !924, file: !834, line: 74, baseType: !340, size: 64, offset: 1088)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !924, file: !834, line: 75, baseType: !340, size: 64, offset: 1152)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !924, file: !834, line: 76, baseType: !340, size: 64, offset: 1216)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !924, file: !834, line: 77, baseType: !340, size: 64, offset: 1280)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !924, file: !834, line: 78, baseType: !340, size: 64, offset: 1344)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !924, file: !834, line: 79, baseType: !712, size: 8, offset: 1408)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !924, file: !834, line: 80, baseType: !340, size: 64, offset: 1472)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !924, file: !834, line: 81, baseType: !632, size: 256, offset: 1536)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !924, file: !834, line: 82, baseType: !581, size: 256, offset: 1792)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !924, file: !834, line: 84, baseType: !240, size: 32, offset: 2048)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !924, file: !834, line: 87, baseType: !340, size: 64, offset: 2112)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !924, file: !834, line: 88, baseType: !340, size: 64, offset: 2176)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !924, file: !834, line: 89, baseType: !949, size: 704, offset: 2240)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !893, line: 111, size: 704, elements: !950)
!950 = !{!951, !952, !953, !956}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !949, file: !893, line: 112, baseType: !892, size: 256)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !949, file: !893, line: 113, baseType: !874, size: 320, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !949, file: !893, line: 116, baseType: !954, size: 64, offset: 576)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !893, line: 18, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !949, file: !893, line: 117, baseType: !46, size: 32, offset: 640)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !924, file: !834, line: 90, baseType: !832, size: 64, offset: 2944)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !562, file: !13, line: 515, baseType: !959, size: 64, offset: 8064)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !961, line: 117, size: 128, elements: !962)
!961 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!962 = !{!963, !964, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !960, file: !961, line: 118, baseType: !628, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !960, file: !961, line: 119, baseType: !628, size: 32, offset: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !960, file: !961, line: 120, baseType: !326, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !562, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !562, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !562, file: !13, line: 520, baseType: !969, size: 64, offset: 8192)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !562, file: !13, line: 523, baseType: !971, size: 64, offset: 8256)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !562, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !562, file: !13, line: 525, baseType: !976, size: 64, offset: 8384)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !562, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !562, file: !13, line: 533, baseType: !362, size: 64, offset: 8512)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !562, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !562, file: !13, line: 535, baseType: !983, size: 64, offset: 8640)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !562, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !562, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !562, file: !13, line: 540, baseType: !987, size: 64, offset: 8768)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !989, line: 32, size: 64, elements: !990)
!989 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !988, file: !989, line: 33, baseType: !628, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !988, file: !989, line: 34, baseType: !628, size: 32, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !562, file: !13, line: 563, baseType: !206, size: 128, offset: 8832)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !562, file: !13, line: 565, baseType: !206, size: 128, offset: 8960)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !562, file: !13, line: 568, baseType: !996, size: 64, offset: 9088)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{null}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !562, file: !13, line: 570, baseType: !240, size: 32, offset: 9152)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !537, file: !160, line: 2382, baseType: !536, size: 64, offset: 448)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !537, file: !160, line: 2383, baseType: !1002, size: 64, offset: 512)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !207, line: 194, size: 64, elements: !1003)
!1003 = !{!1004}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1002, file: !207, line: 195, baseType: !881, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !537, file: !160, line: 2385, baseType: !1006, offset: 576)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !920, line: 206, elements: !921)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !537, file: !160, line: 2386, baseType: !1006, offset: 576)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !537, file: !160, line: 2387, baseType: !1006, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !537, file: !160, line: 2388, baseType: !1010, offset: 576)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1006, elements: !291)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !537, file: !160, line: 2390, baseType: !1006, offset: 576)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !537, file: !160, line: 2391, baseType: !1006, offset: 576)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !537, file: !160, line: 2392, baseType: !1006, offset: 576)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !537, file: !160, line: 2393, baseType: !1006, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !523, file: !160, line: 1197, baseType: !1016, size: 64, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !160, line: 2057, size: 1664, elements: !1019)
!1019 = !{!1020, !1024, !1028, !1029, !1033, !1039, !1043, !1044, !1045, !1049, !1053, !1057, !1058, !1059, !1065, !1069, !1070, !1077, !1078, !1079, !1080, !1084, !1088, !1137, !1153, !1154}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1018, file: !160, line: 2058, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!371, !522}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1018, file: !160, line: 2059, baseType: !1025, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !371}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1018, file: !160, line: 2060, baseType: !1025, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1018, file: !160, line: 2062, baseType: !1030, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !371, !46}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1018, file: !160, line: 2063, baseType: !1034, size: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!46, !371, !1037}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !160, line: 309, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1018, file: !160, line: 2064, baseType: !1040, size: 64, offset: 320)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!46, !371}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1018, file: !160, line: 2065, baseType: !1025, size: 64, offset: 384)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1018, file: !160, line: 2066, baseType: !557, size: 64, offset: 448)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1018, file: !160, line: 2067, baseType: !1046, size: 64, offset: 512)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!46, !522, !46}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1018, file: !160, line: 2068, baseType: !1050, size: 64, offset: 576)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!46, !522, !159}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1018, file: !160, line: 2069, baseType: !1054, size: 64, offset: 640)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!46, !522}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1018, file: !160, line: 2070, baseType: !1050, size: 64, offset: 704)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1018, file: !160, line: 2071, baseType: !1054, size: 64, offset: 768)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1018, file: !160, line: 2072, baseType: !1060, size: 64, offset: 832)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!46, !406, !1063}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !160, line: 62, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1018, file: !160, line: 2073, baseType: !1066, size: 64, offset: 896)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!46, !522, !761, !290}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1018, file: !160, line: 2074, baseType: !557, size: 64, offset: 960)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1018, file: !160, line: 2076, baseType: !1071, size: 64, offset: 1024)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!46, !1074, !406}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1076, line: 66, flags: DIFlagFwdDecl)
!1076 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1018, file: !160, line: 2077, baseType: !1071, size: 64, offset: 1088)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1018, file: !160, line: 2078, baseType: !1071, size: 64, offset: 1152)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1018, file: !160, line: 2079, baseType: !1071, size: 64, offset: 1216)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1018, file: !160, line: 2081, baseType: !1081, size: 64, offset: 1280)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!322, !522, !46, !290, !337, !532}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1018, file: !160, line: 2082, baseType: !1085, size: 64, offset: 1344)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!322, !522, !46, !202, !337, !532}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1018, file: !160, line: 2083, baseType: !1089, size: 64, offset: 1408)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!1092, !371}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !141, line: 296, size: 1664, elements: !1095)
!1095 = !{!1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1120, !1121, !1122}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1094, file: !141, line: 297, baseType: !878, size: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1094, file: !141, line: 298, baseType: !206, size: 128, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1094, file: !141, line: 299, baseType: !206, size: 128, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1094, file: !141, line: 300, baseType: !206, size: 128, offset: 384)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1094, file: !141, line: 301, baseType: !632, size: 256, offset: 512)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1094, file: !141, line: 302, baseType: !220, size: 32, offset: 768)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1094, file: !141, line: 303, baseType: !240, size: 32, offset: 800)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1094, file: !141, line: 304, baseType: !522, size: 64, offset: 832)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1094, file: !141, line: 305, baseType: !1105, size: 64, offset: 896)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !141, line: 68, size: 64, elements: !1106)
!1106 = !{!1107, !1119}
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1105, file: !141, line: 69, baseType: !1108, size: 32)
!1108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1105, file: !141, line: 69, size: 32, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1108, file: !141, line: 70, baseType: !377, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1108, file: !141, line: 71, baseType: !386, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1108, file: !141, line: 72, baseType: !1113, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1114, line: 24, baseType: !1115)
!1114 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1114, line: 22, size: 32, elements: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1115, file: !1114, line: 23, baseType: !1118, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1114, line: 20, baseType: !383)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1105, file: !141, line: 74, baseType: !140, size: 32, offset: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1094, file: !141, line: 306, baseType: !532, size: 64, offset: 960)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1094, file: !141, line: 307, baseType: !340, size: 64, offset: 1024)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1094, file: !141, line: 308, baseType: !1123, size: 576, offset: 1088)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !141, line: 205, size: 576, elements: !1124)
!1124 = !{!1125, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1136}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1123, file: !141, line: 206, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !141, line: 66, baseType: !534)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1123, file: !141, line: 207, baseType: !1126, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1123, file: !141, line: 208, baseType: !1126, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1123, file: !141, line: 209, baseType: !1126, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1123, file: !141, line: 210, baseType: !1126, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1123, file: !141, line: 211, baseType: !1126, size: 64, offset: 320)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1123, file: !141, line: 212, baseType: !1126, size: 64, offset: 384)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1123, file: !141, line: 213, baseType: !1134, size: 64, offset: 448)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1135, line: 8, baseType: !643)
!1135 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1123, file: !141, line: 214, baseType: !1134, size: 64, offset: 512)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1018, file: !160, line: 2085, baseType: !1138, size: 64, offset: 1472)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!326, !522, !1141}
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1143, line: 15, size: 256, elements: !1144)
!1143 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1144 = !{!1145, !1147, !1148, !1149, !1150}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1142, file: !1143, line: 16, baseType: !1146, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !207, line: 154, baseType: !7)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1142, file: !1143, line: 19, baseType: !46, size: 32, offset: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1142, file: !1143, line: 26, baseType: !340, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1142, file: !1143, line: 33, baseType: !340, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1142, file: !1143, line: 36, baseType: !1151, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !102, line: 33, flags: DIFlagFwdDecl)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1018, file: !160, line: 2087, baseType: !1138, size: 64, offset: 1536)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1018, file: !160, line: 2089, baseType: !557, size: 64, offset: 1600)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !523, file: !160, line: 1198, baseType: !1156, size: 64, offset: 448)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1158)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !141, line: 324, size: 704, elements: !1159)
!1159 = !{!1160, !1164, !1168, !1172, !1173, !1174, !1175, !1176, !1181, !1186, !1190}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1158, file: !141, line: 325, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!46, !1093}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1158, file: !141, line: 326, baseType: !1165, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!1093, !522, !46}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1158, file: !141, line: 327, baseType: !1169, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null, !1093}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1158, file: !141, line: 328, baseType: !1161, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1158, file: !141, line: 329, baseType: !1161, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1158, file: !141, line: 330, baseType: !1161, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1158, file: !141, line: 331, baseType: !1046, size: 64, offset: 384)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1158, file: !141, line: 334, baseType: !1177, size: 64, offset: 448)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!1180, !371}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1158, file: !141, line: 335, baseType: !1182, size: 64, offset: 512)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!46, !371, !1185}
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1158, file: !141, line: 337, baseType: !1187, size: 64, offset: 576)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!46, !371, !1180}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1158, file: !141, line: 339, baseType: !1191, size: 64, offset: 640)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!46, !522, !1194}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !523, file: !160, line: 1199, baseType: !1196, size: 64, offset: 512)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1198)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !141, line: 430, size: 704, elements: !1199)
!1199 = !{!1200, !1211, !1212, !1216, !1217, !1218, !1233, !1256, !1260, !1261, !1284}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1198, file: !141, line: 431, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!46, !522, !46, !46, !1204}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1207, line: 8, size: 128, elements: !1208)
!1207 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1206, file: !1207, line: 9, baseType: !516, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1206, file: !1207, line: 10, baseType: !406, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1198, file: !141, line: 432, baseType: !1046, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1198, file: !141, line: 433, baseType: !1213, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!46, !522, !7}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1198, file: !141, line: 434, baseType: !1213, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1198, file: !141, line: 435, baseType: !1046, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1198, file: !141, line: 436, baseType: !1219, size: 64, offset: 320)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!46, !522, !46, !1222}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !141, line: 417, size: 256, elements: !1224)
!1224 = !{!1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1223, file: !141, line: 418, baseType: !46, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1223, file: !141, line: 419, baseType: !7, size: 32, offset: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1223, file: !141, line: 420, baseType: !7, size: 32, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1223, file: !141, line: 422, baseType: !7, size: 32, offset: 96)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1223, file: !141, line: 423, baseType: !7, size: 32, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1223, file: !141, line: 424, baseType: !7, size: 32, offset: 160)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1223, file: !141, line: 425, baseType: !7, size: 32, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1223, file: !141, line: 426, baseType: !7, size: 32, offset: 224)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1198, file: !141, line: 437, baseType: !1234, size: 64, offset: 384)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!46, !522, !1105, !1237}
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !141, line: 345, size: 960, elements: !1239)
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1238, file: !141, line: 346, baseType: !46, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1238, file: !141, line: 347, baseType: !444, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1238, file: !141, line: 348, baseType: !444, size: 64, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1238, file: !141, line: 349, baseType: !444, size: 64, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1238, file: !141, line: 350, baseType: !444, size: 64, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1238, file: !141, line: 351, baseType: !444, size: 64, offset: 320)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1238, file: !141, line: 352, baseType: !444, size: 64, offset: 384)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1238, file: !141, line: 353, baseType: !642, size: 64, offset: 448)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1238, file: !141, line: 355, baseType: !642, size: 64, offset: 512)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1238, file: !141, line: 356, baseType: !46, size: 32, offset: 576)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1238, file: !141, line: 357, baseType: !46, size: 32, offset: 608)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1238, file: !141, line: 358, baseType: !444, size: 64, offset: 640)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1238, file: !141, line: 359, baseType: !444, size: 64, offset: 704)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1238, file: !141, line: 360, baseType: !444, size: 64, offset: 768)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1238, file: !141, line: 361, baseType: !642, size: 64, offset: 832)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1238, file: !141, line: 362, baseType: !46, size: 32, offset: 896)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1198, file: !141, line: 438, baseType: !1257, size: 64, offset: 448)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!46, !522, !1194, !1237}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1198, file: !141, line: 440, baseType: !1234, size: 64, offset: 512)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1198, file: !141, line: 441, baseType: !1262, size: 64, offset: 576)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!46, !522, !1265}
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !141, line: 411, size: 1408, elements: !1267)
!1267 = !{!1268, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1266, file: !141, line: 412, baseType: !7, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1266, file: !141, line: 413, baseType: !1270, size: 1344, offset: 64)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 1344, elements: !291)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !141, line: 397, size: 448, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1283}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1271, file: !141, line: 398, baseType: !7, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1271, file: !141, line: 399, baseType: !7, size: 32, offset: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1271, file: !141, line: 401, baseType: !7, size: 32, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1271, file: !141, line: 402, baseType: !7, size: 32, offset: 96)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1271, file: !141, line: 403, baseType: !7, size: 32, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1271, file: !141, line: 404, baseType: !7, size: 32, offset: 160)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1271, file: !141, line: 405, baseType: !7, size: 32, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1271, file: !141, line: 406, baseType: !446, size: 64, offset: 256)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1271, file: !141, line: 407, baseType: !1282, size: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !207, line: 132, baseType: !444)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1271, file: !141, line: 408, baseType: !1282, size: 64, offset: 384)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1198, file: !141, line: 442, baseType: !1213, size: 64, offset: 640)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !523, file: !160, line: 1200, baseType: !1286, size: 64, offset: 576)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1288)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !160, line: 54, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !523, file: !160, line: 1201, baseType: !340, size: 64, offset: 640)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !523, file: !160, line: 1202, baseType: !340, size: 64, offset: 704)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !523, file: !160, line: 1203, baseType: !340, size: 64, offset: 768)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !523, file: !160, line: 1204, baseType: !406, size: 64, offset: 832)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !523, file: !160, line: 1205, baseType: !1294, size: 320, offset: 896)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1295, line: 48, size: 320, elements: !1296)
!1295 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1296 = !{!1297, !1298, !1299, !1300, !1301}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1294, file: !1295, line: 49, baseType: !636, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1294, file: !1295, line: 55, baseType: !636, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1294, file: !1295, line: 57, baseType: !646, size: 32, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1294, file: !1295, line: 59, baseType: !590, size: 32, offset: 160)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1294, file: !1295, line: 60, baseType: !206, size: 128, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !523, file: !160, line: 1206, baseType: !46, size: 32, offset: 1216)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !523, file: !160, line: 1207, baseType: !240, size: 32, offset: 1248)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !523, file: !160, line: 1209, baseType: !362, size: 64, offset: 1280)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !523, file: !160, line: 1211, baseType: !1306, size: 64, offset: 1344)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1309)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !160, line: 1211, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !523, file: !160, line: 1223, baseType: !1311, size: 64, offset: 1408)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !423, line: 34, size: 64, elements: !1312)
!1312 = !{!1313}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1311, file: !423, line: 35, baseType: !426, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !523, file: !160, line: 1224, baseType: !206, size: 128, offset: 1472)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !523, file: !160, line: 1225, baseType: !1316, size: 64, offset: 1600)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !160, line: 1225, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !523, file: !160, line: 1226, baseType: !1319, size: 64, offset: 1664)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !160, line: 1226, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !523, file: !160, line: 1227, baseType: !1322, size: 64, offset: 1728)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !160, line: 50, flags: DIFlagFwdDecl)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !523, file: !160, line: 1228, baseType: !1325, size: 64, offset: 1792)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !160, line: 1228, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !523, file: !160, line: 1229, baseType: !878, size: 128, offset: 1856)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !523, file: !160, line: 1230, baseType: !7, size: 32, offset: 1984)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !523, file: !160, line: 1231, baseType: !1330, size: 2496, offset: 2048)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !141, line: 521, size: 2496, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1336, !1368}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1330, file: !141, line: 522, baseType: !7, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1330, file: !141, line: 523, baseType: !1294, size: 320, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1330, file: !141, line: 524, baseType: !1335, size: 192, offset: 384)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 192, elements: !291)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1330, file: !141, line: 525, baseType: !1337, size: 1728, offset: 576)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1338, size: 1728, elements: !291)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !141, line: 222, size: 576, elements: !1339)
!1339 = !{!1340, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1338, file: !141, line: 223, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !141, line: 445, size: 256, elements: !1343)
!1343 = !{!1344, !1345, !1358, !1359}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1342, file: !141, line: 446, baseType: !46, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1342, file: !141, line: 447, baseType: !1346, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1348)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !141, line: 312, size: 512, elements: !1349)
!1349 = !{!1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1348, file: !141, line: 313, baseType: !1046, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1348, file: !141, line: 314, baseType: !1046, size: 64, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1348, file: !141, line: 315, baseType: !1046, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1348, file: !141, line: 316, baseType: !1046, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1348, file: !141, line: 317, baseType: !1161, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1348, file: !141, line: 318, baseType: !1161, size: 64, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1348, file: !141, line: 319, baseType: !1161, size: 64, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1348, file: !141, line: 320, baseType: !1191, size: 64, offset: 448)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1342, file: !141, line: 448, baseType: !561, size: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1342, file: !141, line: 449, baseType: !1341, size: 64, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1338, file: !141, line: 224, baseType: !46, size: 32, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1338, file: !141, line: 226, baseType: !206, size: 128, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1338, file: !141, line: 227, baseType: !340, size: 64, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1338, file: !141, line: 228, baseType: !7, size: 32, offset: 320)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1338, file: !141, line: 229, baseType: !7, size: 32, offset: 352)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1338, file: !141, line: 230, baseType: !1126, size: 64, offset: 384)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1338, file: !141, line: 231, baseType: !1126, size: 64, offset: 448)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1338, file: !141, line: 232, baseType: !362, size: 64, offset: 512)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1330, file: !141, line: 526, baseType: !1369, size: 192, offset: 2304)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 192, elements: !291)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !523, file: !160, line: 1233, baseType: !1371, size: 2368, offset: 4544)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !160, line: 1184, size: 2368, elements: !1372)
!1372 = !{!1373, !1374, !1375}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1371, file: !160, line: 1185, baseType: !260, size: 16)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1371, file: !160, line: 1186, baseType: !260, size: 16, offset: 16)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1371, file: !160, line: 1187, baseType: !1376, size: 2304, offset: 64)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1377, size: 2304, elements: !291)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1378, line: 12, size: 768, elements: !1379)
!1378 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1379 = !{!1380, !1394, !1395, !3607, !3608}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1377, file: !1378, line: 13, baseType: !1381, size: 384)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1382, line: 17, size: 384, elements: !1383)
!1382 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1383 = !{!1384, !1385, !1386, !1393}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1381, file: !1382, line: 18, baseType: !46, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1381, file: !1382, line: 19, baseType: !46, size: 32, offset: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1381, file: !1382, line: 20, baseType: !1387, size: 192, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1388, line: 41, baseType: !1389)
!1388 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1388, line: 37, size: 192, elements: !1390)
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1389, file: !1388, line: 38, baseType: !220, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1389, file: !1388, line: 39, baseType: !206, size: 128, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1381, file: !1382, line: 22, baseType: !852, size: 128, align: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1377, file: !1378, line: 14, baseType: !704, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1377, file: !1378, line: 15, baseType: !1396, size: 64, offset: 448)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1397, line: 16, size: 64, elements: !1398)
!1397 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1398 = !{!1399}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1396, file: !1397, line: 17, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1076, line: 746, size: 58368, elements: !1402)
!1402 = !{!1403, !1411, !1412, !1413, !1419, !1420, !1421, !1422, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1493, !1504, !1599, !1603, !1606, !1637, !1638, !1639, !1640, !1651, !1653, !1654, !1655, !1656, !1657, !1658, !1669, !1670, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1687, !1688, !1695, !1696, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2747, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2795, !2801, !2802, !2803, !2804, !2805, !2809, !2812, !2819, !2824, !2827, !2830, !2833, !2859, !2997, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3035, !3036, !3037, !3046, !3054, !3055, !3056, !3057, !3058, !3063, !3064, !3065, !3068, !3069, !3072, !3075, !3078, !3086, !3089, !3090, !3176, !3177, !3178, !3179, !3180, !3186, !3187, !3188, !3189, !3192, !3193, !3196, !3210, !3211, !3214, !3215, !3216, !3219, !3220, !3221, !3222, !3223, !3224, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3256, !3257, !3263, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3275, !3347, !3349, !3350, !3351, !3352, !3353, !3354, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3384, !3385, !3386}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1401, file: !1076, line: 752, baseType: !1404, size: 192)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1405, line: 56, size: 192, elements: !1406)
!1405 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1406 = !{!1407, !1408, !1409, !1410}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1404, file: !1405, line: 57, baseType: !340, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1404, file: !1405, line: 58, baseType: !340, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1404, file: !1405, line: 59, baseType: !440, size: 32, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1404, file: !1405, line: 61, baseType: !440, size: 32, offset: 160)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1401, file: !1076, line: 754, baseType: !7, size: 32, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1401, file: !1076, line: 767, baseType: !362, size: 64, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1401, file: !1076, line: 768, baseType: !1414, size: 32, offset: 320)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1415, line: 113, baseType: !1416)
!1415 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1415, line: 111, size: 32, elements: !1417)
!1417 = !{!1418}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1416, file: !1415, line: 112, baseType: !240, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1401, file: !1076, line: 770, baseType: !7, size: 32, offset: 352)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1401, file: !1076, line: 771, baseType: !7, size: 32, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1401, file: !1076, line: 774, baseType: !46, size: 32, offset: 416)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1401, file: !1076, line: 775, baseType: !1423, size: 128, offset: 448)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1424, line: 58, size: 128, elements: !1425)
!1424 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1425 = !{!1426, !1432, !1437, !1438}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1423, file: !1424, line: 59, baseType: !1427, size: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1428, line: 60, size: 64, elements: !1429)
!1428 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1429 = !{!1430}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1427, file: !1428, line: 61, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !1424, line: 60, baseType: !1433, size: 32, offset: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !1424, line: 60, size: 32, elements: !1434)
!1434 = !{!1435, !1436}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1433, file: !1424, line: 61, baseType: !7, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1433, file: !1424, line: 62, baseType: !240, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1423, file: !1424, line: 65, baseType: !258, size: 16, offset: 96)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1423, file: !1424, line: 65, baseType: !258, size: 16, offset: 112)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1401, file: !1076, line: 776, baseType: !7, size: 32, offset: 576)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1401, file: !1076, line: 777, baseType: !340, size: 64, offset: 640)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1401, file: !1076, line: 778, baseType: !1400, size: 64, offset: 704)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1401, file: !1076, line: 787, baseType: !46, size: 32, offset: 768)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1401, file: !1076, line: 788, baseType: !46, size: 32, offset: 800)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1401, file: !1076, line: 790, baseType: !46, size: 32, offset: 832)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1401, file: !1076, line: 792, baseType: !46, size: 32, offset: 864)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1401, file: !1076, line: 793, baseType: !46, size: 32, offset: 896)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1401, file: !1076, line: 794, baseType: !46, size: 32, offset: 928)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1401, file: !1076, line: 795, baseType: !7, size: 32, offset: 960)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1401, file: !1076, line: 797, baseType: !1450, size: 2048, offset: 1024)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1076, line: 551, size: 2048, elements: !1451)
!1451 = !{!1452, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1472, !1475, !1476, !1477}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1450, file: !1076, line: 553, baseType: !1453, size: 128)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1076, line: 411, size: 128, elements: !1454)
!1454 = !{!1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1453, file: !1076, line: 412, baseType: !340, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1453, file: !1076, line: 413, baseType: !440, size: 32, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1450, file: !1076, line: 554, baseType: !744, size: 192, align: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1450, file: !1076, line: 555, baseType: !444, size: 64, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1450, file: !1076, line: 556, baseType: !444, size: 64, offset: 384)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1450, file: !1076, line: 558, baseType: !206, size: 128, offset: 448)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1450, file: !1076, line: 559, baseType: !7, size: 32, offset: 576)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1450, file: !1076, line: 561, baseType: !444, size: 64, offset: 640)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1450, file: !1076, line: 562, baseType: !444, size: 64, offset: 704)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1450, file: !1076, line: 563, baseType: !444, size: 64, offset: 768)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1450, file: !1076, line: 564, baseType: !444, size: 64, offset: 832)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1450, file: !1076, line: 565, baseType: !642, size: 64, offset: 896)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1450, file: !1076, line: 566, baseType: !444, size: 64, offset: 960)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1450, file: !1076, line: 568, baseType: !444, size: 64, offset: 1024)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1450, file: !1076, line: 571, baseType: !46, size: 32, offset: 1088)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1450, file: !1076, line: 572, baseType: !1471, size: 64, offset: 1152)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1450, file: !1076, line: 574, baseType: !1473, size: 64, offset: 1216)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1076, line: 49, flags: DIFlagFwdDecl)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1450, file: !1076, line: 576, baseType: !1473, size: 64, offset: 1280)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1450, file: !1076, line: 578, baseType: !340, size: 64, offset: 1344)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1450, file: !1076, line: 588, baseType: !1478, size: 512, align: 512, offset: 1536)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1076, line: 497, size: 512, align: 512, elements: !1479)
!1479 = !{!1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1478, file: !1076, line: 498, baseType: !444, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1478, file: !1076, line: 499, baseType: !444, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1478, file: !1076, line: 500, baseType: !444, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1478, file: !1076, line: 501, baseType: !440, size: 32, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1478, file: !1076, line: 502, baseType: !440, size: 32, offset: 224)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1478, file: !1076, line: 503, baseType: !340, size: 64, offset: 256)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1478, file: !1076, line: 504, baseType: !340, size: 64, offset: 320)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1478, file: !1076, line: 505, baseType: !340, size: 64, offset: 384)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1478, file: !1076, line: 506, baseType: !1489, size: 64, align: 64, offset: 448)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1076, line: 445, size: 64, align: 64, elements: !1490)
!1490 = !{!1491, !1492}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1489, file: !1076, line: 446, baseType: !7, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1489, file: !1076, line: 447, baseType: !7, size: 32, offset: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1401, file: !1076, line: 798, baseType: !1494, size: 384, offset: 3072)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1076, line: 592, size: 384, elements: !1495)
!1495 = !{!1496, !1497, !1498, !1499, !1500, !1501, !1502}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1494, file: !1076, line: 593, baseType: !206, size: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1494, file: !1076, line: 594, baseType: !340, size: 64, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1494, file: !1076, line: 595, baseType: !340, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1494, file: !1076, line: 596, baseType: !7, size: 32, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1494, file: !1076, line: 597, baseType: !260, size: 16, offset: 288)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1494, file: !1076, line: 598, baseType: !260, size: 16, offset: 304)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1494, file: !1076, line: 600, baseType: !1503, size: 64, offset: 320)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1401, file: !1076, line: 799, baseType: !1505, size: 1792, offset: 3456)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1076, line: 610, size: 1792, elements: !1506)
!1506 = !{!1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1596, !1597}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1505, file: !1076, line: 611, baseType: !744, size: 192, align: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1505, file: !1076, line: 618, baseType: !444, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1505, file: !1076, line: 619, baseType: !444, size: 64, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1505, file: !1076, line: 620, baseType: !444, size: 64, offset: 320)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1505, file: !1076, line: 621, baseType: !444, size: 64, offset: 384)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1505, file: !1076, line: 622, baseType: !444, size: 64, offset: 448)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1505, file: !1076, line: 629, baseType: !642, size: 64, offset: 512)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1505, file: !1076, line: 630, baseType: !444, size: 64, offset: 576)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1505, file: !1076, line: 631, baseType: !7, size: 32, offset: 640)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1505, file: !1076, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1505, file: !1076, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1505, file: !1076, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1505, file: !1076, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1505, file: !1076, line: 662, baseType: !1521, size: 512, offset: 704)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1522)
!1522 = !{!1523, !1531, !1532, !1537, !1592, !1593, !1594, !1595}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1521, file: !33, line: 119, baseType: !1524, size: 256)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1525, line: 9, size: 256, elements: !1526)
!1525 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1524, file: !1525, line: 10, baseType: !744, size: 192, align: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1524, file: !1525, line: 11, baseType: !1529, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1530, line: 29, baseType: !642)
!1530 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1521, file: !33, line: 120, baseType: !1529, size: 64, offset: 256)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1521, file: !33, line: 121, baseType: !1533, size: 64, offset: 320)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!32, !1536}
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1521, file: !33, line: 122, baseType: !1538, size: 64, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1540)
!1540 = !{!1541, !1566, !1567, !1570, !1575, !1576, !1587, !1591}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1539, file: !33, line: 160, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1544)
!1544 = !{!1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1543, file: !33, line: 216, baseType: !590, size: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1543, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1543, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1543, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1543, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1543, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1543, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1543, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1543, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1543, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1543, file: !33, line: 227, baseType: !260, size: 16, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1543, file: !33, line: 228, baseType: !260, size: 16, offset: 208)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1543, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1543, file: !33, line: 235, baseType: !1529, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1543, file: !33, line: 236, baseType: !1536, size: 64, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1543, file: !33, line: 237, baseType: !1529, size: 64, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1543, file: !33, line: 238, baseType: !1536, size: 64, offset: 448)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1543, file: !33, line: 239, baseType: !1563, size: 4096, align: 512, offset: 512)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1539, size: 4096, align: 512, elements: !1564)
!1564 = !{!1565}
!1565 = !DISubrange(count: 8)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1539, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1539, file: !33, line: 162, baseType: !1568, size: 32, offset: 96)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !207, line: 32, baseType: !1569)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !324, line: 96, baseType: !46)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1539, file: !33, line: 163, baseType: !1571, size: 32, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !413, line: 274, baseType: !1572)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !413, line: 274, size: 32, elements: !1573)
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1572, file: !413, line: 274, baseType: !417, size: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1539, file: !33, line: 164, baseType: !1536, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1539, file: !33, line: 165, baseType: !1577, size: 128, offset: 256)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1525, line: 14, size: 128, elements: !1578)
!1578 = !{!1579}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1577, file: !1525, line: 15, baseType: !1580, size: 128)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !745, line: 26, size: 128, elements: !1581)
!1581 = !{!1582, !1586}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1580, file: !745, line: 27, baseType: !1583, size: 64)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !745, line: 12, size: 64, elements: !1584)
!1584 = !{!1585}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1583, file: !745, line: 13, baseType: !749, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1580, file: !745, line: 28, baseType: !749, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1539, file: !33, line: 166, baseType: !1588, size: 64, offset: 384)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!1529}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1539, file: !33, line: 167, baseType: !1529, size: 64, offset: 448)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1521, file: !33, line: 123, baseType: !248, size: 8, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1521, file: !33, line: 124, baseType: !248, size: 8, offset: 456)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1521, file: !33, line: 125, baseType: !248, size: 8, offset: 464)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1521, file: !33, line: 126, baseType: !248, size: 8, offset: 472)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1505, file: !1076, line: 671, baseType: !1521, size: 512, offset: 1216)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1505, file: !1076, line: 679, baseType: !1598, size: 64, offset: 1728)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1401, file: !1076, line: 800, baseType: !1600, size: 64, offset: 5248)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1602)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1076, line: 800, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1401, file: !1076, line: 809, baseType: !1604, size: 64, offset: 5312)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1076, line: 70, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1401, file: !1076, line: 825, baseType: !1607, size: 2048, align: 512, offset: 5632)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1076, line: 509, size: 2048, align: 512, elements: !1608)
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1607, file: !1076, line: 511, baseType: !444, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1607, file: !1076, line: 512, baseType: !444, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1607, file: !1076, line: 513, baseType: !444, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1607, file: !1076, line: 514, baseType: !444, size: 64, offset: 192)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1607, file: !1076, line: 515, baseType: !444, size: 64, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1607, file: !1076, line: 516, baseType: !444, size: 64, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1607, file: !1076, line: 518, baseType: !444, size: 64, offset: 384)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1607, file: !1076, line: 519, baseType: !444, size: 64, offset: 448)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1607, file: !1076, line: 520, baseType: !642, size: 64, offset: 512)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1607, file: !1076, line: 522, baseType: !444, size: 64, offset: 576)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1607, file: !1076, line: 523, baseType: !444, size: 64, offset: 640)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1607, file: !1076, line: 524, baseType: !642, size: 64, offset: 704)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1607, file: !1076, line: 526, baseType: !642, size: 64, offset: 768)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1607, file: !1076, line: 527, baseType: !444, size: 64, offset: 832)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1607, file: !1076, line: 529, baseType: !444, size: 64, offset: 896)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1607, file: !1076, line: 530, baseType: !444, size: 64, offset: 960)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1607, file: !1076, line: 531, baseType: !444, size: 64, offset: 1024)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1607, file: !1076, line: 532, baseType: !444, size: 64, offset: 1088)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1607, file: !1076, line: 533, baseType: !444, size: 64, offset: 1152)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1607, file: !1076, line: 535, baseType: !444, size: 64, offset: 1216)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1607, file: !1076, line: 536, baseType: !444, size: 64, offset: 1280)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1607, file: !1076, line: 537, baseType: !444, size: 64, offset: 1344)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1607, file: !1076, line: 538, baseType: !444, size: 64, offset: 1408)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1607, file: !1076, line: 539, baseType: !444, size: 64, offset: 1472)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1607, file: !1076, line: 540, baseType: !444, size: 64, offset: 1536)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1607, file: !1076, line: 541, baseType: !444, size: 64, offset: 1600)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1607, file: !1076, line: 542, baseType: !444, size: 64, offset: 1664)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1607, file: !1076, line: 543, baseType: !444, size: 64, offset: 1728)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1401, file: !1076, line: 833, baseType: !7, size: 32, offset: 7680)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1401, file: !1076, line: 836, baseType: !7, size: 32, offset: 7712)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1401, file: !1076, line: 837, baseType: !46, size: 32, offset: 7744)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1401, file: !1076, line: 838, baseType: !1641, size: 64, offset: 7808)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1643)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1644, line: 19, baseType: !1645)
!1644 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1644, line: 19, size: 64, elements: !1646)
!1646 = !{!1647}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1645, file: !1644, line: 19, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 64, elements: !1649)
!1649 = !{!1650}
!1650 = !DISubrange(count: 1)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1401, file: !1076, line: 839, baseType: !1652, size: 64, offset: 7872)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1401, file: !1076, line: 840, baseType: !1643, size: 64, offset: 7936)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1401, file: !1076, line: 841, baseType: !362, size: 64, offset: 8000)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1401, file: !1076, line: 843, baseType: !260, size: 16, offset: 8064)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1401, file: !1076, line: 845, baseType: !260, size: 16, offset: 8080)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1401, file: !1076, line: 848, baseType: !46, size: 32, offset: 8096)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1401, file: !1076, line: 849, baseType: !1659, size: 32, offset: 8128)
!1659 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1076, line: 718, size: 32, elements: !1660)
!1660 = !{!1661, !1668}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1659, file: !1076, line: 724, baseType: !1662, size: 32)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1659, file: !1076, line: 719, size: 32, elements: !1663)
!1663 = !{!1664, !1665, !1666, !1667}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1662, file: !1076, line: 720, baseType: !248, size: 8)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1662, file: !1076, line: 721, baseType: !248, size: 8, offset: 8)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1662, file: !1076, line: 722, baseType: !248, size: 8, offset: 16)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1662, file: !1076, line: 723, baseType: !248, size: 8, offset: 24)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1659, file: !1076, line: 725, baseType: !440, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1401, file: !1076, line: 850, baseType: !206, size: 128, offset: 8192)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1401, file: !1076, line: 851, baseType: !1671, size: 64, offset: 8320)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1076, line: 60, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1401, file: !1076, line: 855, baseType: !340, size: 64, offset: 8384)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1401, file: !1076, line: 856, baseType: !248, size: 8, offset: 8448)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1401, file: !1076, line: 857, baseType: !248, size: 8, offset: 8456)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1401, file: !1076, line: 858, baseType: !46, size: 32, offset: 8480)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1401, file: !1076, line: 859, baseType: !206, size: 128, offset: 8512)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1401, file: !1076, line: 860, baseType: !46, size: 32, offset: 8640)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1401, file: !1076, line: 861, baseType: !206, size: 128, offset: 8704)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1401, file: !1076, line: 873, baseType: !1681, size: 256, offset: 8832)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1076, line: 376, size: 256, elements: !1682)
!1682 = !{!1683, !1684, !1685, !1686}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1681, file: !1076, line: 381, baseType: !340, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1681, file: !1076, line: 384, baseType: !446, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1681, file: !1076, line: 389, baseType: !446, size: 64, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1681, file: !1076, line: 392, baseType: !446, size: 64, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1401, file: !1076, line: 875, baseType: !206, size: 128, offset: 9088)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1401, file: !1076, line: 877, baseType: !1689, size: 320, offset: 9216)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1690, line: 86, size: 320, elements: !1691)
!1690 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1691 = !{!1692, !1693, !1694}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1689, file: !1690, line: 87, baseType: !46, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1689, file: !1690, line: 88, baseType: !206, size: 128, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1689, file: !1690, line: 89, baseType: !206, size: 128, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1401, file: !1076, line: 878, baseType: !744, size: 192, align: 64, offset: 9536)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1401, file: !1076, line: 881, baseType: !1697, size: 64, offset: 9728)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !102, line: 733, size: 10240, elements: !1699)
!1699 = !{!1700, !2666}
!1700 = !DIDerivedType(tag: DW_TAG_member, scope: !1698, file: !102, line: 734, baseType: !1701, size: 10240)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1698, file: !102, line: 734, size: 10240, elements: !1702)
!1702 = !{!1703, !1707, !1720, !2543, !2544, !2545, !2546, !2547, !2548, !2555, !2556, !2557, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2596, !2598, !2601, !2646, !2647, !2648, !2651, !2652, !2653, !2656, !2657, !2658, !2664, !2665}
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1701, file: !102, line: 739, baseType: !1704, size: 512, align: 512)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1701, file: !102, line: 739, size: 512, align: 512, elements: !1705)
!1705 = !{!1706}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1704, file: !102, line: 747, baseType: !240, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1701, file: !102, line: 750, baseType: !1708, size: 128, offset: 512)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1709, line: 218, size: 128, elements: !1710)
!1709 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1710 = !{!1711, !1718, !1719}
!1711 = !DIDerivedType(tag: DW_TAG_member, scope: !1708, file: !1709, line: 219, baseType: !1712, size: 32)
!1712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1708, file: !1709, line: 219, size: 32, elements: !1713)
!1713 = !{!1714, !1715}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1712, file: !1709, line: 220, baseType: !220, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1712, file: !1709, line: 221, baseType: !1716)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1709, line: 197, baseType: !1717)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1709, line: 197, elements: !921)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1708, file: !1709, line: 223, baseType: !7, size: 32, offset: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1708, file: !1709, line: 224, baseType: !362, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1701, file: !102, line: 752, baseType: !1721, size: 64, offset: 640)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!340, !1724, !340, !340, !340, !340}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !160, line: 994, size: 1856, align: 64, elements: !1726)
!1726 = !{!1727, !1733, !1734, !1736, !1737, !1738, !1739, !1740, !1837, !2022, !2031, !2032, !2033, !2533, !2534, !2535, !2536, !2538, !2539, !2542}
!1727 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !160, line: 995, baseType: !1728, size: 128)
!1728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1725, file: !160, line: 995, size: 128, elements: !1729)
!1729 = !{!1730, !1731, !1732}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1728, file: !160, line: 996, baseType: !1427, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1728, file: !160, line: 997, baseType: !852, size: 128, align: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1728, file: !160, line: 998, baseType: !7, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1725, file: !160, line: 1005, baseType: !220, size: 32, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1725, file: !160, line: 1006, baseType: !1735, size: 32, offset: 160)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !207, line: 156, baseType: !7)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1725, file: !160, line: 1007, baseType: !636, size: 64, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1725, file: !160, line: 1008, baseType: !632, size: 256, offset: 256)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1725, file: !160, line: 1009, baseType: !532, size: 64, offset: 512)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1725, file: !160, line: 1010, baseType: !7, size: 32, offset: 576)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1725, file: !160, line: 1011, baseType: !1741, size: 256, offset: 640)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !160, line: 948, size: 256, elements: !1742)
!1742 = !{!1743, !1764, !1833, !1834, !1835, !1836}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1741, file: !160, line: 949, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1745, line: 34, baseType: !1746)
!1745 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1745, line: 25, size: 64, elements: !1747)
!1747 = !{!1748}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1746, file: !1745, line: 26, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1750, line: 27, baseType: !1751)
!1750 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1750, line: 13, size: 64, elements: !1752)
!1752 = !{!1753, !1763}
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !1750, line: 14, baseType: !1754, size: 32)
!1754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1751, file: !1750, line: 14, size: 32, elements: !1755)
!1755 = !{!1756, !1757}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1754, file: !1750, line: 15, baseType: !240, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !1750, line: 16, baseType: !1758, size: 32)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1754, file: !1750, line: 16, size: 32, elements: !1759)
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1758, file: !1750, line: 18, baseType: !248, size: 8)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1758, file: !1750, line: 19, baseType: !1762, size: 24, offset: 8)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 24, elements: !291)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1751, file: !1750, line: 26, baseType: !232, size: 32, offset: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1741, file: !160, line: 950, baseType: !1765, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !133, line: 59, size: 768, elements: !1767)
!1767 = !{!1768, !1769, !1770, !1771, !1773, !1774, !1775, !1776}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1766, file: !133, line: 61, baseType: !1414, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1766, file: !133, line: 62, baseType: !7, size: 32, offset: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1766, file: !133, line: 63, baseType: !220, size: 32, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1766, file: !133, line: 65, baseType: !1772, size: 256, offset: 128)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 256, elements: !862)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1766, file: !133, line: 66, baseType: !1002, size: 64, offset: 384)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1766, file: !133, line: 68, baseType: !1387, size: 192, offset: 448)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1766, file: !133, line: 69, baseType: !852, size: 128, align: 64, offset: 640)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1766, file: !133, line: 70, baseType: !1777, offset: 768)
!1777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1778, elements: !1831)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !133, line: 54, size: 128, elements: !1779)
!1779 = !{!1780, !1781}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1778, file: !133, line: 55, baseType: !46, size: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1778, file: !133, line: 56, baseType: !1782, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1784, line: 26, size: 1152, elements: !1785)
!1784 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1785 = !{!1786, !1799, !1800, !1801, !1802, !1806, !1807, !1808, !1811, !1814, !1818, !1819, !1830}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1783, file: !1784, line: 27, baseType: !1787, size: 192)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1788, line: 19, size: 192, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1789 = !{!1790, !1797, !1798}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1787, file: !1788, line: 20, baseType: !1791, size: 128)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1792, line: 296, size: 128, elements: !1793)
!1792 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1793 = !{!1794, !1795, !1796}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1791, file: !1792, line: 297, baseType: !220, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1791, file: !1792, line: 299, baseType: !1146, size: 32, offset: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1791, file: !1792, line: 300, baseType: !362, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1787, file: !1788, line: 21, baseType: !7, size: 32, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1787, file: !1788, line: 22, baseType: !7, size: 32, offset: 160)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1783, file: !1784, line: 28, baseType: !852, size: 128, align: 64, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1783, file: !1784, line: 29, baseType: !7, size: 32, offset: 320)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1783, file: !1784, line: 30, baseType: !1400, size: 64, offset: 384)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1783, file: !1784, line: 31, baseType: !1803, size: 64, offset: 448)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1805, line: 11, flags: DIFlagFwdDecl)
!1805 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1783, file: !1784, line: 32, baseType: !7, size: 32, offset: 512)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1783, file: !1784, line: 33, baseType: !1782, size: 64, offset: 576)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1783, file: !1784, line: 35, baseType: !1809, size: 64, offset: 640)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1784, line: 17, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1783, file: !1784, line: 37, baseType: !1812, size: 64, offset: 704)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !378, line: 18, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1783, file: !1784, line: 38, baseType: !1815, size: 64, offset: 768)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1817, line: 16, flags: DIFlagFwdDecl)
!1817 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1783, file: !1784, line: 39, baseType: !46, size: 32, offset: 832)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1783, file: !1784, line: 40, baseType: !1820, size: 192, offset: 896)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1821, line: 9, size: 192, elements: !1822)
!1821 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1822 = !{!1823, !1824, !1828, !1829}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1820, file: !1821, line: 10, baseType: !636, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1820, file: !1821, line: 11, baseType: !1825, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1827)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1821, line: 7, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1820, file: !1821, line: 12, baseType: !7, size: 32, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1820, file: !1821, line: 13, baseType: !1414, size: 32, offset: 160)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1783, file: !1784, line: 42, baseType: !46, size: 32, offset: 1088)
!1831 = !{!1832}
!1832 = !DISubrange(count: -1)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1741, file: !160, line: 951, baseType: !132, size: 32, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1741, file: !160, line: 952, baseType: !377, size: 32, offset: 160)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1741, file: !160, line: 952, baseType: !377, size: 32, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1741, file: !160, line: 953, baseType: !46, size: 32, offset: 224)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1725, file: !160, line: 1012, baseType: !1838, size: 64, offset: 896)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1840)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1841, line: 110, size: 1472, elements: !1842)
!1841 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1842 = !{!1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1859, !1860, !1861, !1862, !1863, !1864, !1972, !1973, !1974, !1975, !1976, !2007, !2008, !2009, !2017}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1840, file: !1841, line: 111, baseType: !636, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1840, file: !1841, line: 112, baseType: !377, size: 32, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1840, file: !1841, line: 113, baseType: !386, size: 32, offset: 96)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1840, file: !1841, line: 114, baseType: !377, size: 32, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1840, file: !1841, line: 115, baseType: !386, size: 32, offset: 160)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1840, file: !1841, line: 116, baseType: !377, size: 32, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1840, file: !1841, line: 117, baseType: !386, size: 32, offset: 224)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1840, file: !1841, line: 118, baseType: !377, size: 32, offset: 256)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1840, file: !1841, line: 119, baseType: !386, size: 32, offset: 288)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1840, file: !1841, line: 120, baseType: !7, size: 32, offset: 320)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1840, file: !1841, line: 121, baseType: !1854, size: 64, offset: 384)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1855, line: 24, baseType: !1856)
!1855 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1855, line: 24, size: 64, elements: !1857)
!1857 = !{!1858}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1856, file: !1855, line: 24, baseType: !444, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1840, file: !1841, line: 122, baseType: !1854, size: 64, offset: 448)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1840, file: !1841, line: 123, baseType: !1854, size: 64, offset: 512)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1840, file: !1841, line: 124, baseType: !1854, size: 64, offset: 576)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1840, file: !1841, line: 125, baseType: !1854, size: 64, offset: 640)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1840, file: !1841, line: 127, baseType: !252, size: 8, offset: 704)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1840, file: !1841, line: 129, baseType: !1865, size: 64, offset: 768)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1867, line: 195, size: 1728, elements: !1868)
!1867 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1868 = !{!1869, !1870, !1873, !1878, !1879, !1882, !1883, !1888, !1889, !1890, !1891, !1894, !1895, !1896, !1897, !1898, !1936, !1957}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1866, file: !1867, line: 196, baseType: !1414, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1866, file: !1867, line: 197, baseType: !1871, size: 32, offset: 32)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1867, line: 28, baseType: !1872)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !207, line: 104, baseType: !628)
!1873 = !DIDerivedType(tag: DW_TAG_member, scope: !1866, file: !1867, line: 198, baseType: !1874, size: 192, offset: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1866, file: !1867, line: 198, size: 192, elements: !1875)
!1875 = !{!1876, !1877}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1874, file: !1867, line: 199, baseType: !206, size: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1874, file: !1867, line: 200, baseType: !744, size: 192, align: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1866, file: !1867, line: 205, baseType: !1294, size: 320, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1866, file: !1867, line: 206, baseType: !1880, size: 64, offset: 576)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1867, line: 206, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1866, file: !1867, line: 207, baseType: !362, size: 64, offset: 640)
!1883 = !DIDerivedType(tag: DW_TAG_member, scope: !1866, file: !1867, line: 208, baseType: !1884, size: 64, offset: 704)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1866, file: !1867, line: 208, size: 64, elements: !1885)
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1884, file: !1867, line: 209, baseType: !1134, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1884, file: !1867, line: 210, baseType: !1134, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1866, file: !1867, line: 212, baseType: !1134, size: 64, offset: 768)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1866, file: !1867, line: 213, baseType: !377, size: 32, offset: 832)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1866, file: !1867, line: 214, baseType: !386, size: 32, offset: 864)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1866, file: !1867, line: 215, baseType: !1892, size: 32, offset: 896)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1867, line: 31, baseType: !1893)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !207, line: 110, baseType: !440)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1866, file: !1867, line: 216, baseType: !260, size: 16, offset: 928)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1866, file: !1867, line: 217, baseType: !260, size: 16, offset: 944)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1866, file: !1867, line: 221, baseType: !770, size: 16, offset: 960)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1866, file: !1867, line: 228, baseType: !340, size: 64, offset: 1024)
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1866, file: !1867, line: 245, baseType: !1899, size: 320, offset: 1088)
!1899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1866, file: !1867, line: 245, size: 320, elements: !1900)
!1900 = !{!1901, !1928}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1899, file: !1867, line: 246, baseType: !1902, size: 320)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1867, line: 114, size: 320, elements: !1903)
!1903 = !{!1904, !1905, !1917, !1920, !1927}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1902, file: !1867, line: 116, baseType: !340, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, scope: !1902, file: !1867, line: 117, baseType: !1906, size: 64, offset: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1902, file: !1867, line: 117, size: 64, elements: !1907)
!1907 = !{!1908, !1916}
!1908 = !DIDerivedType(tag: DW_TAG_member, scope: !1906, file: !1867, line: 118, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1906, file: !1867, line: 118, size: 64, elements: !1910)
!1910 = !{!1911, !1912}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1909, file: !1867, line: 120, baseType: !258, size: 16)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1909, file: !1867, line: 121, baseType: !1913, size: 48, offset: 16)
!1913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 48, elements: !1914)
!1914 = !{!1915}
!1915 = !DISubrange(count: 6)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1906, file: !1867, line: 127, baseType: !340, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1902, file: !1867, line: 129, baseType: !1918, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1867, line: 102, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1902, file: !1867, line: 130, baseType: !1921, size: 64, offset: 192)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1867, line: 108, size: 192, elements: !1923)
!1923 = !{!1924, !1925, !1926}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1922, file: !1867, line: 109, baseType: !852, size: 128, align: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1922, file: !1867, line: 110, baseType: !1414, size: 32, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1922, file: !1867, line: 111, baseType: !712, size: 8, offset: 160)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1902, file: !1867, line: 131, baseType: !202, size: 64, offset: 256)
!1928 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !1867, line: 247, baseType: !1929, size: 320)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1899, file: !1867, line: 247, size: 320, elements: !1930)
!1930 = !{!1931, !1932, !1933, !1934, !1935}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1929, file: !1867, line: 248, baseType: !340, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1929, file: !1867, line: 249, baseType: !340, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1929, file: !1867, line: 250, baseType: !1918, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1929, file: !1867, line: 251, baseType: !1921, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1929, file: !1867, line: 252, baseType: !290, size: 64, offset: 256)
!1936 = !DIDerivedType(tag: DW_TAG_member, scope: !1866, file: !1867, line: 260, baseType: !1937, size: 256, offset: 1408)
!1937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1866, file: !1867, line: 260, size: 256, elements: !1938)
!1938 = !{!1939, !1945}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1937, file: !1867, line: 261, baseType: !1940, size: 256)
!1940 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1867, line: 134, size: 256, elements: !1941)
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1940, file: !1867, line: 135, baseType: !362, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1940, file: !1867, line: 136, baseType: !1944, size: 256)
!1944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 256, elements: !862)
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !1937, file: !1867, line: 262, baseType: !1946, size: 256)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1937, file: !1867, line: 262, size: 256, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1946, file: !1867, line: 264, baseType: !206, size: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1946, file: !1867, line: 265, baseType: !1950, size: 128, offset: 128)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1951, line: 22, size: 128, elements: !1952)
!1951 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1952 = !{!1953, !1956}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1950, file: !1951, line: 23, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1951, line: 23, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1950, file: !1951, line: 24, baseType: !340, size: 64, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1866, file: !1867, line: 280, baseType: !1958, size: 64, offset: 1664)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1867, line: 176, size: 192, elements: !1960)
!1960 = !{!1961, !1970, !1971}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1959, file: !1867, line: 177, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1867, line: 171, baseType: !1963)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!46, !1865, !1966, !1968, !1865}
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1919)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1940)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1959, file: !1867, line: 178, baseType: !1865, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1959, file: !1867, line: 179, baseType: !1918, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1840, file: !1841, line: 130, baseType: !1865, size: 64, offset: 832)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1840, file: !1841, line: 131, baseType: !1865, size: 64, offset: 896)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1840, file: !1841, line: 132, baseType: !1865, size: 64, offset: 960)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1840, file: !1841, line: 135, baseType: !362, size: 64, offset: 1024)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1840, file: !1841, line: 137, baseType: !1977, size: 64, offset: 1088)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1979, line: 14, size: 1088, elements: !1980)
!1979 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1980 = !{!1981, !1982, !1991, !1992, !1993, !1994, !1995, !1996}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1978, file: !1979, line: 15, baseType: !1414, size: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1978, file: !1979, line: 17, baseType: !1983, size: 320, offset: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1984, line: 22, size: 320, elements: !1985)
!1984 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1985 = !{!1986, !1987, !1988, !1989}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1983, file: !1984, line: 23, baseType: !590, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1983, file: !1984, line: 24, baseType: !642, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1983, file: !1984, line: 26, baseType: !206, size: 128, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1983, file: !1984, line: 28, baseType: !1990, size: 64, offset: 256)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1978, file: !1979, line: 19, baseType: !340, size: 64, offset: 384)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1978, file: !1979, line: 20, baseType: !636, size: 64, offset: 448)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1978, file: !1979, line: 23, baseType: !878, size: 128, offset: 512)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1978, file: !1979, line: 24, baseType: !377, size: 32, offset: 640)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1978, file: !1979, line: 29, baseType: !636, size: 64, offset: 704)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1978, file: !1979, line: 36, baseType: !1997, size: 320, offset: 768)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1998, line: 15, size: 320, elements: !1999)
!1998 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1999 = !{!2000, !2001, !2002, !2003, !2004, !2005, !2006}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1997, file: !1998, line: 16, baseType: !590, size: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1997, file: !1998, line: 18, baseType: !46, size: 32, offset: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1997, file: !1998, line: 19, baseType: !46, size: 32, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1997, file: !1998, line: 20, baseType: !46, size: 32, offset: 96)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1997, file: !1998, line: 21, baseType: !46, size: 32, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1997, file: !1998, line: 22, baseType: !340, size: 64, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1997, file: !1998, line: 23, baseType: !340, size: 64, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1840, file: !1841, line: 138, baseType: !1812, size: 64, offset: 1152)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1840, file: !1841, line: 139, baseType: !1815, size: 64, offset: 1216)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1840, file: !1841, line: 140, baseType: !2010, size: 64, offset: 1280)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1841, line: 25, size: 64, elements: !2012)
!2012 = !{!2013, !2014, !2015}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2011, file: !1841, line: 26, baseType: !240, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2011, file: !1841, line: 27, baseType: !46, size: 32, offset: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2011, file: !1841, line: 28, baseType: !2016, offset: 64)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, elements: !1831)
!2017 = !DIDerivedType(tag: DW_TAG_member, scope: !1840, file: !1841, line: 142, baseType: !2018, size: 128, offset: 1344)
!2018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1840, file: !1841, line: 142, size: 128, elements: !2019)
!2019 = !{!2020, !2021}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2018, file: !1841, line: 143, baseType: !46, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2018, file: !1841, line: 144, baseType: !852, size: 128, align: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1725, file: !160, line: 1013, baseType: !2023, size: 256, offset: 960)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !160, line: 970, size: 256, elements: !2024)
!2024 = !{!2025, !2026, !2027, !2028, !2029, !2030}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2023, file: !160, line: 971, baseType: !340, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2023, file: !160, line: 972, baseType: !7, size: 32, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2023, file: !160, line: 973, baseType: !7, size: 32, offset: 96)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2023, file: !160, line: 974, baseType: !7, size: 32, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2023, file: !160, line: 975, baseType: !7, size: 32, offset: 160)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2023, file: !160, line: 976, baseType: !532, size: 64, offset: 192)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1725, file: !160, line: 1014, baseType: !1206, size: 128, offset: 1216)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1725, file: !160, line: 1015, baseType: !371, size: 64, offset: 1344)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1725, file: !160, line: 1016, baseType: !2034, size: 64, offset: 1408)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2036)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !160, line: 1914, size: 2112, elements: !2037)
!2037 = !{!2038, !2039, !2043, !2048, !2052, !2131, !2132, !2138, !2151, !2159, !2163, !2164, !2455, !2456, !2460, !2465, !2466, !2470, !2474, !2480, !2481, !2485, !2486, !2492, !2496, !2500, !2506, !2510, !2514, !2518, !2522, !2523, !2529}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2036, file: !160, line: 1915, baseType: !561, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2036, file: !160, line: 1916, baseType: !2040, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!532, !1724, !532, !46}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2036, file: !160, line: 1917, baseType: !2044, size: 64, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!322, !1724, !290, !337, !2047}
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2036, file: !160, line: 1918, baseType: !2049, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!322, !1724, !202, !337, !2047}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2036, file: !160, line: 1919, baseType: !2053, size: 64, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!322, !2056, !2078}
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !160, line: 373, size: 384, elements: !2058)
!2058 = !{!2059, !2060, !2061, !2065, !2066, !2067, !2068}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2057, file: !160, line: 374, baseType: !1724, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2057, file: !160, line: 375, baseType: !532, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2057, file: !160, line: 376, baseType: !2062, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{null, !2056, !326}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2057, file: !160, line: 377, baseType: !362, size: 64, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2057, file: !160, line: 378, baseType: !46, size: 32, offset: 256)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2057, file: !160, line: 379, baseType: !258, size: 16, offset: 288)
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2057, file: !160, line: 380, baseType: !2069, size: 64, offset: 320)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2057, file: !160, line: 380, size: 64, elements: !2070)
!2070 = !{!2071, !2074}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2069, file: !160, line: 386, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !160, line: 386, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2069, file: !160, line: 395, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!322, !362}
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2080, line: 41, size: 320, elements: !2081)
!2080 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2081 = !{!2082, !2083, !2084, !2085, !2086, !2087, !2092, !2126}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2079, file: !2080, line: 42, baseType: !248, size: 8)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2079, file: !2080, line: 43, baseType: !712, size: 8, offset: 8)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2079, file: !2080, line: 44, baseType: !712, size: 8, offset: 16)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2079, file: !2080, line: 45, baseType: !712, size: 8, offset: 24)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2079, file: !2080, line: 46, baseType: !712, size: 8, offset: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, scope: !2079, file: !2080, line: 47, baseType: !2088, size: 64, offset: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2079, file: !2080, line: 47, size: 64, elements: !2089)
!2089 = !{!2090, !2091}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2088, file: !2080, line: 48, baseType: !337, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2088, file: !2080, line: 49, baseType: !46, size: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, scope: !2079, file: !2080, line: 61, baseType: !2093, size: 128, offset: 128)
!2093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2079, file: !2080, line: 61, size: 128, elements: !2094)
!2094 = !{!2095, !2101}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2093, file: !2080, line: 67, baseType: !2096, size: 128)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2097, line: 17, size: 128, elements: !2098)
!2097 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2098 = !{!2099, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2096, file: !2097, line: 19, baseType: !362, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2096, file: !2097, line: 20, baseType: !338, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, scope: !2093, file: !2080, line: 68, baseType: !2102, size: 128)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2093, file: !2080, line: 68, size: 128, elements: !2103)
!2103 = !{!2104, !2125}
!2104 = !DIDerivedType(tag: DW_TAG_member, scope: !2102, file: !2080, line: 69, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2102, file: !2080, line: 69, size: 64, elements: !2106)
!2106 = !{!2107, !2110, !2117, !2122, !2124}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2105, file: !2080, line: 71, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2096)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2105, file: !2080, line: 72, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2113)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2080, line: 17, size: 128, elements: !2114)
!2114 = !{!2115, !2116}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2113, file: !2080, line: 18, baseType: !362, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2113, file: !2080, line: 19, baseType: !337, size: 64, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2105, file: !2080, line: 73, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2120)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2121, line: 54, flags: DIFlagFwdDecl)
!2121 = !DIFile(filename: "./include/xen/xen.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f0b1570b81b8ad6a5a9b58f221b3254d")
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2105, file: !2080, line: 74, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2105, file: !2080, line: 75, baseType: !362, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2102, file: !2080, line: 77, baseType: !337, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, scope: !2079, file: !2080, line: 80, baseType: !2127, size: 64, offset: 256)
!2127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2079, file: !2080, line: 80, size: 64, elements: !2128)
!2128 = !{!2129, !2130}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2127, file: !2080, line: 81, baseType: !340, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2127, file: !2080, line: 82, baseType: !532, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2036, file: !160, line: 1920, baseType: !2053, size: 64, offset: 320)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2036, file: !160, line: 1921, baseType: !2133, size: 64, offset: 384)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!46, !2056, !2136, !7}
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !160, line: 53, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2036, file: !160, line: 1923, baseType: !2139, size: 64, offset: 448)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!46, !1724, !2142}
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !160, line: 1858, size: 128, elements: !2144)
!2144 = !{!2145, !2150}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2143, file: !160, line: 1859, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !160, line: 1855, baseType: !2147)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!712, !2142, !202, !46, !532, !444, !7}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2143, file: !160, line: 1860, baseType: !532, size: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2036, file: !160, line: 1924, baseType: !2152, size: 64, offset: 512)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!2155, !1724, !2157}
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2156, line: 59, baseType: !7)
!2156 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !547, line: 31, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2036, file: !160, line: 1925, baseType: !2160, size: 64, offset: 576)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!326, !1724, !7, !340}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2036, file: !160, line: 1926, baseType: !2160, size: 64, offset: 640)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2036, file: !160, line: 1927, baseType: !2165, size: 64, offset: 704)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!46, !1724, !2168}
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !102, line: 625, size: 1344, elements: !2170)
!2170 = !{!2171, !2180, !2181, !2189, !2196, !2197, !2202, !2203, !2208, !2209, !2212, !2448, !2449, !2450, !2451, !2452, !2453}
!2171 = !DIDerivedType(tag: DW_TAG_member, scope: !2169, file: !102, line: 628, baseType: !2172, size: 128)
!2172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2169, file: !102, line: 628, size: 128, elements: !2173)
!2173 = !{!2174, !2179}
!2174 = !DIDerivedType(tag: DW_TAG_member, scope: !2172, file: !102, line: 629, baseType: !2175, size: 128)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2172, file: !102, line: 629, size: 128, elements: !2176)
!2176 = !{!2177, !2178}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2175, file: !102, line: 631, baseType: !340, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2175, file: !102, line: 632, baseType: !340, size: 64, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2172, file: !102, line: 635, baseType: !852, size: 128, align: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2169, file: !102, line: 639, baseType: !1697, size: 64, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2169, file: !102, line: 640, baseType: !2182, size: 64, offset: 192)
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2183, line: 297, baseType: !2184)
!2183 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2183, line: 297, size: 64, elements: !2185)
!2185 = !{!2186}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2184, file: !2183, line: 297, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2188, line: 19, baseType: !340)
!2188 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2189 = !DIDerivedType(tag: DW_TAG_member, scope: !2169, file: !102, line: 646, baseType: !2190, size: 64, offset: 256)
!2190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2169, file: !102, line: 646, size: 64, elements: !2191)
!2191 = !{!2192, !2195}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2190, file: !102, line: 647, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2194)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !102, line: 542, baseType: !340)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2190, file: !102, line: 648, baseType: !2194, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2169, file: !102, line: 666, baseType: !46, size: 32, offset: 320)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2169, file: !102, line: 667, baseType: !2198, size: 64, offset: 384)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !102, line: 579, size: 320, elements: !2200)
!2200 = !{!2201}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2199, file: !102, line: 580, baseType: !1294, size: 320)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2169, file: !102, line: 670, baseType: !712, size: 8, offset: 448)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2169, file: !102, line: 681, baseType: !2204, size: 256, offset: 512)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2169, file: !102, line: 678, size: 256, elements: !2205)
!2205 = !{!2206, !2207}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2204, file: !102, line: 679, baseType: !744, size: 192, align: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2204, file: !102, line: 680, baseType: !340, size: 64, offset: 192)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2169, file: !102, line: 689, baseType: !206, size: 128, offset: 768)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2169, file: !102, line: 691, baseType: !2210, size: 64, offset: 896)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !102, line: 691, flags: DIFlagFwdDecl)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2169, file: !102, line: 694, baseType: !2213, size: 64, offset: 960)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2215)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2216, line: 563, size: 1024, elements: !2217)
!2216 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2217 = !{!2218, !2222, !2223, !2227, !2231, !2235, !2412, !2416, !2420, !2424, !2425, !2426, !2430, !2434, !2440, !2444}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2215, file: !2216, line: 564, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{null, !2168}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2215, file: !2216, line: 569, baseType: !2219, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2215, file: !2216, line: 571, baseType: !2224, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!46, !2168, !340}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2215, file: !2216, line: 572, baseType: !2228, size: 64, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!46, !2168}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2215, file: !2216, line: 578, baseType: !2232, size: 64, offset: 256)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!46, !2168, !340, !340, !340}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2215, file: !2216, line: 580, baseType: !2236, size: 64, offset: 320)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!2239, !2240}
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !102, line: 1184, baseType: !7)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2216, line: 512, size: 896, elements: !2242)
!2242 = !{!2243, !2251, !2252, !2259, !2266, !2276, !2405, !2406, !2408, !2410}
!2243 = !DIDerivedType(tag: DW_TAG_member, scope: !2241, file: !2216, line: 513, baseType: !2244, size: 320)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2241, file: !2216, line: 513, size: 320, elements: !2245)
!2245 = !{!2246, !2247, !2248, !2249, !2250}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2244, file: !2216, line: 514, baseType: !2168, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2244, file: !2216, line: 515, baseType: !1146, size: 32, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2244, file: !2216, line: 516, baseType: !340, size: 64, offset: 128)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2244, file: !2216, line: 517, baseType: !340, size: 64, offset: 192)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2244, file: !2216, line: 518, baseType: !340, size: 64, offset: 256)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2241, file: !2216, line: 520, baseType: !101, size: 32, offset: 320)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2241, file: !2216, line: 522, baseType: !2253, size: 64, offset: 384)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2188, line: 22, baseType: !2255)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2188, line: 22, size: 64, elements: !2256)
!2256 = !{!2257}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2255, file: !2188, line: 22, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2188, line: 15, baseType: !340)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2241, file: !2216, line: 524, baseType: !2260, size: 64, offset: 448)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2183, line: 372, baseType: !2262)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2183, line: 372, size: 64, elements: !2263)
!2263 = !{!2264}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2262, file: !2183, line: 372, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2188, line: 16, baseType: !340)
!2266 = !DIDerivedType(tag: DW_TAG_member, scope: !2241, file: !2216, line: 527, baseType: !2267, size: 64, offset: 512)
!2267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2241, file: !2216, line: 527, size: 64, elements: !2268)
!2268 = !{!2269, !2275}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2267, file: !2216, line: 528, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2188, line: 21, baseType: !2271)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2188, line: 21, size: 64, elements: !2272)
!2272 = !{!2273}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2271, file: !2188, line: 21, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2188, line: 14, baseType: !340)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2267, file: !2216, line: 529, baseType: !2254, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2241, file: !2216, line: 534, baseType: !2277, size: 64, offset: 576)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !102, line: 74, size: 512, align: 128, elements: !2279)
!2279 = !{!2280, !2281, !2399, !2404}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2278, file: !102, line: 75, baseType: !340, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, scope: !2278, file: !102, line: 83, baseType: !2282, size: 320, offset: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2278, file: !102, line: 83, size: 320, elements: !2283)
!2283 = !{!2284, !2305, !2319, !2323, !2398}
!2284 = !DIDerivedType(tag: DW_TAG_member, scope: !2282, file: !102, line: 84, baseType: !2285, size: 320)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2282, file: !102, line: 84, size: 320, elements: !2286)
!2286 = !{!2287, !2298, !2299, !2304}
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !2285, file: !102, line: 90, baseType: !2288, size: 128)
!2288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2285, file: !102, line: 90, size: 128, elements: !2289)
!2289 = !{!2290, !2291, !2296, !2297}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2288, file: !102, line: 91, baseType: !206, size: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, scope: !2288, file: !102, line: 94, baseType: !2292, size: 128)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2288, file: !102, line: 94, size: 128, elements: !2293)
!2293 = !{!2294, !2295}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2292, file: !102, line: 96, baseType: !362, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2292, file: !102, line: 98, baseType: !7, size: 32, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2288, file: !102, line: 102, baseType: !206, size: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2288, file: !102, line: 103, baseType: !206, size: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2285, file: !102, line: 106, baseType: !367, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, scope: !2285, file: !102, line: 107, baseType: !2300, size: 64, offset: 192)
!2300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2285, file: !102, line: 107, size: 64, elements: !2301)
!2301 = !{!2302, !2303}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2300, file: !102, line: 108, baseType: !340, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2300, file: !102, line: 109, baseType: !340, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2285, file: !102, line: 117, baseType: !340, size: 64, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_member, scope: !2282, file: !102, line: 119, baseType: !2306, size: 320)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2282, file: !102, line: 119, size: 320, elements: !2307)
!2307 = !{!2308, !2309, !2312, !2313, !2314}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2306, file: !102, line: 124, baseType: !340, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2306, file: !102, line: 125, baseType: !2310, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !102, line: 125, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2306, file: !102, line: 126, baseType: !340, size: 64, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2306, file: !102, line: 127, baseType: !340, size: 64, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, scope: !2306, file: !102, line: 128, baseType: !2315, size: 64, offset: 256)
!2315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2306, file: !102, line: 128, size: 64, elements: !2316)
!2316 = !{!2317, !2318}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2315, file: !102, line: 133, baseType: !340, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2315, file: !102, line: 138, baseType: !636, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, scope: !2282, file: !102, line: 141, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2282, file: !102, line: 141, size: 64, elements: !2321)
!2321 = !{!2322}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2320, file: !102, line: 142, baseType: !340, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, scope: !2282, file: !102, line: 144, baseType: !2324, size: 128)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2282, file: !102, line: 144, size: 128, elements: !2325)
!2325 = !{!2326, !2397}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2324, file: !102, line: 146, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !118, line: 126, size: 1216, elements: !2329)
!2329 = !{!2330, !2340, !2361, !2362, !2363, !2364, !2365, !2379, !2380, !2381}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2328, file: !118, line: 127, baseType: !2331, size: 384)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !118, line: 21, size: 384, elements: !2332)
!2332 = !{!2333, !2334, !2336, !2337, !2338, !2339}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2331, file: !118, line: 22, baseType: !340, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2331, file: !118, line: 23, baseType: !2335, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2331, file: !118, line: 24, baseType: !2335, size: 64, offset: 128)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2331, file: !118, line: 25, baseType: !340, size: 64, offset: 192)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2331, file: !118, line: 26, baseType: !340, size: 64, offset: 256)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2331, file: !118, line: 27, baseType: !340, size: 64, offset: 320)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2328, file: !118, line: 128, baseType: !2341, size: 128, offset: 384)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2342, line: 105, size: 128, elements: !2343)
!2342 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2343 = !{!2344, !2345}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2341, file: !2342, line: 110, baseType: !340, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2341, file: !2342, line: 118, baseType: !2346, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2342, line: 95, size: 448, elements: !2348)
!2348 = !{!2349, !2350, !2356, !2357, !2358, !2359, !2360}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2347, file: !2342, line: 96, baseType: !636, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2347, file: !2342, line: 97, baseType: !2351, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2342, line: 60, baseType: !2353)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{null, !2355}
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2347, file: !2342, line: 98, baseType: !2351, size: 64, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2347, file: !2342, line: 99, baseType: !712, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2347, file: !2342, line: 100, baseType: !712, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2347, file: !2342, line: 101, baseType: !852, size: 128, align: 64, offset: 256)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2347, file: !2342, line: 102, baseType: !2355, size: 64, offset: 384)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2328, file: !118, line: 129, baseType: !581, size: 256, offset: 512)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2328, file: !118, line: 130, baseType: !117, size: 32, offset: 768)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2328, file: !118, line: 131, baseType: !7, size: 32, offset: 800)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2328, file: !118, line: 132, baseType: !340, size: 64, offset: 832)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2328, file: !118, line: 133, baseType: !2366, size: 64, offset: 896)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2368)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !118, line: 77, size: 192, elements: !2369)
!2369 = !{!2370, !2374, !2375}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2368, file: !118, line: 83, baseType: !2371, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{null, !2277}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2368, file: !118, line: 89, baseType: !2236, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2368, file: !118, line: 100, baseType: !2376, size: 64, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!46, !2327, !340, !340, !46}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2328, file: !118, line: 134, baseType: !362, size: 64, offset: 960)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2328, file: !118, line: 135, baseType: !46, size: 32, offset: 1024)
!2381 = !DIDerivedType(tag: DW_TAG_member, scope: !2328, file: !118, line: 136, baseType: !2382, size: 128, offset: 1088)
!2382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2328, file: !118, line: 136, size: 128, elements: !2383)
!2383 = !{!2384, !2390}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2382, file: !118, line: 137, baseType: !2385, size: 128)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2386, line: 6, size: 128, elements: !2387)
!2386 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2387 = !{!2388, !2389}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2385, file: !2386, line: 7, baseType: !444, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2385, file: !2386, line: 8, baseType: !444, size: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, scope: !2382, file: !118, line: 138, baseType: !2391)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2382, file: !118, line: 138, elements: !2392)
!2392 = !{!2393, !2395}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2391, file: !118, line: 138, baseType: !2394)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2391, file: !118, line: 138, elements: !921)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2391, file: !118, line: 138, baseType: !2396)
!2396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2385, elements: !1831)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2324, file: !102, line: 147, baseType: !362, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2282, file: !102, line: 161, baseType: !852, size: 128, align: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, scope: !2278, file: !102, line: 164, baseType: !2400, size: 32, offset: 384)
!2400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2278, file: !102, line: 164, size: 32, elements: !2401)
!2401 = !{!2402, !2403}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2400, file: !102, line: 169, baseType: !240, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2400, file: !102, line: 177, baseType: !7, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2278, file: !102, line: 181, baseType: !240, size: 32, offset: 416)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2241, file: !2216, line: 535, baseType: !2277, size: 64, offset: 640)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2241, file: !2216, line: 541, baseType: !2407, size: 64, offset: 704)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2241, file: !2216, line: 545, baseType: !2409, size: 64, offset: 768)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2241, file: !2216, line: 549, baseType: !2411, size: 64, offset: 832)
!2411 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2183, line: 520, baseType: !2277)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2215, file: !2216, line: 581, baseType: !2413, size: 64, offset: 384)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!2239, !2240, !7}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2215, file: !2216, line: 582, baseType: !2417, size: 64, offset: 448)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!2239, !2240, !340, !340}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2215, file: !2216, line: 584, baseType: !2421, size: 64, offset: 512)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!340, !2168}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2215, file: !2216, line: 588, baseType: !2236, size: 64, offset: 576)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2215, file: !2216, line: 591, baseType: !2236, size: 64, offset: 640)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2215, file: !2216, line: 597, baseType: !2427, size: 64, offset: 704)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!46, !2168, !340, !362, !46, !46}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2215, file: !2216, line: 603, baseType: !2431, size: 64, offset: 768)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!202, !2168}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2215, file: !2216, line: 613, baseType: !2435, size: 64, offset: 832)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!46, !2168, !2438}
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !102, line: 717, flags: DIFlagFwdDecl)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2215, file: !2216, line: 625, baseType: !2441, size: 64, offset: 896)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!2438, !2168, !340}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2215, file: !2216, line: 633, baseType: !2445, size: 64, offset: 960)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!2277, !2168, !340}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2169, file: !102, line: 697, baseType: !340, size: 64, offset: 1024)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2169, file: !102, line: 699, baseType: !1724, size: 64, offset: 1088)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2169, file: !102, line: 700, baseType: !362, size: 64, offset: 1152)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2169, file: !102, line: 711, baseType: !636, size: 64, offset: 1216)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2169, file: !102, line: 717, baseType: !2438, size: 64, offset: 1280)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2169, file: !102, line: 722, baseType: !2454, offset: 1344)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !102, line: 570, elements: !921)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2036, file: !160, line: 1928, baseType: !340, size: 64, offset: 768)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2036, file: !160, line: 1929, baseType: !2457, size: 64, offset: 832)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!46, !371, !1724}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2036, file: !160, line: 1930, baseType: !2461, size: 64, offset: 896)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!46, !1724, !2464}
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !160, line: 1061, baseType: !362)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2036, file: !160, line: 1931, baseType: !2457, size: 64, offset: 960)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2036, file: !160, line: 1932, baseType: !2467, size: 64, offset: 1024)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!46, !1724, !532, !532, !46}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2036, file: !160, line: 1933, baseType: !2471, size: 64, offset: 1088)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!46, !46, !1724, !46}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2036, file: !160, line: 1934, baseType: !2475, size: 64, offset: 1152)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!46, !1724, !46, !2478}
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !160, line: 1063, flags: DIFlagFwdDecl)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2036, file: !160, line: 1935, baseType: !1721, size: 64, offset: 1216)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2036, file: !160, line: 1936, baseType: !2482, size: 64, offset: 1280)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!46, !46}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2036, file: !160, line: 1937, baseType: !2475, size: 64, offset: 1344)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2036, file: !160, line: 1938, baseType: !2487, size: 64, offset: 1408)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!322, !2490, !1724, !2047, !337, !7}
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1076, line: 59, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2036, file: !160, line: 1939, baseType: !2493, size: 64, offset: 1472)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!322, !1724, !2047, !2490, !337, !7}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2036, file: !160, line: 1940, baseType: !2497, size: 64, offset: 1536)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{null, !1724}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2036, file: !160, line: 1941, baseType: !2501, size: 64, offset: 1600)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!46, !1724, !46, !2504, !2505}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2036, file: !160, line: 1942, baseType: !2507, size: 64, offset: 1664)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!326, !1724, !46, !532, !532}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2036, file: !160, line: 1944, baseType: !2511, size: 64, offset: 1728)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{null, !1074, !1724}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2036, file: !160, line: 1948, baseType: !2515, size: 64, offset: 1792)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!322, !1724, !532, !1724, !532, !337, !7}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2036, file: !160, line: 1950, baseType: !2519, size: 64, offset: 1856)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!532, !1724, !532, !1724, !532, !532, !7}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2036, file: !160, line: 1953, baseType: !2467, size: 64, offset: 1920)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2036, file: !160, line: 1954, baseType: !2524, size: 64, offset: 1984)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!46, !2527, !7}
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !160, line: 1911, flags: DIFlagFwdDecl)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2036, file: !160, line: 1955, baseType: !2530, size: 64, offset: 2048)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!46, !2527, !2136, !7}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1725, file: !160, line: 1018, baseType: !444, size: 64, offset: 1472)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1725, file: !160, line: 1020, baseType: !362, size: 64, offset: 1536)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1725, file: !160, line: 1023, baseType: !362, size: 64, offset: 1600)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1725, file: !160, line: 1027, baseType: !2537, size: 64, offset: 1664)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1725, file: !160, line: 1029, baseType: !367, size: 64, offset: 1728)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1725, file: !160, line: 1030, baseType: !2540, size: 32, offset: 1792)
!2540 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2541, line: 8, baseType: !440)
!2541 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1725, file: !160, line: 1031, baseType: !2540, size: 32, offset: 1824)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1701, file: !102, line: 756, baseType: !340, size: 64, offset: 704)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1701, file: !102, line: 757, baseType: !340, size: 64, offset: 768)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1701, file: !102, line: 760, baseType: !340, size: 64, offset: 832)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1701, file: !102, line: 761, baseType: !340, size: 64, offset: 896)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1701, file: !102, line: 763, baseType: !340, size: 64, offset: 960)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1701, file: !102, line: 764, baseType: !2549, size: 64, offset: 1024)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2183, line: 299, baseType: !2551)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2183, line: 299, size: 64, elements: !2552)
!2552 = !{!2553}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2551, file: !2183, line: 299, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2188, line: 18, baseType: !340)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1701, file: !102, line: 773, baseType: !240, size: 32, offset: 1088)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1701, file: !102, line: 785, baseType: !240, size: 32, offset: 1120)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1701, file: !102, line: 795, baseType: !2558, size: 64, offset: 1152)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !102, line: 726, size: 128, elements: !2560)
!2560 = !{!2561, !2562}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2559, file: !102, line: 727, baseType: !444, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2559, file: !102, line: 728, baseType: !46, size: 32, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1701, file: !102, line: 801, baseType: !340, size: 64, offset: 1216)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1701, file: !102, line: 804, baseType: !636, size: 64, offset: 1280)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1701, file: !102, line: 806, baseType: !46, size: 32, offset: 1344)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1701, file: !102, line: 808, baseType: !220, size: 32, offset: 1376)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1701, file: !102, line: 823, baseType: !1294, size: 320, offset: 1408)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1701, file: !102, line: 825, baseType: !206, size: 128, offset: 1728)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1701, file: !102, line: 845, baseType: !46, size: 32, offset: 1856)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1701, file: !102, line: 849, baseType: !340, size: 64, offset: 1920)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1701, file: !102, line: 850, baseType: !340, size: 64, offset: 1984)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1701, file: !102, line: 852, baseType: !340, size: 64, offset: 2048)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1701, file: !102, line: 853, baseType: !340, size: 64, offset: 2112)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1701, file: !102, line: 854, baseType: !638, size: 64, offset: 2176)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1701, file: !102, line: 855, baseType: !340, size: 64, offset: 2240)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1701, file: !102, line: 856, baseType: !340, size: 64, offset: 2304)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1701, file: !102, line: 857, baseType: !340, size: 64, offset: 2368)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1701, file: !102, line: 858, baseType: !340, size: 64, offset: 2432)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1701, file: !102, line: 865, baseType: !417, size: 32, offset: 2496)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1701, file: !102, line: 867, baseType: !220, size: 32, offset: 2528)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1701, file: !102, line: 869, baseType: !340, size: 64, offset: 2560)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1701, file: !102, line: 869, baseType: !340, size: 64, offset: 2624)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1701, file: !102, line: 869, baseType: !340, size: 64, offset: 2688)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1701, file: !102, line: 869, baseType: !340, size: 64, offset: 2752)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1701, file: !102, line: 870, baseType: !340, size: 64, offset: 2816)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1701, file: !102, line: 870, baseType: !340, size: 64, offset: 2880)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1701, file: !102, line: 870, baseType: !340, size: 64, offset: 2944)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1701, file: !102, line: 871, baseType: !340, size: 64, offset: 3008)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1701, file: !102, line: 871, baseType: !340, size: 64, offset: 3072)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1701, file: !102, line: 871, baseType: !340, size: 64, offset: 3136)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1701, file: !102, line: 871, baseType: !340, size: 64, offset: 3200)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1701, file: !102, line: 873, baseType: !2593, size: 3328, offset: 3264)
!2593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 3328, elements: !2594)
!2594 = !{!2595}
!2595 = !DISubrange(count: 52)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1701, file: !102, line: 875, baseType: !2597, size: 1280, offset: 6592)
!2597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1983, size: 1280, elements: !862)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1701, file: !102, line: 877, baseType: !2599, size: 64, offset: 7872)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !102, line: 877, flags: DIFlagFwdDecl)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1701, file: !102, line: 880, baseType: !2602, size: 1088, offset: 7936)
!2602 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2603, line: 72, baseType: !2604)
!2603 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2603, line: 23, size: 1088, elements: !2605)
!2605 = !{!2606, !2607, !2608, !2609, !2610, !2613, !2614, !2615, !2616, !2643, !2644, !2645}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2604, file: !2603, line: 28, baseType: !444, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2604, file: !2603, line: 38, baseType: !638, size: 64, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2604, file: !2603, line: 40, baseType: !340, size: 64, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2604, file: !2603, line: 43, baseType: !1294, size: 320, offset: 192)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2604, file: !2603, line: 44, baseType: !2611, size: 64, offset: 512)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2603, line: 44, flags: DIFlagFwdDecl)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2604, file: !2603, line: 48, baseType: !340, size: 64, offset: 576)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2604, file: !2603, line: 59, baseType: !632, size: 256, offset: 640)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2604, file: !2603, line: 60, baseType: !362, size: 64, offset: 896)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2604, file: !2603, line: 61, baseType: !2617, size: 64, offset: 960)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2619)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2620, line: 13, size: 1216, elements: !2621)
!2620 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2621 = !{!2622, !2623, !2624, !2625, !2626, !2627, !2628, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2619, file: !2620, line: 14, baseType: !362, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2619, file: !2620, line: 15, baseType: !340, size: 64, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2619, file: !2620, line: 17, baseType: !340, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2619, file: !2620, line: 17, baseType: !340, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2619, file: !2620, line: 18, baseType: !340, size: 64, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2619, file: !2620, line: 18, baseType: !340, size: 64, offset: 320)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2619, file: !2620, line: 19, baseType: !2629, size: 64, offset: 384)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2619, file: !2620, line: 21, baseType: !326, size: 64, offset: 448)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2619, file: !2620, line: 23, baseType: !326, size: 64, offset: 512)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2619, file: !2620, line: 24, baseType: !326, size: 64, offset: 576)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2619, file: !2620, line: 25, baseType: !326, size: 64, offset: 640)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2619, file: !2620, line: 26, baseType: !326, size: 64, offset: 704)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2619, file: !2620, line: 27, baseType: !326, size: 64, offset: 768)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2619, file: !2620, line: 28, baseType: !326, size: 64, offset: 832)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2619, file: !2620, line: 29, baseType: !326, size: 64, offset: 896)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2619, file: !2620, line: 30, baseType: !326, size: 64, offset: 960)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2619, file: !2620, line: 31, baseType: !326, size: 64, offset: 1024)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2619, file: !2620, line: 32, baseType: !326, size: 64, offset: 1088)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2619, file: !2620, line: 33, baseType: !326, size: 64, offset: 1152)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2604, file: !2603, line: 63, baseType: !240, size: 32, offset: 1024)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2604, file: !2603, line: 69, baseType: !258, size: 16, offset: 1056)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2604, file: !2603, line: 70, baseType: !768, size: 16, offset: 1072)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1701, file: !102, line: 882, baseType: !340, size: 64, offset: 9024)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1701, file: !102, line: 885, baseType: !220, size: 32, offset: 9088)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1701, file: !102, line: 886, baseType: !2649, size: 64, offset: 9152)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !102, line: 732, flags: DIFlagFwdDecl)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1701, file: !102, line: 901, baseType: !1812, size: 64, offset: 9216)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1701, file: !102, line: 904, baseType: !1724, size: 64, offset: 9280)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1701, file: !102, line: 906, baseType: !2654, size: 64, offset: 9344)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !102, line: 906, flags: DIFlagFwdDecl)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1701, file: !102, line: 930, baseType: !240, size: 32, offset: 9408)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1701, file: !102, line: 933, baseType: !240, size: 32, offset: 9440)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1701, file: !102, line: 935, baseType: !2659, size: 64, offset: 9472)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !153, line: 103, size: 64, elements: !2660)
!2660 = !{!2661}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2659, file: !153, line: 104, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !153, line: 101, flags: DIFlagFwdDecl)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1701, file: !102, line: 940, baseType: !636, size: 64, offset: 9536)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1701, file: !102, line: 942, baseType: !892, size: 256, offset: 9600)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1698, file: !102, line: 986, baseType: !2667, offset: 10240)
!2667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, elements: !1831)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1401, file: !1076, line: 882, baseType: !1697, size: 64, offset: 9792)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1401, file: !1076, line: 884, baseType: !46, size: 32, offset: 9856)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1401, file: !1076, line: 885, baseType: !46, size: 32, offset: 9888)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1401, file: !1076, line: 886, baseType: !46, size: 32, offset: 9920)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1401, file: !1076, line: 888, baseType: !46, size: 32, offset: 9952)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1401, file: !1076, line: 890, baseType: !340, size: 64, offset: 9984)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1401, file: !1076, line: 893, baseType: !7, size: 32, offset: 10048)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1401, file: !1076, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1401, file: !1076, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1401, file: !1076, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1401, file: !1076, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1401, file: !1076, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1401, file: !1076, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1401, file: !1076, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1401, file: !1076, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1401, file: !1076, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1401, file: !1076, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1401, file: !1076, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1401, file: !1076, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1401, file: !1076, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1401, file: !1076, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1401, file: !1076, line: 969, baseType: !340, size: 64, offset: 10176)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1401, file: !1076, line: 971, baseType: !2691, size: 448, offset: 10240)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !147, line: 25, size: 448, elements: !2692)
!2692 = !{!2693, !2694, !2699}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2691, file: !147, line: 26, baseType: !340, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2691, file: !147, line: 27, baseType: !2695, size: 64, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!326, !2698}
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, scope: !2691, file: !147, line: 28, baseType: !2700, size: 320, offset: 128)
!2700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2691, file: !147, line: 28, size: 320, elements: !2701)
!2701 = !{!2702, !2712, !2737}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2700, file: !147, line: 37, baseType: !2703, size: 320)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2700, file: !147, line: 30, size: 320, elements: !2704)
!2704 = !{!2705, !2707, !2708, !2709, !2710, !2711}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2703, file: !147, line: 31, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2703, file: !147, line: 32, baseType: !440, size: 32, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2703, file: !147, line: 33, baseType: !440, size: 32, offset: 96)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2703, file: !147, line: 34, baseType: !440, size: 32, offset: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2703, file: !147, line: 35, baseType: !444, size: 64, offset: 192)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2703, file: !147, line: 36, baseType: !2706, size: 64, offset: 256)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2700, file: !147, line: 47, baseType: !2713, size: 192)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2700, file: !147, line: 39, size: 192, elements: !2714)
!2714 = !{!2715, !2716, !2717, !2736}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2713, file: !147, line: 40, baseType: !1568, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2713, file: !147, line: 41, baseType: !146, size: 32, offset: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, scope: !2713, file: !147, line: 42, baseType: !2718, size: 64, offset: 64)
!2718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2713, file: !147, line: 42, size: 64, elements: !2719)
!2719 = !{!2720, !2728}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2718, file: !147, line: 43, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2723, line: 7, size: 128, elements: !2724)
!2723 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2724 = !{!2725, !2727}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2722, file: !2723, line: 8, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !324, line: 93, baseType: !534)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2722, file: !2723, line: 9, baseType: !534, size: 64, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2718, file: !147, line: 44, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2731, line: 7, size: 64, elements: !2732)
!2731 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2732 = !{!2733, !2735}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2730, file: !2731, line: 8, baseType: !2734, size: 32)
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2731, line: 5, baseType: !628)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2730, file: !2731, line: 9, baseType: !628, size: 32, offset: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2713, file: !147, line: 46, baseType: !444, size: 64, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2700, file: !147, line: 55, baseType: !2738, size: 256)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2700, file: !147, line: 49, size: 256, elements: !2739)
!2739 = !{!2740, !2743, !2744, !2745, !2746}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2738, file: !147, line: 50, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !147, line: 14, flags: DIFlagFwdDecl)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2738, file: !147, line: 51, baseType: !46, size: 32, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2738, file: !147, line: 52, baseType: !46, size: 32, offset: 96)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2738, file: !147, line: 53, baseType: !340, size: 64, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2738, file: !147, line: 54, baseType: !340, size: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1401, file: !1076, line: 973, baseType: !2748, size: 32, offset: 10688)
!2748 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !207, line: 27, baseType: !2749)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !324, line: 28, baseType: !46)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1401, file: !1076, line: 974, baseType: !2748, size: 32, offset: 10720)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1401, file: !1076, line: 978, baseType: !340, size: 64, offset: 10752)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1401, file: !1076, line: 987, baseType: !1400, size: 64, offset: 10816)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1401, file: !1076, line: 990, baseType: !1400, size: 64, offset: 10880)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1401, file: !1076, line: 995, baseType: !206, size: 128, offset: 10944)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1401, file: !1076, line: 996, baseType: !206, size: 128, offset: 11072)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1401, file: !1076, line: 997, baseType: !1400, size: 64, offset: 11200)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1401, file: !1076, line: 1005, baseType: !206, size: 128, offset: 11264)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1401, file: !1076, line: 1006, baseType: !206, size: 128, offset: 11392)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1401, file: !1076, line: 1009, baseType: !1765, size: 64, offset: 11520)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1401, file: !1076, line: 1010, baseType: !2761, size: 512, offset: 11584)
!2761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 512, elements: !862)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1401, file: !1076, line: 1011, baseType: !206, size: 128, offset: 12096)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1401, file: !1076, line: 1012, baseType: !206, size: 128, offset: 12224)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1401, file: !1076, line: 1014, baseType: !580, size: 64, offset: 12352)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1401, file: !1076, line: 1017, baseType: !761, size: 64, offset: 12416)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1401, file: !1076, line: 1020, baseType: !761, size: 64, offset: 12480)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1401, file: !1076, line: 1023, baseType: !362, size: 64, offset: 12544)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1401, file: !1076, line: 1025, baseType: !444, size: 64, offset: 12608)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1401, file: !1076, line: 1026, baseType: !444, size: 64, offset: 12672)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1401, file: !1076, line: 1031, baseType: !444, size: 64, offset: 12736)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1401, file: !1076, line: 1032, baseType: !2772, size: 192, offset: 12800)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1076, line: 324, size: 192, elements: !2773)
!2773 = !{!2774, !2775, !2776}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2772, file: !1076, line: 326, baseType: !444, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2772, file: !1076, line: 327, baseType: !444, size: 64, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2772, file: !1076, line: 328, baseType: !590, size: 32, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1401, file: !1076, line: 1041, baseType: !340, size: 64, offset: 12992)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1401, file: !1076, line: 1042, baseType: !340, size: 64, offset: 13056)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1401, file: !1076, line: 1045, baseType: !444, size: 64, offset: 13120)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1401, file: !1076, line: 1048, baseType: !444, size: 64, offset: 13184)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1401, file: !1076, line: 1051, baseType: !340, size: 64, offset: 13248)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1401, file: !1076, line: 1052, baseType: !340, size: 64, offset: 13312)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1401, file: !1076, line: 1055, baseType: !2784, size: 640, offset: 13376)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2785, line: 132, size: 640, elements: !2786)
!2785 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2786 = !{!2787, !2793, !2794}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2784, file: !2785, line: 133, baseType: !2788, size: 576)
!2788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2789, size: 576, elements: !291)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2785, line: 117, size: 192, elements: !2790)
!2790 = !{!2791, !2792}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2789, file: !2785, line: 118, baseType: !444, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2789, file: !2785, line: 119, baseType: !1577, size: 128, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2784, file: !2785, line: 134, baseType: !7, size: 32, offset: 576)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2784, file: !2785, line: 135, baseType: !7, size: 32, offset: 608)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1401, file: !1076, line: 1058, baseType: !2796, size: 448, offset: 14016)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2785, line: 144, size: 448, elements: !2797)
!2797 = !{!2798, !2799, !2800}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2796, file: !2785, line: 145, baseType: !852, size: 128, align: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2796, file: !2785, line: 146, baseType: !632, size: 256, offset: 128)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2796, file: !2785, line: 147, baseType: !7, size: 32, offset: 384)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1401, file: !1076, line: 1064, baseType: !1838, size: 64, offset: 14464)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1401, file: !1076, line: 1067, baseType: !1838, size: 64, offset: 14528)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1401, file: !1076, line: 1070, baseType: !1838, size: 64, offset: 14592)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1401, file: !1076, line: 1074, baseType: !1865, size: 64, offset: 14656)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1401, file: !1076, line: 1084, baseType: !2806, size: 128, offset: 14720)
!2806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 128, elements: !2807)
!2807 = !{!2808}
!2808 = !DISubrange(count: 16)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1401, file: !1076, line: 1086, baseType: !2810, size: 64, offset: 14848)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1076, line: 55, flags: DIFlagFwdDecl)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1401, file: !1076, line: 1089, baseType: !2813, size: 64, offset: 14912)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2814, line: 12, size: 64, elements: !2815)
!2814 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2815 = !{!2816}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2813, file: !2814, line: 13, baseType: !2817, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2814, line: 8, flags: DIFlagFwdDecl)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1401, file: !1076, line: 1090, baseType: !2820, size: 128, offset: 14976)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2821, line: 13, size: 128, elements: !2822)
!2821 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2822 = !{!2823}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2820, file: !2821, line: 14, baseType: !206, size: 128)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1401, file: !1076, line: 1097, baseType: !2825, size: 64, offset: 15104)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1076, line: 50, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1401, file: !1076, line: 1100, baseType: !2828, size: 64, offset: 15168)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1076, line: 1100, flags: DIFlagFwdDecl)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1401, file: !1076, line: 1103, baseType: !2831, size: 64, offset: 15232)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1076, line: 53, flags: DIFlagFwdDecl)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1401, file: !1076, line: 1107, baseType: !2834, size: 64, offset: 15296)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2836, line: 31, size: 576, elements: !2837)
!2836 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2837 = !{!2838, !2839, !2842, !2845, !2848, !2849, !2852, !2855, !2856}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2835, file: !2836, line: 32, baseType: !1414, size: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2835, file: !2836, line: 33, baseType: !2840, size: 64, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2836, line: 9, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2835, file: !2836, line: 34, baseType: !2843, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2836, line: 10, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2835, file: !2836, line: 35, baseType: !2846, size: 64, offset: 192)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2836, line: 8, flags: DIFlagFwdDecl)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2835, file: !2836, line: 36, baseType: !1782, size: 64, offset: 256)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2835, file: !2836, line: 37, baseType: !2850, size: 64, offset: 320)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1867, line: 34, flags: DIFlagFwdDecl)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2835, file: !2836, line: 38, baseType: !2853, size: 64, offset: 384)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2836, line: 38, flags: DIFlagFwdDecl)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2835, file: !2836, line: 39, baseType: !2853, size: 64, offset: 448)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2835, file: !2836, line: 40, baseType: !2857, size: 64, offset: 512)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2836, line: 12, flags: DIFlagFwdDecl)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1401, file: !1076, line: 1110, baseType: !2860, size: 64, offset: 15360)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2862, line: 93, size: 8768, elements: !2863)
!2862 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2863 = !{!2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2911, !2920, !2921, !2923, !2924, !2925, !2928, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2966, !2967, !2974, !2984, !2987, !2988, !2991, !2992, !2993, !2994, !2995, !2996}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2861, file: !2862, line: 94, baseType: !1414, size: 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2861, file: !2862, line: 95, baseType: !240, size: 32, offset: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2861, file: !2862, line: 96, baseType: !46, size: 32, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2861, file: !2862, line: 97, baseType: !46, size: 32, offset: 96)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2861, file: !2862, line: 98, baseType: !206, size: 128, offset: 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2861, file: !2862, line: 100, baseType: !1387, size: 192, offset: 256)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2861, file: !2862, line: 103, baseType: !1400, size: 64, offset: 448)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2861, file: !2862, line: 106, baseType: !2872, size: 192, offset: 512)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1817, line: 32, size: 192, elements: !2873)
!2873 = !{!2874, !2875}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2872, file: !1817, line: 33, baseType: !206, size: 128)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2872, file: !1817, line: 34, baseType: !2876, size: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2877, line: 25, baseType: !2878)
!2877 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2877, line: 23, size: 64, elements: !2879)
!2879 = !{!2880}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2878, file: !2877, line: 24, baseType: !1648, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2861, file: !2862, line: 109, baseType: !1002, size: 64, offset: 704)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2861, file: !2862, line: 112, baseType: !46, size: 32, offset: 768)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2861, file: !2862, line: 114, baseType: !46, size: 32, offset: 800)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2861, file: !2862, line: 115, baseType: !1400, size: 64, offset: 832)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2861, file: !2862, line: 118, baseType: !46, size: 32, offset: 896)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2861, file: !2862, line: 119, baseType: !7, size: 32, offset: 928)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2861, file: !2862, line: 121, baseType: !2888, size: 64, offset: 960)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2862, line: 80, size: 448, elements: !2890)
!2890 = !{!2891, !2892, !2898}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2889, file: !2862, line: 81, baseType: !240, size: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2889, file: !2862, line: 82, baseType: !2893, size: 128, offset: 64)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2862, line: 75, size: 128, elements: !2894)
!2894 = !{!2895, !2896}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2893, file: !2862, line: 76, baseType: !1400, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2893, file: !2862, line: 77, baseType: !2897, size: 64, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2889, file: !2862, line: 83, baseType: !581, size: 256, offset: 192)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2861, file: !2862, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2861, file: !2862, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2861, file: !2862, line: 138, baseType: !7, size: 32, offset: 1056)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2861, file: !2862, line: 139, baseType: !206, size: 128, offset: 1088)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2861, file: !2862, line: 142, baseType: !1521, size: 512, offset: 1216)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2861, file: !2862, line: 143, baseType: !1529, size: 64, offset: 1728)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2861, file: !2862, line: 150, baseType: !2906, size: 256, offset: 1792)
!2906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2907, size: 256, elements: !751)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2862, line: 38, size: 128, elements: !2908)
!2908 = !{!2909, !2910}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2907, file: !2862, line: 39, baseType: !444, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2907, file: !2862, line: 40, baseType: !444, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2861, file: !2862, line: 156, baseType: !2912, size: 192, offset: 2048)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2862, line: 66, size: 192, elements: !2913)
!2913 = !{!2914}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2912, file: !2862, line: 67, baseType: !2915, size: 192)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2862, line: 47, size: 192, elements: !2916)
!2916 = !{!2917, !2918, !2919}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2915, file: !2862, line: 48, baseType: !638, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2915, file: !2862, line: 49, baseType: !638, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2915, file: !2862, line: 50, baseType: !638, size: 64, offset: 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2861, file: !2862, line: 160, baseType: !2784, size: 640, offset: 2240)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2861, file: !2862, line: 163, baseType: !2922, size: 256, offset: 2880)
!2922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1765, size: 256, elements: !862)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2861, file: !2862, line: 169, baseType: !1765, size: 64, offset: 3136)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2861, file: !2862, line: 172, baseType: !46, size: 32, offset: 3200)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2861, file: !2862, line: 174, baseType: !2926, size: 64, offset: 3264)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2862, line: 174, flags: DIFlagFwdDecl)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2861, file: !2862, line: 185, baseType: !2929, size: 64, offset: 3328)
!2929 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !413, line: 860, baseType: !2930)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !413, line: 853, size: 64, elements: !2931)
!2931 = !{!2932, !2933}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2930, file: !413, line: 858, baseType: !412, size: 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2930, file: !413, line: 859, baseType: !220, size: 32, offset: 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2861, file: !2862, line: 186, baseType: !444, size: 64, offset: 3392)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2861, file: !2862, line: 186, baseType: !444, size: 64, offset: 3456)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2861, file: !2862, line: 186, baseType: !444, size: 64, offset: 3520)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2861, file: !2862, line: 186, baseType: !444, size: 64, offset: 3584)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2861, file: !2862, line: 187, baseType: !444, size: 64, offset: 3648)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2861, file: !2862, line: 188, baseType: !444, size: 64, offset: 3712)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2861, file: !2862, line: 189, baseType: !2772, size: 192, offset: 3776)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2861, file: !2862, line: 190, baseType: !340, size: 64, offset: 3968)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2861, file: !2862, line: 190, baseType: !340, size: 64, offset: 4032)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2861, file: !2862, line: 190, baseType: !340, size: 64, offset: 4096)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2861, file: !2862, line: 190, baseType: !340, size: 64, offset: 4160)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2861, file: !2862, line: 191, baseType: !340, size: 64, offset: 4224)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2861, file: !2862, line: 191, baseType: !340, size: 64, offset: 4288)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2861, file: !2862, line: 191, baseType: !340, size: 64, offset: 4352)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2861, file: !2862, line: 191, baseType: !340, size: 64, offset: 4416)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2861, file: !2862, line: 192, baseType: !340, size: 64, offset: 4480)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2861, file: !2862, line: 192, baseType: !340, size: 64, offset: 4544)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2861, file: !2862, line: 192, baseType: !340, size: 64, offset: 4608)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2861, file: !2862, line: 192, baseType: !340, size: 64, offset: 4672)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2861, file: !2862, line: 193, baseType: !340, size: 64, offset: 4736)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2861, file: !2862, line: 193, baseType: !340, size: 64, offset: 4800)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2861, file: !2862, line: 194, baseType: !2956, size: 448, offset: 4864)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2957, line: 12, size: 448, elements: !2958)
!2957 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2958 = !{!2959, !2960, !2961, !2962, !2963, !2964, !2965}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2956, file: !2957, line: 15, baseType: !444, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2956, file: !2957, line: 17, baseType: !444, size: 64, offset: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2956, file: !2957, line: 19, baseType: !444, size: 64, offset: 128)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2956, file: !2957, line: 21, baseType: !444, size: 64, offset: 192)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2956, file: !2957, line: 29, baseType: !444, size: 64, offset: 256)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2956, file: !2957, line: 35, baseType: !444, size: 64, offset: 320)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2956, file: !2957, line: 44, baseType: !444, size: 64, offset: 384)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2861, file: !2862, line: 202, baseType: !446, size: 64, offset: 5312)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2861, file: !2862, line: 213, baseType: !2968, size: 2048, offset: 5376)
!2968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2969, size: 2048, elements: !2807)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2970, line: 43, size: 128, elements: !2971)
!2970 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2971 = !{!2972, !2973}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2969, file: !2970, line: 44, baseType: !339, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2969, file: !2970, line: 45, baseType: !339, size: 64, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2861, file: !2862, line: 216, baseType: !2975, size: 448, offset: 7424)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2862, line: 30, size: 448, elements: !2976)
!2976 = !{!2977, !2978, !2979, !2980, !2981, !2982, !2983}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2975, file: !2862, line: 31, baseType: !46, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2975, file: !2862, line: 32, baseType: !326, size: 64, offset: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2975, file: !2862, line: 33, baseType: !340, size: 64, offset: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2975, file: !2862, line: 34, baseType: !444, size: 64, offset: 192)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2975, file: !2862, line: 34, baseType: !444, size: 64, offset: 256)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2975, file: !2862, line: 35, baseType: !340, size: 64, offset: 320)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2975, file: !2862, line: 35, baseType: !340, size: 64, offset: 384)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2861, file: !2862, line: 219, baseType: !2985, size: 64, offset: 7872)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2862, line: 219, flags: DIFlagFwdDecl)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2861, file: !2862, line: 222, baseType: !7, size: 32, offset: 7936)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2861, file: !2862, line: 223, baseType: !2989, size: 64, offset: 8000)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2862, line: 223, flags: DIFlagFwdDecl)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2861, file: !2862, line: 230, baseType: !712, size: 8, offset: 8064)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2861, file: !2862, line: 231, baseType: !770, size: 16, offset: 8080)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2861, file: !2862, line: 232, baseType: !770, size: 16, offset: 8096)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2861, file: !2862, line: 234, baseType: !1697, size: 64, offset: 8128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2861, file: !2862, line: 237, baseType: !632, size: 256, offset: 8192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2861, file: !2862, line: 243, baseType: !1294, size: 320, offset: 8448)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1401, file: !1076, line: 1111, baseType: !2998, size: 64, offset: 15424)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2862, line: 20, size: 16640, elements: !3000)
!3000 = !{!3001, !3002, !3003, !3004}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2999, file: !2862, line: 21, baseType: !220, size: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2999, file: !2862, line: 22, baseType: !1414, size: 32, offset: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2999, file: !2862, line: 23, baseType: !1387, size: 192, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2999, file: !2862, line: 24, baseType: !3005, size: 16384, offset: 256)
!3005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3006, size: 16384, elements: !295)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1817, line: 51, size: 256, elements: !3007)
!3007 = !{!3008}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3006, file: !1817, line: 52, baseType: !3009, size: 256)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1817, line: 37, size: 256, elements: !3010)
!3010 = !{!3011, !3018, !3019, !3023}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3009, file: !1817, line: 39, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3013, line: 83, baseType: !3014)
!3013 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3013, line: 82, baseType: !3016)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{null, !46}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3009, file: !1817, line: 40, baseType: !340, size: 64, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3009, file: !1817, line: 46, baseType: !3020, size: 64, offset: 128)
!3020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3013, line: 86, baseType: !3021)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3013, line: 85, baseType: !997)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3009, file: !1817, line: 48, baseType: !2876, size: 64, offset: 192)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1401, file: !1076, line: 1112, baseType: !2876, size: 64, offset: 15488)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1401, file: !1076, line: 1113, baseType: !2876, size: 64, offset: 15552)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1401, file: !1076, line: 1115, baseType: !2876, size: 64, offset: 15616)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1401, file: !1076, line: 1116, baseType: !2872, size: 192, offset: 15680)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1401, file: !1076, line: 1117, baseType: !340, size: 64, offset: 15872)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1401, file: !1076, line: 1118, baseType: !337, size: 64, offset: 15936)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1401, file: !1076, line: 1119, baseType: !7, size: 32, offset: 16000)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1401, file: !1076, line: 1121, baseType: !851, size: 64, offset: 16064)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1401, file: !1076, line: 1125, baseType: !3033, size: 64, offset: 16128)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1076, line: 43, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1401, file: !1076, line: 1127, baseType: !377, size: 32, offset: 16192)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1401, file: !1076, line: 1128, baseType: !7, size: 32, offset: 16224)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1401, file: !1076, line: 1130, baseType: !3038, size: 128, offset: 16256)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3039, line: 37, size: 128, elements: !3040)
!3039 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3040 = !{!3041, !3042, !3043}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3038, file: !3039, line: 38, baseType: !46, size: 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3038, file: !3039, line: 39, baseType: !240, size: 32, offset: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3038, file: !3039, line: 40, baseType: !3044, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3039, line: 24, flags: DIFlagFwdDecl)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1401, file: !1076, line: 1131, baseType: !3047, size: 256, offset: 16384)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3048, line: 12, size: 256, elements: !3049)
!3048 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3049 = !{!3050, !3051, !3052, !3053}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3047, file: !3048, line: 13, baseType: !290, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3047, file: !3048, line: 14, baseType: !340, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3047, file: !3048, line: 15, baseType: !340, size: 64, offset: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3047, file: !3048, line: 16, baseType: !712, size: 8, offset: 192)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1401, file: !1076, line: 1134, baseType: !444, size: 64, offset: 16640)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1401, file: !1076, line: 1135, baseType: !444, size: 64, offset: 16704)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1401, file: !1076, line: 1138, baseType: !220, size: 32, offset: 16768)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1401, file: !1076, line: 1141, baseType: !590, size: 32, offset: 16800)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1401, file: !1076, line: 1143, baseType: !3059, size: 64, offset: 16832)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1076, line: 735, size: 64, elements: !3060)
!3060 = !{!3061}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3059, file: !1076, line: 736, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1401, file: !1076, line: 1147, baseType: !1580, size: 128, offset: 16896)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1401, file: !1076, line: 1149, baseType: !1400, size: 64, offset: 17024)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1401, file: !1076, line: 1151, baseType: !3066, size: 64, offset: 17088)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1076, line: 1151, flags: DIFlagFwdDecl)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1401, file: !1076, line: 1188, baseType: !362, size: 64, offset: 17152)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1401, file: !1076, line: 1191, baseType: !3070, size: 64, offset: 17216)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1076, line: 44, flags: DIFlagFwdDecl)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1401, file: !1076, line: 1194, baseType: !3073, size: 64, offset: 17280)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1076, line: 45, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1401, file: !1076, line: 1197, baseType: !3076, size: 64, offset: 17344)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1076, line: 61, flags: DIFlagFwdDecl)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1401, file: !1076, line: 1199, baseType: !3079, size: 64, offset: 17408)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3081, line: 99, size: 128, elements: !3082)
!3081 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3082 = !{!3083, !3084, !3085}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3080, file: !3081, line: 100, baseType: !636, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3080, file: !3081, line: 101, baseType: !240, size: 32, offset: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3080, file: !3081, line: 103, baseType: !260, size: 16, offset: 96)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1401, file: !1076, line: 1202, baseType: !3087, size: 64, offset: 17472)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1076, line: 48, flags: DIFlagFwdDecl)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1401, file: !1076, line: 1205, baseType: !340, size: 64, offset: 17536)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1401, file: !1076, line: 1206, baseType: !3091, size: 64, offset: 17600)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1817, line: 14, baseType: !3093)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1817, line: 12, size: 384, elements: !3094)
!3094 = !{!3095}
!3095 = !DIDerivedType(tag: DW_TAG_member, scope: !3093, file: !1817, line: 13, baseType: !3096, size: 384)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3093, file: !1817, line: 13, size: 384, elements: !3097)
!3097 = !{!3098, !3099, !3100, !3101}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3096, file: !1817, line: 13, baseType: !46, size: 32)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3096, file: !1817, line: 13, baseType: !46, size: 32, offset: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3096, file: !1817, line: 13, baseType: !46, size: 32, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3096, file: !1817, line: 13, baseType: !3102, size: 256, offset: 128)
!3102 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3103, line: 37, size: 256, elements: !3104)
!3103 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3104 = !{!3105, !3110, !3123, !3129, !3138, !3165, !3170}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3102, file: !3103, line: 42, baseType: !3106, size: 64)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3102, file: !3103, line: 39, size: 64, elements: !3107)
!3107 = !{!3108, !3109}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3106, file: !3103, line: 40, baseType: !2749, size: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3106, file: !3103, line: 41, baseType: !383, size: 32, offset: 32)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3102, file: !3103, line: 50, baseType: !3111, size: 192)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3102, file: !3103, line: 45, size: 192, elements: !3112)
!3112 = !{!3113, !3115, !3116, !3122}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3111, file: !3103, line: 46, baseType: !3114, size: 32)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !324, line: 95, baseType: !46)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3111, file: !3103, line: 47, baseType: !46, size: 32, offset: 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3111, file: !3103, line: 48, baseType: !3117, size: 64, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3103, line: 11, baseType: !3118)
!3118 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3103, line: 8, size: 64, elements: !3119)
!3119 = !{!3120, !3121}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3118, file: !3103, line: 9, baseType: !46, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3118, file: !3103, line: 10, baseType: !362, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3111, file: !3103, line: 49, baseType: !46, size: 32, offset: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3102, file: !3103, line: 57, baseType: !3124, size: 128)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3102, file: !3103, line: 53, size: 128, elements: !3125)
!3125 = !{!3126, !3127, !3128}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3124, file: !3103, line: 54, baseType: !2749, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3124, file: !3103, line: 55, baseType: !383, size: 32, offset: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3124, file: !3103, line: 56, baseType: !3117, size: 64, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3102, file: !3103, line: 66, baseType: !3130, size: 256)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3102, file: !3103, line: 60, size: 256, elements: !3131)
!3131 = !{!3132, !3133, !3134, !3135, !3137}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3130, file: !3103, line: 61, baseType: !2749, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3130, file: !3103, line: 62, baseType: !383, size: 32, offset: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3130, file: !3103, line: 63, baseType: !46, size: 32, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3130, file: !3103, line: 64, baseType: !3136, size: 64, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !324, line: 94, baseType: !325)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3130, file: !3103, line: 65, baseType: !3136, size: 64, offset: 192)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3102, file: !3103, line: 105, baseType: !3139, size: 256)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3102, file: !3103, line: 69, size: 256, elements: !3140)
!3140 = !{!3141, !3142}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3139, file: !3103, line: 70, baseType: !362, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, scope: !3139, file: !3103, line: 79, baseType: !3143, size: 192, offset: 64)
!3143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3139, file: !3103, line: 79, size: 192, elements: !3144)
!3144 = !{!3145, !3146, !3147, !3154, !3159}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3143, file: !3103, line: 81, baseType: !46, size: 32)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3143, file: !3103, line: 86, baseType: !770, size: 16)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3143, file: !3103, line: 92, baseType: !3148, size: 192)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3143, file: !3103, line: 88, size: 192, elements: !3149)
!3149 = !{!3150, !3152, !3153}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3148, file: !3103, line: 89, baseType: !3151, size: 64)
!3151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 64, elements: !1564)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3148, file: !3103, line: 90, baseType: !362, size: 64, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3148, file: !3103, line: 91, baseType: !362, size: 64, offset: 128)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3143, file: !3103, line: 97, baseType: !3155, size: 96)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3143, file: !3103, line: 94, size: 96, elements: !3156)
!3156 = !{!3157, !3158}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3155, file: !3103, line: 95, baseType: !3151, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3155, file: !3103, line: 96, baseType: !441, size: 32, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3143, file: !3103, line: 103, baseType: !3160, size: 128)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3143, file: !3103, line: 99, size: 128, elements: !3161)
!3161 = !{!3162, !3163, !3164}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3160, file: !3103, line: 100, baseType: !340, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3160, file: !3103, line: 101, baseType: !441, size: 32, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3160, file: !3103, line: 102, baseType: !441, size: 32, offset: 96)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3102, file: !3103, line: 111, baseType: !3166, size: 128)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3102, file: !3103, line: 108, size: 128, elements: !3167)
!3167 = !{!3168, !3169}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3166, file: !3103, line: 109, baseType: !326, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3166, file: !3103, line: 110, baseType: !46, size: 32, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3102, file: !3103, line: 118, baseType: !3171, size: 128)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3102, file: !3103, line: 114, size: 128, elements: !3172)
!3172 = !{!3173, !3174, !3175}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3171, file: !3103, line: 115, baseType: !362, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3171, file: !3103, line: 116, baseType: !46, size: 32, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3171, file: !3103, line: 117, baseType: !7, size: 32, offset: 96)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1401, file: !1076, line: 1208, baseType: !2956, size: 448, offset: 17664)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1401, file: !1076, line: 1215, baseType: !444, size: 64, offset: 18112)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1401, file: !1076, line: 1217, baseType: !444, size: 64, offset: 18176)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1401, file: !1076, line: 1219, baseType: !444, size: 64, offset: 18240)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1401, file: !1076, line: 1223, baseType: !3181, size: 64, offset: 18304)
!3181 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3182, line: 99, baseType: !3183)
!3182 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3182, line: 99, size: 64, elements: !3184)
!3184 = !{!3185}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3183, file: !3182, line: 99, baseType: !1648, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1401, file: !1076, line: 1225, baseType: !412, size: 32, offset: 18368)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1401, file: !1076, line: 1226, baseType: !46, size: 32, offset: 18400)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1401, file: !1076, line: 1227, baseType: !46, size: 32, offset: 18432)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1401, file: !1076, line: 1231, baseType: !3190, size: 64, offset: 18496)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1076, line: 1231, flags: DIFlagFwdDecl)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1401, file: !1076, line: 1233, baseType: !206, size: 128, offset: 18560)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1401, file: !1076, line: 1240, baseType: !3194, size: 64, offset: 18688)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1076, line: 62, flags: DIFlagFwdDecl)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1401, file: !1076, line: 1242, baseType: !3197, size: 64, offset: 18752)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3199, line: 392, size: 96, elements: !3200)
!3199 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3200 = !{!3201, !3207, !3209}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3198, file: !3199, line: 393, baseType: !3202, size: 32)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3199, line: 388, size: 32, elements: !3203)
!3203 = !{!3204}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3202, file: !3199, line: 389, baseType: !3205, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3206, line: 46, baseType: !440)
!3206 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3198, file: !3199, line: 394, baseType: !3208, size: 32, offset: 32)
!3208 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3206, line: 42, baseType: !628)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3198, file: !3199, line: 395, baseType: !3205, size: 32, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1401, file: !1076, line: 1244, baseType: !206, size: 128, offset: 18816)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1401, file: !1076, line: 1245, baseType: !3212, size: 64, offset: 18944)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1076, line: 51, flags: DIFlagFwdDecl)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1401, file: !1076, line: 1246, baseType: !632, size: 256, offset: 19008)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1401, file: !1076, line: 1247, baseType: !7, size: 32, offset: 19264)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1401, file: !1076, line: 1250, baseType: !3217, size: 64, offset: 19328)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1076, line: 57, flags: DIFlagFwdDecl)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1401, file: !1076, line: 1251, baseType: !632, size: 256, offset: 19392)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1401, file: !1076, line: 1252, baseType: !206, size: 128, offset: 19648)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1401, file: !1076, line: 1259, baseType: !2438, size: 64, offset: 19776)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1401, file: !1076, line: 1260, baseType: !770, size: 16, offset: 19840)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1401, file: !1076, line: 1261, baseType: !770, size: 16, offset: 19856)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1401, file: !1076, line: 1314, baseType: !3225, size: 64, offset: 19904)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3227, line: 62, size: 256, align: 256, elements: !3228)
!3227 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3228 = !{!3229, !3230, !3231, !3232, !3233, !3234, !3235}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3226, file: !3227, line: 75, baseType: !441, size: 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3226, file: !3227, line: 90, baseType: !441, size: 32, offset: 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3226, file: !3227, line: 112, baseType: !445, size: 64, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3226, file: !3227, line: 132, baseType: !441, size: 32, offset: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3226, file: !3227, line: 140, baseType: !441, size: 32, offset: 160)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3226, file: !3227, line: 149, baseType: !441, size: 32, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3226, file: !3227, line: 154, baseType: !3236, offset: 224)
!3236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, elements: !1831)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1401, file: !1076, line: 1315, baseType: !440, size: 32, offset: 19968)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1401, file: !1076, line: 1316, baseType: !440, size: 32, offset: 20000)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1401, file: !1076, line: 1321, baseType: !340, size: 64, offset: 20032)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1401, file: !1076, line: 1325, baseType: !46, size: 32, offset: 20096)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1401, file: !1076, line: 1326, baseType: !46, size: 32, offset: 20128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1401, file: !1076, line: 1327, baseType: !46, size: 32, offset: 20160)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1401, file: !1076, line: 1328, baseType: !46, size: 32, offset: 20192)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1401, file: !1076, line: 1329, baseType: !852, size: 128, align: 64, offset: 20224)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1401, file: !1076, line: 1332, baseType: !3246, size: 128, offset: 20352)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3247, line: 51, size: 128, elements: !3248)
!3247 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3248 = !{!3249, !3254, !3255}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3246, file: !3247, line: 60, baseType: !3250, size: 64)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3251, line: 7, size: 64, elements: !3252)
!3251 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3252 = !{!3253}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3250, file: !3251, line: 12, baseType: !1645, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3246, file: !3247, line: 63, baseType: !712, size: 8, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3246, file: !3247, line: 70, baseType: !712, size: 8, offset: 72)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1401, file: !1076, line: 1335, baseType: !2490, size: 64, offset: 20480)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1401, file: !1076, line: 1337, baseType: !3258, size: 128, offset: 20544)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3247, line: 39, size: 128, elements: !3259)
!3259 = !{!3260, !3261, !3262}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3258, file: !3247, line: 40, baseType: !2277, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3258, file: !3247, line: 42, baseType: !441, size: 32, offset: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3258, file: !3247, line: 43, baseType: !441, size: 32, offset: 96)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1401, file: !1076, line: 1340, baseType: !3264, size: 64, offset: 20672)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1076, line: 69, flags: DIFlagFwdDecl)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1401, file: !1076, line: 1351, baseType: !46, size: 32, offset: 20736)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1401, file: !1076, line: 1352, baseType: !46, size: 32, offset: 20768)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1401, file: !1076, line: 1354, baseType: !340, size: 64, offset: 20800)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1401, file: !1076, line: 1364, baseType: !444, size: 64, offset: 20864)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1401, file: !1076, line: 1365, baseType: !444, size: 64, offset: 20928)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1401, file: !1076, line: 1412, baseType: !340, size: 64, offset: 20992)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1401, file: !1076, line: 1453, baseType: !3273, size: 64, offset: 21056)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1076, line: 1453, flags: DIFlagFwdDecl)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1401, file: !1076, line: 1457, baseType: !3276, size: 64, offset: 21120)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !153, line: 61, size: 576, elements: !3278)
!3278 = !{!3279, !3280, !3299, !3302, !3303, !3336, !3346}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3277, file: !153, line: 62, baseType: !152, size: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, scope: !3277, file: !153, line: 64, baseType: !3281, size: 192, offset: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3277, file: !153, line: 64, size: 192, elements: !3282)
!3282 = !{!3283, !3294}
!3283 = !DIDerivedType(tag: DW_TAG_member, scope: !3281, file: !153, line: 65, baseType: !3284, size: 192)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3281, file: !153, line: 65, size: 192, elements: !3285)
!3285 = !{!3286, !3293}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3284, file: !153, line: 66, baseType: !3287, size: 128)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3288, line: 50, size: 128, elements: !3289)
!3288 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3289 = !{!3290, !3291, !3292}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3287, file: !3288, line: 52, baseType: !340, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3287, file: !3288, line: 54, baseType: !7, size: 32, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3287, file: !3288, line: 55, baseType: !7, size: 32, offset: 96)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3284, file: !153, line: 67, baseType: !340, size: 64, offset: 128)
!3294 = !DIDerivedType(tag: DW_TAG_member, scope: !3281, file: !153, line: 70, baseType: !3295, size: 192)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3281, file: !153, line: 70, size: 192, elements: !3296)
!3296 = !{!3297, !3298}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3295, file: !153, line: 71, baseType: !852, size: 128, align: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3295, file: !153, line: 72, baseType: !340, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3277, file: !153, line: 76, baseType: !3300, size: 64, offset: 256)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !153, line: 76, flags: DIFlagFwdDecl)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3277, file: !153, line: 77, baseType: !340, size: 64, offset: 320)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3277, file: !153, line: 79, baseType: !3304, size: 64, offset: 384)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3288, line: 25, size: 256, elements: !3306)
!3306 = !{!3307, !3313, !3317}
!3307 = !DIDerivedType(tag: DW_TAG_member, scope: !3305, file: !3288, line: 26, baseType: !3308, size: 128)
!3308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3305, file: !3288, line: 26, size: 128, elements: !3309)
!3309 = !{!3310, !3312}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3308, file: !3288, line: 27, baseType: !3311, size: 128)
!3311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 128, elements: !2807)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3308, file: !3288, line: 28, baseType: !3311, size: 128)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3305, file: !3288, line: 31, baseType: !3314, size: 64, offset: 128)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3316)
!3316 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3288, line: 23, flags: DIFlagFwdDecl)
!3317 = !DIDerivedType(tag: DW_TAG_member, scope: !3305, file: !3288, line: 33, baseType: !3318, size: 64, offset: 192)
!3318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3305, file: !3288, line: 33, size: 64, elements: !3319)
!3319 = !{!3320, !3326, !3331}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3318, file: !3288, line: 38, baseType: !3321, size: 64)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3318, file: !3288, line: 34, size: 64, elements: !3322)
!3322 = !{!3323, !3324, !3325}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3321, file: !3288, line: 35, baseType: !628, size: 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3321, file: !3288, line: 36, baseType: !248, size: 8, offset: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3321, file: !3288, line: 37, baseType: !248, size: 8, offset: 40)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3318, file: !3288, line: 42, baseType: !3327, size: 16)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3318, file: !3288, line: 39, size: 16, elements: !3328)
!3328 = !{!3329, !3330}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3327, file: !3288, line: 40, baseType: !248, size: 8)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3327, file: !3288, line: 41, baseType: !248, size: 8, offset: 8)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3318, file: !3288, line: 46, baseType: !3332, size: 16)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3318, file: !3288, line: 43, size: 16, elements: !3333)
!3333 = !{!3334, !3335}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3332, file: !3288, line: 44, baseType: !248, size: 8)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3332, file: !3288, line: 45, baseType: !248, size: 8, offset: 8)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3277, file: !153, line: 81, baseType: !3337, size: 64, offset: 448)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !153, line: 85, size: 384, elements: !3339)
!3339 = !{!3340, !3341, !3342, !3343, !3344, !3345}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3338, file: !153, line: 86, baseType: !3300, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3338, file: !153, line: 87, baseType: !340, size: 64, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3338, file: !153, line: 88, baseType: !340, size: 64, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3338, file: !153, line: 89, baseType: !340, size: 64, offset: 192)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3338, file: !153, line: 90, baseType: !712, size: 8, offset: 256)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3338, file: !153, line: 92, baseType: !3337, size: 64, offset: 320)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3277, file: !153, line: 82, baseType: !7, size: 32, offset: 512)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1401, file: !1076, line: 1463, baseType: !3348, offset: 21184)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1076, line: 739, elements: !921)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1401, file: !1076, line: 1470, baseType: !852, size: 128, align: 64, offset: 21184)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1401, file: !1076, line: 1471, baseType: !1414, size: 32, offset: 21312)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1401, file: !1076, line: 1472, baseType: !46, size: 32, offset: 21344)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1401, file: !1076, line: 1474, baseType: !1400, size: 64, offset: 21376)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1401, file: !1076, line: 1475, baseType: !874, size: 320, offset: 21440)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1401, file: !1076, line: 1478, baseType: !3355, size: 64, offset: 21760)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3357, line: 49, size: 512, elements: !3358)
!3357 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3358 = !{!3359, !3360, !3361, !3362, !3363, !3365, !3366, !3367, !3369}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3356, file: !3357, line: 50, baseType: !3355, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3356, file: !3357, line: 51, baseType: !362, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3356, file: !3357, line: 52, baseType: !340, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3356, file: !3357, line: 53, baseType: !340, size: 64, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3356, file: !3357, line: 54, baseType: !3364, size: 64, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3356, file: !3357, line: 56, baseType: !7, size: 32, offset: 320)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3356, file: !3357, line: 58, baseType: !7, size: 32, offset: 352)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3356, file: !3357, line: 59, baseType: !3368, size: 64, offset: 384)
!3368 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !207, line: 159, baseType: !444)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3356, file: !3357, line: 60, baseType: !2629, size: 64, offset: 448)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1401, file: !1076, line: 1482, baseType: !1414, size: 32, offset: 21824)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1401, file: !1076, line: 1489, baseType: !362, size: 64, offset: 21888)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1401, file: !1076, line: 1504, baseType: !362, size: 64, offset: 21952)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1401, file: !1076, line: 1505, baseType: !445, size: 64, offset: 22016)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1401, file: !1076, line: 1506, baseType: !444, size: 64, offset: 22080)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1401, file: !1076, line: 1507, baseType: !445, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1401, file: !1076, line: 1508, baseType: !445, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1401, file: !1076, line: 1509, baseType: !445, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1401, file: !1076, line: 1510, baseType: !852, size: 128, align: 64, offset: 22208)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1401, file: !1076, line: 1511, baseType: !46, size: 32, offset: 22336)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1401, file: !1076, line: 1515, baseType: !3381, size: 64, offset: 22400)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1428, line: 56, size: 64, elements: !3382)
!3382 = !{!3383}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3381, file: !1428, line: 57, baseType: !1431, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1401, file: !1076, line: 1518, baseType: !3381, size: 64, offset: 22464)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1401, file: !1076, line: 1528, baseType: !852, size: 128, align: 64, offset: 22528)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1401, file: !1076, line: 1552, baseType: !3387, size: 35328, offset: 23040)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3388, line: 430, size: 35328, elements: !3389)
!3388 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3389 = !{!3390, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3419, !3420, !3421, !3422, !3423, !3424, !3427, !3428, !3429, !3430}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3387, file: !3388, line: 432, baseType: !3391, size: 192)
!3391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3392, size: 192, elements: !291)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3393, line: 16, size: 64, elements: !3394)
!3393 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3394 = !{!3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3392, file: !3393, line: 17, baseType: !258, size: 16)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3392, file: !3393, line: 18, baseType: !258, size: 16, offset: 16)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3392, file: !3393, line: 19, baseType: !258, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3392, file: !3393, line: 19, baseType: !258, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3392, file: !3393, line: 19, baseType: !258, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3392, file: !3393, line: 19, baseType: !258, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3392, file: !3393, line: 19, baseType: !258, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3392, file: !3393, line: 20, baseType: !258, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3392, file: !3393, line: 20, baseType: !258, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3392, file: !3393, line: 20, baseType: !258, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3392, file: !3393, line: 20, baseType: !258, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3392, file: !3393, line: 20, baseType: !258, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3392, file: !3393, line: 20, baseType: !258, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3387, file: !3388, line: 436, baseType: !340, size: 64, offset: 192)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3387, file: !3388, line: 440, baseType: !260, size: 16, offset: 256)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3387, file: !3388, line: 441, baseType: !260, size: 16, offset: 272)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3387, file: !3388, line: 442, baseType: !260, size: 16, offset: 288)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3387, file: !3388, line: 443, baseType: !260, size: 16, offset: 304)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3387, file: !3388, line: 447, baseType: !340, size: 64, offset: 320)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3387, file: !3388, line: 448, baseType: !340, size: 64, offset: 384)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3387, file: !3388, line: 459, baseType: !3416, size: 256, offset: 448)
!3416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3417, size: 256, elements: !862)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3388, line: 428, flags: DIFlagFwdDecl)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3387, file: !3388, line: 461, baseType: !340, size: 64, offset: 704)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3387, file: !3388, line: 463, baseType: !340, size: 64, offset: 768)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3387, file: !3388, line: 465, baseType: !340, size: 64, offset: 832)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3387, file: !3388, line: 466, baseType: !340, size: 64, offset: 896)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3387, file: !3388, line: 467, baseType: !340, size: 64, offset: 960)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3387, file: !3388, line: 473, baseType: !3425, size: 64, offset: 1024)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3388, line: 10, flags: DIFlagFwdDecl)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3387, file: !3388, line: 480, baseType: !340, size: 64, offset: 1088)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3387, file: !3388, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3387, file: !3388, line: 491, baseType: !440, size: 32, offset: 1184)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3387, file: !3388, line: 501, baseType: !3431, size: 33792, offset: 1536)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3432, line: 448, size: 33792, elements: !3433)
!3432 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3433 = !{!3434, !3435, !3436, !3598, !3599, !3605, !3606}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3431, file: !3432, line: 461, baseType: !7, size: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3431, file: !3432, line: 468, baseType: !340, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3431, file: !3432, line: 476, baseType: !3437, size: 64, offset: 128)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3432, line: 356, size: 33280, align: 512, elements: !3439)
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3438, file: !3432, line: 358, baseType: !7, size: 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3438, file: !3432, line: 361, baseType: !7, size: 32, offset: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3438, file: !3432, line: 364, baseType: !444, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3438, file: !3432, line: 367, baseType: !444, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3438, file: !3432, line: 370, baseType: !444, size: 64, offset: 192)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3438, file: !3432, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3438, file: !3432, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3438, file: !3432, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3438, file: !3432, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3438, file: !3432, line: 397, baseType: !3450, size: 32768, offset: 512)
!3450 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3432, line: 348, size: 32768, elements: !3451)
!3451 = !{!3452, !3467, !3504, !3581, !3594}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3450, file: !3432, line: 349, baseType: !3453, size: 896)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3432, line: 12, size: 896, elements: !3454)
!3454 = !{!3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3466}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3453, file: !3432, line: 13, baseType: !440, size: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3453, file: !3432, line: 14, baseType: !440, size: 32, offset: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3453, file: !3432, line: 15, baseType: !440, size: 32, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3453, file: !3432, line: 16, baseType: !440, size: 32, offset: 96)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3453, file: !3432, line: 17, baseType: !440, size: 32, offset: 128)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3453, file: !3432, line: 18, baseType: !440, size: 32, offset: 160)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3453, file: !3432, line: 19, baseType: !440, size: 32, offset: 192)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3453, file: !3432, line: 22, baseType: !3463, size: 640, offset: 224)
!3463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 640, elements: !3464)
!3464 = !{!3465}
!3465 = !DISubrange(count: 20)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3453, file: !3432, line: 25, baseType: !440, size: 32, offset: 864)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3450, file: !3432, line: 350, baseType: !3468, size: 4096, align: 128)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3432, line: 34, size: 4096, align: 128, elements: !3469)
!3469 = !{!3470, !3471, !3472, !3473, !3474, !3489, !3490, !3491, !3493, !3495, !3499}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3468, file: !3432, line: 35, baseType: !258, size: 16)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3468, file: !3432, line: 36, baseType: !258, size: 16, offset: 16)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3468, file: !3432, line: 37, baseType: !258, size: 16, offset: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3468, file: !3432, line: 38, baseType: !258, size: 16, offset: 48)
!3474 = !DIDerivedType(tag: DW_TAG_member, scope: !3468, file: !3432, line: 39, baseType: !3475, size: 128, offset: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3468, file: !3432, line: 39, size: 128, elements: !3476)
!3476 = !{!3477, !3482}
!3477 = !DIDerivedType(tag: DW_TAG_member, scope: !3475, file: !3432, line: 40, baseType: !3478, size: 128)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3475, file: !3432, line: 40, size: 128, elements: !3479)
!3479 = !{!3480, !3481}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3478, file: !3432, line: 41, baseType: !444, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3478, file: !3432, line: 42, baseType: !444, size: 64, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, scope: !3475, file: !3432, line: 44, baseType: !3483, size: 128)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3475, file: !3432, line: 44, size: 128, elements: !3484)
!3484 = !{!3485, !3486, !3487, !3488}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3483, file: !3432, line: 45, baseType: !440, size: 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3483, file: !3432, line: 46, baseType: !440, size: 32, offset: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3483, file: !3432, line: 47, baseType: !440, size: 32, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3483, file: !3432, line: 48, baseType: !440, size: 32, offset: 96)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3468, file: !3432, line: 51, baseType: !440, size: 32, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3468, file: !3432, line: 52, baseType: !440, size: 32, offset: 224)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3468, file: !3432, line: 55, baseType: !3492, size: 1024, offset: 256)
!3492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 1024, elements: !453)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3468, file: !3432, line: 58, baseType: !3494, size: 2048, offset: 1280)
!3494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 2048, elements: !295)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3468, file: !3432, line: 60, baseType: !3496, size: 384, offset: 3328)
!3496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 384, elements: !3497)
!3497 = !{!3498}
!3498 = !DISubrange(count: 12)
!3499 = !DIDerivedType(tag: DW_TAG_member, scope: !3468, file: !3432, line: 62, baseType: !3500, size: 384, offset: 3712)
!3500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3468, file: !3432, line: 62, size: 384, elements: !3501)
!3501 = !{!3502, !3503}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3500, file: !3432, line: 63, baseType: !3496, size: 384)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3500, file: !3432, line: 64, baseType: !3496, size: 384)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3450, file: !3432, line: 351, baseType: !3505, size: 1088)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3432, line: 79, size: 1088, elements: !3506)
!3506 = !{!3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3580}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3505, file: !3432, line: 80, baseType: !440, size: 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3505, file: !3432, line: 81, baseType: !440, size: 32, offset: 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3505, file: !3432, line: 82, baseType: !440, size: 32, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3505, file: !3432, line: 83, baseType: !440, size: 32, offset: 96)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3505, file: !3432, line: 84, baseType: !440, size: 32, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3505, file: !3432, line: 85, baseType: !440, size: 32, offset: 160)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3505, file: !3432, line: 86, baseType: !440, size: 32, offset: 192)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3505, file: !3432, line: 88, baseType: !3463, size: 640, offset: 224)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3505, file: !3432, line: 89, baseType: !248, size: 8, offset: 864)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3505, file: !3432, line: 90, baseType: !248, size: 8, offset: 872)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3505, file: !3432, line: 91, baseType: !248, size: 8, offset: 880)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3505, file: !3432, line: 92, baseType: !248, size: 8, offset: 888)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3505, file: !3432, line: 93, baseType: !248, size: 8, offset: 896)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3505, file: !3432, line: 94, baseType: !248, size: 8, offset: 904)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3505, file: !3432, line: 95, baseType: !3522, size: 64, offset: 960)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3524, line: 11, size: 128, elements: !3525)
!3524 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3525 = !{!3526, !3527}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3523, file: !3524, line: 12, baseType: !326, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3523, file: !3524, line: 13, baseType: !3528, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3530, line: 103, size: 1344, elements: !3531)
!3530 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3531 = !{!3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3560, !3561, !3562}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3529, file: !3530, line: 109, baseType: !340, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3529, file: !3530, line: 110, baseType: !340, size: 64, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3529, file: !3530, line: 111, baseType: !340, size: 64, offset: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3529, file: !3530, line: 112, baseType: !340, size: 64, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3529, file: !3530, line: 113, baseType: !340, size: 64, offset: 256)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3529, file: !3530, line: 114, baseType: !340, size: 64, offset: 320)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3529, file: !3530, line: 117, baseType: !340, size: 64, offset: 384)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3529, file: !3530, line: 118, baseType: !340, size: 64, offset: 448)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3529, file: !3530, line: 119, baseType: !340, size: 64, offset: 512)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3529, file: !3530, line: 120, baseType: !340, size: 64, offset: 576)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3529, file: !3530, line: 121, baseType: !340, size: 64, offset: 640)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3529, file: !3530, line: 122, baseType: !340, size: 64, offset: 704)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3529, file: !3530, line: 123, baseType: !340, size: 64, offset: 768)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3529, file: !3530, line: 124, baseType: !340, size: 64, offset: 832)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3529, file: !3530, line: 125, baseType: !340, size: 64, offset: 896)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3529, file: !3530, line: 139, baseType: !340, size: 64, offset: 960)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3529, file: !3530, line: 142, baseType: !340, size: 64, offset: 1024)
!3549 = !DIDerivedType(tag: DW_TAG_member, scope: !3529, file: !3530, line: 144, baseType: !3550, size: 64, offset: 1088)
!3550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3529, file: !3530, line: 144, size: 64, elements: !3551)
!3551 = !{!3552, !3553, !3554}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3550, file: !3530, line: 146, baseType: !258, size: 16)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3550, file: !3530, line: 148, baseType: !444, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3550, file: !3530, line: 150, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3530, line: 59, size: 64, elements: !3556)
!3556 = !{!3557, !3558, !3559}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3555, file: !3530, line: 61, baseType: !444, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3555, file: !3530, line: 63, baseType: !444, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3555, file: !3530, line: 65, baseType: !444, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3529, file: !3530, line: 153, baseType: !340, size: 64, offset: 1152)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3529, file: !3530, line: 154, baseType: !340, size: 64, offset: 1216)
!3562 = !DIDerivedType(tag: DW_TAG_member, scope: !3529, file: !3530, line: 156, baseType: !3563, size: 64, offset: 1280)
!3563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3529, file: !3530, line: 156, size: 64, elements: !3564)
!3564 = !{!3565, !3566, !3567}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3563, file: !3530, line: 158, baseType: !258, size: 16)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3563, file: !3530, line: 160, baseType: !444, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3563, file: !3530, line: 162, baseType: !3568, size: 64)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3530, line: 69, size: 64, elements: !3569)
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3568, file: !3530, line: 71, baseType: !444, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3568, file: !3530, line: 73, baseType: !444, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3568, file: !3530, line: 75, baseType: !444, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3568, file: !3530, line: 77, baseType: !444, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3568, file: !3530, line: 80, baseType: !444, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3568, file: !3530, line: 83, baseType: !444, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3568, file: !3530, line: 86, baseType: !444, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3568, file: !3530, line: 88, baseType: !444, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3568, file: !3530, line: 93, baseType: !444, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3568, file: !3530, line: 100, baseType: !444, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3505, file: !3432, line: 96, baseType: !440, size: 32, offset: 1024)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3450, file: !3432, line: 352, baseType: !3582, size: 4608, align: 512)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3432, line: 333, size: 4608, align: 512, elements: !3583)
!3583 = !{!3584, !3585, !3592}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3582, file: !3432, line: 334, baseType: !3468, size: 4096, align: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3582, file: !3432, line: 335, baseType: !3586, size: 512, offset: 4096)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3432, line: 312, size: 512, elements: !3587)
!3587 = !{!3588, !3589, !3590}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3586, file: !3432, line: 313, baseType: !444, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3586, file: !3432, line: 314, baseType: !444, size: 64, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3586, file: !3432, line: 315, baseType: !3591, size: 384, offset: 128)
!3591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 384, elements: !1914)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3582, file: !3432, line: 336, baseType: !3593, offset: 4608)
!3593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, elements: !1831)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3450, file: !3432, line: 353, baseType: !3595, size: 32768)
!3595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 32768, elements: !3596)
!3596 = !{!3597}
!3597 = !DISubrange(count: 4096)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3431, file: !3432, line: 484, baseType: !3437, size: 64, offset: 192)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3431, file: !3432, line: 491, baseType: !3600, size: 128, offset: 256)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3432, line: 404, size: 128, elements: !3601)
!3601 = !{!3602, !3603, !3604}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3600, file: !3432, line: 424, baseType: !444, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3600, file: !3432, line: 432, baseType: !7, size: 32, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3600, file: !3432, line: 440, baseType: !7, size: 32, offset: 96)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3431, file: !3432, line: 498, baseType: !3600, size: 128, offset: 384)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3431, file: !3432, line: 508, baseType: !3438, size: 33280, align: 512, offset: 512)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1377, file: !1378, line: 16, baseType: !1387, size: 192, offset: 512)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1377, file: !1378, line: 17, baseType: !240, size: 32, offset: 704)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !523, file: !160, line: 1240, baseType: !362, size: 64, offset: 6912)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !523, file: !160, line: 1243, baseType: !440, size: 32, offset: 6976)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !523, file: !160, line: 1245, baseType: !1134, size: 64, offset: 7040)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !523, file: !160, line: 1246, baseType: !1134, size: 64, offset: 7104)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !523, file: !160, line: 1248, baseType: !441, size: 32, offset: 7168)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !523, file: !160, line: 1249, baseType: !3615, size: 64, offset: 7232)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !160, line: 634, flags: DIFlagFwdDecl)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !523, file: !160, line: 1252, baseType: !3618, size: 256, offset: 7296)
!3618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 256, elements: !453)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !523, file: !160, line: 1253, baseType: !3620, size: 128, offset: 7552)
!3620 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3621, line: 21, baseType: !3622)
!3621 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3621, line: 19, size: 128, elements: !3623)
!3623 = !{!3624}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3622, file: !3621, line: 20, baseType: !3625, size: 128)
!3625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 128, elements: !2807)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !523, file: !160, line: 1255, baseType: !7, size: 32, offset: 7680)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !523, file: !160, line: 1261, baseType: !632, size: 256, offset: 7744)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !523, file: !160, line: 1267, baseType: !202, size: 64, offset: 8000)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !523, file: !160, line: 1269, baseType: !469, size: 64, offset: 8064)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !523, file: !160, line: 1271, baseType: !3631, size: 448, offset: 8128)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1143, line: 63, size: 448, elements: !3632)
!3632 = !{!3633, !3638, !3639, !3640, !3641, !3642, !3643}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3631, file: !1143, line: 64, baseType: !3634, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!340, !3637, !1141}
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3631, file: !1143, line: 66, baseType: !3634, size: 64, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3631, file: !1143, line: 69, baseType: !326, size: 64, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3631, file: !1143, line: 70, baseType: !46, size: 32, offset: 192)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3631, file: !1143, line: 71, baseType: !7, size: 32, offset: 224)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3631, file: !1143, line: 74, baseType: !206, size: 128, offset: 256)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3631, file: !1143, line: 85, baseType: !3644, size: 64, offset: 384)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !523, file: !160, line: 1274, baseType: !636, size: 64, offset: 8576)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !523, file: !160, line: 1280, baseType: !636, size: 64, offset: 8640)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !523, file: !160, line: 1283, baseType: !46, size: 32, offset: 8704)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !523, file: !160, line: 1286, baseType: !2540, size: 32, offset: 8736)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !523, file: !160, line: 1289, baseType: !954, size: 64, offset: 8768)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !523, file: !160, line: 1290, baseType: !1002, size: 64, offset: 8832)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !523, file: !160, line: 1297, baseType: !1812, size: 64, offset: 8896)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !523, file: !160, line: 1304, baseType: !3653, size: 64, offset: 8960)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3654, line: 49, size: 64, elements: !3655)
!3654 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3655 = !{!3656}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3653, file: !3654, line: 50, baseType: !3657, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3654, line: 41, size: 512, align: 512, elements: !3659)
!3659 = !{!3660, !3661, !3666}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3658, file: !3654, line: 43, baseType: !220, size: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3658, file: !3654, line: 45, baseType: !3662, size: 192, offset: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3654, line: 29, size: 192, elements: !3663)
!3663 = !{!3664, !3665}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3662, file: !3654, line: 30, baseType: !206, size: 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3662, file: !3654, line: 32, baseType: !326, size: 64, offset: 128)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3658, file: !3654, line: 46, baseType: !326, size: 64, offset: 256)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !523, file: !160, line: 1305, baseType: !3653, size: 64, offset: 9024)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !523, file: !160, line: 1306, baseType: !852, size: 128, align: 64, offset: 9088)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !523, file: !160, line: 1307, baseType: !892, size: 256, offset: 9216)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !523, file: !160, line: 1309, baseType: !632, size: 256, offset: 9472)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !523, file: !160, line: 1314, baseType: !46, size: 32, offset: 9728)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !523, file: !160, line: 1317, baseType: !220, size: 32, align: 512, offset: 10240)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !523, file: !160, line: 1318, baseType: !206, size: 128, offset: 10304)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !523, file: !160, line: 1320, baseType: !220, size: 32, offset: 10432)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !523, file: !160, line: 1321, baseType: !206, size: 128, offset: 10496)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !517, file: !518, line: 73, baseType: !46, size: 32, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !517, file: !518, line: 74, baseType: !3678, size: 64, offset: 192)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1855, line: 42, flags: DIFlagFwdDecl)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !471, file: !408, line: 141, baseType: !3682, size: 64, offset: 704)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!46, !1204, !712}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !471, file: !408, line: 142, baseType: !3686, size: 64, offset: 768)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!406, !406, !3689}
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !407, file: !408, line: 96, baseType: !522, size: 64, offset: 832)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !407, file: !408, line: 97, baseType: !340, size: 64, offset: 896)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !407, file: !408, line: 98, baseType: !362, size: 64, offset: 960)
!3694 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !408, line: 100, baseType: !3695, size: 128, offset: 1024)
!3695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !407, file: !408, line: 100, size: 128, elements: !3696)
!3696 = !{!3697, !3698}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3695, file: !408, line: 101, baseType: !206, size: 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3695, file: !408, line: 102, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !407, file: !408, line: 104, baseType: !206, size: 128, offset: 1152)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !407, file: !408, line: 105, baseType: !206, size: 128, offset: 1280)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !407, file: !408, line: 113, baseType: !3703, size: 128, offset: 1408)
!3703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !407, file: !408, line: 109, size: 128, elements: !3704)
!3704 = !{!3705, !3706, !3707}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3703, file: !408, line: 110, baseType: !878, size: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3703, file: !408, line: 111, baseType: !422, size: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3703, file: !408, line: 112, baseType: !852, size: 128, align: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !400, file: !160, line: 1968, baseType: !3709, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!202, !406, !371, !3712}
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3714, line: 10, size: 128, elements: !3715)
!3714 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3715 = !{!3716, !3717}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3713, file: !3714, line: 11, baseType: !675, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3713, file: !3714, line: 12, baseType: !362, size: 64, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !400, file: !160, line: 1969, baseType: !3719, size: 64, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!46, !3678, !371, !46}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !400, file: !160, line: 1970, baseType: !3723, size: 64, offset: 192)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!394, !371, !46, !712}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !400, file: !160, line: 1972, baseType: !3727, size: 64, offset: 256)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!46, !406, !290, !46}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !400, file: !160, line: 1974, baseType: !3731, size: 64, offset: 320)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!46, !3678, !371, !406, !332, !712}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !400, file: !160, line: 1976, baseType: !3735, size: 64, offset: 384)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!46, !406, !371, !406}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !400, file: !160, line: 1977, baseType: !3739, size: 64, offset: 448)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!46, !371, !406}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !400, file: !160, line: 1978, baseType: !3743, size: 64, offset: 512)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!46, !3678, !371, !406, !202}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !400, file: !160, line: 1980, baseType: !3747, size: 64, offset: 576)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!46, !3678, !371, !406, !332}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !400, file: !160, line: 1982, baseType: !3739, size: 64, offset: 640)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !400, file: !160, line: 1983, baseType: !3752, size: 64, offset: 704)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!46, !3678, !371, !406, !332, !527}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !400, file: !160, line: 1985, baseType: !3756, size: 64, offset: 768)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!46, !3678, !371, !406, !371, !406, !7}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !400, file: !160, line: 1987, baseType: !3760, size: 64, offset: 832)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!46, !3678, !406, !3763}
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !160, line: 226, size: 640, elements: !3765)
!3765 = !{!3766, !3767, !3768, !3778, !3787, !3788, !3793, !3794, !3795}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3764, file: !160, line: 227, baseType: !7, size: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3764, file: !160, line: 228, baseType: !332, size: 16, offset: 32)
!3768 = !DIDerivedType(tag: DW_TAG_member, scope: !3764, file: !160, line: 241, baseType: !3769, size: 32, offset: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3764, file: !160, line: 241, size: 32, elements: !3770)
!3770 = !{!3771, !3772}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3769, file: !160, line: 242, baseType: !377, size: 32)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3769, file: !160, line: 243, baseType: !3773, size: 32)
!3773 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3774, line: 16, baseType: !3775)
!3774 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3774, line: 14, size: 32, elements: !3776)
!3776 = !{!3777}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3775, file: !3774, line: 15, baseType: !382, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, scope: !3764, file: !160, line: 245, baseType: !3779, size: 32, offset: 96)
!3779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3764, file: !160, line: 245, size: 32, elements: !3780)
!3780 = !{!3781, !3782}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3779, file: !160, line: 246, baseType: !386, size: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3779, file: !160, line: 247, baseType: !3783, size: 32)
!3783 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3774, line: 20, baseType: !3784)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3774, line: 18, size: 32, elements: !3785)
!3785 = !{!3786}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3784, file: !3774, line: 19, baseType: !390, size: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3764, file: !160, line: 249, baseType: !532, size: 64, offset: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3764, file: !160, line: 250, baseType: !3789, size: 128, offset: 192)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1135, line: 13, size: 128, elements: !3790)
!3790 = !{!3791, !3792}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3789, file: !1135, line: 14, baseType: !1134, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3789, file: !1135, line: 15, baseType: !326, size: 64, offset: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3764, file: !160, line: 251, baseType: !3789, size: 128, offset: 320)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3764, file: !160, line: 252, baseType: !3789, size: 128, offset: 448)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3764, file: !160, line: 259, baseType: !1724, size: 64, offset: 576)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !400, file: !160, line: 1988, baseType: !3797, size: 64, offset: 896)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!46, !3678, !1204, !3800, !440, !7}
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3802, line: 22, size: 1280, elements: !3803)
!3802 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3803 = !{!3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3801, file: !3802, line: 23, baseType: !440, size: 32)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3801, file: !3802, line: 24, baseType: !332, size: 16, offset: 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3801, file: !3802, line: 25, baseType: !7, size: 32, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3801, file: !3802, line: 26, baseType: !1893, size: 32, offset: 96)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3801, file: !3802, line: 27, baseType: !444, size: 64, offset: 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3801, file: !3802, line: 28, baseType: !444, size: 64, offset: 192)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3801, file: !3802, line: 41, baseType: !444, size: 64, offset: 256)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3801, file: !3802, line: 42, baseType: !527, size: 32, offset: 320)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3801, file: !3802, line: 43, baseType: !527, size: 32, offset: 352)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3801, file: !3802, line: 44, baseType: !377, size: 32, offset: 384)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3801, file: !3802, line: 45, baseType: !386, size: 32, offset: 416)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3801, file: !3802, line: 46, baseType: !532, size: 64, offset: 448)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3801, file: !3802, line: 47, baseType: !3789, size: 128, offset: 512)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3801, file: !3802, line: 48, baseType: !3789, size: 128, offset: 640)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3801, file: !3802, line: 49, baseType: !3789, size: 128, offset: 768)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3801, file: !3802, line: 50, baseType: !3789, size: 128, offset: 896)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3801, file: !3802, line: 51, baseType: !444, size: 64, offset: 1024)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3801, file: !3802, line: 52, baseType: !444, size: 64, offset: 1088)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3801, file: !3802, line: 53, baseType: !440, size: 32, offset: 1152)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3801, file: !3802, line: 54, baseType: !440, size: 32, offset: 1184)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3801, file: !3802, line: 55, baseType: !444, size: 64, offset: 1216)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !400, file: !160, line: 1990, baseType: !3826, size: 64, offset: 960)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!322, !406, !290, !337}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !400, file: !160, line: 1991, baseType: !3830, size: 64, offset: 1024)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!46, !371, !3833, !444, !444}
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !160, line: 55, flags: DIFlagFwdDecl)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !400, file: !160, line: 1993, baseType: !3836, size: 64, offset: 1088)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!46, !371, !46}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !400, file: !160, line: 1994, baseType: !3840, size: 64, offset: 1152)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!46, !371, !406, !1724, !7, !332}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !400, file: !160, line: 1997, baseType: !3844, size: 64, offset: 1216)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!46, !3678, !371, !1724, !332}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !400, file: !160, line: 1999, baseType: !3848, size: 64, offset: 1280)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!394, !3678, !406, !46}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !400, file: !160, line: 2001, baseType: !3852, size: 64, offset: 1344)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!46, !3678, !406, !394, !46}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !400, file: !160, line: 2003, baseType: !3856, size: 64, offset: 1408)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!46, !3678, !406, !3859}
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !160, line: 76, flags: DIFlagFwdDecl)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !400, file: !160, line: 2005, baseType: !3862, size: 64, offset: 1472)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!46, !406, !3859}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !400, file: !160, line: 2006, baseType: !3866, size: 64, offset: 1536)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!3869, !371}
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !160, line: 3192, size: 192, elements: !3871)
!3871 = !{!3872, !3873}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3870, file: !160, line: 3193, baseType: !1791, size: 128)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3870, file: !160, line: 3194, baseType: !440, size: 32, offset: 128)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !372, file: !160, line: 655, baseType: !522, size: 64, offset: 448)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !372, file: !160, line: 656, baseType: !367, size: 64, offset: 512)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !372, file: !160, line: 659, baseType: !362, size: 64, offset: 576)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !372, file: !160, line: 663, baseType: !340, size: 64, offset: 640)
!3878 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !160, line: 671, baseType: !3879, size: 32, offset: 704)
!3879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !160, line: 671, size: 32, elements: !3880)
!3880 = !{!3881, !3883}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3879, file: !160, line: 672, baseType: !3882, size: 32)
!3882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3879, file: !160, line: 673, baseType: !7, size: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !372, file: !160, line: 675, baseType: !527, size: 32, offset: 736)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !372, file: !160, line: 676, baseType: !532, size: 64, offset: 768)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !372, file: !160, line: 677, baseType: !3789, size: 128, offset: 832)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !372, file: !160, line: 678, baseType: !3789, size: 128, offset: 960)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !372, file: !160, line: 679, baseType: !3789, size: 128, offset: 1088)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !372, file: !160, line: 680, baseType: !220, size: 32, offset: 1216)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !372, file: !160, line: 681, baseType: !260, size: 16, offset: 1248)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !372, file: !160, line: 682, baseType: !248, size: 8, offset: 1264)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !372, file: !160, line: 683, baseType: !248, size: 8, offset: 1272)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !372, file: !160, line: 684, baseType: !1282, size: 64, offset: 1280)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !372, file: !160, line: 691, baseType: !340, size: 64, offset: 1344)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !372, file: !160, line: 692, baseType: !1294, size: 320, offset: 1408)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !372, file: !160, line: 694, baseType: !340, size: 64, offset: 1728)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !372, file: !160, line: 695, baseType: !340, size: 64, offset: 1792)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !372, file: !160, line: 697, baseType: !878, size: 128, offset: 1856)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !372, file: !160, line: 698, baseType: !206, size: 128, offset: 1984)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !372, file: !160, line: 707, baseType: !206, size: 128, offset: 2112)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !372, file: !160, line: 708, baseType: !206, size: 128, offset: 2240)
!3902 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !160, line: 709, baseType: !3903, size: 128, offset: 2368)
!3903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !160, line: 709, size: 128, elements: !3904)
!3904 = !{!3905, !3906}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3903, file: !160, line: 710, baseType: !1002, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3903, file: !160, line: 711, baseType: !852, size: 128, align: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !372, file: !160, line: 713, baseType: !638, size: 64, offset: 2496)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !372, file: !160, line: 714, baseType: !638, size: 64, offset: 2560)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !372, file: !160, line: 715, baseType: !240, size: 32, offset: 2624)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !372, file: !160, line: 716, baseType: !240, size: 32, offset: 2656)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !372, file: !160, line: 717, baseType: !240, size: 32, offset: 2688)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !372, file: !160, line: 719, baseType: !240, size: 32, offset: 2720)
!3913 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !160, line: 721, baseType: !3914, size: 64, offset: 2752)
!3914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !160, line: 721, size: 64, elements: !3915)
!3915 = !{!3916, !3917}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3914, file: !160, line: 722, baseType: !2034, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3914, file: !160, line: 723, baseType: !1025, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !372, file: !160, line: 725, baseType: !3919, size: 64, offset: 2816)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !160, line: 725, flags: DIFlagFwdDecl)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !372, file: !160, line: 726, baseType: !368, size: 1536, align: 64, offset: 2880)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !372, file: !160, line: 727, baseType: !206, size: 128, offset: 4416)
!3923 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !160, line: 728, baseType: !3924, size: 64, offset: 4544)
!3924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !160, line: 728, size: 64, elements: !3925)
!3925 = !{!3926, !3927, !3930, !3931}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3924, file: !160, line: 729, baseType: !2490, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3924, file: !160, line: 730, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !160, line: 730, flags: DIFlagFwdDecl)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3924, file: !160, line: 731, baseType: !290, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3924, file: !160, line: 732, baseType: !7, size: 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !372, file: !160, line: 735, baseType: !441, size: 32, offset: 4608)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !372, file: !160, line: 738, baseType: !441, size: 32, offset: 4640)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !372, file: !160, line: 739, baseType: !3615, size: 64, offset: 4672)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !372, file: !160, line: 750, baseType: !362, size: 64, offset: 4736)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !368, file: !160, line: 474, baseType: !1791, size: 128, offset: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !368, file: !160, line: 475, baseType: !1294, size: 320, offset: 192)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !368, file: !160, line: 476, baseType: !1146, size: 32, offset: 512)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !368, file: !160, line: 477, baseType: !240, size: 32, offset: 544)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !368, file: !160, line: 482, baseType: !1580, size: 128, offset: 576)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !368, file: !160, line: 483, baseType: !340, size: 64, offset: 704)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !368, file: !160, line: 484, baseType: !340, size: 64, offset: 768)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !368, file: !160, line: 485, baseType: !3944, size: 64, offset: 832)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3946)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !160, line: 404, size: 1280, elements: !3947)
!3947 = !{!3948, !3952, !4022, !4026, !4030, !4036, !4040, !4044, !4049, !4053, !4057, !4061, !4062, !4066, !4070, !4074, !4079, !4083, !4090, !4091}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3946, file: !160, line: 405, baseType: !3949, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!46, !2277, !1037}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3946, file: !160, line: 406, baseType: !3953, size: 64, offset: 64)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!46, !1724, !3956}
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !102, line: 293, size: 1536, elements: !3958)
!3958 = !{!3959, !3989, !4003}
!3959 = !DIDerivedType(tag: DW_TAG_member, scope: !3957, file: !102, line: 295, baseType: !3960, size: 512)
!3960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3957, file: !102, line: 295, size: 512, elements: !3961)
!3961 = !{!3962, !3988}
!3962 = !DIDerivedType(tag: DW_TAG_member, scope: !3960, file: !102, line: 296, baseType: !3963, size: 448)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3960, file: !102, line: 296, size: 448, elements: !3964)
!3964 = !{!3965, !3966, !3975, !3976, !3977, !3986, !3987}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3963, file: !102, line: 298, baseType: !340, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, scope: !3963, file: !102, line: 299, baseType: !3967, size: 128, offset: 64)
!3967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3963, file: !102, line: 299, size: 128, elements: !3968)
!3968 = !{!3969, !3970}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3967, file: !102, line: 300, baseType: !206, size: 128)
!3970 = !DIDerivedType(tag: DW_TAG_member, scope: !3967, file: !102, line: 302, baseType: !3971, size: 128)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3967, file: !102, line: 302, size: 128, elements: !3972)
!3972 = !{!3973, !3974}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3971, file: !102, line: 303, baseType: !362, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3971, file: !102, line: 305, baseType: !7, size: 32, offset: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3963, file: !102, line: 310, baseType: !367, size: 64, offset: 192)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3963, file: !102, line: 311, baseType: !340, size: 64, offset: 256)
!3977 = !DIDerivedType(tag: DW_TAG_member, scope: !3963, file: !102, line: 312, baseType: !3978, size: 64, offset: 320)
!3978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3963, file: !102, line: 312, size: 64, elements: !3979)
!3979 = !{!3980, !3981}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3978, file: !102, line: 313, baseType: !362, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3978, file: !102, line: 314, baseType: !3982, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !102, line: 257, baseType: !3983)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 255, size: 64, elements: !3984)
!3984 = !{!3985}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3983, file: !102, line: 256, baseType: !340, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3963, file: !102, line: 316, baseType: !240, size: 32, offset: 384)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3963, file: !102, line: 317, baseType: !240, size: 32, offset: 416)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3960, file: !102, line: 323, baseType: !2278, size: 512, align: 128)
!3989 = !DIDerivedType(tag: DW_TAG_member, scope: !3957, file: !102, line: 325, baseType: !3990, size: 512, offset: 512)
!3990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3957, file: !102, line: 325, size: 512, elements: !3991)
!3991 = !{!3992, !4002}
!3992 = !DIDerivedType(tag: DW_TAG_member, scope: !3990, file: !102, line: 326, baseType: !3993, size: 320)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3990, file: !102, line: 326, size: 320, elements: !3994)
!3994 = !{!3995, !3996, !3997, !3998, !3999, !4000, !4001}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3993, file: !102, line: 327, baseType: !340, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3993, file: !102, line: 328, baseType: !340, size: 64, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3993, file: !102, line: 329, baseType: !340, size: 64, offset: 128)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3993, file: !102, line: 331, baseType: !240, size: 32, offset: 192)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3993, file: !102, line: 332, baseType: !240, size: 32, offset: 224)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3993, file: !102, line: 333, baseType: !240, size: 32, offset: 256)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3993, file: !102, line: 335, baseType: !7, size: 32, offset: 288)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3990, file: !102, line: 339, baseType: !2278, size: 512, align: 128)
!4003 = !DIDerivedType(tag: DW_TAG_member, scope: !3957, file: !102, line: 341, baseType: !4004, size: 512, offset: 1024)
!4004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3957, file: !102, line: 341, size: 512, elements: !4005)
!4005 = !{!4006, !4015, !4021}
!4006 = !DIDerivedType(tag: DW_TAG_member, scope: !4004, file: !102, line: 342, baseType: !4007, size: 384)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4004, file: !102, line: 342, size: 384, elements: !4008)
!4008 = !{!4009, !4010, !4011, !4012, !4013, !4014}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4007, file: !102, line: 343, baseType: !340, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4007, file: !102, line: 344, baseType: !340, size: 64, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4007, file: !102, line: 346, baseType: !362, size: 64, offset: 128)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4007, file: !102, line: 347, baseType: !362, size: 64, offset: 192)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4007, file: !102, line: 348, baseType: !362, size: 64, offset: 256)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4007, file: !102, line: 349, baseType: !362, size: 64, offset: 320)
!4015 = !DIDerivedType(tag: DW_TAG_member, scope: !4004, file: !102, line: 352, baseType: !4016, size: 256)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4004, file: !102, line: 352, size: 256, elements: !4017)
!4017 = !{!4018, !4019, !4020}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4016, file: !102, line: 353, baseType: !340, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4016, file: !102, line: 354, baseType: !340, size: 64, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4016, file: !102, line: 356, baseType: !206, size: 128, offset: 128)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4004, file: !102, line: 359, baseType: !2278, size: 512, align: 128)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3946, file: !160, line: 409, baseType: !4023, size: 64, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!46, !367, !1037}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3946, file: !160, line: 412, baseType: !4027, size: 64, offset: 192)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!712, !367, !3956}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3946, file: !160, line: 414, baseType: !4031, size: 64, offset: 256)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{null, !4034}
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !160, line: 310, flags: DIFlagFwdDecl)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3946, file: !160, line: 416, baseType: !4037, size: 64, offset: 320)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!46, !1724, !367, !532, !7, !3364, !2505}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3946, file: !160, line: 419, baseType: !4041, size: 64, offset: 384)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!46, !1724, !367, !532, !7, !7, !2277, !362}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3946, file: !160, line: 424, baseType: !4045, size: 64, offset: 448)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!4048, !367, !4048}
!4048 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !207, line: 131, baseType: !444)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3946, file: !160, line: 425, baseType: !4050, size: 64, offset: 512)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{null, !3956, !337, !337}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3946, file: !160, line: 426, baseType: !4054, size: 64, offset: 576)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!712, !3956, !1146}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3946, file: !160, line: 427, baseType: !4058, size: 64, offset: 640)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{null, !3956}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3946, file: !160, line: 428, baseType: !2053, size: 64, offset: 704)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3946, file: !160, line: 433, baseType: !4063, size: 64, offset: 768)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!46, !367, !3956, !3956, !125}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3946, file: !160, line: 435, baseType: !4067, size: 64, offset: 832)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!46, !3956}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3946, file: !160, line: 436, baseType: !4071, size: 64, offset: 896)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!712, !3956, !337, !337}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3946, file: !160, line: 438, baseType: !4075, size: 64, offset: 960)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{null, !3956, !4078, !4078}
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3946, file: !160, line: 439, baseType: !4080, size: 64, offset: 1024)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!46, !367, !2277}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3946, file: !160, line: 442, baseType: !4084, size: 64, offset: 1088)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!46, !4087, !1724, !4089}
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !160, line: 66, flags: DIFlagFwdDecl)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3946, file: !160, line: 444, baseType: !2497, size: 64, offset: 1152)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3946, file: !160, line: 445, baseType: !4092, size: 64, offset: 1216)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!46, !2056, !2078}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !368, file: !160, line: 486, baseType: !340, size: 64, offset: 896)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !368, file: !160, line: 487, baseType: !1294, size: 320, offset: 960)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !368, file: !160, line: 488, baseType: !2540, size: 32, offset: 1280)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !368, file: !160, line: 489, baseType: !220, size: 32, offset: 1312)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !368, file: !160, line: 490, baseType: !206, size: 128, offset: 1344)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !368, file: !160, line: 491, baseType: !362, size: 64, offset: 1472)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !357, file: !316, line: 180, baseType: !4102, size: 64, offset: 320)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!322, !1724, !213, !356, !290, !532, !337}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !357, file: !316, line: 182, baseType: !4102, size: 64, offset: 384)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !357, file: !316, line: 184, baseType: !4107, size: 64, offset: 448)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!46, !1724, !213, !356, !2168}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !345, file: !316, line: 90, baseType: !4111, size: 64, offset: 192)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !345, file: !316, line: 91, baseType: !4113, size: 64, offset: 256)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !306, file: !199, line: 120, baseType: !4115, size: 64, offset: 192)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!4118, !273}
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4120)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !4121)
!4121 = !{!4122, !4123, !4127, !4131, !4137, !4141}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4120, file: !6, line: 40, baseType: !5, size: 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4120, file: !6, line: 41, baseType: !4124, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!712}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4120, file: !6, line: 42, baseType: !4128, size: 64, offset: 128)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!362}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4120, file: !6, line: 43, baseType: !4132, size: 64, offset: 192)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!2629, !4135}
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4120, file: !6, line: 44, baseType: !4138, size: 64, offset: 256)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!2629}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4120, file: !6, line: 45, baseType: !675, size: 64, offset: 320)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !306, file: !199, line: 121, baseType: !4143, size: 64, offset: 256)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!2629, !273}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !306, file: !199, line: 122, baseType: !4147, size: 64, offset: 320)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{null, !273, !4150, !4151}
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !198, file: !199, line: 70, baseType: !4153, size: 64, offset: 384)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !547, line: 190, size: 1152, elements: !4155)
!4155 = !{!4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4247, !4248, !4249, !4250, !4251, !4254}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4154, file: !547, line: 191, baseType: !240, size: 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4154, file: !547, line: 192, baseType: !240, size: 32, offset: 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4154, file: !547, line: 202, baseType: !4153, size: 64, offset: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4154, file: !547, line: 203, baseType: !202, size: 64, offset: 128)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4154, file: !547, line: 205, baseType: !744, size: 192, align: 64, offset: 192)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4154, file: !547, line: 207, baseType: !2629, size: 64, offset: 384)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4154, file: !547, line: 208, baseType: !7, size: 32, offset: 448)
!4163 = !DIDerivedType(tag: DW_TAG_member, scope: !4154, file: !547, line: 209, baseType: !4164, size: 256, offset: 512)
!4164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4154, file: !547, line: 209, size: 256, elements: !4165)
!4165 = !{!4166, !4175, !4179}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4164, file: !547, line: 210, baseType: !4167, size: 256)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !547, line: 153, size: 256, elements: !4168)
!4168 = !{!4169, !4170, !4171, !4174}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4167, file: !547, line: 154, baseType: !340, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4167, file: !547, line: 156, baseType: !1583, size: 64, offset: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4167, file: !547, line: 162, baseType: !4172, size: 64, offset: 128)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !547, line: 162, flags: DIFlagFwdDecl)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4167, file: !547, line: 167, baseType: !340, size: 64, offset: 192)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4164, file: !547, line: 211, baseType: !4176, size: 64)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !547, line: 170, size: 64, elements: !4177)
!4177 = !{!4178}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4176, file: !547, line: 171, baseType: !4153, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4164, file: !547, line: 212, baseType: !4180, size: 256)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !547, line: 174, size: 256, elements: !4181)
!4181 = !{!4182, !4242, !4245, !4246}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4180, file: !547, line: 175, baseType: !4183, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4185)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !547, line: 271, size: 768, elements: !4186)
!4186 = !{!4187, !4207, !4211, !4215, !4219, !4223, !4227, !4231, !4232, !4233, !4234, !4238}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4185, file: !547, line: 276, baseType: !4188, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!46, !4191}
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !547, line: 251, size: 1216, elements: !4193)
!4193 = !{!4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4192, file: !547, line: 253, baseType: !4153, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4192, file: !547, line: 254, baseType: !1724, size: 64, offset: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4192, file: !547, line: 255, baseType: !1074, size: 64, offset: 128)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4192, file: !547, line: 256, baseType: !362, size: 64, offset: 192)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4192, file: !547, line: 259, baseType: !632, size: 256, offset: 256)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4192, file: !547, line: 260, baseType: !632, size: 256, offset: 512)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4192, file: !547, line: 261, baseType: !46, size: 32, offset: 768)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4192, file: !547, line: 262, baseType: !206, size: 128, offset: 832)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4192, file: !547, line: 263, baseType: !290, size: 64, offset: 960)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4192, file: !547, line: 265, baseType: !337, size: 64, offset: 1024)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4192, file: !547, line: 266, baseType: !712, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4192, file: !547, line: 267, baseType: !712, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4192, file: !547, line: 268, baseType: !2213, size: 64, offset: 1152)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4185, file: !547, line: 277, baseType: !4208, size: 64, offset: 64)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{null, !4191}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4185, file: !547, line: 290, baseType: !4212, size: 64, offset: 128)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!46, !1074, !362}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4185, file: !547, line: 292, baseType: !4216, size: 64, offset: 192)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!362, !1074, !2047}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4185, file: !547, line: 293, baseType: !4220, size: 64, offset: 256)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!362, !1074, !362, !2047}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4185, file: !547, line: 294, baseType: !4224, size: 64, offset: 320)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{null, !1074, !362}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4185, file: !547, line: 296, baseType: !4228, size: 64, offset: 384)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!322, !4191, !290, !337, !532}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4185, file: !547, line: 306, baseType: !337, size: 64, offset: 448)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4185, file: !547, line: 313, baseType: !712, size: 8, offset: 512)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4185, file: !547, line: 314, baseType: !4228, size: 64, offset: 576)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4185, file: !547, line: 317, baseType: !4235, size: 64, offset: 640)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!2155, !4191, !2157}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4185, file: !547, line: 320, baseType: !4239, size: 64, offset: 704)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!46, !4191, !2168}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4180, file: !547, line: 176, baseType: !4243, size: 64, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !547, line: 35, flags: DIFlagFwdDecl)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4180, file: !547, line: 177, baseType: !532, size: 64, offset: 128)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4180, file: !547, line: 178, baseType: !4153, size: 64, offset: 192)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4154, file: !547, line: 215, baseType: !362, size: 64, offset: 768)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4154, file: !547, line: 221, baseType: !444, size: 64, offset: 832)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4154, file: !547, line: 223, baseType: !260, size: 16, offset: 896)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4154, file: !547, line: 224, baseType: !332, size: 16, offset: 912)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4154, file: !547, line: 225, baseType: !4252, size: 64, offset: 960)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !547, line: 36, flags: DIFlagFwdDecl)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4154, file: !547, line: 227, baseType: !852, size: 128, align: 64, offset: 1024)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !198, file: !199, line: 71, baseType: !4256, size: 32, offset: 448)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4257, line: 19, size: 32, elements: !4258)
!4257 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4258 = !{!4259}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4256, file: !4257, line: 20, baseType: !1414, size: 32)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !198, file: !199, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !198, file: !199, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !198, file: !199, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !198, file: !199, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !198, file: !199, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !195, file: !26, line: 707, baseType: !194, size: 64, offset: 512)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !195, file: !26, line: 709, baseType: !4267, size: 64, offset: 576)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !4269, line: 108, size: 1728, elements: !4270)
!4269 = !DIFile(filename: "drivers/base/base.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5f3031875b0a7d87c5130cddf3a0079")
!4270 = !{!4271, !4288, !4289, !4290, !4291, !4292, !4293, !4422, !4423, !4424}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "klist_children", scope: !4268, file: !4269, line: 109, baseType: !4272, size: 320, align: 64)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !4273, line: 18, size: 320, align: 64, elements: !4274)
!4273 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd49af8b7fc11d3fd997e9c112ace59a")
!4274 = !{!4275, !4276, !4277, !4287}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !4272, file: !4273, line: 19, baseType: !220, size: 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !4272, file: !4273, line: 20, baseType: !206, size: 128, offset: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4272, file: !4273, line: 21, baseType: !4278, size: 64, offset: 192)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{null, !4281}
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !4273, line: 37, size: 256, elements: !4283)
!4283 = !{!4284, !4285, !4286}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !4282, file: !4273, line: 38, baseType: !362, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !4282, file: !4273, line: 39, baseType: !206, size: 128, offset: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !4282, file: !4273, line: 40, baseType: !4256, size: 32, offset: 192)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4272, file: !4273, line: 22, baseType: !4278, size: 64, offset: 256)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "knode_parent", scope: !4268, file: !4269, line: 110, baseType: !4282, size: 256, offset: 320)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "knode_driver", scope: !4268, file: !4269, line: 111, baseType: !4282, size: 256, offset: 576)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !4268, file: !4269, line: 112, baseType: !4282, size: 256, offset: 832)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "knode_class", scope: !4268, file: !4269, line: 113, baseType: !4282, size: 256, offset: 1088)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe", scope: !4268, file: !4269, line: 114, baseType: !206, size: 128, offset: 1344)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "async_driver", scope: !4268, file: !4269, line: 115, baseType: !4294, size: 64, offset: 1472)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !4296)
!4296 = !{!4297, !4298, !4376, !4377, !4378, !4379, !4380, !4393, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4295, file: !20, line: 97, baseType: !202, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4295, file: !20, line: 98, baseType: !4299, size: 64, offset: 64)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4301)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4302, line: 80, size: 1344, elements: !4303)
!4302 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4303 = !{!4304, !4305, !4306, !4307, !4308, !4309, !4313, !4319, !4323, !4327, !4328, !4329, !4330, !4331, !4339, !4340, !4341, !4342, !4343, !4371, !4375}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4301, file: !4302, line: 81, baseType: !202, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4301, file: !4302, line: 82, baseType: !202, size: 64, offset: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4301, file: !4302, line: 83, baseType: !342, size: 64, offset: 128)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4301, file: !4302, line: 84, baseType: !342, size: 64, offset: 192)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4301, file: !4302, line: 85, baseType: !342, size: 64, offset: 256)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4301, file: !4302, line: 87, baseType: !4310, size: 64, offset: 320)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!46, !194, !4294}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4301, file: !4302, line: 88, baseType: !4314, size: 64, offset: 384)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!46, !4317, !285}
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4301, file: !4302, line: 89, baseType: !4320, size: 64, offset: 448)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!46, !194}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4301, file: !4302, line: 90, baseType: !4324, size: 64, offset: 512)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{null, !194}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4301, file: !4302, line: 91, baseType: !4324, size: 64, offset: 576)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4301, file: !4302, line: 92, baseType: !4324, size: 64, offset: 640)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4301, file: !4302, line: 94, baseType: !4320, size: 64, offset: 704)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4301, file: !4302, line: 95, baseType: !4320, size: 64, offset: 768)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4301, file: !4302, line: 97, baseType: !4332, size: 64, offset: 832)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!46, !194, !4335}
!4335 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !4336)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !4337)
!4337 = !{!4338}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4336, file: !38, line: 59, baseType: !46, size: 32)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4301, file: !4302, line: 98, baseType: !4320, size: 64, offset: 896)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4301, file: !4302, line: 100, baseType: !4320, size: 64, offset: 960)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4301, file: !4302, line: 102, baseType: !4320, size: 64, offset: 1024)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4301, file: !4302, line: 103, baseType: !4324, size: 64, offset: 1088)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4301, file: !4302, line: 105, baseType: !4344, size: 64, offset: 1152)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4346)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !4347)
!4347 = !{!4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4346, file: !38, line: 287, baseType: !4320, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4346, file: !38, line: 288, baseType: !4324, size: 64, offset: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4346, file: !38, line: 289, baseType: !4320, size: 64, offset: 128)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4346, file: !38, line: 290, baseType: !4320, size: 64, offset: 192)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4346, file: !38, line: 291, baseType: !4320, size: 64, offset: 256)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4346, file: !38, line: 292, baseType: !4320, size: 64, offset: 320)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4346, file: !38, line: 293, baseType: !4320, size: 64, offset: 384)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4346, file: !38, line: 294, baseType: !4320, size: 64, offset: 448)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4346, file: !38, line: 295, baseType: !4320, size: 64, offset: 512)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4346, file: !38, line: 296, baseType: !4320, size: 64, offset: 576)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4346, file: !38, line: 297, baseType: !4320, size: 64, offset: 640)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4346, file: !38, line: 298, baseType: !4320, size: 64, offset: 704)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4346, file: !38, line: 299, baseType: !4320, size: 64, offset: 768)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4346, file: !38, line: 300, baseType: !4320, size: 64, offset: 832)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4346, file: !38, line: 301, baseType: !4320, size: 64, offset: 896)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4346, file: !38, line: 302, baseType: !4320, size: 64, offset: 960)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4346, file: !38, line: 303, baseType: !4320, size: 64, offset: 1024)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4346, file: !38, line: 304, baseType: !4320, size: 64, offset: 1088)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4346, file: !38, line: 305, baseType: !4320, size: 64, offset: 1152)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4346, file: !38, line: 306, baseType: !4320, size: 64, offset: 1216)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4346, file: !38, line: 307, baseType: !4320, size: 64, offset: 1280)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4346, file: !38, line: 308, baseType: !4320, size: 64, offset: 1344)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4346, file: !38, line: 309, baseType: !4320, size: 64, offset: 1408)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4301, file: !4302, line: 107, baseType: !4372, size: 64, offset: 1216)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4374)
!4374 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4302, line: 107, flags: DIFlagFwdDecl)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4301, file: !4302, line: 109, baseType: !712, size: 8, offset: 1280)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4295, file: !20, line: 100, baseType: !561, size: 64, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4295, file: !20, line: 101, baseType: !202, size: 64, offset: 192)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4295, file: !20, line: 103, baseType: !712, size: 8, offset: 256)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4295, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4295, file: !20, line: 106, baseType: !4381, size: 64, offset: 320)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4383)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4384, line: 282, size: 1600, elements: !4385)
!4384 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4385 = !{!4386, !4387, !4388, !4392}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4383, file: !4384, line: 283, baseType: !3618, size: 256)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4383, file: !4384, line: 284, baseType: !3618, size: 256, offset: 256)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4383, file: !4384, line: 285, baseType: !4389, size: 1024, offset: 512)
!4389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 1024, elements: !4390)
!4390 = !{!4391}
!4391 = !DISubrange(count: 128)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4383, file: !4384, line: 286, baseType: !2629, size: 64, offset: 1536)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4295, file: !20, line: 107, baseType: !4394, size: 64, offset: 384)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4396)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4384, line: 217, size: 256, elements: !4397)
!4397 = !{!4398, !4399, !4401, !4402}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4396, file: !4384, line: 218, baseType: !3625, size: 128)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4396, file: !4384, line: 219, baseType: !4400, size: 64, offset: 128)
!4400 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4384, line: 15, baseType: !340)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4396, file: !4384, line: 220, baseType: !441, size: 32, offset: 192)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4396, file: !4384, line: 221, baseType: !441, size: 32, offset: 224)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4295, file: !20, line: 109, baseType: !4320, size: 64, offset: 448)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4295, file: !20, line: 110, baseType: !4324, size: 64, offset: 512)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4295, file: !20, line: 111, baseType: !4320, size: 64, offset: 576)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4295, file: !20, line: 112, baseType: !4324, size: 64, offset: 640)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4295, file: !20, line: 113, baseType: !4332, size: 64, offset: 704)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4295, file: !20, line: 114, baseType: !4320, size: 64, offset: 768)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4295, file: !20, line: 115, baseType: !342, size: 64, offset: 832)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4295, file: !20, line: 116, baseType: !342, size: 64, offset: 896)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4295, file: !20, line: 118, baseType: !4344, size: 64, offset: 960)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4295, file: !20, line: 119, baseType: !4324, size: 64, offset: 1024)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4295, file: !20, line: 121, baseType: !4414, size: 64, offset: 1088)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !4269, line: 78, size: 1216, elements: !4416)
!4416 = !{!4417, !4418, !4419, !4420, !4421}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4415, file: !4269, line: 79, baseType: !198, size: 512)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !4415, file: !4269, line: 80, baseType: !4272, size: 320, align: 64, offset: 512)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !4415, file: !4269, line: 81, baseType: !4282, size: 256, offset: 832)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !4415, file: !4269, line: 82, baseType: !601, size: 64, offset: 1088)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4415, file: !4269, line: 83, baseType: !4294, size: 64, offset: 1152)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe_reason", scope: !4268, file: !4269, line: 116, baseType: !290, size: 64, offset: 1536)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4268, file: !4269, line: 117, baseType: !194, size: 64, offset: 1600)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4268, file: !4269, line: 118, baseType: !248, size: 1, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !195, file: !26, line: 711, baseType: !202, size: 64, offset: 640)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !195, file: !26, line: 712, baseType: !4427, size: 64, offset: 704)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4429)
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !4430)
!4430 = !{!4431, !4432, !4433, !4434, !4439, !4440}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4429, file: !26, line: 90, baseType: !202, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4429, file: !26, line: 91, baseType: !342, size: 64, offset: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4429, file: !26, line: 92, baseType: !4314, size: 64, offset: 128)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4429, file: !26, line: 93, baseType: !4435, size: 64, offset: 192)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!290, !4317, !4438, !4150, !4151}
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4429, file: !26, line: 95, baseType: !4324, size: 64, offset: 256)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4429, file: !26, line: 97, baseType: !4344, size: 64, offset: 320)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !195, file: !26, line: 714, baseType: !4299, size: 64, offset: 768)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !195, file: !26, line: 715, baseType: !4294, size: 64, offset: 832)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !195, file: !26, line: 717, baseType: !362, size: 64, offset: 896)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !195, file: !26, line: 719, baseType: !362, size: 64, offset: 960)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !195, file: !26, line: 721, baseType: !632, size: 256, offset: 1024)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !195, file: !26, line: 725, baseType: !4447, size: 448, offset: 1280)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !4448)
!4448 = !{!4449, !4450, !4451, !4452}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4447, file: !26, line: 518, baseType: !206, size: 128)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4447, file: !26, line: 519, baseType: !206, size: 128, offset: 128)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4447, file: !26, line: 520, baseType: !206, size: 128, offset: 256)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4447, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !195, file: !26, line: 726, baseType: !4454, size: 2496, offset: 1728)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !4455)
!4455 = !{!4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4538, !4542}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4454, file: !38, line: 664, baseType: !4335, size: 32)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4454, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4454, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4454, file: !38, line: 667, baseType: !712, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4454, file: !38, line: 668, baseType: !712, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4454, file: !38, line: 669, baseType: !712, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4454, file: !38, line: 670, baseType: !712, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4454, file: !38, line: 671, baseType: !712, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4454, file: !38, line: 672, baseType: !712, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4454, file: !38, line: 673, baseType: !712, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4454, file: !38, line: 674, baseType: !712, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4454, file: !38, line: 675, baseType: !440, size: 32, offset: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4454, file: !38, line: 676, baseType: !220, size: 32, offset: 96)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4454, file: !38, line: 678, baseType: !206, size: 128, offset: 128)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4454, file: !38, line: 679, baseType: !581, size: 256, offset: 256)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4454, file: !38, line: 680, baseType: !4472, size: 64, offset: 512)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4474, line: 43, size: 1536, elements: !4475)
!4474 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4475 = !{!4476, !4477, !4478, !4479, !4480, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4473, file: !4474, line: 44, baseType: !202, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4473, file: !4474, line: 45, baseType: !46, size: 32, offset: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4473, file: !4474, line: 46, baseType: !206, size: 128, offset: 128)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4473, file: !4474, line: 47, baseType: !220, size: 32, offset: 256)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4473, file: !4474, line: 48, baseType: !4481, size: 64, offset: 320)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4473, file: !4474, line: 49, baseType: !874, size: 320, offset: 384)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4473, file: !4474, line: 50, baseType: !340, size: 64, offset: 704)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4473, file: !4474, line: 51, baseType: !1529, size: 64, offset: 768)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4473, file: !4474, line: 52, baseType: !1529, size: 64, offset: 832)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4473, file: !4474, line: 53, baseType: !1529, size: 64, offset: 896)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4473, file: !4474, line: 54, baseType: !1529, size: 64, offset: 960)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4473, file: !4474, line: 55, baseType: !1529, size: 64, offset: 1024)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4473, file: !4474, line: 56, baseType: !340, size: 64, offset: 1088)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4473, file: !4474, line: 57, baseType: !340, size: 64, offset: 1152)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4473, file: !4474, line: 58, baseType: !340, size: 64, offset: 1216)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4473, file: !4474, line: 59, baseType: !340, size: 64, offset: 1280)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4473, file: !4474, line: 60, baseType: !340, size: 64, offset: 1344)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4473, file: !4474, line: 61, baseType: !194, size: 64, offset: 1408)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4473, file: !4474, line: 62, baseType: !712, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4473, file: !4474, line: 63, baseType: !712, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4454, file: !38, line: 681, baseType: !712, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4454, file: !38, line: 682, baseType: !712, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4454, file: !38, line: 683, baseType: !712, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4454, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4454, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4454, file: !38, line: 690, baseType: !1521, size: 512, offset: 640)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4454, file: !38, line: 691, baseType: !444, size: 64, offset: 1152)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4454, file: !38, line: 692, baseType: !892, size: 256, offset: 1216)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4454, file: !38, line: 693, baseType: !1387, size: 192, offset: 1472)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4454, file: !38, line: 694, baseType: !4481, size: 64, offset: 1664)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4454, file: !38, line: 695, baseType: !240, size: 32, offset: 1728)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4454, file: !38, line: 696, baseType: !240, size: 32, offset: 1760)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4454, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4454, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4454, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4454, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4454, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4454, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4454, file: !38, line: 703, baseType: !712, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4454, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4454, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4454, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4454, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4454, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4454, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4454, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4454, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4454, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4454, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4454, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4454, file: !38, line: 715, baseType: !444, size: 64, offset: 2048)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4454, file: !38, line: 716, baseType: !444, size: 64, offset: 2112)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4454, file: !38, line: 717, baseType: !444, size: 64, offset: 2176)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4454, file: !38, line: 718, baseType: !444, size: 64, offset: 2240)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4454, file: !38, line: 720, baseType: !4533, size: 64, offset: 2304)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !4535)
!4535 = !{!4536, !4537}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4534, file: !38, line: 633, baseType: !220, size: 32)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4534, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4454, file: !38, line: 721, baseType: !4539, size: 64, offset: 2368)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{null, !194, !628}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4454, file: !38, line: 722, baseType: !4543, size: 64, offset: 2432)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !54, line: 117, size: 2432, elements: !4545)
!4545 = !{!4546, !4574, !4575, !4582, !4587, !4609, !4610}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !4544, file: !54, line: 118, baseType: !4547, size: 320)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !54, line: 52, size: 320, elements: !4548)
!4548 = !{!4549, !4553, !4554, !4555, !4556, !4557}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4547, file: !54, line: 53, baseType: !4550, size: 128)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1690, line: 82, size: 128, elements: !4551)
!4551 = !{!4552}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4550, file: !1690, line: 83, baseType: !206, size: 128)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !4547, file: !54, line: 54, baseType: !628, size: 32, offset: 128)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !4547, file: !54, line: 55, baseType: !628, size: 32, offset: 160)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !4547, file: !54, line: 56, baseType: !628, size: 32, offset: 192)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4547, file: !54, line: 57, baseType: !53, size: 32, offset: 224)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !4547, file: !54, line: 58, baseType: !4558, size: 64, offset: 256)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !4560, line: 65, size: 384, elements: !4561)
!4560 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!4561 = !{!4562, !4563}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !4559, file: !4560, line: 66, baseType: !1294, size: 320)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4559, file: !4560, line: 67, baseType: !4564, size: 64, offset: 320)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4560, line: 54, size: 192, elements: !4566)
!4566 = !{!4567, !4572, !4573}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4565, file: !4560, line: 55, baseType: !4568, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4560, line: 51, baseType: !4569)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!46, !4564, !340, !362}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4565, file: !4560, line: 56, baseType: !4564, size: 64, offset: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4565, file: !4560, line: 57, baseType: !46, size: 32, offset: 128)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !4544, file: !54, line: 119, baseType: !4547, size: 320, offset: 320)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4544, file: !54, line: 120, baseType: !4576, size: 1408, offset: 640)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !54, line: 85, size: 1408, elements: !4577)
!4577 = !{!4578, !4579, !4580, !4581}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !4576, file: !54, line: 86, baseType: !4547, size: 320)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !4576, file: !54, line: 87, baseType: !4559, size: 384, offset: 320)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !4576, file: !54, line: 88, baseType: !4547, size: 320, offset: 704)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !4576, file: !54, line: 89, baseType: !4559, size: 384, offset: 1024)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4544, file: !54, line: 121, baseType: !4583, size: 192, offset: 2048)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !54, line: 71, size: 192, elements: !4584)
!4584 = !{!4585, !4586}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4583, file: !54, line: 72, baseType: !206, size: 128)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !4583, file: !54, line: 73, baseType: !628, size: 32, offset: 128)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !4544, file: !54, line: 122, baseType: !4588, size: 64, offset: 2240)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !54, line: 107, size: 576, elements: !4590)
!4590 = !{!4591, !4592, !4608}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4589, file: !54, line: 108, baseType: !59, size: 32)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4589, file: !54, line: 113, baseType: !4593, size: 448, offset: 64)
!4593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4589, file: !54, line: 109, size: 448, elements: !4594)
!4594 = !{!4595, !4596, !4601}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4593, file: !54, line: 110, baseType: !1689, size: 320)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !4593, file: !54, line: 111, baseType: !4597, size: 192)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !54, line: 66, size: 192, elements: !4598)
!4598 = !{!4599, !4600}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4597, file: !54, line: 67, baseType: !206, size: 128)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4597, file: !54, line: 68, baseType: !628, size: 32, offset: 128)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4593, file: !54, line: 112, baseType: !4602, size: 448)
!4602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !54, line: 92, size: 448, elements: !4603)
!4603 = !{!4604, !4605, !4606}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4602, file: !54, line: 93, baseType: !66, size: 32)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4602, file: !54, line: 94, baseType: !1689, size: 320, offset: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4602, file: !54, line: 95, baseType: !4607, size: 64, offset: 384)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4589, file: !54, line: 114, baseType: !194, size: 64, offset: 512)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !4544, file: !54, line: 123, baseType: !4588, size: 64, offset: 2304)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !4544, file: !54, line: 124, baseType: !4588, size: 64, offset: 2368)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !195, file: !26, line: 727, baseType: !4612, size: 64, offset: 4224)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !4614)
!4614 = !{!4615, !4616, !4617, !4621, !4622, !4623}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4613, file: !38, line: 743, baseType: !4346, size: 1472)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4613, file: !38, line: 744, baseType: !4320, size: 64, offset: 1472)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4613, file: !38, line: 745, baseType: !4618, size: 64, offset: 1536)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{null, !194, !712}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4613, file: !38, line: 746, baseType: !4320, size: 64, offset: 1600)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4613, file: !38, line: 747, baseType: !4324, size: 64, offset: 1664)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4613, file: !38, line: 748, baseType: !4324, size: 64, offset: 1728)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !195, file: !26, line: 736, baseType: !4625, size: 128, offset: 4288)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !4626)
!4626 = !{!4627, !4631}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4625, file: !26, line: 531, baseType: !4628, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4630, line: 13, flags: DIFlagFwdDecl)
!4630 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4625, file: !26, line: 532, baseType: !4632, size: 64, offset: 64)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !195, file: !26, line: 738, baseType: !4635, size: 64, offset: 4416)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4637)
!4637 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !195, file: !26, line: 740, baseType: !4639, size: 64, offset: 4480)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !195, file: !26, line: 741, baseType: !444, size: 64, offset: 4544)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !195, file: !26, line: 746, baseType: !444, size: 64, offset: 4608)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !195, file: !26, line: 747, baseType: !4643, size: 64, offset: 4672)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4645)
!4645 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !195, file: !26, line: 749, baseType: !4647, size: 64, offset: 4736)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !4649)
!4649 = !{!4650, !4651, !4652}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4648, file: !26, line: 433, baseType: !7, size: 32)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4648, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4648, file: !26, line: 435, baseType: !340, size: 64, offset: 64)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !195, file: !26, line: 751, baseType: !206, size: 128, offset: 4800)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !195, file: !26, line: 762, baseType: !4655, size: 64, offset: 4928)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !195, file: !26, line: 770, baseType: !4658, offset: 4992)
!4658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4659, line: 5, elements: !921)
!4659 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !195, file: !26, line: 772, baseType: !4661, size: 64, offset: 4992)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4663, line: 48, size: 1152, elements: !4664)
!4663 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!4664 = !{!4665, !4666, !4668, !4669, !4772, !4780, !4781, !4782, !4783, !4784, !4785}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4662, file: !4663, line: 49, baseType: !202, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4662, file: !4663, line: 50, baseType: !4667, size: 32, offset: 64)
!4667 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4663, line: 25, baseType: !440)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4662, file: !4663, line: 51, baseType: !202, size: 64, offset: 128)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4662, file: !4663, line: 52, baseType: !4670, size: 512, offset: 192)
!4670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4671, line: 41, size: 512, elements: !4672)
!4671 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4672 = !{!4673, !4675, !4768, !4769, !4770, !4771}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4670, file: !4671, line: 42, baseType: !4674, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4670, file: !4671, line: 43, baseType: !4676, size: 64, offset: 64)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4678)
!4678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4671, line: 125, size: 1408, elements: !4679)
!4679 = !{!4680, !4684, !4688, !4694, !4698, !4699, !4703, !4707, !4711, !4715, !4719, !4720, !4724, !4728, !4732, !4743, !4744, !4745, !4746, !4756, !4760, !4764}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4678, file: !4671, line: 126, baseType: !4681, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!4674, !4674}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4678, file: !4671, line: 127, baseType: !4685, size: 64, offset: 64)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{null, !4674}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4678, file: !4671, line: 128, baseType: !4689, size: 64, offset: 128)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!712, !4692}
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4670)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4678, file: !4671, line: 129, baseType: !4695, size: 64, offset: 192)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!2629, !4692, !4317}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4678, file: !4671, line: 131, baseType: !4689, size: 64, offset: 256)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4678, file: !4671, line: 133, baseType: !4700, size: 64, offset: 320)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!70, !4692}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4678, file: !4671, line: 134, baseType: !4704, size: 64, offset: 384)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!712, !4692, !202}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4678, file: !4671, line: 136, baseType: !4708, size: 64, offset: 448)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!46, !4692, !202, !7, !362, !337}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4678, file: !4671, line: 141, baseType: !4712, size: 64, offset: 512)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!46, !4692, !202, !969, !337}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4678, file: !4671, line: 144, baseType: !4716, size: 64, offset: 576)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!202, !4692}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4678, file: !4671, line: 145, baseType: !4716, size: 64, offset: 640)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4678, file: !4671, line: 146, baseType: !4721, size: 64, offset: 704)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!4674, !4692}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4678, file: !4671, line: 148, baseType: !4725, size: 64, offset: 768)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!4674, !4692, !4674}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4678, file: !4671, line: 151, baseType: !4729, size: 64, offset: 832)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!4674, !4692, !202}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4678, file: !4671, line: 153, baseType: !4733, size: 64, offset: 896)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!46, !4692, !202, !202, !7, !7, !4736}
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4671, line: 94, size: 640, elements: !4738)
!4738 = !{!4739, !4740, !4741}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4737, file: !4671, line: 95, baseType: !4674, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4737, file: !4671, line: 96, baseType: !7, size: 32, offset: 64)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4737, file: !4671, line: 97, baseType: !4742, size: 512, offset: 128)
!4742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 512, elements: !1564)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4678, file: !4671, line: 158, baseType: !4725, size: 64, offset: 960)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4678, file: !4671, line: 161, baseType: !4721, size: 64, offset: 1024)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4678, file: !4671, line: 163, baseType: !4681, size: 64, offset: 1088)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4678, file: !4671, line: 164, baseType: !4747, size: 64, offset: 1152)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!46, !4692, !4750}
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4671, line: 73, size: 128, elements: !4752)
!4752 = !{!4753, !4754, !4755}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4751, file: !4671, line: 74, baseType: !7, size: 32)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4751, file: !4671, line: 75, baseType: !7, size: 32, offset: 32)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4751, file: !4671, line: 76, baseType: !4692, size: 64, offset: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4678, file: !4671, line: 166, baseType: !4757, size: 64, offset: 1216)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!362, !4674, !46}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4678, file: !4671, line: 167, baseType: !4761, size: 64, offset: 1280)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!46, !4692, !7}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4678, file: !4671, line: 168, baseType: !4765, size: 64, offset: 1344)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!46, !4674}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4670, file: !4671, line: 44, baseType: !194, size: 64, offset: 128)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4670, file: !4671, line: 45, baseType: !206, size: 128, offset: 192)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4670, file: !4671, line: 46, baseType: !206, size: 128, offset: 320)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4670, file: !4671, line: 47, baseType: !248, size: 8, offset: 448)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4662, file: !4663, line: 54, baseType: !4773, size: 64, offset: 704)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4663, line: 28, size: 256, elements: !4775)
!4775 = !{!4776, !4777, !4778, !4779}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4774, file: !4663, line: 29, baseType: !290, size: 64)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4774, file: !4663, line: 30, baseType: !46, size: 32, offset: 64)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4774, file: !4663, line: 31, baseType: !362, size: 64, offset: 128)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4774, file: !4663, line: 32, baseType: !4773, size: 64, offset: 192)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4662, file: !4663, line: 55, baseType: !4773, size: 64, offset: 768)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4662, file: !4663, line: 56, baseType: !4661, size: 64, offset: 832)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4662, file: !4663, line: 57, baseType: !4661, size: 64, offset: 896)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4662, file: !4663, line: 58, baseType: !4661, size: 64, offset: 960)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4662, file: !4663, line: 62, baseType: !340, size: 64, offset: 1024)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4662, file: !4663, line: 63, baseType: !362, size: 64, offset: 1088)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !195, file: !26, line: 773, baseType: !4674, size: 64, offset: 5056)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !195, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !195, file: !26, line: 778, baseType: !527, size: 32, offset: 5152)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !195, file: !26, line: 779, baseType: !440, size: 32, offset: 5184)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !195, file: !26, line: 781, baseType: !220, size: 32, offset: 5216)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !195, file: !26, line: 782, baseType: !206, size: 128, offset: 5248)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !195, file: !26, line: 784, baseType: !4793, size: 64, offset: 5376)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4795)
!4795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4796, line: 52, size: 768, elements: !4797)
!4796 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4797 = !{!4798, !4799, !4800, !4801, !4802, !4806, !4810, !4811, !4812, !4813, !4817, !4821}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4795, file: !4796, line: 53, baseType: !202, size: 64)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4795, file: !4796, line: 55, baseType: !342, size: 64, offset: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4795, file: !4796, line: 56, baseType: !342, size: 64, offset: 128)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4795, file: !4796, line: 58, baseType: !4314, size: 64, offset: 192)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4795, file: !4796, line: 59, baseType: !4803, size: 64, offset: 256)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = !DISubroutineType(types: !4805)
!4805 = !{!290, !4317, !4438}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4795, file: !4796, line: 61, baseType: !4807, size: 64, offset: 320)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{null, !4793}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4795, file: !4796, line: 62, baseType: !4324, size: 64, offset: 384)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4795, file: !4796, line: 64, baseType: !4320, size: 64, offset: 448)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4795, file: !4796, line: 66, baseType: !4118, size: 64, offset: 512)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4795, file: !4796, line: 67, baseType: !4814, size: 64, offset: 576)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!2629, !4317}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4795, file: !4796, line: 69, baseType: !4818, size: 64, offset: 640)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{null, !4317, !4150, !4151}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4795, file: !4796, line: 71, baseType: !4344, size: 64, offset: 704)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !195, file: !26, line: 785, baseType: !342, size: 64, offset: 5440)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !195, file: !26, line: 787, baseType: !4324, size: 64, offset: 5504)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !195, file: !26, line: 788, baseType: !4825, size: 64, offset: 5568)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !195, file: !26, line: 789, baseType: !4828, size: 64, offset: 5632)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !195, file: !26, line: 791, baseType: !4831, size: 64, offset: 5696)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !4833)
!4833 = !{!4834, !4835, !4836, !4837, !4838}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4832, file: !26, line: 598, baseType: !76, size: 32)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4832, file: !26, line: 599, baseType: !85, size: 32, offset: 32)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4832, file: !26, line: 600, baseType: !90, size: 32, offset: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4832, file: !26, line: 601, baseType: !712, size: 8, offset: 96)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4832, file: !26, line: 602, baseType: !712, size: 8, offset: 104)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !195, file: !26, line: 793, baseType: !95, size: 32, offset: 5760)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !195, file: !26, line: 795, baseType: !712, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !195, file: !26, line: 796, baseType: !712, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !195, file: !26, line: 797, baseType: !712, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !195, file: !26, line: 798, baseType: !712, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !195, file: !26, line: 799, baseType: !712, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu", file: !4847, line: 27, size: 5888, elements: !4848)
!4847 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!4848 = !{!4849, !4850, !4851}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4846, file: !4847, line: 28, baseType: !46, size: 32)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "hotpluggable", scope: !4846, file: !4847, line: 29, baseType: !46, size: 32, offset: 32)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4846, file: !4847, line: 30, baseType: !195, size: 5824, offset: 64)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1645)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DIDerivedType(tag: DW_TAG_typedef, name: "note_buf_t", file: !4856, line: 30, baseType: !4857)
!4856 = !DIFile(filename: "./include/linux/crash_core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bd649c63340ff894fc599265eb4c65d6")
!4857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 2944, elements: !4858)
!4858 = !{!4859}
!4859 = !DISubrange(count: 92)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_attr", file: !3, line: 209, size: 320, elements: !4862)
!4862 = !{!4863, !4876}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4861, file: !3, line: 210, baseType: !4864, size: 256)
!4864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !26, line: 106, size: 256, elements: !4865)
!4865 = !{!4866, !4867, !4872}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4864, file: !26, line: 107, baseType: !328, size: 128)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4864, file: !26, line: 108, baseType: !4868, size: 64, offset: 128)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!322, !194, !4871, !290}
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4864, file: !26, line: 110, baseType: !4873, size: 64, offset: 192)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!322, !194, !4871, !202, !337}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4861, file: !3, line: 211, baseType: !4877, size: 64, offset: 256)
!4877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4852)
!4878 = !{!4879, !4882, !4884, !4886, !4888, !4890, !4892, !0, !4897, !4899, !4902, !4907, !4912, !4917, !4922, !4924, !4927, !4930, !4932, !4935, !4937, !4939, !4941, !4946, !4948, !4953, !4955, !4960, !4962, !4964, !4969, !4972, !4975, !4977, !4980, !4985, !4987, !4989, !4991, !4993, !4995, !4997, !5000, !5002, !5004, !5006, !5008, !5010, !5012, !5014, !5016, !5021, !5023, !5025, !5030, !5032, !5034, !5036, !5038, !5040, !5042, !5047, !5049, !5051, !5053, !5055, !5057, !5059, !5061, !5063, !5065, !5067, !5069, !5071, !5073, !5075, !5077, !5079, !5081, !5083, !5085, !5090}
!4879 = !DIGlobalVariableExpression(var: !4880, expr: !DIExpression())
!4880 = distinct !DIGlobalVariable(scope: null, file: !3, line: 370, type: !4881, isLocal: true, isDefinition: true)
!4881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 32, elements: !862)
!4882 = !DIGlobalVariableExpression(var: !4883, expr: !DIExpression())
!4883 = distinct !DIGlobalVariable(name: "cpu_subsys", scope: !2, file: !3, line: 369, type: !4301, isLocal: false, isDefinition: true)
!4884 = !DIGlobalVariableExpression(var: !4885, expr: !DIExpression())
!4885 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpu_subsys324", scope: !2, file: !3, line: 381, type: !362, isLocal: true, isDefinition: true)
!4886 = !DIGlobalVariableExpression(var: !4887, expr: !DIExpression())
!4887 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_get_cpu_device325", scope: !2, file: !3, line: 427, type: !362, isLocal: true, isDefinition: true)
!4888 = !DIGlobalVariableExpression(var: !4889, expr: !DIExpression())
!4889 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpu_device_create326", scope: !2, file: !3, line: 481, type: !362, isLocal: true, isDefinition: true)
!4890 = !DIGlobalVariableExpression(var: !4891, expr: !DIExpression())
!4891 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpu_is_hotpluggable327", scope: !2, file: !3, line: 525, type: !362, isLocal: true, isDefinition: true)
!4892 = !DIGlobalVariableExpression(var: !4893, expr: !DIExpression())
!4893 = distinct !DIGlobalVariable(scope: null, file: !3, line: 626, type: !4894, isLocal: true, isDefinition: true)
!4894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 264, elements: !4895)
!4895 = !{!4896}
!4896 = !DISubrange(count: 33)
!4897 = !DIGlobalVariableExpression(var: !4898, expr: !DIExpression())
!4898 = distinct !DIGlobalVariable(name: "total_cpus", scope: !2, file: !3, line: 244, type: !7, isLocal: false, isDefinition: true)
!4899 = !DIGlobalVariableExpression(var: !4900, expr: !DIExpression())
!4900 = distinct !DIGlobalVariable(scope: null, file: !3, line: 362, type: !4901, isLocal: true, isDefinition: true)
!4901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 96, elements: !3497)
!4902 = !DIGlobalVariableExpression(var: !4903, expr: !DIExpression())
!4903 = distinct !DIGlobalVariable(scope: null, file: !170, line: 480, type: !4904, isLocal: true, isDefinition: true)
!4904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 168, elements: !4905)
!4905 = !{!4906}
!4906 = !DISubrange(count: 21)
!4907 = !DIGlobalVariableExpression(var: !4908, expr: !DIExpression())
!4908 = distinct !DIGlobalVariable(scope: null, file: !3, line: 342, type: !4909, isLocal: true, isDefinition: true)
!4909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 352, elements: !4910)
!4910 = !{!4911}
!4911 = !DISubrange(count: 44)
!4912 = !DIGlobalVariableExpression(var: !4913, expr: !DIExpression())
!4913 = distinct !DIGlobalVariable(scope: null, file: !3, line: 348, type: !4914, isLocal: true, isDefinition: true)
!4914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 224, elements: !4915)
!4915 = !{!4916}
!4916 = !DISubrange(count: 28)
!4917 = !DIGlobalVariableExpression(var: !4918, expr: !DIExpression())
!4918 = distinct !DIGlobalVariable(scope: null, file: !3, line: 348, type: !4919, isLocal: true, isDefinition: true)
!4919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 152, elements: !4920)
!4920 = !{!4921}
!4921 = !DISubrange(count: 19)
!4922 = !DIGlobalVariableExpression(var: !4923, expr: !DIExpression())
!4923 = distinct !DIGlobalVariable(scope: null, file: !3, line: 351, type: !1913, isLocal: true, isDefinition: true)
!4924 = !DIGlobalVariableExpression(var: !4925, expr: !DIExpression())
!4925 = distinct !DIGlobalVariable(scope: null, file: !3, line: 353, type: !4926, isLocal: true, isDefinition: true)
!4926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 16, elements: !751)
!4927 = !DIGlobalVariableExpression(var: !4928, expr: !DIExpression())
!4928 = distinct !DIGlobalVariable(name: "common_cpu_attr_groups", scope: !2, file: !3, line: 191, type: !4929, isLocal: true, isDefinition: true)
!4929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 128, elements: !751)
!4930 = !DIGlobalVariableExpression(var: !4931, expr: !DIExpression())
!4931 = distinct !DIGlobalVariable(name: "crash_note_cpu_attr_group", scope: !2, file: !3, line: 186, type: !344, isLocal: true, isDefinition: true)
!4932 = !DIGlobalVariableExpression(var: !4933, expr: !DIExpression())
!4933 = distinct !DIGlobalVariable(name: "crash_note_cpu_attrs", scope: !2, file: !3, line: 180, type: !4934, isLocal: true, isDefinition: true)
!4934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 192, elements: !291)
!4935 = !DIGlobalVariableExpression(var: !4936, expr: !DIExpression())
!4936 = distinct !DIGlobalVariable(scope: null, file: !3, line: 170, type: !4901, isLocal: true, isDefinition: true)
!4937 = !DIGlobalVariableExpression(var: !4938, expr: !DIExpression())
!4938 = distinct !DIGlobalVariable(name: "dev_attr_crash_notes", scope: !2, file: !3, line: 170, type: !4864, isLocal: true, isDefinition: true)
!4939 = !DIGlobalVariableExpression(var: !4940, expr: !DIExpression())
!4940 = distinct !DIGlobalVariable(scope: null, file: !3, line: 168, type: !1913, isLocal: true, isDefinition: true)
!4941 = !DIGlobalVariableExpression(var: !4942, expr: !DIExpression())
!4942 = distinct !DIGlobalVariable(scope: null, file: !3, line: 178, type: !4943, isLocal: true, isDefinition: true)
!4943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 136, elements: !4944)
!4944 = !{!4945}
!4945 = !DISubrange(count: 17)
!4946 = !DIGlobalVariableExpression(var: !4947, expr: !DIExpression())
!4947 = distinct !DIGlobalVariable(name: "dev_attr_crash_notes_size", scope: !2, file: !3, line: 178, type: !4864, isLocal: true, isDefinition: true)
!4948 = !DIGlobalVariableExpression(var: !4949, expr: !DIExpression())
!4949 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !4950, isLocal: true, isDefinition: true)
!4950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 40, elements: !4951)
!4951 = !{!4952}
!4952 = !DISubrange(count: 5)
!4953 = !DIGlobalVariableExpression(var: !4954, expr: !DIExpression())
!4954 = distinct !DIGlobalVariable(name: "hotplugable_cpu_attr_groups", scope: !2, file: !3, line: 198, type: !4929, isLocal: true, isDefinition: true)
!4955 = !DIGlobalVariableExpression(var: !4956, expr: !DIExpression())
!4956 = distinct !DIGlobalVariable(scope: null, file: !3, line: 547, type: !4957, isLocal: true, isDefinition: true)
!4957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 112, elements: !4958)
!4958 = !{!4959}
!4959 = !DISubrange(count: 14)
!4960 = !DIGlobalVariableExpression(var: !4961, expr: !DIExpression())
!4961 = distinct !DIGlobalVariable(name: "cpu_root_attr_groups", scope: !2, file: !3, line: 514, type: !4929, isLocal: true, isDefinition: true)
!4962 = !DIGlobalVariableExpression(var: !4963, expr: !DIExpression())
!4963 = distinct !DIGlobalVariable(name: "cpu_root_attr_group", scope: !2, file: !3, line: 510, type: !344, isLocal: true, isDefinition: true)
!4964 = !DIGlobalVariableExpression(var: !4965, expr: !DIExpression())
!4965 = distinct !DIGlobalVariable(name: "cpu_root_attrs", scope: !2, file: !3, line: 487, type: !4966, isLocal: true, isDefinition: true)
!4966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 576, elements: !4967)
!4967 = !{!4968}
!4968 = !DISubrange(count: 9)
!4969 = !DIGlobalVariableExpression(var: !4970, expr: !DIExpression())
!4970 = distinct !DIGlobalVariable(scope: null, file: !3, line: 228, type: !4971, isLocal: true, isDefinition: true)
!4971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 56, elements: !753)
!4972 = !DIGlobalVariableExpression(var: !4973, expr: !DIExpression())
!4973 = distinct !DIGlobalVariable(scope: null, file: !3, line: 229, type: !4974, isLocal: true, isDefinition: true)
!4974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 72, elements: !4967)
!4975 = !DIGlobalVariableExpression(var: !4976, expr: !DIExpression())
!4976 = distinct !DIGlobalVariable(scope: null, file: !3, line: 230, type: !3151, isLocal: true, isDefinition: true)
!4977 = !DIGlobalVariableExpression(var: !4978, expr: !DIExpression())
!4978 = distinct !DIGlobalVariable(name: "cpu_attrs", scope: !2, file: !3, line: 227, type: !4979, isLocal: true, isDefinition: true)
!4979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4861, size: 960, elements: !291)
!4980 = !DIGlobalVariableExpression(var: !4981, expr: !DIExpression())
!4981 = distinct !DIGlobalVariable(scope: null, file: !3, line: 241, type: !4982, isLocal: true, isDefinition: true)
!4982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 88, elements: !4983)
!4983 = !{!4984}
!4984 = !DISubrange(count: 11)
!4985 = !DIGlobalVariableExpression(var: !4986, expr: !DIExpression())
!4986 = distinct !DIGlobalVariable(name: "dev_attr_kernel_max", scope: !2, file: !3, line: 241, type: !4864, isLocal: true, isDefinition: true)
!4987 = !DIGlobalVariableExpression(var: !4988, expr: !DIExpression())
!4988 = distinct !DIGlobalVariable(scope: null, file: !3, line: 239, type: !4881, isLocal: true, isDefinition: true)
!4989 = !DIGlobalVariableExpression(var: !4990, expr: !DIExpression())
!4990 = distinct !DIGlobalVariable(scope: null, file: !3, line: 274, type: !3151, isLocal: true, isDefinition: true)
!4991 = !DIGlobalVariableExpression(var: !4992, expr: !DIExpression())
!4992 = distinct !DIGlobalVariable(name: "dev_attr_offline", scope: !2, file: !3, line: 274, type: !4864, isLocal: true, isDefinition: true)
!4993 = !DIGlobalVariableExpression(var: !4994, expr: !DIExpression())
!4994 = distinct !DIGlobalVariable(scope: null, file: !3, line: 256, type: !1913, isLocal: true, isDefinition: true)
!4995 = !DIGlobalVariableExpression(var: !4996, expr: !DIExpression())
!4996 = distinct !DIGlobalVariable(scope: null, file: !3, line: 261, type: !4926, isLocal: true, isDefinition: true)
!4997 = !DIGlobalVariableExpression(var: !4998, expr: !DIExpression())
!4998 = distinct !DIGlobalVariable(scope: null, file: !3, line: 264, type: !4999, isLocal: true, isDefinition: true)
!4999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 24, elements: !291)
!5000 = !DIGlobalVariableExpression(var: !5001, expr: !DIExpression())
!5001 = distinct !DIGlobalVariable(scope: null, file: !3, line: 266, type: !1913, isLocal: true, isDefinition: true)
!5002 = !DIGlobalVariableExpression(var: !5003, expr: !DIExpression())
!5003 = distinct !DIGlobalVariable(scope: null, file: !3, line: 293, type: !4974, isLocal: true, isDefinition: true)
!5004 = !DIGlobalVariableExpression(var: !5005, expr: !DIExpression())
!5005 = distinct !DIGlobalVariable(name: "dev_attr_isolated", scope: !2, file: !3, line: 293, type: !4864, isLocal: true, isDefinition: true)
!5006 = !DIGlobalVariableExpression(var: !5007, expr: !DIExpression())
!5007 = distinct !DIGlobalVariable(scope: null, file: !3, line: 287, type: !4971, isLocal: true, isDefinition: true)
!5008 = !DIGlobalVariableExpression(var: !5009, expr: !DIExpression())
!5009 = distinct !DIGlobalVariable(scope: null, file: !3, line: 311, type: !4957, isLocal: true, isDefinition: true)
!5010 = !DIGlobalVariableExpression(var: !5011, expr: !DIExpression())
!5011 = distinct !DIGlobalVariable(name: "dev_attr_crash_hotplug", scope: !2, file: !3, line: 311, type: !4864, isLocal: true, isDefinition: true)
!5012 = !DIGlobalVariableExpression(var: !5013, expr: !DIExpression())
!5013 = distinct !DIGlobalVariable(scope: null, file: !3, line: 484, type: !4974, isLocal: true, isDefinition: true)
!5014 = !DIGlobalVariableExpression(var: !5015, expr: !DIExpression())
!5015 = distinct !DIGlobalVariable(name: "dev_attr_modalias", scope: !2, file: !3, line: 484, type: !4864, isLocal: true, isDefinition: true)
!5016 = !DIGlobalVariableExpression(var: !5017, expr: !DIExpression())
!5017 = distinct !DIGlobalVariable(scope: null, file: !3, line: 614, type: !5018, isLocal: true, isDefinition: true)
!5018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 336, elements: !5019)
!5019 = !{!5020}
!5020 = !DISubrange(count: 42)
!5021 = !DIGlobalVariableExpression(var: !5022, expr: !DIExpression())
!5022 = distinct !DIGlobalVariable(scope: null, file: !3, line: 604, type: !2806, isLocal: true, isDefinition: true)
!5023 = !DIGlobalVariableExpression(var: !5024, expr: !DIExpression())
!5024 = distinct !DIGlobalVariable(name: "cpu_root_vulnerabilities_group", scope: !2, file: !3, line: 603, type: !344, isLocal: true, isDefinition: true)
!5025 = !DIGlobalVariableExpression(var: !5026, expr: !DIExpression())
!5026 = distinct !DIGlobalVariable(name: "cpu_root_vulnerabilities_attrs", scope: !2, file: !3, line: 585, type: !5027, isLocal: true, isDefinition: true)
!5027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 960, elements: !5028)
!5028 = !{!5029}
!5029 = !DISubrange(count: 15)
!5030 = !DIGlobalVariableExpression(var: !5031, expr: !DIExpression())
!5031 = distinct !DIGlobalVariable(scope: null, file: !3, line: 570, type: !4974, isLocal: true, isDefinition: true)
!5032 = !DIGlobalVariableExpression(var: !5033, expr: !DIExpression())
!5033 = distinct !DIGlobalVariable(name: "dev_attr_meltdown", scope: !2, file: !3, line: 570, type: !4864, isLocal: true, isDefinition: true)
!5034 = !DIGlobalVariableExpression(var: !5035, expr: !DIExpression())
!5035 = distinct !DIGlobalVariable(scope: null, file: !3, line: 571, type: !4982, isLocal: true, isDefinition: true)
!5036 = !DIGlobalVariableExpression(var: !5037, expr: !DIExpression())
!5037 = distinct !DIGlobalVariable(name: "dev_attr_spectre_v1", scope: !2, file: !3, line: 571, type: !4864, isLocal: true, isDefinition: true)
!5038 = !DIGlobalVariableExpression(var: !5039, expr: !DIExpression())
!5039 = distinct !DIGlobalVariable(scope: null, file: !3, line: 572, type: !4982, isLocal: true, isDefinition: true)
!5040 = !DIGlobalVariableExpression(var: !5041, expr: !DIExpression())
!5041 = distinct !DIGlobalVariable(name: "dev_attr_spectre_v2", scope: !2, file: !3, line: 572, type: !4864, isLocal: true, isDefinition: true)
!5042 = !DIGlobalVariableExpression(var: !5043, expr: !DIExpression())
!5043 = distinct !DIGlobalVariable(scope: null, file: !3, line: 573, type: !5044, isLocal: true, isDefinition: true)
!5044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 144, elements: !5045)
!5045 = !{!5046}
!5046 = !DISubrange(count: 18)
!5047 = !DIGlobalVariableExpression(var: !5048, expr: !DIExpression())
!5048 = distinct !DIGlobalVariable(name: "dev_attr_spec_store_bypass", scope: !2, file: !3, line: 573, type: !4864, isLocal: true, isDefinition: true)
!5049 = !DIGlobalVariableExpression(var: !5050, expr: !DIExpression())
!5050 = distinct !DIGlobalVariable(scope: null, file: !3, line: 574, type: !4950, isLocal: true, isDefinition: true)
!5051 = !DIGlobalVariableExpression(var: !5052, expr: !DIExpression())
!5052 = distinct !DIGlobalVariable(name: "dev_attr_l1tf", scope: !2, file: !3, line: 574, type: !4864, isLocal: true, isDefinition: true)
!5053 = !DIGlobalVariableExpression(var: !5054, expr: !DIExpression())
!5054 = distinct !DIGlobalVariable(scope: null, file: !3, line: 575, type: !4881, isLocal: true, isDefinition: true)
!5055 = !DIGlobalVariableExpression(var: !5056, expr: !DIExpression())
!5056 = distinct !DIGlobalVariable(name: "dev_attr_mds", scope: !2, file: !3, line: 575, type: !4864, isLocal: true, isDefinition: true)
!5057 = !DIGlobalVariableExpression(var: !5058, expr: !DIExpression())
!5058 = distinct !DIGlobalVariable(scope: null, file: !3, line: 576, type: !2806, isLocal: true, isDefinition: true)
!5059 = !DIGlobalVariableExpression(var: !5060, expr: !DIExpression())
!5060 = distinct !DIGlobalVariable(name: "dev_attr_tsx_async_abort", scope: !2, file: !3, line: 576, type: !4864, isLocal: true, isDefinition: true)
!5061 = !DIGlobalVariableExpression(var: !5062, expr: !DIExpression())
!5062 = distinct !DIGlobalVariable(scope: null, file: !3, line: 577, type: !4957, isLocal: true, isDefinition: true)
!5063 = !DIGlobalVariableExpression(var: !5064, expr: !DIExpression())
!5064 = distinct !DIGlobalVariable(name: "dev_attr_itlb_multihit", scope: !2, file: !3, line: 577, type: !4864, isLocal: true, isDefinition: true)
!5065 = !DIGlobalVariableExpression(var: !5066, expr: !DIExpression())
!5066 = distinct !DIGlobalVariable(scope: null, file: !3, line: 578, type: !1913, isLocal: true, isDefinition: true)
!5067 = !DIGlobalVariableExpression(var: !5068, expr: !DIExpression())
!5068 = distinct !DIGlobalVariable(name: "dev_attr_srbds", scope: !2, file: !3, line: 578, type: !4864, isLocal: true, isDefinition: true)
!5069 = !DIGlobalVariableExpression(var: !5070, expr: !DIExpression())
!5070 = distinct !DIGlobalVariable(scope: null, file: !3, line: 579, type: !2806, isLocal: true, isDefinition: true)
!5071 = !DIGlobalVariableExpression(var: !5072, expr: !DIExpression())
!5072 = distinct !DIGlobalVariable(name: "dev_attr_mmio_stale_data", scope: !2, file: !3, line: 579, type: !4864, isLocal: true, isDefinition: true)
!5073 = !DIGlobalVariableExpression(var: !5074, expr: !DIExpression())
!5074 = distinct !DIGlobalVariable(scope: null, file: !3, line: 580, type: !4974, isLocal: true, isDefinition: true)
!5075 = !DIGlobalVariableExpression(var: !5076, expr: !DIExpression())
!5076 = distinct !DIGlobalVariable(name: "dev_attr_retbleed", scope: !2, file: !3, line: 580, type: !4864, isLocal: true, isDefinition: true)
!5077 = !DIGlobalVariableExpression(var: !5078, expr: !DIExpression())
!5078 = distinct !DIGlobalVariable(scope: null, file: !3, line: 581, type: !4904, isLocal: true, isDefinition: true)
!5079 = !DIGlobalVariableExpression(var: !5080, expr: !DIExpression())
!5080 = distinct !DIGlobalVariable(name: "dev_attr_spec_rstack_overflow", scope: !2, file: !3, line: 581, type: !4864, isLocal: true, isDefinition: true)
!5081 = !DIGlobalVariableExpression(var: !5082, expr: !DIExpression())
!5082 = distinct !DIGlobalVariable(scope: null, file: !3, line: 582, type: !4904, isLocal: true, isDefinition: true)
!5083 = !DIGlobalVariableExpression(var: !5084, expr: !DIExpression())
!5084 = distinct !DIGlobalVariable(name: "dev_attr_gather_data_sampling", scope: !2, file: !3, line: 582, type: !4864, isLocal: true, isDefinition: true)
!5085 = !DIGlobalVariableExpression(var: !5086, expr: !DIExpression())
!5086 = distinct !DIGlobalVariable(scope: null, file: !3, line: 583, type: !5087, isLocal: true, isDefinition: true)
!5087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 184, elements: !5088)
!5088 = !{!5089}
!5089 = !DISubrange(count: 23)
!5090 = !DIGlobalVariableExpression(var: !5091, expr: !DIExpression())
!5091 = distinct !DIGlobalVariable(name: "dev_attr_reg_file_data_sampling", scope: !2, file: !3, line: 583, type: !4864, isLocal: true, isDefinition: true)
!5092 = !{i32 7, !"Dwarf Version", i32 5}
!5093 = !{i32 2, !"Debug Info Version", i32 3}
!5094 = !{i32 1, !"wchar_size", i32 2}
!5095 = !{i32 8, !"cf-protection-branch", i32 1}
!5096 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5097 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5098 = !{i32 1, !"Code Model", i32 2}
!5099 = !{i32 1, !"override-stack-alignment", i32 8}
!5100 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5101 = distinct !DISubprogram(name: "unregister_cpu", scope: !3, file: !3, line: 94, type: !5102, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5104)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{null, !4845}
!5104 = !{!5105, !5106, !5107, !5110}
!5105 = !DILocalVariable(name: "cpu", arg: 1, scope: !5101, file: !3, line: 94, type: !4845)
!5106 = !DILocalVariable(name: "logical_cpu", scope: !5101, file: !3, line: 96, type: !46)
!5107 = !DILocalVariable(name: "__vpp_verify", scope: !5108, file: !3, line: 101, type: !2629)
!5108 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 101, column: 2)
!5109 = distinct !DILexicalBlock(scope: !5101, file: !3, line: 101, column: 2)
!5110 = !DILocalVariable(name: "__ptr", scope: !5111, file: !3, line: 101, type: !340)
!5111 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 101, column: 2)
!5112 = !DILocation(line: 94, column: 33, scope: !5101)
!5113 = !DILocation(line: 96, column: 2, scope: !5101)
!5114 = !DILocation(line: 96, column: 6, scope: !5101)
!5115 = !DILocation(line: 96, column: 20, scope: !5101)
!5116 = !DILocation(line: 96, column: 25, scope: !5101)
!5117 = !DILocation(line: 96, column: 29, scope: !5101)
!5118 = !DILocation(line: 98, column: 28, scope: !5101)
!5119 = !DILocation(line: 98, column: 53, scope: !5101)
!5120 = !DILocation(line: 98, column: 41, scope: !5101)
!5121 = !DILocation(line: 98, column: 2, scope: !5101)
!5122 = !DILocation(line: 100, column: 21, scope: !5101)
!5123 = !DILocation(line: 100, column: 26, scope: !5101)
!5124 = !DILocation(line: 100, column: 2, scope: !5101)
!5125 = !DILocation(line: 101, column: 2, scope: !5109)
!5126 = !DILocation(line: 101, column: 2, scope: !5108)
!5127 = !DILocation(line: 101, column: 2, scope: !5111)
!5128 = !DILocation(line: 101, column: 40, scope: !5101)
!5129 = !DILocation(line: 103, column: 1, scope: !5101)
!5130 = !DISubprogram(name: "unregister_cpu_under_node", scope: !5131, file: !5131, line: 135, type: !5132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5131 = !DIFile(filename: "./include/linux/node.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aadba8a92b553e495dcaa748506449be")
!5132 = !DISubroutineType(types: !5133)
!5133 = !{!46, !7, !7}
!5134 = distinct !DISubprogram(name: "cpu_to_node", scope: !5135, file: !5135, line: 94, type: !2483, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5136)
!5135 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!5136 = !{!5137, !5138, !5141}
!5137 = !DILocalVariable(name: "cpu", arg: 1, scope: !5134, file: !5135, line: 94, type: !46)
!5138 = !DILocalVariable(name: "__vpp_verify", scope: !5139, file: !5135, line: 96, type: !2629)
!5139 = distinct !DILexicalBlock(scope: !5140, file: !5135, line: 96, column: 9)
!5140 = distinct !DILexicalBlock(scope: !5134, file: !5135, line: 96, column: 9)
!5141 = !DILocalVariable(name: "__ptr", scope: !5142, file: !5135, line: 96, type: !340)
!5142 = distinct !DILexicalBlock(scope: !5140, file: !5135, line: 96, column: 9)
!5143 = !DILocation(line: 94, column: 35, scope: !5134)
!5144 = !DILocation(line: 96, column: 9, scope: !5140)
!5145 = !DILocation(line: 96, column: 9, scope: !5139)
!5146 = !DILocation(line: 96, column: 9, scope: !5142)
!5147 = !DILocation(line: 96, column: 9, scope: !5134)
!5148 = !DILocation(line: 96, column: 2, scope: !5134)
!5149 = !DISubprogram(name: "device_unregister", scope: !26, file: !26, line: 1055, type: !4325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5150 = distinct !DISubprogram(name: "cpu_subsys_match", scope: !3, file: !3, line: 29, type: !4311, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5151)
!5151 = !{!5152, !5153}
!5152 = !DILocalVariable(name: "dev", arg: 1, scope: !5150, file: !3, line: 29, type: !194)
!5153 = !DILocalVariable(name: "drv", arg: 2, scope: !5150, file: !3, line: 29, type: !4294)
!5154 = !DILocation(line: 29, column: 44, scope: !5150)
!5155 = !DILocation(line: 29, column: 71, scope: !5150)
!5156 = !DILocation(line: 32, column: 31, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 32, column: 6)
!5158 = !DILocation(line: 32, column: 36, scope: !5157)
!5159 = !DILocation(line: 32, column: 6, scope: !5157)
!5160 = !DILocation(line: 32, column: 6, scope: !5150)
!5161 = !DILocation(line: 33, column: 3, scope: !5157)
!5162 = !DILocation(line: 35, column: 2, scope: !5150)
!5163 = !DILocation(line: 36, column: 1, scope: !5150)
!5164 = distinct !DISubprogram(name: "cpu_uevent", scope: !3, file: !3, line: 357, type: !4315, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5165)
!5165 = !{!5166, !5167, !5168}
!5166 = !DILocalVariable(name: "dev", arg: 1, scope: !5164, file: !3, line: 357, type: !4317)
!5167 = !DILocalVariable(name: "env", arg: 2, scope: !5164, file: !3, line: 357, type: !285)
!5168 = !DILocalVariable(name: "buf", scope: !5164, file: !3, line: 359, type: !290)
!5169 = !DILocation(line: 357, column: 44, scope: !5164)
!5170 = !DILocation(line: 357, column: 73, scope: !5164)
!5171 = !DILocation(line: 359, column: 2, scope: !5164)
!5172 = !DILocation(line: 359, column: 8, scope: !5164)
!5173 = !DILocation(line: 359, column: 14, scope: !5164)
!5174 = !DILocation(line: 360, column: 6, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 360, column: 6)
!5176 = !DILocation(line: 360, column: 6, scope: !5164)
!5177 = !DILocation(line: 361, column: 34, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 360, column: 11)
!5179 = !DILocation(line: 361, column: 3, scope: !5178)
!5180 = !DILocation(line: 362, column: 18, scope: !5178)
!5181 = !DILocation(line: 362, column: 38, scope: !5178)
!5182 = !DILocation(line: 362, column: 3, scope: !5178)
!5183 = !DILocation(line: 363, column: 9, scope: !5178)
!5184 = !DILocation(line: 363, column: 3, scope: !5178)
!5185 = !DILocation(line: 364, column: 2, scope: !5178)
!5186 = !DILocation(line: 366, column: 1, scope: !5164)
!5187 = !DILocation(line: 365, column: 2, scope: !5164)
!5188 = distinct !DISubprogram(name: "cpu_subsys_online", scope: !3, file: !3, line: 48, type: !4321, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5189)
!5189 = !{!5190, !5191, !5192, !5194, !5195, !5196, !5197, !5198, !5199}
!5190 = !DILocalVariable(name: "dev", arg: 1, scope: !5188, file: !3, line: 48, type: !194)
!5191 = !DILocalVariable(name: "cpu", scope: !5188, file: !3, line: 50, type: !4845)
!5192 = !DILocalVariable(name: "__mptr", scope: !5193, file: !3, line: 50, type: !362)
!5193 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 50, column: 20)
!5194 = !DILocalVariable(name: "cpuid", scope: !5188, file: !3, line: 51, type: !46)
!5195 = !DILocalVariable(name: "from_nid", scope: !5188, file: !3, line: 52, type: !46)
!5196 = !DILocalVariable(name: "to_nid", scope: !5188, file: !3, line: 52, type: !46)
!5197 = !DILocalVariable(name: "ret", scope: !5188, file: !3, line: 53, type: !46)
!5198 = !DILocalVariable(name: "retries", scope: !5188, file: !3, line: 54, type: !46)
!5199 = !DILabel(scope: !5188, name: "retry", file: !3, line: 60)
!5200 = !DILocation(line: 48, column: 45, scope: !5188)
!5201 = !DILocation(line: 50, column: 2, scope: !5188)
!5202 = !DILocation(line: 50, column: 14, scope: !5188)
!5203 = !DILocation(line: 50, column: 20, scope: !5193)
!5204 = !DILocation(line: 50, column: 20, scope: !5188)
!5205 = !DILocation(line: 51, column: 2, scope: !5188)
!5206 = !DILocation(line: 51, column: 6, scope: !5188)
!5207 = !DILocation(line: 51, column: 14, scope: !5188)
!5208 = !DILocation(line: 51, column: 19, scope: !5188)
!5209 = !DILocation(line: 52, column: 2, scope: !5188)
!5210 = !DILocation(line: 52, column: 6, scope: !5188)
!5211 = !DILocation(line: 52, column: 16, scope: !5188)
!5212 = !DILocation(line: 53, column: 2, scope: !5188)
!5213 = !DILocation(line: 53, column: 6, scope: !5188)
!5214 = !DILocation(line: 54, column: 2, scope: !5188)
!5215 = !DILocation(line: 54, column: 6, scope: !5188)
!5216 = !DILocation(line: 56, column: 25, scope: !5188)
!5217 = !DILocation(line: 56, column: 13, scope: !5188)
!5218 = !DILocation(line: 56, column: 11, scope: !5188)
!5219 = !DILocation(line: 57, column: 6, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 57, column: 6)
!5221 = !DILocation(line: 57, column: 15, scope: !5220)
!5222 = !DILocation(line: 57, column: 6, scope: !5188)
!5223 = !DILocation(line: 58, column: 3, scope: !5220)
!5224 = !DILocation(line: 57, column: 18, scope: !5220)
!5225 = !DILocation(line: 60, column: 1, scope: !5188)
!5226 = !DILocation(line: 61, column: 22, scope: !5188)
!5227 = !DILocation(line: 61, column: 8, scope: !5188)
!5228 = !DILocation(line: 61, column: 6, scope: !5188)
!5229 = !DILocation(line: 70, column: 6, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 70, column: 6)
!5231 = !DILocation(line: 70, column: 10, scope: !5230)
!5232 = !DILocation(line: 70, column: 6, scope: !5188)
!5233 = !DILocation(line: 71, column: 10, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 70, column: 21)
!5235 = !DILocation(line: 72, column: 7, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 72, column: 7)
!5237 = !DILocation(line: 72, column: 15, scope: !5236)
!5238 = !DILocation(line: 72, column: 7, scope: !5234)
!5239 = !DILocation(line: 73, column: 11, scope: !5236)
!5240 = !DILocation(line: 73, column: 4, scope: !5236)
!5241 = !DILocation(line: 74, column: 21, scope: !5234)
!5242 = !DILocation(line: 74, column: 18, scope: !5234)
!5243 = !DILocation(line: 74, column: 13, scope: !5234)
!5244 = !DILocation(line: 74, column: 3, scope: !5234)
!5245 = !DILocation(line: 75, column: 3, scope: !5234)
!5246 = !DILocation(line: 82, column: 23, scope: !5188)
!5247 = !DILocation(line: 82, column: 11, scope: !5188)
!5248 = !DILocation(line: 82, column: 9, scope: !5188)
!5249 = !DILocation(line: 83, column: 6, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 83, column: 6)
!5251 = !DILocation(line: 83, column: 18, scope: !5250)
!5252 = !DILocation(line: 83, column: 15, scope: !5250)
!5253 = !DILocation(line: 83, column: 6, scope: !5188)
!5254 = !DILocation(line: 84, column: 25, scope: !5250)
!5255 = !DILocation(line: 84, column: 30, scope: !5250)
!5256 = !DILocation(line: 84, column: 40, scope: !5250)
!5257 = !DILocation(line: 84, column: 3, scope: !5250)
!5258 = !DILocation(line: 86, column: 9, scope: !5188)
!5259 = !DILocation(line: 86, column: 2, scope: !5188)
!5260 = !DILocation(line: 87, column: 1, scope: !5188)
!5261 = distinct !DISubprogram(name: "cpu_subsys_offline", scope: !3, file: !3, line: 89, type: !4321, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5262)
!5262 = !{!5263}
!5263 = !DILocalVariable(name: "dev", arg: 1, scope: !5261, file: !3, line: 89, type: !194)
!5264 = !DILocation(line: 89, column: 46, scope: !5261)
!5265 = !DILocation(line: 91, column: 25, scope: !5261)
!5266 = !DILocation(line: 91, column: 9, scope: !5261)
!5267 = !DILocation(line: 91, column: 2, scope: !5261)
!5268 = distinct !DISubprogram(name: "register_cpu", scope: !3, file: !3, line: 391, type: !5269, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5271)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{!46, !4845, !46}
!5271 = !{!5272, !5273, !5274, !5275, !5278}
!5272 = !DILocalVariable(name: "cpu", arg: 1, scope: !5268, file: !3, line: 391, type: !4845)
!5273 = !DILocalVariable(name: "num", arg: 2, scope: !5268, file: !3, line: 391, type: !46)
!5274 = !DILocalVariable(name: "error", scope: !5268, file: !3, line: 393, type: !46)
!5275 = !DILocalVariable(name: "__vpp_verify", scope: !5276, file: !3, line: 412, type: !2629)
!5276 = distinct !DILexicalBlock(scope: !5277, file: !3, line: 412, column: 2)
!5277 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 412, column: 2)
!5278 = !DILocalVariable(name: "__ptr", scope: !5279, file: !3, line: 412, type: !340)
!5279 = distinct !DILexicalBlock(scope: !5277, file: !3, line: 412, column: 2)
!5280 = !DILocation(line: 391, column: 30, scope: !5268)
!5281 = !DILocation(line: 391, column: 39, scope: !5268)
!5282 = !DILocation(line: 393, column: 2, scope: !5268)
!5283 = !DILocation(line: 393, column: 6, scope: !5268)
!5284 = !DILocation(line: 395, column: 29, scope: !5268)
!5285 = !DILocation(line: 395, column: 17, scope: !5268)
!5286 = !DILocation(line: 395, column: 2, scope: !5268)
!5287 = !DILocation(line: 395, column: 7, scope: !5268)
!5288 = !DILocation(line: 395, column: 15, scope: !5268)
!5289 = !DILocation(line: 396, column: 10, scope: !5268)
!5290 = !DILocation(line: 396, column: 15, scope: !5268)
!5291 = !DILocation(line: 396, column: 2, scope: !5268)
!5292 = !DILocation(line: 397, column: 16, scope: !5268)
!5293 = !DILocation(line: 397, column: 2, scope: !5268)
!5294 = !DILocation(line: 397, column: 7, scope: !5268)
!5295 = !DILocation(line: 397, column: 11, scope: !5268)
!5296 = !DILocation(line: 397, column: 14, scope: !5268)
!5297 = !DILocation(line: 398, column: 2, scope: !5268)
!5298 = !DILocation(line: 398, column: 7, scope: !5268)
!5299 = !DILocation(line: 398, column: 11, scope: !5268)
!5300 = !DILocation(line: 398, column: 15, scope: !5268)
!5301 = !DILocation(line: 399, column: 2, scope: !5268)
!5302 = !DILocation(line: 399, column: 7, scope: !5268)
!5303 = !DILocation(line: 399, column: 11, scope: !5268)
!5304 = !DILocation(line: 399, column: 19, scope: !5268)
!5305 = !DILocation(line: 400, column: 31, scope: !5268)
!5306 = !DILocation(line: 400, column: 36, scope: !5268)
!5307 = !DILocation(line: 400, column: 30, scope: !5268)
!5308 = !DILocation(line: 400, column: 2, scope: !5268)
!5309 = !DILocation(line: 400, column: 7, scope: !5268)
!5310 = !DILocation(line: 400, column: 11, scope: !5268)
!5311 = !DILocation(line: 400, column: 28, scope: !5268)
!5312 = !DILocation(line: 401, column: 33, scope: !5268)
!5313 = !DILocation(line: 401, column: 22, scope: !5268)
!5314 = !DILocation(line: 401, column: 21, scope: !5268)
!5315 = !DILocation(line: 401, column: 2, scope: !5268)
!5316 = !DILocation(line: 401, column: 7, scope: !5268)
!5317 = !DILocation(line: 401, column: 11, scope: !5268)
!5318 = !DILocation(line: 401, column: 19, scope: !5268)
!5319 = !DILocation(line: 402, column: 37, scope: !5268)
!5320 = !DILocation(line: 402, column: 21, scope: !5268)
!5321 = !DILocation(line: 402, column: 2, scope: !5268)
!5322 = !DILocation(line: 402, column: 7, scope: !5268)
!5323 = !DILocation(line: 402, column: 11, scope: !5268)
!5324 = !DILocation(line: 402, column: 19, scope: !5268)
!5325 = !DILocation(line: 403, column: 2, scope: !5268)
!5326 = !DILocation(line: 403, column: 7, scope: !5268)
!5327 = !DILocation(line: 403, column: 11, scope: !5268)
!5328 = !DILocation(line: 403, column: 18, scope: !5268)
!5329 = !DILocation(line: 404, column: 6, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 404, column: 6)
!5331 = !DILocation(line: 404, column: 11, scope: !5330)
!5332 = !DILocation(line: 404, column: 6, scope: !5268)
!5333 = !DILocation(line: 405, column: 3, scope: !5330)
!5334 = !DILocation(line: 405, column: 8, scope: !5330)
!5335 = !DILocation(line: 405, column: 12, scope: !5330)
!5336 = !DILocation(line: 405, column: 19, scope: !5330)
!5337 = !DILocation(line: 406, column: 27, scope: !5268)
!5338 = !DILocation(line: 406, column: 32, scope: !5268)
!5339 = !DILocation(line: 406, column: 10, scope: !5268)
!5340 = !DILocation(line: 406, column: 8, scope: !5268)
!5341 = !DILocation(line: 407, column: 6, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 407, column: 6)
!5343 = !DILocation(line: 407, column: 6, scope: !5268)
!5344 = !DILocation(line: 408, column: 15, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 407, column: 13)
!5346 = !DILocation(line: 408, column: 20, scope: !5345)
!5347 = !DILocation(line: 408, column: 3, scope: !5345)
!5348 = !DILocation(line: 409, column: 10, scope: !5345)
!5349 = !DILocation(line: 409, column: 3, scope: !5345)
!5350 = !DILocation(line: 412, column: 35, scope: !5268)
!5351 = !DILocation(line: 412, column: 40, scope: !5268)
!5352 = !DILocation(line: 412, column: 2, scope: !5277)
!5353 = !DILocation(line: 412, column: 2, scope: !5276)
!5354 = !DILocation(line: 412, column: 2, scope: !5279)
!5355 = !DILocation(line: 412, column: 32, scope: !5268)
!5356 = !DILocation(line: 413, column: 26, scope: !5268)
!5357 = !DILocation(line: 413, column: 43, scope: !5268)
!5358 = !DILocation(line: 413, column: 31, scope: !5268)
!5359 = !DILocation(line: 413, column: 2, scope: !5268)
!5360 = !DILocation(line: 414, column: 35, scope: !5268)
!5361 = !DILocation(line: 414, column: 40, scope: !5268)
!5362 = !DILocation(line: 414, column: 2, scope: !5268)
!5363 = !DILocation(line: 417, column: 2, scope: !5268)
!5364 = !DILocation(line: 418, column: 1, scope: !5268)
!5365 = distinct !DISubprogram(name: "cpu_device_release", scope: !3, file: !3, line: 314, type: !4325, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5366)
!5366 = !{!5367}
!5367 = !DILocalVariable(name: "dev", arg: 1, scope: !5365, file: !3, line: 314, type: !194)
!5368 = !DILocation(line: 314, column: 47, scope: !5365)
!5369 = !DILocation(line: 331, column: 1, scope: !5365)
!5370 = distinct !DISubprogram(name: "cpu_online", scope: !1644, file: !1644, line: 1080, type: !5371, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5373)
!5371 = !DISubroutineType(types: !5372)
!5372 = !{!712, !7}
!5373 = !{!5374}
!5374 = !DILocalVariable(name: "cpu", arg: 1, scope: !5370, file: !1644, line: 1080, type: !7)
!5375 = !DILocation(line: 1080, column: 44, scope: !5370)
!5376 = !DILocation(line: 1082, column: 26, scope: !5370)
!5377 = !DILocation(line: 1082, column: 9, scope: !5370)
!5378 = !DILocation(line: 1082, column: 2, scope: !5370)
!5379 = distinct !DISubprogram(name: "of_get_cpu_node", scope: !4663, file: !4663, line: 632, type: !5380, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5382)
!5380 = !DISubroutineType(types: !5381)
!5381 = !{!4661, !46, !704}
!5382 = !{!5383, !5384}
!5383 = !DILocalVariable(name: "cpu", arg: 1, scope: !5379, file: !4663, line: 632, type: !46)
!5384 = !DILocalVariable(name: "thread", arg: 2, scope: !5379, file: !4663, line: 633, type: !704)
!5385 = !DILocation(line: 632, column: 55, scope: !5379)
!5386 = !DILocation(line: 633, column: 20, scope: !5379)
!5387 = !DILocation(line: 635, column: 2, scope: !5379)
!5388 = !DISubprogram(name: "device_register", scope: !26, file: !26, line: 1054, type: !4321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5389 = !DISubprogram(name: "put_device", scope: !26, file: !26, line: 1231, type: !4325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5390 = !DISubprogram(name: "register_cpu_under_node", scope: !5131, file: !5131, line: 134, type: !5132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5391 = !DISubprogram(name: "dev_pm_qos_expose_latency_limit", scope: !54, file: !54, line: 185, type: !5392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5392 = !DISubroutineType(types: !5393)
!5393 = !{!46, !194, !628}
!5394 = distinct !DISubprogram(name: "get_cpu_device", scope: !3, file: !3, line: 420, type: !5395, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5397)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{!194, !7}
!5397 = !{!5398, !5399, !5403}
!5398 = !DILocalVariable(name: "cpu", arg: 1, scope: !5394, file: !3, line: 420, type: !7)
!5399 = !DILocalVariable(name: "__vpp_verify", scope: !5400, file: !3, line: 423, type: !2629)
!5400 = distinct !DILexicalBlock(scope: !5401, file: !3, line: 423, column: 10)
!5401 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 423, column: 10)
!5402 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 422, column: 6)
!5403 = !DILocalVariable(name: "__ptr", scope: !5404, file: !3, line: 423, type: !340)
!5404 = distinct !DILexicalBlock(scope: !5401, file: !3, line: 423, column: 10)
!5405 = !DILocation(line: 420, column: 44, scope: !5394)
!5406 = !DILocation(line: 422, column: 6, scope: !5402)
!5407 = !DILocation(line: 422, column: 12, scope: !5402)
!5408 = !DILocation(line: 422, column: 10, scope: !5402)
!5409 = !DILocation(line: 422, column: 23, scope: !5402)
!5410 = !DILocation(line: 422, column: 39, scope: !5402)
!5411 = !DILocation(line: 422, column: 26, scope: !5402)
!5412 = !DILocation(line: 422, column: 6, scope: !5394)
!5413 = !DILocation(line: 423, column: 10, scope: !5401)
!5414 = !DILocation(line: 423, column: 10, scope: !5400)
!5415 = !DILocation(line: 423, column: 10, scope: !5404)
!5416 = !DILocation(line: 423, column: 10, scope: !5402)
!5417 = !DILocation(line: 423, column: 3, scope: !5402)
!5418 = !DILocation(line: 425, column: 3, scope: !5402)
!5419 = !DILocation(line: 426, column: 1, scope: !5394)
!5420 = distinct !DISubprogram(name: "cpu_possible", scope: !1644, file: !1644, line: 1085, type: !5371, scopeLine: 1086, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5421)
!5421 = !{!5422}
!5422 = !DILocalVariable(name: "cpu", arg: 1, scope: !5420, file: !1644, line: 1085, type: !7)
!5423 = !DILocation(line: 1085, column: 46, scope: !5420)
!5424 = !DILocation(line: 1087, column: 26, scope: !5420)
!5425 = !DILocation(line: 1087, column: 9, scope: !5420)
!5426 = !DILocation(line: 1087, column: 2, scope: !5420)
!5427 = distinct !DISubprogram(name: "cpu_device_create", scope: !3, file: !3, line: 469, type: !5428, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5430)
!5428 = !DISubroutineType(types: !5429)
!5429 = !{!194, !194, !362, !342, !202, null}
!5430 = !{!5431, !5432, !5433, !5434, !5435, !5446}
!5431 = !DILocalVariable(name: "parent", arg: 1, scope: !5427, file: !3, line: 469, type: !194)
!5432 = !DILocalVariable(name: "drvdata", arg: 2, scope: !5427, file: !3, line: 469, type: !362)
!5433 = !DILocalVariable(name: "groups", arg: 3, scope: !5427, file: !3, line: 470, type: !342)
!5434 = !DILocalVariable(name: "fmt", arg: 4, scope: !5427, file: !3, line: 471, type: !202)
!5435 = !DILocalVariable(name: "vargs", scope: !5427, file: !3, line: 473, type: !5436)
!5436 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !5437, line: 5, baseType: !5438)
!5437 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!5438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !5439)
!5439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5440, size: 192, elements: !1649)
!5440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !5441)
!5441 = !{!5442, !5443, !5444, !5445}
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5440, file: !3, line: 473, baseType: !7, size: 32)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5440, file: !3, line: 473, baseType: !7, size: 32, offset: 32)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5440, file: !3, line: 473, baseType: !362, size: 64, offset: 64)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5440, file: !3, line: 473, baseType: !362, size: 64, offset: 128)
!5446 = !DILocalVariable(name: "dev", scope: !5427, file: !3, line: 474, type: !194)
!5447 = !DILocation(line: 469, column: 49, scope: !5427)
!5448 = !DILocation(line: 469, column: 63, scope: !5427)
!5449 = !DILocation(line: 470, column: 37, scope: !5427)
!5450 = !DILocation(line: 471, column: 18, scope: !5427)
!5451 = !DILocation(line: 473, column: 2, scope: !5427)
!5452 = !DILocation(line: 473, column: 10, scope: !5427)
!5453 = !DILocation(line: 474, column: 2, scope: !5427)
!5454 = !DILocation(line: 474, column: 17, scope: !5427)
!5455 = !DILocation(line: 476, column: 2, scope: !5427)
!5456 = !DILocation(line: 477, column: 28, scope: !5427)
!5457 = !DILocation(line: 477, column: 36, scope: !5427)
!5458 = !DILocation(line: 477, column: 45, scope: !5427)
!5459 = !DILocation(line: 477, column: 53, scope: !5427)
!5460 = !DILocation(line: 477, column: 58, scope: !5427)
!5461 = !DILocation(line: 477, column: 8, scope: !5427)
!5462 = !DILocation(line: 477, column: 6, scope: !5427)
!5463 = !DILocation(line: 478, column: 2, scope: !5427)
!5464 = !DILocation(line: 479, column: 9, scope: !5427)
!5465 = !DILocation(line: 480, column: 1, scope: !5427)
!5466 = !DILocation(line: 479, column: 2, scope: !5427)
!5467 = distinct !DISubprogram(name: "__cpu_device_create", scope: !3, file: !3, line: 436, type: !5468, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5471)
!5468 = !DISubroutineType(types: !5469)
!5469 = !{!194, !194, !362, !342, !202, !5470}
!5470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5440, size: 64)
!5471 = !{!5472, !5473, !5474, !5475, !5476, !5477, !5478, !5479}
!5472 = !DILocalVariable(name: "parent", arg: 1, scope: !5467, file: !3, line: 436, type: !194)
!5473 = !DILocalVariable(name: "drvdata", arg: 2, scope: !5467, file: !3, line: 436, type: !362)
!5474 = !DILocalVariable(name: "groups", arg: 3, scope: !5467, file: !3, line: 437, type: !342)
!5475 = !DILocalVariable(name: "fmt", arg: 4, scope: !5467, file: !3, line: 438, type: !202)
!5476 = !DILocalVariable(name: "args", arg: 5, scope: !5467, file: !3, line: 438, type: !5470)
!5477 = !DILocalVariable(name: "dev", scope: !5467, file: !3, line: 440, type: !194)
!5478 = !DILocalVariable(name: "retval", scope: !5467, file: !3, line: 441, type: !46)
!5479 = !DILabel(scope: !5467, name: "error", file: !3, line: 464)
!5480 = !DILocation(line: 436, column: 36, scope: !5467)
!5481 = !DILocation(line: 436, column: 50, scope: !5467)
!5482 = !DILocation(line: 437, column: 38, scope: !5467)
!5483 = !DILocation(line: 438, column: 19, scope: !5467)
!5484 = !DILocation(line: 438, column: 32, scope: !5467)
!5485 = !DILocation(line: 440, column: 2, scope: !5467)
!5486 = !DILocation(line: 440, column: 17, scope: !5467)
!5487 = !DILocation(line: 441, column: 2, scope: !5467)
!5488 = !DILocation(line: 441, column: 6, scope: !5467)
!5489 = !DILocation(line: 443, column: 8, scope: !5467)
!5490 = !DILocation(line: 443, column: 6, scope: !5467)
!5491 = !DILocation(line: 444, column: 7, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 444, column: 6)
!5493 = !DILocation(line: 444, column: 6, scope: !5467)
!5494 = !DILocation(line: 445, column: 3, scope: !5492)
!5495 = !DILocation(line: 447, column: 20, scope: !5467)
!5496 = !DILocation(line: 447, column: 2, scope: !5467)
!5497 = !DILocation(line: 448, column: 16, scope: !5467)
!5498 = !DILocation(line: 448, column: 2, scope: !5467)
!5499 = !DILocation(line: 448, column: 7, scope: !5467)
!5500 = !DILocation(line: 448, column: 14, scope: !5467)
!5501 = !DILocation(line: 449, column: 16, scope: !5467)
!5502 = !DILocation(line: 449, column: 2, scope: !5467)
!5503 = !DILocation(line: 449, column: 7, scope: !5467)
!5504 = !DILocation(line: 449, column: 14, scope: !5467)
!5505 = !DILocation(line: 450, column: 2, scope: !5467)
!5506 = !DILocation(line: 450, column: 7, scope: !5467)
!5507 = !DILocation(line: 450, column: 15, scope: !5467)
!5508 = !DILocation(line: 451, column: 29, scope: !5467)
!5509 = !DILocation(line: 451, column: 2, scope: !5467)
!5510 = !DILocation(line: 452, column: 18, scope: !5467)
!5511 = !DILocation(line: 452, column: 23, scope: !5467)
!5512 = !DILocation(line: 452, column: 2, scope: !5467)
!5513 = !DILocation(line: 454, column: 35, scope: !5467)
!5514 = !DILocation(line: 454, column: 40, scope: !5467)
!5515 = !DILocation(line: 454, column: 46, scope: !5467)
!5516 = !DILocation(line: 454, column: 51, scope: !5467)
!5517 = !DILocation(line: 454, column: 11, scope: !5467)
!5518 = !DILocation(line: 454, column: 9, scope: !5467)
!5519 = !DILocation(line: 455, column: 6, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 455, column: 6)
!5521 = !DILocation(line: 455, column: 6, scope: !5467)
!5522 = !DILocation(line: 456, column: 3, scope: !5520)
!5523 = !DILocation(line: 458, column: 22, scope: !5467)
!5524 = !DILocation(line: 458, column: 11, scope: !5467)
!5525 = !DILocation(line: 458, column: 9, scope: !5467)
!5526 = !DILocation(line: 459, column: 6, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 459, column: 6)
!5528 = !DILocation(line: 459, column: 6, scope: !5467)
!5529 = !DILocation(line: 460, column: 3, scope: !5527)
!5530 = !DILocation(line: 462, column: 9, scope: !5467)
!5531 = !DILocation(line: 462, column: 2, scope: !5467)
!5532 = !DILocation(line: 464, column: 1, scope: !5467)
!5533 = !DILocation(line: 465, column: 13, scope: !5467)
!5534 = !DILocation(line: 465, column: 2, scope: !5467)
!5535 = !DILocation(line: 466, column: 17, scope: !5467)
!5536 = !DILocation(line: 466, column: 9, scope: !5467)
!5537 = !DILocation(line: 466, column: 2, scope: !5467)
!5538 = !DILocation(line: 467, column: 1, scope: !5467)
!5539 = distinct !DISubprogram(name: "cpu_is_hotpluggable", scope: !3, file: !3, line: 519, type: !5371, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5540)
!5540 = !{!5541, !5542, !5543}
!5541 = !DILocalVariable(name: "cpu", arg: 1, scope: !5539, file: !3, line: 519, type: !7)
!5542 = !DILocalVariable(name: "dev", scope: !5539, file: !3, line: 521, type: !194)
!5543 = !DILocalVariable(name: "__mptr", scope: !5544, file: !3, line: 522, type: !362)
!5544 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 522, column: 16)
!5545 = !DILocation(line: 519, column: 39, scope: !5539)
!5546 = !DILocation(line: 521, column: 2, scope: !5539)
!5547 = !DILocation(line: 521, column: 17, scope: !5539)
!5548 = !DILocation(line: 521, column: 38, scope: !5539)
!5549 = !DILocation(line: 521, column: 23, scope: !5539)
!5550 = !DILocation(line: 522, column: 9, scope: !5539)
!5551 = !DILocation(line: 522, column: 13, scope: !5539)
!5552 = !DILocation(line: 522, column: 16, scope: !5544)
!5553 = !DILocation(line: 522, column: 16, scope: !5539)
!5554 = !DILocation(line: 522, column: 52, scope: !5539)
!5555 = !DILocation(line: 523, column: 3, scope: !5539)
!5556 = !DILocation(line: 523, column: 33, scope: !5539)
!5557 = !DILocation(line: 523, column: 6, scope: !5539)
!5558 = !DILocation(line: 0, scope: !5539)
!5559 = !DILocation(line: 524, column: 1, scope: !5539)
!5560 = !DILocation(line: 522, column: 2, scope: !5539)
!5561 = distinct !DISubprogram(name: "tick_nohz_cpu_hotpluggable", scope: !5562, file: !5562, line: 291, type: !5371, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5563)
!5562 = !DIFile(filename: "./include/linux/tick.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e1e58d669c75211497f9e6bb3ab6476")
!5563 = !{!5564}
!5564 = !DILocalVariable(name: "cpu", arg: 1, scope: !5561, file: !5562, line: 291, type: !7)
!5565 = !DILocation(line: 291, column: 60, scope: !5561)
!5566 = !DILocation(line: 291, column: 67, scope: !5561)
!5567 = distinct !DISubprogram(name: "cpu_show_not_affected", scope: !3, file: !3, line: 544, type: !4869, scopeLine: 546, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5568)
!5568 = !{!5569, !5570, !5571}
!5569 = !DILocalVariable(name: "dev", arg: 1, scope: !5567, file: !3, line: 544, type: !194)
!5570 = !DILocalVariable(name: "attr", arg: 2, scope: !5567, file: !3, line: 545, type: !4871)
!5571 = !DILocalVariable(name: "buf", arg: 3, scope: !5567, file: !3, line: 545, type: !290)
!5572 = !DILocation(line: 544, column: 53, scope: !5567)
!5573 = !DILocation(line: 545, column: 35, scope: !5567)
!5574 = !DILocation(line: 545, column: 47, scope: !5567)
!5575 = !DILocation(line: 547, column: 20, scope: !5567)
!5576 = !DILocation(line: 547, column: 9, scope: !5567)
!5577 = !DILocation(line: 547, column: 2, scope: !5567)
!5578 = distinct !DISubprogram(name: "cpu_dev_init", scope: !3, file: !3, line: 623, type: !997, scopeLine: 624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5579 = !DILocation(line: 625, column: 6, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5578, file: !3, line: 625, column: 6)
!5581 = !DILocation(line: 625, column: 6, scope: !5578)
!5582 = !DILocation(line: 626, column: 3, scope: !5580)
!5583 = !DILocation(line: 628, column: 2, scope: !5578)
!5584 = !DILocation(line: 629, column: 2, scope: !5578)
!5585 = !DILocation(line: 630, column: 1, scope: !5578)
!5586 = !DISubprogram(name: "subsys_system_register", scope: !26, file: !26, line: 75, type: !5587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5587 = !DISubroutineType(types: !5588)
!5588 = !{!46, !5589, !342}
!5589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!5590 = !DISubprogram(name: "panic", scope: !5591, file: !5591, line: 12, type: !5592, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5591 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!5592 = !DISubroutineType(types: !5593)
!5593 = !{null, !202, null}
!5594 = distinct !DISubprogram(name: "cpu_dev_register_generic", scope: !3, file: !3, line: 531, type: !997, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5595 = !DILocation(line: 541, column: 1, scope: !5594)
!5596 = distinct !DISubprogram(name: "cpu_register_vulnerabilities", scope: !3, file: !3, line: 608, type: !997, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5597)
!5597 = !{!5598}
!5598 = !DILocalVariable(name: "dev", scope: !5596, file: !3, line: 610, type: !194)
!5599 = !DILocation(line: 610, column: 2, scope: !5596)
!5600 = !DILocation(line: 610, column: 17, scope: !5596)
!5601 = !DILocation(line: 610, column: 23, scope: !5596)
!5602 = !DILocation(line: 612, column: 6, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 612, column: 6)
!5604 = !DILocation(line: 612, column: 6, scope: !5596)
!5605 = !DILocation(line: 613, column: 27, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5607, file: !3, line: 613, column: 7)
!5607 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 612, column: 11)
!5608 = !DILocation(line: 613, column: 32, scope: !5606)
!5609 = !DILocation(line: 613, column: 7, scope: !5606)
!5610 = !DILocation(line: 613, column: 7, scope: !5607)
!5611 = !DILocation(line: 614, column: 4, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5606, file: !3, line: 614, column: 4)
!5613 = !DILocation(line: 614, column: 4, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 614, column: 4)
!5615 = !DILocation(line: 614, column: 4, scope: !5606)
!5616 = !DILocation(line: 615, column: 14, scope: !5607)
!5617 = !DILocation(line: 615, column: 3, scope: !5607)
!5618 = !DILocation(line: 616, column: 2, scope: !5607)
!5619 = !DILocation(line: 617, column: 1, scope: !5596)
!5620 = !DISubprogram(name: "acpi_driver_match_device", scope: !5621, file: !5621, line: 715, type: !5622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5621 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!5622 = !DISubroutineType(types: !5623)
!5623 = !{!712, !194, !5624}
!5624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5625, size: 64)
!5625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4295)
!5626 = distinct !DISubprogram(name: "kzalloc", scope: !170, file: !170, line: 719, type: !5627, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5629)
!5627 = !DISubroutineType(types: !5628)
!5628 = !{!362, !337, !1146}
!5629 = !{!5630, !5631}
!5630 = !DILocalVariable(name: "size", arg: 1, scope: !5626, file: !170, line: 719, type: !337)
!5631 = !DILocalVariable(name: "flags", arg: 2, scope: !5626, file: !170, line: 719, type: !1146)
!5632 = !DILocation(line: 719, column: 52, scope: !5626)
!5633 = !DILocation(line: 719, column: 64, scope: !5626)
!5634 = !DILocation(line: 721, column: 17, scope: !5626)
!5635 = !DILocation(line: 721, column: 23, scope: !5626)
!5636 = !DILocation(line: 721, column: 29, scope: !5626)
!5637 = !DILocation(line: 721, column: 9, scope: !5626)
!5638 = !DILocation(line: 721, column: 2, scope: !5626)
!5639 = distinct !DISubprogram(name: "print_cpu_modalias", scope: !3, file: !3, line: 334, type: !4869, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5640)
!5640 = !{!5641, !5642, !5643, !5644, !5645, !5646, !5654}
!5641 = !DILocalVariable(name: "dev", arg: 1, scope: !5639, file: !3, line: 334, type: !194)
!5642 = !DILocalVariable(name: "attr", arg: 2, scope: !5639, file: !3, line: 335, type: !4871)
!5643 = !DILocalVariable(name: "buf", arg: 3, scope: !5639, file: !3, line: 336, type: !290)
!5644 = !DILocalVariable(name: "len", scope: !5639, file: !3, line: 338, type: !46)
!5645 = !DILocalVariable(name: "i", scope: !5639, file: !3, line: 339, type: !440)
!5646 = !DILocalVariable(name: "__ret_warn_on", scope: !5647, file: !3, line: 348, type: !46)
!5647 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 348, column: 5)
!5648 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 347, column: 46)
!5649 = distinct !DILexicalBlock(scope: !5650, file: !3, line: 347, column: 8)
!5650 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 346, column: 28)
!5651 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 346, column: 7)
!5652 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 345, column: 2)
!5653 = distinct !DILexicalBlock(scope: !5639, file: !3, line: 345, column: 2)
!5654 = !DILocalVariable(name: "__flags", scope: !5655, file: !3, line: 348, type: !46)
!5655 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 348, column: 5)
!5656 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 348, column: 5)
!5657 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 348, column: 5)
!5658 = !DILocation(line: 334, column: 50, scope: !5639)
!5659 = !DILocation(line: 335, column: 32, scope: !5639)
!5660 = !DILocation(line: 336, column: 13, scope: !5639)
!5661 = !DILocation(line: 338, column: 2, scope: !5639)
!5662 = !DILocation(line: 338, column: 6, scope: !5639)
!5663 = !DILocation(line: 339, column: 2, scope: !5639)
!5664 = !DILocation(line: 339, column: 6, scope: !5639)
!5665 = !DILocation(line: 341, column: 23, scope: !5639)
!5666 = !DILocation(line: 341, column: 28, scope: !5639)
!5667 = !DILocation(line: 343, column: 9, scope: !5639)
!5668 = !DILocation(line: 341, column: 9, scope: !5639)
!5669 = !DILocation(line: 341, column: 6, scope: !5639)
!5670 = !DILocation(line: 345, column: 9, scope: !5653)
!5671 = !DILocation(line: 345, column: 7, scope: !5653)
!5672 = !DILocation(line: 345, column: 14, scope: !5652)
!5673 = !DILocation(line: 345, column: 16, scope: !5652)
!5674 = !DILocation(line: 345, column: 2, scope: !5653)
!5675 = !DILocation(line: 346, column: 7, scope: !5651)
!5676 = !DILocation(line: 346, column: 7, scope: !5652)
!5677 = !DILocation(line: 347, column: 8, scope: !5649)
!5678 = !DILocation(line: 347, column: 12, scope: !5649)
!5679 = !DILocation(line: 347, column: 32, scope: !5649)
!5680 = !DILocation(line: 347, column: 8, scope: !5650)
!5681 = !DILocation(line: 348, column: 5, scope: !5647)
!5682 = !DILocation(line: 348, column: 5, scope: !5657)
!5683 = !DILocation(line: 348, column: 5, scope: !5656)
!5684 = !DILocation(line: 348, column: 5, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 348, column: 5)
!5686 = !DILocation(line: 348, column: 5, scope: !5655)
!5687 = !DILocation(line: 348, column: 5, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 348, column: 5)
!5689 = !DILocation(line: 348, column: 5, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 348, column: 5)
!5691 = !{i64 2155837413, i64 2155837442, i64 2155837488, i64 2155837546, i64 2155837600, i64 2155837654, i64 2155837709, i64 2155837740, i64 2155838048, i64 2155838054, i64 2155838101, i64 2155838124, i64 2155838150}
!5692 = !DILocation(line: 348, column: 5, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 348, column: 5)
!5694 = !DILocation(line: 348, column: 5, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 348, column: 5)
!5696 = !DILocation(line: 348, column: 5, scope: !5648)
!5697 = !DILocation(line: 349, column: 5, scope: !5648)
!5698 = !DILocation(line: 351, column: 25, scope: !5650)
!5699 = !DILocation(line: 351, column: 30, scope: !5650)
!5700 = !DILocation(line: 351, column: 44, scope: !5650)
!5701 = !DILocation(line: 351, column: 11, scope: !5650)
!5702 = !DILocation(line: 351, column: 8, scope: !5650)
!5703 = !DILocation(line: 352, column: 3, scope: !5650)
!5704 = !DILocation(line: 345, column: 37, scope: !5652)
!5705 = !DILocation(line: 345, column: 2, scope: !5652)
!5706 = distinct !{!5706, !5674, !5707, !5708, !5709}
!5707 = !DILocation(line: 352, column: 3, scope: !5653)
!5708 = !{!"llvm.loop.mustprogress"}
!5709 = !{!"llvm.loop.unroll.disable"}
!5710 = !DILocation(line: 353, column: 23, scope: !5639)
!5711 = !DILocation(line: 353, column: 28, scope: !5639)
!5712 = !DILocation(line: 353, column: 9, scope: !5639)
!5713 = !DILocation(line: 353, column: 6, scope: !5639)
!5714 = !DILocation(line: 354, column: 9, scope: !5639)
!5715 = !DILocation(line: 355, column: 1, scope: !5639)
!5716 = !DILocation(line: 354, column: 2, scope: !5639)
!5717 = !DISubprogram(name: "add_uevent_var", scope: !199, file: !199, line: 220, type: !5718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5718 = !DISubroutineType(types: !5719)
!5719 = !{!46, !285, !202, null}
!5720 = !DISubprogram(name: "kfree", scope: !170, file: !170, line: 227, type: !5721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5721 = !DISubroutineType(types: !5722)
!5722 = !{null, !2629}
!5723 = distinct !DISubprogram(name: "kmalloc", scope: !170, file: !170, line: 591, type: !5627, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5724)
!5724 = !{!5725, !5726, !5727}
!5725 = !DILocalVariable(name: "size", arg: 1, scope: !5723, file: !170, line: 591, type: !337)
!5726 = !DILocalVariable(name: "flags", arg: 2, scope: !5723, file: !170, line: 591, type: !1146)
!5727 = !DILocalVariable(name: "index", scope: !5728, file: !170, line: 594, type: !7)
!5728 = distinct !DILexicalBlock(scope: !5729, file: !170, line: 593, column: 42)
!5729 = distinct !DILexicalBlock(scope: !5723, file: !170, line: 593, column: 6)
!5730 = !DILocation(line: 591, column: 61, scope: !5723)
!5731 = !DILocation(line: 591, column: 73, scope: !5723)
!5732 = !DILocation(line: 593, column: 27, scope: !5729)
!5733 = !DILocation(line: 593, column: 6, scope: !5729)
!5734 = !DILocation(line: 593, column: 33, scope: !5729)
!5735 = !DILocation(line: 593, column: 36, scope: !5729)
!5736 = !DILocation(line: 593, column: 6, scope: !5723)
!5737 = !DILocation(line: 594, column: 3, scope: !5728)
!5738 = !DILocation(line: 594, column: 16, scope: !5728)
!5739 = !DILocation(line: 596, column: 7, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5728, file: !170, line: 596, column: 7)
!5741 = !DILocation(line: 596, column: 12, scope: !5740)
!5742 = !DILocation(line: 596, column: 7, scope: !5728)
!5743 = !DILocation(line: 597, column: 25, scope: !5740)
!5744 = !DILocation(line: 597, column: 31, scope: !5740)
!5745 = !DILocation(line: 597, column: 11, scope: !5740)
!5746 = !DILocation(line: 597, column: 4, scope: !5740)
!5747 = !DILocation(line: 599, column: 11, scope: !5728)
!5748 = !DILocation(line: 599, column: 9, scope: !5728)
!5749 = !DILocation(line: 601, column: 33, scope: !5728)
!5750 = !DILocation(line: 601, column: 40, scope: !5728)
!5751 = !DILocation(line: 601, column: 20, scope: !5728)
!5752 = !DILocation(line: 601, column: 5, scope: !5728)
!5753 = !DILocation(line: 601, column: 51, scope: !5728)
!5754 = !DILocation(line: 602, column: 5, scope: !5728)
!5755 = !DILocation(line: 602, column: 12, scope: !5728)
!5756 = !DILocation(line: 600, column: 10, scope: !5728)
!5757 = !DILocation(line: 600, column: 3, scope: !5728)
!5758 = !DILocation(line: 603, column: 2, scope: !5729)
!5759 = !DILocation(line: 604, column: 19, scope: !5723)
!5760 = !DILocation(line: 604, column: 25, scope: !5723)
!5761 = !DILocation(line: 604, column: 9, scope: !5723)
!5762 = !DILocation(line: 604, column: 2, scope: !5723)
!5763 = !DILocation(line: 605, column: 1, scope: !5723)
!5764 = !DISubprogram(name: "kmalloc_large", scope: !170, file: !170, line: 531, type: !5627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5765 = distinct !DISubprogram(name: "__kmalloc_index", scope: !170, file: !170, line: 444, type: !5766, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5768)
!5766 = !DISubroutineType(types: !5767)
!5767 = !{!7, !337, !712}
!5768 = !{!5769, !5770}
!5769 = !DILocalVariable(name: "size", arg: 1, scope: !5765, file: !170, line: 444, type: !337)
!5770 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5765, file: !170, line: 445, type: !712)
!5771 = !DILocation(line: 444, column: 60, scope: !5765)
!5772 = !DILocation(line: 445, column: 16, scope: !5765)
!5773 = !DILocation(line: 447, column: 7, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 447, column: 6)
!5775 = !DILocation(line: 447, column: 6, scope: !5765)
!5776 = !DILocation(line: 448, column: 3, scope: !5774)
!5777 = !DILocation(line: 450, column: 6, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 450, column: 6)
!5779 = !DILocation(line: 450, column: 11, scope: !5778)
!5780 = !DILocation(line: 450, column: 6, scope: !5765)
!5781 = !DILocation(line: 451, column: 3, scope: !5778)
!5782 = !DILocation(line: 453, column: 32, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 453, column: 6)
!5784 = !DILocation(line: 453, column: 37, scope: !5783)
!5785 = !DILocation(line: 453, column: 42, scope: !5783)
!5786 = !DILocation(line: 453, column: 45, scope: !5783)
!5787 = !DILocation(line: 453, column: 50, scope: !5783)
!5788 = !DILocation(line: 453, column: 6, scope: !5765)
!5789 = !DILocation(line: 454, column: 3, scope: !5783)
!5790 = !DILocation(line: 455, column: 32, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 455, column: 6)
!5792 = !DILocation(line: 455, column: 37, scope: !5791)
!5793 = !DILocation(line: 455, column: 43, scope: !5791)
!5794 = !DILocation(line: 455, column: 46, scope: !5791)
!5795 = !DILocation(line: 455, column: 51, scope: !5791)
!5796 = !DILocation(line: 455, column: 6, scope: !5765)
!5797 = !DILocation(line: 456, column: 3, scope: !5791)
!5798 = !DILocation(line: 457, column: 6, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 457, column: 6)
!5800 = !DILocation(line: 457, column: 11, scope: !5799)
!5801 = !DILocation(line: 457, column: 6, scope: !5765)
!5802 = !DILocation(line: 457, column: 26, scope: !5799)
!5803 = !DILocation(line: 458, column: 6, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 458, column: 6)
!5805 = !DILocation(line: 458, column: 11, scope: !5804)
!5806 = !DILocation(line: 458, column: 6, scope: !5765)
!5807 = !DILocation(line: 458, column: 26, scope: !5804)
!5808 = !DILocation(line: 459, column: 6, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 459, column: 6)
!5810 = !DILocation(line: 459, column: 11, scope: !5809)
!5811 = !DILocation(line: 459, column: 6, scope: !5765)
!5812 = !DILocation(line: 459, column: 26, scope: !5809)
!5813 = !DILocation(line: 460, column: 6, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 460, column: 6)
!5815 = !DILocation(line: 460, column: 11, scope: !5814)
!5816 = !DILocation(line: 460, column: 6, scope: !5765)
!5817 = !DILocation(line: 460, column: 26, scope: !5814)
!5818 = !DILocation(line: 461, column: 6, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 461, column: 6)
!5820 = !DILocation(line: 461, column: 11, scope: !5819)
!5821 = !DILocation(line: 461, column: 6, scope: !5765)
!5822 = !DILocation(line: 461, column: 26, scope: !5819)
!5823 = !DILocation(line: 462, column: 6, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 462, column: 6)
!5825 = !DILocation(line: 462, column: 11, scope: !5824)
!5826 = !DILocation(line: 462, column: 6, scope: !5765)
!5827 = !DILocation(line: 462, column: 26, scope: !5824)
!5828 = !DILocation(line: 463, column: 6, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 463, column: 6)
!5830 = !DILocation(line: 463, column: 11, scope: !5829)
!5831 = !DILocation(line: 463, column: 6, scope: !5765)
!5832 = !DILocation(line: 463, column: 26, scope: !5829)
!5833 = !DILocation(line: 464, column: 6, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 464, column: 6)
!5835 = !DILocation(line: 464, column: 11, scope: !5834)
!5836 = !DILocation(line: 464, column: 6, scope: !5765)
!5837 = !DILocation(line: 464, column: 26, scope: !5834)
!5838 = !DILocation(line: 465, column: 6, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 465, column: 6)
!5840 = !DILocation(line: 465, column: 11, scope: !5839)
!5841 = !DILocation(line: 465, column: 6, scope: !5765)
!5842 = !DILocation(line: 465, column: 26, scope: !5839)
!5843 = !DILocation(line: 466, column: 6, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 466, column: 6)
!5845 = !DILocation(line: 466, column: 11, scope: !5844)
!5846 = !DILocation(line: 466, column: 6, scope: !5765)
!5847 = !DILocation(line: 466, column: 26, scope: !5844)
!5848 = !DILocation(line: 467, column: 6, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 467, column: 6)
!5850 = !DILocation(line: 467, column: 11, scope: !5849)
!5851 = !DILocation(line: 467, column: 6, scope: !5765)
!5852 = !DILocation(line: 467, column: 26, scope: !5849)
!5853 = !DILocation(line: 468, column: 6, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 468, column: 6)
!5855 = !DILocation(line: 468, column: 11, scope: !5854)
!5856 = !DILocation(line: 468, column: 6, scope: !5765)
!5857 = !DILocation(line: 468, column: 26, scope: !5854)
!5858 = !DILocation(line: 469, column: 6, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 469, column: 6)
!5860 = !DILocation(line: 469, column: 11, scope: !5859)
!5861 = !DILocation(line: 469, column: 6, scope: !5765)
!5862 = !DILocation(line: 469, column: 26, scope: !5859)
!5863 = !DILocation(line: 470, column: 6, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 470, column: 6)
!5865 = !DILocation(line: 470, column: 11, scope: !5864)
!5866 = !DILocation(line: 470, column: 6, scope: !5765)
!5867 = !DILocation(line: 470, column: 26, scope: !5864)
!5868 = !DILocation(line: 471, column: 6, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 471, column: 6)
!5870 = !DILocation(line: 471, column: 11, scope: !5869)
!5871 = !DILocation(line: 471, column: 6, scope: !5765)
!5872 = !DILocation(line: 471, column: 26, scope: !5869)
!5873 = !DILocation(line: 472, column: 6, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 472, column: 6)
!5875 = !DILocation(line: 472, column: 11, scope: !5874)
!5876 = !DILocation(line: 472, column: 6, scope: !5765)
!5877 = !DILocation(line: 472, column: 26, scope: !5874)
!5878 = !DILocation(line: 473, column: 6, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 473, column: 6)
!5880 = !DILocation(line: 473, column: 11, scope: !5879)
!5881 = !DILocation(line: 473, column: 6, scope: !5765)
!5882 = !DILocation(line: 473, column: 26, scope: !5879)
!5883 = !DILocation(line: 474, column: 6, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 474, column: 6)
!5885 = !DILocation(line: 474, column: 11, scope: !5884)
!5886 = !DILocation(line: 474, column: 6, scope: !5765)
!5887 = !DILocation(line: 474, column: 27, scope: !5884)
!5888 = !DILocation(line: 475, column: 6, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 475, column: 6)
!5890 = !DILocation(line: 475, column: 11, scope: !5889)
!5891 = !DILocation(line: 475, column: 6, scope: !5765)
!5892 = !DILocation(line: 475, column: 32, scope: !5889)
!5893 = !DILocation(line: 477, column: 50, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5765, file: !170, line: 477, column: 6)
!5895 = !{i8 0, i8 2}
!5896 = !DILocation(line: 477, column: 6, scope: !5765)
!5897 = !DILocation(line: 478, column: 3, scope: !5894)
!5898 = !DILocation(line: 478, column: 3, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5900, file: !170, line: 478, column: 3)
!5900 = distinct !DILexicalBlock(scope: !5894, file: !170, line: 478, column: 3)
!5901 = !{i32 -2142274834}
!5902 = !DILocation(line: 478, column: 3, scope: !5900)
!5903 = !DILocation(line: 480, column: 3, scope: !5894)
!5904 = !DILocation(line: 480, column: 3, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5894, file: !170, line: 480, column: 3)
!5906 = !DILocation(line: 480, column: 3, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5905, file: !170, line: 480, column: 3)
!5908 = !DILocation(line: 480, column: 3, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5905, file: !170, line: 480, column: 3)
!5910 = !{i64 2152692665, i64 2152692694, i64 2152692740, i64 2152692798, i64 2152692852, i64 2152692906, i64 2152692961, i64 2152692992}
!5911 = !DILocation(line: 483, column: 2, scope: !5765)
!5912 = !DILocation(line: 484, column: 1, scope: !5765)
!5913 = !DISubprogram(name: "kmalloc_trace", scope: !170, file: !170, line: 525, type: !5914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5914 = !DISubroutineType(types: !5915)
!5915 = !{!362, !1803, !1146, !337}
!5916 = distinct !DISubprogram(name: "kmalloc_type", scope: !170, file: !170, line: 401, type: !5917, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5919)
!5917 = !DISubroutineType(types: !5918)
!5918 = !{!169, !1146, !340}
!5919 = !{!5920, !5921}
!5920 = !DILocalVariable(name: "flags", arg: 1, scope: !5916, file: !170, line: 401, type: !1146)
!5921 = !DILocalVariable(name: "caller", arg: 2, scope: !5916, file: !170, line: 401, type: !340)
!5922 = !DILocation(line: 401, column: 67, scope: !5916)
!5923 = !DILocation(line: 401, column: 88, scope: !5916)
!5924 = !DILocation(line: 407, column: 6, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5916, file: !170, line: 407, column: 6)
!5926 = !DILocation(line: 407, column: 6, scope: !5916)
!5927 = !DILocation(line: 413, column: 3, scope: !5925)
!5928 = !DILocation(line: 423, column: 38, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5916, file: !170, line: 423, column: 6)
!5930 = !DILocation(line: 423, column: 44, scope: !5929)
!5931 = !DILocation(line: 423, column: 6, scope: !5916)
!5932 = !DILocation(line: 424, column: 3, scope: !5929)
!5933 = !DILocation(line: 426, column: 3, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5916, file: !170, line: 425, column: 6)
!5935 = !DILocation(line: 429, column: 1, scope: !5916)
!5936 = !DISubprogram(name: "__kmalloc", scope: !170, file: !170, line: 488, type: !5627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5937 = !DISubprogram(name: "__compiletime_assert_204", scope: !170, file: !170, line: 478, type: !997, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5938 = !DISubprogram(name: "sysfs_emit_at", scope: !316, file: !316, line: 359, type: !5939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5939 = !DISubroutineType(types: !5940)
!5940 = !{!46, !290, !46, !202, null}
!5941 = distinct !DISubprogram(name: "arch_test_bit", scope: !5942, file: !5942, line: 237, type: !5943, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5948)
!5942 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5943 = !DISubroutineType(types: !5944)
!5944 = !{!712, !340, !5945}
!5945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5946, size: 64)
!5946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5947)
!5947 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !340)
!5948 = !{!5949, !5950}
!5949 = !DILocalVariable(name: "nr", arg: 1, scope: !5941, file: !5942, line: 237, type: !340)
!5950 = !DILocalVariable(name: "addr", arg: 2, scope: !5941, file: !5942, line: 237, type: !5945)
!5951 = !DILocation(line: 237, column: 29, scope: !5941)
!5952 = !DILocation(line: 237, column: 63, scope: !5941)
!5953 = !DILocation(line: 239, column: 30, scope: !5941)
!5954 = !DILocation(line: 239, column: 9, scope: !5941)
!5955 = !DILocation(line: 239, column: 54, scope: !5941)
!5956 = !DILocation(line: 239, column: 58, scope: !5941)
!5957 = !DILocation(line: 239, column: 36, scope: !5941)
!5958 = !DILocation(line: 240, column: 26, scope: !5941)
!5959 = !DILocation(line: 240, column: 30, scope: !5941)
!5960 = !DILocation(line: 240, column: 8, scope: !5941)
!5961 = !DILocation(line: 239, column: 2, scope: !5941)
!5962 = !DISubprogram(name: "__warn_printk", scope: !782, file: !782, line: 93, type: !5592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5963 = distinct !DISubprogram(name: "constant_test_bit", scope: !5942, file: !5942, line: 204, type: !5964, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5966)
!5964 = !DISubroutineType(types: !5965)
!5965 = !{!712, !326, !5945}
!5966 = !{!5967, !5968}
!5967 = !DILocalVariable(name: "nr", arg: 1, scope: !5963, file: !5942, line: 204, type: !326)
!5968 = !DILocalVariable(name: "addr", arg: 2, scope: !5963, file: !5942, line: 204, type: !5945)
!5969 = !DILocation(line: 204, column: 52, scope: !5963)
!5970 = !DILocation(line: 204, column: 86, scope: !5963)
!5971 = !DILocation(line: 206, column: 19, scope: !5963)
!5972 = !DILocation(line: 206, column: 22, scope: !5963)
!5973 = !DILocation(line: 206, column: 15, scope: !5963)
!5974 = !DILocation(line: 207, column: 4, scope: !5963)
!5975 = !DILocation(line: 207, column: 9, scope: !5963)
!5976 = !DILocation(line: 207, column: 12, scope: !5963)
!5977 = !DILocation(line: 206, column: 44, scope: !5963)
!5978 = !DILocation(line: 207, column: 37, scope: !5963)
!5979 = !DILocation(line: 206, column: 2, scope: !5963)
!5980 = distinct !DISubprogram(name: "variable_test_bit", scope: !5942, file: !5942, line: 224, type: !5964, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5981)
!5981 = !{!5982, !5983, !5984}
!5982 = !DILocalVariable(name: "nr", arg: 1, scope: !5980, file: !5942, line: 224, type: !326)
!5983 = !DILocalVariable(name: "addr", arg: 2, scope: !5980, file: !5942, line: 224, type: !5945)
!5984 = !DILocalVariable(name: "oldbit", scope: !5980, file: !5942, line: 226, type: !712)
!5985 = !DILocation(line: 224, column: 52, scope: !5980)
!5986 = !DILocation(line: 224, column: 86, scope: !5980)
!5987 = !DILocation(line: 226, column: 2, scope: !5980)
!5988 = !DILocation(line: 226, column: 7, scope: !5980)
!5989 = !DILocation(line: 231, column: 33, scope: !5980)
!5990 = !DILocation(line: 231, column: 46, scope: !5980)
!5991 = !DILocation(line: 228, column: 2, scope: !5980)
!5992 = !{i64 2147814147, i64 2147814221}
!5993 = !DILocation(line: 233, column: 9, scope: !5980)
!5994 = !DILocation(line: 234, column: 1, scope: !5980)
!5995 = !DILocation(line: 233, column: 2, scope: !5980)
!5996 = !DISubprogram(name: "cpu_device_up", scope: !4847, file: !4847, line: 107, type: !4321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5997 = !DISubprogram(name: "msleep", scope: !5998, file: !5998, line: 61, type: !5999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5998 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "305c363b0f511174031dc8979b58b410")
!5999 = !DISubroutineType(types: !6000)
!6000 = !{null, !7}
!6001 = distinct !DISubprogram(name: "change_cpu_under_node", scope: !3, file: !3, line: 39, type: !6002, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6004)
!6002 = !DISubroutineType(types: !6003)
!6003 = !{null, !4845, !7, !7}
!6004 = !{!6005, !6006, !6007, !6008}
!6005 = !DILocalVariable(name: "cpu", arg: 1, scope: !6001, file: !3, line: 39, type: !4845)
!6006 = !DILocalVariable(name: "from_nid", arg: 2, scope: !6001, file: !3, line: 40, type: !7)
!6007 = !DILocalVariable(name: "to_nid", arg: 3, scope: !6001, file: !3, line: 40, type: !7)
!6008 = !DILocalVariable(name: "cpuid", scope: !6001, file: !3, line: 42, type: !46)
!6009 = !DILocation(line: 39, column: 47, scope: !6001)
!6010 = !DILocation(line: 40, column: 17, scope: !6001)
!6011 = !DILocation(line: 40, column: 40, scope: !6001)
!6012 = !DILocation(line: 42, column: 2, scope: !6001)
!6013 = !DILocation(line: 42, column: 6, scope: !6001)
!6014 = !DILocation(line: 42, column: 14, scope: !6001)
!6015 = !DILocation(line: 42, column: 19, scope: !6001)
!6016 = !DILocation(line: 42, column: 23, scope: !6001)
!6017 = !DILocation(line: 43, column: 28, scope: !6001)
!6018 = !DILocation(line: 43, column: 35, scope: !6001)
!6019 = !DILocation(line: 43, column: 2, scope: !6001)
!6020 = !DILocation(line: 44, column: 26, scope: !6001)
!6021 = !DILocation(line: 44, column: 33, scope: !6001)
!6022 = !DILocation(line: 44, column: 2, scope: !6001)
!6023 = !DILocation(line: 45, column: 17, scope: !6001)
!6024 = !DILocation(line: 45, column: 2, scope: !6001)
!6025 = !DILocation(line: 45, column: 7, scope: !6001)
!6026 = !DILocation(line: 45, column: 15, scope: !6001)
!6027 = !DILocation(line: 46, column: 1, scope: !6001)
!6028 = !DISubprogram(name: "cpu_device_down", scope: !4847, file: !4847, line: 143, type: !4321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6029 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !1644, file: !1644, line: 502, type: !6030, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6032)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{!712, !46, !4852}
!6032 = !{!6033, !6034}
!6033 = !DILocalVariable(name: "cpu", arg: 1, scope: !6029, file: !1644, line: 502, type: !46)
!6034 = !DILocalVariable(name: "cpumask", arg: 2, scope: !6029, file: !1644, line: 502, type: !4852)
!6035 = !DILocation(line: 502, column: 50, scope: !6029)
!6036 = !DILocation(line: 502, column: 77, scope: !6029)
!6037 = !DILocation(line: 504, column: 9, scope: !6029)
!6038 = !DILocation(line: 504, column: 2, scope: !6029)
!6039 = distinct !DISubprogram(name: "_test_bit", scope: !6040, file: !6040, line: 139, type: !5943, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6041)
!6040 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6041 = !{!6042, !6043}
!6042 = !DILocalVariable(name: "nr", arg: 1, scope: !6039, file: !6040, line: 139, type: !340)
!6043 = !DILocalVariable(name: "addr", arg: 2, scope: !6039, file: !6040, line: 139, type: !5945)
!6044 = !DILocation(line: 139, column: 25, scope: !6039)
!6045 = !DILocation(line: 139, column: 59, scope: !6039)
!6046 = !DILocation(line: 141, column: 25, scope: !6039)
!6047 = !DILocation(line: 141, column: 32, scope: !6039)
!6048 = !DILocation(line: 141, column: 30, scope: !6039)
!6049 = !DILocation(line: 141, column: 2, scope: !6039)
!6050 = !DILocation(line: 142, column: 23, scope: !6039)
!6051 = !DILocation(line: 142, column: 27, scope: !6039)
!6052 = !DILocation(line: 142, column: 9, scope: !6039)
!6053 = !DILocation(line: 142, column: 2, scope: !6039)
!6054 = distinct !DISubprogram(name: "cpumask_check", scope: !1644, file: !1644, line: 148, type: !6055, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6057)
!6055 = !DISubroutineType(types: !6056)
!6056 = !{!7, !7}
!6057 = !{!6058}
!6058 = !DILocalVariable(name: "cpu", arg: 1, scope: !6054, file: !1644, line: 148, type: !7)
!6059 = !DILocation(line: 148, column: 64, scope: !6054)
!6060 = !DILocation(line: 150, column: 20, scope: !6054)
!6061 = !DILocation(line: 150, column: 2, scope: !6054)
!6062 = !DILocation(line: 151, column: 9, scope: !6054)
!6063 = !DILocation(line: 151, column: 2, scope: !6054)
!6064 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6065, file: !6065, line: 66, type: !6066, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6071)
!6065 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6066 = !DISubroutineType(types: !6067)
!6067 = !{null, !6068, !337}
!6068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6069, size: 64)
!6069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6070)
!6070 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6071 = !{!6072, !6073}
!6072 = !DILocalVariable(name: "v", arg: 1, scope: !6064, file: !6065, line: 66, type: !6068)
!6073 = !DILocalVariable(name: "size", arg: 2, scope: !6064, file: !6065, line: 66, type: !337)
!6074 = !DILocation(line: 66, column: 73, scope: !6064)
!6075 = !DILocation(line: 66, column: 83, scope: !6064)
!6076 = !DILocation(line: 68, column: 19, scope: !6064)
!6077 = !DILocation(line: 68, column: 22, scope: !6064)
!6078 = !DILocation(line: 68, column: 2, scope: !6064)
!6079 = !DILocation(line: 69, column: 2, scope: !6064)
!6080 = !DILocation(line: 70, column: 1, scope: !6064)
!6081 = distinct !DISubprogram(name: "kasan_check_read", scope: !6082, file: !6082, line: 40, type: !6083, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6085)
!6082 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6083 = !DISubroutineType(types: !6084)
!6084 = !{!712, !6068, !7}
!6085 = !{!6086, !6087}
!6086 = !DILocalVariable(name: "p", arg: 1, scope: !6081, file: !6082, line: 40, type: !6068)
!6087 = !DILocalVariable(name: "size", arg: 2, scope: !6081, file: !6082, line: 40, type: !7)
!6088 = !DILocation(line: 40, column: 58, scope: !6081)
!6089 = !DILocation(line: 40, column: 74, scope: !6081)
!6090 = !DILocation(line: 42, column: 2, scope: !6081)
!6091 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6092, file: !6092, line: 229, type: !6093, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6095)
!6092 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6093 = !DISubroutineType(types: !6094)
!6094 = !{null, !6068, !337, !46}
!6095 = !{!6096, !6097, !6098}
!6096 = !DILocalVariable(name: "ptr", arg: 1, scope: !6091, file: !6092, line: 229, type: !6068)
!6097 = !DILocalVariable(name: "size", arg: 2, scope: !6091, file: !6092, line: 229, type: !337)
!6098 = !DILocalVariable(name: "type", arg: 3, scope: !6091, file: !6092, line: 230, type: !46)
!6099 = !DILocation(line: 229, column: 60, scope: !6091)
!6100 = !DILocation(line: 229, column: 72, scope: !6091)
!6101 = !DILocation(line: 230, column: 15, scope: !6091)
!6102 = !DILocation(line: 230, column: 23, scope: !6091)
!6103 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !1644, file: !1644, line: 140, type: !6104, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6106)
!6104 = !DISubroutineType(types: !6105)
!6105 = !{null, !7, !7}
!6106 = !{!6107, !6108}
!6107 = !DILocalVariable(name: "cpu", arg: 1, scope: !6103, file: !1644, line: 140, type: !7)
!6108 = !DILocalVariable(name: "bits", arg: 2, scope: !6103, file: !1644, line: 140, type: !7)
!6109 = !DILocation(line: 140, column: 60, scope: !6103)
!6110 = !DILocation(line: 140, column: 78, scope: !6103)
!6111 = !DILocation(line: 145, column: 1, scope: !6103)
!6112 = distinct !DISubprogram(name: "crash_notes_show", scope: !3, file: !3, line: 150, type: !4869, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6113)
!6113 = !{!6114, !6115, !6116, !6117, !6118, !6120, !6121, !6122, !6125}
!6114 = !DILocalVariable(name: "dev", arg: 1, scope: !6112, file: !3, line: 150, type: !194)
!6115 = !DILocalVariable(name: "attr", arg: 2, scope: !6112, file: !3, line: 151, type: !4871)
!6116 = !DILocalVariable(name: "buf", arg: 3, scope: !6112, file: !3, line: 152, type: !290)
!6117 = !DILocalVariable(name: "cpu", scope: !6112, file: !3, line: 154, type: !4845)
!6118 = !DILocalVariable(name: "__mptr", scope: !6119, file: !3, line: 154, type: !362)
!6119 = distinct !DILexicalBlock(scope: !6112, file: !3, line: 154, column: 20)
!6120 = !DILocalVariable(name: "addr", scope: !6112, file: !3, line: 155, type: !446)
!6121 = !DILocalVariable(name: "cpunum", scope: !6112, file: !3, line: 156, type: !46)
!6122 = !DILocalVariable(name: "__vpp_verify", scope: !6123, file: !3, line: 166, type: !2629)
!6123 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 166, column: 29)
!6124 = distinct !DILexicalBlock(scope: !6112, file: !3, line: 166, column: 29)
!6125 = !DILocalVariable(name: "__ptr", scope: !6126, file: !3, line: 166, type: !340)
!6126 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 166, column: 29)
!6127 = !DILocation(line: 150, column: 48, scope: !6112)
!6128 = !DILocation(line: 151, column: 30, scope: !6112)
!6129 = !DILocation(line: 152, column: 11, scope: !6112)
!6130 = !DILocation(line: 154, column: 2, scope: !6112)
!6131 = !DILocation(line: 154, column: 14, scope: !6112)
!6132 = !DILocation(line: 154, column: 20, scope: !6119)
!6133 = !DILocation(line: 154, column: 20, scope: !6112)
!6134 = !DILocation(line: 155, column: 2, scope: !6112)
!6135 = !DILocation(line: 155, column: 21, scope: !6112)
!6136 = !DILocation(line: 156, column: 2, scope: !6112)
!6137 = !DILocation(line: 156, column: 6, scope: !6112)
!6138 = !DILocation(line: 158, column: 11, scope: !6112)
!6139 = !DILocation(line: 158, column: 16, scope: !6112)
!6140 = !DILocation(line: 158, column: 20, scope: !6112)
!6141 = !DILocation(line: 158, column: 9, scope: !6112)
!6142 = !DILocation(line: 166, column: 29, scope: !6124)
!6143 = !DILocation(line: 166, column: 29, scope: !6123)
!6144 = !DILocation(line: 166, column: 29, scope: !6126)
!6145 = !DILocation(line: 166, column: 9, scope: !6112)
!6146 = !DILocation(line: 166, column: 7, scope: !6112)
!6147 = !DILocation(line: 168, column: 20, scope: !6112)
!6148 = !DILocation(line: 168, column: 35, scope: !6112)
!6149 = !DILocation(line: 168, column: 9, scope: !6112)
!6150 = !DILocation(line: 169, column: 1, scope: !6112)
!6151 = !DILocation(line: 168, column: 2, scope: !6112)
!6152 = !DISubprogram(name: "per_cpu_ptr_to_phys", scope: !6153, file: !6153, line: 138, type: !6154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6153 = !DIFile(filename: "./include/linux/percpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5b443d1a4673980cdbec5f10c6cbbaa")
!6154 = !DISubroutineType(types: !6155)
!6155 = !{!3368, !362}
!6156 = !DISubprogram(name: "sysfs_emit", scope: !316, file: !316, line: 357, type: !6157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6157 = !DISubroutineType(types: !6158)
!6158 = !{!46, !290, !202, null}
!6159 = distinct !DISubprogram(name: "crash_notes_size_show", scope: !3, file: !3, line: 172, type: !4869, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6160)
!6160 = !{!6161, !6162, !6163}
!6161 = !DILocalVariable(name: "dev", arg: 1, scope: !6159, file: !3, line: 172, type: !194)
!6162 = !DILocalVariable(name: "attr", arg: 2, scope: !6159, file: !3, line: 173, type: !4871)
!6163 = !DILocalVariable(name: "buf", arg: 3, scope: !6159, file: !3, line: 174, type: !290)
!6164 = !DILocation(line: 172, column: 53, scope: !6159)
!6165 = !DILocation(line: 173, column: 35, scope: !6159)
!6166 = !DILocation(line: 174, column: 16, scope: !6159)
!6167 = !DILocation(line: 176, column: 20, scope: !6159)
!6168 = !DILocation(line: 176, column: 9, scope: !6159)
!6169 = !DILocation(line: 176, column: 2, scope: !6159)
!6170 = !DISubprogram(name: "device_initialize", scope: !26, file: !26, line: 1056, type: !4325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6171 = distinct !DISubprogram(name: "device_create_release", scope: !3, file: !3, line: 429, type: !4325, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6172)
!6172 = !{!6173}
!6173 = !DILocalVariable(name: "dev", arg: 1, scope: !6171, file: !3, line: 429, type: !194)
!6174 = !DILocation(line: 429, column: 50, scope: !6171)
!6175 = !DILocation(line: 431, column: 8, scope: !6171)
!6176 = !DILocation(line: 431, column: 2, scope: !6171)
!6177 = !DILocation(line: 432, column: 1, scope: !6171)
!6178 = distinct !DISubprogram(name: "device_set_pm_not_required", scope: !26, file: !26, line: 968, type: !4325, scopeLine: 969, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6179)
!6179 = !{!6180}
!6180 = !DILocalVariable(name: "dev", arg: 1, scope: !6178, file: !26, line: 968, type: !194)
!6181 = !DILocation(line: 968, column: 62, scope: !6178)
!6182 = !DILocation(line: 970, column: 2, scope: !6178)
!6183 = !DILocation(line: 970, column: 7, scope: !6178)
!6184 = !DILocation(line: 970, column: 13, scope: !6178)
!6185 = !DILocation(line: 970, column: 19, scope: !6178)
!6186 = !DILocation(line: 971, column: 1, scope: !6178)
!6187 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !26, file: !26, line: 921, type: !6188, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6190)
!6188 = !DISubroutineType(types: !6189)
!6189 = !{null, !194, !362}
!6190 = !{!6191, !6192}
!6191 = !DILocalVariable(name: "dev", arg: 1, scope: !6187, file: !26, line: 921, type: !194)
!6192 = !DILocalVariable(name: "data", arg: 2, scope: !6187, file: !26, line: 921, type: !362)
!6193 = !DILocation(line: 921, column: 51, scope: !6187)
!6194 = !DILocation(line: 921, column: 62, scope: !6187)
!6195 = !DILocation(line: 923, column: 21, scope: !6187)
!6196 = !DILocation(line: 923, column: 2, scope: !6187)
!6197 = !DILocation(line: 923, column: 7, scope: !6187)
!6198 = !DILocation(line: 923, column: 19, scope: !6187)
!6199 = !DILocation(line: 924, column: 1, scope: !6187)
!6200 = !DISubprogram(name: "kobject_set_name_vargs", scope: !199, file: !199, line: 85, type: !6201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6201 = !DISubroutineType(types: !6202)
!6202 = !{!46, !213, !202, !5470}
!6203 = !DISubprogram(name: "device_add", scope: !26, file: !26, line: 1057, type: !4321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6204 = distinct !DISubprogram(name: "ERR_PTR", scope: !6205, file: !6205, line: 39, type: !6206, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6208)
!6205 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6206 = !DISubroutineType(types: !6207)
!6207 = !{!362, !326}
!6208 = !{!6209}
!6209 = !DILocalVariable(name: "error", arg: 1, scope: !6204, file: !6205, line: 39, type: !326)
!6210 = !DILocation(line: 39, column: 48, scope: !6204)
!6211 = !DILocation(line: 41, column: 18, scope: !6204)
!6212 = !DILocation(line: 41, column: 9, scope: !6204)
!6213 = !DILocation(line: 41, column: 2, scope: !6204)
!6214 = distinct !DISubprogram(name: "show_cpus_attr", scope: !3, file: !3, line: 214, type: !4869, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6215)
!6215 = !{!6216, !6217, !6218, !6219, !6220}
!6216 = !DILocalVariable(name: "dev", arg: 1, scope: !6214, file: !3, line: 214, type: !194)
!6217 = !DILocalVariable(name: "attr", arg: 2, scope: !6214, file: !3, line: 215, type: !4871)
!6218 = !DILocalVariable(name: "buf", arg: 3, scope: !6214, file: !3, line: 216, type: !290)
!6219 = !DILocalVariable(name: "ca", scope: !6214, file: !3, line: 218, type: !4860)
!6220 = !DILocalVariable(name: "__mptr", scope: !6221, file: !3, line: 218, type: !362)
!6221 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 218, column: 24)
!6222 = !DILocation(line: 214, column: 46, scope: !6214)
!6223 = !DILocation(line: 215, column: 35, scope: !6214)
!6224 = !DILocation(line: 216, column: 16, scope: !6214)
!6225 = !DILocation(line: 218, column: 2, scope: !6214)
!6226 = !DILocation(line: 218, column: 19, scope: !6214)
!6227 = !DILocation(line: 218, column: 24, scope: !6221)
!6228 = !DILocation(line: 218, column: 24, scope: !6214)
!6229 = !DILocation(line: 220, column: 39, scope: !6214)
!6230 = !DILocation(line: 220, column: 44, scope: !6214)
!6231 = !DILocation(line: 220, column: 48, scope: !6214)
!6232 = !DILocation(line: 220, column: 9, scope: !6214)
!6233 = !DILocation(line: 221, column: 1, scope: !6214)
!6234 = !DILocation(line: 220, column: 2, scope: !6214)
!6235 = distinct !DISubprogram(name: "cpumap_print_to_pagebuf", scope: !1644, file: !1644, line: 1167, type: !6236, scopeLine: 1168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6238)
!6236 = !DISubroutineType(types: !6237)
!6237 = !{!322, !712, !290, !4852}
!6238 = !{!6239, !6240, !6241}
!6239 = !DILocalVariable(name: "list", arg: 1, scope: !6235, file: !1644, line: 1167, type: !712)
!6240 = !DILocalVariable(name: "buf", arg: 2, scope: !6235, file: !1644, line: 1167, type: !290)
!6241 = !DILocalVariable(name: "mask", arg: 3, scope: !6235, file: !1644, line: 1167, type: !4852)
!6242 = !DILocation(line: 1167, column: 30, scope: !6235)
!6243 = !DILocation(line: 1167, column: 42, scope: !6235)
!6244 = !DILocation(line: 1167, column: 69, scope: !6235)
!6245 = !DILocation(line: 1169, column: 33, scope: !6235)
!6246 = !DILocation(line: 1169, column: 39, scope: !6235)
!6247 = !DILocation(line: 1169, column: 44, scope: !6235)
!6248 = !DILocation(line: 1170, column: 11, scope: !6235)
!6249 = !DILocation(line: 1169, column: 9, scope: !6235)
!6250 = !DILocation(line: 1169, column: 2, scope: !6235)
!6251 = !DISubprogram(name: "bitmap_print_to_pagebuf", scope: !6252, file: !6252, line: 232, type: !6253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6252 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!6253 = !DISubroutineType(types: !6254)
!6254 = !{!46, !712, !290, !6255, !46}
!6255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!6256 = distinct !DISubprogram(name: "print_cpus_kernel_max", scope: !3, file: !3, line: 236, type: !4869, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6257)
!6257 = !{!6258, !6259, !6260}
!6258 = !DILocalVariable(name: "dev", arg: 1, scope: !6256, file: !3, line: 236, type: !194)
!6259 = !DILocalVariable(name: "attr", arg: 2, scope: !6256, file: !3, line: 237, type: !4871)
!6260 = !DILocalVariable(name: "buf", arg: 3, scope: !6256, file: !3, line: 237, type: !290)
!6261 = !DILocation(line: 236, column: 53, scope: !6256)
!6262 = !DILocation(line: 237, column: 35, scope: !6256)
!6263 = !DILocation(line: 237, column: 47, scope: !6256)
!6264 = !DILocation(line: 239, column: 20, scope: !6256)
!6265 = !DILocation(line: 239, column: 9, scope: !6256)
!6266 = !DILocation(line: 239, column: 2, scope: !6256)
!6267 = distinct !DISubprogram(name: "print_cpus_offline", scope: !3, file: !3, line: 246, type: !4869, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6268)
!6268 = !{!6269, !6270, !6271, !6272, !6273}
!6269 = !DILocalVariable(name: "dev", arg: 1, scope: !6267, file: !3, line: 246, type: !194)
!6270 = !DILocalVariable(name: "attr", arg: 2, scope: !6267, file: !3, line: 247, type: !4871)
!6271 = !DILocalVariable(name: "buf", arg: 3, scope: !6267, file: !3, line: 247, type: !290)
!6272 = !DILocalVariable(name: "len", scope: !6267, file: !3, line: 249, type: !46)
!6273 = !DILocalVariable(name: "offline", scope: !6267, file: !3, line: 250, type: !6274)
!6274 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1644, line: 913, baseType: !6275)
!6275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1645, size: 64, elements: !1649)
!6276 = !DILocation(line: 246, column: 50, scope: !6267)
!6277 = !DILocation(line: 247, column: 32, scope: !6267)
!6278 = !DILocation(line: 247, column: 44, scope: !6267)
!6279 = !DILocation(line: 249, column: 2, scope: !6267)
!6280 = !DILocation(line: 249, column: 6, scope: !6267)
!6281 = !DILocation(line: 250, column: 2, scope: !6267)
!6282 = !DILocation(line: 250, column: 16, scope: !6267)
!6283 = !DILocation(line: 253, column: 7, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6267, file: !3, line: 253, column: 6)
!6285 = !DILocation(line: 253, column: 6, scope: !6267)
!6286 = !DILocation(line: 254, column: 3, scope: !6284)
!6287 = !DILocation(line: 255, column: 17, scope: !6267)
!6288 = !DILocation(line: 255, column: 2, scope: !6267)
!6289 = !DILocation(line: 256, column: 23, scope: !6267)
!6290 = !DILocation(line: 256, column: 28, scope: !6267)
!6291 = !DILocation(line: 256, column: 42, scope: !6267)
!6292 = !DILocation(line: 256, column: 9, scope: !6267)
!6293 = !DILocation(line: 256, column: 6, scope: !6267)
!6294 = !DILocation(line: 257, column: 19, scope: !6267)
!6295 = !DILocation(line: 257, column: 2, scope: !6267)
!6296 = !DILocation(line: 260, column: 6, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6267, file: !3, line: 260, column: 6)
!6298 = !DILocation(line: 260, column: 17, scope: !6297)
!6299 = !DILocation(line: 260, column: 20, scope: !6297)
!6300 = !DILocation(line: 260, column: 33, scope: !6297)
!6301 = !DILocation(line: 260, column: 31, scope: !6297)
!6302 = !DILocation(line: 260, column: 6, scope: !6267)
!6303 = !DILocation(line: 261, column: 24, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6297, file: !3, line: 260, column: 45)
!6305 = !DILocation(line: 261, column: 29, scope: !6304)
!6306 = !DILocation(line: 261, column: 10, scope: !6304)
!6307 = !DILocation(line: 261, column: 7, scope: !6304)
!6308 = !DILocation(line: 263, column: 7, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6304, file: !3, line: 263, column: 7)
!6310 = !DILocation(line: 263, column: 21, scope: !6309)
!6311 = !DILocation(line: 263, column: 31, scope: !6309)
!6312 = !DILocation(line: 263, column: 18, scope: !6309)
!6313 = !DILocation(line: 263, column: 7, scope: !6304)
!6314 = !DILocation(line: 264, column: 25, scope: !6309)
!6315 = !DILocation(line: 264, column: 30, scope: !6309)
!6316 = !DILocation(line: 264, column: 41, scope: !6309)
!6317 = !DILocation(line: 264, column: 11, scope: !6309)
!6318 = !DILocation(line: 264, column: 8, scope: !6309)
!6319 = !DILocation(line: 264, column: 4, scope: !6309)
!6320 = !DILocation(line: 266, column: 25, scope: !6309)
!6321 = !DILocation(line: 266, column: 30, scope: !6309)
!6322 = !DILocation(line: 267, column: 11, scope: !6309)
!6323 = !DILocation(line: 267, column: 23, scope: !6309)
!6324 = !DILocation(line: 267, column: 34, scope: !6309)
!6325 = !DILocation(line: 266, column: 11, scope: !6309)
!6326 = !DILocation(line: 266, column: 8, scope: !6309)
!6327 = !DILocation(line: 268, column: 2, scope: !6304)
!6328 = !DILocation(line: 270, column: 23, scope: !6267)
!6329 = !DILocation(line: 270, column: 28, scope: !6267)
!6330 = !DILocation(line: 270, column: 9, scope: !6267)
!6331 = !DILocation(line: 270, column: 6, scope: !6267)
!6332 = !DILocation(line: 272, column: 9, scope: !6267)
!6333 = !DILocation(line: 272, column: 2, scope: !6267)
!6334 = !DILocation(line: 273, column: 1, scope: !6267)
!6335 = distinct !DISubprogram(name: "alloc_cpumask_var", scope: !1644, file: !1644, line: 918, type: !6336, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6339)
!6336 = !DISubroutineType(types: !6337)
!6337 = !{!712, !6338, !1146}
!6338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6274, size: 64)
!6339 = !{!6340, !6341}
!6340 = !DILocalVariable(name: "mask", arg: 1, scope: !6335, file: !1644, line: 918, type: !6338)
!6341 = !DILocalVariable(name: "flags", arg: 2, scope: !6335, file: !1644, line: 918, type: !1146)
!6342 = !DILocation(line: 918, column: 53, scope: !6335)
!6343 = !DILocation(line: 918, column: 65, scope: !6335)
!6344 = !DILocation(line: 920, column: 2, scope: !6335)
!6345 = distinct !DISubprogram(name: "cpumask_andnot", scope: !1644, file: !1644, line: 608, type: !6346, scopeLine: 611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6349)
!6346 = !DISubroutineType(types: !6347)
!6347 = !{!712, !6348, !4852, !4852}
!6348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!6349 = !{!6350, !6351, !6352}
!6350 = !DILocalVariable(name: "dstp", arg: 1, scope: !6345, file: !1644, line: 608, type: !6348)
!6351 = !DILocalVariable(name: "src1p", arg: 2, scope: !6345, file: !1644, line: 609, type: !4852)
!6352 = !DILocalVariable(name: "src2p", arg: 3, scope: !6345, file: !1644, line: 610, type: !4852)
!6353 = !DILocation(line: 608, column: 51, scope: !6345)
!6354 = !DILocation(line: 609, column: 29, scope: !6345)
!6355 = !DILocation(line: 610, column: 29, scope: !6345)
!6356 = !DILocation(line: 612, column: 23, scope: !6345)
!6357 = !DILocation(line: 612, column: 43, scope: !6345)
!6358 = !DILocation(line: 613, column: 8, scope: !6345)
!6359 = !DILocation(line: 612, column: 9, scope: !6345)
!6360 = !DILocation(line: 612, column: 2, scope: !6345)
!6361 = distinct !DISubprogram(name: "free_cpumask_var", scope: !1644, file: !1644, line: 946, type: !6362, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6364)
!6362 = !DISubroutineType(types: !6363)
!6363 = !{null, !6348}
!6364 = !{!6365}
!6365 = !DILocalVariable(name: "mask", arg: 1, scope: !6361, file: !1644, line: 946, type: !6348)
!6366 = !DILocation(line: 946, column: 51, scope: !6361)
!6367 = !DILocation(line: 948, column: 1, scope: !6361)
!6368 = distinct !DISubprogram(name: "bitmap_andnot", scope: !6252, file: !6252, line: 362, type: !6369, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6371)
!6369 = !DISubroutineType(types: !6370)
!6370 = !{!712, !983, !6255, !6255, !7}
!6371 = !{!6372, !6373, !6374, !6375}
!6372 = !DILocalVariable(name: "dst", arg: 1, scope: !6368, file: !6252, line: 362, type: !983)
!6373 = !DILocalVariable(name: "src1", arg: 2, scope: !6368, file: !6252, line: 362, type: !6255)
!6374 = !DILocalVariable(name: "src2", arg: 3, scope: !6368, file: !6252, line: 363, type: !6255)
!6375 = !DILocalVariable(name: "nbits", arg: 4, scope: !6368, file: !6252, line: 363, type: !7)
!6376 = !DILocation(line: 362, column: 49, scope: !6368)
!6377 = !DILocation(line: 362, column: 75, scope: !6368)
!6378 = !DILocation(line: 363, column: 25, scope: !6368)
!6379 = !DILocation(line: 363, column: 44, scope: !6368)
!6380 = !DILocation(line: 365, column: 6, scope: !6381)
!6381 = distinct !DILexicalBlock(scope: !6368, file: !6252, line: 365, column: 6)
!6382 = !DILocation(line: 365, column: 6, scope: !6368)
!6383 = !DILocation(line: 366, column: 19, scope: !6381)
!6384 = !DILocation(line: 366, column: 18, scope: !6381)
!6385 = !DILocation(line: 366, column: 29, scope: !6381)
!6386 = !DILocation(line: 366, column: 28, scope: !6381)
!6387 = !DILocation(line: 366, column: 26, scope: !6381)
!6388 = !DILocation(line: 366, column: 24, scope: !6381)
!6389 = !DILocation(line: 366, column: 37, scope: !6381)
!6390 = !DILocation(line: 366, column: 35, scope: !6381)
!6391 = !DILocation(line: 366, column: 12, scope: !6381)
!6392 = !DILocation(line: 366, column: 16, scope: !6381)
!6393 = !DILocation(line: 366, column: 67, scope: !6381)
!6394 = !DILocation(line: 366, column: 3, scope: !6381)
!6395 = !DILocation(line: 367, column: 25, scope: !6368)
!6396 = !DILocation(line: 367, column: 30, scope: !6368)
!6397 = !DILocation(line: 367, column: 36, scope: !6368)
!6398 = !DILocation(line: 367, column: 42, scope: !6368)
!6399 = !DILocation(line: 367, column: 9, scope: !6368)
!6400 = !DILocation(line: 367, column: 2, scope: !6368)
!6401 = !DILocation(line: 368, column: 1, scope: !6368)
!6402 = !DISubprogram(name: "__bitmap_andnot", scope: !6252, file: !6252, line: 162, type: !6369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6403 = distinct !DISubprogram(name: "print_cpus_isolated", scope: !3, file: !3, line: 276, type: !4869, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6404)
!6404 = !{!6405, !6406, !6407, !6408, !6409}
!6405 = !DILocalVariable(name: "dev", arg: 1, scope: !6403, file: !3, line: 276, type: !194)
!6406 = !DILocalVariable(name: "attr", arg: 2, scope: !6403, file: !3, line: 277, type: !4871)
!6407 = !DILocalVariable(name: "buf", arg: 3, scope: !6403, file: !3, line: 277, type: !290)
!6408 = !DILocalVariable(name: "len", scope: !6403, file: !3, line: 279, type: !46)
!6409 = !DILocalVariable(name: "isolated", scope: !6403, file: !3, line: 280, type: !6274)
!6410 = !DILocation(line: 276, column: 51, scope: !6403)
!6411 = !DILocation(line: 277, column: 32, scope: !6403)
!6412 = !DILocation(line: 277, column: 44, scope: !6403)
!6413 = !DILocation(line: 279, column: 2, scope: !6403)
!6414 = !DILocation(line: 279, column: 6, scope: !6403)
!6415 = !DILocation(line: 280, column: 2, scope: !6403)
!6416 = !DILocation(line: 280, column: 16, scope: !6403)
!6417 = !DILocation(line: 282, column: 7, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 282, column: 6)
!6419 = !DILocation(line: 282, column: 6, scope: !6403)
!6420 = !DILocation(line: 283, column: 3, scope: !6418)
!6421 = !DILocation(line: 285, column: 17, scope: !6403)
!6422 = !DILocation(line: 286, column: 10, scope: !6403)
!6423 = !DILocation(line: 285, column: 2, scope: !6403)
!6424 = !DILocation(line: 287, column: 19, scope: !6403)
!6425 = !DILocation(line: 287, column: 35, scope: !6403)
!6426 = !DILocation(line: 287, column: 8, scope: !6403)
!6427 = !DILocation(line: 287, column: 6, scope: !6403)
!6428 = !DILocation(line: 289, column: 19, scope: !6403)
!6429 = !DILocation(line: 289, column: 2, scope: !6403)
!6430 = !DILocation(line: 291, column: 9, scope: !6403)
!6431 = !DILocation(line: 291, column: 2, scope: !6403)
!6432 = !DILocation(line: 292, column: 1, scope: !6403)
!6433 = !DISubprogram(name: "housekeeping_cpumask", scope: !180, file: !180, line: 24, type: !6434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6434 = !DISubroutineType(types: !6435)
!6435 = !{!4852, !179}
!6436 = distinct !DISubprogram(name: "crash_hotplug_show", scope: !3, file: !3, line: 305, type: !4869, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6437)
!6437 = !{!6438, !6439, !6440}
!6438 = !DILocalVariable(name: "dev", arg: 1, scope: !6436, file: !3, line: 305, type: !194)
!6439 = !DILocalVariable(name: "attr", arg: 2, scope: !6436, file: !3, line: 306, type: !4871)
!6440 = !DILocalVariable(name: "buf", arg: 3, scope: !6436, file: !3, line: 307, type: !290)
!6441 = !DILocation(line: 305, column: 50, scope: !6436)
!6442 = !DILocation(line: 306, column: 35, scope: !6436)
!6443 = !DILocation(line: 307, column: 16, scope: !6436)
!6444 = !DILocation(line: 309, column: 20, scope: !6436)
!6445 = !DILocation(line: 309, column: 33, scope: !6436)
!6446 = !DILocation(line: 309, column: 9, scope: !6436)
!6447 = !DILocation(line: 309, column: 2, scope: !6436)
!6448 = !DISubprogram(name: "arch_crash_hotplug_cpu_support", scope: !6449, file: !6449, line: 225, type: !726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6449 = !DIFile(filename: "./arch/x86/include/asm/kexec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ab2d478aae98767fa69f277d1e3e2976")
!6450 = !DISubprogram(name: "bus_get_dev_root", scope: !4302, file: !4302, line: 280, type: !6451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6451 = !DISubroutineType(types: !6452)
!6452 = !{!194, !4299}
!6453 = !DISubprogram(name: "sysfs_create_group", scope: !316, file: !316, line: 307, type: !6454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6454 = !DISubroutineType(types: !6455)
!6455 = !{!46, !213, !343}
!6456 = !DISubprogram(name: "_printk", scope: !6457, file: !6457, line: 153, type: !6458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6457 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6458 = !DISubroutineType(types: !6459)
!6459 = !{!46, !202, null}
