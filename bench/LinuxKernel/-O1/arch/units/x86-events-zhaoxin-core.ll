; ModuleID = 'arch/x86/events/zhaoxin/core.c'
source_filename = "arch/x86/events/zhaoxin/core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_pmu = type <{ ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i64, %union.anon, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.perf_capabilities, i16, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %union.anon.3, %union.anon.4, i8, i8, i24, [2 x i8], ptr, ptr, ptr, ptr, [3 x %struct.atomic_t], i32, ptr, i8, [7 x i8], i64, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr }>
%union.anon = type { i64 }
%union.perf_capabilities = type { i64 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.x86_pmu_quirk = type { ptr, ptr }
%struct.cpuinfo_x86 = type { %union.anon.5, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.7, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.5 = type { i32 }
%union.anon.7 = type { i64, [88 x i8] }
%struct.cpu_hw_events = type { [64 x ptr], [1 x i64], [1 x i64], i32, i32, i32, i32, i32, i32, [64 x i32], [64 x i64], [64 x ptr], [64 x ptr], i32, i32, i32, ptr, ptr, ptr, i64, i32, i32, i32, i32, i64, i64, i32, i64, i64, i32, i32, %struct.perf_branch_stack, [32 x %struct.perf_branch_entry], %union.anon.33, i64, ptr, i32, i32, ptr, i64, i64, [64 x %struct.perf_guest_switch_msr], i64, ptr, ptr, ptr, i32, i64, i32, ptr, i32, i64, i32, [2 x ptr], ptr }
%struct.perf_branch_stack = type { i64, i64, [0 x %struct.perf_branch_entry] }
%struct.perf_branch_entry = type { i64, i64, i64 }
%union.anon.33 = type { ptr }
%struct.perf_guest_switch_msr = type { i32, i64, i64 }
%struct.irq_cpustat_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [60 x i8] }
%struct.static_call_key = type { ptr, %union.anon.44 }
%union.anon.44 = type { i64 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.45 }
%union.anon.45 = type { i64 }
%struct.event_constraint = type { %union.anon.8, i64, i64, i32, i32, i32, i32 }
%union.anon.8 = type { [1 x i64] }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.anon.46 = type { i32, ptr }
%union.cpuid10_edx = type { %struct.anon }
%struct.anon = type { i32 }
%union.cpuid10_eax = type { %struct.anon.0 }
%struct.anon.0 = type { i32 }
%union.cpuid10_ebx = type { i32 }
%union.x86_pmu_config = type { %struct.anon.9 }
%struct.anon.9 = type { i48 }
%struct.anon.6 = type { i8, i8, i8, i8 }
%struct.perf_sample_data = type { i64, i64, i64, i64, %struct.anon.30, i64, i64, %struct.anon.31, i64, ptr, ptr, ptr, %union.perf_sample_weight, %union.perf_mem_data_src, i64, %struct.perf_regs, %struct.perf_regs, i64, i64, i64, i64, i64, i64, i64, i64, [40 x i8] }
%struct.anon.30 = type { i32, i32 }
%struct.anon.31 = type { i32, i32 }
%union.perf_sample_weight = type { i64 }
%union.perf_mem_data_src = type { i64 }
%struct.perf_regs = type { i64, ptr }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, ptr, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i64, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, i64, %struct.irq_work, %struct.callback_head, i32, %struct.rcuwait, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i64, ptr, ptr, %struct.callback_head, ptr, i64, %struct.atomic64_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.25, i64, i64, i64, %union.anon.26, i32, %union.anon.27, %union.anon.28, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64, i64 }
%union.anon.25 = type { i64 }
%union.anon.26 = type { i32 }
%union.anon.27 = type { i64 }
%union.anon.28 = type { i64 }
%struct.hw_perf_event = type { %union.anon.34, ptr, ptr, i64, i32, %struct.local64_t, i64, %union.anon.41, i64, i64, i64, i64 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { i64, i64, i64, i64, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { i64, %struct.local64_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.20 }
%union.anon.20 = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.13 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }

@.str = private unnamed_addr constant [33 x i8] c"\016core: Welcome to zhaoxin pmu!\0A\00", align 1, !dbg !0
@x86_pmu = external dso_local global %struct.x86_pmu, section ".data..read_mostly", align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"\016core: Version check pass!\0A\00", align 1, !dbg !7
@zhaoxin_pmu_init.__quirk = internal global %struct.x86_pmu_quirk { ptr null, ptr @zhaoxin_arch_events_quirk }, section ".init.data", align 8, !dbg !12
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@zx_pmon_event_map = internal global [10 x i64] [i64 130, i64 192, i64 1301, i64 1306, i64 0, i64 0, i64 131, i64 0, i64 0, i64 0], section ".data..read_mostly", align 16, !dbg !6252
@.str.2 = private unnamed_addr constant [15 x i8] c"\01cZXC events, \00", align 1, !dbg !5901
@hw_cache_event_ids = external dso_local global [7 x [3 x [2 x i64]]], section ".data..read_mostly", align 16
@zxd_hw_cache_event_ids = internal constant [7 x [3 x [2 x i64]]] [[3 x [2 x i64]] [[2 x i64] [i64 66, i64 1336], [2 x i64] [i64 67, i64 1378], [2 x i64] [i64 -1, i64 -1]], [3 x [2 x i64]] [[2 x i64] [i64 768, i64 769], [2 x i64] [i64 -1, i64 -1], [2 x i64] [i64 778, i64 779]], [3 x [2 x i64]] [[2 x i64] [i64 -1, i64 -1], [2 x i64] [i64 -1, i64 -1], [2 x i64] [i64 -1, i64 -1]], [3 x [2 x i64]] [[2 x i64] [i64 66, i64 1324], [2 x i64] [i64 67, i64 1328], [2 x i64] [i64 1380, i64 1381]], [3 x [2 x i64]] [[2 x i64] [i64 192, i64 1332], [2 x i64] [i64 -1, i64 -1], [2 x i64] [i64 -1, i64 -1]], [3 x [2 x i64]] [[2 x i64] [i64 1792, i64 1801], [2 x i64] [i64 -1, i64 -1], [2 x i64] [i64 -1, i64 -1]], [3 x [2 x i64]] [[2 x i64] [i64 -1, i64 -1], [2 x i64] [i64 -1, i64 -1], [2 x i64] [i64 -1, i64 -1]]], section ".init.rodata", align 16, !dbg !6255
@.str.3 = private unnamed_addr constant [15 x i8] c"\01cZXD events, \00", align 1, !dbg !5906
@zxe_hw_cache_event_ids = internal constant [7 x [3 x [2 x i64]]] [[3 x [2 x i64]] [[2 x i64] [i64 1384, i64 1355], [2 x i64] [i64 1641, i64 1378], [2 x i64] [i64 -1, i64 -1]], [3 x [2 x i64]] [[2 x i64] [i64 768, i64 769], [2 x i64] [i64 -1, i64 -1], [2 x i64] [i64 778, i64 779]], [3 x [2 x i64]] zeroinitializer, [3 x [2 x i64]] [[2 x i64] [i64 1384, i64 1324], [2 x i64] [i64 1641, i64 1328], [2 x i64] [i64 1380, i64 1381]], [3 x [2 x i64]] [[2 x i64] [i64 192, i64 1332], [2 x i64] [i64 -1, i64 -1], [2 x i64] [i64 -1, i64 -1]], [3 x [2 x i64]] [[2 x i64] [i64 40, i64 41], [2 x i64] [i64 -1, i64 -1], [2 x i64] [i64 -1, i64 -1]], [3 x [2 x i64]] [[2 x i64] [i64 -1, i64 -1], [2 x i64] [i64 -1, i64 -1], [2 x i64] [i64 -1, i64 -1]]], section ".init.rodata", align 16, !dbg !6262
@.str.4 = private unnamed_addr constant [15 x i8] c"\01cZXE events, \00", align 1, !dbg !5908
@.str.5 = private unnamed_addr constant [8 x i8] c"zhaoxin\00", align 1, !dbg !5910
@zx_arch_formats_attr = internal global [6 x ptr] [ptr @format_attr_event, ptr @format_attr_umask, ptr @format_attr_edge, ptr @format_attr_inv, ptr @format_attr_cmask, ptr null], align 16, !dbg !6164
@zhaoxin_pmu = internal constant { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i64, %union.anon, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.perf_capabilities, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, %union.anon.3, %union.anon.4, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, [3 x %struct.atomic_t], i32, ptr, i8, i64, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr } { ptr @.str.5, i32 0, ptr @zhaoxin_pmu_handle_irq, ptr @zhaoxin_pmu_disable_all, ptr @zhaoxin_pmu_enable_all, ptr @zhaoxin_pmu_enable_event, ptr @zhaoxin_pmu_disable_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @x86_pmu_hw_config, ptr @x86_schedule_events, i32 390, i32 193, ptr null, ptr null, ptr @zhaoxin_pmu_event_map, i32 10, i32 0, i32 0, i32 0, i64 0, %union.anon zeroinitializer, i32 0, i32 1, i64 140737488355327, ptr @zhaoxin_get_event_constraints, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, i32 0, ptr @zx_arch_formats_attr, ptr @zhaoxin_event_sysfs_show, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, %union.perf_capabilities zeroinitializer, i8 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, %union.anon.3 zeroinitializer, %union.anon.4 zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, ptr null, [3 x %struct.atomic_t] zeroinitializer, i32 0, ptr null, i8 0, i64 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null }, section ".init.rodata", align 8, !dbg !5912
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@cpu_hw_events = external dso_local global %struct.cpu_hw_events, section ".data..percpu", align 8
@irq_stat = external dso_local global %struct.irq_cpustat_t, section ".data..percpu..shared_aligned", align 64
@apic_write.__UNIQUE_ID___addressable___SCK__apic_call_write246 = internal global ptr @__SCK__apic_call_write, section ".discard.addressable", align 8, !dbg !6152
@__SCK__apic_call_write = external dso_local global %struct.static_call_key, align 8
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !6161
@unconstrained = external dso_local global %struct.event_constraint, align 8
@format_attr_event = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @event_show, ptr null }, align 8, !dbg !6169
@format_attr_umask = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @umask_show, ptr null }, align 8, !dbg !6188
@format_attr_edge = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @edge_show, ptr null }, align 8, !dbg !6197
@format_attr_inv = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @inv_show, ptr null }, align 8, !dbg !6207
@format_attr_cmask = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @cmask_show, ptr null }, align 8, !dbg !6213
@.str.8 = private unnamed_addr constant [6 x i8] c"event\00", align 1, !dbg !6167
@.str.9 = private unnamed_addr constant [12 x i8] c"config:0-7\0A\00", align 1, !dbg !6183
@.str.10 = private unnamed_addr constant [6 x i8] c"umask\00", align 1, !dbg !6186
@.str.11 = private unnamed_addr constant [13 x i8] c"config:8-15\0A\00", align 1, !dbg !6190
@.str.12 = private unnamed_addr constant [5 x i8] c"edge\00", align 1, !dbg !6195
@.str.13 = private unnamed_addr constant [11 x i8] c"config:18\0A\00", align 1, !dbg !6199
@.str.14 = private unnamed_addr constant [4 x i8] c"inv\00", align 1, !dbg !6204
@.str.15 = private unnamed_addr constant [11 x i8] c"config:23\0A\00", align 1, !dbg !6209
@.str.16 = private unnamed_addr constant [6 x i8] c"cmask\00", align 1, !dbg !6211
@.str.17 = private unnamed_addr constant [14 x i8] c"config:24-31\0A\00", align 1, !dbg !6215
@zx_arch_events_map = internal constant [7 x %struct.anon.46] [%struct.anon.46 { i32 0, ptr @.str.19 }, %struct.anon.46 { i32 1, ptr @.str.20 }, %struct.anon.46 { i32 6, ptr @.str.21 }, %struct.anon.46 { i32 2, ptr @.str.22 }, %struct.anon.46 { i32 3, ptr @.str.23 }, %struct.anon.46 { i32 4, ptr @.str.24 }, %struct.anon.46 { i32 5, ptr @.str.25 }], section ".init.rodata", align 16, !dbg !6241
@.str.18 = private unnamed_addr constant [46 x i8] c"\014core: CPUID marked event: '%s' unavailable\0A\00", align 1, !dbg !6218
@.str.19 = private unnamed_addr constant [11 x i8] c"cpu cycles\00", align 1, !dbg !6223
@.str.20 = private unnamed_addr constant [13 x i8] c"instructions\00", align 1, !dbg !6225
@.str.21 = private unnamed_addr constant [11 x i8] c"bus cycles\00", align 1, !dbg !6227
@.str.22 = private unnamed_addr constant [17 x i8] c"cache references\00", align 1, !dbg !6229
@.str.23 = private unnamed_addr constant [13 x i8] c"cache misses\00", align 1, !dbg !6234
@.str.24 = private unnamed_addr constant [20 x i8] c"branch instructions\00", align 1, !dbg !6236
@.str.25 = private unnamed_addr constant [14 x i8] c"branch misses\00", align 1, !dbg !6239
@zxc_event_constraints = internal global <{ { { i64 }, i64, i64, i32, i32, i32, i32 }, %struct.event_constraint }> <{ { { i64 }, i64, i64, i32, i32, i32, i32 } { { i64 } { i64 8589934592 }, i64 130, i64 17171808255, i32 1, i32 0, i32 0, i32 0 }, %struct.event_constraint { %union.anon.8 zeroinitializer, i64 0, i64 0, i32 -1, i32 0, i32 0, i32 0 } }>, section ".data..read_mostly", align 16, !dbg !6249
@zxd_event_constraints = internal global <{ { { i64 }, i64, i64, i32, i32, i32, i32 }, { { i64 }, i64, i64, i32, i32, i32, i32 }, { { i64 }, i64, i64, i32, i32, i32, i32 }, %struct.event_constraint }> <{ { { i64 }, i64, i64, i32, i32, i32, i32 } { { i64 } { i64 4294967296 }, i64 192, i64 17171808255, i32 1, i32 0, i32 0, i32 0 }, { { i64 }, i64, i64, i32, i32, i32, i32 } { { i64 } { i64 8589934592 }, i64 130, i64 17171808255, i32 1, i32 0, i32 0, i32 0 }, { { i64 }, i64, i64, i32, i32, i32, i32 } { { i64 } { i64 17179869184 }, i64 131, i64 17171808255, i32 1, i32 0, i32 0, i32 0 }, %struct.event_constraint { %union.anon.8 zeroinitializer, i64 0, i64 0, i32 -1, i32 0, i32 0, i32 0 } }>, section ".data..read_mostly", align 16, !dbg !6259
@llvm.compiler.used = appending global [1 x ptr] [ptr @apic_write.__UNIQUE_ID___addressable___SCK__apic_call_write246], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @zhaoxin_pmu_init() #0 section ".init.text" align 16 !dbg !14 {
entry:
  %retval = alloca i32, align 4
  %edx = alloca %union.cpuid10_edx, align 4
  %eax = alloca %union.cpuid10_eax, align 4
  %ebx = alloca %union.cpuid10_ebx, align 4
  %c = alloca ptr, align 8
  %unused = alloca i32, align 4
  %version = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %.compoundliteral = alloca %union.x86_pmu_config, align 8
  %.compoundliteral91 = alloca %union.x86_pmu_config, align 8
  %tmp142 = alloca i32, align 4
  %tmp148 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #12, !dbg !6314
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !6265, metadata !DIExpression()), !dbg !6315
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #12, !dbg !6316
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !6277, metadata !DIExpression()), !dbg !6317
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #12, !dbg !6318
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !6288, metadata !DIExpression()), !dbg !6319
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #12, !dbg !6320
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6302, metadata !DIExpression()), !dbg !6321
  call void @llvm.lifetime.start.p0(i64 4, ptr %unused) #12, !dbg !6322
  call void @llvm.dbg.declare(metadata ptr %unused, metadata !6303, metadata !DIExpression()), !dbg !6323
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #12, !dbg !6324
  call void @llvm.dbg.declare(metadata ptr %version, metadata !6304, metadata !DIExpression()), !dbg !6325
  br label %do.body, !dbg !6326

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6328

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6328

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str) #13, !dbg !6326
  store i32 %call, ptr %tmp, align 4, !dbg !6328
  %0 = load i32, ptr %tmp, align 4, !dbg !6326
  call void @cpuid(i32 noundef 10, ptr noundef %eax, ptr noundef %ebx, ptr noundef %unused, ptr noundef %edx) #14, !dbg !6330
  %bf.load = load i32, ptr %eax, align 4, !dbg !6331
  %bf.lshr = lshr i32 %bf.load, 24, !dbg !6331
  %cmp = icmp slt i32 %bf.lshr, 6, !dbg !6333
  br i1 %cmp, label %if.then, label %if.end, !dbg !6334

if.then:                                          ; preds = %do.end
  store i32 -19, ptr %retval, align 4, !dbg !6335
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6335

if.end:                                           ; preds = %do.end
  %bf.load1 = load i32, ptr %eax, align 4, !dbg !6336
  %bf.clear = and i32 %bf.load1, 255, !dbg !6336
  store i32 %bf.clear, ptr %version, align 4, !dbg !6337
  %1 = load i32, ptr %version, align 4, !dbg !6338
  %cmp2 = icmp ne i32 %1, 2, !dbg !6340
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !6341

if.then3:                                         ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !6342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6342

if.end4:                                          ; preds = %if.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 @x86_pmu, ptr align 8 @zhaoxin_pmu, i64 640, i1 false), !dbg !6343
  br label %do.body5, !dbg !6344

do.body5:                                         ; preds = %if.end4
  br label %do.cond6, !dbg !6346

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6346

do.end7:                                          ; preds = %do.cond6
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #13, !dbg !6344
  store i32 %call9, ptr %tmp8, align 4, !dbg !6346
  %2 = load i32, ptr %tmp8, align 4, !dbg !6344
  %3 = load i32, ptr %version, align 4, !dbg !6348
  store i32 %3, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 1), align 8, !dbg !6349
  %bf.load10 = load i32, ptr %eax, align 4, !dbg !6350
  %bf.lshr11 = lshr i32 %bf.load10, 8, !dbg !6350
  %bf.clear12 = and i32 %bf.lshr11, 255, !dbg !6350
  store i32 %bf.clear12, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 22), align 4, !dbg !6351
  %bf.load13 = load i32, ptr %eax, align 4, !dbg !6352
  %bf.lshr14 = lshr i32 %bf.load13, 16, !dbg !6352
  %bf.clear15 = and i32 %bf.lshr14, 255, !dbg !6352
  store i32 %bf.clear15, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 24), align 4, !dbg !6353
  %bf.load16 = load i32, ptr %eax, align 4, !dbg !6354
  %bf.lshr17 = lshr i32 %bf.load16, 16, !dbg !6354
  %bf.clear18 = and i32 %bf.lshr17, 255, !dbg !6354
  %sh_prom = zext i32 %bf.clear18 to i64, !dbg !6355
  %shl = shl i64 1, %sh_prom, !dbg !6355
  %sub = sub i64 %shl, 1, !dbg !6356
  store i64 %sub, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 25), align 8, !dbg !6357
  %4 = load i32, ptr %ebx, align 4, !dbg !6358
  %conv = zext i32 %4 to i64, !dbg !6359
  store i64 %conv, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 26), align 8, !dbg !6360
  %bf.load19 = load i32, ptr %eax, align 4, !dbg !6361
  %bf.lshr20 = lshr i32 %bf.load19, 24, !dbg !6361
  store i32 %bf.lshr20, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 27), align 8, !dbg !6362
  %bf.load21 = load i32, ptr %edx, align 4, !dbg !6363
  %bf.clear22 = and i32 %bf.load21, 31, !dbg !6363
  store i32 %bf.clear22, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 23), align 8, !dbg !6364
  br label %do.body23, !dbg !6365

do.body23:                                        ; preds = %do.end7
  %5 = load ptr, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 36), align 8, !dbg !6366
  store ptr %5, ptr @zhaoxin_pmu_init.__quirk, align 8, !dbg !6366
  store ptr @zhaoxin_pmu_init.__quirk, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 36), align 8, !dbg !6366
  br label %do.cond24, !dbg !6366

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !6366

do.end25:                                         ; preds = %do.cond24
  %6 = load i8, ptr getelementptr inbounds (%struct.anon.6, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !6368
  %conv26 = zext i8 %6 to i32, !dbg !6369
  switch i32 %conv26, label %sw.default150 [
    i32 6, label %sw.bb
    i32 7, label %sw.bb45
  ], !dbg !6370

sw.bb:                                            ; preds = %do.end25
  %7 = load i8, ptr @boot_cpu_data, align 8, !dbg !6371
  %conv27 = zext i8 %7 to i32, !dbg !6374
  %cmp28 = icmp eq i32 %conv27, 15, !dbg !6375
  br i1 %cmp28, label %land.lhs.true, label %lor.lhs.false, !dbg !6376

land.lhs.true:                                    ; preds = %sw.bb
  %8 = load i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 1), align 4, !dbg !6377
  %conv30 = zext i8 %8 to i32, !dbg !6378
  %cmp31 = icmp sge i32 %conv30, 14, !dbg !6379
  br i1 %cmp31, label %if.then36, label %lor.lhs.false, !dbg !6380

lor.lhs.false:                                    ; preds = %land.lhs.true, %sw.bb
  %9 = load i8, ptr @boot_cpu_data, align 8, !dbg !6381
  %conv33 = zext i8 %9 to i32, !dbg !6382
  %cmp34 = icmp eq i32 %conv33, 25, !dbg !6383
  br i1 %cmp34, label %if.then36, label %if.end44, !dbg !6384

if.then36:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load i64, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 25), align 8, !dbg !6385
  %shr = lshr i64 %10, 1, !dbg !6387
  store i64 %shr, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 29), align 8, !dbg !6388
  %bf.load37 = load i8, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 38), align 8, !dbg !6389
  %bf.clear38 = and i8 %bf.load37, -5, !dbg !6389
  %bf.set = or i8 %bf.clear38, 4, !dbg !6389
  store i8 %bf.set, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 38), align 8, !dbg !6389
  store ptr @zxc_event_constraints, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 35), align 8, !dbg !6390
  store i64 0, ptr getelementptr inbounds ([10 x i64], ptr @zx_pmon_event_map, i64 0, i64 1), align 8, !dbg !6391
  store i64 0, ptr getelementptr inbounds ([10 x i64], ptr @zx_pmon_event_map, i64 0, i64 2), align 16, !dbg !6392
  store i64 0, ptr getelementptr inbounds ([10 x i64], ptr @zx_pmon_event_map, i64 0, i64 3), align 8, !dbg !6393
  store i64 0, ptr getelementptr inbounds ([10 x i64], ptr @zx_pmon_event_map, i64 0, i64 6), align 16, !dbg !6394
  br label %do.body39, !dbg !6395

do.body39:                                        ; preds = %if.then36
  br label %do.cond40, !dbg !6397

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !6397

do.end41:                                         ; preds = %do.cond40
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #13, !dbg !6395
  store i32 %call43, ptr %tmp42, align 4, !dbg !6397
  %11 = load i32, ptr %tmp42, align 4, !dbg !6395
  br label %sw.epilog151, !dbg !6399

if.end44:                                         ; preds = %lor.lhs.false
  store i32 -19, ptr %retval, align 4, !dbg !6400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6400

sw.bb45:                                          ; preds = %do.end25
  %bf.load46 = load i64, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.clear47 = and i64 %bf.load46, -256, !dbg !6401
  %bf.set48 = or i64 %bf.clear47, 1, !dbg !6401
  store i64 %bf.set48, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.load49 = load i64, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.clear50 = and i64 %bf.load49, -65281, !dbg !6401
  %bf.set51 = or i64 %bf.clear50, 256, !dbg !6401
  store i64 %bf.set51, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.load52 = load i64, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.clear53 = and i64 %bf.load52, -65537, !dbg !6401
  %bf.set54 = or i64 %bf.clear53, 0, !dbg !6401
  store i64 %bf.set54, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.load55 = load i64, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.clear56 = and i64 %bf.load55, -131073, !dbg !6401
  %bf.set57 = or i64 %bf.clear56, 0, !dbg !6401
  store i64 %bf.set57, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.load58 = load i64, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.clear59 = and i64 %bf.load58, -262145, !dbg !6401
  %bf.set60 = or i64 %bf.clear59, 0, !dbg !6401
  store i64 %bf.set60, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.load61 = load i64, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.clear62 = and i64 %bf.load61, -524289, !dbg !6401
  %bf.set63 = or i64 %bf.clear62, 0, !dbg !6401
  store i64 %bf.set63, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.load64 = load i64, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.clear65 = and i64 %bf.load64, -1048577, !dbg !6401
  %bf.set66 = or i64 %bf.clear65, 0, !dbg !6401
  store i64 %bf.set66, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.load67 = load i64, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.clear68 = and i64 %bf.load67, -2097153, !dbg !6401
  %bf.set69 = or i64 %bf.clear68, 0, !dbg !6401
  store i64 %bf.set69, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.load70 = load i64, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.clear71 = and i64 %bf.load70, -4194305, !dbg !6401
  %bf.set72 = or i64 %bf.clear71, 0, !dbg !6401
  store i64 %bf.set72, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.load73 = load i64, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.clear74 = and i64 %bf.load73, -8388609, !dbg !6401
  %bf.set75 = or i64 %bf.clear74, 8388608, !dbg !6401
  store i64 %bf.set75, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.load76 = load i64, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.clear77 = and i64 %bf.load76, -4278190081, !dbg !6401
  %bf.set78 = or i64 %bf.clear77, 16777216, !dbg !6401
  store i64 %bf.set78, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.load79 = load i64, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.clear80 = and i64 %bf.load79, -64424509441, !dbg !6401
  %bf.set81 = or i64 %bf.clear80, 0, !dbg !6401
  store i64 %bf.set81, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.load82 = load i64, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.clear83 = and i64 %bf.load82, -1030792151041, !dbg !6401
  %bf.set84 = or i64 %bf.clear83, 0, !dbg !6401
  store i64 %bf.set84, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.load85 = load i64, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.clear86 = and i64 %bf.load85, -1099511627777, !dbg !6401
  %bf.set87 = or i64 %bf.clear86, 0, !dbg !6401
  store i64 %bf.set87, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.load88 = load i64, ptr %.compoundliteral, align 8, !dbg !6401
  %bf.clear89 = and i64 %bf.load88, -2199023255553, !dbg !6401
  %bf.set90 = or i64 %bf.clear89, 0, !dbg !6401
  store i64 %bf.set90, ptr %.compoundliteral, align 8, !dbg !6401
  %12 = load i64, ptr %.compoundliteral, align 8, !dbg !6401
  store i64 %12, ptr getelementptr inbounds ([10 x i64], ptr @zx_pmon_event_map, i64 0, i64 7), align 8, !dbg !6402
  %bf.load92 = load i64, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.clear93 = and i64 %bf.load92, -256, !dbg !6403
  %bf.set94 = or i64 %bf.clear93, 15, !dbg !6403
  store i64 %bf.set94, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.load95 = load i64, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.clear96 = and i64 %bf.load95, -65281, !dbg !6403
  %bf.set97 = or i64 %bf.clear96, 1024, !dbg !6403
  store i64 %bf.set97, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.load98 = load i64, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.clear99 = and i64 %bf.load98, -65537, !dbg !6403
  %bf.set100 = or i64 %bf.clear99, 0, !dbg !6403
  store i64 %bf.set100, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.load101 = load i64, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.clear102 = and i64 %bf.load101, -131073, !dbg !6403
  %bf.set103 = or i64 %bf.clear102, 0, !dbg !6403
  store i64 %bf.set103, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.load104 = load i64, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.clear105 = and i64 %bf.load104, -262145, !dbg !6403
  %bf.set106 = or i64 %bf.clear105, 0, !dbg !6403
  store i64 %bf.set106, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.load107 = load i64, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.clear108 = and i64 %bf.load107, -524289, !dbg !6403
  %bf.set109 = or i64 %bf.clear108, 0, !dbg !6403
  store i64 %bf.set109, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.load110 = load i64, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.clear111 = and i64 %bf.load110, -1048577, !dbg !6403
  %bf.set112 = or i64 %bf.clear111, 0, !dbg !6403
  store i64 %bf.set112, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.load113 = load i64, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.clear114 = and i64 %bf.load113, -2097153, !dbg !6403
  %bf.set115 = or i64 %bf.clear114, 0, !dbg !6403
  store i64 %bf.set115, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.load116 = load i64, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.clear117 = and i64 %bf.load116, -4194305, !dbg !6403
  %bf.set118 = or i64 %bf.clear117, 0, !dbg !6403
  store i64 %bf.set118, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.load119 = load i64, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.clear120 = and i64 %bf.load119, -8388609, !dbg !6403
  %bf.set121 = or i64 %bf.clear120, 0, !dbg !6403
  store i64 %bf.set121, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.load122 = load i64, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.clear123 = and i64 %bf.load122, -4278190081, !dbg !6403
  %bf.set124 = or i64 %bf.clear123, 0, !dbg !6403
  store i64 %bf.set124, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.load125 = load i64, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.clear126 = and i64 %bf.load125, -64424509441, !dbg !6403
  %bf.set127 = or i64 %bf.clear126, 0, !dbg !6403
  store i64 %bf.set127, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.load128 = load i64, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.clear129 = and i64 %bf.load128, -1030792151041, !dbg !6403
  %bf.set130 = or i64 %bf.clear129, 0, !dbg !6403
  store i64 %bf.set130, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.load131 = load i64, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.clear132 = and i64 %bf.load131, -1099511627777, !dbg !6403
  %bf.set133 = or i64 %bf.clear132, 0, !dbg !6403
  store i64 %bf.set133, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.load134 = load i64, ptr %.compoundliteral91, align 8, !dbg !6403
  %bf.clear135 = and i64 %bf.load134, -2199023255553, !dbg !6403
  %bf.set136 = or i64 %bf.clear135, 0, !dbg !6403
  store i64 %bf.set136, ptr %.compoundliteral91, align 8, !dbg !6403
  %13 = load i64, ptr %.compoundliteral91, align 8, !dbg !6403
  store i64 %13, ptr getelementptr inbounds ([10 x i64], ptr @zx_pmon_event_map, i64 0, i64 8), align 16, !dbg !6404
  %14 = load i8, ptr @boot_cpu_data, align 8, !dbg !6405
  %conv137 = zext i8 %14 to i32, !dbg !6406
  switch i32 %conv137, label %sw.default [
    i32 27, label %sw.bb138
    i32 59, label %sw.bb144
  ], !dbg !6407

sw.bb138:                                         ; preds = %sw.bb45
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 @hw_cache_event_ids, ptr align 16 @zxd_hw_cache_event_ids, i64 336, i1 false), !dbg !6408
  store ptr @zxd_event_constraints, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 35), align 8, !dbg !6410
  store i64 1792, ptr getelementptr inbounds ([10 x i64], ptr @zx_pmon_event_map, i64 0, i64 4), align 16, !dbg !6411
  store i64 1801, ptr getelementptr inbounds ([10 x i64], ptr @zx_pmon_event_map, i64 0, i64 5), align 8, !dbg !6412
  br label %do.body139, !dbg !6413

do.body139:                                       ; preds = %sw.bb138
  br label %do.cond140, !dbg !6415

do.cond140:                                       ; preds = %do.body139
  br label %do.end141, !dbg !6415

do.end141:                                        ; preds = %do.cond140
  %call143 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #13, !dbg !6413
  store i32 %call143, ptr %tmp142, align 4, !dbg !6415
  %15 = load i32, ptr %tmp142, align 4, !dbg !6413
  br label %sw.epilog, !dbg !6417

sw.bb144:                                         ; preds = %sw.bb45
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 @hw_cache_event_ids, ptr align 16 @zxe_hw_cache_event_ids, i64 336, i1 false), !dbg !6418
  store ptr @zxd_event_constraints, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 35), align 8, !dbg !6419
  store i64 40, ptr getelementptr inbounds ([10 x i64], ptr @zx_pmon_event_map, i64 0, i64 4), align 16, !dbg !6420
  store i64 41, ptr getelementptr inbounds ([10 x i64], ptr @zx_pmon_event_map, i64 0, i64 5), align 8, !dbg !6421
  br label %do.body145, !dbg !6422

do.body145:                                       ; preds = %sw.bb144
  br label %do.cond146, !dbg !6424

do.cond146:                                       ; preds = %do.body145
  br label %do.end147, !dbg !6424

do.end147:                                        ; preds = %do.cond146
  %call149 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #13, !dbg !6422
  store i32 %call149, ptr %tmp148, align 4, !dbg !6424
  %16 = load i32, ptr %tmp148, align 4, !dbg !6422
  br label %sw.epilog, !dbg !6426

sw.default:                                       ; preds = %sw.bb45
  store i32 -19, ptr %retval, align 4, !dbg !6427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6427

sw.epilog:                                        ; preds = %do.end147, %do.end141
  br label %sw.epilog151, !dbg !6428

sw.default150:                                    ; preds = %do.end25
  store i32 -19, ptr %retval, align 4, !dbg !6429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6429

sw.epilog151:                                     ; preds = %sw.epilog, %do.end41
  %17 = load i32, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 22), align 4, !dbg !6430
  %shl152 = shl i32 1, %17, !dbg !6431
  %sub153 = sub i32 %shl152, 1, !dbg !6432
  %conv154 = sext i32 %sub153 to i64, !dbg !6433
  store i64 %conv154, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 53), align 8, !dbg !6434
  %18 = load i32, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 23), align 8, !dbg !6435
  %sh_prom155 = zext i32 %18 to i64, !dbg !6436
  %shl156 = shl i64 1, %sh_prom155, !dbg !6436
  %sub157 = sub i64 %shl156, 1, !dbg !6437
  %shl158 = shl i64 %sub157, 32, !dbg !6438
  %19 = load i64, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 53), align 8, !dbg !6439
  %or = or i64 %19, %shl158, !dbg !6439
  store i64 %or, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 53), align 8, !dbg !6439
  %20 = load ptr, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 35), align 8, !dbg !6440
  %tobool = icmp ne ptr %20, null, !dbg !6442
  br i1 %tobool, label %if.then159, label %if.end167, !dbg !6443

if.then159:                                       ; preds = %sw.epilog151
  %21 = load ptr, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 35), align 8, !dbg !6444
  store ptr %21, ptr %c, align 8, !dbg !6444
  br label %for.cond, !dbg !6444

for.cond:                                         ; preds = %for.inc, %if.then159
  %22 = load ptr, ptr %c, align 8, !dbg !6447
  %weight = getelementptr inbounds %struct.event_constraint, ptr %22, i32 0, i32 3, !dbg !6447
  %23 = load i32, ptr %weight, align 8, !dbg !6447
  %cmp160 = icmp ne i32 %23, -1, !dbg !6447
  br i1 %cmp160, label %for.body, label %for.end, !dbg !6444

for.body:                                         ; preds = %for.cond
  %24 = load i32, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 22), align 4, !dbg !6449
  %sh_prom162 = zext i32 %24 to i64, !dbg !6451
  %shl163 = shl i64 1, %sh_prom162, !dbg !6451
  %sub164 = sub i64 %shl163, 1, !dbg !6452
  %25 = load ptr, ptr %c, align 8, !dbg !6453
  %26 = getelementptr inbounds %struct.event_constraint, ptr %25, i32 0, i32 0, !dbg !6454
  %27 = load i64, ptr %26, align 8, !dbg !6455
  %or165 = or i64 %27, %sub164, !dbg !6455
  store i64 %or165, ptr %26, align 8, !dbg !6455
  %28 = load i32, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 22), align 4, !dbg !6456
  %29 = load ptr, ptr %c, align 8, !dbg !6457
  %weight166 = getelementptr inbounds %struct.event_constraint, ptr %29, i32 0, i32 3, !dbg !6458
  %30 = load i32, ptr %weight166, align 8, !dbg !6459
  %add = add i32 %30, %28, !dbg !6459
  store i32 %add, ptr %weight166, align 8, !dbg !6459
  br label %for.inc, !dbg !6460

for.inc:                                          ; preds = %for.body
  %31 = load ptr, ptr %c, align 8, !dbg !6447
  %incdec.ptr = getelementptr %struct.event_constraint, ptr %31, i32 1, !dbg !6447
  store ptr %incdec.ptr, ptr %c, align 8, !dbg !6447
  br label %for.cond, !dbg !6447, !llvm.loop !6461

for.end:                                          ; preds = %for.cond
  br label %if.end167, !dbg !6465

if.end167:                                        ; preds = %for.end, %sw.epilog151
  store i32 0, ptr %retval, align 4, !dbg !6466
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6466

cleanup:                                          ; preds = %if.end167, %sw.default150, %sw.default, %if.end44, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #12, !dbg !6467
  call void @llvm.lifetime.end.p0(i64 4, ptr %unused) #12, !dbg !6467
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #12, !dbg !6467
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #12, !dbg !6467
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #12, !dbg !6467
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #12, !dbg !6467
  %32 = load i32, ptr %retval, align 4, !dbg !6467
  ret i32 %32, !dbg !6467
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6468 dso_local i32 @_printk(ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuid(i32 noundef %op, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #4 align 16 !dbg !6472 {
entry:
  %op.addr = alloca i32, align 4
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !6477, metadata !DIExpression()), !dbg !6482
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !6478, metadata !DIExpression()), !dbg !6483
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !6479, metadata !DIExpression()), !dbg !6484
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !6480, metadata !DIExpression()), !dbg !6485
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !6481, metadata !DIExpression()), !dbg !6486
  %0 = load i32, ptr %op.addr, align 4, !dbg !6487
  %1 = load ptr, ptr %eax.addr, align 8, !dbg !6488
  store i32 %0, ptr %1, align 4, !dbg !6489
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !6490
  store i32 0, ptr %2, align 4, !dbg !6491
  %3 = load ptr, ptr %eax.addr, align 8, !dbg !6492
  %4 = load ptr, ptr %ebx.addr, align 8, !dbg !6493
  %5 = load ptr, ptr %ecx.addr, align 8, !dbg !6494
  %6 = load ptr, ptr %edx.addr, align 8, !dbg !6495
  call void @native_cpuid(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #14, !dbg !6496
  ret void, !dbg !6497
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @zhaoxin_arch_events_quirk() #0 section ".init.text" align 16 !dbg !6498 {
entry:
  %bit = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #12, !dbg !6501
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !6500, metadata !DIExpression()), !dbg !6502
  store i32 0, ptr %bit, align 4, !dbg !6503
  br label %for.cond, !dbg !6503

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %bit, align 4, !dbg !6505
  %conv = sext i32 %0 to i64, !dbg !6505
  %call = call i64 @find_next_bit(ptr noundef getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 26), i64 noundef 7, i64 noundef %conv) #14, !dbg !6505
  %conv1 = trunc i64 %call to i32, !dbg !6505
  store i32 %conv1, ptr %bit, align 4, !dbg !6505
  %1 = load i32, ptr %bit, align 4, !dbg !6505
  %conv2 = sext i32 %1 to i64, !dbg !6505
  %cmp = icmp ult i64 %conv2, 7, !dbg !6505
  br i1 %cmp, label %for.body, label %for.end, !dbg !6503

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %bit, align 4, !dbg !6507
  %idxprom = sext i32 %2 to i64, !dbg !6509
  %arrayidx = getelementptr [7 x %struct.anon.46], ptr @zx_arch_events_map, i64 0, i64 %idxprom, !dbg !6509
  %id = getelementptr inbounds %struct.anon.46, ptr %arrayidx, i32 0, i32 0, !dbg !6510
  %3 = load i32, ptr %id, align 16, !dbg !6510
  %idxprom4 = sext i32 %3 to i64, !dbg !6511
  %arrayidx5 = getelementptr [10 x i64], ptr @zx_pmon_event_map, i64 0, i64 %idxprom4, !dbg !6511
  store i64 0, ptr %arrayidx5, align 8, !dbg !6512
  br label %do.body, !dbg !6513

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !6515

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6515

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr %bit, align 4, !dbg !6513
  %idxprom6 = sext i32 %4 to i64, !dbg !6513
  %arrayidx7 = getelementptr [7 x %struct.anon.46], ptr @zx_arch_events_map, i64 0, i64 %idxprom6, !dbg !6513
  %name = getelementptr inbounds %struct.anon.46, ptr %arrayidx7, i32 0, i32 1, !dbg !6513
  %5 = load ptr, ptr %name, align 8, !dbg !6513
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef @.str.18, ptr noundef %5) #13, !dbg !6513
  store i32 %call8, ptr %tmp, align 4, !dbg !6515
  %6 = load i32, ptr %tmp, align 4, !dbg !6513
  br label %for.inc, !dbg !6517

for.inc:                                          ; preds = %do.end
  %7 = load i32, ptr %bit, align 4, !dbg !6505
  %inc = add i32 %7, 1, !dbg !6505
  store i32 %inc, ptr %bit, align 4, !dbg !6505
  br label %for.cond, !dbg !6505, !llvm.loop !6518

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #12, !dbg !6520
  ret void, !dbg !6520
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #4 align 16 !dbg !6521 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !6525, metadata !DIExpression()), !dbg !6529
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !6526, metadata !DIExpression()), !dbg !6530
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !6527, metadata !DIExpression()), !dbg !6531
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !6528, metadata !DIExpression()), !dbg !6532
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !6533
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !6534
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !6535
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !6536
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !6537
  %5 = load i32, ptr %4, align 4, !dbg !6538
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !6539
  %7 = load i32, ptr %6, align 4, !dbg !6540
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #12, !dbg !6541, !srcloc !6542
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !6541
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !6541
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !6541
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !6541
  store i32 %asmresult, ptr %0, align 4, !dbg !6541
  store i32 %asmresult1, ptr %1, align 4, !dbg !6541
  store i32 %asmresult2, ptr %2, align 4, !dbg !6541
  store i32 %asmresult3, ptr %3, align 4, !dbg !6541
  ret void, !dbg !6543
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @zhaoxin_pmu_handle_irq(ptr noundef %regs) #6 align 16 !dbg !6544 {
entry:
  %regs.addr = alloca ptr, align 8
  %data = alloca %struct.perf_sample_data, align 64
  %cpuc = alloca ptr, align 8
  %handled = alloca i32, align 4
  %status = alloca i64, align 8
  %bit = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__vpp_verify7 = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  %event = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6546, metadata !DIExpression()), !dbg !6568
  call void @llvm.lifetime.start.p0(i64 256, ptr %data) #12, !dbg !6569
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6547, metadata !DIExpression()), !dbg !6570
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpuc) #12, !dbg !6571
  call void @llvm.dbg.declare(metadata ptr %cpuc, metadata !6548, metadata !DIExpression()), !dbg !6572
  call void @llvm.lifetime.start.p0(i64 4, ptr %handled) #12, !dbg !6573
  call void @llvm.dbg.declare(metadata ptr %handled, metadata !6549, metadata !DIExpression()), !dbg !6574
  store i32 0, ptr %handled, align 4, !dbg !6574
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #12, !dbg !6575
  call void @llvm.dbg.declare(metadata ptr %status, metadata !6550, metadata !DIExpression()), !dbg !6576
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #12, !dbg !6577
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !6551, metadata !DIExpression()), !dbg !6578
  br label %do.body, !dbg !6579

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6580
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6552, metadata !DIExpression()), !dbg !6580
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6580
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6580
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6579
  br label %do.cond, !dbg !6580

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6580

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6581
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6555, metadata !DIExpression()), !dbg !6581
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @cpu_hw_events) #15, !dbg !6581, !srcloc !6582
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !6581
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !6581
  %3 = inttoptr i64 %2 to ptr, !dbg !6581
  store ptr %3, ptr %tmp1, align 8, !dbg !6581
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6579
  %4 = load ptr, ptr %tmp1, align 8, !dbg !6581
  store ptr %4, ptr %tmp, align 8, !dbg !6580
  %5 = load ptr, ptr %tmp, align 8, !dbg !6579
  store ptr %5, ptr %cpuc, align 8, !dbg !6583
  call void @apic_write(i32 noundef 832, i32 noundef 1024) #14, !dbg !6584
  call void @zhaoxin_pmu_disable_all() #14, !dbg !6585
  %call = call i64 @zhaoxin_pmu_get_status() #14, !dbg !6586
  store i64 %call, ptr %status, align 8, !dbg !6587
  %6 = load i64, ptr %status, align 8, !dbg !6588
  %tobool = icmp ne i64 %6, 0, !dbg !6588
  br i1 %tobool, label %if.end, label %if.then, !dbg !6590

if.then:                                          ; preds = %do.end
  br label %done, !dbg !6591

if.end:                                           ; preds = %do.end
  br label %again, !dbg !6588

again:                                            ; preds = %if.then69, %if.end
  call void @llvm.dbg.label(metadata !6557), !dbg !6592
  %bf.load = load i8, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 38), align 8, !dbg !6593
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !6593
  %bf.clear = and i8 %bf.lshr, 1, !dbg !6593
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6593
  %tobool2 = icmp ne i32 %bf.cast, 0, !dbg !6595
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !6596

if.then3:                                         ; preds = %again
  %7 = load i64, ptr %status, align 8, !dbg !6597
  call void @zxc_pmu_ack_status(i64 noundef %7) #14, !dbg !6598
  br label %if.end4, !dbg !6598

if.else:                                          ; preds = %again
  %8 = load i64, ptr %status, align 8, !dbg !6599
  call void @zhaoxin_pmu_ack_status(i64 noundef %8) #14, !dbg !6600
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  br label %do.body5, !dbg !6601

do.body5:                                         ; preds = %if.end4
  br label %do.body6, !dbg !6602

do.body6:                                         ; preds = %do.body5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify7) #12, !dbg !6603
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify7, metadata !6558, metadata !DIExpression()), !dbg !6603
  store ptr null, ptr %__vpp_verify7, align 8, !dbg !6603
  %9 = load ptr, ptr %__vpp_verify7, align 8, !dbg !6603
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify7) #12, !dbg !6602
  br label %do.cond8, !dbg !6603

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !6603

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !6602

do.body10:                                        ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #12, !dbg !6604
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !6561, metadata !DIExpression()), !dbg !6604
  store i32 1, ptr %pao_ID__, align 4, !dbg !6604
  call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.irq_cpustat_t, ptr @irq_stat, i32 0, i32 8), ptr elementtype(i32) getelementptr inbounds (%struct.irq_cpustat_t, ptr @irq_stat, i32 0, i32 8)) #12, !dbg !6605, !srcloc !6608
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #12, !dbg !6602
  br label %do.cond11, !dbg !6604

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6604

do.end12:                                         ; preds = %do.cond11
  br label %do.cond13, !dbg !6602

do.cond13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !6602

do.end14:                                         ; preds = %do.cond13
  %10 = ptrtoint ptr %status to i64, !dbg !6609
  %cmp = icmp ne i64 %10, 0, !dbg !6609
  %conv = zext i1 %cmp to i32, !dbg !6609
  %11 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6609
  br i1 %11, label %land.lhs.true, label %cond.false, !dbg !6609

land.lhs.true:                                    ; preds = %do.end14
  %12 = ptrtoint ptr %status to i64, !dbg !6609
  %cmp15 = icmp ne i64 %12, 0, !dbg !6609
  br i1 %cmp15, label %land.lhs.true17, label %cond.false, !dbg !6609

land.lhs.true17:                                  ; preds = %land.lhs.true
  %13 = load i64, ptr %status, align 8, !dbg !6609
  %14 = call i1 @llvm.is.constant.i64(i64 %13), !dbg !6609
  br i1 %14, label %cond.true, label %cond.false, !dbg !6611

cond.true:                                        ; preds = %land.lhs.true17
  %call18 = call zeroext i1 @generic___test_and_clear_bit(i64 noundef 63, ptr noundef %status) #14, !dbg !6609
  br i1 %call18, label %if.then22, label %if.end26, !dbg !6609

cond.false:                                       ; preds = %land.lhs.true17, %land.lhs.true, %do.end14
  %call20 = call zeroext i1 @___test_and_clear_bit(i64 noundef 63, ptr noundef %status) #14, !dbg !6609
  br i1 %call20, label %if.then22, label %if.end26, !dbg !6611

if.then22:                                        ; preds = %cond.false, %cond.true
  %15 = load i64, ptr %status, align 8, !dbg !6612
  %tobool23 = icmp ne i64 %15, 0, !dbg !6612
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !6615

if.then24:                                        ; preds = %if.then22
  br label %done, !dbg !6616

if.end25:                                         ; preds = %if.then22
  br label %if.end26, !dbg !6617

if.end26:                                         ; preds = %if.end25, %cond.false, %cond.true
  store i32 0, ptr %bit, align 4, !dbg !6618
  br label %for.cond, !dbg !6618

for.cond:                                         ; preds = %for.inc, %if.end26
  %16 = load i32, ptr %bit, align 4, !dbg !6619
  %conv27 = sext i32 %16 to i64, !dbg !6619
  %call28 = call i64 @find_next_bit(ptr noundef %status, i64 noundef 64, i64 noundef %conv27) #14, !dbg !6619
  %conv29 = trunc i64 %call28 to i32, !dbg !6619
  store i32 %conv29, ptr %bit, align 4, !dbg !6619
  %17 = load i32, ptr %bit, align 4, !dbg !6619
  %cmp30 = icmp slt i32 %17, 64, !dbg !6619
  br i1 %cmp30, label %for.body, label %for.end, !dbg !6618

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #12, !dbg !6620
  call void @llvm.dbg.declare(metadata ptr %event, metadata !6563, metadata !DIExpression()), !dbg !6621
  %18 = load ptr, ptr %cpuc, align 8, !dbg !6622
  %events = getelementptr inbounds %struct.cpu_hw_events, ptr %18, i32 0, i32 0, !dbg !6623
  %19 = load i32, ptr %bit, align 4, !dbg !6624
  %idxprom = sext i32 %19 to i64, !dbg !6622
  %arrayidx = getelementptr [64 x ptr], ptr %events, i64 0, i64 %idxprom, !dbg !6622
  %20 = load ptr, ptr %arrayidx, align 8, !dbg !6622
  store ptr %20, ptr %event, align 8, !dbg !6621
  %21 = load i32, ptr %handled, align 4, !dbg !6625
  %inc = add i32 %21, 1, !dbg !6625
  store i32 %inc, ptr %handled, align 4, !dbg !6625
  %22 = load i32, ptr %bit, align 4, !dbg !6626
  %23 = call i1 @llvm.is.constant.i32(i32 %22), !dbg !6626
  br i1 %23, label %land.lhs.true32, label %cond.false49, !dbg !6626

land.lhs.true32:                                  ; preds = %for.body
  %24 = load ptr, ptr %cpuc, align 8, !dbg !6626
  %active_mask = getelementptr inbounds %struct.cpu_hw_events, ptr %24, i32 0, i32 1, !dbg !6626
  %arraydecay = getelementptr inbounds [1 x i64], ptr %active_mask, i64 0, i64 0, !dbg !6626
  %25 = ptrtoint ptr %arraydecay to i64, !dbg !6626
  %cmp33 = icmp ne i64 %25, 0, !dbg !6626
  %conv34 = zext i1 %cmp33 to i32, !dbg !6626
  %26 = call i1 @llvm.is.constant.i32(i32 %conv34), !dbg !6626
  br i1 %26, label %land.lhs.true35, label %cond.false49, !dbg !6626

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %27 = load ptr, ptr %cpuc, align 8, !dbg !6626
  %active_mask36 = getelementptr inbounds %struct.cpu_hw_events, ptr %27, i32 0, i32 1, !dbg !6626
  %arraydecay37 = getelementptr inbounds [1 x i64], ptr %active_mask36, i64 0, i64 0, !dbg !6626
  %28 = ptrtoint ptr %arraydecay37 to i64, !dbg !6626
  %cmp38 = icmp ne i64 %28, 0, !dbg !6626
  br i1 %cmp38, label %land.lhs.true40, label %cond.false49, !dbg !6626

land.lhs.true40:                                  ; preds = %land.lhs.true35
  %29 = load ptr, ptr %cpuc, align 8, !dbg !6626
  %active_mask41 = getelementptr inbounds %struct.cpu_hw_events, ptr %29, i32 0, i32 1, !dbg !6626
  %arraydecay42 = getelementptr inbounds [1 x i64], ptr %active_mask41, i64 0, i64 0, !dbg !6626
  %30 = load i64, ptr %arraydecay42, align 8, !dbg !6626
  %31 = call i1 @llvm.is.constant.i64(i64 %30), !dbg !6626
  br i1 %31, label %cond.true43, label %cond.false49, !dbg !6628

cond.true43:                                      ; preds = %land.lhs.true40
  %32 = load i32, ptr %bit, align 4, !dbg !6626
  %conv44 = sext i32 %32 to i64, !dbg !6626
  %33 = load ptr, ptr %cpuc, align 8, !dbg !6626
  %active_mask45 = getelementptr inbounds %struct.cpu_hw_events, ptr %33, i32 0, i32 1, !dbg !6626
  %arraydecay46 = getelementptr inbounds [1 x i64], ptr %active_mask45, i64 0, i64 0, !dbg !6626
  %call47 = call zeroext i1 @const_test_bit(i64 noundef %conv44, ptr noundef %arraydecay46) #14, !dbg !6626
  br i1 %call47, label %if.end56, label %if.then55, !dbg !6626

cond.false49:                                     ; preds = %land.lhs.true40, %land.lhs.true35, %land.lhs.true32, %for.body
  %34 = load i32, ptr %bit, align 4, !dbg !6626
  %conv50 = sext i32 %34 to i64, !dbg !6626
  %35 = load ptr, ptr %cpuc, align 8, !dbg !6626
  %active_mask51 = getelementptr inbounds %struct.cpu_hw_events, ptr %35, i32 0, i32 1, !dbg !6626
  %arraydecay52 = getelementptr inbounds [1 x i64], ptr %active_mask51, i64 0, i64 0, !dbg !6626
  %call53 = call zeroext i1 @_test_bit(i64 noundef %conv50, ptr noundef %arraydecay52) #14, !dbg !6626
  br i1 %call53, label %if.end56, label %if.then55, !dbg !6628

if.then55:                                        ; preds = %cond.false49, %cond.true43
  store i32 14, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6629

if.end56:                                         ; preds = %cond.false49, %cond.true43
  %36 = load ptr, ptr %event, align 8, !dbg !6630
  %call57 = call i64 @x86_perf_event_update(ptr noundef %36) #14, !dbg !6631
  %37 = load ptr, ptr %event, align 8, !dbg !6632
  %hw = getelementptr inbounds %struct.perf_event, ptr %37, i32 0, i32 26, !dbg !6633
  %38 = getelementptr inbounds %struct.hw_perf_event, ptr %hw, i32 0, i32 7, !dbg !6634
  %last_period = getelementptr inbounds %struct.anon.42, ptr %38, i32 0, i32 0, !dbg !6634
  %39 = load i64, ptr %last_period, align 8, !dbg !6634
  call void @perf_sample_data_init(ptr noundef %data, i64 noundef 0, i64 noundef %39) #14, !dbg !6635
  %40 = load ptr, ptr %event, align 8, !dbg !6636
  %call58 = call i32 @x86_perf_event_set_period(ptr noundef %40) #14, !dbg !6638
  %tobool59 = icmp ne i32 %call58, 0, !dbg !6638
  br i1 %tobool59, label %if.end61, label %if.then60, !dbg !6639

if.then60:                                        ; preds = %if.end56
  store i32 14, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6640

if.end61:                                         ; preds = %if.end56
  %41 = load ptr, ptr %event, align 8, !dbg !6641
  %42 = load ptr, ptr %regs.addr, align 8, !dbg !6643
  %call62 = call i32 @perf_event_overflow(ptr noundef %41, ptr noundef %data, ptr noundef %42) #14, !dbg !6644
  %tobool63 = icmp ne i32 %call62, 0, !dbg !6644
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !6645

if.then64:                                        ; preds = %if.end61
  %43 = load ptr, ptr %event, align 8, !dbg !6646
  call void @x86_pmu_stop(ptr noundef %43, i32 noundef 0) #14, !dbg !6647
  br label %if.end65, !dbg !6647

if.end65:                                         ; preds = %if.then64, %if.end61
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6648
  br label %cleanup, !dbg !6648

cleanup:                                          ; preds = %if.end65, %if.then60, %if.then55
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #12, !dbg !6648
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 14, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6649

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %44 = load i32, ptr %bit, align 4, !dbg !6619
  %inc66 = add i32 %44, 1, !dbg !6619
  store i32 %inc66, ptr %bit, align 4, !dbg !6619
  br label %for.cond, !dbg !6619, !llvm.loop !6650

for.end:                                          ; preds = %for.cond
  %call67 = call i64 @zhaoxin_pmu_get_status() #14, !dbg !6652
  store i64 %call67, ptr %status, align 8, !dbg !6653
  %45 = load i64, ptr %status, align 8, !dbg !6654
  %tobool68 = icmp ne i64 %45, 0, !dbg !6654
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !6656

if.then69:                                        ; preds = %for.end
  br label %again, !dbg !6657

if.end70:                                         ; preds = %for.end
  br label %done, !dbg !6654

done:                                             ; preds = %if.end70, %if.then24, %if.then
  call void @llvm.dbg.label(metadata !6567), !dbg !6658
  call void @zhaoxin_pmu_enable_all(i32 noundef 0) #14, !dbg !6659
  %46 = load i32, ptr %handled, align 4, !dbg !6660
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #12, !dbg !6661
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #12, !dbg !6661
  call void @llvm.lifetime.end.p0(i64 4, ptr %handled) #12, !dbg !6661
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpuc) #12, !dbg !6661
  call void @llvm.lifetime.end.p0(i64 256, ptr %data) #12, !dbg !6661
  ret i32 %46, !dbg !6662

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @zhaoxin_pmu_disable_all() #6 align 16 !dbg !6663 {
entry:
  call void @wrmsrl(i32 noundef 911, i64 noundef 0) #14, !dbg !6664
  ret void, !dbg !6665
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @zhaoxin_pmu_enable_all(i32 noundef %added) #6 align 16 !dbg !6666 {
entry:
  %added.addr = alloca i32, align 4
  store i32 %added, ptr %added.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %added.addr, metadata !6668, metadata !DIExpression()), !dbg !6669
  %0 = load i64, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 53), align 8, !dbg !6670
  call void @wrmsrl(i32 noundef 911, i64 noundef %0) #14, !dbg !6671
  ret void, !dbg !6672
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @zhaoxin_pmu_enable_event(ptr noundef %event) #6 align 16 !dbg !6673 {
entry:
  %event.addr = alloca ptr, align 8
  %hwc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6675, metadata !DIExpression()), !dbg !6678
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwc) #12, !dbg !6679
  call void @llvm.dbg.declare(metadata ptr %hwc, metadata !6676, metadata !DIExpression()), !dbg !6680
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6681
  %hw = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 26, !dbg !6682
  store ptr %hw, ptr %hwc, align 8, !dbg !6680
  %1 = load ptr, ptr %hwc, align 8, !dbg !6683
  %2 = getelementptr inbounds %struct.hw_perf_event, ptr %1, i32 0, i32 0, !dbg !6683
  %config_base = getelementptr inbounds %struct.anon.35, ptr %2, i32 0, i32 2, !dbg !6683
  %3 = load i64, ptr %config_base, align 8, !dbg !6683
  %cmp = icmp eq i64 %3, 909, !dbg !6683
  %lnot = xor i1 %cmp, true, !dbg !6683
  %lnot1 = xor i1 %lnot, true, !dbg !6683
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6683
  %conv = sext i32 %lnot.ext to i64, !dbg !6683
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6683
  %tobool = icmp ne i64 %expval, 0, !dbg !6683
  br i1 %tobool, label %if.then, label %if.end, !dbg !6685

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %hwc, align 8, !dbg !6686
  call void @zhaoxin_pmu_enable_fixed(ptr noundef %4) #14, !dbg !6688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6689

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %hwc, align 8, !dbg !6690
  call void @__x86_pmu_enable_event(ptr noundef %5, i64 noundef 4194304) #14, !dbg !6691
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6692
  br label %cleanup, !dbg !6692

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwc) #12, !dbg !6692
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6692

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @zhaoxin_pmu_disable_event(ptr noundef %event) #6 align 16 !dbg !6693 {
entry:
  %event.addr = alloca ptr, align 8
  %hwc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6695, metadata !DIExpression()), !dbg !6697
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwc) #12, !dbg !6698
  call void @llvm.dbg.declare(metadata ptr %hwc, metadata !6696, metadata !DIExpression()), !dbg !6699
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6700
  %hw = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 26, !dbg !6701
  store ptr %hw, ptr %hwc, align 8, !dbg !6699
  %1 = load ptr, ptr %hwc, align 8, !dbg !6702
  %2 = getelementptr inbounds %struct.hw_perf_event, ptr %1, i32 0, i32 0, !dbg !6702
  %config_base = getelementptr inbounds %struct.anon.35, ptr %2, i32 0, i32 2, !dbg !6702
  %3 = load i64, ptr %config_base, align 8, !dbg !6702
  %cmp = icmp eq i64 %3, 909, !dbg !6702
  %lnot = xor i1 %cmp, true, !dbg !6702
  %lnot1 = xor i1 %lnot, true, !dbg !6702
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6702
  %conv = sext i32 %lnot.ext to i64, !dbg !6702
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6702
  %tobool = icmp ne i64 %expval, 0, !dbg !6702
  br i1 %tobool, label %if.then, label %if.end, !dbg !6704

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %hwc, align 8, !dbg !6705
  call void @zhaoxin_pmu_disable_fixed(ptr noundef %4) #14, !dbg !6707
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6708

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %event.addr, align 8, !dbg !6709
  call void @x86_pmu_disable_event(ptr noundef %5) #14, !dbg !6710
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6711
  br label %cleanup, !dbg !6711

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwc) #12, !dbg !6711
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6711

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @x86_pmu_hw_config(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @x86_schedule_events(ptr noundef, i32 noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @zhaoxin_pmu_event_map(i32 noundef %hw_event) #6 align 16 !dbg !6712 {
entry:
  %hw_event.addr = alloca i32, align 4
  store i32 %hw_event, ptr %hw_event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hw_event.addr, metadata !6714, metadata !DIExpression()), !dbg !6715
  %0 = load i32, ptr %hw_event.addr, align 4, !dbg !6716
  %idxprom = sext i32 %0 to i64, !dbg !6717
  %arrayidx = getelementptr [10 x i64], ptr @zx_pmon_event_map, i64 0, i64 %idxprom, !dbg !6717
  %1 = load i64, ptr %arrayidx, align 8, !dbg !6717
  ret i64 %1, !dbg !6718
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @zhaoxin_get_event_constraints(ptr noundef %cpuc, i32 noundef %idx, ptr noundef %event) #6 align 16 !dbg !6719 {
entry:
  %retval = alloca ptr, align 8
  %cpuc.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %event.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cpuc, ptr %cpuc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpuc.addr, metadata !6721, metadata !DIExpression()), !dbg !6725
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6722, metadata !DIExpression()), !dbg !6726
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6723, metadata !DIExpression()), !dbg !6727
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #12, !dbg !6728
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6724, metadata !DIExpression()), !dbg !6729
  %0 = load ptr, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 35), align 8, !dbg !6730
  %tobool = icmp ne ptr %0, null, !dbg !6732
  br i1 %tobool, label %if.then, label %if.end3, !dbg !6733

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 35), align 8, !dbg !6734
  store ptr %1, ptr %c, align 8, !dbg !6734
  br label %for.cond, !dbg !6734

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load ptr, ptr %c, align 8, !dbg !6737
  %weight = getelementptr inbounds %struct.event_constraint, ptr %2, i32 0, i32 3, !dbg !6737
  %3 = load i32, ptr %weight, align 8, !dbg !6737
  %cmp = icmp ne i32 %3, -1, !dbg !6737
  br i1 %cmp, label %for.body, label %for.end, !dbg !6734

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %event.addr, align 8, !dbg !6739
  %hw = getelementptr inbounds %struct.perf_event, ptr %4, i32 0, i32 26, !dbg !6742
  %5 = getelementptr inbounds %struct.hw_perf_event, ptr %hw, i32 0, i32 0, !dbg !6743
  %config = getelementptr inbounds %struct.anon.35, ptr %5, i32 0, i32 0, !dbg !6743
  %6 = load i64, ptr %config, align 8, !dbg !6743
  %7 = load ptr, ptr %c, align 8, !dbg !6744
  %cmask = getelementptr inbounds %struct.event_constraint, ptr %7, i32 0, i32 2, !dbg !6745
  %8 = load i64, ptr %cmask, align 8, !dbg !6745
  %and = and i64 %6, %8, !dbg !6746
  %9 = load ptr, ptr %c, align 8, !dbg !6747
  %code = getelementptr inbounds %struct.event_constraint, ptr %9, i32 0, i32 1, !dbg !6748
  %10 = load i64, ptr %code, align 8, !dbg !6748
  %cmp1 = icmp eq i64 %and, %10, !dbg !6749
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !6750

if.then2:                                         ; preds = %for.body
  %11 = load ptr, ptr %c, align 8, !dbg !6751
  store ptr %11, ptr %retval, align 8, !dbg !6752
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6752

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6753

for.inc:                                          ; preds = %if.end
  %12 = load ptr, ptr %c, align 8, !dbg !6737
  %incdec.ptr = getelementptr %struct.event_constraint, ptr %12, i32 1, !dbg !6737
  store ptr %incdec.ptr, ptr %c, align 8, !dbg !6737
  br label %for.cond, !dbg !6737, !llvm.loop !6754

for.end:                                          ; preds = %for.cond
  br label %if.end3, !dbg !6756

if.end3:                                          ; preds = %for.end, %entry
  store ptr @unconstrained, ptr %retval, align 8, !dbg !6757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6757

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #12, !dbg !6758
  %13 = load ptr, ptr %retval, align 8, !dbg !6758
  ret ptr %13, !dbg !6758
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @zhaoxin_event_sysfs_show(ptr noundef %page, i64 noundef %config) #6 align 16 !dbg !6759 {
entry:
  %page.addr = alloca ptr, align 8
  %config.addr = alloca i64, align 8
  %event = alloca i64, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6761, metadata !DIExpression()), !dbg !6764
  store i64 %config, ptr %config.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %config.addr, metadata !6762, metadata !DIExpression()), !dbg !6765
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #12, !dbg !6766
  call void @llvm.dbg.declare(metadata ptr %event, metadata !6763, metadata !DIExpression()), !dbg !6767
  %0 = load i64, ptr %config.addr, align 8, !dbg !6768
  %and = and i64 %0, 255, !dbg !6769
  store i64 %and, ptr %event, align 8, !dbg !6767
  %1 = load ptr, ptr %page.addr, align 8, !dbg !6770
  %2 = load i64, ptr %config.addr, align 8, !dbg !6771
  %3 = load i64, ptr %event, align 8, !dbg !6772
  %call = call i64 @x86_event_sysfs_show(ptr noundef %1, i64 noundef %2, i64 noundef %3) #14, !dbg !6773
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #12, !dbg !6774
  ret i64 %call, !dbg !6775
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @apic_write(i32 noundef %reg, i32 noundef %val) #8 align 16 !dbg !6154 {
entry:
  %reg.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !6159, metadata !DIExpression()), !dbg !6776
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6160, metadata !DIExpression()), !dbg !6777
  store ptr @__SCT__apic_call_write, ptr %tmp, align 8, !dbg !6778
  %0 = load ptr, ptr %tmp, align 8, !dbg !6778
  %1 = load i32, ptr %reg.addr, align 4, !dbg !6780
  %2 = load i32, ptr %val.addr, align 4, !dbg !6781
  call void %0(i32 noundef %1, i32 noundef %2) #14, !dbg !6782
  ret void, !dbg !6783
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @zhaoxin_pmu_get_status() #4 align 16 !dbg !6784 {
entry:
  %status = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #12, !dbg !6787
  call void @llvm.dbg.declare(metadata ptr %status, metadata !6786, metadata !DIExpression()), !dbg !6788
  %call = call i64 @native_read_msr(i32 noundef 910) #14, !dbg !6789
  store i64 %call, ptr %status, align 8, !dbg !6789
  %0 = load i64, ptr %status, align 8, !dbg !6790
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #12, !dbg !6791
  ret i64 %0, !dbg !6792
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @zxc_pmu_ack_status(i64 noundef %ack) #4 align 16 !dbg !6793 {
entry:
  %ack.addr = alloca i64, align 8
  store i64 %ack, ptr %ack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ack.addr, metadata !6797, metadata !DIExpression()), !dbg !6798
  call void @zhaoxin_pmu_enable_all(i32 noundef 0) #14, !dbg !6799
  %0 = load i64, ptr %ack.addr, align 8, !dbg !6800
  call void @zhaoxin_pmu_ack_status(i64 noundef %0) #14, !dbg !6801
  call void @zhaoxin_pmu_disable_all() #14, !dbg !6802
  ret void, !dbg !6803
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @zhaoxin_pmu_ack_status(i64 noundef %ack) #4 align 16 !dbg !6804 {
entry:
  %ack.addr = alloca i64, align 8
  store i64 %ack, ptr %ack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ack.addr, metadata !6806, metadata !DIExpression()), !dbg !6807
  %0 = load i64, ptr %ack.addr, align 8, !dbg !6808
  call void @wrmsrl(i32 noundef 912, i64 noundef %0) #14, !dbg !6809
  ret void, !dbg !6810
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @generic___test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6811 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  %old = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6818, metadata !DIExpression()), !dbg !6823
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6819, metadata !DIExpression()), !dbg !6824
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !6825
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6820, metadata !DIExpression()), !dbg !6826
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6827
  %rem = urem i64 %0, 64, !dbg !6827
  %shl = shl i64 1, %rem, !dbg !6827
  store i64 %shl, ptr %mask, align 8, !dbg !6826
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !6828
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6821, metadata !DIExpression()), !dbg !6829
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6830
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6831
  %div = udiv i64 %2, 64, !dbg !6831
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !6832
  store ptr %add.ptr, ptr %p, align 8, !dbg !6829
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #12, !dbg !6833
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6822, metadata !DIExpression()), !dbg !6834
  %3 = load ptr, ptr %p, align 8, !dbg !6835
  %4 = load i64, ptr %3, align 8, !dbg !6836
  store i64 %4, ptr %old, align 8, !dbg !6834
  %5 = load i64, ptr %old, align 8, !dbg !6837
  %6 = load i64, ptr %mask, align 8, !dbg !6838
  %not = xor i64 %6, -1, !dbg !6839
  %and = and i64 %5, %not, !dbg !6840
  %7 = load ptr, ptr %p, align 8, !dbg !6841
  store i64 %and, ptr %7, align 8, !dbg !6842
  %8 = load i64, ptr %old, align 8, !dbg !6843
  %9 = load i64, ptr %mask, align 8, !dbg !6844
  %and1 = and i64 %8, %9, !dbg !6845
  %cmp = icmp ne i64 %and1, 0, !dbg !6846
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #12, !dbg !6847
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !6847
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !6847
  ret i1 %cmp, !dbg !6848
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @___test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6849 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6852, metadata !DIExpression()), !dbg !6854
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6853, metadata !DIExpression()), !dbg !6855
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6856
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6857
  call void @__instrument_read_write_bitop(i64 noundef %0, ptr noundef %1) #14, !dbg !6858
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6859
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6860
  %call = call zeroext i1 @arch___test_and_clear_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !6861
  ret i1 %call, !dbg !6862
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !6863 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6868, metadata !DIExpression()), !dbg !6874
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6869, metadata !DIExpression()), !dbg !6875
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6870, metadata !DIExpression()), !dbg !6876
  %0 = load i64, ptr %size.addr, align 8, !dbg !6877
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6877
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !6877

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6877
  %cmp = icmp ule i64 %2, 64, !dbg !6877
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !6877

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !6877
  %cmp2 = icmp ugt i64 %3, 0, !dbg !6877
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !6878

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !6879
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6871, metadata !DIExpression()), !dbg !6880
  %4 = load i64, ptr %offset.addr, align 8, !dbg !6881
  %5 = load i64, ptr %size.addr, align 8, !dbg !6881
  %cmp3 = icmp uge i64 %4, %5, !dbg !6881
  %lnot = xor i1 %cmp3, true, !dbg !6881
  %lnot4 = xor i1 %lnot, true, !dbg !6881
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6881
  %conv = sext i32 %lnot.ext to i64, !dbg !6881
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6881
  %tobool = icmp ne i64 %expval, 0, !dbg !6881
  br i1 %tobool, label %if.then5, label %if.end, !dbg !6883

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6884
  store i64 %6, ptr %retval, align 8, !dbg !6885
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6885

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !6886
  %8 = load i64, ptr %7, align 8, !dbg !6887
  %9 = load i64, ptr %offset.addr, align 8, !dbg !6888
  %shl = shl i64 1, %9, !dbg !6888
  %sub = sub i64 -1, %shl, !dbg !6888
  %add = add i64 %sub, 1, !dbg !6888
  %10 = load i64, ptr %size.addr, align 8, !dbg !6888
  %sub6 = sub i64 %10, 1, !dbg !6888
  %sub7 = sub i64 63, %sub6, !dbg !6888
  %shr = lshr i64 -1, %sub7, !dbg !6888
  %and = and i64 %add, %shr, !dbg !6888
  %add8 = add i64 0, %and, !dbg !6888
  %and9 = and i64 %8, %add8, !dbg !6889
  store i64 %and9, ptr %val, align 8, !dbg !6890
  %11 = load i64, ptr %val, align 8, !dbg !6891
  %tobool10 = icmp ne i64 %11, 0, !dbg !6891
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !6891

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !6892
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !6892
  br i1 %13, label %cond.true11, label %cond.false, !dbg !6892

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !6892
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !6892
  %cast = trunc i64 %15 to i32, !dbg !6892
  %conv12 = sext i32 %cast to i64, !dbg !6892
  br label %cond.end, !dbg !6892

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !6892
  %call = call i64 @variable__ffs(i64 noundef %16) #14, !dbg !6892
  br label %cond.end, !dbg !6892

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !6892
  br label %cond.end14, !dbg !6891

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !6893
  br label %cond.end14, !dbg !6891

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !6891
  store i64 %cond15, ptr %retval, align 8, !dbg !6894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6894

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !6895
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !6896
  %19 = load i64, ptr %size.addr, align 8, !dbg !6897
  %20 = load i64, ptr %offset.addr, align 8, !dbg !6898
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #14, !dbg !6899
  store i64 %call17, ptr %retval, align 8, !dbg !6900
  br label %return, !dbg !6900

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !6901
  ret i64 %21, !dbg !6901
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6902 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6908, metadata !DIExpression()), !dbg !6913
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6909, metadata !DIExpression()), !dbg !6914
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !6915
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6910, metadata !DIExpression()), !dbg !6916
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6917
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6918
  %div = udiv i64 %1, 64, !dbg !6918
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6919
  store ptr %add.ptr, ptr %p, align 8, !dbg !6916
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !6920
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6911, metadata !DIExpression()), !dbg !6921
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6922
  %rem = urem i64 %2, 64, !dbg !6922
  %shl = shl i64 1, %rem, !dbg !6922
  store i64 %shl, ptr %mask, align 8, !dbg !6921
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !6923
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6912, metadata !DIExpression()), !dbg !6924
  %3 = load ptr, ptr %p, align 8, !dbg !6925
  %4 = load i64, ptr %3, align 8, !dbg !6926
  store i64 %4, ptr %val, align 8, !dbg !6924
  %5 = load i64, ptr %val, align 8, !dbg !6927
  %6 = load i64, ptr %mask, align 8, !dbg !6928
  %and = and i64 %5, %6, !dbg !6929
  %tobool = icmp ne i64 %and, 0, !dbg !6930
  %lnot = xor i1 %tobool, true, !dbg !6930
  %lnot1 = xor i1 %lnot, true, !dbg !6931
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !6932
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !6932
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !6932
  ret i1 %lnot1, !dbg !6933
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !6934 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6936, metadata !DIExpression()), !dbg !6938
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6937, metadata !DIExpression()), !dbg !6939
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6940
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6941
  %div = udiv i64 %1, 64, !dbg !6941
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6942
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !6943
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6944
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6945
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !6946
  ret i1 %call, !dbg !6947
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6948 dso_local i64 @x86_perf_event_update(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_sample_data_init(ptr noundef %data, i64 noundef %addr, i64 noundef %period) #4 align 16 !dbg !6949 {
entry:
  %data.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %period.addr = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6953, metadata !DIExpression()), !dbg !6956
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6954, metadata !DIExpression()), !dbg !6957
  store i64 %period, ptr %period.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %period.addr, metadata !6955, metadata !DIExpression()), !dbg !6958
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6959
  %sample_flags = getelementptr inbounds %struct.perf_sample_data, ptr %0, i32 0, i32 0, !dbg !6960
  store i64 256, ptr %sample_flags, align 64, !dbg !6961
  %1 = load i64, ptr %period.addr, align 8, !dbg !6962
  %2 = load ptr, ptr %data.addr, align 8, !dbg !6963
  %period1 = getelementptr inbounds %struct.perf_sample_data, ptr %2, i32 0, i32 1, !dbg !6964
  store i64 %1, ptr %period1, align 8, !dbg !6965
  %3 = load ptr, ptr %data.addr, align 8, !dbg !6966
  %dyn_size = getelementptr inbounds %struct.perf_sample_data, ptr %3, i32 0, i32 2, !dbg !6967
  store i64 0, ptr %dyn_size, align 16, !dbg !6968
  %4 = load i64, ptr %addr.addr, align 8, !dbg !6969
  %tobool = icmp ne i64 %4, 0, !dbg !6969
  br i1 %tobool, label %if.then, label %if.end, !dbg !6971

if.then:                                          ; preds = %entry
  %5 = load i64, ptr %addr.addr, align 8, !dbg !6972
  %6 = load ptr, ptr %data.addr, align 8, !dbg !6974
  %addr2 = getelementptr inbounds %struct.perf_sample_data, ptr %6, i32 0, i32 20, !dbg !6975
  store i64 %5, ptr %addr2, align 16, !dbg !6976
  %7 = load ptr, ptr %data.addr, align 8, !dbg !6977
  %sample_flags3 = getelementptr inbounds %struct.perf_sample_data, ptr %7, i32 0, i32 0, !dbg !6978
  %8 = load i64, ptr %sample_flags3, align 64, !dbg !6979
  %or = or i64 %8, 8, !dbg !6979
  store i64 %or, ptr %sample_flags3, align 64, !dbg !6979
  br label %if.end, !dbg !6980

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6981
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6982 dso_local i32 @x86_perf_event_set_period(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6983 dso_local i32 @perf_event_overflow(ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6986 dso_local void @x86_pmu_stop(ptr noundef, i32 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_write(i32 noundef, i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #4 align 16 !dbg !6987 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6992, metadata !DIExpression()), !dbg !6994
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !6995
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6993, metadata !DIExpression()), !dbg !6996
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6997
  %call = call i64 @__rdmsr(i32 noundef %0) #14, !dbg !6998
  store i64 %call, ptr %val, align 8, !dbg !6999
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #14, !dbg !7000
  br i1 %call1, label %if.then, label %if.end, !dbg !7002

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !7003
  %2 = load i64, ptr %val, align 8, !dbg !7004
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #14, !dbg !7005
  br label %if.end, !dbg !7005

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !7006
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !7007
  ret i64 %3, !dbg !7008
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #8 align 16 !dbg !7009 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !7011, metadata !DIExpression()), !dbg !7014
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #12, !dbg !7015
  call void @llvm.dbg.declare(metadata ptr %low, metadata !7012, metadata !DIExpression()), !dbg !7015
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #12, !dbg !7015
  call void @llvm.dbg.declare(metadata ptr %high, metadata !7013, metadata !DIExpression()), !dbg !7015
  %0 = load i32, ptr %msr.addr, align 4, !dbg !7016
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #12, !dbg !7017, !srcloc !7018
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !7017
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !7017
  store i64 %asmresult, ptr %low, align 8, !dbg !7017
  store i64 %asmresult1, ptr %high, align 8, !dbg !7017
  %2 = load i64, ptr %low, align 8, !dbg !7019
  %3 = load i64, ptr %high, align 8, !dbg !7019
  %shl = shl i64 %3, 32, !dbg !7019
  %or = or i64 %2, %shl, !dbg !7019
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #12, !dbg !7020
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #12, !dbg !7020
  ret i64 %or, !dbg !7021
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #8 align 16 !dbg !7022 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7038, metadata !DIExpression()), !dbg !7039
  %0 = load ptr, ptr %key.addr, align 8, !dbg !7040
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #14, !dbg !7041
  ret i1 %call, !dbg !7042
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7043 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #8 align 16 !dbg !7046 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7051, metadata !DIExpression()), !dbg !7054
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !7052, metadata !DIExpression()), !dbg !7055
  %0 = load ptr, ptr %key.addr, align 8, !dbg !7056
  %1 = load i8, ptr %branch.addr, align 1, !dbg !7057, !range !7058, !noundef !694
  %tobool = trunc i8 %1 to i1, !dbg !7057
  %conv = zext i1 %tobool to i32, !dbg !7057
  %or = or i32 2, %conv, !dbg !7059
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !7060, !srcloc !7061

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !7062
  br label %return, !dbg !7062

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !7053), !dbg !7063
  store i1 true, ptr %retval, align 1, !dbg !7064
  br label %return, !dbg !7064

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !7065
  ret i1 %2, !dbg !7065
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsrl(i32 noundef %msr, i64 noundef %val) #4 align 16 !dbg !7066 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !7070, metadata !DIExpression()), !dbg !7072
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7071, metadata !DIExpression()), !dbg !7073
  %0 = load i32, ptr %msr.addr, align 4, !dbg !7074
  %1 = load i64, ptr %val.addr, align 8, !dbg !7075
  %and = and i64 %1, 4294967295, !dbg !7076
  %conv = trunc i64 %and to i32, !dbg !7077
  %2 = load i64, ptr %val.addr, align 8, !dbg !7078
  %shr = lshr i64 %2, 32, !dbg !7079
  %conv1 = trunc i64 %shr to i32, !dbg !7080
  call void @native_write_msr(i32 noundef %0, i32 noundef %conv, i32 noundef %conv1) #14, !dbg !7081
  ret void, !dbg !7082
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #4 align 16 !dbg !7083 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !7087, metadata !DIExpression()), !dbg !7090
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !7088, metadata !DIExpression()), !dbg !7091
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !7089, metadata !DIExpression()), !dbg !7092
  %0 = load i32, ptr %msr.addr, align 4, !dbg !7093
  %1 = load i32, ptr %low.addr, align 4, !dbg !7094
  %2 = load i32, ptr %high.addr, align 4, !dbg !7095
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #14, !dbg !7096
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #14, !dbg !7097
  br i1 %call, label %if.then, label %if.end, !dbg !7099

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !7100
  %4 = load i32, ptr %high.addr, align 4, !dbg !7101
  %conv = zext i32 %4 to i64, !dbg !7102
  %shl = shl i64 %conv, 32, !dbg !7103
  %5 = load i32, ptr %low.addr, align 4, !dbg !7104
  %conv1 = zext i32 %5 to i64, !dbg !7104
  %or = or i64 %shl, %conv1, !dbg !7105
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #14, !dbg !7106
  br label %if.end, !dbg !7106

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !7107
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #8 align 16 !dbg !7108 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !7110, metadata !DIExpression()), !dbg !7113
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !7111, metadata !DIExpression()), !dbg !7114
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !7112, metadata !DIExpression()), !dbg !7115
  %0 = load i32, ptr %msr.addr, align 4, !dbg !7116
  %1 = load i32, ptr %low.addr, align 4, !dbg !7117
  %2 = load i32, ptr %high.addr, align 4, !dbg !7118
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #12, !dbg !7119, !srcloc !7120
  ret void, !dbg !7121
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7122 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__instrument_read_write_bitop(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !7123 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7127, metadata !DIExpression()), !dbg !7129
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7128, metadata !DIExpression()), !dbg !7130
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7131
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7134
  %div = sdiv i64 %1, 64, !dbg !7134
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7135
  call void @instrument_read_write(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !7136
  ret void, !dbg !7137
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch___test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !7138 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7141, metadata !DIExpression()), !dbg !7144
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7142, metadata !DIExpression()), !dbg !7145
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !7146
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7143, metadata !DIExpression()), !dbg !7147
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7148
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7149
  %2 = call i8 asm sideeffect " btrq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !7150, !srcloc !7151
  %3 = icmp ult i8 %2, 2, !dbg !7150
  call void @llvm.assume(i1 %3), !dbg !7150
  store i8 %2, ptr %oldbit, align 1, !dbg !7150
  %4 = load i8, ptr %oldbit, align 1, !dbg !7152, !range !7058, !noundef !694
  %tobool = trunc i8 %4 to i1, !dbg !7152
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !7153
  ret i1 %tobool, !dbg !7154
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_read_write(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !7155 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7163, metadata !DIExpression()), !dbg !7165
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7164, metadata !DIExpression()), !dbg !7166
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7167
  %1 = load i64, ptr %size.addr, align 8, !dbg !7168
  %conv = trunc i64 %1 to i32, !dbg !7168
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !7169
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7170
  %3 = load i64, ptr %size.addr, align 8, !dbg !7170
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 3) #14, !dbg !7170
  ret void, !dbg !7171
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !7172 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7177, metadata !DIExpression()), !dbg !7179
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7178, metadata !DIExpression()), !dbg !7180
  ret i1 true, !dbg !7181
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !7182 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7187, metadata !DIExpression()), !dbg !7190
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7188, metadata !DIExpression()), !dbg !7191
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7189, metadata !DIExpression()), !dbg !7192
  ret void, !dbg !7193
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #8 align 16 !dbg !7194 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !7198, metadata !DIExpression()), !dbg !7199
  %0 = load i64, ptr %word.addr, align 8, !dbg !7200
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #15, !dbg !7201, !srcloc !7202
  store i64 %1, ptr %word.addr, align 8, !dbg !7201
  %2 = load i64, ptr %word.addr, align 8, !dbg !7203
  ret i64 %2, !dbg !7204
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7205 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !7206 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7208, metadata !DIExpression()), !dbg !7210
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7209, metadata !DIExpression()), !dbg !7211
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7212
  %1 = load i64, ptr %size.addr, align 8, !dbg !7213
  %conv = trunc i64 %1 to i32, !dbg !7213
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !7214
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7215
  %3 = load i64, ptr %size.addr, align 8, !dbg !7215
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !7215
  ret void, !dbg !7216
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !7217 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7219, metadata !DIExpression()), !dbg !7221
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7220, metadata !DIExpression()), !dbg !7222
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7223
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7224
  br i1 %1, label %cond.true, label %cond.false, !dbg !7224

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7225
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7226
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !7227
  %conv = zext i1 %call to i32, !dbg !7227
  br label %cond.end, !dbg !7224

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7228
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7229
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !7230
  %conv2 = zext i1 %call1 to i32, !dbg !7230
  br label %cond.end, !dbg !7224

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7224
  %tobool = icmp ne i32 %cond, 0, !dbg !7224
  ret i1 %tobool, !dbg !7231
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !7232 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7234, metadata !DIExpression()), !dbg !7236
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7235, metadata !DIExpression()), !dbg !7237
  ret i1 true, !dbg !7238
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !7239 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7243, metadata !DIExpression()), !dbg !7245
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7244, metadata !DIExpression()), !dbg !7246
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7247
  %and = and i64 %0, 63, !dbg !7248
  %shl = shl i64 1, %and, !dbg !7249
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7250
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7251
  %shr = ashr i64 %2, 6, !dbg !7252
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7250
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7250
  %and1 = and i64 %shl, %3, !dbg !7253
  %cmp = icmp ne i64 %and1, 0, !dbg !7254
  ret i1 %cmp, !dbg !7255
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !7256 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7258, metadata !DIExpression()), !dbg !7261
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7259, metadata !DIExpression()), !dbg !7262
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !7263
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7260, metadata !DIExpression()), !dbg !7264
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7265
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7266
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !7267, !srcloc !7268
  %3 = icmp ult i8 %2, 2, !dbg !7267
  call void @llvm.assume(i1 %3), !dbg !7267
  store i8 %2, ptr %oldbit, align 1, !dbg !7267
  %4 = load i8, ptr %oldbit, align 1, !dbg !7269, !range !7058, !noundef !694
  %tobool = trunc i8 %4 to i1, !dbg !7269
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !7270
  ret i1 %tobool, !dbg !7271
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @zhaoxin_pmu_enable_fixed(ptr noundef %hwc) #6 align 16 !dbg !7272 {
entry:
  %hwc.addr = alloca ptr, align 8
  %idx = alloca i32, align 4
  %ctrl_val = alloca i64, align 8
  %bits = alloca i64, align 8
  %mask = alloca i64, align 8
  store ptr %hwc, ptr %hwc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hwc.addr, metadata !7276, metadata !DIExpression()), !dbg !7281
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #12, !dbg !7282
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !7277, metadata !DIExpression()), !dbg !7283
  %0 = load ptr, ptr %hwc.addr, align 8, !dbg !7284
  %1 = getelementptr inbounds %struct.hw_perf_event, ptr %0, i32 0, i32 0, !dbg !7285
  %idx1 = getelementptr inbounds %struct.anon.35, ptr %1, i32 0, i32 5, !dbg !7285
  %2 = load i32, ptr %idx1, align 4, !dbg !7285
  %sub = sub i32 %2, 32, !dbg !7286
  store i32 %sub, ptr %idx, align 4, !dbg !7283
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrl_val) #12, !dbg !7287
  call void @llvm.dbg.declare(metadata ptr %ctrl_val, metadata !7278, metadata !DIExpression()), !dbg !7288
  call void @llvm.lifetime.start.p0(i64 8, ptr %bits) #12, !dbg !7287
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !7279, metadata !DIExpression()), !dbg !7289
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !7287
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7280, metadata !DIExpression()), !dbg !7290
  store i64 8, ptr %bits, align 8, !dbg !7291
  %3 = load ptr, ptr %hwc.addr, align 8, !dbg !7292
  %4 = getelementptr inbounds %struct.hw_perf_event, ptr %3, i32 0, i32 0, !dbg !7294
  %config = getelementptr inbounds %struct.anon.35, ptr %4, i32 0, i32 0, !dbg !7294
  %5 = load i64, ptr %config, align 8, !dbg !7294
  %and = and i64 %5, 65536, !dbg !7295
  %tobool = icmp ne i64 %and, 0, !dbg !7295
  br i1 %tobool, label %if.then, label %if.end, !dbg !7296

if.then:                                          ; preds = %entry
  %6 = load i64, ptr %bits, align 8, !dbg !7297
  %or = or i64 %6, 2, !dbg !7297
  store i64 %or, ptr %bits, align 8, !dbg !7297
  br label %if.end, !dbg !7298

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %hwc.addr, align 8, !dbg !7299
  %8 = getelementptr inbounds %struct.hw_perf_event, ptr %7, i32 0, i32 0, !dbg !7301
  %config2 = getelementptr inbounds %struct.anon.35, ptr %8, i32 0, i32 0, !dbg !7301
  %9 = load i64, ptr %config2, align 8, !dbg !7301
  %and3 = and i64 %9, 131072, !dbg !7302
  %tobool4 = icmp ne i64 %and3, 0, !dbg !7302
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !7303

if.then5:                                         ; preds = %if.end
  %10 = load i64, ptr %bits, align 8, !dbg !7304
  %or6 = or i64 %10, 1, !dbg !7304
  store i64 %or6, ptr %bits, align 8, !dbg !7304
  br label %if.end7, !dbg !7305

if.end7:                                          ; preds = %if.then5, %if.end
  %11 = load i32, ptr %idx, align 4, !dbg !7306
  %mul = mul i32 %11, 4, !dbg !7307
  %12 = load i64, ptr %bits, align 8, !dbg !7308
  %sh_prom = zext i32 %mul to i64, !dbg !7308
  %shl = shl i64 %12, %sh_prom, !dbg !7308
  store i64 %shl, ptr %bits, align 8, !dbg !7308
  %13 = load i32, ptr %idx, align 4, !dbg !7309
  %mul8 = mul i32 %13, 4, !dbg !7310
  %sh_prom9 = zext i32 %mul8 to i64, !dbg !7311
  %shl10 = shl i64 15, %sh_prom9, !dbg !7311
  store i64 %shl10, ptr %mask, align 8, !dbg !7312
  %14 = load ptr, ptr %hwc.addr, align 8, !dbg !7313
  %15 = getelementptr inbounds %struct.hw_perf_event, ptr %14, i32 0, i32 0, !dbg !7313
  %config_base = getelementptr inbounds %struct.anon.35, ptr %15, i32 0, i32 2, !dbg !7313
  %16 = load i64, ptr %config_base, align 8, !dbg !7313
  %conv = trunc i64 %16 to i32, !dbg !7313
  %call = call i64 @native_read_msr(i32 noundef %conv) #14, !dbg !7313
  store i64 %call, ptr %ctrl_val, align 8, !dbg !7313
  %17 = load i64, ptr %mask, align 8, !dbg !7314
  %not = xor i64 %17, -1, !dbg !7315
  %18 = load i64, ptr %ctrl_val, align 8, !dbg !7316
  %and11 = and i64 %18, %not, !dbg !7316
  store i64 %and11, ptr %ctrl_val, align 8, !dbg !7316
  %19 = load i64, ptr %bits, align 8, !dbg !7317
  %20 = load i64, ptr %ctrl_val, align 8, !dbg !7318
  %or12 = or i64 %20, %19, !dbg !7318
  store i64 %or12, ptr %ctrl_val, align 8, !dbg !7318
  %21 = load ptr, ptr %hwc.addr, align 8, !dbg !7319
  %22 = getelementptr inbounds %struct.hw_perf_event, ptr %21, i32 0, i32 0, !dbg !7320
  %config_base13 = getelementptr inbounds %struct.anon.35, ptr %22, i32 0, i32 2, !dbg !7320
  %23 = load i64, ptr %config_base13, align 8, !dbg !7320
  %conv14 = trunc i64 %23 to i32, !dbg !7319
  %24 = load i64, ptr %ctrl_val, align 8, !dbg !7321
  call void @wrmsrl(i32 noundef %conv14, i64 noundef %24) #14, !dbg !7322
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !7323
  call void @llvm.lifetime.end.p0(i64 8, ptr %bits) #12, !dbg !7323
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrl_val) #12, !dbg !7323
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #12, !dbg !7323
  ret void, !dbg !7323
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__x86_pmu_enable_event(ptr noundef %hwc, i64 noundef %enable_mask) #4 align 16 !dbg !7324 {
entry:
  %hwc.addr = alloca ptr, align 8
  %enable_mask.addr = alloca i64, align 8
  %disable_mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %pscr_ret__ = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  store ptr %hwc, ptr %hwc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hwc.addr, metadata !7328, metadata !DIExpression()), !dbg !7338
  store i64 %enable_mask, ptr %enable_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %enable_mask.addr, metadata !7329, metadata !DIExpression()), !dbg !7339
  call void @llvm.lifetime.start.p0(i64 8, ptr %disable_mask) #12, !dbg !7340
  call void @llvm.dbg.declare(metadata ptr %disable_mask, metadata !7330, metadata !DIExpression()), !dbg !7341
  call void @__this_cpu_preempt_check(ptr noundef @.str.7) #14, !dbg !7342
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #12, !dbg !7343
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !7331, metadata !DIExpression()), !dbg !7343
  br label %do.body, !dbg !7343

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !7344
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7334, metadata !DIExpression()), !dbg !7344
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7344
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !7344
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !7343
  br label %do.cond, !dbg !7344

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7344

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #12, !dbg !7345
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !7336, metadata !DIExpression()), !dbg !7345
  %1 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) getelementptr inbounds (%struct.cpu_hw_events, ptr @cpu_hw_events, i32 0, i32 51)) #15, !dbg !7345, !srcloc !7346
  store i64 %1, ptr %pfo_val__, align 8, !dbg !7345
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !7345
  store i64 %2, ptr %tmp1, align 8, !dbg !7345
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #12, !dbg !7343
  %3 = load i64, ptr %tmp1, align 8, !dbg !7345
  store i64 %3, ptr %pscr_ret__, align 8, !dbg !7343
  %4 = load i64, ptr %pscr_ret__, align 8, !dbg !7343
  store i64 %4, ptr %tmp2, align 8, !dbg !7343
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #12, !dbg !7342
  %5 = load i64, ptr %tmp2, align 8, !dbg !7343
  store i64 %5, ptr %tmp, align 8, !dbg !7342
  %6 = load i64, ptr %tmp, align 8, !dbg !7342
  store i64 %6, ptr %disable_mask, align 8, !dbg !7341
  %7 = load ptr, ptr %hwc.addr, align 8, !dbg !7347
  %8 = getelementptr inbounds %struct.hw_perf_event, ptr %7, i32 0, i32 0, !dbg !7349
  %extra_reg = getelementptr inbounds %struct.anon.35, ptr %8, i32 0, i32 8, !dbg !7349
  %reg = getelementptr inbounds %struct.hw_perf_event_extra, ptr %extra_reg, i32 0, i32 1, !dbg !7350
  %9 = load i32, ptr %reg, align 8, !dbg !7350
  %tobool = icmp ne i32 %9, 0, !dbg !7347
  br i1 %tobool, label %if.then, label %if.end, !dbg !7351

if.then:                                          ; preds = %do.end
  %10 = load ptr, ptr %hwc.addr, align 8, !dbg !7352
  %11 = getelementptr inbounds %struct.hw_perf_event, ptr %10, i32 0, i32 0, !dbg !7353
  %extra_reg3 = getelementptr inbounds %struct.anon.35, ptr %11, i32 0, i32 8, !dbg !7353
  %reg4 = getelementptr inbounds %struct.hw_perf_event_extra, ptr %extra_reg3, i32 0, i32 1, !dbg !7354
  %12 = load i32, ptr %reg4, align 8, !dbg !7354
  %13 = load ptr, ptr %hwc.addr, align 8, !dbg !7355
  %14 = getelementptr inbounds %struct.hw_perf_event, ptr %13, i32 0, i32 0, !dbg !7356
  %extra_reg5 = getelementptr inbounds %struct.anon.35, ptr %14, i32 0, i32 8, !dbg !7356
  %config = getelementptr inbounds %struct.hw_perf_event_extra, ptr %extra_reg5, i32 0, i32 0, !dbg !7357
  %15 = load i64, ptr %config, align 8, !dbg !7357
  call void @wrmsrl(i32 noundef %12, i64 noundef %15) #14, !dbg !7358
  br label %if.end, !dbg !7358

if.end:                                           ; preds = %if.then, %do.end
  %16 = load ptr, ptr %hwc.addr, align 8, !dbg !7359
  %call = call zeroext i1 @is_counter_pair(ptr noundef %16) #14, !dbg !7361
  br i1 %call, label %if.then6, label %if.end8, !dbg !7362

if.then6:                                         ; preds = %if.end
  %17 = load ptr, ptr %hwc.addr, align 8, !dbg !7363
  %18 = getelementptr inbounds %struct.hw_perf_event, ptr %17, i32 0, i32 0, !dbg !7364
  %idx = getelementptr inbounds %struct.anon.35, ptr %18, i32 0, i32 5, !dbg !7364
  %19 = load i32, ptr %idx, align 4, !dbg !7364
  %add = add i32 %19, 1, !dbg !7365
  %call7 = call i32 @x86_pmu_config_addr(i32 noundef %add) #14, !dbg !7366
  %20 = load i64, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 88), align 8, !dbg !7367
  call void @wrmsrl(i32 noundef %call7, i64 noundef %20) #14, !dbg !7368
  br label %if.end8, !dbg !7368

if.end8:                                          ; preds = %if.then6, %if.end
  %21 = load ptr, ptr %hwc.addr, align 8, !dbg !7369
  %22 = getelementptr inbounds %struct.hw_perf_event, ptr %21, i32 0, i32 0, !dbg !7370
  %config_base = getelementptr inbounds %struct.anon.35, ptr %22, i32 0, i32 2, !dbg !7370
  %23 = load i64, ptr %config_base, align 8, !dbg !7370
  %conv = trunc i64 %23 to i32, !dbg !7369
  %24 = load ptr, ptr %hwc.addr, align 8, !dbg !7371
  %25 = getelementptr inbounds %struct.hw_perf_event, ptr %24, i32 0, i32 0, !dbg !7372
  %config9 = getelementptr inbounds %struct.anon.35, ptr %25, i32 0, i32 0, !dbg !7372
  %26 = load i64, ptr %config9, align 8, !dbg !7372
  %27 = load i64, ptr %enable_mask.addr, align 8, !dbg !7373
  %or = or i64 %26, %27, !dbg !7374
  %28 = load i64, ptr %disable_mask, align 8, !dbg !7375
  %not = xor i64 %28, -1, !dbg !7376
  %and = and i64 %or, %not, !dbg !7377
  call void @wrmsrl(i32 noundef %conv, i64 noundef %and) #14, !dbg !7378
  call void @llvm.lifetime.end.p0(i64 8, ptr %disable_mask) #12, !dbg !7379
  ret void, !dbg !7379
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #8 align 16 !dbg !7380 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !7385, metadata !DIExpression()), !dbg !7386
  ret void, !dbg !7387
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_counter_pair(ptr noundef %hwc) #4 align 16 !dbg !7388 {
entry:
  %hwc.addr = alloca ptr, align 8
  store ptr %hwc, ptr %hwc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hwc.addr, metadata !7392, metadata !DIExpression()), !dbg !7393
  %0 = load ptr, ptr %hwc.addr, align 8, !dbg !7394
  %1 = getelementptr inbounds %struct.hw_perf_event, ptr %0, i32 0, i32 0, !dbg !7395
  %flags = getelementptr inbounds %struct.anon.35, ptr %1, i32 0, i32 7, !dbg !7395
  %2 = load i32, ptr %flags, align 4, !dbg !7395
  %and = and i32 %2, 4096, !dbg !7396
  %tobool = icmp ne i32 %and, 0, !dbg !7394
  ret i1 %tobool, !dbg !7397
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @x86_pmu_config_addr(i32 noundef %index) #4 align 16 !dbg !7398 {
entry:
  %index.addr = alloca i32, align 4
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !7402, metadata !DIExpression()), !dbg !7403
  %0 = load i32, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 16), align 8, !dbg !7404
  %1 = load ptr, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 18), align 8, !dbg !7405
  %tobool = icmp ne ptr %1, null, !dbg !7406
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !7406

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.x86_pmu, ptr @x86_pmu, i32 0, i32 18), align 8, !dbg !7407
  %3 = load i32, ptr %index.addr, align 4, !dbg !7408
  %call = call i32 %2(i32 noundef %3, i1 noundef zeroext true) #14, !dbg !7409
  br label %cond.end, !dbg !7406

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %index.addr, align 4, !dbg !7410
  br label %cond.end, !dbg !7406

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %4, %cond.false ], !dbg !7406
  %add = add i32 %0, %cond, !dbg !7411
  ret i32 %add, !dbg !7412
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @zhaoxin_pmu_disable_fixed(ptr noundef %hwc) #6 align 16 !dbg !7413 {
entry:
  %hwc.addr = alloca ptr, align 8
  %idx = alloca i32, align 4
  %ctrl_val = alloca i64, align 8
  %mask = alloca i64, align 8
  store ptr %hwc, ptr %hwc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hwc.addr, metadata !7415, metadata !DIExpression()), !dbg !7419
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #12, !dbg !7420
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !7416, metadata !DIExpression()), !dbg !7421
  %0 = load ptr, ptr %hwc.addr, align 8, !dbg !7422
  %1 = getelementptr inbounds %struct.hw_perf_event, ptr %0, i32 0, i32 0, !dbg !7423
  %idx1 = getelementptr inbounds %struct.anon.35, ptr %1, i32 0, i32 5, !dbg !7423
  %2 = load i32, ptr %idx1, align 4, !dbg !7423
  %sub = sub i32 %2, 32, !dbg !7424
  store i32 %sub, ptr %idx, align 4, !dbg !7421
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrl_val) #12, !dbg !7425
  call void @llvm.dbg.declare(metadata ptr %ctrl_val, metadata !7417, metadata !DIExpression()), !dbg !7426
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !7425
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7418, metadata !DIExpression()), !dbg !7427
  %3 = load i32, ptr %idx, align 4, !dbg !7428
  %mul = mul i32 %3, 4, !dbg !7429
  %sh_prom = zext i32 %mul to i64, !dbg !7430
  %shl = shl i64 15, %sh_prom, !dbg !7430
  store i64 %shl, ptr %mask, align 8, !dbg !7431
  %4 = load ptr, ptr %hwc.addr, align 8, !dbg !7432
  %5 = getelementptr inbounds %struct.hw_perf_event, ptr %4, i32 0, i32 0, !dbg !7432
  %config_base = getelementptr inbounds %struct.anon.35, ptr %5, i32 0, i32 2, !dbg !7432
  %6 = load i64, ptr %config_base, align 8, !dbg !7432
  %conv = trunc i64 %6 to i32, !dbg !7432
  %call = call i64 @native_read_msr(i32 noundef %conv) #14, !dbg !7432
  store i64 %call, ptr %ctrl_val, align 8, !dbg !7432
  %7 = load i64, ptr %mask, align 8, !dbg !7433
  %not = xor i64 %7, -1, !dbg !7434
  %8 = load i64, ptr %ctrl_val, align 8, !dbg !7435
  %and = and i64 %8, %not, !dbg !7435
  store i64 %and, ptr %ctrl_val, align 8, !dbg !7435
  %9 = load ptr, ptr %hwc.addr, align 8, !dbg !7436
  %10 = getelementptr inbounds %struct.hw_perf_event, ptr %9, i32 0, i32 0, !dbg !7437
  %config_base2 = getelementptr inbounds %struct.anon.35, ptr %10, i32 0, i32 2, !dbg !7437
  %11 = load i64, ptr %config_base2, align 8, !dbg !7437
  %conv3 = trunc i64 %11 to i32, !dbg !7436
  %12 = load i64, ptr %ctrl_val, align 8, !dbg !7438
  call void @wrmsrl(i32 noundef %conv3, i64 noundef %12) #14, !dbg !7439
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !7440
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrl_val) #12, !dbg !7440
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #12, !dbg !7440
  ret void, !dbg !7440
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @x86_pmu_disable_event(ptr noundef %event) #4 align 16 !dbg !7441 {
entry:
  %event.addr = alloca ptr, align 8
  %disable_mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %pscr_ret__ = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %hwc = alloca ptr, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !7443, metadata !DIExpression()), !dbg !7453
  call void @llvm.lifetime.start.p0(i64 8, ptr %disable_mask) #12, !dbg !7454
  call void @llvm.dbg.declare(metadata ptr %disable_mask, metadata !7444, metadata !DIExpression()), !dbg !7455
  call void @__this_cpu_preempt_check(ptr noundef @.str.7) #14, !dbg !7456
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #12, !dbg !7457
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !7445, metadata !DIExpression()), !dbg !7457
  br label %do.body, !dbg !7457

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !7458
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7448, metadata !DIExpression()), !dbg !7458
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7458
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !7458
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !7457
  br label %do.cond, !dbg !7458

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7458

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #12, !dbg !7459
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !7450, metadata !DIExpression()), !dbg !7459
  %1 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) getelementptr inbounds (%struct.cpu_hw_events, ptr @cpu_hw_events, i32 0, i32 51)) #15, !dbg !7459, !srcloc !7460
  store i64 %1, ptr %pfo_val__, align 8, !dbg !7459
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !7459
  store i64 %2, ptr %tmp1, align 8, !dbg !7459
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #12, !dbg !7457
  %3 = load i64, ptr %tmp1, align 8, !dbg !7459
  store i64 %3, ptr %pscr_ret__, align 8, !dbg !7457
  %4 = load i64, ptr %pscr_ret__, align 8, !dbg !7457
  store i64 %4, ptr %tmp2, align 8, !dbg !7457
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #12, !dbg !7456
  %5 = load i64, ptr %tmp2, align 8, !dbg !7457
  store i64 %5, ptr %tmp, align 8, !dbg !7456
  %6 = load i64, ptr %tmp, align 8, !dbg !7456
  store i64 %6, ptr %disable_mask, align 8, !dbg !7455
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwc) #12, !dbg !7461
  call void @llvm.dbg.declare(metadata ptr %hwc, metadata !7452, metadata !DIExpression()), !dbg !7462
  %7 = load ptr, ptr %event.addr, align 8, !dbg !7463
  %hw = getelementptr inbounds %struct.perf_event, ptr %7, i32 0, i32 26, !dbg !7464
  store ptr %hw, ptr %hwc, align 8, !dbg !7462
  %8 = load ptr, ptr %hwc, align 8, !dbg !7465
  %9 = getelementptr inbounds %struct.hw_perf_event, ptr %8, i32 0, i32 0, !dbg !7466
  %config_base = getelementptr inbounds %struct.anon.35, ptr %9, i32 0, i32 2, !dbg !7466
  %10 = load i64, ptr %config_base, align 8, !dbg !7466
  %conv = trunc i64 %10 to i32, !dbg !7465
  %11 = load ptr, ptr %hwc, align 8, !dbg !7467
  %12 = getelementptr inbounds %struct.hw_perf_event, ptr %11, i32 0, i32 0, !dbg !7468
  %config = getelementptr inbounds %struct.anon.35, ptr %12, i32 0, i32 0, !dbg !7468
  %13 = load i64, ptr %config, align 8, !dbg !7468
  %14 = load i64, ptr %disable_mask, align 8, !dbg !7469
  %not = xor i64 %14, -1, !dbg !7470
  %and = and i64 %13, %not, !dbg !7471
  call void @wrmsrl(i32 noundef %conv, i64 noundef %and) #14, !dbg !7472
  %15 = load ptr, ptr %hwc, align 8, !dbg !7473
  %call = call zeroext i1 @is_counter_pair(ptr noundef %15) #14, !dbg !7475
  br i1 %call, label %if.then, label %if.end, !dbg !7476

if.then:                                          ; preds = %do.end
  %16 = load ptr, ptr %hwc, align 8, !dbg !7477
  %17 = getelementptr inbounds %struct.hw_perf_event, ptr %16, i32 0, i32 0, !dbg !7478
  %idx = getelementptr inbounds %struct.anon.35, ptr %17, i32 0, i32 5, !dbg !7478
  %18 = load i32, ptr %idx, align 4, !dbg !7478
  %add = add i32 %18, 1, !dbg !7479
  %call3 = call i32 @x86_pmu_config_addr(i32 noundef %add) #14, !dbg !7480
  call void @wrmsrl(i32 noundef %call3, i64 noundef 0) #14, !dbg !7481
  br label %if.end, !dbg !7481

if.end:                                           ; preds = %if.then, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwc) #12, !dbg !7482
  call void @llvm.lifetime.end.p0(i64 8, ptr %disable_mask) #12, !dbg !7482
  ret void, !dbg !7482
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @event_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #6 align 16 !dbg !7483 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7485, metadata !DIExpression()), !dbg !7488
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7486, metadata !DIExpression()), !dbg !7488
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7487, metadata !DIExpression()), !dbg !7488
  br label %do.body, !dbg !7488

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7489

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7488
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.9) #14, !dbg !7488
  %conv = sext i32 %call to i64, !dbg !7488
  ret i64 %conv, !dbg !7488
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7491 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @umask_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #6 align 16 !dbg !7495 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7497, metadata !DIExpression()), !dbg !7500
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7498, metadata !DIExpression()), !dbg !7500
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7499, metadata !DIExpression()), !dbg !7500
  br label %do.body, !dbg !7500

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7501

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7500
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.11) #14, !dbg !7500
  %conv = sext i32 %call to i64, !dbg !7500
  ret i64 %conv, !dbg !7500
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @edge_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #6 align 16 !dbg !7503 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7505, metadata !DIExpression()), !dbg !7508
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7506, metadata !DIExpression()), !dbg !7508
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7507, metadata !DIExpression()), !dbg !7508
  br label %do.body, !dbg !7508

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7509

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7508
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.13) #14, !dbg !7508
  %conv = sext i32 %call to i64, !dbg !7508
  ret i64 %conv, !dbg !7508
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @inv_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #6 align 16 !dbg !7511 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7513, metadata !DIExpression()), !dbg !7516
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7514, metadata !DIExpression()), !dbg !7516
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7515, metadata !DIExpression()), !dbg !7516
  br label %do.body, !dbg !7516

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7517

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7516
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15) #14, !dbg !7516
  %conv = sext i32 %call to i64, !dbg !7516
  ret i64 %conv, !dbg !7516
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cmask_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #6 align 16 !dbg !7519 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7521, metadata !DIExpression()), !dbg !7524
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7522, metadata !DIExpression()), !dbg !7524
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !7523, metadata !DIExpression()), !dbg !7524
  br label %do.body, !dbg !7524

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7525

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %page.addr, align 8, !dbg !7524
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.17) #14, !dbg !7524
  %conv = sext i32 %call to i64, !dbg !7524
  ret i64 %conv, !dbg !7524
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7527 dso_local i64 @x86_event_sysfs_show(ptr noundef, i64 noundef, i64 noundef) #7

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { cold noredzone }
attributes #14 = { noredzone }
attributes #15 = { nounwind memory(read) }

!llvm.dbg.cu = !{!18}
!llvm.module.flags = !{!6305, !6306, !6307, !6308, !6309, !6310, !6311, !6312}
!llvm.ident = !{!6313}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 514, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/events/zhaoxin/core.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f17348bf69389fd3f42668ea9bfa6341")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 33)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 530, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 29)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__quirk", scope: !14, file: !2, line: 540, type: !5986, isLocal: true, isDefinition: true)
!14 = distinct !DISubprogram(name: "zhaoxin_pmu_init", scope: !2, file: !2, line: 505, type: !15, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6264)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/events/zhaoxin/.core.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/events/zhaoxin/core\22 -D KBUILD_BASENAME=\22core\22 -D KBUILD_MODNAME=\22core\22 -D __KBUILD_MODNAME=kmod_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/events/zhaoxin/core.ll arch/x86/events/zhaoxin/core.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !330, globals: !5900, splitDebugInlining: false, nameTableKind: None)
!19 = !{!20, !35, !42, !47, !52, !146, !152, !168, !176, !183, !191, !197, !204, !210, !216, !223, !231, !238, !247, !252, !257, !263, !272, !278, !283, !311}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_hw_id", file: !21, line: 60, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!24 = !DIEnumerator(name: "PERF_COUNT_HW_CPU_CYCLES", value: 0)
!25 = !DIEnumerator(name: "PERF_COUNT_HW_INSTRUCTIONS", value: 1)
!26 = !DIEnumerator(name: "PERF_COUNT_HW_CACHE_REFERENCES", value: 2)
!27 = !DIEnumerator(name: "PERF_COUNT_HW_CACHE_MISSES", value: 3)
!28 = !DIEnumerator(name: "PERF_COUNT_HW_BRANCH_INSTRUCTIONS", value: 4)
!29 = !DIEnumerator(name: "PERF_COUNT_HW_BRANCH_MISSES", value: 5)
!30 = !DIEnumerator(name: "PERF_COUNT_HW_BUS_CYCLES", value: 6)
!31 = !DIEnumerator(name: "PERF_COUNT_HW_STALLED_CYCLES_FRONTEND", value: 7)
!32 = !DIEnumerator(name: "PERF_COUNT_HW_STALLED_CYCLES_BACKEND", value: 8)
!33 = !DIEnumerator(name: "PERF_COUNT_HW_REF_CPU_CYCLES", value: 9)
!34 = !DIEnumerator(name: "PERF_COUNT_HW_MAX", value: 10)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !36, line: 312, baseType: !22, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!39 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!40 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!41 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !43, line: 2052, baseType: !22, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!44 = !{!45, !46}
!45 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!46 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !48, line: 65, baseType: !22, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!49 = !{!50, !51}
!50 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!51 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !54, file: !53, line: 147, baseType: !22, size: 32, elements: !143)
!53 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !53, line: 135, size: 512, elements: !55)
!55 = !{!56, !59, !61, !62, !66, !67, !83, !141, !142}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !54, file: !53, line: 136, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !54, file: !53, line: 137, baseType: !60, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !54, file: !53, line: 138, baseType: !17, size: 32, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !54, file: !53, line: 139, baseType: !63, size: 16, offset: 160)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !64, line: 24, baseType: !65)
!64 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!65 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !54, file: !53, line: 150, baseType: !52, size: 32, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !54, file: !53, line: 151, baseType: !68, size: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !53, line: 64, baseType: !70)
!70 = !DISubroutineType(types: !71)
!71 = !{!17, !72, !17, !60, !73, !79}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 61, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !76, line: 72, baseType: !77)
!76 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !76, line: 16, baseType: !78)
!78 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !64, line: 52, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !76, line: 88, baseType: !82)
!82 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !54, file: !53, line: 152, baseType: !84, size: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !53, line: 117, size: 256, elements: !86)
!86 = !{!87, !92}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !85, file: !53, line: 118, baseType: !88, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !64, line: 174, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 172, size: 32, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !89, file: !64, line: 173, baseType: !17, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !85, file: !53, line: 119, baseType: !93, size: 192, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !94, line: 41, baseType: !95)
!94 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !94, line: 37, size: 192, elements: !96)
!96 = !{!97, !135}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !95, file: !94, line: 38, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !99, line: 29, baseType: !100)
!99 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !99, line: 17, size: 32, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !99, line: 18, baseType: !103, size: 32)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !100, file: !99, line: 18, size: 32, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !103, file: !99, line: 19, baseType: !106, size: 32)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !107, line: 14, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !106, file: !107, line: 15, baseType: !110, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !111, line: 44, baseType: !112)
!111 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !111, line: 14, size: 32, elements: !113)
!113 = !{!114}
!114 = !DIDerivedType(tag: DW_TAG_member, scope: !112, file: !111, line: 15, baseType: !115, size: 32)
!115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !112, file: !111, line: 15, size: 32, elements: !116)
!116 = !{!117, !118, !128}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !115, file: !111, line: 16, baseType: !88, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !111, line: 24, baseType: !119, size: 16)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !115, file: !111, line: 24, size: 16, elements: !120)
!120 = !{!121, !127}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !119, file: !111, line: 25, baseType: !122, size: 8)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !123, line: 17, baseType: !124)
!123 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !125, line: 21, baseType: !126)
!125 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!126 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !119, file: !111, line: 26, baseType: !122, size: 8, offset: 8)
!128 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !111, line: 28, baseType: !129, size: 32)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !115, file: !111, line: 28, size: 32, elements: !130)
!130 = !{!131, !134}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !129, file: !111, line: 29, baseType: !132, size: 16)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !123, line: 19, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !125, line: 24, baseType: !65)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !129, file: !111, line: 30, baseType: !132, size: 16, offset: 16)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !95, file: !94, line: 39, baseType: !136, size: 128, offset: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !64, line: 190, size: 128, elements: !137)
!137 = !{!138, !140}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !136, file: !64, line: 191, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !136, file: !64, line: 191, baseType: !139, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !54, file: !53, line: 153, baseType: !60, size: 64, offset: 384)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !54, file: !53, line: 154, baseType: !60, size: 64, offset: 448)
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!145 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !147, line: 16, baseType: !22, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "TT_NONE", value: 0)
!150 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!151 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !153, line: 1325, baseType: !22, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167}
!155 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!156 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!157 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!158 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!159 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!160 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!161 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!162 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!163 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!164 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!165 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!166 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!167 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !169, line: 68, baseType: !22, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!170 = !{!171, !172, !173, !174, !175}
!171 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!172 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!173 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!174 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!175 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !177, line: 51, baseType: !22, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!178 = !{!179, !180, !181, !182}
!179 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!180 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!181 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!182 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !184, line: 9, baseType: !22, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!185 = !{!186, !187, !188, !189, !190}
!186 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!187 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!188 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!189 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!190 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !192, line: 54, baseType: !22, size: 32, elements: !193)
!192 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!193 = !{!194, !195, !196}
!194 = !DIEnumerator(name: "USRQUOTA", value: 0)
!195 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!196 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !198, line: 15, baseType: !22, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!199 = !{!200, !201, !202, !203}
!200 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!201 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!202 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!203 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !205, line: 26, baseType: !22, size: 32, elements: !206)
!205 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!206 = !{!207, !208, !209}
!207 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!208 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!209 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !211, line: 45, baseType: !22, size: 32, elements: !212)
!211 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!212 = !{!213, !214, !215}
!213 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!214 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!215 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !217, line: 487, baseType: !22, size: 32, elements: !218)
!217 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!218 = !{!219, !220, !221, !222}
!219 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!220 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!221 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!222 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !224, line: 620, baseType: !22, size: 32, elements: !225)
!224 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!225 = !{!226, !227, !228, !229, !230}
!226 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!227 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!228 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!229 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!230 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !224, line: 597, baseType: !17, size: 32, elements: !232)
!232 = !{!233, !234, !235, !236, !237}
!233 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!234 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!235 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!236 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!237 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !217, line: 547, baseType: !22, size: 32, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246}
!240 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!241 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!242 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!243 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!244 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!245 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!246 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !217, line: 564, baseType: !22, size: 32, elements: !248)
!248 = !{!249, !250, !251}
!249 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!250 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!251 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !217, line: 577, baseType: !22, size: 32, elements: !253)
!253 = !{!254, !255, !256}
!254 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!255 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!256 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!257 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !217, line: 503, baseType: !22, size: 32, elements: !258)
!258 = !{!259, !260, !261, !262}
!259 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!260 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!261 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!262 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !264, line: 593, baseType: !17, size: 32, elements: !265)
!264 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!265 = !{!266, !267, !268, !269, !270, !271}
!266 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!267 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!268 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!269 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!270 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!271 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intel_excl_state_type", file: !273, line: 185, baseType: !22, size: 32, elements: !274)
!273 = !DIFile(filename: "arch/x86/events/zhaoxin/../perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d308637166a859c39d27527fb9d5109")
!274 = !{!275, !276, !277}
!275 = !DIEnumerator(name: "INTEL_EXCL_UNUSED", value: 0)
!276 = !DIEnumerator(name: "INTEL_EXCL_SHARED", value: 1)
!277 = !DIEnumerator(name: "INTEL_EXCL_EXCLUSIVE", value: 2)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !279, line: 10, baseType: !22, size: 32, elements: !280)
!279 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!280 = !{!281, !282}
!281 = !DIEnumerator(name: "false", value: 0)
!282 = !DIEnumerator(name: "true", value: 1)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_sample_format", file: !21, line: 139, baseType: !22, size: 32, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310}
!285 = !DIEnumerator(name: "PERF_SAMPLE_IP", value: 1)
!286 = !DIEnumerator(name: "PERF_SAMPLE_TID", value: 2)
!287 = !DIEnumerator(name: "PERF_SAMPLE_TIME", value: 4)
!288 = !DIEnumerator(name: "PERF_SAMPLE_ADDR", value: 8)
!289 = !DIEnumerator(name: "PERF_SAMPLE_READ", value: 16)
!290 = !DIEnumerator(name: "PERF_SAMPLE_CALLCHAIN", value: 32)
!291 = !DIEnumerator(name: "PERF_SAMPLE_ID", value: 64)
!292 = !DIEnumerator(name: "PERF_SAMPLE_CPU", value: 128)
!293 = !DIEnumerator(name: "PERF_SAMPLE_PERIOD", value: 256)
!294 = !DIEnumerator(name: "PERF_SAMPLE_STREAM_ID", value: 512)
!295 = !DIEnumerator(name: "PERF_SAMPLE_RAW", value: 1024)
!296 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_STACK", value: 2048)
!297 = !DIEnumerator(name: "PERF_SAMPLE_REGS_USER", value: 4096)
!298 = !DIEnumerator(name: "PERF_SAMPLE_STACK_USER", value: 8192)
!299 = !DIEnumerator(name: "PERF_SAMPLE_WEIGHT", value: 16384)
!300 = !DIEnumerator(name: "PERF_SAMPLE_DATA_SRC", value: 32768)
!301 = !DIEnumerator(name: "PERF_SAMPLE_IDENTIFIER", value: 65536)
!302 = !DIEnumerator(name: "PERF_SAMPLE_TRANSACTION", value: 131072)
!303 = !DIEnumerator(name: "PERF_SAMPLE_REGS_INTR", value: 262144)
!304 = !DIEnumerator(name: "PERF_SAMPLE_PHYS_ADDR", value: 524288)
!305 = !DIEnumerator(name: "PERF_SAMPLE_AUX", value: 1048576)
!306 = !DIEnumerator(name: "PERF_SAMPLE_CGROUP", value: 2097152)
!307 = !DIEnumerator(name: "PERF_SAMPLE_DATA_PAGE_SIZE", value: 4194304)
!308 = !DIEnumerator(name: "PERF_SAMPLE_CODE_PAGE_SIZE", value: 8388608)
!309 = !DIEnumerator(name: "PERF_SAMPLE_WEIGHT_STRUCT", value: 16777216)
!310 = !DIEnumerator(name: "PERF_SAMPLE_MAX", value: 33554432)
!311 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !273, line: 75, baseType: !22, size: 32, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!313 = !DIEnumerator(name: "PERF_X86_EVENT_PEBS_LDLAT", value: 1)
!314 = !DIEnumerator(name: "PERF_X86_EVENT_PEBS_ST", value: 2)
!315 = !DIEnumerator(name: "PERF_X86_EVENT_PEBS_ST_HSW", value: 4)
!316 = !DIEnumerator(name: "PERF_X86_EVENT_PEBS_LD_HSW", value: 8)
!317 = !DIEnumerator(name: "PERF_X86_EVENT_PEBS_NA_HSW", value: 16)
!318 = !DIEnumerator(name: "PERF_X86_EVENT_EXCL", value: 32)
!319 = !DIEnumerator(name: "PERF_X86_EVENT_DYNAMIC", value: 64)
!320 = !DIEnumerator(name: "PERF_X86_EVENT_EXCL_ACCT", value: 256)
!321 = !DIEnumerator(name: "PERF_X86_EVENT_AUTO_RELOAD", value: 512)
!322 = !DIEnumerator(name: "PERF_X86_EVENT_LARGE_PEBS", value: 1024)
!323 = !DIEnumerator(name: "PERF_X86_EVENT_PEBS_VIA_PT", value: 2048)
!324 = !DIEnumerator(name: "PERF_X86_EVENT_PAIR", value: 4096)
!325 = !DIEnumerator(name: "PERF_X86_EVENT_LBR_SELECT", value: 8192)
!326 = !DIEnumerator(name: "PERF_X86_EVENT_TOPDOWN", value: 16384)
!327 = !DIEnumerator(name: "PERF_X86_EVENT_PEBS_STLAT", value: 32768)
!328 = !DIEnumerator(name: "PERF_X86_EVENT_AMD_BRS", value: 65536)
!329 = !DIEnumerator(name: "PERF_X86_EVENT_PEBS_LAT_HYBRID", value: 131072)
!330 = !{!331, !60, !3888, !17, !5896, !4762, !5897, !571, !351, !5898, !78, !5040}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_hw_events", file: !273, line: 231, size: 39552, elements: !333)
!333 = !{!334, !5755, !5756, !5757, !5758, !5759, !5760, !5761, !5762, !5763, !5765, !5767, !5768, !5784, !5785, !5786, !5787, !5804, !5805, !5806, !5807, !5808, !5809, !5810, !5811, !5812, !5813, !5814, !5815, !5816, !5817, !5818, !5819, !5821, !5833, !5834, !5835, !5836, !5837, !5838, !5839, !5840, !5848, !5849, !5857, !5858, !5878, !5879, !5880, !5881, !5890, !5891, !5892, !5893, !5895}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !332, file: !273, line: 235, baseType: !335, size: 4096)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 4096, elements: !433)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !264, line: 671, size: 8512, elements: !338)
!338 = !{!339, !340, !341, !342, !350, !354, !355, !362, !363, !364, !365, !366, !367, !368, !5353, !5354, !5355, !5356, !5362, !5363, !5364, !5365, !5366, !5449, !5450, !5451, !5452, !5543, !5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5572, !5573, !5574, !5575, !5576, !5577, !5588, !5589, !5590, !5591, !5592, !5598, !5604, !5605, !5606, !5607, !5608, !5609, !5610, !5611, !5615, !5734, !5735, !5736, !5739, !5752, !5753, !5754}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !337, file: !264, line: 678, baseType: !136, size: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !337, file: !264, line: 684, baseType: !136, size: 128, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !337, file: !264, line: 685, baseType: !136, size: 128, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !337, file: !264, line: 689, baseType: !343, size: 192, align: 64, offset: 384)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !344, line: 5, size: 192, align: 64, elements: !345)
!344 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!345 = !{!346, !347, !349}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !343, file: !344, line: 6, baseType: !78, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !343, file: !344, line: 7, baseType: !348, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !343, file: !344, line: 8, baseType: !348, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !337, file: !264, line: 690, baseType: !351, size: 64, offset: 576)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !123, line: 23, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !125, line: 31, baseType: !353)
!353 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !337, file: !264, line: 696, baseType: !136, size: 128, offset: 640)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !337, file: !264, line: 698, baseType: !356, size: 128, offset: 768)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !64, line: 198, size: 128, elements: !357)
!357 = !{!358, !360}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !64, line: 199, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !356, file: !64, line: 199, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !337, file: !264, line: 699, baseType: !136, size: 128, offset: 896)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !337, file: !264, line: 700, baseType: !17, size: 32, offset: 1024)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !337, file: !264, line: 703, baseType: !17, size: 32, offset: 1056)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !337, file: !264, line: 705, baseType: !17, size: 32, offset: 1088)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !337, file: !264, line: 707, baseType: !22, size: 32, offset: 1120)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !337, file: !264, line: 708, baseType: !336, size: 64, offset: 1152)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !337, file: !264, line: 714, baseType: !369, size: 64, offset: 1216)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !264, line: 302, size: 2432, elements: !371)
!371 = !{!372, !373, !4776, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5263, !5264, !5265, !5266, !5267, !5271, !5272, !5276, !5280, !5281, !5285, !5289, !5290, !5291, !5295, !5299, !5303, !5304, !5305, !5309, !5310, !5314, !5318, !5319, !5339, !5343, !5344, !5345, !5349}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !370, file: !264, line: 303, baseType: !136, size: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !370, file: !264, line: 305, baseType: !374, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !36, line: 402, size: 9216, align: 512, elements: !376)
!376 = !{!377, !378, !379, !383, !4456, !4482, !4483, !4484, !4485, !4489, !4492, !4493, !4494, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4561, !4563, !4581, !4598, !4599, !4600, !4601, !4610, !4633, !4634, !4637, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4651, !4652, !4737, !4745, !4746, !4747, !4749, !4753, !4754, !4758, !4759, !4760, !4761, !4763, !4764, !4765, !4772, !4773, !4774, !4775}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !375, file: !36, line: 403, baseType: !35, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !375, file: !36, line: 406, baseType: !136, size: 128, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !375, file: !36, line: 409, baseType: !380, size: 448, offset: 192)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 56)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !375, file: !36, line: 417, baseType: !384, size: 768, offset: 640)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !36, line: 45, size: 768, elements: !385)
!385 = !{!386, !4450, !4451, !4452, !4455}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !384, file: !36, line: 46, baseType: !387, size: 512)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !388, line: 64, size: 512, elements: !389)
!388 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!389 = !{!390, !391, !392, !394, !441, !4439, !4440, !4445, !4446, !4447, !4448, !4449}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !387, file: !388, line: 65, baseType: !57, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !387, file: !388, line: 66, baseType: !136, size: 128, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !387, file: !388, line: 67, baseType: !393, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !387, file: !388, line: 68, baseType: !395, size: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !388, line: 168, size: 768, elements: !397)
!397 = !{!398, !399, !400, !401}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !396, file: !388, line: 169, baseType: !136, size: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !396, file: !388, line: 170, baseType: !98, size: 32, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !396, file: !388, line: 171, baseType: !387, size: 512, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !396, file: !388, line: 172, baseType: !402, size: 64, offset: 704)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !388, line: 133, size: 192, elements: !405)
!405 = !{!406, !413, !418}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !404, file: !388, line: 134, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!17, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !404, file: !388, line: 135, baseType: !414, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!57, !411}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !404, file: !388, line: 136, baseType: !419, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!17, !411, !423}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !388, line: 125, size: 20736, elements: !425)
!425 = !{!426, !431, !435, !436, !440}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !424, file: !388, line: 126, baseType: !427, size: 192)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 192, elements: !429)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!429 = !{!430}
!430 = !DISubrange(count: 3)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !424, file: !388, line: 127, baseType: !432, size: 4096, offset: 192)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 4096, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !424, file: !388, line: 128, baseType: !17, size: 32, offset: 4288)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !424, file: !388, line: 129, baseType: !437, size: 16384, offset: 4320)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 2048)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !424, file: !388, line: 130, baseType: !17, size: 32, offset: 20704)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !387, file: !388, line: 69, baseType: !442, size: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !388, line: 116, size: 384, elements: !445)
!445 = !{!446, !450, !473, !4403, !4431, !4435}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !444, file: !388, line: 117, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !393}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !444, file: !388, line: 118, baseType: !451, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !454, line: 254, size: 128, elements: !455)
!454 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!455 = !{!456, !469}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !453, file: !454, line: 255, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!460, !393, !464, !428}
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !64, line: 66, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !76, line: 73, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !76, line: 15, baseType: !463)
!463 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !454, line: 30, size: 128, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !465, file: !454, line: 31, baseType: !57, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !465, file: !454, line: 32, baseType: !63, size: 16, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !453, file: !454, line: 256, baseType: !470, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!460, !393, !464, !57, !74}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !444, file: !388, line: 119, baseType: !474, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !454, line: 84, size: 320, elements: !478)
!478 = !{!479, !480, !484, !4399, !4401}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !477, file: !454, line: 85, baseType: !57, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !477, file: !454, line: 86, baseType: !481, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!63, !393, !464, !17}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !477, file: !454, line: 88, baseType: !485, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!63, !393, !488, !17}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !454, line: 175, size: 512, elements: !490)
!490 = !{!491, !492, !493, !494, !4390, !4394, !4395}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !489, file: !454, line: 176, baseType: !465, size: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !489, file: !454, line: 177, baseType: !74, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !489, file: !454, line: 178, baseType: !60, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !489, file: !454, line: 179, baseType: !495, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!498}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !43, line: 472, size: 1536, align: 64, elements: !500)
!500 = !{!501, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4384, !4385, !4386, !4387, !4388, !4389}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !499, file: !43, line: 473, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !43, line: 641, size: 4800, elements: !504)
!504 = !{!505, !506, !507, !515, !516, !523, !524, !527, !528, !4163, !4164, !4165, !4166, !4167, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4207, !4210, !4211, !4212, !4221, !4222, !4223, !4224}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !503, file: !43, line: 642, baseType: !63, size: 16)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !503, file: !43, line: 643, baseType: !65, size: 16, offset: 16)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !503, file: !43, line: 644, baseType: !508, size: 32, offset: 32)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !509, line: 23, baseType: !510)
!509 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !509, line: 21, size: 32, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !510, file: !509, line: 22, baseType: !513, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !64, line: 37, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !76, line: 49, baseType: !22)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !503, file: !43, line: 645, baseType: !136, size: 128, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !503, file: !43, line: 646, baseType: !517, size: 32, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !509, line: 28, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !509, line: 26, size: 32, elements: !519)
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !518, file: !509, line: 27, baseType: !521, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !64, line: 38, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !76, line: 50, baseType: !22)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !503, file: !43, line: 647, baseType: !22, size: 32, offset: 224)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !503, file: !43, line: 650, baseType: !525, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !43, line: 607, flags: DIFlagFwdDecl)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !503, file: !43, line: 651, baseType: !525, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !503, file: !43, line: 654, baseType: !529, size: 64, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !43, line: 1966, size: 2048, align: 512, elements: !532)
!532 = !{!533, !3994, !4007, !4011, !4015, !4019, !4023, !4027, !4031, !4035, !4039, !4040, !4044, !4048, !4085, !4114, !4118, !4124, !4128, !4132, !4136, !4140, !4144, !4150, !4154}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !531, file: !43, line: 1967, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!537, !502, !537, !22}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !539, line: 82, size: 1536, elements: !540)
!539 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!540 = !{!541, !542, !552, !560, !561, !578, !579, !583, !596, !3977, !3978, !3979, !3980, !3986, !3987, !3988}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !538, file: !539, line: 84, baseType: !22, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !538, file: !539, line: 85, baseType: !543, size: 32, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !544, line: 275, baseType: !545)
!544 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !544, line: 275, size: 32, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !545, file: !544, line: 275, baseType: !548, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !544, line: 69, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !544, line: 64, size: 32, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !549, file: !544, line: 65, baseType: !22, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !538, file: !539, line: 86, baseType: !553, size: 128, offset: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !554, line: 38, size: 128, elements: !555)
!554 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!555 = !{!556, !558}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !553, file: !554, line: 39, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !553, file: !554, line: 39, baseType: !559, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !538, file: !539, line: 87, baseType: !537, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !538, file: !539, line: 88, baseType: !562, size: 128, offset: 256)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !539, line: 49, size: 128, elements: !563)
!563 = !{!564, !575}
!564 = !DIDerivedType(tag: DW_TAG_member, scope: !562, file: !539, line: 50, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !539, line: 50, size: 64, elements: !566)
!566 = !{!567, !574}
!567 = !DIDerivedType(tag: DW_TAG_member, scope: !565, file: !539, line: 51, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !565, file: !539, line: 51, size: 64, elements: !569)
!569 = !{!570, !573}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !568, file: !539, line: 52, baseType: !571, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !123, line: 21, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !125, line: 27, baseType: !22)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !568, file: !539, line: 52, baseType: !571, size: 32, offset: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !565, file: !539, line: 54, baseType: !351, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !562, file: !539, line: 56, baseType: !576, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !538, file: !539, line: 89, baseType: !502, size: 64, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !538, file: !539, line: 91, baseType: !580, size: 256, offset: 448)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 256, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !538, file: !539, line: 94, baseType: !584, size: 64, offset: 704)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !585, line: 25, size: 64, elements: !586)
!585 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, scope: !584, file: !585, line: 26, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !584, file: !585, line: 26, size: 64, elements: !589)
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !588, file: !585, line: 28, baseType: !352, size: 64, align: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, scope: !588, file: !585, line: 30, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !588, file: !585, line: 30, size: 64, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !592, file: !585, line: 31, baseType: !98, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !592, file: !585, line: 32, baseType: !17, size: 32, offset: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !538, file: !539, line: 95, baseType: !597, size: 64, offset: 768)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !539, line: 128, size: 1024, align: 512, elements: !600)
!600 = !{!601, !605, !606, !613, !619, !623, !627, !631, !632, !636, !640, !3967, !3971}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !599, file: !539, line: 129, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!17, !537, !22}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !599, file: !539, line: 130, baseType: !602, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !599, file: !539, line: 131, baseType: !607, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!17, !610, !612}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !538)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !599, file: !539, line: 132, baseType: !614, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!17, !610, !22, !57, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !599, file: !539, line: 134, baseType: !620, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!17, !610}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !599, file: !539, line: 135, baseType: !624, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!17, !537}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !599, file: !539, line: 136, baseType: !628, size: 64, offset: 384)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !537}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !599, file: !539, line: 137, baseType: !628, size: 64, offset: 448)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !599, file: !539, line: 138, baseType: !633, size: 64, offset: 512)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !537, !502}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !599, file: !539, line: 139, baseType: !637, size: 64, offset: 576)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!428, !537, !428, !17}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !599, file: !539, line: 140, baseType: !641, size: 64, offset: 640)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!644, !3966}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !646, line: 70, size: 256, elements: !647)
!646 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!647 = !{!648, !649, !3962, !3963}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !645, file: !646, line: 71, baseType: !537, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !645, file: !646, line: 72, baseType: !650, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !43, line: 1190, size: 10752, elements: !652)
!652 = !{!653, !654, !657, !658, !659, !660, !703, !3667, !3707, !3792, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3809, !3813, !3814, !3817, !3820, !3823, !3826, !3827, !3828, !3869, !3896, !3897, !3898, !3899, !3900, !3901, !3904, !3905, !3912, !3913, !3914, !3915, !3916, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !651, file: !43, line: 1191, baseType: !136, size: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !651, file: !43, line: 1192, baseType: !655, size: 32, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !64, line: 21, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !64, line: 18, baseType: !571)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !651, file: !43, line: 1193, baseType: !126, size: 8, offset: 160)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !651, file: !43, line: 1194, baseType: !78, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !651, file: !43, line: 1195, baseType: !80, size: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !651, file: !43, line: 1196, baseType: !661, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !43, line: 2366, size: 576, elements: !663)
!663 = !{!664, !665, !666, !673, !677, !681, !685, !686, !687, !691, !695, !696, !697, !699, !700, !701, !702}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !662, file: !43, line: 2367, baseType: !57, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !662, file: !43, line: 2368, baseType: !17, size: 32, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !662, file: !43, line: 2376, baseType: !667, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!17, !670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !672, line: 32, flags: DIFlagFwdDecl)
!672 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!673 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !662, file: !43, line: 2377, baseType: !674, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !43, line: 75, flags: DIFlagFwdDecl)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !662, file: !43, line: 2378, baseType: !678, size: 64, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!537, !661, !17, !57, !60}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !662, file: !43, line: 2380, baseType: !682, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !650}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !662, file: !43, line: 2381, baseType: !374, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !662, file: !43, line: 2382, baseType: !661, size: 64, offset: 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !662, file: !43, line: 2383, baseType: !688, size: 64, offset: 512)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !64, line: 194, size: 64, elements: !689)
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !688, file: !64, line: 195, baseType: !359, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !662, file: !43, line: 2385, baseType: !692, offset: 576)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !693, line: 206, elements: !694)
!693 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!694 = !{}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !662, file: !43, line: 2386, baseType: !692, offset: 576)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !662, file: !43, line: 2387, baseType: !692, offset: 576)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !662, file: !43, line: 2388, baseType: !698, offset: 576)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, elements: !429)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !662, file: !43, line: 2390, baseType: !692, offset: 576)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !662, file: !43, line: 2391, baseType: !692, offset: 576)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !662, file: !43, line: 2392, baseType: !692, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !662, file: !43, line: 2393, baseType: !692, offset: 576)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !651, file: !43, line: 1197, baseType: !704, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !43, line: 2057, size: 1664, elements: !707)
!707 = !{!708, !712, !716, !717, !721, !727, !731, !732, !733, !737, !741, !745, !746, !747, !753, !758, !759, !3592, !3593, !3594, !3595, !3599, !3603, !3650, !3665, !3666}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !706, file: !43, line: 2058, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!502, !650}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !706, file: !43, line: 2059, baseType: !713, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !502}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !706, file: !43, line: 2060, baseType: !713, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !706, file: !43, line: 2062, baseType: !718, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !502, !17}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !706, file: !43, line: 2063, baseType: !722, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!17, !502, !725}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !43, line: 309, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !706, file: !43, line: 2064, baseType: !728, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!17, !502}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !706, file: !43, line: 2065, baseType: !713, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !706, file: !43, line: 2066, baseType: !682, size: 64, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !706, file: !43, line: 2067, baseType: !734, size: 64, offset: 512)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!17, !650, !17}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !706, file: !43, line: 2068, baseType: !738, size: 64, offset: 576)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!17, !650, !42}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !706, file: !43, line: 2069, baseType: !742, size: 64, offset: 640)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!17, !650}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !706, file: !43, line: 2070, baseType: !738, size: 64, offset: 704)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !706, file: !43, line: 2071, baseType: !742, size: 64, offset: 768)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !706, file: !43, line: 2072, baseType: !748, size: 64, offset: 832)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!17, !537, !751}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !43, line: 62, flags: DIFlagFwdDecl)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !706, file: !43, line: 2073, baseType: !754, size: 64, offset: 896)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!17, !650, !757, !428}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !706, file: !43, line: 2074, baseType: !682, size: 64, offset: 960)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !706, file: !43, line: 2076, baseType: !760, size: 64, offset: 1024)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!17, !763, !537}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !765, line: 17, size: 960, elements: !766)
!765 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !795, !816, !817, !3591}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !764, file: !765, line: 18, baseType: !428, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !764, file: !765, line: 19, baseType: !74, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !764, file: !765, line: 20, baseType: !74, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !764, file: !765, line: 21, baseType: !74, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !764, file: !765, line: 22, baseType: !74, size: 64, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !764, file: !765, line: 23, baseType: !80, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !764, file: !765, line: 24, baseType: !80, size: 64, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !764, file: !765, line: 25, baseType: !775, size: 256, offset: 448)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !776, line: 66, size: 256, elements: !777)
!776 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!777 = !{!778, !787, !789, !794}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !775, file: !776, line: 67, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !780, line: 13, baseType: !781)
!780 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !64, line: 181, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 179, size: 64, elements: !783)
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !782, file: !64, line: 180, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !123, line: 22, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !125, line: 30, baseType: !82)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !775, file: !776, line: 68, baseType: !788, size: 32, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !107, line: 23, baseType: !106)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !775, file: !776, line: 70, baseType: !790, size: 32, offset: 96)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !791, line: 15, size: 32, elements: !792)
!791 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!792 = !{!793}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !790, file: !791, line: 20, baseType: !88, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !775, file: !776, line: 72, baseType: !136, size: 128, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !764, file: !765, line: 26, baseType: !796, size: 64, offset: 704)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !765, line: 32, size: 256, elements: !799)
!799 = !{!800, !804, !808, !812}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !798, file: !765, line: 33, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!60, !763, !79}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !798, file: !765, line: 34, baseType: !805, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !763, !60}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !798, file: !765, line: 35, baseType: !809, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!60, !763, !60, !79}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !798, file: !765, line: 36, baseType: !813, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!17, !763, !60}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !764, file: !765, line: 27, baseType: !17, size: 32, offset: 768)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !764, file: !765, line: 28, baseType: !818, size: 64, offset: 832)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !43, line: 994, size: 1856, align: 64, elements: !821)
!821 = !{!822, !841, !842, !844, !845, !846, !847, !848, !3409, !3410, !3419, !3425, !3426, !3581, !3582, !3583, !3584, !3586, !3587, !3590}
!822 = !DIDerivedType(tag: DW_TAG_member, scope: !820, file: !43, line: 995, baseType: !823, size: 128)
!823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !820, file: !43, line: 995, size: 128, elements: !824)
!824 = !{!825, !831, !840}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !823, file: !43, line: 996, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !827, line: 60, size: 64, elements: !828)
!827 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!828 = !{!829}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !826, file: !827, line: 61, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !823, file: !43, line: 997, baseType: !832, size: 128, align: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !64, line: 232, size: 128, align: 64, elements: !833)
!833 = !{!834, !836}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !832, file: !64, line: 233, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !832, file: !64, line: 234, baseType: !837, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !835}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !823, file: !43, line: 998, baseType: !22, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !820, file: !43, line: 1005, baseType: !98, size: 32, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !820, file: !43, line: 1006, baseType: !843, size: 32, offset: 160)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !64, line: 156, baseType: !22)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !820, file: !43, line: 1007, baseType: !779, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !820, file: !43, line: 1008, baseType: !775, size: 256, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !820, file: !43, line: 1009, baseType: !80, size: 64, offset: 512)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !820, file: !43, line: 1010, baseType: !22, size: 32, offset: 576)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !820, file: !43, line: 1011, baseType: !849, size: 256, offset: 640)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !43, line: 948, size: 256, elements: !850)
!850 = !{!851, !872, !3405, !3406, !3407, !3408}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !849, file: !43, line: 949, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !853, line: 34, baseType: !854)
!853 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !853, line: 25, size: 64, elements: !855)
!855 = !{!856}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !854, file: !853, line: 26, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !858, line: 27, baseType: !859)
!858 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !858, line: 13, size: 64, elements: !860)
!860 = !{!861, !871}
!861 = !DIDerivedType(tag: DW_TAG_member, scope: !859, file: !858, line: 14, baseType: !862, size: 32)
!862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !859, file: !858, line: 14, size: 32, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !862, file: !858, line: 15, baseType: !88, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !858, line: 16, baseType: !866, size: 32)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !862, file: !858, line: 16, size: 32, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !866, file: !858, line: 18, baseType: !122, size: 8)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !866, file: !858, line: 19, baseType: !870, size: 24, offset: 8)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 24, elements: !429)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !859, file: !858, line: 26, baseType: !110, size: 32, offset: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !849, file: !43, line: 950, baseType: !873, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !184, line: 59, size: 768, elements: !875)
!875 = !{!876, !882, !883, !884, !888, !889, !890, !891}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !874, file: !184, line: 61, baseType: !877, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !878, line: 113, baseType: !879)
!878 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !878, line: 111, size: 32, elements: !880)
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !879, file: !878, line: 112, baseType: !88, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !874, file: !184, line: 62, baseType: !22, size: 32, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !874, file: !184, line: 63, baseType: !98, size: 32, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !874, file: !184, line: 65, baseType: !885, size: 256, offset: 128)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 256, elements: !886)
!886 = !{!887}
!887 = !DISubrange(count: 4)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !874, file: !184, line: 66, baseType: !688, size: 64, offset: 384)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !874, file: !184, line: 68, baseType: !93, size: 192, offset: 448)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !874, file: !184, line: 69, baseType: !832, size: 128, align: 64, offset: 640)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !874, file: !184, line: 70, baseType: !892, offset: 768)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !893, elements: !1642)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !184, line: 54, size: 128, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !893, file: !184, line: 55, baseType: !17, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !893, file: !184, line: 56, baseType: !897, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !899, line: 26, size: 1152, elements: !900)
!899 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!900 = !{!901, !915, !916, !917, !3391, !3395, !3396, !3397, !3400, !3401, !3402, !3403, !3404}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !898, file: !899, line: 27, baseType: !902, size: 192)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !903, line: 19, size: 192, elements: !904)
!903 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!904 = !{!905, !913, !914}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !902, file: !903, line: 20, baseType: !906, size: 128)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !907, line: 296, size: 128, elements: !908)
!907 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!908 = !{!909, !910, !912}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !906, file: !907, line: 297, baseType: !98, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !906, file: !907, line: 299, baseType: !911, size: 32, offset: 32)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !64, line: 154, baseType: !22)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !906, file: !907, line: 300, baseType: !60, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !902, file: !903, line: 21, baseType: !22, size: 32, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !902, file: !903, line: 22, baseType: !22, size: 32, offset: 160)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !898, file: !899, line: 28, baseType: !832, size: 128, align: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !898, file: !899, line: 29, baseType: !22, size: 32, offset: 320)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !898, file: !899, line: 30, baseType: !918, size: 64, offset: 384)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !920, line: 746, size: 58368, elements: !921)
!920 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!921 = !{!922, !930, !931, !932, !933, !934, !935, !936, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !1002, !1013, !1108, !1112, !1115, !1146, !1147, !1148, !1149, !1160, !1162, !1163, !1164, !1165, !1166, !1167, !1178, !1179, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1196, !1197, !1204, !1205, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1723, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1771, !1777, !1847, !1848, !1849, !1850, !1854, !1857, !1864, !1869, !1872, !1875, !1878, !2560, !2761, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2799, !2800, !2801, !2810, !2818, !2819, !2820, !2821, !2822, !2827, !2828, !2829, !2832, !2833, !2836, !2839, !2842, !2850, !2853, !2854, !2940, !2941, !2942, !2943, !2944, !2950, !2951, !2952, !2953, !2954, !2955, !2958, !2961, !2962, !2965, !2966, !2967, !3005, !3006, !3007, !3008, !3009, !3010, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3042, !3045, !3051, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3063, !3135, !3137, !3138, !3139, !3140, !3141, !3142, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3172, !3173, !3174}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !919, file: !920, line: 752, baseType: !923, size: 192)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !924, line: 56, size: 192, elements: !925)
!924 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!925 = !{!926, !927, !928, !929}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !923, file: !924, line: 57, baseType: !78, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !923, file: !924, line: 58, baseType: !78, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !923, file: !924, line: 59, baseType: !571, size: 32, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !923, file: !924, line: 61, baseType: !571, size: 32, offset: 160)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !919, file: !920, line: 754, baseType: !22, size: 32, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !919, file: !920, line: 767, baseType: !60, size: 64, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !919, file: !920, line: 768, baseType: !877, size: 32, offset: 320)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !919, file: !920, line: 770, baseType: !22, size: 32, offset: 352)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !919, file: !920, line: 771, baseType: !22, size: 32, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !919, file: !920, line: 774, baseType: !17, size: 32, offset: 416)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !919, file: !920, line: 775, baseType: !937, size: 128, offset: 448)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !938, line: 58, size: 128, elements: !939)
!938 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!939 = !{!940, !941, !946, !947}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !937, file: !938, line: 59, baseType: !826, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !937, file: !938, line: 60, baseType: !942, size: 32, offset: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !937, file: !938, line: 60, size: 32, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !942, file: !938, line: 61, baseType: !22, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !942, file: !938, line: 62, baseType: !88, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !937, file: !938, line: 65, baseType: !132, size: 16, offset: 96)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !937, file: !938, line: 65, baseType: !132, size: 16, offset: 112)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !919, file: !920, line: 776, baseType: !22, size: 32, offset: 576)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !919, file: !920, line: 777, baseType: !78, size: 64, offset: 640)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !919, file: !920, line: 778, baseType: !918, size: 64, offset: 704)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !919, file: !920, line: 787, baseType: !17, size: 32, offset: 768)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !919, file: !920, line: 788, baseType: !17, size: 32, offset: 800)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !919, file: !920, line: 790, baseType: !17, size: 32, offset: 832)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !919, file: !920, line: 792, baseType: !17, size: 32, offset: 864)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !919, file: !920, line: 793, baseType: !17, size: 32, offset: 896)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !919, file: !920, line: 794, baseType: !17, size: 32, offset: 928)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !919, file: !920, line: 795, baseType: !22, size: 32, offset: 960)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !919, file: !920, line: 797, baseType: !959, size: 2048, offset: 1024)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !920, line: 551, size: 2048, elements: !960)
!960 = !{!961, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !981, !984, !985, !986}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !959, file: !920, line: 553, baseType: !962, size: 128)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !920, line: 411, size: 128, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !962, file: !920, line: 412, baseType: !78, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !962, file: !920, line: 413, baseType: !571, size: 32, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !959, file: !920, line: 554, baseType: !343, size: 192, align: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !959, file: !920, line: 555, baseType: !351, size: 64, offset: 320)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !959, file: !920, line: 556, baseType: !351, size: 64, offset: 384)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !959, file: !920, line: 558, baseType: !136, size: 128, offset: 448)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !959, file: !920, line: 559, baseType: !22, size: 32, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !959, file: !920, line: 561, baseType: !351, size: 64, offset: 640)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !959, file: !920, line: 562, baseType: !351, size: 64, offset: 704)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !959, file: !920, line: 563, baseType: !351, size: 64, offset: 768)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !959, file: !920, line: 564, baseType: !351, size: 64, offset: 832)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !959, file: !920, line: 565, baseType: !785, size: 64, offset: 896)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !959, file: !920, line: 566, baseType: !351, size: 64, offset: 960)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !959, file: !920, line: 568, baseType: !351, size: 64, offset: 1024)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !959, file: !920, line: 571, baseType: !17, size: 32, offset: 1088)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !959, file: !920, line: 572, baseType: !980, size: 64, offset: 1152)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !959, file: !920, line: 574, baseType: !982, size: 64, offset: 1216)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !920, line: 49, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !959, file: !920, line: 576, baseType: !982, size: 64, offset: 1280)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !959, file: !920, line: 578, baseType: !78, size: 64, offset: 1344)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !959, file: !920, line: 588, baseType: !987, size: 512, align: 512, offset: 1536)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !920, line: 497, size: 512, align: 512, elements: !988)
!988 = !{!989, !990, !991, !992, !993, !994, !995, !996, !997}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !987, file: !920, line: 498, baseType: !351, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !987, file: !920, line: 499, baseType: !351, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !987, file: !920, line: 500, baseType: !351, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !987, file: !920, line: 501, baseType: !571, size: 32, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !987, file: !920, line: 502, baseType: !571, size: 32, offset: 224)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !987, file: !920, line: 503, baseType: !78, size: 64, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !987, file: !920, line: 504, baseType: !78, size: 64, offset: 320)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !987, file: !920, line: 505, baseType: !78, size: 64, offset: 384)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !987, file: !920, line: 506, baseType: !998, size: 64, align: 64, offset: 448)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !920, line: 445, size: 64, align: 64, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !998, file: !920, line: 446, baseType: !22, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !998, file: !920, line: 447, baseType: !22, size: 32, offset: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !919, file: !920, line: 798, baseType: !1003, size: 384, offset: 3072)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !920, line: 592, size: 384, elements: !1004)
!1004 = !{!1005, !1006, !1007, !1008, !1009, !1010, !1011}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1003, file: !920, line: 593, baseType: !136, size: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1003, file: !920, line: 594, baseType: !78, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1003, file: !920, line: 595, baseType: !78, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1003, file: !920, line: 596, baseType: !22, size: 32, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1003, file: !920, line: 597, baseType: !65, size: 16, offset: 288)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1003, file: !920, line: 598, baseType: !65, size: 16, offset: 304)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1003, file: !920, line: 600, baseType: !1012, size: 64, offset: 320)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !919, file: !920, line: 799, baseType: !1014, size: 1792, offset: 3456)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !920, line: 610, size: 1792, elements: !1015)
!1015 = !{!1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1105, !1106}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1014, file: !920, line: 611, baseType: !343, size: 192, align: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1014, file: !920, line: 618, baseType: !351, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1014, file: !920, line: 619, baseType: !351, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1014, file: !920, line: 620, baseType: !351, size: 64, offset: 320)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1014, file: !920, line: 621, baseType: !351, size: 64, offset: 384)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1014, file: !920, line: 622, baseType: !351, size: 64, offset: 448)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1014, file: !920, line: 629, baseType: !785, size: 64, offset: 512)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1014, file: !920, line: 630, baseType: !351, size: 64, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1014, file: !920, line: 631, baseType: !22, size: 32, offset: 640)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1014, file: !920, line: 653, baseType: !22, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1014, file: !920, line: 654, baseType: !22, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1014, file: !920, line: 655, baseType: !22, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1014, file: !920, line: 656, baseType: !22, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1014, file: !920, line: 662, baseType: !1030, size: 512, offset: 704)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !48, line: 118, size: 512, elements: !1031)
!1031 = !{!1032, !1040, !1041, !1046, !1101, !1102, !1103, !1104}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1030, file: !48, line: 119, baseType: !1033, size: 256)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1034, line: 9, size: 256, elements: !1035)
!1034 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1033, file: !1034, line: 10, baseType: !343, size: 192, align: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1033, file: !1034, line: 11, baseType: !1038, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1039, line: 29, baseType: !785)
!1039 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1030, file: !48, line: 120, baseType: !1038, size: 64, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1030, file: !48, line: 121, baseType: !1042, size: 64, offset: 320)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!47, !1045}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1030, file: !48, line: 122, baseType: !1047, size: 64, offset: 384)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !48, line: 159, size: 512, align: 512, elements: !1049)
!1049 = !{!1050, !1075, !1076, !1079, !1084, !1085, !1096, !1100}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1048, file: !48, line: 160, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !48, line: 215, size: 4608, align: 512, elements: !1053)
!1053 = !{!1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1052, file: !48, line: 216, baseType: !788, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1052, file: !48, line: 217, baseType: !22, size: 32, offset: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1052, file: !48, line: 218, baseType: !22, size: 32, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1052, file: !48, line: 219, baseType: !22, size: 32, offset: 96)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1052, file: !48, line: 220, baseType: !22, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1052, file: !48, line: 221, baseType: !22, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1052, file: !48, line: 222, baseType: !22, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1052, file: !48, line: 223, baseType: !22, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1052, file: !48, line: 224, baseType: !22, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1052, file: !48, line: 226, baseType: !22, size: 32, offset: 160)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1052, file: !48, line: 227, baseType: !65, size: 16, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1052, file: !48, line: 228, baseType: !65, size: 16, offset: 208)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1052, file: !48, line: 229, baseType: !22, size: 32, offset: 224)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1052, file: !48, line: 235, baseType: !1038, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1052, file: !48, line: 236, baseType: !1045, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1052, file: !48, line: 237, baseType: !1038, size: 64, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1052, file: !48, line: 238, baseType: !1045, size: 64, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1052, file: !48, line: 239, baseType: !1072, size: 4096, align: 512, offset: 512)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1048, size: 4096, align: 512, elements: !1073)
!1073 = !{!1074}
!1074 = !DISubrange(count: 8)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1048, file: !48, line: 161, baseType: !22, size: 32, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1048, file: !48, line: 162, baseType: !1077, size: 32, offset: 96)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !64, line: 32, baseType: !1078)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !76, line: 96, baseType: !17)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1048, file: !48, line: 163, baseType: !1080, size: 32, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !544, line: 274, baseType: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !544, line: 274, size: 32, elements: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1081, file: !544, line: 274, baseType: !548, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1048, file: !48, line: 164, baseType: !1045, size: 64, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1048, file: !48, line: 165, baseType: !1086, size: 128, offset: 256)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1034, line: 14, size: 128, elements: !1087)
!1087 = !{!1088}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1086, file: !1034, line: 15, baseType: !1089, size: 128)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !344, line: 26, size: 128, elements: !1090)
!1090 = !{!1091, !1095}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1089, file: !344, line: 27, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !344, line: 12, size: 64, elements: !1093)
!1093 = !{!1094}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1092, file: !344, line: 13, baseType: !348, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1089, file: !344, line: 28, baseType: !348, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1048, file: !48, line: 166, baseType: !1097, size: 64, offset: 384)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!1038}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1048, file: !48, line: 167, baseType: !1038, size: 64, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1030, file: !48, line: 123, baseType: !122, size: 8, offset: 448)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1030, file: !48, line: 124, baseType: !122, size: 8, offset: 456)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1030, file: !48, line: 125, baseType: !122, size: 8, offset: 464)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1030, file: !48, line: 126, baseType: !122, size: 8, offset: 472)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1014, file: !920, line: 671, baseType: !1030, size: 512, offset: 1216)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1014, file: !920, line: 679, baseType: !1107, size: 64, offset: 1728)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !919, file: !920, line: 800, baseType: !1109, size: 64, offset: 5248)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1111)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !920, line: 800, flags: DIFlagFwdDecl)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !919, file: !920, line: 809, baseType: !1113, size: 64, offset: 5312)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !920, line: 70, flags: DIFlagFwdDecl)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !919, file: !920, line: 825, baseType: !1116, size: 2048, align: 512, offset: 5632)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !920, line: 509, size: 2048, align: 512, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1116, file: !920, line: 511, baseType: !351, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1116, file: !920, line: 512, baseType: !351, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1116, file: !920, line: 513, baseType: !351, size: 64, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1116, file: !920, line: 514, baseType: !351, size: 64, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1116, file: !920, line: 515, baseType: !351, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1116, file: !920, line: 516, baseType: !351, size: 64, offset: 320)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1116, file: !920, line: 518, baseType: !351, size: 64, offset: 384)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1116, file: !920, line: 519, baseType: !351, size: 64, offset: 448)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1116, file: !920, line: 520, baseType: !785, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1116, file: !920, line: 522, baseType: !351, size: 64, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1116, file: !920, line: 523, baseType: !351, size: 64, offset: 640)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1116, file: !920, line: 524, baseType: !785, size: 64, offset: 704)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1116, file: !920, line: 526, baseType: !785, size: 64, offset: 768)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1116, file: !920, line: 527, baseType: !351, size: 64, offset: 832)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1116, file: !920, line: 529, baseType: !351, size: 64, offset: 896)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1116, file: !920, line: 530, baseType: !351, size: 64, offset: 960)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1116, file: !920, line: 531, baseType: !351, size: 64, offset: 1024)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1116, file: !920, line: 532, baseType: !351, size: 64, offset: 1088)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1116, file: !920, line: 533, baseType: !351, size: 64, offset: 1152)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1116, file: !920, line: 535, baseType: !351, size: 64, offset: 1216)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1116, file: !920, line: 536, baseType: !351, size: 64, offset: 1280)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1116, file: !920, line: 537, baseType: !351, size: 64, offset: 1344)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1116, file: !920, line: 538, baseType: !351, size: 64, offset: 1408)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1116, file: !920, line: 539, baseType: !351, size: 64, offset: 1472)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1116, file: !920, line: 540, baseType: !351, size: 64, offset: 1536)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1116, file: !920, line: 541, baseType: !351, size: 64, offset: 1600)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1116, file: !920, line: 542, baseType: !351, size: 64, offset: 1664)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1116, file: !920, line: 543, baseType: !351, size: 64, offset: 1728)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !919, file: !920, line: 833, baseType: !22, size: 32, offset: 7680)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !919, file: !920, line: 836, baseType: !22, size: 32, offset: 7712)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !919, file: !920, line: 837, baseType: !17, size: 32, offset: 7744)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !919, file: !920, line: 838, baseType: !1150, size: 64, offset: 7808)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1152)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1153, line: 19, baseType: !1154)
!1153 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1153, line: 19, size: 64, elements: !1155)
!1155 = !{!1156}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1154, file: !1153, line: 19, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 64, elements: !1158)
!1158 = !{!1159}
!1159 = !DISubrange(count: 1)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !919, file: !920, line: 839, baseType: !1161, size: 64, offset: 7872)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !919, file: !920, line: 840, baseType: !1152, size: 64, offset: 7936)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !919, file: !920, line: 841, baseType: !60, size: 64, offset: 8000)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !919, file: !920, line: 843, baseType: !65, size: 16, offset: 8064)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !919, file: !920, line: 845, baseType: !65, size: 16, offset: 8080)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !919, file: !920, line: 848, baseType: !17, size: 32, offset: 8096)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !919, file: !920, line: 849, baseType: !1168, size: 32, offset: 8128)
!1168 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !920, line: 718, size: 32, elements: !1169)
!1169 = !{!1170, !1177}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1168, file: !920, line: 724, baseType: !1171, size: 32)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1168, file: !920, line: 719, size: 32, elements: !1172)
!1172 = !{!1173, !1174, !1175, !1176}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1171, file: !920, line: 720, baseType: !122, size: 8)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1171, file: !920, line: 721, baseType: !122, size: 8, offset: 8)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1171, file: !920, line: 722, baseType: !122, size: 8, offset: 16)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1171, file: !920, line: 723, baseType: !122, size: 8, offset: 24)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1168, file: !920, line: 725, baseType: !571, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !919, file: !920, line: 850, baseType: !136, size: 128, offset: 8192)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !919, file: !920, line: 851, baseType: !1180, size: 64, offset: 8320)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !920, line: 60, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !919, file: !920, line: 855, baseType: !78, size: 64, offset: 8384)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !919, file: !920, line: 856, baseType: !122, size: 8, offset: 8448)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !919, file: !920, line: 857, baseType: !122, size: 8, offset: 8456)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !919, file: !920, line: 858, baseType: !17, size: 32, offset: 8480)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !919, file: !920, line: 859, baseType: !136, size: 128, offset: 8512)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !919, file: !920, line: 860, baseType: !17, size: 32, offset: 8640)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !919, file: !920, line: 861, baseType: !136, size: 128, offset: 8704)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !919, file: !920, line: 873, baseType: !1190, size: 256, offset: 8832)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !920, line: 376, size: 256, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1190, file: !920, line: 381, baseType: !78, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1190, file: !920, line: 384, baseType: !353, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1190, file: !920, line: 389, baseType: !353, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1190, file: !920, line: 392, baseType: !353, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !919, file: !920, line: 875, baseType: !136, size: 128, offset: 9088)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !919, file: !920, line: 877, baseType: !1198, size: 320, offset: 9216)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1199, line: 86, size: 320, elements: !1200)
!1199 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1200 = !{!1201, !1202, !1203}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1198, file: !1199, line: 87, baseType: !17, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1198, file: !1199, line: 88, baseType: !136, size: 128, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1198, file: !1199, line: 89, baseType: !136, size: 128, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !919, file: !920, line: 878, baseType: !343, size: 192, align: 64, offset: 9536)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !919, file: !920, line: 881, baseType: !1206, size: 64, offset: 9728)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !153, line: 733, size: 10240, elements: !1208)
!1208 = !{!1209, !1640}
!1209 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !153, line: 734, baseType: !1210, size: 10240)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1207, file: !153, line: 734, size: 10240, elements: !1211)
!1211 = !{!1212, !1216, !1229, !1234, !1235, !1236, !1237, !1238, !1239, !1248, !1249, !1250, !1256, !1257, !1258, !1259, !1260, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1297, !1309, !1312, !1360, !1361, !1362, !1365, !1626, !1627, !1630, !1631, !1632, !1638, !1639}
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !153, line: 739, baseType: !1213, size: 512, align: 512)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1210, file: !153, line: 739, size: 512, align: 512, elements: !1214)
!1214 = !{!1215}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1213, file: !153, line: 747, baseType: !88, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1210, file: !153, line: 750, baseType: !1217, size: 128, offset: 512)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1218, line: 218, size: 128, elements: !1219)
!1218 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1219 = !{!1220, !1227, !1228}
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !1218, line: 219, baseType: !1221, size: 32)
!1221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1217, file: !1218, line: 219, size: 32, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1221, file: !1218, line: 220, baseType: !98, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1221, file: !1218, line: 221, baseType: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1218, line: 197, baseType: !1226)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1218, line: 197, elements: !694)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1217, file: !1218, line: 223, baseType: !22, size: 32, offset: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1217, file: !1218, line: 224, baseType: !60, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1210, file: !153, line: 752, baseType: !1230, size: 64, offset: 640)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!78, !1233, !78, !78, !78, !78}
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1210, file: !153, line: 756, baseType: !78, size: 64, offset: 704)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1210, file: !153, line: 757, baseType: !78, size: 64, offset: 768)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1210, file: !153, line: 760, baseType: !78, size: 64, offset: 832)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1210, file: !153, line: 761, baseType: !78, size: 64, offset: 896)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1210, file: !153, line: 763, baseType: !78, size: 64, offset: 960)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1210, file: !153, line: 764, baseType: !1240, size: 64, offset: 1024)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1242, line: 299, baseType: !1243)
!1242 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1242, line: 299, size: 64, elements: !1244)
!1244 = !{!1245}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1243, file: !1242, line: 299, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1247, line: 18, baseType: !78)
!1247 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1210, file: !153, line: 773, baseType: !88, size: 32, offset: 1088)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1210, file: !153, line: 785, baseType: !88, size: 32, offset: 1120)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1210, file: !153, line: 795, baseType: !1251, size: 64, offset: 1152)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !153, line: 726, size: 128, elements: !1253)
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1252, file: !153, line: 727, baseType: !351, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1252, file: !153, line: 728, baseType: !17, size: 32, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1210, file: !153, line: 801, baseType: !78, size: 64, offset: 1216)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1210, file: !153, line: 804, baseType: !779, size: 64, offset: 1280)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1210, file: !153, line: 806, baseType: !17, size: 32, offset: 1344)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1210, file: !153, line: 808, baseType: !98, size: 32, offset: 1376)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1210, file: !153, line: 823, baseType: !1261, size: 320, offset: 1408)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1262, line: 48, size: 320, elements: !1263)
!1262 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1263 = !{!1264, !1265, !1266, !1267, !1268}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1261, file: !1262, line: 49, baseType: !779, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1261, file: !1262, line: 55, baseType: !779, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1261, file: !1262, line: 57, baseType: !790, size: 32, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1261, file: !1262, line: 59, baseType: !788, size: 32, offset: 160)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1261, file: !1262, line: 60, baseType: !136, size: 128, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1210, file: !153, line: 825, baseType: !136, size: 128, offset: 1728)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1210, file: !153, line: 845, baseType: !17, size: 32, offset: 1856)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1210, file: !153, line: 849, baseType: !78, size: 64, offset: 1920)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1210, file: !153, line: 850, baseType: !78, size: 64, offset: 1984)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1210, file: !153, line: 852, baseType: !78, size: 64, offset: 2048)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1210, file: !153, line: 853, baseType: !78, size: 64, offset: 2112)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1210, file: !153, line: 854, baseType: !781, size: 64, offset: 2176)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1210, file: !153, line: 855, baseType: !78, size: 64, offset: 2240)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1210, file: !153, line: 856, baseType: !78, size: 64, offset: 2304)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1210, file: !153, line: 857, baseType: !78, size: 64, offset: 2368)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1210, file: !153, line: 858, baseType: !78, size: 64, offset: 2432)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1210, file: !153, line: 865, baseType: !548, size: 32, offset: 2496)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1210, file: !153, line: 867, baseType: !98, size: 32, offset: 2528)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1210, file: !153, line: 869, baseType: !78, size: 64, offset: 2560)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1210, file: !153, line: 869, baseType: !78, size: 64, offset: 2624)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1210, file: !153, line: 869, baseType: !78, size: 64, offset: 2688)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1210, file: !153, line: 869, baseType: !78, size: 64, offset: 2752)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1210, file: !153, line: 870, baseType: !78, size: 64, offset: 2816)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1210, file: !153, line: 870, baseType: !78, size: 64, offset: 2880)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1210, file: !153, line: 870, baseType: !78, size: 64, offset: 2944)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1210, file: !153, line: 871, baseType: !78, size: 64, offset: 3008)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1210, file: !153, line: 871, baseType: !78, size: 64, offset: 3072)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1210, file: !153, line: 871, baseType: !78, size: 64, offset: 3136)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1210, file: !153, line: 871, baseType: !78, size: 64, offset: 3200)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1210, file: !153, line: 873, baseType: !1294, size: 3328, offset: 3264)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 3328, elements: !1295)
!1295 = !{!1296}
!1296 = !DISubrange(count: 52)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1210, file: !153, line: 875, baseType: !1298, size: 1280, offset: 6592)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1299, size: 1280, elements: !886)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1300, line: 22, size: 320, elements: !1301)
!1300 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1301 = !{!1302, !1303, !1304, !1305}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1299, file: !1300, line: 23, baseType: !788, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1299, file: !1300, line: 24, baseType: !785, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1299, file: !1300, line: 26, baseType: !136, size: 128, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1299, file: !1300, line: 28, baseType: !1306, size: 64, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !123, line: 20, baseType: !1308)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !125, line: 26, baseType: !17)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1210, file: !153, line: 877, baseType: !1310, size: 64, offset: 7872)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !153, line: 877, flags: DIFlagFwdDecl)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1210, file: !153, line: 880, baseType: !1313, size: 1088, offset: 7936)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1314, line: 72, baseType: !1315)
!1314 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1314, line: 23, size: 1088, elements: !1316)
!1316 = !{!1317, !1318, !1319, !1320, !1321, !1324, !1325, !1326, !1327, !1354, !1355, !1356}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1315, file: !1314, line: 28, baseType: !351, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1315, file: !1314, line: 38, baseType: !781, size: 64, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1315, file: !1314, line: 40, baseType: !78, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1315, file: !1314, line: 43, baseType: !1261, size: 320, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1315, file: !1314, line: 44, baseType: !1322, size: 64, offset: 512)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1314, line: 44, flags: DIFlagFwdDecl)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1315, file: !1314, line: 48, baseType: !78, size: 64, offset: 576)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1315, file: !1314, line: 59, baseType: !775, size: 256, offset: 640)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1315, file: !1314, line: 60, baseType: !60, size: 64, offset: 896)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1315, file: !1314, line: 61, baseType: !1328, size: 64, offset: 960)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1330)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1331, line: 13, size: 1216, elements: !1332)
!1331 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338, !1339, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1330, file: !1331, line: 14, baseType: !60, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1330, file: !1331, line: 15, baseType: !78, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1330, file: !1331, line: 17, baseType: !78, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1330, file: !1331, line: 17, baseType: !78, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1330, file: !1331, line: 18, baseType: !78, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1330, file: !1331, line: 18, baseType: !78, size: 64, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1330, file: !1331, line: 19, baseType: !1340, size: 64, offset: 384)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1330, file: !1331, line: 21, baseType: !463, size: 64, offset: 448)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1330, file: !1331, line: 23, baseType: !463, size: 64, offset: 512)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1330, file: !1331, line: 24, baseType: !463, size: 64, offset: 576)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1330, file: !1331, line: 25, baseType: !463, size: 64, offset: 640)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1330, file: !1331, line: 26, baseType: !463, size: 64, offset: 704)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1330, file: !1331, line: 27, baseType: !463, size: 64, offset: 768)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1330, file: !1331, line: 28, baseType: !463, size: 64, offset: 832)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1330, file: !1331, line: 29, baseType: !463, size: 64, offset: 896)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1330, file: !1331, line: 30, baseType: !463, size: 64, offset: 960)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1330, file: !1331, line: 31, baseType: !463, size: 64, offset: 1024)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1330, file: !1331, line: 32, baseType: !463, size: 64, offset: 1088)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1330, file: !1331, line: 33, baseType: !463, size: 64, offset: 1152)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1315, file: !1314, line: 63, baseType: !88, size: 32, offset: 1024)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1315, file: !1314, line: 69, baseType: !132, size: 16, offset: 1056)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1315, file: !1314, line: 70, baseType: !1357, size: 16, offset: 1072)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !123, line: 18, baseType: !1358)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !125, line: 23, baseType: !1359)
!1359 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1210, file: !153, line: 882, baseType: !78, size: 64, offset: 9024)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1210, file: !153, line: 885, baseType: !98, size: 32, offset: 9088)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1210, file: !153, line: 886, baseType: !1363, size: 64, offset: 9152)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !153, line: 732, flags: DIFlagFwdDecl)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1210, file: !153, line: 901, baseType: !1366, size: 64, offset: 9216)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1368, line: 68, size: 4800, elements: !1369)
!1368 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1369 = !{!1370, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1409, !1410, !1413, !1414, !1524, !1525, !1537, !1607, !1608, !1622, !1624}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1367, file: !1368, line: 69, baseType: !1371, size: 576)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1368, line: 23, size: 576, elements: !1372)
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1371, file: !1368, line: 24, baseType: !571, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !1368, line: 25, baseType: !1375, size: 512, offset: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1371, file: !1368, line: 25, size: 512, elements: !1376)
!1376 = !{!1377, !1386}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1375, file: !1368, line: 26, baseType: !1378, size: 480)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, size: 480, elements: !1384)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1368, line: 17, size: 96, elements: !1380)
!1380 = !{!1381, !1382, !1383}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1379, file: !1368, line: 18, baseType: !571, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1379, file: !1368, line: 19, baseType: !571, size: 32, offset: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1379, file: !1368, line: 20, baseType: !571, size: 32, offset: 64)
!1384 = !{!1385}
!1385 = !DISubrange(count: 5)
!1386 = !DIDerivedType(tag: DW_TAG_member, scope: !1375, file: !1368, line: 27, baseType: !1387, size: 128)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1375, file: !1368, line: 27, size: 128, elements: !1388)
!1388 = !{!1389, !1391}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1387, file: !1368, line: 28, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1387, file: !1368, line: 29, baseType: !1390, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1367, file: !1368, line: 70, baseType: !1371, size: 576, offset: 576)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1367, file: !1368, line: 71, baseType: !1371, size: 576, offset: 1152)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1367, file: !1368, line: 72, baseType: !1366, size: 64, offset: 1728)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1367, file: !1368, line: 73, baseType: !17, size: 32, offset: 1792)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1367, file: !1368, line: 74, baseType: !508, size: 32, offset: 1824)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1367, file: !1368, line: 75, baseType: !517, size: 32, offset: 1856)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1367, file: !1368, line: 76, baseType: !1399, size: 192, offset: 1920)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1400, line: 9, size: 192, elements: !1401)
!1400 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1401 = !{!1402, !1403, !1407, !1408}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1399, file: !1400, line: 10, baseType: !779, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1399, file: !1400, line: 11, baseType: !1404, size: 64, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1406)
!1406 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1400, line: 7, flags: DIFlagFwdDecl)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1399, file: !1400, line: 12, baseType: !22, size: 32, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1399, file: !1400, line: 13, baseType: !877, size: 32, offset: 160)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1367, file: !1368, line: 77, baseType: !78, size: 64, offset: 2112)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1367, file: !1368, line: 80, baseType: !1411, size: 8, offset: 2176)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !64, line: 35, baseType: !1412)
!1412 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1367, file: !1368, line: 88, baseType: !136, size: 128, offset: 2240)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1367, file: !1368, line: 89, baseType: !1415, size: 64, offset: 2368)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1417, line: 195, size: 1728, elements: !1418)
!1417 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1418 = !{!1419, !1420, !1423, !1428, !1429, !1432, !1433, !1440, !1441, !1442, !1443, !1446, !1447, !1448, !1449, !1450, !1488, !1509}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1416, file: !1417, line: 196, baseType: !877, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1416, file: !1417, line: 197, baseType: !1421, size: 32, offset: 32)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1417, line: 28, baseType: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !64, line: 104, baseType: !1307)
!1423 = !DIDerivedType(tag: DW_TAG_member, scope: !1416, file: !1417, line: 198, baseType: !1424, size: 192, offset: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1416, file: !1417, line: 198, size: 192, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1424, file: !1417, line: 199, baseType: !136, size: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1424, file: !1417, line: 200, baseType: !343, size: 192, align: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1416, file: !1417, line: 205, baseType: !1261, size: 320, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1416, file: !1417, line: 206, baseType: !1430, size: 64, offset: 576)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1417, line: 206, flags: DIFlagFwdDecl)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1416, file: !1417, line: 207, baseType: !60, size: 64, offset: 640)
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1416, file: !1417, line: 208, baseType: !1434, size: 64, offset: 704)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1416, file: !1417, line: 208, size: 64, elements: !1435)
!1435 = !{!1436, !1439}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1434, file: !1417, line: 209, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1438, line: 8, baseType: !786)
!1438 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1434, file: !1417, line: 210, baseType: !1437, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1416, file: !1417, line: 212, baseType: !1437, size: 64, offset: 768)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1416, file: !1417, line: 213, baseType: !508, size: 32, offset: 832)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1416, file: !1417, line: 214, baseType: !517, size: 32, offset: 864)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1416, file: !1417, line: 215, baseType: !1444, size: 32, offset: 896)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1417, line: 31, baseType: !1445)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !64, line: 110, baseType: !571)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1416, file: !1417, line: 216, baseType: !65, size: 16, offset: 928)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1416, file: !1417, line: 217, baseType: !65, size: 16, offset: 944)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1416, file: !1417, line: 221, baseType: !1359, size: 16, offset: 960)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1416, file: !1417, line: 228, baseType: !78, size: 64, offset: 1024)
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1416, file: !1417, line: 245, baseType: !1451, size: 320, offset: 1088)
!1451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1416, file: !1417, line: 245, size: 320, elements: !1452)
!1452 = !{!1453, !1480}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1451, file: !1417, line: 246, baseType: !1454, size: 320)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1417, line: 114, size: 320, elements: !1455)
!1455 = !{!1456, !1457, !1469, !1472, !1479}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1454, file: !1417, line: 116, baseType: !78, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !1417, line: 117, baseType: !1458, size: 64, offset: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !1417, line: 117, size: 64, elements: !1459)
!1459 = !{!1460, !1468}
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1458, file: !1417, line: 118, baseType: !1461, size: 64)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1458, file: !1417, line: 118, size: 64, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1461, file: !1417, line: 120, baseType: !132, size: 16)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1461, file: !1417, line: 121, baseType: !1465, size: 48, offset: 16)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1466)
!1466 = !{!1467}
!1467 = !DISubrange(count: 6)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1458, file: !1417, line: 127, baseType: !78, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1454, file: !1417, line: 129, baseType: !1470, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1417, line: 102, flags: DIFlagFwdDecl)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1454, file: !1417, line: 130, baseType: !1473, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1417, line: 108, size: 192, elements: !1475)
!1475 = !{!1476, !1477, !1478}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1474, file: !1417, line: 109, baseType: !832, size: 128, align: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1474, file: !1417, line: 110, baseType: !877, size: 32, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1474, file: !1417, line: 111, baseType: !1411, size: 8, offset: 160)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1454, file: !1417, line: 131, baseType: !57, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1451, file: !1417, line: 247, baseType: !1481, size: 320)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1451, file: !1417, line: 247, size: 320, elements: !1482)
!1482 = !{!1483, !1484, !1485, !1486, !1487}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1481, file: !1417, line: 248, baseType: !78, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1481, file: !1417, line: 249, baseType: !78, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1481, file: !1417, line: 250, baseType: !1470, size: 64, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1481, file: !1417, line: 251, baseType: !1473, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1481, file: !1417, line: 252, baseType: !428, size: 64, offset: 256)
!1488 = !DIDerivedType(tag: DW_TAG_member, scope: !1416, file: !1417, line: 260, baseType: !1489, size: 256, offset: 1408)
!1489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1416, file: !1417, line: 260, size: 256, elements: !1490)
!1490 = !{!1491, !1497}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1489, file: !1417, line: 261, baseType: !1492, size: 256)
!1492 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1417, line: 134, size: 256, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1492, file: !1417, line: 135, baseType: !60, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1492, file: !1417, line: 136, baseType: !1496, size: 256)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 256, elements: !886)
!1497 = !DIDerivedType(tag: DW_TAG_member, scope: !1489, file: !1417, line: 262, baseType: !1498, size: 256)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1489, file: !1417, line: 262, size: 256, elements: !1499)
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1498, file: !1417, line: 264, baseType: !136, size: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1498, file: !1417, line: 265, baseType: !1502, size: 128, offset: 128)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1503, line: 22, size: 128, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1504 = !{!1505, !1508}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1502, file: !1503, line: 23, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1503, line: 23, flags: DIFlagFwdDecl)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1502, file: !1503, line: 24, baseType: !78, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1416, file: !1417, line: 280, baseType: !1510, size: 64, offset: 1664)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1417, line: 176, size: 192, elements: !1512)
!1512 = !{!1513, !1522, !1523}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1511, file: !1417, line: 177, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1417, line: 171, baseType: !1515)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!17, !1415, !1518, !1520, !1415}
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1471)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1492)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1511, file: !1417, line: 178, baseType: !1415, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1511, file: !1417, line: 179, baseType: !1470, size: 64, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1367, file: !1368, line: 90, baseType: !1261, size: 320, offset: 2432)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1367, file: !1368, line: 97, baseType: !1526, size: 256, offset: 2752)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1527, line: 98, size: 256, elements: !1528)
!1527 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1528 = !{!1529, !1530, !1531}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1526, file: !1527, line: 99, baseType: !779, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1526, file: !1527, line: 100, baseType: !136, size: 128, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1526, file: !1527, line: 101, baseType: !1532, size: 64, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1527, line: 21, baseType: !1533)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !1536}
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1367, file: !1368, line: 99, baseType: !1538, size: 768, offset: 3008)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !53, line: 199, size: 768, elements: !1539)
!1539 = !{!1540, !1545}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1538, file: !53, line: 200, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!17, !1544}
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1538, file: !53, line: 201, baseType: !1546, size: 704, offset: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !53, line: 193, size: 704, elements: !1547)
!1547 = !{!1548, !1606}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1546, file: !53, line: 195, baseType: !1549, size: 640)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !53, line: 173, size: 640, elements: !1550)
!1550 = !{!1551, !1563, !1575, !1576, !1596, !1597, !1599, !1605}
!1551 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !53, line: 174, baseType: !1552, size: 192)
!1552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1549, file: !53, line: 174, size: 192, elements: !1553)
!1553 = !{!1554, !1562}
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !53, line: 175, baseType: !1555, size: 192)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1552, file: !53, line: 175, size: 192, elements: !1556)
!1556 = !{!1557, !1558, !1559, !1560, !1561}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1555, file: !53, line: 176, baseType: !72, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1555, file: !53, line: 177, baseType: !17, size: 32, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1555, file: !53, line: 178, baseType: !17, size: 32, offset: 96)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1555, file: !53, line: 179, baseType: !17, size: 32, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1555, file: !53, line: 180, baseType: !17, size: 32, offset: 160)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1552, file: !53, line: 182, baseType: !832, size: 128, align: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1549, file: !53, line: 184, baseType: !1564, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1566, line: 26, size: 256, elements: !1567)
!1566 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1565, file: !1566, line: 27, baseType: !22, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1565, file: !1566, line: 28, baseType: !1570, size: 192, offset: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1571, line: 43, size: 192, elements: !1572)
!1571 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1570, file: !1571, line: 44, baseType: !788, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1570, file: !1571, line: 45, baseType: !136, size: 128, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1549, file: !53, line: 185, baseType: !72, size: 64, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1549, file: !53, line: 186, baseType: !1577, size: 64, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !53, line: 204, size: 960, elements: !1579)
!1579 = !{!1580, !1581, !1585, !1592}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1578, file: !53, line: 205, baseType: !1538, size: 768)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1578, file: !53, line: 206, baseType: !1582, size: 64, offset: 768)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!1544, !1577}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1578, file: !53, line: 207, baseType: !1586, size: 64, offset: 832)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !1589, !1590, !1591}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1578, file: !53, line: 209, baseType: !1593, size: 64, offset: 896)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!17, !1589, !72}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1549, file: !53, line: 187, baseType: !1544, size: 64, offset: 384)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1549, file: !53, line: 188, baseType: !1598, size: 64, offset: 448)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1549, file: !53, line: 189, baseType: !1600, size: 64, offset: 512)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !53, line: 157, size: 256, elements: !1602)
!1602 = !{!1603, !1604}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1601, file: !53, line: 158, baseType: !343, size: 192, align: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1601, file: !53, line: 159, baseType: !1589, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1549, file: !53, line: 190, baseType: !688, size: 64, offset: 576)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1546, file: !53, line: 196, baseType: !1092, size: 64, offset: 640)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1367, file: !1368, line: 100, baseType: !1589, size: 64, offset: 3776)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1367, file: !1368, line: 102, baseType: !1609, size: 64, offset: 3840)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1368, line: 107, size: 1152, elements: !1611)
!1611 = !{!1612, !1613, !1614, !1615, !1616, !1620}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1610, file: !1368, line: 108, baseType: !356, size: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1610, file: !1368, line: 109, baseType: !1366, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1610, file: !1368, line: 110, baseType: !508, size: 32, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1610, file: !1368, line: 111, baseType: !88, size: 32, offset: 224)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1610, file: !1368, line: 112, baseType: !1617, size: 640, offset: 256)
!1617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 640, elements: !1618)
!1618 = !{!1619}
!1619 = !DISubrange(count: 10)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1610, file: !1368, line: 113, baseType: !1621, size: 256, offset: 896)
!1621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 256, elements: !886)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1367, file: !1368, line: 103, baseType: !1623, size: 640, offset: 3904)
!1623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 640, elements: !1618)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1367, file: !1368, line: 104, baseType: !1625, size: 256, offset: 4544)
!1625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 256, elements: !886)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1210, file: !153, line: 904, baseType: !1233, size: 64, offset: 9280)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1210, file: !153, line: 906, baseType: !1628, size: 64, offset: 9344)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !153, line: 906, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1210, file: !153, line: 930, baseType: !88, size: 32, offset: 9408)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1210, file: !153, line: 933, baseType: !88, size: 32, offset: 9440)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1210, file: !153, line: 935, baseType: !1633, size: 64, offset: 9472)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !177, line: 103, size: 64, elements: !1634)
!1634 = !{!1635}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1633, file: !177, line: 104, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !177, line: 101, flags: DIFlagFwdDecl)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1210, file: !153, line: 940, baseType: !779, size: 64, offset: 9536)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1210, file: !153, line: 942, baseType: !1526, size: 256, offset: 9600)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1207, file: !153, line: 986, baseType: !1641, offset: 10240)
!1641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, elements: !1642)
!1642 = !{!1643}
!1643 = !DISubrange(count: -1)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !919, file: !920, line: 882, baseType: !1206, size: 64, offset: 9792)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !919, file: !920, line: 884, baseType: !17, size: 32, offset: 9856)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !919, file: !920, line: 885, baseType: !17, size: 32, offset: 9888)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !919, file: !920, line: 886, baseType: !17, size: 32, offset: 9920)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !919, file: !920, line: 888, baseType: !17, size: 32, offset: 9952)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !919, file: !920, line: 890, baseType: !78, size: 64, offset: 9984)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !919, file: !920, line: 893, baseType: !22, size: 32, offset: 10048)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !919, file: !920, line: 896, baseType: !22, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !919, file: !920, line: 897, baseType: !22, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !919, file: !920, line: 898, baseType: !22, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !919, file: !920, line: 899, baseType: !22, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !919, file: !920, line: 919, baseType: !22, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !919, file: !920, line: 922, baseType: !22, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !919, file: !920, line: 923, baseType: !22, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !919, file: !920, line: 925, baseType: !22, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !919, file: !920, line: 939, baseType: !22, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !919, file: !920, line: 941, baseType: !22, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !919, file: !920, line: 944, baseType: !22, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !919, file: !920, line: 956, baseType: !22, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !919, file: !920, line: 962, baseType: !22, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !919, file: !920, line: 966, baseType: !22, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !919, file: !920, line: 969, baseType: !78, size: 64, offset: 10176)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !919, file: !920, line: 971, baseType: !1667, size: 448, offset: 10240)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !147, line: 25, size: 448, elements: !1668)
!1668 = !{!1669, !1670, !1675}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1667, file: !147, line: 26, baseType: !78, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1667, file: !147, line: 27, baseType: !1671, size: 64, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!463, !1674}
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, scope: !1667, file: !147, line: 28, baseType: !1676, size: 320, offset: 128)
!1676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1667, file: !147, line: 28, size: 320, elements: !1677)
!1677 = !{!1678, !1688, !1713}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1676, file: !147, line: 37, baseType: !1679, size: 320)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1676, file: !147, line: 30, size: 320, elements: !1680)
!1680 = !{!1681, !1683, !1684, !1685, !1686, !1687}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1679, file: !147, line: 31, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1679, file: !147, line: 32, baseType: !571, size: 32, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1679, file: !147, line: 33, baseType: !571, size: 32, offset: 96)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1679, file: !147, line: 34, baseType: !571, size: 32, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1679, file: !147, line: 35, baseType: !351, size: 64, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1679, file: !147, line: 36, baseType: !1682, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1676, file: !147, line: 47, baseType: !1689, size: 192)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1676, file: !147, line: 39, size: 192, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1712}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1689, file: !147, line: 40, baseType: !1077, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1689, file: !147, line: 41, baseType: !146, size: 32, offset: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1689, file: !147, line: 42, baseType: !1694, size: 64, offset: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1689, file: !147, line: 42, size: 64, elements: !1695)
!1695 = !{!1696, !1704}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1694, file: !147, line: 43, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1699, line: 7, size: 128, elements: !1700)
!1699 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1700 = !{!1701, !1703}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1698, file: !1699, line: 8, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !76, line: 93, baseType: !82)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1698, file: !1699, line: 9, baseType: !82, size: 64, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1694, file: !147, line: 44, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1707, line: 7, size: 64, elements: !1708)
!1707 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1708 = !{!1709, !1711}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1706, file: !1707, line: 8, baseType: !1710, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1707, line: 5, baseType: !1307)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1706, file: !1707, line: 9, baseType: !1307, size: 32, offset: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1689, file: !147, line: 46, baseType: !351, size: 64, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1676, file: !147, line: 55, baseType: !1714, size: 256)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1676, file: !147, line: 49, size: 256, elements: !1715)
!1715 = !{!1716, !1719, !1720, !1721, !1722}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1714, file: !147, line: 50, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !147, line: 14, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1714, file: !147, line: 51, baseType: !17, size: 32, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1714, file: !147, line: 52, baseType: !17, size: 32, offset: 96)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1714, file: !147, line: 53, baseType: !78, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1714, file: !147, line: 54, baseType: !78, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !919, file: !920, line: 973, baseType: !1724, size: 32, offset: 10688)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !64, line: 27, baseType: !1725)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !76, line: 28, baseType: !17)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !919, file: !920, line: 974, baseType: !1724, size: 32, offset: 10720)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !919, file: !920, line: 978, baseType: !78, size: 64, offset: 10752)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !919, file: !920, line: 987, baseType: !918, size: 64, offset: 10816)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !919, file: !920, line: 990, baseType: !918, size: 64, offset: 10880)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !919, file: !920, line: 995, baseType: !136, size: 128, offset: 10944)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !919, file: !920, line: 996, baseType: !136, size: 128, offset: 11072)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !919, file: !920, line: 997, baseType: !918, size: 64, offset: 11200)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !919, file: !920, line: 1005, baseType: !136, size: 128, offset: 11264)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !919, file: !920, line: 1006, baseType: !136, size: 128, offset: 11392)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !919, file: !920, line: 1009, baseType: !873, size: 64, offset: 11520)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !919, file: !920, line: 1010, baseType: !1737, size: 512, offset: 11584)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 512, elements: !886)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !919, file: !920, line: 1011, baseType: !136, size: 128, offset: 12096)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !919, file: !920, line: 1012, baseType: !136, size: 128, offset: 12224)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !919, file: !920, line: 1014, baseType: !1564, size: 64, offset: 12352)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !919, file: !920, line: 1017, baseType: !757, size: 64, offset: 12416)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !919, file: !920, line: 1020, baseType: !757, size: 64, offset: 12480)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !919, file: !920, line: 1023, baseType: !60, size: 64, offset: 12544)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !919, file: !920, line: 1025, baseType: !351, size: 64, offset: 12608)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !919, file: !920, line: 1026, baseType: !351, size: 64, offset: 12672)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !919, file: !920, line: 1031, baseType: !351, size: 64, offset: 12736)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !919, file: !920, line: 1032, baseType: !1748, size: 192, offset: 12800)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !920, line: 324, size: 192, elements: !1749)
!1749 = !{!1750, !1751, !1752}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1748, file: !920, line: 326, baseType: !351, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1748, file: !920, line: 327, baseType: !351, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1748, file: !920, line: 328, baseType: !788, size: 32, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !919, file: !920, line: 1041, baseType: !78, size: 64, offset: 12992)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !919, file: !920, line: 1042, baseType: !78, size: 64, offset: 13056)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !919, file: !920, line: 1045, baseType: !351, size: 64, offset: 13120)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !919, file: !920, line: 1048, baseType: !351, size: 64, offset: 13184)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !919, file: !920, line: 1051, baseType: !78, size: 64, offset: 13248)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !919, file: !920, line: 1052, baseType: !78, size: 64, offset: 13312)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !919, file: !920, line: 1055, baseType: !1760, size: 640, offset: 13376)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1761, line: 132, size: 640, elements: !1762)
!1761 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1762 = !{!1763, !1769, !1770}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1760, file: !1761, line: 133, baseType: !1764, size: 576)
!1764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1765, size: 576, elements: !429)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1761, line: 117, size: 192, elements: !1766)
!1766 = !{!1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1765, file: !1761, line: 118, baseType: !351, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1765, file: !1761, line: 119, baseType: !1086, size: 128, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1760, file: !1761, line: 134, baseType: !22, size: 32, offset: 576)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1760, file: !1761, line: 135, baseType: !22, size: 32, offset: 608)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !919, file: !920, line: 1058, baseType: !1772, size: 448, offset: 14016)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1761, line: 144, size: 448, elements: !1773)
!1773 = !{!1774, !1775, !1776}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1772, file: !1761, line: 145, baseType: !832, size: 128, align: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1772, file: !1761, line: 146, baseType: !775, size: 256, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1772, file: !1761, line: 147, baseType: !22, size: 32, offset: 384)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !919, file: !920, line: 1064, baseType: !1778, size: 64, offset: 14464)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1780)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1781, line: 110, size: 1472, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1832, !1833, !1834, !1842}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1780, file: !1781, line: 111, baseType: !779, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1780, file: !1781, line: 112, baseType: !508, size: 32, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1780, file: !1781, line: 113, baseType: !517, size: 32, offset: 96)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1780, file: !1781, line: 114, baseType: !508, size: 32, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1780, file: !1781, line: 115, baseType: !517, size: 32, offset: 160)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1780, file: !1781, line: 116, baseType: !508, size: 32, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1780, file: !1781, line: 117, baseType: !517, size: 32, offset: 224)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1780, file: !1781, line: 118, baseType: !508, size: 32, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1780, file: !1781, line: 119, baseType: !517, size: 32, offset: 288)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1780, file: !1781, line: 120, baseType: !22, size: 32, offset: 320)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1780, file: !1781, line: 121, baseType: !1794, size: 64, offset: 384)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1795, line: 24, baseType: !1796)
!1795 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1795, line: 24, size: 64, elements: !1797)
!1797 = !{!1798}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1796, file: !1795, line: 24, baseType: !351, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1780, file: !1781, line: 122, baseType: !1794, size: 64, offset: 448)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1780, file: !1781, line: 123, baseType: !1794, size: 64, offset: 512)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1780, file: !1781, line: 124, baseType: !1794, size: 64, offset: 576)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1780, file: !1781, line: 125, baseType: !1794, size: 64, offset: 640)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1780, file: !1781, line: 127, baseType: !126, size: 8, offset: 704)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1780, file: !1781, line: 129, baseType: !1415, size: 64, offset: 768)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1780, file: !1781, line: 130, baseType: !1415, size: 64, offset: 832)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1780, file: !1781, line: 131, baseType: !1415, size: 64, offset: 896)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1780, file: !1781, line: 132, baseType: !1415, size: 64, offset: 960)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1780, file: !1781, line: 135, baseType: !60, size: 64, offset: 1024)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1780, file: !1781, line: 137, baseType: !1810, size: 64, offset: 1088)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1812, line: 14, size: 1088, elements: !1813)
!1812 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1813 = !{!1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1811, file: !1812, line: 15, baseType: !877, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1811, file: !1812, line: 17, baseType: !1299, size: 320, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1811, file: !1812, line: 19, baseType: !78, size: 64, offset: 384)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1811, file: !1812, line: 20, baseType: !779, size: 64, offset: 448)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1811, file: !1812, line: 23, baseType: !356, size: 128, offset: 512)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1811, file: !1812, line: 24, baseType: !508, size: 32, offset: 640)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1811, file: !1812, line: 29, baseType: !779, size: 64, offset: 704)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1811, file: !1812, line: 36, baseType: !1822, size: 320, offset: 768)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1823, line: 15, size: 320, elements: !1824)
!1823 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1824 = !{!1825, !1826, !1827, !1828, !1829, !1830, !1831}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1822, file: !1823, line: 16, baseType: !788, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1822, file: !1823, line: 18, baseType: !17, size: 32, offset: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1822, file: !1823, line: 19, baseType: !17, size: 32, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1822, file: !1823, line: 20, baseType: !17, size: 32, offset: 96)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1822, file: !1823, line: 21, baseType: !17, size: 32, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1822, file: !1823, line: 22, baseType: !78, size: 64, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1822, file: !1823, line: 23, baseType: !78, size: 64, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1780, file: !1781, line: 138, baseType: !1366, size: 64, offset: 1152)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1780, file: !1781, line: 139, baseType: !1609, size: 64, offset: 1216)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1780, file: !1781, line: 140, baseType: !1835, size: 64, offset: 1280)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1781, line: 25, size: 64, elements: !1837)
!1837 = !{!1838, !1839, !1840}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1836, file: !1781, line: 26, baseType: !88, size: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1836, file: !1781, line: 27, baseType: !17, size: 32, offset: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1836, file: !1781, line: 28, baseType: !1841, offset: 64)
!1841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, elements: !1642)
!1842 = !DIDerivedType(tag: DW_TAG_member, scope: !1780, file: !1781, line: 142, baseType: !1843, size: 128, offset: 1344)
!1843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1780, file: !1781, line: 142, size: 128, elements: !1844)
!1844 = !{!1845, !1846}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1843, file: !1781, line: 143, baseType: !17, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1843, file: !1781, line: 144, baseType: !832, size: 128, align: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !919, file: !920, line: 1067, baseType: !1778, size: 64, offset: 14528)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !919, file: !920, line: 1070, baseType: !1778, size: 64, offset: 14592)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !919, file: !920, line: 1074, baseType: !1415, size: 64, offset: 14656)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !919, file: !920, line: 1084, baseType: !1851, size: 128, offset: 14720)
!1851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1852)
!1852 = !{!1853}
!1853 = !DISubrange(count: 16)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !919, file: !920, line: 1086, baseType: !1855, size: 64, offset: 14848)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !920, line: 55, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !919, file: !920, line: 1089, baseType: !1858, size: 64, offset: 14912)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1859, line: 12, size: 64, elements: !1860)
!1859 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1860 = !{!1861}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1858, file: !1859, line: 13, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1859, line: 8, flags: DIFlagFwdDecl)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !919, file: !920, line: 1090, baseType: !1865, size: 128, offset: 14976)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1866, line: 13, size: 128, elements: !1867)
!1866 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1867 = !{!1868}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1865, file: !1866, line: 14, baseType: !136, size: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !919, file: !920, line: 1097, baseType: !1870, size: 64, offset: 15104)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !920, line: 50, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !919, file: !920, line: 1100, baseType: !1873, size: 64, offset: 15168)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !920, line: 1100, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !919, file: !920, line: 1103, baseType: !1876, size: 64, offset: 15232)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !920, line: 53, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !919, file: !920, line: 1107, baseType: !1879, size: 64, offset: 15296)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1881, line: 31, size: 576, elements: !1882)
!1881 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1882 = !{!1883, !1884, !1887, !1890, !1893, !1894, !1897, !1900, !1901}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1880, file: !1881, line: 32, baseType: !877, size: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1880, file: !1881, line: 33, baseType: !1885, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1881, line: 9, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1880, file: !1881, line: 34, baseType: !1888, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1881, line: 10, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1880, file: !1881, line: 35, baseType: !1891, size: 64, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1881, line: 8, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1880, file: !1881, line: 36, baseType: !897, size: 64, offset: 256)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1880, file: !1881, line: 37, baseType: !1895, size: 64, offset: 320)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1417, line: 34, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1880, file: !1881, line: 38, baseType: !1898, size: 64, offset: 384)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1881, line: 38, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1880, file: !1881, line: 39, baseType: !1898, size: 64, offset: 448)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1880, file: !1881, line: 40, baseType: !1902, size: 64, offset: 512)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1904, line: 771, size: 384, elements: !1905)
!1904 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1905 = !{!1906, !1907, !1908, !1909}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1903, file: !1904, line: 772, baseType: !1399, size: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1903, file: !1904, line: 773, baseType: !1366, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1903, file: !1904, line: 774, baseType: !1609, size: 64, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1903, file: !1904, line: 775, baseType: !1910, size: 64, offset: 320)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1912, line: 209, size: 4736, elements: !1913)
!1912 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1913 = !{!1914, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1911, file: !1912, line: 215, baseType: !1915, size: 896)
!1915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1916, size: 896, elements: !2364)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1912, line: 152, size: 1600, elements: !1918)
!1918 = !{!1919, !2415, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2538}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1917, file: !1912, line: 154, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1912, line: 389, size: 7872, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !2315, !2332, !2333, !2337, !2338, !2339, !2340, !2341, !2342, !2361, !2362, !2366, !2367, !2368, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2402, !2405, !2406, !2413}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1921, file: !1912, line: 391, baseType: !1917, size: 1600)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1921, file: !1912, line: 393, baseType: !78, size: 64, offset: 1600)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1921, file: !1912, line: 401, baseType: !17, size: 32, offset: 1664)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1921, file: !1912, line: 404, baseType: !17, size: 32, offset: 1696)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1921, file: !1912, line: 417, baseType: !17, size: 32, offset: 1728)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1921, file: !1912, line: 418, baseType: !17, size: 32, offset: 1760)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1921, file: !1912, line: 419, baseType: !17, size: 32, offset: 1792)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1921, file: !1912, line: 432, baseType: !17, size: 32, offset: 1824)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1921, file: !1912, line: 433, baseType: !17, size: 32, offset: 1856)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1921, file: !1912, line: 434, baseType: !17, size: 32, offset: 1888)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1921, file: !1912, line: 436, baseType: !17, size: 32, offset: 1920)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1921, file: !1912, line: 439, baseType: !22, size: 32, offset: 1952)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1921, file: !1912, line: 441, baseType: !1936, size: 64, offset: 1984)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !672, line: 190, size: 1152, elements: !1938)
!1938 = !{!1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !2307, !2308, !2309, !2310, !2311, !2314}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1937, file: !672, line: 191, baseType: !88, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1937, file: !672, line: 192, baseType: !88, size: 32, offset: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1937, file: !672, line: 202, baseType: !1936, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1937, file: !672, line: 203, baseType: !57, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1937, file: !672, line: 205, baseType: !343, size: 192, align: 64, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1937, file: !672, line: 207, baseType: !1340, size: 64, offset: 384)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1937, file: !672, line: 208, baseType: !22, size: 32, offset: 448)
!1946 = !DIDerivedType(tag: DW_TAG_member, scope: !1937, file: !672, line: 209, baseType: !1947, size: 256, offset: 512)
!1947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1937, file: !672, line: 209, size: 256, elements: !1948)
!1948 = !{!1949, !1958, !1962}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1947, file: !672, line: 210, baseType: !1950, size: 256)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !672, line: 153, size: 256, elements: !1951)
!1951 = !{!1952, !1953, !1954, !1957}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1950, file: !672, line: 154, baseType: !78, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1950, file: !672, line: 156, baseType: !1092, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1950, file: !672, line: 162, baseType: !1955, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !672, line: 162, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1950, file: !672, line: 167, baseType: !78, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1947, file: !672, line: 211, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !672, line: 170, size: 64, elements: !1960)
!1960 = !{!1961}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1959, file: !672, line: 171, baseType: !1936, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1947, file: !672, line: 212, baseType: !1963, size: 256)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !672, line: 174, size: 256, elements: !1964)
!1964 = !{!1965, !2302, !2305, !2306}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1963, file: !672, line: 175, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1968)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !672, line: 271, size: 768, elements: !1969)
!1969 = !{!1970, !2275, !2279, !2280, !2281, !2282, !2283, !2287, !2288, !2289, !2290, !2298}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1968, file: !672, line: 276, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!17, !1974}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !672, line: 251, size: 1216, elements: !1976)
!1976 = !{!1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1975, file: !672, line: 253, baseType: !1936, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1975, file: !672, line: 254, baseType: !1233, size: 64, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1975, file: !672, line: 255, baseType: !763, size: 64, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1975, file: !672, line: 256, baseType: !60, size: 64, offset: 192)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1975, file: !672, line: 259, baseType: !775, size: 256, offset: 256)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1975, file: !672, line: 260, baseType: !775, size: 256, offset: 512)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1975, file: !672, line: 261, baseType: !17, size: 32, offset: 768)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1975, file: !672, line: 262, baseType: !136, size: 128, offset: 832)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1975, file: !672, line: 263, baseType: !428, size: 64, offset: 960)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1975, file: !672, line: 265, baseType: !74, size: 64, offset: 1024)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1975, file: !672, line: 266, baseType: !1411, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1975, file: !672, line: 267, baseType: !1411, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1975, file: !672, line: 268, baseType: !1990, size: 64, offset: 1152)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1992)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1993, line: 563, size: 1024, elements: !1994)
!1993 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1994 = !{!1995, !2051, !2052, !2056, !2060, !2064, !2241, !2245, !2249, !2253, !2254, !2255, !2259, !2263, !2267, !2271}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1992, file: !1993, line: 564, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !1999}
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !153, line: 625, size: 1344, elements: !2001)
!2001 = !{!2002, !2011, !2012, !2018, !2025, !2026, !2031, !2032, !2037, !2038, !2041, !2042, !2043, !2044, !2045, !2046, !2049}
!2002 = !DIDerivedType(tag: DW_TAG_member, scope: !2000, file: !153, line: 628, baseType: !2003, size: 128)
!2003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2000, file: !153, line: 628, size: 128, elements: !2004)
!2004 = !{!2005, !2010}
!2005 = !DIDerivedType(tag: DW_TAG_member, scope: !2003, file: !153, line: 629, baseType: !2006, size: 128)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2003, file: !153, line: 629, size: 128, elements: !2007)
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2006, file: !153, line: 631, baseType: !78, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2006, file: !153, line: 632, baseType: !78, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2003, file: !153, line: 635, baseType: !832, size: 128, align: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2000, file: !153, line: 639, baseType: !1206, size: 64, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2000, file: !153, line: 640, baseType: !2013, size: 64, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1242, line: 297, baseType: !2014)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1242, line: 297, size: 64, elements: !2015)
!2015 = !{!2016}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2014, file: !1242, line: 297, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1247, line: 19, baseType: !78)
!2018 = !DIDerivedType(tag: DW_TAG_member, scope: !2000, file: !153, line: 646, baseType: !2019, size: 64, offset: 256)
!2019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2000, file: !153, line: 646, size: 64, elements: !2020)
!2020 = !{!2021, !2024}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2019, file: !153, line: 647, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2023)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !153, line: 542, baseType: !78)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2019, file: !153, line: 648, baseType: !2023, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2000, file: !153, line: 666, baseType: !17, size: 32, offset: 320)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2000, file: !153, line: 667, baseType: !2027, size: 64, offset: 384)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !153, line: 579, size: 320, elements: !2029)
!2029 = !{!2030}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2028, file: !153, line: 580, baseType: !1261, size: 320)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2000, file: !153, line: 670, baseType: !1411, size: 8, offset: 448)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2000, file: !153, line: 681, baseType: !2033, size: 256, offset: 512)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2000, file: !153, line: 678, size: 256, elements: !2034)
!2034 = !{!2035, !2036}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2033, file: !153, line: 679, baseType: !343, size: 192, align: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2033, file: !153, line: 680, baseType: !78, size: 64, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2000, file: !153, line: 689, baseType: !136, size: 128, offset: 768)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2000, file: !153, line: 691, baseType: !2039, size: 64, offset: 896)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !153, line: 691, flags: DIFlagFwdDecl)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2000, file: !153, line: 694, baseType: !1990, size: 64, offset: 960)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2000, file: !153, line: 697, baseType: !78, size: 64, offset: 1024)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2000, file: !153, line: 699, baseType: !1233, size: 64, offset: 1088)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2000, file: !153, line: 700, baseType: !60, size: 64, offset: 1152)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2000, file: !153, line: 711, baseType: !779, size: 64, offset: 1216)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2000, file: !153, line: 717, baseType: !2047, size: 64, offset: 1280)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !153, line: 717, flags: DIFlagFwdDecl)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2000, file: !153, line: 722, baseType: !2050, offset: 1344)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !153, line: 570, elements: !694)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1992, file: !1993, line: 569, baseType: !1996, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1992, file: !1993, line: 571, baseType: !2053, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!17, !1999, !78}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1992, file: !1993, line: 572, baseType: !2057, size: 64, offset: 192)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!17, !1999}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1992, file: !1993, line: 578, baseType: !2061, size: 64, offset: 256)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!17, !1999, !78, !78, !78}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1992, file: !1993, line: 580, baseType: !2065, size: 64, offset: 320)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!2068, !2069}
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !153, line: 1184, baseType: !22)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1993, line: 512, size: 896, elements: !2071)
!2071 = !{!2072, !2080, !2081, !2088, !2095, !2105, !2234, !2235, !2237, !2239}
!2072 = !DIDerivedType(tag: DW_TAG_member, scope: !2070, file: !1993, line: 513, baseType: !2073, size: 320)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2070, file: !1993, line: 513, size: 320, elements: !2074)
!2074 = !{!2075, !2076, !2077, !2078, !2079}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2073, file: !1993, line: 514, baseType: !1999, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2073, file: !1993, line: 515, baseType: !911, size: 32, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2073, file: !1993, line: 516, baseType: !78, size: 64, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2073, file: !1993, line: 517, baseType: !78, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2073, file: !1993, line: 518, baseType: !78, size: 64, offset: 256)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2070, file: !1993, line: 520, baseType: !152, size: 32, offset: 320)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2070, file: !1993, line: 522, baseType: !2082, size: 64, offset: 384)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1247, line: 22, baseType: !2084)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1247, line: 22, size: 64, elements: !2085)
!2085 = !{!2086}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2084, file: !1247, line: 22, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1247, line: 15, baseType: !78)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2070, file: !1993, line: 524, baseType: !2089, size: 64, offset: 448)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1242, line: 372, baseType: !2091)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1242, line: 372, size: 64, elements: !2092)
!2092 = !{!2093}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2091, file: !1242, line: 372, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1247, line: 16, baseType: !78)
!2095 = !DIDerivedType(tag: DW_TAG_member, scope: !2070, file: !1993, line: 527, baseType: !2096, size: 64, offset: 512)
!2096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2070, file: !1993, line: 527, size: 64, elements: !2097)
!2097 = !{!2098, !2104}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2096, file: !1993, line: 528, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1247, line: 21, baseType: !2100)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1247, line: 21, size: 64, elements: !2101)
!2101 = !{!2102}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2100, file: !1247, line: 21, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1247, line: 14, baseType: !78)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2096, file: !1993, line: 529, baseType: !2083, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2070, file: !1993, line: 534, baseType: !2106, size: 64, offset: 576)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !153, line: 74, size: 512, align: 128, elements: !2108)
!2108 = !{!2109, !2110, !2228, !2233}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2107, file: !153, line: 75, baseType: !78, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, scope: !2107, file: !153, line: 83, baseType: !2111, size: 320, offset: 64)
!2111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2107, file: !153, line: 83, size: 320, elements: !2112)
!2112 = !{!2113, !2134, !2148, !2152, !2227}
!2113 = !DIDerivedType(tag: DW_TAG_member, scope: !2111, file: !153, line: 84, baseType: !2114, size: 320)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2111, file: !153, line: 84, size: 320, elements: !2115)
!2115 = !{!2116, !2127, !2128, !2133}
!2116 = !DIDerivedType(tag: DW_TAG_member, scope: !2114, file: !153, line: 90, baseType: !2117, size: 128)
!2117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2114, file: !153, line: 90, size: 128, elements: !2118)
!2118 = !{!2119, !2120, !2125, !2126}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2117, file: !153, line: 91, baseType: !136, size: 128)
!2120 = !DIDerivedType(tag: DW_TAG_member, scope: !2117, file: !153, line: 94, baseType: !2121, size: 128)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2117, file: !153, line: 94, size: 128, elements: !2122)
!2122 = !{!2123, !2124}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2121, file: !153, line: 96, baseType: !60, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2121, file: !153, line: 98, baseType: !22, size: 32, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2117, file: !153, line: 102, baseType: !136, size: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2117, file: !153, line: 103, baseType: !136, size: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2114, file: !153, line: 106, baseType: !498, size: 64, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, scope: !2114, file: !153, line: 107, baseType: !2129, size: 64, offset: 192)
!2129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2114, file: !153, line: 107, size: 64, elements: !2130)
!2130 = !{!2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2129, file: !153, line: 108, baseType: !78, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2129, file: !153, line: 109, baseType: !78, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2114, file: !153, line: 117, baseType: !78, size: 64, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, scope: !2111, file: !153, line: 119, baseType: !2135, size: 320)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2111, file: !153, line: 119, size: 320, elements: !2136)
!2136 = !{!2137, !2138, !2141, !2142, !2143}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2135, file: !153, line: 124, baseType: !78, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2135, file: !153, line: 125, baseType: !2139, size: 64, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !153, line: 125, flags: DIFlagFwdDecl)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2135, file: !153, line: 126, baseType: !78, size: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2135, file: !153, line: 127, baseType: !78, size: 64, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_member, scope: !2135, file: !153, line: 128, baseType: !2144, size: 64, offset: 256)
!2144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2135, file: !153, line: 128, size: 64, elements: !2145)
!2145 = !{!2146, !2147}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2144, file: !153, line: 133, baseType: !78, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2144, file: !153, line: 138, baseType: !779, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, scope: !2111, file: !153, line: 141, baseType: !2149, size: 64)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2111, file: !153, line: 141, size: 64, elements: !2150)
!2150 = !{!2151}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2149, file: !153, line: 142, baseType: !78, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, scope: !2111, file: !153, line: 144, baseType: !2153, size: 128)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2111, file: !153, line: 144, size: 128, elements: !2154)
!2154 = !{!2155, !2226}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2153, file: !153, line: 146, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !169, line: 126, size: 1216, elements: !2158)
!2158 = !{!2159, !2169, !2190, !2191, !2192, !2193, !2194, !2208, !2209, !2210}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2157, file: !169, line: 127, baseType: !2160, size: 384)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !169, line: 21, size: 384, elements: !2161)
!2161 = !{!2162, !2163, !2165, !2166, !2167, !2168}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2160, file: !169, line: 22, baseType: !78, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2160, file: !169, line: 23, baseType: !2164, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2160, file: !169, line: 24, baseType: !2164, size: 64, offset: 128)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2160, file: !169, line: 25, baseType: !78, size: 64, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2160, file: !169, line: 26, baseType: !78, size: 64, offset: 256)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2160, file: !169, line: 27, baseType: !78, size: 64, offset: 320)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2157, file: !169, line: 128, baseType: !2170, size: 128, offset: 384)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2171, line: 105, size: 128, elements: !2172)
!2171 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2172 = !{!2173, !2174}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2170, file: !2171, line: 110, baseType: !78, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2170, file: !2171, line: 118, baseType: !2175, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2171, line: 95, size: 448, elements: !2177)
!2177 = !{!2178, !2179, !2185, !2186, !2187, !2188, !2189}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2176, file: !2171, line: 96, baseType: !779, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2176, file: !2171, line: 97, baseType: !2180, size: 64, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2171, line: 60, baseType: !2182)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{null, !2184}
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2176, file: !2171, line: 98, baseType: !2180, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2176, file: !2171, line: 99, baseType: !1411, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2176, file: !2171, line: 100, baseType: !1411, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2176, file: !2171, line: 101, baseType: !832, size: 128, align: 64, offset: 256)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2176, file: !2171, line: 102, baseType: !2184, size: 64, offset: 384)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2157, file: !169, line: 129, baseType: !1565, size: 256, offset: 512)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2157, file: !169, line: 130, baseType: !168, size: 32, offset: 768)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2157, file: !169, line: 131, baseType: !22, size: 32, offset: 800)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2157, file: !169, line: 132, baseType: !78, size: 64, offset: 832)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2157, file: !169, line: 133, baseType: !2195, size: 64, offset: 896)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2197)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !169, line: 77, size: 192, elements: !2198)
!2198 = !{!2199, !2203, !2204}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2197, file: !169, line: 83, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !2106}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2197, file: !169, line: 89, baseType: !2065, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2197, file: !169, line: 100, baseType: !2205, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!17, !2156, !78, !78, !17}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2157, file: !169, line: 134, baseType: !60, size: 64, offset: 960)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2157, file: !169, line: 135, baseType: !17, size: 32, offset: 1024)
!2210 = !DIDerivedType(tag: DW_TAG_member, scope: !2157, file: !169, line: 136, baseType: !2211, size: 128, offset: 1088)
!2211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2157, file: !169, line: 136, size: 128, elements: !2212)
!2212 = !{!2213, !2219}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2211, file: !169, line: 137, baseType: !2214, size: 128)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2215, line: 6, size: 128, elements: !2216)
!2215 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2216 = !{!2217, !2218}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2214, file: !2215, line: 7, baseType: !351, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2214, file: !2215, line: 8, baseType: !351, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, scope: !2211, file: !169, line: 138, baseType: !2220)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2211, file: !169, line: 138, elements: !2221)
!2221 = !{!2222, !2224}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2220, file: !169, line: 138, baseType: !2223)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2220, file: !169, line: 138, elements: !694)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2220, file: !169, line: 138, baseType: !2225)
!2225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2214, elements: !1642)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2153, file: !153, line: 147, baseType: !60, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2111, file: !153, line: 161, baseType: !832, size: 128, align: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, scope: !2107, file: !153, line: 164, baseType: !2229, size: 32, offset: 384)
!2229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2107, file: !153, line: 164, size: 32, elements: !2230)
!2230 = !{!2231, !2232}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2229, file: !153, line: 169, baseType: !88, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2229, file: !153, line: 177, baseType: !22, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2107, file: !153, line: 181, baseType: !88, size: 32, offset: 416)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2070, file: !1993, line: 535, baseType: !2106, size: 64, offset: 640)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2070, file: !1993, line: 541, baseType: !2236, size: 64, offset: 704)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2070, file: !1993, line: 545, baseType: !2238, size: 64, offset: 768)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2070, file: !1993, line: 549, baseType: !2240, size: 64, offset: 832)
!2240 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1242, line: 520, baseType: !2106)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1992, file: !1993, line: 581, baseType: !2242, size: 64, offset: 384)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!2068, !2069, !22}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1992, file: !1993, line: 582, baseType: !2246, size: 64, offset: 448)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!2068, !2069, !78, !78}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1992, file: !1993, line: 584, baseType: !2250, size: 64, offset: 512)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!78, !1999}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1992, file: !1993, line: 588, baseType: !2065, size: 64, offset: 576)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1992, file: !1993, line: 591, baseType: !2065, size: 64, offset: 640)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1992, file: !1993, line: 597, baseType: !2256, size: 64, offset: 704)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!17, !1999, !78, !60, !17, !17}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1992, file: !1993, line: 603, baseType: !2260, size: 64, offset: 768)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!57, !1999}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1992, file: !1993, line: 613, baseType: !2264, size: 64, offset: 832)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!17, !1999, !2047}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1992, file: !1993, line: 625, baseType: !2268, size: 64, offset: 896)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!2047, !1999, !78}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1992, file: !1993, line: 633, baseType: !2272, size: 64, offset: 960)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!2106, !1999, !78}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1968, file: !672, line: 277, baseType: !2276, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{null, !1974}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1968, file: !672, line: 290, baseType: !813, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1968, file: !672, line: 292, baseType: !801, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1968, file: !672, line: 293, baseType: !809, size: 64, offset: 256)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1968, file: !672, line: 294, baseType: !805, size: 64, offset: 320)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1968, file: !672, line: 296, baseType: !2284, size: 64, offset: 384)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!460, !1974, !428, !74, !80}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1968, file: !672, line: 306, baseType: !74, size: 64, offset: 448)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1968, file: !672, line: 313, baseType: !1411, size: 8, offset: 512)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1968, file: !672, line: 314, baseType: !2284, size: 64, offset: 576)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1968, file: !672, line: 317, baseType: !2291, size: 64, offset: 640)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!2294, !1974, !2296}
!2294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2295, line: 59, baseType: !22)
!2295 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !672, line: 31, flags: DIFlagFwdDecl)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1968, file: !672, line: 320, baseType: !2299, size: 64, offset: 704)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!17, !1974, !1999}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1963, file: !672, line: 176, baseType: !2303, size: 64, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !672, line: 35, flags: DIFlagFwdDecl)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1963, file: !672, line: 177, baseType: !80, size: 64, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1963, file: !672, line: 178, baseType: !1936, size: 64, offset: 192)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1937, file: !672, line: 215, baseType: !60, size: 64, offset: 768)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1937, file: !672, line: 221, baseType: !351, size: 64, offset: 832)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1937, file: !672, line: 223, baseType: !65, size: 16, offset: 896)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1937, file: !672, line: 224, baseType: !63, size: 16, offset: 912)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1937, file: !672, line: 225, baseType: !2312, size: 64, offset: 960)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !672, line: 36, flags: DIFlagFwdDecl)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1937, file: !672, line: 227, baseType: !832, size: 128, align: 64, offset: 1024)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1921, file: !1912, line: 442, baseType: !2316, size: 448, offset: 2048)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1912, line: 138, size: 448, elements: !2317)
!2317 = !{!2318, !2319, !2320}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2316, file: !1912, line: 140, baseType: !1936, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !2316, file: !1912, line: 141, baseType: !78, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !2316, file: !1912, line: 142, baseType: !2321, size: 320, offset: 128)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2322, line: 11, size: 320, elements: !2323)
!2322 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2323 = !{!2324, !2325, !2326, !2331}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2321, file: !2322, line: 16, baseType: !356, size: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2321, file: !2322, line: 17, baseType: !78, size: 64, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2321, file: !2322, line: 18, baseType: !2327, size: 64, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{null, !2330}
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2321, file: !2322, line: 19, baseType: !571, size: 32, offset: 256)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1921, file: !1912, line: 443, baseType: !2316, size: 448, offset: 2496)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1921, file: !1912, line: 446, baseType: !2334, offset: 2944)
!2334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2316, elements: !2335)
!2335 = !{!2336}
!2336 = !DISubrange(count: 0)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1921, file: !1912, line: 455, baseType: !132, size: 16, offset: 2944)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1921, file: !1912, line: 456, baseType: !132, size: 16, offset: 2960)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1921, file: !1912, line: 457, baseType: !132, size: 16, offset: 2976)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1921, file: !1912, line: 458, baseType: !132, size: 16, offset: 2992)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1921, file: !1912, line: 461, baseType: !1915, size: 896, offset: 3008)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1921, file: !1912, line: 463, baseType: !2343, size: 64, offset: 3904)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1912, line: 537, size: 41664, elements: !2345)
!2345 = !{!2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2359}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !2344, file: !1912, line: 538, baseType: !1955, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !2344, file: !1912, line: 541, baseType: !22, size: 32, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !2344, file: !1912, line: 544, baseType: !17, size: 32, offset: 96)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !2344, file: !1912, line: 547, baseType: !136, size: 128, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2344, file: !1912, line: 548, baseType: !832, size: 128, align: 64, offset: 256)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2344, file: !1912, line: 555, baseType: !1921, size: 7872, offset: 384)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !2344, file: !1912, line: 558, baseType: !1920, size: 64, offset: 8256)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !2344, file: !1912, line: 561, baseType: !88, size: 32, offset: 8320)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2344, file: !1912, line: 564, baseType: !22, size: 32, offset: 8352)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !2344, file: !1912, line: 567, baseType: !2356, size: 32768, offset: 8384)
!2356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !2357)
!2357 = !{!2358}
!2358 = !DISubrange(count: 4096)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2344, file: !1912, line: 570, baseType: !2360, size: 512, offset: 41152)
!2360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !433)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1921, file: !1912, line: 469, baseType: !136, size: 128, offset: 3968)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1921, file: !1912, line: 478, baseType: !2363, size: 1792, offset: 4096)
!2363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1792, elements: !2364)
!2364 = !{!2365}
!2365 = !DISubrange(count: 14)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1921, file: !1912, line: 487, baseType: !1920, size: 64, offset: 5888)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1921, file: !1912, line: 488, baseType: !1920, size: 64, offset: 5952)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1921, file: !1912, line: 491, baseType: !2369, size: 64, offset: 6016)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1912, line: 327, size: 896, elements: !2371)
!2371 = !{!2372, !2375, !2385, !2386, !2387, !2388, !2389}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !2370, file: !1912, line: 332, baseType: !2373)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2374, line: 64, elements: !694)
!2374 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2370, file: !1912, line: 333, baseType: !2376, size: 192)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1912, line: 299, size: 192, elements: !2377)
!2377 = !{!2378}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2376, file: !1912, line: 300, baseType: !2379, size: 192)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !2380, line: 17, size: 192, elements: !2381)
!2380 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!2381 = !{!2382, !2383, !2384}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2379, file: !2380, line: 18, baseType: !351, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2379, file: !2380, line: 19, baseType: !351, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2379, file: !2380, line: 20, baseType: !353, size: 64, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2370, file: !1912, line: 339, baseType: !2376, size: 192, offset: 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !2370, file: !1912, line: 347, baseType: !2376, size: 192, offset: 384)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !2370, file: !1912, line: 353, baseType: !2376, size: 192, offset: 576)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !2370, file: !1912, line: 366, baseType: !1920, size: 64, offset: 768)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !2370, file: !1912, line: 367, baseType: !1920, size: 64, offset: 832)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1921, file: !1912, line: 492, baseType: !136, size: 128, offset: 6080)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1921, file: !1912, line: 495, baseType: !2376, size: 192, offset: 6208)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1921, file: !1912, line: 496, baseType: !2376, size: 192, offset: 6400)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1921, file: !1912, line: 497, baseType: !1748, size: 192, offset: 6592)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1921, file: !1912, line: 503, baseType: !136, size: 128, offset: 6784)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1921, file: !1912, line: 504, baseType: !775, size: 256, offset: 6912)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1921, file: !1912, line: 507, baseType: !93, size: 192, offset: 7168)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1921, file: !1912, line: 510, baseType: !1526, size: 256, offset: 7360)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1921, file: !1912, line: 513, baseType: !2399, size: 64, offset: 7616)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !2401, line: 214, elements: !694)
!2401 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1921, file: !1912, line: 516, baseType: !2403, offset: 7680)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !2404, line: 76, elements: !694)
!2404 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1921, file: !1912, line: 519, baseType: !88, size: 32, offset: 7680)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1921, file: !1912, line: 522, baseType: !2407, size: 128, offset: 7712)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1912, line: 370, size: 128, elements: !2408)
!2408 = !{!2409, !2410, !2411, !2412}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2407, file: !1912, line: 372, baseType: !1411, size: 8)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !2407, file: !1912, line: 375, baseType: !17, size: 32, offset: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !2407, file: !1912, line: 380, baseType: !17, size: 32, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !2407, file: !1912, line: 386, baseType: !17, size: 32, offset: 96)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1921, file: !1912, line: 529, baseType: !2414, offset: 7872)
!2414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1920, elements: !1642)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1917, file: !1912, line: 157, baseType: !2416, size: 64, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1912, line: 669, size: 1984, elements: !2418)
!2418 = !{!2419, !2423, !2427, !2431, !2432, !2433, !2434, !2438, !2442, !2443, !2449, !2453, !2454, !2458, !2462, !2466, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2519, !2520}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !2417, file: !1912, line: 670, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!1916, !1916}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !2417, file: !1912, line: 671, baseType: !2424, size: 64, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!17, !1916}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !2417, file: !1912, line: 672, baseType: !2428, size: 64, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{null, !1916}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !2417, file: !1912, line: 673, baseType: !2428, size: 64, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !2417, file: !1912, line: 674, baseType: !2428, size: 64, offset: 256)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !2417, file: !1912, line: 675, baseType: !2428, size: 64, offset: 320)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !2417, file: !1912, line: 676, baseType: !2435, size: 64, offset: 384)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !1916, !17}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !2417, file: !1912, line: 677, baseType: !2439, size: 64, offset: 448)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!17, !763, !1916}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !2417, file: !1912, line: 679, baseType: !2439, size: 64, offset: 512)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !2417, file: !1912, line: 682, baseType: !2444, size: 64, offset: 576)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!17, !2447}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1912, line: 30, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !2417, file: !1912, line: 683, baseType: !2450, size: 64, offset: 640)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{null, !2447}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2417, file: !1912, line: 684, baseType: !2450, size: 64, offset: 704)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !2417, file: !1912, line: 685, baseType: !2455, size: 64, offset: 768)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{null}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !2417, file: !1912, line: 686, baseType: !2459, size: 64, offset: 832)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!17, !918, !1910}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !2417, file: !1912, line: 688, baseType: !2463, size: 64, offset: 896)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{null, !918, !1910}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !2417, file: !1912, line: 689, baseType: !2467, size: 64, offset: 960)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{null, !918}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2417, file: !1912, line: 690, baseType: !2467, size: 64, offset: 1024)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2417, file: !1912, line: 691, baseType: !2467, size: 64, offset: 1088)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2417, file: !1912, line: 692, baseType: !2428, size: 64, offset: 1152)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2417, file: !1912, line: 694, baseType: !1411, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !2417, file: !1912, line: 707, baseType: !1411, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !2417, file: !1912, line: 719, baseType: !1411, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2417, file: !1912, line: 722, baseType: !17, size: 32, offset: 1248)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2417, file: !1912, line: 723, baseType: !57, size: 64, offset: 1280)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !2417, file: !1912, line: 726, baseType: !57, size: 64, offset: 1344)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2417, file: !1912, line: 729, baseType: !2343, size: 64, offset: 1408)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !2417, file: !1912, line: 732, baseType: !902, size: 192, offset: 1472)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !2417, file: !1912, line: 738, baseType: !136, size: 128, offset: 1664)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !2417, file: !1912, line: 744, baseType: !2483, size: 64, offset: 1792)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1912, line: 580, size: 1728, elements: !2485)
!2485 = !{!2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2495, !2496, !2497, !2501, !2505, !2506, !2507, !2508, !2509, !2513, !2517, !2518}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2484, file: !1912, line: 586, baseType: !2360, size: 512)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2484, file: !1912, line: 587, baseType: !78, size: 64, offset: 512)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2484, file: !1912, line: 593, baseType: !74, size: 64, offset: 576)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2484, file: !1912, line: 596, baseType: !22, size: 32, offset: 640)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !2484, file: !1912, line: 604, baseType: !22, size: 32, offset: 672)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2484, file: !1912, line: 610, baseType: !2416, size: 64, offset: 704)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2484, file: !1912, line: 611, baseType: !136, size: 128, offset: 768)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !2484, file: !1912, line: 612, baseType: !2494, size: 64, offset: 896)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2484, file: !1912, line: 614, baseType: !1971, size: 64, offset: 960)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2484, file: !1912, line: 615, baseType: !2276, size: 64, offset: 1024)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !2484, file: !1912, line: 621, baseType: !2498, size: 64, offset: 1088)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!351, !1916, !2483}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !2484, file: !1912, line: 625, baseType: !2502, size: 64, offset: 1152)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!785, !1916, !2483}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2484, file: !1912, line: 628, baseType: !813, size: 64, offset: 1216)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2484, file: !1912, line: 631, baseType: !801, size: 64, offset: 1280)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2484, file: !1912, line: 632, baseType: !809, size: 64, offset: 1344)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2484, file: !1912, line: 633, baseType: !805, size: 64, offset: 1408)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !2484, file: !1912, line: 640, baseType: !2510, size: 64, offset: 1472)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!17, !1916, !2483, !351}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !2484, file: !1912, line: 645, baseType: !2514, size: 64, offset: 1536)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!17, !1916, !2483, !785}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2484, file: !1912, line: 654, baseType: !2284, size: 64, offset: 1600)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2484, file: !1912, line: 657, baseType: !2291, size: 64, offset: 1664)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !2417, file: !1912, line: 745, baseType: !2483, size: 64, offset: 1856)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !2417, file: !1912, line: 754, baseType: !22, size: 32, offset: 1920)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1917, file: !1912, line: 160, baseType: !2170, size: 128, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1917, file: !1912, line: 163, baseType: !136, size: 128, offset: 256)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1917, file: !1912, line: 164, baseType: !136, size: 128, offset: 384)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1917, file: !1912, line: 167, baseType: !136, size: 128, offset: 512)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1917, file: !1912, line: 173, baseType: !17, size: 32, offset: 640)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1917, file: !1912, line: 175, baseType: !22, size: 32, offset: 672)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1917, file: !1912, line: 183, baseType: !351, size: 64, offset: 704)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1917, file: !1912, line: 189, baseType: !88, size: 32, offset: 768)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1917, file: !1912, line: 192, baseType: !1526, size: 256, offset: 832)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1917, file: !1912, line: 193, baseType: !2531, size: 448, offset: 1088)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1527, line: 120, size: 448, elements: !2532)
!2532 = !{!2533, !2534, !2535}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2531, file: !1527, line: 121, baseType: !1526, size: 256)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2531, file: !1527, line: 122, baseType: !832, size: 128, align: 64, offset: 256)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2531, file: !1527, line: 125, baseType: !2536, size: 64, offset: 384)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1527, line: 18, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1917, file: !1912, line: 199, baseType: !1916, size: 64, offset: 1536)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1911, file: !1912, line: 218, baseType: !877, size: 32, offset: 896)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1911, file: !1912, line: 226, baseType: !1910, size: 64, offset: 960)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1911, file: !1912, line: 229, baseType: !1920, size: 64, offset: 1024)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1911, file: !1912, line: 232, baseType: !17, size: 32, offset: 1088)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1911, file: !1912, line: 241, baseType: !136, size: 128, offset: 1152)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1911, file: !1912, line: 242, baseType: !136, size: 128, offset: 1280)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1911, file: !1912, line: 243, baseType: !136, size: 128, offset: 1408)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1911, file: !1912, line: 246, baseType: !136, size: 128, offset: 1536)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1911, file: !1912, line: 255, baseType: !2363, size: 1792, offset: 1664)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1911, file: !1912, line: 258, baseType: !136, size: 128, offset: 3456)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1911, file: !1912, line: 259, baseType: !136, size: 128, offset: 3584)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1911, file: !1912, line: 265, baseType: !356, size: 128, offset: 3712)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1911, file: !1912, line: 271, baseType: !136, size: 128, offset: 3840)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1911, file: !1912, line: 277, baseType: !136, size: 128, offset: 3968)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1911, file: !1912, line: 278, baseType: !136, size: 128, offset: 4096)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1911, file: !1912, line: 279, baseType: !136, size: 128, offset: 4224)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1911, file: !1912, line: 288, baseType: !1920, size: 64, offset: 4352)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1911, file: !1912, line: 289, baseType: !1920, size: 64, offset: 4416)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1911, file: !1912, line: 290, baseType: !1910, size: 64, offset: 4480)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1911, file: !1912, line: 293, baseType: !1411, size: 8, offset: 4544)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1911, file: !1912, line: 296, baseType: !832, size: 128, align: 64, offset: 4608)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !919, file: !920, line: 1110, baseType: !2561, size: 64, offset: 15360)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2563, line: 93, size: 8768, elements: !2564)
!2563 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2564 = !{!2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2615, !2624, !2625, !2627, !2628, !2629, !2632, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2670, !2671, !2678, !2688, !2751, !2752, !2755, !2756, !2757, !2758, !2759, !2760}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2562, file: !2563, line: 94, baseType: !877, size: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2562, file: !2563, line: 95, baseType: !88, size: 32, offset: 32)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2562, file: !2563, line: 96, baseType: !17, size: 32, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2562, file: !2563, line: 97, baseType: !17, size: 32, offset: 96)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2562, file: !2563, line: 98, baseType: !136, size: 128, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2562, file: !2563, line: 100, baseType: !93, size: 192, offset: 256)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2562, file: !2563, line: 103, baseType: !918, size: 64, offset: 448)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2562, file: !2563, line: 106, baseType: !2573, size: 192, offset: 512)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2574, line: 32, size: 192, elements: !2575)
!2574 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2575 = !{!2576, !2577}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2573, file: !2574, line: 33, baseType: !136, size: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2573, file: !2574, line: 34, baseType: !2578, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2579, line: 25, baseType: !2580)
!2579 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2579, line: 23, size: 64, elements: !2581)
!2581 = !{!2582}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2580, file: !2579, line: 24, baseType: !1157, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2562, file: !2563, line: 109, baseType: !688, size: 64, offset: 704)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2562, file: !2563, line: 112, baseType: !17, size: 32, offset: 768)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2562, file: !2563, line: 114, baseType: !17, size: 32, offset: 800)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2562, file: !2563, line: 115, baseType: !918, size: 64, offset: 832)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2562, file: !2563, line: 118, baseType: !17, size: 32, offset: 896)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2562, file: !2563, line: 119, baseType: !22, size: 32, offset: 928)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2562, file: !2563, line: 121, baseType: !2590, size: 64, offset: 960)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2563, line: 80, size: 448, elements: !2592)
!2592 = !{!2593, !2594, !2600}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2591, file: !2563, line: 81, baseType: !88, size: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2591, file: !2563, line: 82, baseType: !2595, size: 128, offset: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2563, line: 75, size: 128, elements: !2596)
!2596 = !{!2597, !2598}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2595, file: !2563, line: 76, baseType: !918, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2595, file: !2563, line: 77, baseType: !2599, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2591, file: !2563, line: 83, baseType: !1565, size: 256, offset: 192)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2562, file: !2563, line: 132, baseType: !22, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2562, file: !2563, line: 133, baseType: !22, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2562, file: !2563, line: 138, baseType: !22, size: 32, offset: 1056)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2562, file: !2563, line: 139, baseType: !136, size: 128, offset: 1088)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2562, file: !2563, line: 142, baseType: !1030, size: 512, offset: 1216)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2562, file: !2563, line: 143, baseType: !1038, size: 64, offset: 1728)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2562, file: !2563, line: 150, baseType: !2608, size: 256, offset: 1792)
!2608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2609, size: 256, elements: !2613)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2563, line: 38, size: 128, elements: !2610)
!2610 = !{!2611, !2612}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2609, file: !2563, line: 39, baseType: !351, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2609, file: !2563, line: 40, baseType: !351, size: 64, offset: 64)
!2613 = !{!2614}
!2614 = !DISubrange(count: 2)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2562, file: !2563, line: 156, baseType: !2616, size: 192, offset: 2048)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2563, line: 66, size: 192, elements: !2617)
!2617 = !{!2618}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2616, file: !2563, line: 67, baseType: !2619, size: 192)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2563, line: 47, size: 192, elements: !2620)
!2620 = !{!2621, !2622, !2623}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2619, file: !2563, line: 48, baseType: !781, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2619, file: !2563, line: 49, baseType: !781, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2619, file: !2563, line: 50, baseType: !781, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2562, file: !2563, line: 160, baseType: !1760, size: 640, offset: 2240)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2562, file: !2563, line: 163, baseType: !2626, size: 256, offset: 2880)
!2626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !873, size: 256, elements: !886)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2562, file: !2563, line: 169, baseType: !873, size: 64, offset: 3136)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2562, file: !2563, line: 172, baseType: !17, size: 32, offset: 3200)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2562, file: !2563, line: 174, baseType: !2630, size: 64, offset: 3264)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2563, line: 174, flags: DIFlagFwdDecl)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2562, file: !2563, line: 185, baseType: !2633, size: 64, offset: 3328)
!2633 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !544, line: 860, baseType: !2634)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !544, line: 853, size: 64, elements: !2635)
!2635 = !{!2636, !2637}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2634, file: !544, line: 858, baseType: !543, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2634, file: !544, line: 859, baseType: !98, size: 32, offset: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2562, file: !2563, line: 186, baseType: !351, size: 64, offset: 3392)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2562, file: !2563, line: 186, baseType: !351, size: 64, offset: 3456)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2562, file: !2563, line: 186, baseType: !351, size: 64, offset: 3520)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2562, file: !2563, line: 186, baseType: !351, size: 64, offset: 3584)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2562, file: !2563, line: 187, baseType: !351, size: 64, offset: 3648)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2562, file: !2563, line: 188, baseType: !351, size: 64, offset: 3712)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2562, file: !2563, line: 189, baseType: !1748, size: 192, offset: 3776)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2562, file: !2563, line: 190, baseType: !78, size: 64, offset: 3968)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2562, file: !2563, line: 190, baseType: !78, size: 64, offset: 4032)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2562, file: !2563, line: 190, baseType: !78, size: 64, offset: 4096)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2562, file: !2563, line: 190, baseType: !78, size: 64, offset: 4160)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2562, file: !2563, line: 191, baseType: !78, size: 64, offset: 4224)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2562, file: !2563, line: 191, baseType: !78, size: 64, offset: 4288)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2562, file: !2563, line: 191, baseType: !78, size: 64, offset: 4352)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2562, file: !2563, line: 191, baseType: !78, size: 64, offset: 4416)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2562, file: !2563, line: 192, baseType: !78, size: 64, offset: 4480)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2562, file: !2563, line: 192, baseType: !78, size: 64, offset: 4544)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2562, file: !2563, line: 192, baseType: !78, size: 64, offset: 4608)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2562, file: !2563, line: 192, baseType: !78, size: 64, offset: 4672)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2562, file: !2563, line: 193, baseType: !78, size: 64, offset: 4736)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2562, file: !2563, line: 193, baseType: !78, size: 64, offset: 4800)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2562, file: !2563, line: 194, baseType: !2660, size: 448, offset: 4864)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2661, line: 12, size: 448, elements: !2662)
!2661 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2662 = !{!2663, !2664, !2665, !2666, !2667, !2668, !2669}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2660, file: !2661, line: 15, baseType: !351, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2660, file: !2661, line: 17, baseType: !351, size: 64, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2660, file: !2661, line: 19, baseType: !351, size: 64, offset: 128)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2660, file: !2661, line: 21, baseType: !351, size: 64, offset: 192)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2660, file: !2661, line: 29, baseType: !351, size: 64, offset: 256)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2660, file: !2661, line: 35, baseType: !351, size: 64, offset: 320)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2660, file: !2661, line: 44, baseType: !351, size: 64, offset: 384)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2562, file: !2563, line: 202, baseType: !353, size: 64, offset: 5312)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2562, file: !2563, line: 213, baseType: !2672, size: 2048, offset: 5376)
!2672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2673, size: 2048, elements: !1852)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2674, line: 43, size: 128, elements: !2675)
!2674 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2675 = !{!2676, !2677}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2673, file: !2674, line: 44, baseType: !77, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2673, file: !2674, line: 45, baseType: !77, size: 64, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2562, file: !2563, line: 216, baseType: !2679, size: 448, offset: 7424)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2563, line: 30, size: 448, elements: !2680)
!2680 = !{!2681, !2682, !2683, !2684, !2685, !2686, !2687}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2679, file: !2563, line: 31, baseType: !17, size: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2679, file: !2563, line: 32, baseType: !463, size: 64, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2679, file: !2563, line: 33, baseType: !78, size: 64, offset: 128)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2679, file: !2563, line: 34, baseType: !351, size: 64, offset: 192)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2679, file: !2563, line: 34, baseType: !351, size: 64, offset: 256)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2679, file: !2563, line: 35, baseType: !78, size: 64, offset: 320)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2679, file: !2563, line: 35, baseType: !78, size: 64, offset: 384)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2562, file: !2563, line: 219, baseType: !2689, size: 64, offset: 7872)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2691, line: 41, size: 3456, elements: !2692)
!2691 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2692 = !{!2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2707, !2708, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2690, file: !2691, line: 47, baseType: !133, size: 16)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2690, file: !2691, line: 48, baseType: !572, size: 32, offset: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2690, file: !2691, line: 54, baseType: !124, size: 8, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2690, file: !2691, line: 55, baseType: !124, size: 8, offset: 72)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2690, file: !2691, line: 73, baseType: !352, size: 64, align: 64, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2690, file: !2691, line: 74, baseType: !352, size: 64, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2690, file: !2691, line: 81, baseType: !352, size: 64, offset: 256)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2690, file: !2691, line: 82, baseType: !352, size: 64, offset: 320)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2690, file: !2691, line: 85, baseType: !352, size: 64, offset: 384)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2690, file: !2691, line: 86, baseType: !352, size: 64, offset: 448)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2690, file: !2691, line: 94, baseType: !352, size: 64, offset: 512)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2690, file: !2691, line: 102, baseType: !352, size: 64, offset: 576)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2690, file: !2691, line: 107, baseType: !2706, size: 256, offset: 640)
!2706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !581)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2690, file: !2691, line: 108, baseType: !124, size: 8, align: 64, offset: 896)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2690, file: !2691, line: 110, baseType: !2709, size: 24, offset: 904)
!2709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 24, elements: !429)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2690, file: !2691, line: 111, baseType: !572, size: 32, align: 64, offset: 960)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2690, file: !2691, line: 113, baseType: !572, size: 32, offset: 992)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2690, file: !2691, line: 114, baseType: !572, size: 32, offset: 1024)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2690, file: !2691, line: 115, baseType: !572, size: 32, offset: 1056)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2690, file: !2691, line: 117, baseType: !572, size: 32, offset: 1088)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2690, file: !2691, line: 118, baseType: !352, size: 64, align: 64, offset: 1152)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2690, file: !2691, line: 120, baseType: !352, size: 64, offset: 1216)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2690, file: !2691, line: 121, baseType: !352, size: 64, offset: 1280)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2690, file: !2691, line: 122, baseType: !352, size: 64, offset: 1344)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2690, file: !2691, line: 123, baseType: !352, size: 64, offset: 1408)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2690, file: !2691, line: 133, baseType: !352, size: 64, offset: 1472)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2690, file: !2691, line: 137, baseType: !352, size: 64, offset: 1536)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2690, file: !2691, line: 142, baseType: !352, size: 64, offset: 1600)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2690, file: !2691, line: 143, baseType: !352, size: 64, offset: 1664)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2690, file: !2691, line: 146, baseType: !352, size: 64, offset: 1728)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2690, file: !2691, line: 147, baseType: !352, size: 64, offset: 1792)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2690, file: !2691, line: 148, baseType: !352, size: 64, offset: 1856)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2690, file: !2691, line: 149, baseType: !352, size: 64, offset: 1920)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2690, file: !2691, line: 154, baseType: !352, size: 64, offset: 1984)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2690, file: !2691, line: 155, baseType: !352, size: 64, offset: 2048)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2690, file: !2691, line: 156, baseType: !352, size: 64, offset: 2112)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2690, file: !2691, line: 158, baseType: !352, size: 64, offset: 2176)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2690, file: !2691, line: 159, baseType: !352, size: 64, offset: 2240)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2690, file: !2691, line: 162, baseType: !352, size: 64, offset: 2304)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2690, file: !2691, line: 163, baseType: !352, size: 64, offset: 2368)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2690, file: !2691, line: 164, baseType: !352, size: 64, offset: 2432)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2690, file: !2691, line: 167, baseType: !352, size: 64, offset: 2496)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2690, file: !2691, line: 168, baseType: !352, size: 64, offset: 2560)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2690, file: !2691, line: 171, baseType: !352, size: 64, offset: 2624)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2690, file: !2691, line: 172, baseType: !352, size: 64, offset: 2688)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2690, file: !2691, line: 175, baseType: !352, size: 64, offset: 2752)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2690, file: !2691, line: 178, baseType: !352, size: 64, offset: 2816)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2690, file: !2691, line: 179, baseType: !352, size: 64, offset: 2880)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2690, file: !2691, line: 182, baseType: !572, size: 32, offset: 2944)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2690, file: !2691, line: 186, baseType: !352, size: 64, align: 64, offset: 3008)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2690, file: !2691, line: 194, baseType: !352, size: 64, offset: 3072)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2690, file: !2691, line: 195, baseType: !352, size: 64, offset: 3136)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2690, file: !2691, line: 199, baseType: !352, size: 64, offset: 3200)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2690, file: !2691, line: 200, baseType: !352, size: 64, offset: 3264)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2690, file: !2691, line: 203, baseType: !352, size: 64, offset: 3328)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2690, file: !2691, line: 204, baseType: !352, size: 64, offset: 3392)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2562, file: !2563, line: 222, baseType: !22, size: 32, offset: 7936)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2562, file: !2563, line: 223, baseType: !2753, size: 64, offset: 8000)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2563, line: 223, flags: DIFlagFwdDecl)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2562, file: !2563, line: 230, baseType: !1411, size: 8, offset: 8064)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2562, file: !2563, line: 231, baseType: !1359, size: 16, offset: 8080)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2562, file: !2563, line: 232, baseType: !1359, size: 16, offset: 8096)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2562, file: !2563, line: 234, baseType: !1206, size: 64, offset: 8128)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2562, file: !2563, line: 237, baseType: !775, size: 256, offset: 8192)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2562, file: !2563, line: 243, baseType: !1261, size: 320, offset: 8448)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !919, file: !920, line: 1111, baseType: !2762, size: 64, offset: 15424)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2563, line: 20, size: 16640, elements: !2764)
!2764 = !{!2765, !2766, !2767, !2768}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2763, file: !2563, line: 21, baseType: !98, size: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2763, file: !2563, line: 22, baseType: !877, size: 32, offset: 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2763, file: !2563, line: 23, baseType: !93, size: 192, offset: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2763, file: !2563, line: 24, baseType: !2769, size: 16384, offset: 256)
!2769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2770, size: 16384, elements: !433)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2574, line: 51, size: 256, elements: !2771)
!2771 = !{!2772}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2770, file: !2574, line: 52, baseType: !2773, size: 256)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2574, line: 37, size: 256, elements: !2774)
!2774 = !{!2775, !2782, !2783, !2787}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2773, file: !2574, line: 39, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2777, line: 83, baseType: !2778)
!2777 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2777, line: 82, baseType: !2780)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{null, !17}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2773, file: !2574, line: 40, baseType: !78, size: 64, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2773, file: !2574, line: 46, baseType: !2784, size: 64, offset: 128)
!2784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2777, line: 86, baseType: !2785)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2777, line: 85, baseType: !2456)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2773, file: !2574, line: 48, baseType: !2578, size: 64, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !919, file: !920, line: 1112, baseType: !2578, size: 64, offset: 15488)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !919, file: !920, line: 1113, baseType: !2578, size: 64, offset: 15552)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !919, file: !920, line: 1115, baseType: !2578, size: 64, offset: 15616)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !919, file: !920, line: 1116, baseType: !2573, size: 192, offset: 15680)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !919, file: !920, line: 1117, baseType: !78, size: 64, offset: 15872)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !919, file: !920, line: 1118, baseType: !74, size: 64, offset: 15936)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !919, file: !920, line: 1119, baseType: !22, size: 32, offset: 16000)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !919, file: !920, line: 1121, baseType: !835, size: 64, offset: 16064)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !919, file: !920, line: 1125, baseType: !2797, size: 64, offset: 16128)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !920, line: 43, flags: DIFlagFwdDecl)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !919, file: !920, line: 1127, baseType: !508, size: 32, offset: 16192)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !919, file: !920, line: 1128, baseType: !22, size: 32, offset: 16224)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !919, file: !920, line: 1130, baseType: !2802, size: 128, offset: 16256)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2803, line: 37, size: 128, elements: !2804)
!2803 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2804 = !{!2805, !2806, !2807}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2802, file: !2803, line: 38, baseType: !17, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2802, file: !2803, line: 39, baseType: !88, size: 32, offset: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2802, file: !2803, line: 40, baseType: !2808, size: 64, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2803, line: 24, flags: DIFlagFwdDecl)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !919, file: !920, line: 1131, baseType: !2811, size: 256, offset: 16384)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2812, line: 12, size: 256, elements: !2813)
!2812 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2813 = !{!2814, !2815, !2816, !2817}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2811, file: !2812, line: 13, baseType: !428, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2811, file: !2812, line: 14, baseType: !78, size: 64, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2811, file: !2812, line: 15, baseType: !78, size: 64, offset: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2811, file: !2812, line: 16, baseType: !1411, size: 8, offset: 192)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !919, file: !920, line: 1134, baseType: !351, size: 64, offset: 16640)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !919, file: !920, line: 1135, baseType: !351, size: 64, offset: 16704)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !919, file: !920, line: 1138, baseType: !98, size: 32, offset: 16768)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !919, file: !920, line: 1141, baseType: !788, size: 32, offset: 16800)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !919, file: !920, line: 1143, baseType: !2823, size: 64, offset: 16832)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !920, line: 735, size: 64, elements: !2824)
!2824 = !{!2825}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2823, file: !920, line: 736, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !919, file: !920, line: 1147, baseType: !1089, size: 128, offset: 16896)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !919, file: !920, line: 1149, baseType: !918, size: 64, offset: 17024)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !919, file: !920, line: 1151, baseType: !2830, size: 64, offset: 17088)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !920, line: 1151, flags: DIFlagFwdDecl)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !919, file: !920, line: 1188, baseType: !60, size: 64, offset: 17152)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !919, file: !920, line: 1191, baseType: !2834, size: 64, offset: 17216)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !920, line: 44, flags: DIFlagFwdDecl)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !919, file: !920, line: 1194, baseType: !2837, size: 64, offset: 17280)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !920, line: 45, flags: DIFlagFwdDecl)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !919, file: !920, line: 1197, baseType: !2840, size: 64, offset: 17344)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !920, line: 61, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !919, file: !920, line: 1199, baseType: !2843, size: 64, offset: 17408)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2845, line: 99, size: 128, elements: !2846)
!2845 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2846 = !{!2847, !2848, !2849}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2844, file: !2845, line: 100, baseType: !779, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2844, file: !2845, line: 101, baseType: !88, size: 32, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2844, file: !2845, line: 103, baseType: !65, size: 16, offset: 96)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !919, file: !920, line: 1202, baseType: !2851, size: 64, offset: 17472)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !920, line: 48, flags: DIFlagFwdDecl)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !919, file: !920, line: 1205, baseType: !78, size: 64, offset: 17536)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !919, file: !920, line: 1206, baseType: !2855, size: 64, offset: 17600)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2574, line: 14, baseType: !2857)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2574, line: 12, size: 384, elements: !2858)
!2858 = !{!2859}
!2859 = !DIDerivedType(tag: DW_TAG_member, scope: !2857, file: !2574, line: 13, baseType: !2860, size: 384)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2857, file: !2574, line: 13, size: 384, elements: !2861)
!2861 = !{!2862, !2863, !2864, !2865}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2860, file: !2574, line: 13, baseType: !17, size: 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2860, file: !2574, line: 13, baseType: !17, size: 32, offset: 32)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2860, file: !2574, line: 13, baseType: !17, size: 32, offset: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2860, file: !2574, line: 13, baseType: !2866, size: 256, offset: 128)
!2866 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2867, line: 37, size: 256, elements: !2868)
!2867 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2868 = !{!2869, !2874, !2887, !2893, !2902, !2929, !2934}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2866, file: !2867, line: 42, baseType: !2870, size: 64)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2866, file: !2867, line: 39, size: 64, elements: !2871)
!2871 = !{!2872, !2873}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2870, file: !2867, line: 40, baseType: !1725, size: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2870, file: !2867, line: 41, baseType: !514, size: 32, offset: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2866, file: !2867, line: 50, baseType: !2875, size: 192)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2866, file: !2867, line: 45, size: 192, elements: !2876)
!2876 = !{!2877, !2879, !2880, !2886}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2875, file: !2867, line: 46, baseType: !2878, size: 32)
!2878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !76, line: 95, baseType: !17)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2875, file: !2867, line: 47, baseType: !17, size: 32, offset: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2875, file: !2867, line: 48, baseType: !2881, size: 64, offset: 64)
!2881 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2867, line: 11, baseType: !2882)
!2882 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2867, line: 8, size: 64, elements: !2883)
!2883 = !{!2884, !2885}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2882, file: !2867, line: 9, baseType: !17, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2882, file: !2867, line: 10, baseType: !60, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2875, file: !2867, line: 49, baseType: !17, size: 32, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2866, file: !2867, line: 57, baseType: !2888, size: 128)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2866, file: !2867, line: 53, size: 128, elements: !2889)
!2889 = !{!2890, !2891, !2892}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2888, file: !2867, line: 54, baseType: !1725, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2888, file: !2867, line: 55, baseType: !514, size: 32, offset: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2888, file: !2867, line: 56, baseType: !2881, size: 64, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2866, file: !2867, line: 66, baseType: !2894, size: 256)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2866, file: !2867, line: 60, size: 256, elements: !2895)
!2895 = !{!2896, !2897, !2898, !2899, !2901}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2894, file: !2867, line: 61, baseType: !1725, size: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2894, file: !2867, line: 62, baseType: !514, size: 32, offset: 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2894, file: !2867, line: 63, baseType: !17, size: 32, offset: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2894, file: !2867, line: 64, baseType: !2900, size: 64, offset: 128)
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !76, line: 94, baseType: !462)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2894, file: !2867, line: 65, baseType: !2900, size: 64, offset: 192)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2866, file: !2867, line: 105, baseType: !2903, size: 256)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2866, file: !2867, line: 69, size: 256, elements: !2904)
!2904 = !{!2905, !2906}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2903, file: !2867, line: 70, baseType: !60, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, scope: !2903, file: !2867, line: 79, baseType: !2907, size: 192, offset: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2903, file: !2867, line: 79, size: 192, elements: !2908)
!2908 = !{!2909, !2910, !2911, !2918, !2923}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2907, file: !2867, line: 81, baseType: !17, size: 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2907, file: !2867, line: 86, baseType: !1359, size: 16)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2907, file: !2867, line: 92, baseType: !2912, size: 192)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2907, file: !2867, line: 88, size: 192, elements: !2913)
!2913 = !{!2914, !2916, !2917}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2912, file: !2867, line: 89, baseType: !2915, size: 64)
!2915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1073)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2912, file: !2867, line: 90, baseType: !60, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2912, file: !2867, line: 91, baseType: !60, size: 64, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2907, file: !2867, line: 97, baseType: !2919, size: 96)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2907, file: !2867, line: 94, size: 96, elements: !2920)
!2920 = !{!2921, !2922}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2919, file: !2867, line: 95, baseType: !2915, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2919, file: !2867, line: 96, baseType: !572, size: 32, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2907, file: !2867, line: 103, baseType: !2924, size: 128)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2907, file: !2867, line: 99, size: 128, elements: !2925)
!2925 = !{!2926, !2927, !2928}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2924, file: !2867, line: 100, baseType: !78, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2924, file: !2867, line: 101, baseType: !572, size: 32, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2924, file: !2867, line: 102, baseType: !572, size: 32, offset: 96)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2866, file: !2867, line: 111, baseType: !2930, size: 128)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2866, file: !2867, line: 108, size: 128, elements: !2931)
!2931 = !{!2932, !2933}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2930, file: !2867, line: 109, baseType: !463, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2930, file: !2867, line: 110, baseType: !17, size: 32, offset: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2866, file: !2867, line: 118, baseType: !2935, size: 128)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2866, file: !2867, line: 114, size: 128, elements: !2936)
!2936 = !{!2937, !2938, !2939}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2935, file: !2867, line: 115, baseType: !60, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2935, file: !2867, line: 116, baseType: !17, size: 32, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2935, file: !2867, line: 117, baseType: !22, size: 32, offset: 96)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !919, file: !920, line: 1208, baseType: !2660, size: 448, offset: 17664)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !919, file: !920, line: 1215, baseType: !351, size: 64, offset: 18112)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !919, file: !920, line: 1217, baseType: !351, size: 64, offset: 18176)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !919, file: !920, line: 1219, baseType: !351, size: 64, offset: 18240)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !919, file: !920, line: 1223, baseType: !2945, size: 64, offset: 18304)
!2945 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2946, line: 99, baseType: !2947)
!2946 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2946, line: 99, size: 64, elements: !2948)
!2948 = !{!2949}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2947, file: !2946, line: 99, baseType: !1157, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !919, file: !920, line: 1225, baseType: !543, size: 32, offset: 18368)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !919, file: !920, line: 1226, baseType: !17, size: 32, offset: 18400)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !919, file: !920, line: 1227, baseType: !17, size: 32, offset: 18432)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !919, file: !920, line: 1231, baseType: !1910, size: 64, offset: 18496)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !919, file: !920, line: 1233, baseType: !136, size: 128, offset: 18560)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !919, file: !920, line: 1240, baseType: !2956, size: 64, offset: 18688)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !920, line: 62, flags: DIFlagFwdDecl)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !919, file: !920, line: 1242, baseType: !2959, size: 64, offset: 18752)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !920, line: 1242, flags: DIFlagFwdDecl)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !919, file: !920, line: 1244, baseType: !136, size: 128, offset: 18816)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !919, file: !920, line: 1245, baseType: !2963, size: 64, offset: 18944)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !920, line: 51, flags: DIFlagFwdDecl)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !919, file: !920, line: 1246, baseType: !775, size: 256, offset: 19008)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !919, file: !920, line: 1247, baseType: !22, size: 32, offset: 19264)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !919, file: !920, line: 1250, baseType: !2968, size: 64, offset: 19328)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !264, line: 912, size: 1792, elements: !2970)
!2970 = !{!2971, !2972, !2973, !2974, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2969, file: !264, line: 917, baseType: !788, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2969, file: !264, line: 923, baseType: !775, size: 256, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !2969, file: !264, line: 925, baseType: !136, size: 128, offset: 320)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !2969, file: !264, line: 926, baseType: !2975, size: 128, offset: 448)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !264, line: 901, size: 128, elements: !2976)
!2976 = !{!2977, !2978}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !2975, file: !264, line: 902, baseType: !1092, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2975, file: !264, line: 903, baseType: !351, size: 64, offset: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !2969, file: !264, line: 927, baseType: !2975, size: 128, offset: 576)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !2969, file: !264, line: 928, baseType: !136, size: 128, offset: 704)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2969, file: !264, line: 930, baseType: !17, size: 32, offset: 832)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !2969, file: !264, line: 931, baseType: !17, size: 32, offset: 864)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !2969, file: !264, line: 932, baseType: !17, size: 32, offset: 896)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !2969, file: !264, line: 934, baseType: !17, size: 32, offset: 928)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !2969, file: !264, line: 935, baseType: !17, size: 32, offset: 960)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !2969, file: !264, line: 936, baseType: !17, size: 32, offset: 992)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !2969, file: !264, line: 937, baseType: !17, size: 32, offset: 1024)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2969, file: !264, line: 939, baseType: !877, size: 32, offset: 1056)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2969, file: !264, line: 940, baseType: !918, size: 64, offset: 1088)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2969, file: !264, line: 945, baseType: !351, size: 64, offset: 1152)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !2969, file: !264, line: 946, baseType: !351, size: 64, offset: 1216)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !2969, file: !264, line: 947, baseType: !351, size: 64, offset: 1280)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !2969, file: !264, line: 953, baseType: !2968, size: 64, offset: 1344)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !2969, file: !264, line: 954, baseType: !351, size: 64, offset: 1408)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !2969, file: !264, line: 955, baseType: !351, size: 64, offset: 1472)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !2969, file: !264, line: 956, baseType: !17, size: 32, offset: 1536)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !2969, file: !264, line: 958, baseType: !17, size: 32, offset: 1568)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2969, file: !264, line: 960, baseType: !832, size: 128, align: 64, offset: 1600)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !2969, file: !264, line: 968, baseType: !3000, size: 64, offset: 1728)
!3000 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3001, line: 12, baseType: !3002)
!3001 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3001, line: 10, size: 64, elements: !3003)
!3003 = !{!3004}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3002, file: !3001, line: 11, baseType: !779, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !919, file: !920, line: 1251, baseType: !775, size: 256, offset: 19392)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !919, file: !920, line: 1252, baseType: !136, size: 128, offset: 19648)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !919, file: !920, line: 1259, baseType: !2047, size: 64, offset: 19776)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !919, file: !920, line: 1260, baseType: !1359, size: 16, offset: 19840)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !919, file: !920, line: 1261, baseType: !1359, size: 16, offset: 19856)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !919, file: !920, line: 1314, baseType: !3011, size: 64, offset: 19904)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3013, line: 62, size: 256, align: 256, elements: !3014)
!3013 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3014 = !{!3015, !3016, !3017, !3018, !3019, !3020, !3021}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3012, file: !3013, line: 75, baseType: !572, size: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3012, file: !3013, line: 90, baseType: !572, size: 32, offset: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3012, file: !3013, line: 112, baseType: !352, size: 64, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3012, file: !3013, line: 132, baseType: !572, size: 32, offset: 128)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3012, file: !3013, line: 140, baseType: !572, size: 32, offset: 160)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3012, file: !3013, line: 149, baseType: !572, size: 32, offset: 192)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3012, file: !3013, line: 154, baseType: !3022, offset: 224)
!3022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1642)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !919, file: !920, line: 1315, baseType: !571, size: 32, offset: 19968)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !919, file: !920, line: 1316, baseType: !571, size: 32, offset: 20000)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !919, file: !920, line: 1321, baseType: !78, size: 64, offset: 20032)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !919, file: !920, line: 1325, baseType: !17, size: 32, offset: 20096)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !919, file: !920, line: 1326, baseType: !17, size: 32, offset: 20128)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !919, file: !920, line: 1327, baseType: !17, size: 32, offset: 20160)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !919, file: !920, line: 1328, baseType: !17, size: 32, offset: 20192)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !919, file: !920, line: 1329, baseType: !832, size: 128, align: 64, offset: 20224)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !919, file: !920, line: 1332, baseType: !3032, size: 128, offset: 20352)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3033, line: 51, size: 128, elements: !3034)
!3033 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3034 = !{!3035, !3040, !3041}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3032, file: !3033, line: 60, baseType: !3036, size: 64)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3037, line: 7, size: 64, elements: !3038)
!3037 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3038 = !{!3039}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3036, file: !3037, line: 12, baseType: !1154, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3032, file: !3033, line: 63, baseType: !1411, size: 8, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3032, file: !3033, line: 70, baseType: !1411, size: 8, offset: 72)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !919, file: !920, line: 1335, baseType: !3043, size: 64, offset: 20480)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !920, line: 59, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !919, file: !920, line: 1337, baseType: !3046, size: 128, offset: 20544)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3033, line: 39, size: 128, elements: !3047)
!3047 = !{!3048, !3049, !3050}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3046, file: !3033, line: 40, baseType: !2106, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3046, file: !3033, line: 42, baseType: !572, size: 32, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3046, file: !3033, line: 43, baseType: !572, size: 32, offset: 96)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !919, file: !920, line: 1340, baseType: !3052, size: 64, offset: 20672)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !920, line: 69, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !919, file: !920, line: 1351, baseType: !17, size: 32, offset: 20736)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !919, file: !920, line: 1352, baseType: !17, size: 32, offset: 20768)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !919, file: !920, line: 1354, baseType: !78, size: 64, offset: 20800)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !919, file: !920, line: 1364, baseType: !351, size: 64, offset: 20864)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !919, file: !920, line: 1365, baseType: !351, size: 64, offset: 20928)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !919, file: !920, line: 1412, baseType: !78, size: 64, offset: 20992)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !919, file: !920, line: 1453, baseType: !3061, size: 64, offset: 21056)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !920, line: 1453, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !919, file: !920, line: 1457, baseType: !3064, size: 64, offset: 21120)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !177, line: 61, size: 576, elements: !3066)
!3066 = !{!3067, !3068, !3087, !3090, !3091, !3124, !3134}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3065, file: !177, line: 62, baseType: !176, size: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, scope: !3065, file: !177, line: 64, baseType: !3069, size: 192, offset: 64)
!3069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3065, file: !177, line: 64, size: 192, elements: !3070)
!3070 = !{!3071, !3082}
!3071 = !DIDerivedType(tag: DW_TAG_member, scope: !3069, file: !177, line: 65, baseType: !3072, size: 192)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !177, line: 65, size: 192, elements: !3073)
!3073 = !{!3074, !3081}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3072, file: !177, line: 66, baseType: !3075, size: 128)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3076, line: 50, size: 128, elements: !3077)
!3076 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3077 = !{!3078, !3079, !3080}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3075, file: !3076, line: 52, baseType: !78, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3075, file: !3076, line: 54, baseType: !22, size: 32, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3075, file: !3076, line: 55, baseType: !22, size: 32, offset: 96)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3072, file: !177, line: 67, baseType: !78, size: 64, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, scope: !3069, file: !177, line: 70, baseType: !3083, size: 192)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !177, line: 70, size: 192, elements: !3084)
!3084 = !{!3085, !3086}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3083, file: !177, line: 71, baseType: !832, size: 128, align: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3083, file: !177, line: 72, baseType: !78, size: 64, offset: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3065, file: !177, line: 76, baseType: !3088, size: 64, offset: 256)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !177, line: 76, flags: DIFlagFwdDecl)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3065, file: !177, line: 77, baseType: !78, size: 64, offset: 320)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3065, file: !177, line: 79, baseType: !3092, size: 64, offset: 384)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3076, line: 25, size: 256, elements: !3094)
!3094 = !{!3095, !3101, !3105}
!3095 = !DIDerivedType(tag: DW_TAG_member, scope: !3093, file: !3076, line: 26, baseType: !3096, size: 128)
!3096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3093, file: !3076, line: 26, size: 128, elements: !3097)
!3097 = !{!3098, !3100}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3096, file: !3076, line: 27, baseType: !3099, size: 128)
!3099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 128, elements: !1852)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3096, file: !3076, line: 28, baseType: !3099, size: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3093, file: !3076, line: 31, baseType: !3102, size: 64, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3104)
!3104 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3076, line: 23, flags: DIFlagFwdDecl)
!3105 = !DIDerivedType(tag: DW_TAG_member, scope: !3093, file: !3076, line: 33, baseType: !3106, size: 64, offset: 192)
!3106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3093, file: !3076, line: 33, size: 64, elements: !3107)
!3107 = !{!3108, !3114, !3119}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3106, file: !3076, line: 38, baseType: !3109, size: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3106, file: !3076, line: 34, size: 64, elements: !3110)
!3110 = !{!3111, !3112, !3113}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3109, file: !3076, line: 35, baseType: !1307, size: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3109, file: !3076, line: 36, baseType: !122, size: 8, offset: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3109, file: !3076, line: 37, baseType: !122, size: 8, offset: 40)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3106, file: !3076, line: 42, baseType: !3115, size: 16)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3106, file: !3076, line: 39, size: 16, elements: !3116)
!3116 = !{!3117, !3118}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3115, file: !3076, line: 40, baseType: !122, size: 8)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3115, file: !3076, line: 41, baseType: !122, size: 8, offset: 8)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3106, file: !3076, line: 46, baseType: !3120, size: 16)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3106, file: !3076, line: 43, size: 16, elements: !3121)
!3121 = !{!3122, !3123}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3120, file: !3076, line: 44, baseType: !122, size: 8)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3120, file: !3076, line: 45, baseType: !122, size: 8, offset: 8)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3065, file: !177, line: 81, baseType: !3125, size: 64, offset: 448)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !177, line: 85, size: 384, elements: !3127)
!3127 = !{!3128, !3129, !3130, !3131, !3132, !3133}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3126, file: !177, line: 86, baseType: !3088, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3126, file: !177, line: 87, baseType: !78, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3126, file: !177, line: 88, baseType: !78, size: 64, offset: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3126, file: !177, line: 89, baseType: !78, size: 64, offset: 192)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3126, file: !177, line: 90, baseType: !1411, size: 8, offset: 256)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3126, file: !177, line: 92, baseType: !3125, size: 64, offset: 320)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3065, file: !177, line: 82, baseType: !22, size: 32, offset: 512)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !919, file: !920, line: 1463, baseType: !3136, offset: 21184)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !920, line: 739, elements: !694)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !919, file: !920, line: 1470, baseType: !832, size: 128, align: 64, offset: 21184)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !919, file: !920, line: 1471, baseType: !877, size: 32, offset: 21312)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !919, file: !920, line: 1472, baseType: !17, size: 32, offset: 21344)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !919, file: !920, line: 1474, baseType: !918, size: 64, offset: 21376)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !919, file: !920, line: 1475, baseType: !2321, size: 320, offset: 21440)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !919, file: !920, line: 1478, baseType: !3143, size: 64, offset: 21760)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3145, line: 49, size: 512, elements: !3146)
!3145 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3146 = !{!3147, !3148, !3149, !3150, !3151, !3153, !3154, !3155, !3157}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3144, file: !3145, line: 50, baseType: !3143, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3144, file: !3145, line: 51, baseType: !60, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3144, file: !3145, line: 52, baseType: !78, size: 64, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3144, file: !3145, line: 53, baseType: !78, size: 64, offset: 192)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3144, file: !3145, line: 54, baseType: !3152, size: 64, offset: 256)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3144, file: !3145, line: 56, baseType: !22, size: 32, offset: 320)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3144, file: !3145, line: 58, baseType: !22, size: 32, offset: 352)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3144, file: !3145, line: 59, baseType: !3156, size: 64, offset: 384)
!3156 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !64, line: 159, baseType: !351)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3144, file: !3145, line: 60, baseType: !1340, size: 64, offset: 448)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !919, file: !920, line: 1482, baseType: !877, size: 32, offset: 21824)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !919, file: !920, line: 1489, baseType: !60, size: 64, offset: 21888)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !919, file: !920, line: 1504, baseType: !60, size: 64, offset: 21952)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !919, file: !920, line: 1505, baseType: !352, size: 64, offset: 22016)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !919, file: !920, line: 1506, baseType: !351, size: 64, offset: 22080)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !919, file: !920, line: 1507, baseType: !352, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !919, file: !920, line: 1508, baseType: !352, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !919, file: !920, line: 1509, baseType: !352, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !919, file: !920, line: 1510, baseType: !832, size: 128, align: 64, offset: 22208)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !919, file: !920, line: 1511, baseType: !17, size: 32, offset: 22336)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !919, file: !920, line: 1515, baseType: !3169, size: 64, offset: 22400)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !827, line: 56, size: 64, elements: !3170)
!3170 = !{!3171}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3169, file: !827, line: 57, baseType: !830, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !919, file: !920, line: 1518, baseType: !3169, size: 64, offset: 22464)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !919, file: !920, line: 1528, baseType: !832, size: 128, align: 64, offset: 22528)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !919, file: !920, line: 1552, baseType: !3175, size: 35328, offset: 23040)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3176, line: 430, size: 35328, elements: !3177)
!3176 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3177 = !{!3178, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3205, !3206, !3207, !3208, !3209, !3210, !3213, !3214, !3215, !3216}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3175, file: !3176, line: 432, baseType: !3179, size: 192)
!3179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3180, size: 192, elements: !429)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3181, line: 16, size: 64, elements: !3182)
!3181 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3182 = !{!3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3180, file: !3181, line: 17, baseType: !132, size: 16)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3180, file: !3181, line: 18, baseType: !132, size: 16, offset: 16)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3180, file: !3181, line: 19, baseType: !132, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3180, file: !3181, line: 19, baseType: !132, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3180, file: !3181, line: 19, baseType: !132, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3180, file: !3181, line: 19, baseType: !132, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3180, file: !3181, line: 19, baseType: !132, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3180, file: !3181, line: 20, baseType: !132, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3180, file: !3181, line: 20, baseType: !132, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3180, file: !3181, line: 20, baseType: !132, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3180, file: !3181, line: 20, baseType: !132, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3180, file: !3181, line: 20, baseType: !132, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3180, file: !3181, line: 20, baseType: !132, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3175, file: !3176, line: 436, baseType: !78, size: 64, offset: 192)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3175, file: !3176, line: 440, baseType: !65, size: 16, offset: 256)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3175, file: !3176, line: 441, baseType: !65, size: 16, offset: 272)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3175, file: !3176, line: 442, baseType: !65, size: 16, offset: 288)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3175, file: !3176, line: 443, baseType: !65, size: 16, offset: 304)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3175, file: !3176, line: 447, baseType: !78, size: 64, offset: 320)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3175, file: !3176, line: 448, baseType: !78, size: 64, offset: 384)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3175, file: !3176, line: 459, baseType: !3204, size: 256, offset: 448)
!3204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 256, elements: !886)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3175, file: !3176, line: 461, baseType: !78, size: 64, offset: 704)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3175, file: !3176, line: 463, baseType: !78, size: 64, offset: 768)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3175, file: !3176, line: 465, baseType: !78, size: 64, offset: 832)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3175, file: !3176, line: 466, baseType: !78, size: 64, offset: 896)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3175, file: !3176, line: 467, baseType: !78, size: 64, offset: 960)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3175, file: !3176, line: 473, baseType: !3211, size: 64, offset: 1024)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3176, line: 10, flags: DIFlagFwdDecl)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3175, file: !3176, line: 480, baseType: !78, size: 64, offset: 1088)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3175, file: !3176, line: 482, baseType: !22, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3175, file: !3176, line: 491, baseType: !571, size: 32, offset: 1184)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3175, file: !3176, line: 501, baseType: !3217, size: 33792, offset: 1536)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3218, line: 448, size: 33792, elements: !3219)
!3218 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3219 = !{!3220, !3221, !3222, !3382, !3383, !3389, !3390}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3217, file: !3218, line: 461, baseType: !22, size: 32)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3217, file: !3218, line: 468, baseType: !78, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3217, file: !3218, line: 476, baseType: !3223, size: 64, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3218, line: 356, size: 33280, align: 512, elements: !3225)
!3225 = !{!3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3224, file: !3218, line: 358, baseType: !22, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3224, file: !3218, line: 361, baseType: !22, size: 32, offset: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3224, file: !3218, line: 364, baseType: !351, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3224, file: !3218, line: 367, baseType: !351, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3224, file: !3218, line: 370, baseType: !351, size: 64, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3224, file: !3218, line: 373, baseType: !22, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3224, file: !3218, line: 376, baseType: !22, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3224, file: !3218, line: 391, baseType: !22, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3224, file: !3218, line: 394, baseType: !22, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3224, file: !3218, line: 397, baseType: !3236, size: 32768, offset: 512)
!3236 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3218, line: 348, size: 32768, elements: !3237)
!3237 = !{!3238, !3253, !3290, !3367, !3380}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3236, file: !3218, line: 349, baseType: !3239, size: 896)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3218, line: 12, size: 896, elements: !3240)
!3240 = !{!3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3252}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3239, file: !3218, line: 13, baseType: !571, size: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3239, file: !3218, line: 14, baseType: !571, size: 32, offset: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3239, file: !3218, line: 15, baseType: !571, size: 32, offset: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3239, file: !3218, line: 16, baseType: !571, size: 32, offset: 96)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3239, file: !3218, line: 17, baseType: !571, size: 32, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3239, file: !3218, line: 18, baseType: !571, size: 32, offset: 160)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3239, file: !3218, line: 19, baseType: !571, size: 32, offset: 192)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3239, file: !3218, line: 22, baseType: !3249, size: 640, offset: 224)
!3249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 640, elements: !3250)
!3250 = !{!3251}
!3251 = !DISubrange(count: 20)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3239, file: !3218, line: 25, baseType: !571, size: 32, offset: 864)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3236, file: !3218, line: 350, baseType: !3254, size: 4096, align: 128)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3218, line: 34, size: 4096, align: 128, elements: !3255)
!3255 = !{!3256, !3257, !3258, !3259, !3260, !3275, !3276, !3277, !3279, !3281, !3285}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3254, file: !3218, line: 35, baseType: !132, size: 16)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3254, file: !3218, line: 36, baseType: !132, size: 16, offset: 16)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3254, file: !3218, line: 37, baseType: !132, size: 16, offset: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3254, file: !3218, line: 38, baseType: !132, size: 16, offset: 48)
!3260 = !DIDerivedType(tag: DW_TAG_member, scope: !3254, file: !3218, line: 39, baseType: !3261, size: 128, offset: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3254, file: !3218, line: 39, size: 128, elements: !3262)
!3262 = !{!3263, !3268}
!3263 = !DIDerivedType(tag: DW_TAG_member, scope: !3261, file: !3218, line: 40, baseType: !3264, size: 128)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3261, file: !3218, line: 40, size: 128, elements: !3265)
!3265 = !{!3266, !3267}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3264, file: !3218, line: 41, baseType: !351, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3264, file: !3218, line: 42, baseType: !351, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, scope: !3261, file: !3218, line: 44, baseType: !3269, size: 128)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3261, file: !3218, line: 44, size: 128, elements: !3270)
!3270 = !{!3271, !3272, !3273, !3274}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3269, file: !3218, line: 45, baseType: !571, size: 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3269, file: !3218, line: 46, baseType: !571, size: 32, offset: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3269, file: !3218, line: 47, baseType: !571, size: 32, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3269, file: !3218, line: 48, baseType: !571, size: 32, offset: 96)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3254, file: !3218, line: 51, baseType: !571, size: 32, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3254, file: !3218, line: 52, baseType: !571, size: 32, offset: 224)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3254, file: !3218, line: 55, baseType: !3278, size: 1024, offset: 256)
!3278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 1024, elements: !581)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3254, file: !3218, line: 58, baseType: !3280, size: 2048, offset: 1280)
!3280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 2048, elements: !433)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3254, file: !3218, line: 60, baseType: !3282, size: 384, offset: 3328)
!3282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 384, elements: !3283)
!3283 = !{!3284}
!3284 = !DISubrange(count: 12)
!3285 = !DIDerivedType(tag: DW_TAG_member, scope: !3254, file: !3218, line: 62, baseType: !3286, size: 384, offset: 3712)
!3286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3254, file: !3218, line: 62, size: 384, elements: !3287)
!3287 = !{!3288, !3289}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3286, file: !3218, line: 63, baseType: !3282, size: 384)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3286, file: !3218, line: 64, baseType: !3282, size: 384)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3236, file: !3218, line: 351, baseType: !3291, size: 1088)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3218, line: 79, size: 1088, elements: !3292)
!3292 = !{!3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3366}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3291, file: !3218, line: 80, baseType: !571, size: 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3291, file: !3218, line: 81, baseType: !571, size: 32, offset: 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3291, file: !3218, line: 82, baseType: !571, size: 32, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3291, file: !3218, line: 83, baseType: !571, size: 32, offset: 96)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3291, file: !3218, line: 84, baseType: !571, size: 32, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3291, file: !3218, line: 85, baseType: !571, size: 32, offset: 160)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3291, file: !3218, line: 86, baseType: !571, size: 32, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3291, file: !3218, line: 88, baseType: !3249, size: 640, offset: 224)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3291, file: !3218, line: 89, baseType: !122, size: 8, offset: 864)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3291, file: !3218, line: 90, baseType: !122, size: 8, offset: 872)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3291, file: !3218, line: 91, baseType: !122, size: 8, offset: 880)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3291, file: !3218, line: 92, baseType: !122, size: 8, offset: 888)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3291, file: !3218, line: 93, baseType: !122, size: 8, offset: 896)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3291, file: !3218, line: 94, baseType: !122, size: 8, offset: 904)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3291, file: !3218, line: 95, baseType: !3308, size: 64, offset: 960)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3310, line: 11, size: 128, elements: !3311)
!3310 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3311 = !{!3312, !3313}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3309, file: !3310, line: 12, baseType: !463, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3309, file: !3310, line: 13, baseType: !3314, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3316, line: 103, size: 1344, elements: !3317)
!3316 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3317 = !{!3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3346, !3347, !3348}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3315, file: !3316, line: 109, baseType: !78, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3315, file: !3316, line: 110, baseType: !78, size: 64, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3315, file: !3316, line: 111, baseType: !78, size: 64, offset: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3315, file: !3316, line: 112, baseType: !78, size: 64, offset: 192)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3315, file: !3316, line: 113, baseType: !78, size: 64, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3315, file: !3316, line: 114, baseType: !78, size: 64, offset: 320)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3315, file: !3316, line: 117, baseType: !78, size: 64, offset: 384)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3315, file: !3316, line: 118, baseType: !78, size: 64, offset: 448)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3315, file: !3316, line: 119, baseType: !78, size: 64, offset: 512)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3315, file: !3316, line: 120, baseType: !78, size: 64, offset: 576)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3315, file: !3316, line: 121, baseType: !78, size: 64, offset: 640)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3315, file: !3316, line: 122, baseType: !78, size: 64, offset: 704)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3315, file: !3316, line: 123, baseType: !78, size: 64, offset: 768)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3315, file: !3316, line: 124, baseType: !78, size: 64, offset: 832)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3315, file: !3316, line: 125, baseType: !78, size: 64, offset: 896)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3315, file: !3316, line: 139, baseType: !78, size: 64, offset: 960)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3315, file: !3316, line: 142, baseType: !78, size: 64, offset: 1024)
!3335 = !DIDerivedType(tag: DW_TAG_member, scope: !3315, file: !3316, line: 144, baseType: !3336, size: 64, offset: 1088)
!3336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3315, file: !3316, line: 144, size: 64, elements: !3337)
!3337 = !{!3338, !3339, !3340}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3336, file: !3316, line: 146, baseType: !132, size: 16)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3336, file: !3316, line: 148, baseType: !351, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3336, file: !3316, line: 150, baseType: !3341, size: 64)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3316, line: 59, size: 64, elements: !3342)
!3342 = !{!3343, !3344, !3345}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3341, file: !3316, line: 61, baseType: !351, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3341, file: !3316, line: 63, baseType: !351, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3341, file: !3316, line: 65, baseType: !351, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3315, file: !3316, line: 153, baseType: !78, size: 64, offset: 1152)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3315, file: !3316, line: 154, baseType: !78, size: 64, offset: 1216)
!3348 = !DIDerivedType(tag: DW_TAG_member, scope: !3315, file: !3316, line: 156, baseType: !3349, size: 64, offset: 1280)
!3349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3315, file: !3316, line: 156, size: 64, elements: !3350)
!3350 = !{!3351, !3352, !3353}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3349, file: !3316, line: 158, baseType: !132, size: 16)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3349, file: !3316, line: 160, baseType: !351, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3349, file: !3316, line: 162, baseType: !3354, size: 64)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3316, line: 69, size: 64, elements: !3355)
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3354, file: !3316, line: 71, baseType: !351, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3354, file: !3316, line: 73, baseType: !351, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3354, file: !3316, line: 75, baseType: !351, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3354, file: !3316, line: 77, baseType: !351, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3354, file: !3316, line: 80, baseType: !351, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3354, file: !3316, line: 83, baseType: !351, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3354, file: !3316, line: 86, baseType: !351, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3354, file: !3316, line: 88, baseType: !351, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3354, file: !3316, line: 93, baseType: !351, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3354, file: !3316, line: 100, baseType: !351, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3291, file: !3218, line: 96, baseType: !571, size: 32, offset: 1024)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3236, file: !3218, line: 352, baseType: !3368, size: 4608, align: 512)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3218, line: 333, size: 4608, align: 512, elements: !3369)
!3369 = !{!3370, !3371, !3378}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3368, file: !3218, line: 334, baseType: !3254, size: 4096, align: 128)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3368, file: !3218, line: 335, baseType: !3372, size: 512, offset: 4096)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3218, line: 312, size: 512, elements: !3373)
!3373 = !{!3374, !3375, !3376}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3372, file: !3218, line: 313, baseType: !351, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3372, file: !3218, line: 314, baseType: !351, size: 64, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3372, file: !3218, line: 315, baseType: !3377, size: 384, offset: 128)
!3377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 384, elements: !1466)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3368, file: !3218, line: 336, baseType: !3379, offset: 4608)
!3379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, elements: !1642)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3236, file: !3218, line: 353, baseType: !3381, size: 32768)
!3381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 32768, elements: !2357)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3217, file: !3218, line: 484, baseType: !3223, size: 64, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3217, file: !3218, line: 491, baseType: !3384, size: 128, offset: 256)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3218, line: 404, size: 128, elements: !3385)
!3385 = !{!3386, !3387, !3388}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3384, file: !3218, line: 424, baseType: !351, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3384, file: !3218, line: 432, baseType: !22, size: 32, offset: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3384, file: !3218, line: 440, baseType: !22, size: 32, offset: 96)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3217, file: !3218, line: 498, baseType: !3384, size: 128, offset: 384)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3217, file: !3218, line: 508, baseType: !3224, size: 33280, align: 512, offset: 512)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !898, file: !899, line: 31, baseType: !3392, size: 64, offset: 448)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3394, line: 11, flags: DIFlagFwdDecl)
!3394 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !898, file: !899, line: 32, baseType: !22, size: 32, offset: 512)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !898, file: !899, line: 33, baseType: !897, size: 64, offset: 576)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !898, file: !899, line: 35, baseType: !3398, size: 64, offset: 640)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !899, line: 17, flags: DIFlagFwdDecl)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !898, file: !899, line: 37, baseType: !1366, size: 64, offset: 704)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !898, file: !899, line: 38, baseType: !1609, size: 64, offset: 768)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !898, file: !899, line: 39, baseType: !17, size: 32, offset: 832)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !898, file: !899, line: 40, baseType: !1399, size: 192, offset: 896)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !898, file: !899, line: 42, baseType: !17, size: 32, offset: 1088)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !849, file: !43, line: 951, baseType: !183, size: 32, offset: 128)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !849, file: !43, line: 952, baseType: !508, size: 32, offset: 160)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !849, file: !43, line: 952, baseType: !508, size: 32, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !849, file: !43, line: 953, baseType: !17, size: 32, offset: 224)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !820, file: !43, line: 1012, baseType: !1778, size: 64, offset: 896)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !820, file: !43, line: 1013, baseType: !3411, size: 256, offset: 960)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !43, line: 970, size: 256, elements: !3412)
!3412 = !{!3413, !3414, !3415, !3416, !3417, !3418}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3411, file: !43, line: 971, baseType: !78, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3411, file: !43, line: 972, baseType: !22, size: 32, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3411, file: !43, line: 973, baseType: !22, size: 32, offset: 96)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3411, file: !43, line: 974, baseType: !22, size: 32, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3411, file: !43, line: 975, baseType: !22, size: 32, offset: 160)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3411, file: !43, line: 976, baseType: !80, size: 64, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !820, file: !43, line: 1014, baseType: !3420, size: 128, offset: 1216)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3421, line: 8, size: 128, elements: !3422)
!3421 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3422 = !{!3423, !3424}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3420, file: !3421, line: 9, baseType: !644, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3420, file: !3421, line: 10, baseType: !537, size: 64, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !820, file: !43, line: 1015, baseType: !502, size: 64, offset: 1344)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !820, file: !43, line: 1016, baseType: !3427, size: 64, offset: 1408)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3429)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !43, line: 1914, size: 2112, elements: !3430)
!3430 = !{!3431, !3432, !3436, !3440, !3444, !3472, !3473, !3479, !3492, !3496, !3500, !3501, !3505, !3506, !3510, !3515, !3516, !3520, !3524, !3530, !3531, !3535, !3536, !3540, !3544, !3548, !3554, !3558, !3562, !3566, !3570, !3571, !3577}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3429, file: !43, line: 1915, baseType: !374, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3429, file: !43, line: 1916, baseType: !3433, size: 64, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!80, !1233, !80, !17}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3429, file: !43, line: 1917, baseType: !3437, size: 64, offset: 128)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!460, !1233, !428, !74, !79}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3429, file: !43, line: 1918, baseType: !3441, size: 64, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!460, !1233, !57, !74, !79}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3429, file: !43, line: 1919, baseType: !3445, size: 64, offset: 256)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!460, !3448, !3470}
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !43, line: 373, size: 384, elements: !3450)
!3450 = !{!3451, !3452, !3453, !3457, !3458, !3459, !3460}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3449, file: !43, line: 374, baseType: !1233, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3449, file: !43, line: 375, baseType: !80, size: 64, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3449, file: !43, line: 376, baseType: !3454, size: 64, offset: 128)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{null, !3448, !463}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3449, file: !43, line: 377, baseType: !60, size: 64, offset: 192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3449, file: !43, line: 378, baseType: !17, size: 32, offset: 256)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3449, file: !43, line: 379, baseType: !132, size: 16, offset: 288)
!3460 = !DIDerivedType(tag: DW_TAG_member, scope: !3449, file: !43, line: 380, baseType: !3461, size: 64, offset: 320)
!3461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3449, file: !43, line: 380, size: 64, elements: !3462)
!3462 = !{!3463, !3466}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3461, file: !43, line: 386, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !43, line: 386, flags: DIFlagFwdDecl)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3461, file: !43, line: 395, baseType: !3467, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!460, !60}
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !3145, line: 17, flags: DIFlagFwdDecl)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3429, file: !43, line: 1920, baseType: !3445, size: 64, offset: 320)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3429, file: !43, line: 1921, baseType: !3474, size: 64, offset: 384)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!17, !3448, !3477, !22}
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !43, line: 53, flags: DIFlagFwdDecl)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3429, file: !43, line: 1923, baseType: !3480, size: 64, offset: 448)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!17, !1233, !3483}
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !43, line: 1858, size: 128, elements: !3485)
!3485 = !{!3486, !3491}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3484, file: !43, line: 1859, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !43, line: 1855, baseType: !3488)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!1411, !3483, !57, !17, !80, !351, !22}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3484, file: !43, line: 1860, baseType: !80, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3429, file: !43, line: 1924, baseType: !3493, size: 64, offset: 512)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!2294, !1233, !2296}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3429, file: !43, line: 1925, baseType: !3497, size: 64, offset: 576)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!463, !1233, !22, !78}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3429, file: !43, line: 1926, baseType: !3497, size: 64, offset: 640)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3429, file: !43, line: 1927, baseType: !3502, size: 64, offset: 704)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!17, !1233, !1999}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3429, file: !43, line: 1928, baseType: !78, size: 64, offset: 768)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3429, file: !43, line: 1929, baseType: !3507, size: 64, offset: 832)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!17, !502, !1233}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3429, file: !43, line: 1930, baseType: !3511, size: 64, offset: 896)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!17, !1233, !3514}
!3514 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !43, line: 1061, baseType: !60)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3429, file: !43, line: 1931, baseType: !3507, size: 64, offset: 960)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3429, file: !43, line: 1932, baseType: !3517, size: 64, offset: 1024)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!17, !1233, !80, !80, !17}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3429, file: !43, line: 1933, baseType: !3521, size: 64, offset: 1088)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!17, !17, !1233, !17}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3429, file: !43, line: 1934, baseType: !3525, size: 64, offset: 1152)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!17, !1233, !17, !3528}
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !43, line: 1063, flags: DIFlagFwdDecl)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3429, file: !43, line: 1935, baseType: !1230, size: 64, offset: 1216)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3429, file: !43, line: 1936, baseType: !3532, size: 64, offset: 1280)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!17, !17}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3429, file: !43, line: 1937, baseType: !3525, size: 64, offset: 1344)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3429, file: !43, line: 1938, baseType: !3537, size: 64, offset: 1408)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!460, !3043, !1233, !79, !74, !22}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3429, file: !43, line: 1939, baseType: !3541, size: 64, offset: 1472)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!460, !1233, !79, !3043, !74, !22}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3429, file: !43, line: 1940, baseType: !3545, size: 64, offset: 1536)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{null, !1233}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3429, file: !43, line: 1941, baseType: !3549, size: 64, offset: 1600)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!17, !1233, !17, !3552, !3553}
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3429, file: !43, line: 1942, baseType: !3555, size: 64, offset: 1664)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!463, !1233, !17, !80, !80}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3429, file: !43, line: 1944, baseType: !3559, size: 64, offset: 1728)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{null, !763, !1233}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3429, file: !43, line: 1948, baseType: !3563, size: 64, offset: 1792)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!460, !1233, !80, !1233, !80, !74, !22}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3429, file: !43, line: 1950, baseType: !3567, size: 64, offset: 1856)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!80, !1233, !80, !1233, !80, !80, !22}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3429, file: !43, line: 1953, baseType: !3517, size: 64, offset: 1920)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3429, file: !43, line: 1954, baseType: !3572, size: 64, offset: 1984)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!17, !3575, !22}
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !43, line: 1911, flags: DIFlagFwdDecl)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3429, file: !43, line: 1955, baseType: !3578, size: 64, offset: 2048)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!17, !3575, !3477, !22}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !820, file: !43, line: 1018, baseType: !351, size: 64, offset: 1472)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !820, file: !43, line: 1020, baseType: !60, size: 64, offset: 1536)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !820, file: !43, line: 1023, baseType: !60, size: 64, offset: 1600)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !820, file: !43, line: 1027, baseType: !3585, size: 64, offset: 1664)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !820, file: !43, line: 1029, baseType: !498, size: 64, offset: 1728)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !820, file: !43, line: 1030, baseType: !3588, size: 32, offset: 1792)
!3588 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3589, line: 8, baseType: !571)
!3589 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !820, file: !43, line: 1031, baseType: !3588, size: 32, offset: 1824)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !764, file: !765, line: 29, baseType: !60, size: 64, offset: 896)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !706, file: !43, line: 2077, baseType: !760, size: 64, offset: 1088)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !706, file: !43, line: 2078, baseType: !760, size: 64, offset: 1152)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !706, file: !43, line: 2079, baseType: !760, size: 64, offset: 1216)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !706, file: !43, line: 2081, baseType: !3596, size: 64, offset: 1280)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!460, !650, !17, !428, !74, !80}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !706, file: !43, line: 2082, baseType: !3600, size: 64, offset: 1344)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!460, !650, !17, !57, !74, !80}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !706, file: !43, line: 2083, baseType: !3604, size: 64, offset: 1408)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!3607, !502}
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !192, line: 296, size: 1664, elements: !3610)
!3610 = !{!3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3635, !3636, !3637}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3609, file: !192, line: 297, baseType: !356, size: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3609, file: !192, line: 298, baseType: !136, size: 128, offset: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3609, file: !192, line: 299, baseType: !136, size: 128, offset: 256)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3609, file: !192, line: 300, baseType: !136, size: 128, offset: 384)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3609, file: !192, line: 301, baseType: !775, size: 256, offset: 512)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3609, file: !192, line: 302, baseType: !98, size: 32, offset: 768)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3609, file: !192, line: 303, baseType: !88, size: 32, offset: 800)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3609, file: !192, line: 304, baseType: !650, size: 64, offset: 832)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3609, file: !192, line: 305, baseType: !3620, size: 64, offset: 896)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !192, line: 68, size: 64, elements: !3621)
!3621 = !{!3622, !3634}
!3622 = !DIDerivedType(tag: DW_TAG_member, scope: !3620, file: !192, line: 69, baseType: !3623, size: 32)
!3623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3620, file: !192, line: 69, size: 32, elements: !3624)
!3624 = !{!3625, !3626, !3627}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3623, file: !192, line: 70, baseType: !508, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3623, file: !192, line: 71, baseType: !517, size: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3623, file: !192, line: 72, baseType: !3628, size: 32)
!3628 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3629, line: 24, baseType: !3630)
!3629 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3629, line: 22, size: 32, elements: !3631)
!3631 = !{!3632}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3630, file: !3629, line: 23, baseType: !3633, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3629, line: 20, baseType: !514)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3620, file: !192, line: 74, baseType: !191, size: 32, offset: 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3609, file: !192, line: 306, baseType: !80, size: 64, offset: 960)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3609, file: !192, line: 307, baseType: !78, size: 64, offset: 1024)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3609, file: !192, line: 308, baseType: !3638, size: 576, offset: 1088)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !192, line: 205, size: 576, elements: !3639)
!3639 = !{!3640, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3638, file: !192, line: 206, baseType: !3641, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !192, line: 66, baseType: !82)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3638, file: !192, line: 207, baseType: !3641, size: 64, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3638, file: !192, line: 208, baseType: !3641, size: 64, offset: 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3638, file: !192, line: 209, baseType: !3641, size: 64, offset: 192)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3638, file: !192, line: 210, baseType: !3641, size: 64, offset: 256)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3638, file: !192, line: 211, baseType: !3641, size: 64, offset: 320)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3638, file: !192, line: 212, baseType: !3641, size: 64, offset: 384)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3638, file: !192, line: 213, baseType: !1437, size: 64, offset: 448)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3638, file: !192, line: 214, baseType: !1437, size: 64, offset: 512)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !706, file: !43, line: 2085, baseType: !3651, size: 64, offset: 1472)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!463, !650, !3654}
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3656, line: 15, size: 256, elements: !3657)
!3656 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3657 = !{!3658, !3659, !3660, !3661, !3662}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3655, file: !3656, line: 16, baseType: !911, size: 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3655, file: !3656, line: 19, baseType: !17, size: 32, offset: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3655, file: !3656, line: 26, baseType: !78, size: 64, offset: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3655, file: !3656, line: 33, baseType: !78, size: 64, offset: 128)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3655, file: !3656, line: 36, baseType: !3663, size: 64, offset: 192)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !153, line: 33, flags: DIFlagFwdDecl)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !706, file: !43, line: 2087, baseType: !3651, size: 64, offset: 1536)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !706, file: !43, line: 2089, baseType: !682, size: 64, offset: 1600)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !651, file: !43, line: 1198, baseType: !3668, size: 64, offset: 448)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3670)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !192, line: 324, size: 704, elements: !3671)
!3671 = !{!3672, !3676, !3680, !3684, !3685, !3686, !3687, !3688, !3693, !3698, !3702}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3670, file: !192, line: 325, baseType: !3673, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!17, !3608}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3670, file: !192, line: 326, baseType: !3677, size: 64, offset: 64)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!3608, !650, !17}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3670, file: !192, line: 327, baseType: !3681, size: 64, offset: 128)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{null, !3608}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3670, file: !192, line: 328, baseType: !3673, size: 64, offset: 192)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3670, file: !192, line: 329, baseType: !3673, size: 64, offset: 256)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3670, file: !192, line: 330, baseType: !3673, size: 64, offset: 320)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3670, file: !192, line: 331, baseType: !734, size: 64, offset: 384)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3670, file: !192, line: 334, baseType: !3689, size: 64, offset: 448)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!3692, !502}
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3670, file: !192, line: 335, baseType: !3694, size: 64, offset: 512)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!17, !502, !3697}
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3670, file: !192, line: 337, baseType: !3699, size: 64, offset: 576)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!17, !502, !3692}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3670, file: !192, line: 339, baseType: !3703, size: 64, offset: 640)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!17, !650, !3706}
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !651, file: !43, line: 1199, baseType: !3708, size: 64, offset: 512)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3710)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !192, line: 430, size: 704, elements: !3711)
!3711 = !{!3712, !3718, !3719, !3723, !3724, !3725, !3740, !3763, !3767, !3768, !3791}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3710, file: !192, line: 431, baseType: !3713, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!17, !650, !17, !17, !3716}
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3420)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3710, file: !192, line: 432, baseType: !734, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3710, file: !192, line: 433, baseType: !3720, size: 64, offset: 128)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!17, !650, !22}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3710, file: !192, line: 434, baseType: !3720, size: 64, offset: 192)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3710, file: !192, line: 435, baseType: !734, size: 64, offset: 256)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3710, file: !192, line: 436, baseType: !3726, size: 64, offset: 320)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!17, !650, !17, !3729}
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !192, line: 417, size: 256, elements: !3731)
!3731 = !{!3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3730, file: !192, line: 418, baseType: !17, size: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3730, file: !192, line: 419, baseType: !22, size: 32, offset: 32)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3730, file: !192, line: 420, baseType: !22, size: 32, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3730, file: !192, line: 422, baseType: !22, size: 32, offset: 96)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3730, file: !192, line: 423, baseType: !22, size: 32, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3730, file: !192, line: 424, baseType: !22, size: 32, offset: 160)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3730, file: !192, line: 425, baseType: !22, size: 32, offset: 192)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3730, file: !192, line: 426, baseType: !22, size: 32, offset: 224)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3710, file: !192, line: 437, baseType: !3741, size: 64, offset: 384)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!17, !650, !3620, !3744}
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !192, line: 345, size: 960, elements: !3746)
!3746 = !{!3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3745, file: !192, line: 346, baseType: !17, size: 32)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3745, file: !192, line: 347, baseType: !351, size: 64, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3745, file: !192, line: 348, baseType: !351, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3745, file: !192, line: 349, baseType: !351, size: 64, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3745, file: !192, line: 350, baseType: !351, size: 64, offset: 256)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3745, file: !192, line: 351, baseType: !351, size: 64, offset: 320)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3745, file: !192, line: 352, baseType: !351, size: 64, offset: 384)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3745, file: !192, line: 353, baseType: !785, size: 64, offset: 448)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3745, file: !192, line: 355, baseType: !785, size: 64, offset: 512)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3745, file: !192, line: 356, baseType: !17, size: 32, offset: 576)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3745, file: !192, line: 357, baseType: !17, size: 32, offset: 608)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3745, file: !192, line: 358, baseType: !351, size: 64, offset: 640)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3745, file: !192, line: 359, baseType: !351, size: 64, offset: 704)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3745, file: !192, line: 360, baseType: !351, size: 64, offset: 768)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3745, file: !192, line: 361, baseType: !785, size: 64, offset: 832)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3745, file: !192, line: 362, baseType: !17, size: 32, offset: 896)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3710, file: !192, line: 438, baseType: !3764, size: 64, offset: 448)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!17, !650, !3706, !3744}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3710, file: !192, line: 440, baseType: !3741, size: 64, offset: 512)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3710, file: !192, line: 441, baseType: !3769, size: 64, offset: 576)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!17, !650, !3772}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !192, line: 411, size: 1408, elements: !3774)
!3774 = !{!3775, !3776}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3773, file: !192, line: 412, baseType: !22, size: 32)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3773, file: !192, line: 413, baseType: !3777, size: 1344, offset: 64)
!3777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3778, size: 1344, elements: !429)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !192, line: 397, size: 448, elements: !3779)
!3779 = !{!3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3790}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3778, file: !192, line: 398, baseType: !22, size: 32)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3778, file: !192, line: 399, baseType: !22, size: 32, offset: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3778, file: !192, line: 401, baseType: !22, size: 32, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3778, file: !192, line: 402, baseType: !22, size: 32, offset: 96)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3778, file: !192, line: 403, baseType: !22, size: 32, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3778, file: !192, line: 404, baseType: !22, size: 32, offset: 160)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3778, file: !192, line: 405, baseType: !22, size: 32, offset: 192)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3778, file: !192, line: 406, baseType: !353, size: 64, offset: 256)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3778, file: !192, line: 407, baseType: !3789, size: 64, offset: 320)
!3789 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !64, line: 132, baseType: !351)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3778, file: !192, line: 408, baseType: !3789, size: 64, offset: 384)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3710, file: !192, line: 442, baseType: !3720, size: 64, offset: 640)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !651, file: !43, line: 1200, baseType: !3793, size: 64, offset: 576)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3795)
!3795 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !43, line: 54, flags: DIFlagFwdDecl)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !651, file: !43, line: 1201, baseType: !78, size: 64, offset: 640)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !651, file: !43, line: 1202, baseType: !78, size: 64, offset: 704)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !651, file: !43, line: 1203, baseType: !78, size: 64, offset: 768)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !651, file: !43, line: 1204, baseType: !537, size: 64, offset: 832)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !651, file: !43, line: 1205, baseType: !1261, size: 320, offset: 896)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !651, file: !43, line: 1206, baseType: !17, size: 32, offset: 1216)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !651, file: !43, line: 1207, baseType: !88, size: 32, offset: 1248)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !651, file: !43, line: 1209, baseType: !60, size: 64, offset: 1280)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !651, file: !43, line: 1211, baseType: !3805, size: 64, offset: 1344)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3808)
!3808 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !43, line: 1211, flags: DIFlagFwdDecl)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !651, file: !43, line: 1223, baseType: !3810, size: 64, offset: 1408)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !554, line: 34, size: 64, elements: !3811)
!3811 = !{!3812}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3810, file: !554, line: 35, baseType: !557, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !651, file: !43, line: 1224, baseType: !136, size: 128, offset: 1472)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !651, file: !43, line: 1225, baseType: !3815, size: 64, offset: 1600)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !43, line: 1225, flags: DIFlagFwdDecl)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !651, file: !43, line: 1226, baseType: !3818, size: 64, offset: 1664)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !43, line: 1226, flags: DIFlagFwdDecl)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !651, file: !43, line: 1227, baseType: !3821, size: 64, offset: 1728)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !43, line: 50, flags: DIFlagFwdDecl)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !651, file: !43, line: 1228, baseType: !3824, size: 64, offset: 1792)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !43, line: 1228, flags: DIFlagFwdDecl)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !651, file: !43, line: 1229, baseType: !356, size: 128, offset: 1856)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !651, file: !43, line: 1230, baseType: !22, size: 32, offset: 1984)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !651, file: !43, line: 1231, baseType: !3829, size: 2496, offset: 2048)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !192, line: 521, size: 2496, elements: !3830)
!3830 = !{!3831, !3832, !3833, !3835, !3867}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3829, file: !192, line: 522, baseType: !22, size: 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3829, file: !192, line: 523, baseType: !1261, size: 320, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3829, file: !192, line: 524, baseType: !3834, size: 192, offset: 384)
!3834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 192, elements: !429)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3829, file: !192, line: 525, baseType: !3836, size: 1728, offset: 576)
!3836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3837, size: 1728, elements: !429)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !192, line: 222, size: 576, elements: !3838)
!3838 = !{!3839, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3837, file: !192, line: 223, baseType: !3840, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !192, line: 445, size: 256, elements: !3842)
!3842 = !{!3843, !3844, !3857, !3858}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3841, file: !192, line: 446, baseType: !17, size: 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3841, file: !192, line: 447, baseType: !3845, size: 64, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3847)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !192, line: 312, size: 512, elements: !3848)
!3848 = !{!3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3847, file: !192, line: 313, baseType: !734, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3847, file: !192, line: 314, baseType: !734, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3847, file: !192, line: 315, baseType: !734, size: 64, offset: 128)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3847, file: !192, line: 316, baseType: !734, size: 64, offset: 192)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3847, file: !192, line: 317, baseType: !3673, size: 64, offset: 256)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3847, file: !192, line: 318, baseType: !3673, size: 64, offset: 320)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3847, file: !192, line: 319, baseType: !3673, size: 64, offset: 384)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3847, file: !192, line: 320, baseType: !3703, size: 64, offset: 448)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3841, file: !192, line: 448, baseType: !374, size: 64, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3841, file: !192, line: 449, baseType: !3840, size: 64, offset: 192)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3837, file: !192, line: 224, baseType: !17, size: 32, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3837, file: !192, line: 226, baseType: !136, size: 128, offset: 128)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3837, file: !192, line: 227, baseType: !78, size: 64, offset: 256)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3837, file: !192, line: 228, baseType: !22, size: 32, offset: 320)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3837, file: !192, line: 229, baseType: !22, size: 32, offset: 352)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3837, file: !192, line: 230, baseType: !3641, size: 64, offset: 384)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3837, file: !192, line: 231, baseType: !3641, size: 64, offset: 448)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3837, file: !192, line: 232, baseType: !60, size: 64, offset: 512)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3829, file: !192, line: 526, baseType: !3868, size: 192, offset: 2304)
!3868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3845, size: 192, elements: !429)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !651, file: !43, line: 1233, baseType: !3870, size: 2368, offset: 4544)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !43, line: 1184, size: 2368, elements: !3871)
!3871 = !{!3872, !3873, !3874}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3870, file: !43, line: 1185, baseType: !65, size: 16)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3870, file: !43, line: 1186, baseType: !65, size: 16, offset: 16)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3870, file: !43, line: 1187, baseType: !3875, size: 2304, offset: 64)
!3875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3876, size: 2304, elements: !429)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3877, line: 12, size: 768, elements: !3878)
!3877 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3878 = !{!3879, !3887, !3889, !3894, !3895}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3876, file: !3877, line: 13, baseType: !3880, size: 384)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3881, line: 17, size: 384, elements: !3882)
!3881 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3882 = !{!3883, !3884, !3885, !3886}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3880, file: !3881, line: 18, baseType: !17, size: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3880, file: !3881, line: 19, baseType: !17, size: 32, offset: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3880, file: !3881, line: 20, baseType: !93, size: 192, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3880, file: !3881, line: 22, baseType: !832, size: 128, align: 64, offset: 256)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3876, file: !3877, line: 14, baseType: !3888, size: 64, offset: 384)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3876, file: !3877, line: 15, baseType: !3890, size: 64, offset: 448)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3891, line: 16, size: 64, elements: !3892)
!3891 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3892 = !{!3893}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3890, file: !3891, line: 17, baseType: !918, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3876, file: !3877, line: 16, baseType: !93, size: 192, offset: 512)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3876, file: !3877, line: 17, baseType: !88, size: 32, offset: 704)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !651, file: !43, line: 1240, baseType: !60, size: 64, offset: 6912)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !651, file: !43, line: 1243, baseType: !571, size: 32, offset: 6976)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !651, file: !43, line: 1245, baseType: !1437, size: 64, offset: 7040)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !651, file: !43, line: 1246, baseType: !1437, size: 64, offset: 7104)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !651, file: !43, line: 1248, baseType: !572, size: 32, offset: 7168)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !651, file: !43, line: 1249, baseType: !3902, size: 64, offset: 7232)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !43, line: 634, flags: DIFlagFwdDecl)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !651, file: !43, line: 1252, baseType: !2706, size: 256, offset: 7296)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !651, file: !43, line: 1253, baseType: !3906, size: 128, offset: 7552)
!3906 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3907, line: 21, baseType: !3908)
!3907 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3907, line: 19, size: 128, elements: !3909)
!3909 = !{!3910}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3908, file: !3907, line: 20, baseType: !3911, size: 128)
!3911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 128, elements: !1852)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !651, file: !43, line: 1255, baseType: !22, size: 32, offset: 7680)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !651, file: !43, line: 1261, baseType: !775, size: 256, offset: 7744)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !651, file: !43, line: 1267, baseType: !57, size: 64, offset: 8000)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !651, file: !43, line: 1269, baseType: !597, size: 64, offset: 8064)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !651, file: !43, line: 1271, baseType: !3917, size: 448, offset: 8128)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3656, line: 63, size: 448, elements: !3918)
!3918 = !{!3919, !3924, !3925, !3926, !3927, !3928, !3929}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3917, file: !3656, line: 64, baseType: !3920, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!78, !3923, !3654}
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3917, file: !3656, line: 66, baseType: !3920, size: 64, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3917, file: !3656, line: 69, baseType: !463, size: 64, offset: 128)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3917, file: !3656, line: 70, baseType: !17, size: 32, offset: 192)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3917, file: !3656, line: 71, baseType: !22, size: 32, offset: 224)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3917, file: !3656, line: 74, baseType: !136, size: 128, offset: 256)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3917, file: !3656, line: 85, baseType: !3930, size: 64, offset: 384)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !651, file: !43, line: 1274, baseType: !779, size: 64, offset: 8576)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !651, file: !43, line: 1280, baseType: !779, size: 64, offset: 8640)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !651, file: !43, line: 1283, baseType: !17, size: 32, offset: 8704)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !651, file: !43, line: 1286, baseType: !3588, size: 32, offset: 8736)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !651, file: !43, line: 1289, baseType: !2536, size: 64, offset: 8768)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !651, file: !43, line: 1290, baseType: !688, size: 64, offset: 8832)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !651, file: !43, line: 1297, baseType: !1366, size: 64, offset: 8896)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !651, file: !43, line: 1304, baseType: !3939, size: 64, offset: 8960)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3940, line: 49, size: 64, elements: !3941)
!3940 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3941 = !{!3942}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3939, file: !3940, line: 50, baseType: !3943, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3940, line: 41, size: 512, align: 512, elements: !3945)
!3945 = !{!3946, !3947, !3952}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3944, file: !3940, line: 43, baseType: !98, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3944, file: !3940, line: 45, baseType: !3948, size: 192, offset: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3940, line: 29, size: 192, elements: !3949)
!3949 = !{!3950, !3951}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3948, file: !3940, line: 30, baseType: !136, size: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3948, file: !3940, line: 32, baseType: !463, size: 64, offset: 128)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3944, file: !3940, line: 46, baseType: !463, size: 64, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !651, file: !43, line: 1305, baseType: !3939, size: 64, offset: 9024)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !651, file: !43, line: 1306, baseType: !832, size: 128, align: 64, offset: 9088)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !651, file: !43, line: 1307, baseType: !1526, size: 256, offset: 9216)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !651, file: !43, line: 1309, baseType: !775, size: 256, offset: 9472)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !651, file: !43, line: 1314, baseType: !17, size: 32, offset: 9728)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !651, file: !43, line: 1317, baseType: !98, size: 32, align: 512, offset: 10240)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !651, file: !43, line: 1318, baseType: !136, size: 128, offset: 10304)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !651, file: !43, line: 1320, baseType: !98, size: 32, offset: 10432)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !651, file: !43, line: 1321, baseType: !136, size: 128, offset: 10496)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !645, file: !646, line: 73, baseType: !17, size: 32, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !645, file: !646, line: 74, baseType: !3964, size: 64, offset: 192)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1795, line: 42, flags: DIFlagFwdDecl)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !599, file: !539, line: 141, baseType: !3968, size: 64, offset: 704)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!17, !3716, !1411}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !599, file: !539, line: 142, baseType: !3972, size: 64, offset: 768)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!537, !537, !3975}
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !538, file: !539, line: 96, baseType: !650, size: 64, offset: 832)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !538, file: !539, line: 97, baseType: !78, size: 64, offset: 896)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !538, file: !539, line: 98, baseType: !60, size: 64, offset: 960)
!3980 = !DIDerivedType(tag: DW_TAG_member, scope: !538, file: !539, line: 100, baseType: !3981, size: 128, offset: 1024)
!3981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !538, file: !539, line: 100, size: 128, elements: !3982)
!3982 = !{!3983, !3984}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3981, file: !539, line: 101, baseType: !136, size: 128)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3981, file: !539, line: 102, baseType: !3985, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !538, file: !539, line: 104, baseType: !136, size: 128, offset: 1152)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !538, file: !539, line: 105, baseType: !136, size: 128, offset: 1280)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !538, file: !539, line: 113, baseType: !3989, size: 128, offset: 1408)
!3989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !538, file: !539, line: 109, size: 128, elements: !3990)
!3990 = !{!3991, !3992, !3993}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3989, file: !539, line: 110, baseType: !356, size: 128)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3989, file: !539, line: 111, baseType: !553, size: 128)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3989, file: !539, line: 112, baseType: !832, size: 128, align: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !531, file: !43, line: 1968, baseType: !3995, size: 64, offset: 64)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!57, !537, !502, !3998}
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4000, line: 10, size: 128, elements: !4001)
!4000 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4001 = !{!4002, !4006}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3999, file: !4000, line: 11, baseType: !4003, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{null, !60}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3999, file: !4000, line: 12, baseType: !60, size: 64, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !531, file: !43, line: 1969, baseType: !4008, size: 64, offset: 128)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!17, !3964, !502, !17}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !531, file: !43, line: 1970, baseType: !4012, size: 64, offset: 192)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!525, !502, !17, !1411}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !531, file: !43, line: 1972, baseType: !4016, size: 64, offset: 256)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!17, !537, !428, !17}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !531, file: !43, line: 1974, baseType: !4020, size: 64, offset: 320)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!17, !3964, !502, !537, !63, !1411}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !531, file: !43, line: 1976, baseType: !4024, size: 64, offset: 384)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!17, !537, !502, !537}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !531, file: !43, line: 1977, baseType: !4028, size: 64, offset: 448)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!17, !502, !537}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !531, file: !43, line: 1978, baseType: !4032, size: 64, offset: 512)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!17, !3964, !502, !537, !57}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !531, file: !43, line: 1980, baseType: !4036, size: 64, offset: 576)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!17, !3964, !502, !537, !63}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !531, file: !43, line: 1982, baseType: !4028, size: 64, offset: 640)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !531, file: !43, line: 1983, baseType: !4041, size: 64, offset: 704)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!17, !3964, !502, !537, !63, !655}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !531, file: !43, line: 1985, baseType: !4045, size: 64, offset: 768)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!17, !3964, !502, !537, !502, !537, !22}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !531, file: !43, line: 1987, baseType: !4049, size: 64, offset: 832)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!17, !3964, !537, !4052}
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !43, line: 226, size: 640, elements: !4054)
!4054 = !{!4055, !4056, !4057, !4067, !4076, !4077, !4082, !4083, !4084}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4053, file: !43, line: 227, baseType: !22, size: 32)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4053, file: !43, line: 228, baseType: !63, size: 16, offset: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, scope: !4053, file: !43, line: 241, baseType: !4058, size: 32, offset: 64)
!4058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4053, file: !43, line: 241, size: 32, elements: !4059)
!4059 = !{!4060, !4061}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4058, file: !43, line: 242, baseType: !508, size: 32)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4058, file: !43, line: 243, baseType: !4062, size: 32)
!4062 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4063, line: 16, baseType: !4064)
!4063 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4063, line: 14, size: 32, elements: !4065)
!4065 = !{!4066}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4064, file: !4063, line: 15, baseType: !513, size: 32)
!4067 = !DIDerivedType(tag: DW_TAG_member, scope: !4053, file: !43, line: 245, baseType: !4068, size: 32, offset: 96)
!4068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4053, file: !43, line: 245, size: 32, elements: !4069)
!4069 = !{!4070, !4071}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4068, file: !43, line: 246, baseType: !517, size: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4068, file: !43, line: 247, baseType: !4072, size: 32)
!4072 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4063, line: 20, baseType: !4073)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4063, line: 18, size: 32, elements: !4074)
!4074 = !{!4075}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4073, file: !4063, line: 19, baseType: !521, size: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4053, file: !43, line: 249, baseType: !80, size: 64, offset: 128)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4053, file: !43, line: 250, baseType: !4078, size: 128, offset: 192)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1438, line: 13, size: 128, elements: !4079)
!4079 = !{!4080, !4081}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4078, file: !1438, line: 14, baseType: !1437, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4078, file: !1438, line: 15, baseType: !463, size: 64, offset: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4053, file: !43, line: 251, baseType: !4078, size: 128, offset: 320)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4053, file: !43, line: 252, baseType: !4078, size: 128, offset: 448)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4053, file: !43, line: 259, baseType: !1233, size: 64, offset: 576)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !531, file: !43, line: 1988, baseType: !4086, size: 64, offset: 896)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!17, !3964, !3716, !4089, !571, !22}
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4091, line: 22, size: 1280, elements: !4092)
!4091 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4092 = !{!4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4090, file: !4091, line: 23, baseType: !571, size: 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4090, file: !4091, line: 24, baseType: !63, size: 16, offset: 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4090, file: !4091, line: 25, baseType: !22, size: 32, offset: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4090, file: !4091, line: 26, baseType: !1445, size: 32, offset: 96)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4090, file: !4091, line: 27, baseType: !351, size: 64, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4090, file: !4091, line: 28, baseType: !351, size: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4090, file: !4091, line: 41, baseType: !351, size: 64, offset: 256)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4090, file: !4091, line: 42, baseType: !655, size: 32, offset: 320)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4090, file: !4091, line: 43, baseType: !655, size: 32, offset: 352)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4090, file: !4091, line: 44, baseType: !508, size: 32, offset: 384)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4090, file: !4091, line: 45, baseType: !517, size: 32, offset: 416)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4090, file: !4091, line: 46, baseType: !80, size: 64, offset: 448)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4090, file: !4091, line: 47, baseType: !4078, size: 128, offset: 512)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4090, file: !4091, line: 48, baseType: !4078, size: 128, offset: 640)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4090, file: !4091, line: 49, baseType: !4078, size: 128, offset: 768)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4090, file: !4091, line: 50, baseType: !4078, size: 128, offset: 896)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4090, file: !4091, line: 51, baseType: !351, size: 64, offset: 1024)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4090, file: !4091, line: 52, baseType: !351, size: 64, offset: 1088)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4090, file: !4091, line: 53, baseType: !571, size: 32, offset: 1152)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4090, file: !4091, line: 54, baseType: !571, size: 32, offset: 1184)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4090, file: !4091, line: 55, baseType: !351, size: 64, offset: 1216)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !531, file: !43, line: 1990, baseType: !4115, size: 64, offset: 960)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!460, !537, !428, !74}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !531, file: !43, line: 1991, baseType: !4119, size: 64, offset: 1024)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!17, !502, !4122, !351, !351}
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !43, line: 55, flags: DIFlagFwdDecl)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !531, file: !43, line: 1993, baseType: !4125, size: 64, offset: 1088)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!17, !502, !17}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !531, file: !43, line: 1994, baseType: !4129, size: 64, offset: 1152)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!17, !502, !537, !1233, !22, !63}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !531, file: !43, line: 1997, baseType: !4133, size: 64, offset: 1216)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!17, !3964, !502, !1233, !63}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !531, file: !43, line: 1999, baseType: !4137, size: 64, offset: 1280)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!525, !3964, !537, !17}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !531, file: !43, line: 2001, baseType: !4141, size: 64, offset: 1344)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!17, !3964, !537, !525, !17}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !531, file: !43, line: 2003, baseType: !4145, size: 64, offset: 1408)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!17, !3964, !537, !4148}
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !43, line: 76, flags: DIFlagFwdDecl)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !531, file: !43, line: 2005, baseType: !4151, size: 64, offset: 1472)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!17, !537, !4148}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !531, file: !43, line: 2006, baseType: !4155, size: 64, offset: 1536)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!4158, !502}
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !43, line: 3192, size: 192, elements: !4160)
!4160 = !{!4161, !4162}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4159, file: !43, line: 3193, baseType: !906, size: 128)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4159, file: !43, line: 3194, baseType: !571, size: 32, offset: 128)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !503, file: !43, line: 655, baseType: !650, size: 64, offset: 448)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !503, file: !43, line: 656, baseType: !498, size: 64, offset: 512)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !503, file: !43, line: 659, baseType: !60, size: 64, offset: 576)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !503, file: !43, line: 663, baseType: !78, size: 64, offset: 640)
!4167 = !DIDerivedType(tag: DW_TAG_member, scope: !503, file: !43, line: 671, baseType: !4168, size: 32, offset: 704)
!4168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !503, file: !43, line: 671, size: 32, elements: !4169)
!4169 = !{!4170, !4172}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4168, file: !43, line: 672, baseType: !4171, size: 32)
!4171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4168, file: !43, line: 673, baseType: !22, size: 32)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !503, file: !43, line: 675, baseType: !655, size: 32, offset: 736)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !503, file: !43, line: 676, baseType: !80, size: 64, offset: 768)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !503, file: !43, line: 677, baseType: !4078, size: 128, offset: 832)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !503, file: !43, line: 678, baseType: !4078, size: 128, offset: 960)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !503, file: !43, line: 679, baseType: !4078, size: 128, offset: 1088)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !503, file: !43, line: 680, baseType: !98, size: 32, offset: 1216)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !503, file: !43, line: 681, baseType: !65, size: 16, offset: 1248)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !503, file: !43, line: 682, baseType: !122, size: 8, offset: 1264)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !503, file: !43, line: 683, baseType: !122, size: 8, offset: 1272)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !503, file: !43, line: 684, baseType: !3789, size: 64, offset: 1280)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !503, file: !43, line: 691, baseType: !78, size: 64, offset: 1344)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !503, file: !43, line: 692, baseType: !1261, size: 320, offset: 1408)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !503, file: !43, line: 694, baseType: !78, size: 64, offset: 1728)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !503, file: !43, line: 695, baseType: !78, size: 64, offset: 1792)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !503, file: !43, line: 697, baseType: !356, size: 128, offset: 1856)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !503, file: !43, line: 698, baseType: !136, size: 128, offset: 1984)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !503, file: !43, line: 707, baseType: !136, size: 128, offset: 2112)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !503, file: !43, line: 708, baseType: !136, size: 128, offset: 2240)
!4191 = !DIDerivedType(tag: DW_TAG_member, scope: !503, file: !43, line: 709, baseType: !4192, size: 128, offset: 2368)
!4192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !503, file: !43, line: 709, size: 128, elements: !4193)
!4193 = !{!4194, !4195}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4192, file: !43, line: 710, baseType: !688, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4192, file: !43, line: 711, baseType: !832, size: 128, align: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !503, file: !43, line: 713, baseType: !781, size: 64, offset: 2496)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !503, file: !43, line: 714, baseType: !781, size: 64, offset: 2560)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !503, file: !43, line: 715, baseType: !88, size: 32, offset: 2624)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !503, file: !43, line: 716, baseType: !88, size: 32, offset: 2656)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !503, file: !43, line: 717, baseType: !88, size: 32, offset: 2688)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !503, file: !43, line: 719, baseType: !88, size: 32, offset: 2720)
!4202 = !DIDerivedType(tag: DW_TAG_member, scope: !503, file: !43, line: 721, baseType: !4203, size: 64, offset: 2752)
!4203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !503, file: !43, line: 721, size: 64, elements: !4204)
!4204 = !{!4205, !4206}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4203, file: !43, line: 722, baseType: !3427, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4203, file: !43, line: 723, baseType: !713, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !503, file: !43, line: 725, baseType: !4208, size: 64, offset: 2816)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !43, line: 725, flags: DIFlagFwdDecl)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !503, file: !43, line: 726, baseType: !499, size: 1536, align: 64, offset: 2880)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !503, file: !43, line: 727, baseType: !136, size: 128, offset: 4416)
!4212 = !DIDerivedType(tag: DW_TAG_member, scope: !503, file: !43, line: 728, baseType: !4213, size: 64, offset: 4544)
!4213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !503, file: !43, line: 728, size: 64, elements: !4214)
!4214 = !{!4215, !4216, !4219, !4220}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4213, file: !43, line: 729, baseType: !3043, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4213, file: !43, line: 730, baseType: !4217, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !43, line: 730, flags: DIFlagFwdDecl)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4213, file: !43, line: 731, baseType: !428, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4213, file: !43, line: 732, baseType: !22, size: 32)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !503, file: !43, line: 735, baseType: !572, size: 32, offset: 4608)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !503, file: !43, line: 738, baseType: !572, size: 32, offset: 4640)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !503, file: !43, line: 739, baseType: !3902, size: 64, offset: 4672)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !503, file: !43, line: 750, baseType: !60, size: 64, offset: 4736)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !499, file: !43, line: 474, baseType: !906, size: 128, offset: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !499, file: !43, line: 475, baseType: !1261, size: 320, offset: 192)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !499, file: !43, line: 476, baseType: !911, size: 32, offset: 512)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !499, file: !43, line: 477, baseType: !88, size: 32, offset: 544)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !499, file: !43, line: 482, baseType: !1089, size: 128, offset: 576)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !499, file: !43, line: 483, baseType: !78, size: 64, offset: 704)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !499, file: !43, line: 484, baseType: !78, size: 64, offset: 768)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !499, file: !43, line: 485, baseType: !4233, size: 64, offset: 832)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4235)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !43, line: 404, size: 1280, elements: !4236)
!4236 = !{!4237, !4241, !4311, !4315, !4319, !4325, !4329, !4333, !4338, !4342, !4346, !4350, !4351, !4355, !4359, !4363, !4368, !4372, !4379, !4380}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4235, file: !43, line: 405, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!17, !2106, !725}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4235, file: !43, line: 406, baseType: !4242, size: 64, offset: 64)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!17, !1233, !4245}
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !153, line: 293, size: 1536, elements: !4247)
!4247 = !{!4248, !4278, !4292}
!4248 = !DIDerivedType(tag: DW_TAG_member, scope: !4246, file: !153, line: 295, baseType: !4249, size: 512)
!4249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4246, file: !153, line: 295, size: 512, elements: !4250)
!4250 = !{!4251, !4277}
!4251 = !DIDerivedType(tag: DW_TAG_member, scope: !4249, file: !153, line: 296, baseType: !4252, size: 448)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4249, file: !153, line: 296, size: 448, elements: !4253)
!4253 = !{!4254, !4255, !4264, !4265, !4266, !4275, !4276}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4252, file: !153, line: 298, baseType: !78, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, scope: !4252, file: !153, line: 299, baseType: !4256, size: 128, offset: 64)
!4256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4252, file: !153, line: 299, size: 128, elements: !4257)
!4257 = !{!4258, !4259}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4256, file: !153, line: 300, baseType: !136, size: 128)
!4259 = !DIDerivedType(tag: DW_TAG_member, scope: !4256, file: !153, line: 302, baseType: !4260, size: 128)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4256, file: !153, line: 302, size: 128, elements: !4261)
!4261 = !{!4262, !4263}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4260, file: !153, line: 303, baseType: !60, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4260, file: !153, line: 305, baseType: !22, size: 32, offset: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4252, file: !153, line: 310, baseType: !498, size: 64, offset: 192)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4252, file: !153, line: 311, baseType: !78, size: 64, offset: 256)
!4266 = !DIDerivedType(tag: DW_TAG_member, scope: !4252, file: !153, line: 312, baseType: !4267, size: 64, offset: 320)
!4267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4252, file: !153, line: 312, size: 64, elements: !4268)
!4268 = !{!4269, !4270}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4267, file: !153, line: 313, baseType: !60, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4267, file: !153, line: 314, baseType: !4271, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !153, line: 257, baseType: !4272)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 255, size: 64, elements: !4273)
!4273 = !{!4274}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4272, file: !153, line: 256, baseType: !78, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4252, file: !153, line: 316, baseType: !88, size: 32, offset: 384)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4252, file: !153, line: 317, baseType: !88, size: 32, offset: 416)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4249, file: !153, line: 323, baseType: !2107, size: 512, align: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, scope: !4246, file: !153, line: 325, baseType: !4279, size: 512, offset: 512)
!4279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4246, file: !153, line: 325, size: 512, elements: !4280)
!4280 = !{!4281, !4291}
!4281 = !DIDerivedType(tag: DW_TAG_member, scope: !4279, file: !153, line: 326, baseType: !4282, size: 320)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4279, file: !153, line: 326, size: 320, elements: !4283)
!4283 = !{!4284, !4285, !4286, !4287, !4288, !4289, !4290}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4282, file: !153, line: 327, baseType: !78, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4282, file: !153, line: 328, baseType: !78, size: 64, offset: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4282, file: !153, line: 329, baseType: !78, size: 64, offset: 128)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4282, file: !153, line: 331, baseType: !88, size: 32, offset: 192)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4282, file: !153, line: 332, baseType: !88, size: 32, offset: 224)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4282, file: !153, line: 333, baseType: !88, size: 32, offset: 256)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4282, file: !153, line: 335, baseType: !22, size: 32, offset: 288)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4279, file: !153, line: 339, baseType: !2107, size: 512, align: 128)
!4292 = !DIDerivedType(tag: DW_TAG_member, scope: !4246, file: !153, line: 341, baseType: !4293, size: 512, offset: 1024)
!4293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4246, file: !153, line: 341, size: 512, elements: !4294)
!4294 = !{!4295, !4304, !4310}
!4295 = !DIDerivedType(tag: DW_TAG_member, scope: !4293, file: !153, line: 342, baseType: !4296, size: 384)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4293, file: !153, line: 342, size: 384, elements: !4297)
!4297 = !{!4298, !4299, !4300, !4301, !4302, !4303}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4296, file: !153, line: 343, baseType: !78, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4296, file: !153, line: 344, baseType: !78, size: 64, offset: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4296, file: !153, line: 346, baseType: !60, size: 64, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4296, file: !153, line: 347, baseType: !60, size: 64, offset: 192)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4296, file: !153, line: 348, baseType: !60, size: 64, offset: 256)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4296, file: !153, line: 349, baseType: !60, size: 64, offset: 320)
!4304 = !DIDerivedType(tag: DW_TAG_member, scope: !4293, file: !153, line: 352, baseType: !4305, size: 256)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4293, file: !153, line: 352, size: 256, elements: !4306)
!4306 = !{!4307, !4308, !4309}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4305, file: !153, line: 353, baseType: !78, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4305, file: !153, line: 354, baseType: !78, size: 64, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4305, file: !153, line: 356, baseType: !136, size: 128, offset: 128)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4293, file: !153, line: 359, baseType: !2107, size: 512, align: 128)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4235, file: !43, line: 409, baseType: !4312, size: 64, offset: 128)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!17, !498, !725}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4235, file: !43, line: 412, baseType: !4316, size: 64, offset: 192)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!1411, !498, !4245}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4235, file: !43, line: 414, baseType: !4320, size: 64, offset: 256)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{null, !4323}
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !43, line: 310, flags: DIFlagFwdDecl)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4235, file: !43, line: 416, baseType: !4326, size: 64, offset: 320)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!17, !1233, !498, !80, !22, !3152, !3553}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4235, file: !43, line: 419, baseType: !4330, size: 64, offset: 384)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!17, !1233, !498, !80, !22, !22, !2106, !60}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4235, file: !43, line: 424, baseType: !4334, size: 64, offset: 448)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!4337, !498, !4337}
!4337 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !64, line: 131, baseType: !351)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4235, file: !43, line: 425, baseType: !4339, size: 64, offset: 512)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{null, !4245, !74, !74}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4235, file: !43, line: 426, baseType: !4343, size: 64, offset: 576)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!1411, !4245, !911}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4235, file: !43, line: 427, baseType: !4347, size: 64, offset: 640)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{null, !4245}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4235, file: !43, line: 428, baseType: !3445, size: 64, offset: 704)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4235, file: !43, line: 433, baseType: !4352, size: 64, offset: 768)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!17, !498, !4245, !4245, !197}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4235, file: !43, line: 435, baseType: !4356, size: 64, offset: 832)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!17, !4245}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4235, file: !43, line: 436, baseType: !4360, size: 64, offset: 896)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!1411, !4245, !74, !74}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4235, file: !43, line: 438, baseType: !4364, size: 64, offset: 960)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{null, !4245, !4367, !4367}
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4235, file: !43, line: 439, baseType: !4369, size: 64, offset: 1024)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!17, !498, !2106}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4235, file: !43, line: 442, baseType: !4373, size: 64, offset: 1088)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!17, !4376, !1233, !4378}
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !43, line: 66, flags: DIFlagFwdDecl)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4235, file: !43, line: 444, baseType: !3545, size: 64, offset: 1152)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4235, file: !43, line: 445, baseType: !4381, size: 64, offset: 1216)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!17, !3448, !3470}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !43, line: 486, baseType: !78, size: 64, offset: 896)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !499, file: !43, line: 487, baseType: !1261, size: 320, offset: 960)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !499, file: !43, line: 488, baseType: !3588, size: 32, offset: 1280)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !499, file: !43, line: 489, baseType: !98, size: 32, offset: 1312)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !499, file: !43, line: 490, baseType: !136, size: 128, offset: 1344)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !499, file: !43, line: 491, baseType: !60, size: 64, offset: 1472)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !489, file: !454, line: 180, baseType: !4391, size: 64, offset: 320)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!460, !1233, !393, !488, !428, !80, !74}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !489, file: !454, line: 182, baseType: !4391, size: 64, offset: 384)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !489, file: !454, line: 184, baseType: !4396, size: 64, offset: 448)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!17, !1233, !393, !488, !1999}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !477, file: !454, line: 90, baseType: !4400, size: 64, offset: 192)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !477, file: !454, line: 91, baseType: !4402, size: 64, offset: 256)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !444, file: !388, line: 120, baseType: !4404, size: 64, offset: 192)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!4407, !411}
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4409)
!4409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !205, line: 39, size: 384, elements: !4410)
!4410 = !{!4411, !4412, !4416, !4420, !4426, !4430}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4409, file: !205, line: 40, baseType: !204, size: 32)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4409, file: !205, line: 41, baseType: !4413, size: 64, offset: 64)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{!1411}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4409, file: !205, line: 42, baseType: !4417, size: 64, offset: 128)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!60}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4409, file: !205, line: 43, baseType: !4421, size: 64, offset: 192)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!1340, !4424}
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !205, line: 19, flags: DIFlagFwdDecl)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4409, file: !205, line: 44, baseType: !4427, size: 64, offset: 256)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!1340}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4409, file: !205, line: 45, baseType: !4003, size: 64, offset: 320)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !444, file: !388, line: 121, baseType: !4432, size: 64, offset: 256)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!1340, !411}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !444, file: !388, line: 122, baseType: !4436, size: 64, offset: 320)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{null, !411, !1590, !1591}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !387, file: !388, line: 70, baseType: !1936, size: 64, offset: 384)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !387, file: !388, line: 71, baseType: !4441, size: 32, offset: 448)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4442, line: 19, size: 32, elements: !4443)
!4442 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4443 = !{!4444}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4441, file: !4442, line: 20, baseType: !877, size: 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !387, file: !388, line: 73, baseType: !22, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !387, file: !388, line: 74, baseType: !22, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !387, file: !388, line: 75, baseType: !22, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !387, file: !388, line: 76, baseType: !22, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !387, file: !388, line: 77, baseType: !22, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !384, file: !36, line: 47, baseType: !374, size: 64, offset: 512)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !384, file: !36, line: 48, baseType: !393, size: 64, offset: 576)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !384, file: !36, line: 49, baseType: !4453, size: 64, offset: 640)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !36, line: 49, flags: DIFlagFwdDecl)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !384, file: !36, line: 50, baseType: !1564, size: 64, offset: 704)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !375, file: !36, line: 418, baseType: !4457, size: 64, offset: 1408)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !36, line: 53, size: 448, elements: !4459)
!4459 = !{!4460, !4461, !4466, !4470, !4474, !4478}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4458, file: !36, line: 54, baseType: !465, size: 128)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4458, file: !36, line: 55, baseType: !4462, size: 64, offset: 128)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!460, !4457, !4465, !428}
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4458, file: !36, line: 57, baseType: !4467, size: 64, offset: 192)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{!460, !4457, !4465, !57, !74}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4458, file: !36, line: 59, baseType: !4471, size: 64, offset: 256)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{null, !374, !57}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4458, file: !36, line: 60, baseType: !4475, size: 64, offset: 320)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!17, !374}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4458, file: !36, line: 61, baseType: !4479, size: 64, offset: 384)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{null, !374}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !375, file: !36, line: 419, baseType: !57, size: 64, offset: 1472)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !375, file: !36, line: 420, baseType: !57, size: 64, offset: 1536)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !375, file: !36, line: 421, baseType: !393, size: 64, offset: 1600)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !375, file: !36, line: 424, baseType: !4486, size: 64, offset: 1664)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4488)
!4488 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !36, line: 424, flags: DIFlagFwdDecl)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !375, file: !36, line: 425, baseType: !4490, size: 64, offset: 1728)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1307)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !375, file: !36, line: 426, baseType: !22, size: 32, offset: 1792)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !375, file: !36, line: 435, baseType: !775, size: 256, offset: 1856)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !375, file: !36, line: 437, baseType: !4495, size: 64, offset: 2112)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4497, line: 69, size: 320, elements: !4498)
!4497 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4498 = !{!4499, !4500, !4501, !4518, !4520, !4524, !4525}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4496, file: !4497, line: 70, baseType: !57, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4496, file: !4497, line: 71, baseType: !374, size: 64, offset: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4496, file: !4497, line: 72, baseType: !4502, size: 64, offset: 128)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4504)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4497, line: 47, size: 256, elements: !4505)
!4505 = !{!4506, !4507, !4513, !4517}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4504, file: !4497, line: 49, baseType: !22, size: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4504, file: !4497, line: 51, baseType: !4508, size: 64, offset: 64)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!17, !57, !4511}
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4496)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4504, file: !4497, line: 53, baseType: !4514, size: 64, offset: 128)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!17, !428, !4511}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4504, file: !4497, line: 55, baseType: !4003, size: 64, offset: 192)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4496, file: !4497, line: 73, baseType: !4519, size: 16, offset: 192)
!4519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4496, file: !4497, line: 74, baseType: !4521, size: 8, offset: 208)
!4521 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !123, line: 16, baseType: !4522)
!4522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !125, line: 20, baseType: !4523)
!4523 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4496, file: !4497, line: 75, baseType: !122, size: 8, offset: 216)
!4525 = !DIDerivedType(tag: DW_TAG_member, scope: !4496, file: !4497, line: 76, baseType: !4526, size: 64, offset: 256)
!4526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4496, file: !4497, line: 76, size: 64, elements: !4527)
!4527 = !{!4528, !4529, !4536}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4526, file: !4497, line: 77, baseType: !60, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4526, file: !4497, line: 78, baseType: !4530, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4532)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4497, line: 86, size: 128, elements: !4533)
!4533 = !{!4534, !4535}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4532, file: !4497, line: 87, baseType: !22, size: 32)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4532, file: !4497, line: 88, baseType: !428, size: 64, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4526, file: !4497, line: 79, baseType: !4537, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4539)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4497, line: 92, size: 256, elements: !4540)
!4540 = !{!4541, !4542, !4543, !4544, !4545}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4539, file: !4497, line: 94, baseType: !22, size: 32)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4539, file: !4497, line: 95, baseType: !22, size: 32, offset: 32)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4539, file: !4497, line: 96, baseType: !3888, size: 64, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4539, file: !4497, line: 97, baseType: !4502, size: 64, offset: 128)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4539, file: !4497, line: 98, baseType: !60, size: 64, offset: 192)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !375, file: !36, line: 438, baseType: !22, size: 32, offset: 2176)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !375, file: !36, line: 441, baseType: !22, size: 32, offset: 2208)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !375, file: !36, line: 442, baseType: !4486, size: 64, offset: 2240)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !375, file: !36, line: 443, baseType: !4490, size: 64, offset: 2304)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !375, file: !36, line: 444, baseType: !1411, size: 8, offset: 2368)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !375, file: !36, line: 451, baseType: !1411, size: 8, offset: 2376)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !375, file: !36, line: 454, baseType: !22, size: 32, offset: 2400)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !375, file: !36, line: 455, baseType: !4554, size: 64, offset: 2432)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4556, line: 23, size: 96, elements: !4557)
!4556 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4557 = !{!4558, !4559, !4560}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4555, file: !4556, line: 24, baseType: !17, size: 32)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4555, file: !4556, line: 24, baseType: !17, size: 32, offset: 32)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4555, file: !4556, line: 24, baseType: !17, size: 32, offset: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !375, file: !36, line: 458, baseType: !4562, size: 64, offset: 2496)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !375, file: !36, line: 460, baseType: !4564, size: 4032, align: 512, offset: 2560)
!4564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4565, size: 4032, elements: !4579)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !36, line: 362, size: 576, elements: !4566)
!4566 = !{!4567, !4568, !4569}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4565, file: !36, line: 363, baseType: !60, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4565, file: !36, line: 364, baseType: !22, size: 32, offset: 64)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4565, file: !36, line: 367, baseType: !4570, size: 448, offset: 128)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !36, line: 319, size: 448, elements: !4571)
!4571 = !{!4572, !4573}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4570, file: !36, line: 320, baseType: !374, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4570, file: !36, line: 321, baseType: !4574, size: 384, offset: 64)
!4574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4575, line: 40, size: 384, elements: !4576)
!4575 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4576 = !{!4577}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4574, file: !4575, line: 41, baseType: !4578, size: 384, align: 64)
!4578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 384, align: 64, elements: !2613)
!4579 = !{!4580}
!4580 = !DISubrange(count: 7)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !375, file: !36, line: 463, baseType: !4582, size: 192, offset: 6592)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4583, line: 8, size: 192, elements: !4584)
!4583 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4584 = !{!4585, !4586, !4587}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4582, file: !4583, line: 10, baseType: !22, size: 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4582, file: !4583, line: 11, baseType: !757, size: 64, offset: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4582, file: !4583, line: 12, baseType: !4588, size: 64, offset: 128)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4590, line: 59, size: 48, elements: !4591)
!4590 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4591 = !{!4592, !4593, !4594, !4595, !4596, !4597}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4589, file: !4590, line: 60, baseType: !1357, size: 16)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4589, file: !4590, line: 61, baseType: !1357, size: 16, offset: 16)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4589, file: !4590, line: 63, baseType: !22, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4589, file: !4590, line: 64, baseType: !22, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4589, file: !4590, line: 65, baseType: !22, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4589, file: !4590, line: 66, baseType: !22, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !375, file: !36, line: 465, baseType: !78, size: 64, offset: 6784)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !375, file: !36, line: 469, baseType: !22, size: 32, offset: 6848)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !375, file: !36, line: 470, baseType: !136, size: 128, offset: 6912)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !375, file: !36, line: 471, baseType: !4602, size: 64, offset: 7040)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4604, line: 33, size: 96, elements: !4605)
!4604 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4605 = !{!4606, !4607, !4608, !4609}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4603, file: !4604, line: 37, baseType: !17, size: 32)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4603, file: !4604, line: 43, baseType: !17, size: 32, offset: 32)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4603, file: !4604, line: 45, baseType: !65, size: 16, offset: 64)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4603, file: !4604, line: 47, baseType: !65, size: 16, offset: 80)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !375, file: !36, line: 476, baseType: !4611, size: 64, offset: 7104)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !36, line: 378, size: 256, elements: !4613)
!4613 = !{!4614, !4630, !4631, !4632}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4612, file: !36, line: 379, baseType: !4615, size: 64)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4617, line: 204, baseType: !4618)
!4617 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4617, line: 197, size: 192, elements: !4619)
!4619 = !{!4620, !4622, !4623, !4624, !4626, !4628}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4618, file: !4617, line: 198, baseType: !4621, size: 32)
!4621 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4617, line: 21, baseType: !572)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4618, file: !4617, line: 199, baseType: !126, size: 8, offset: 32)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4618, file: !4617, line: 200, baseType: !126, size: 8, offset: 40)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4618, file: !4617, line: 201, baseType: !4625, size: 16, offset: 48)
!4625 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4617, line: 17, baseType: !133)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4618, file: !4617, line: 202, baseType: !4627, size: 64, offset: 64)
!4627 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4617, line: 16, baseType: !352)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4618, file: !4617, line: 203, baseType: !4629, size: 64, offset: 128)
!4629 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4617, line: 22, baseType: !352)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4612, file: !36, line: 380, baseType: !22, size: 32, offset: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4612, file: !36, line: 381, baseType: !428, size: 64, offset: 128)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4612, file: !36, line: 382, baseType: !428, size: 64, offset: 192)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !375, file: !36, line: 477, baseType: !4612, size: 256, offset: 7168)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !375, file: !36, line: 480, baseType: !4635, size: 64, offset: 7424)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !36, line: 480, flags: DIFlagFwdDecl)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !375, file: !36, line: 483, baseType: !4638, size: 64, offset: 7488)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !36, line: 483, flags: DIFlagFwdDecl)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !375, file: !36, line: 488, baseType: !428, size: 64, offset: 7552)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !375, file: !36, line: 492, baseType: !60, size: 64, offset: 7616)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !375, file: !36, line: 493, baseType: !22, size: 32, offset: 7680)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !375, file: !36, line: 495, baseType: !60, size: 64, offset: 7744)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !375, file: !36, line: 496, baseType: !22, size: 32, offset: 7808)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !375, file: !36, line: 499, baseType: !22, size: 32, offset: 7840)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !375, file: !36, line: 500, baseType: !4647, size: 64, offset: 7872)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4649, line: 45, baseType: !4650)
!4649 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !375, file: !36, line: 503, baseType: !22, size: 32, offset: 7936)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !375, file: !36, line: 504, baseType: !4653, size: 64, offset: 8000)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4656, line: 96, size: 192, elements: !4657)
!4656 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4657 = !{!4658, !4659, !4701, !4703}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4655, file: !4656, line: 97, baseType: !22, size: 32)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4655, file: !4656, line: 98, baseType: !4660, size: 64, offset: 64)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4656, line: 24, size: 3072, elements: !4662)
!4662 = !{!4663, !4665, !4666, !4667, !4668, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4698, !4699, !4700}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4661, file: !4656, line: 26, baseType: !4664, size: 128)
!4664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 128, elements: !2613)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4661, file: !4656, line: 27, baseType: !4664, size: 128, offset: 128)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4661, file: !4656, line: 28, baseType: !17, size: 32, offset: 256)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4661, file: !4656, line: 31, baseType: !98, size: 32, align: 512, offset: 512)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4661, file: !4656, line: 32, baseType: !4669, size: 960, offset: 576)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4670, line: 206, size: 960, elements: !4671)
!4670 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4671 = !{!4672, !4673, !4676, !4678, !4679, !4680}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4669, file: !4670, line: 207, baseType: !835, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4669, file: !4670, line: 208, baseType: !4674, size: 256, offset: 64)
!4674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4675, size: 256, elements: !886)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4669, file: !4670, line: 209, baseType: !4677, size: 256, offset: 320)
!4677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !886)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4669, file: !4670, line: 213, baseType: !463, size: 64, offset: 576)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4669, file: !4670, line: 215, baseType: !1625, size: 256, offset: 640)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4669, file: !4670, line: 216, baseType: !122, size: 8, offset: 896)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4661, file: !4656, line: 33, baseType: !78, size: 64, offset: 1536)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4661, file: !4656, line: 34, baseType: !78, size: 64, offset: 1600)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4661, file: !4656, line: 35, baseType: !1411, size: 8, offset: 1664)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4661, file: !4656, line: 36, baseType: !2321, size: 320, offset: 1728)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4661, file: !4656, line: 37, baseType: !1526, size: 256, offset: 2048)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4661, file: !4656, line: 38, baseType: !832, size: 128, align: 64, offset: 2304)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4661, file: !4656, line: 39, baseType: !4688, size: 64, offset: 2432)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4656, line: 49, size: 768, elements: !4690)
!4690 = !{!4691, !4692, !4693, !4694, !4695, !4696, !4697}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4689, file: !4656, line: 50, baseType: !98, size: 32)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4689, file: !4656, line: 51, baseType: !4677, size: 256, offset: 64)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4689, file: !4656, line: 53, baseType: !4677, size: 256, offset: 320)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4689, file: !4656, line: 54, baseType: !78, size: 64, offset: 576)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4689, file: !4656, line: 55, baseType: !4688, size: 64, offset: 640)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4689, file: !4656, line: 56, baseType: !17, size: 32, offset: 704)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4689, file: !4656, line: 57, baseType: !17, size: 32, offset: 736)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4661, file: !4656, line: 40, baseType: !78, size: 64, offset: 2496)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4661, file: !4656, line: 42, baseType: !17, size: 32, offset: 2560)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4661, file: !4656, line: 43, baseType: !4654, size: 64, offset: 2624)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4655, file: !4656, line: 99, baseType: !4702, offset: 128)
!4702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !693, line: 211, elements: !694)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4655, file: !4656, line: 100, baseType: !4704, size: 64, offset: 128)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4656, line: 63, size: 3008, elements: !4706)
!4706 = !{!4707, !4708, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4736}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4705, file: !4656, line: 64, baseType: !4688, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4705, file: !4656, line: 65, baseType: !4709, size: 192, offset: 64)
!4709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4688, size: 192, elements: !429)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4705, file: !4656, line: 67, baseType: !17, size: 32, offset: 256)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4705, file: !4656, line: 68, baseType: !775, size: 256, offset: 320)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4705, file: !4656, line: 69, baseType: !98, size: 32, offset: 576)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4705, file: !4656, line: 70, baseType: !775, size: 256, offset: 640)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4705, file: !4656, line: 71, baseType: !78, size: 64, offset: 896)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4705, file: !4656, line: 72, baseType: !78, size: 64, offset: 960)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4705, file: !4656, line: 73, baseType: !78, size: 64, offset: 1024)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4705, file: !4656, line: 74, baseType: !78, size: 64, offset: 1088)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4705, file: !4656, line: 75, baseType: !78, size: 64, offset: 1152)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4705, file: !4656, line: 76, baseType: !78, size: 64, offset: 1216)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4705, file: !4656, line: 77, baseType: !78, size: 64, offset: 1280)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4705, file: !4656, line: 78, baseType: !78, size: 64, offset: 1344)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4705, file: !4656, line: 79, baseType: !1411, size: 8, offset: 1408)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4705, file: !4656, line: 80, baseType: !78, size: 64, offset: 1472)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4705, file: !4656, line: 81, baseType: !775, size: 256, offset: 1536)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4705, file: !4656, line: 82, baseType: !1565, size: 256, offset: 1792)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4705, file: !4656, line: 84, baseType: !88, size: 32, offset: 2048)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4705, file: !4656, line: 87, baseType: !78, size: 64, offset: 2112)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4705, file: !4656, line: 88, baseType: !78, size: 64, offset: 2176)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4705, file: !4656, line: 89, baseType: !4730, size: 704, offset: 2240)
!4730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1527, line: 111, size: 704, elements: !4731)
!4731 = !{!4732, !4733, !4734, !4735}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4730, file: !1527, line: 112, baseType: !1526, size: 256)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4730, file: !1527, line: 113, baseType: !2321, size: 320, offset: 256)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4730, file: !1527, line: 116, baseType: !2536, size: 64, offset: 576)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4730, file: !1527, line: 117, baseType: !17, size: 32, offset: 640)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4705, file: !4656, line: 90, baseType: !4654, size: 64, offset: 2944)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !375, file: !36, line: 515, baseType: !4738, size: 64, offset: 8064)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4740, line: 117, size: 128, elements: !4741)
!4740 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4741 = !{!4742, !4743, !4744}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4739, file: !4740, line: 118, baseType: !1307, size: 32)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4739, file: !4740, line: 119, baseType: !1307, size: 32, offset: 32)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4739, file: !4740, line: 120, baseType: !463, size: 64, offset: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !375, file: !36, line: 516, baseType: !22, size: 32, offset: 8128)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !375, file: !36, line: 519, baseType: !22, size: 32, offset: 8160)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !375, file: !36, line: 520, baseType: !4748, size: 64, offset: 8192)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !375, file: !36, line: 523, baseType: !4750, size: 64, offset: 8256)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !36, line: 523, flags: DIFlagFwdDecl)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !375, file: !36, line: 524, baseType: !22, size: 32, offset: 8320)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !375, file: !36, line: 525, baseType: !4755, size: 64, offset: 8384)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !36, line: 525, flags: DIFlagFwdDecl)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !375, file: !36, line: 526, baseType: !22, size: 32, offset: 8448)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !375, file: !36, line: 533, baseType: !60, size: 64, offset: 8512)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !375, file: !36, line: 534, baseType: !22, size: 32, offset: 8576)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !375, file: !36, line: 535, baseType: !4762, size: 64, offset: 8640)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !375, file: !36, line: 536, baseType: !22, size: 32, offset: 8704)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !375, file: !36, line: 539, baseType: !17, size: 32, offset: 8736)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !375, file: !36, line: 540, baseType: !4766, size: 64, offset: 8768)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4768, line: 32, size: 64, elements: !4769)
!4768 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4769 = !{!4770, !4771}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4767, file: !4768, line: 33, baseType: !1307, size: 32)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4767, file: !4768, line: 34, baseType: !1307, size: 32, offset: 32)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !375, file: !36, line: 563, baseType: !136, size: 128, offset: 8832)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !375, file: !36, line: 565, baseType: !136, size: 128, offset: 8960)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !375, file: !36, line: 568, baseType: !2455, size: 64, offset: 9088)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !375, file: !36, line: 570, baseType: !88, size: 32, offset: 9152)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !370, file: !264, line: 306, baseType: !4777, size: 64, offset: 192)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !217, line: 705, size: 5824, elements: !4779)
!4779 = !{!4780, !4781, !4782, !4785, !4786, !4839, !4909, !4910, !4911, !4912, !4913, !4920, !5012, !5025, !5035, !5039, !5041, !5042, !5043, !5047, !5054, !5055, !5058, !5061, !5065, !5169, !5170, !5171, !5172, !5173, !5174, !5204, !5205, !5206, !5209, !5212, !5221, !5222, !5223, !5224, !5225, !5226}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4778, file: !217, line: 706, baseType: !387, size: 512)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4778, file: !217, line: 707, baseType: !4777, size: 64, offset: 512)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4778, file: !217, line: 709, baseType: !4783, size: 64, offset: 576)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !217, line: 37, flags: DIFlagFwdDecl)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4778, file: !217, line: 711, baseType: !57, size: 64, offset: 640)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4778, file: !217, line: 712, baseType: !4787, size: 64, offset: 704)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4789)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !217, line: 89, size: 384, elements: !4790)
!4790 = !{!4791, !4792, !4793, !4799, !4804, !4808}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4789, file: !217, line: 90, baseType: !57, size: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4789, file: !217, line: 91, baseType: !474, size: 64, offset: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4789, file: !217, line: 92, baseType: !4794, size: 64, offset: 128)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!17, !4797, !423}
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4778)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4789, file: !217, line: 93, baseType: !4800, size: 64, offset: 192)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!428, !4797, !4803, !1590, !1591}
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4789, file: !217, line: 95, baseType: !4805, size: 64, offset: 256)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{null, !4777}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4789, file: !217, line: 97, baseType: !4809, size: 64, offset: 320)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4811)
!4811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !224, line: 286, size: 1472, elements: !4812)
!4812 = !{!4813, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4811, file: !224, line: 287, baseType: !4814, size: 64)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!17, !4777}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4811, file: !224, line: 288, baseType: !4805, size: 64, offset: 64)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4811, file: !224, line: 289, baseType: !4814, size: 64, offset: 128)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4811, file: !224, line: 290, baseType: !4814, size: 64, offset: 192)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4811, file: !224, line: 291, baseType: !4814, size: 64, offset: 256)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4811, file: !224, line: 292, baseType: !4814, size: 64, offset: 320)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4811, file: !224, line: 293, baseType: !4814, size: 64, offset: 384)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4811, file: !224, line: 294, baseType: !4814, size: 64, offset: 448)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4811, file: !224, line: 295, baseType: !4814, size: 64, offset: 512)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4811, file: !224, line: 296, baseType: !4814, size: 64, offset: 576)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4811, file: !224, line: 297, baseType: !4814, size: 64, offset: 640)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4811, file: !224, line: 298, baseType: !4814, size: 64, offset: 704)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4811, file: !224, line: 299, baseType: !4814, size: 64, offset: 768)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4811, file: !224, line: 300, baseType: !4814, size: 64, offset: 832)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4811, file: !224, line: 301, baseType: !4814, size: 64, offset: 896)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4811, file: !224, line: 302, baseType: !4814, size: 64, offset: 960)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4811, file: !224, line: 303, baseType: !4814, size: 64, offset: 1024)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4811, file: !224, line: 304, baseType: !4814, size: 64, offset: 1088)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4811, file: !224, line: 305, baseType: !4814, size: 64, offset: 1152)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4811, file: !224, line: 306, baseType: !4814, size: 64, offset: 1216)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4811, file: !224, line: 307, baseType: !4814, size: 64, offset: 1280)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4811, file: !224, line: 308, baseType: !4814, size: 64, offset: 1344)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4811, file: !224, line: 309, baseType: !4814, size: 64, offset: 1408)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4778, file: !217, line: 714, baseType: !4840, size: 64, offset: 768)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4842)
!4842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4843, line: 80, size: 1344, elements: !4844)
!4843 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4844 = !{!4845, !4846, !4847, !4848, !4849, !4850, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4908}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4842, file: !4843, line: 81, baseType: !57, size: 64)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4842, file: !4843, line: 82, baseType: !57, size: 64, offset: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4842, file: !4843, line: 83, baseType: !474, size: 64, offset: 128)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4842, file: !4843, line: 84, baseType: !474, size: 64, offset: 192)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4842, file: !4843, line: 85, baseType: !474, size: 64, offset: 256)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4842, file: !4843, line: 87, baseType: !4851, size: 64, offset: 320)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!17, !4777, !4854}
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !211, line: 96, size: 1152, elements: !4856)
!4856 = !{!4857, !4858, !4859, !4860, !4861, !4862, !4863, !4867, !4871, !4872, !4873, !4874, !4875, !4883, !4884, !4885, !4886, !4887, !4888}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4855, file: !211, line: 97, baseType: !57, size: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4855, file: !211, line: 98, baseType: !4840, size: 64, offset: 64)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4855, file: !211, line: 100, baseType: !374, size: 64, offset: 128)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4855, file: !211, line: 101, baseType: !57, size: 64, offset: 192)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4855, file: !211, line: 103, baseType: !1411, size: 8, offset: 256)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4855, file: !211, line: 104, baseType: !210, size: 32, offset: 288)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4855, file: !211, line: 106, baseType: !4864, size: 64, offset: 320)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4866)
!4866 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !211, line: 106, flags: DIFlagFwdDecl)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4855, file: !211, line: 107, baseType: !4868, size: 64, offset: 384)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4870)
!4870 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !211, line: 107, flags: DIFlagFwdDecl)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4855, file: !211, line: 109, baseType: !4814, size: 64, offset: 448)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4855, file: !211, line: 110, baseType: !4805, size: 64, offset: 512)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4855, file: !211, line: 111, baseType: !4814, size: 64, offset: 576)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4855, file: !211, line: 112, baseType: !4805, size: 64, offset: 640)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4855, file: !211, line: 113, baseType: !4876, size: 64, offset: 704)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!17, !4777, !4879}
!4879 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !224, line: 60, baseType: !4880)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !224, line: 58, size: 32, elements: !4881)
!4881 = !{!4882}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4880, file: !224, line: 59, baseType: !17, size: 32)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4855, file: !211, line: 114, baseType: !4814, size: 64, offset: 768)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4855, file: !211, line: 115, baseType: !474, size: 64, offset: 832)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4855, file: !211, line: 116, baseType: !474, size: 64, offset: 896)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4855, file: !211, line: 118, baseType: !4809, size: 64, offset: 960)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4855, file: !211, line: 119, baseType: !4805, size: 64, offset: 1024)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4855, file: !211, line: 121, baseType: !4889, size: 64, offset: 1088)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !211, line: 121, flags: DIFlagFwdDecl)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4842, file: !4843, line: 88, baseType: !4794, size: 64, offset: 384)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4842, file: !4843, line: 89, baseType: !4814, size: 64, offset: 448)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4842, file: !4843, line: 90, baseType: !4805, size: 64, offset: 512)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4842, file: !4843, line: 91, baseType: !4805, size: 64, offset: 576)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4842, file: !4843, line: 92, baseType: !4805, size: 64, offset: 640)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4842, file: !4843, line: 94, baseType: !4814, size: 64, offset: 704)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4842, file: !4843, line: 95, baseType: !4814, size: 64, offset: 768)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4842, file: !4843, line: 97, baseType: !4876, size: 64, offset: 832)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4842, file: !4843, line: 98, baseType: !4814, size: 64, offset: 896)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4842, file: !4843, line: 100, baseType: !4814, size: 64, offset: 960)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4842, file: !4843, line: 102, baseType: !4814, size: 64, offset: 1024)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4842, file: !4843, line: 103, baseType: !4805, size: 64, offset: 1088)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4842, file: !4843, line: 105, baseType: !4809, size: 64, offset: 1152)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4842, file: !4843, line: 107, baseType: !4905, size: 64, offset: 1216)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4907)
!4907 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4843, line: 107, flags: DIFlagFwdDecl)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4842, file: !4843, line: 109, baseType: !1411, size: 8, offset: 1280)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4778, file: !217, line: 715, baseType: !4854, size: 64, offset: 832)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4778, file: !217, line: 717, baseType: !60, size: 64, offset: 896)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4778, file: !217, line: 719, baseType: !60, size: 64, offset: 960)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4778, file: !217, line: 721, baseType: !775, size: 256, offset: 1024)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4778, file: !217, line: 725, baseType: !4914, size: 448, offset: 1280)
!4914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !217, line: 517, size: 448, elements: !4915)
!4915 = !{!4916, !4917, !4918, !4919}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4914, file: !217, line: 518, baseType: !136, size: 128)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4914, file: !217, line: 519, baseType: !136, size: 128, offset: 128)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4914, file: !217, line: 520, baseType: !136, size: 128, offset: 256)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4914, file: !217, line: 521, baseType: !216, size: 32, offset: 384)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4778, file: !217, line: 726, baseType: !4921, size: 2496, offset: 1728)
!4921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !224, line: 663, size: 2496, elements: !4922)
!4922 = !{!4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5005, !5009}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4921, file: !224, line: 664, baseType: !4879, size: 32)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4921, file: !224, line: 665, baseType: !22, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4921, file: !224, line: 666, baseType: !22, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4921, file: !224, line: 667, baseType: !1411, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4921, file: !224, line: 668, baseType: !1411, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4921, file: !224, line: 669, baseType: !1411, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4921, file: !224, line: 670, baseType: !1411, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4921, file: !224, line: 671, baseType: !1411, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4921, file: !224, line: 672, baseType: !1411, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4921, file: !224, line: 673, baseType: !1411, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4921, file: !224, line: 674, baseType: !1411, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4921, file: !224, line: 675, baseType: !571, size: 32, offset: 64)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4921, file: !224, line: 676, baseType: !98, size: 32, offset: 96)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4921, file: !224, line: 678, baseType: !136, size: 128, offset: 128)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4921, file: !224, line: 679, baseType: !1565, size: 256, offset: 256)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4921, file: !224, line: 680, baseType: !4939, size: 64, offset: 512)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4941, line: 43, size: 1536, elements: !4942)
!4941 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4942 = !{!4943, !4944, !4945, !4946, !4947, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4940, file: !4941, line: 44, baseType: !57, size: 64)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4940, file: !4941, line: 45, baseType: !17, size: 32, offset: 64)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4940, file: !4941, line: 46, baseType: !136, size: 128, offset: 128)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4940, file: !4941, line: 47, baseType: !98, size: 32, offset: 256)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4940, file: !4941, line: 48, baseType: !4948, size: 64, offset: 320)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !224, line: 629, flags: DIFlagFwdDecl)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4940, file: !4941, line: 49, baseType: !2321, size: 320, offset: 384)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4940, file: !4941, line: 50, baseType: !78, size: 64, offset: 704)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4940, file: !4941, line: 51, baseType: !1038, size: 64, offset: 768)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4940, file: !4941, line: 52, baseType: !1038, size: 64, offset: 832)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4940, file: !4941, line: 53, baseType: !1038, size: 64, offset: 896)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4940, file: !4941, line: 54, baseType: !1038, size: 64, offset: 960)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4940, file: !4941, line: 55, baseType: !1038, size: 64, offset: 1024)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4940, file: !4941, line: 56, baseType: !78, size: 64, offset: 1088)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4940, file: !4941, line: 57, baseType: !78, size: 64, offset: 1152)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4940, file: !4941, line: 58, baseType: !78, size: 64, offset: 1216)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4940, file: !4941, line: 59, baseType: !78, size: 64, offset: 1280)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4940, file: !4941, line: 60, baseType: !78, size: 64, offset: 1344)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4940, file: !4941, line: 61, baseType: !4777, size: 64, offset: 1408)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4940, file: !4941, line: 62, baseType: !1411, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4940, file: !4941, line: 63, baseType: !1411, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4921, file: !224, line: 681, baseType: !1411, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4921, file: !224, line: 682, baseType: !1411, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4921, file: !224, line: 683, baseType: !1411, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4921, file: !224, line: 684, baseType: !22, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4921, file: !224, line: 685, baseType: !22, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4921, file: !224, line: 690, baseType: !1030, size: 512, offset: 640)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4921, file: !224, line: 691, baseType: !351, size: 64, offset: 1152)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4921, file: !224, line: 692, baseType: !1526, size: 256, offset: 1216)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4921, file: !224, line: 693, baseType: !93, size: 192, offset: 1472)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4921, file: !224, line: 694, baseType: !4948, size: 64, offset: 1664)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4921, file: !224, line: 695, baseType: !88, size: 32, offset: 1728)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4921, file: !224, line: 696, baseType: !88, size: 32, offset: 1760)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4921, file: !224, line: 697, baseType: !22, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4921, file: !224, line: 698, baseType: !22, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4921, file: !224, line: 699, baseType: !22, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4921, file: !224, line: 700, baseType: !22, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4921, file: !224, line: 701, baseType: !22, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4921, file: !224, line: 702, baseType: !22, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4921, file: !224, line: 703, baseType: !1411, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4921, file: !224, line: 704, baseType: !22, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4921, file: !224, line: 705, baseType: !22, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4921, file: !224, line: 706, baseType: !22, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4921, file: !224, line: 707, baseType: !22, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4921, file: !224, line: 708, baseType: !22, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4921, file: !224, line: 709, baseType: !22, size: 32, offset: 1824)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4921, file: !224, line: 710, baseType: !223, size: 32, offset: 1856)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4921, file: !224, line: 711, baseType: !231, size: 32, offset: 1888)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4921, file: !224, line: 712, baseType: !231, size: 32, offset: 1920)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4921, file: !224, line: 713, baseType: !17, size: 32, offset: 1952)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4921, file: !224, line: 714, baseType: !17, size: 32, offset: 1984)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4921, file: !224, line: 715, baseType: !351, size: 64, offset: 2048)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4921, file: !224, line: 716, baseType: !351, size: 64, offset: 2112)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4921, file: !224, line: 717, baseType: !351, size: 64, offset: 2176)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4921, file: !224, line: 718, baseType: !351, size: 64, offset: 2240)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4921, file: !224, line: 720, baseType: !5000, size: 64, offset: 2304)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !224, line: 632, size: 64, elements: !5002)
!5002 = !{!5003, !5004}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5001, file: !224, line: 633, baseType: !98, size: 32)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5001, file: !224, line: 634, baseType: !22, size: 32, offset: 32)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4921, file: !224, line: 721, baseType: !5006, size: 64, offset: 2368)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{null, !4777, !1307}
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4921, file: !224, line: 722, baseType: !5010, size: 64, offset: 2432)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !224, line: 722, flags: DIFlagFwdDecl)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4778, file: !217, line: 727, baseType: !5013, size: 64, offset: 4224)
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !224, line: 742, size: 1792, elements: !5015)
!5015 = !{!5016, !5017, !5018, !5022, !5023, !5024}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5014, file: !224, line: 743, baseType: !4811, size: 1472)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5014, file: !224, line: 744, baseType: !4814, size: 64, offset: 1472)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5014, file: !224, line: 745, baseType: !5019, size: 64, offset: 1536)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5020 = !DISubroutineType(types: !5021)
!5021 = !{null, !4777, !1411}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !5014, file: !224, line: 746, baseType: !4814, size: 64, offset: 1600)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5014, file: !224, line: 747, baseType: !4805, size: 64, offset: 1664)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !5014, file: !224, line: 748, baseType: !4805, size: 64, offset: 1728)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4778, file: !217, line: 736, baseType: !5026, size: 128, offset: 4288)
!5026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !217, line: 529, size: 128, elements: !5027)
!5027 = !{!5028, !5032}
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5026, file: !217, line: 531, baseType: !5029, size: 64)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !5031, line: 13, flags: DIFlagFwdDecl)
!5031 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5026, file: !217, line: 532, baseType: !5033, size: 64, offset: 64)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !217, line: 49, flags: DIFlagFwdDecl)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4778, file: !217, line: 738, baseType: !5036, size: 64, offset: 4416)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5038)
!5038 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !217, line: 738, flags: DIFlagFwdDecl)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4778, file: !217, line: 740, baseType: !5040, size: 64, offset: 4480)
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4778, file: !217, line: 741, baseType: !351, size: 64, offset: 4544)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4778, file: !217, line: 746, baseType: !351, size: 64, offset: 4608)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4778, file: !217, line: 747, baseType: !5044, size: 64, offset: 4672)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5046)
!5046 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !217, line: 747, flags: DIFlagFwdDecl)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4778, file: !217, line: 749, baseType: !5048, size: 64, offset: 4736)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !217, line: 428, size: 128, elements: !5050)
!5050 = !{!5051, !5052, !5053}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5049, file: !217, line: 433, baseType: !22, size: 32)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !5049, file: !217, line: 434, baseType: !22, size: 32, offset: 32)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !5049, file: !217, line: 435, baseType: !78, size: 64, offset: 64)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4778, file: !217, line: 751, baseType: !136, size: 128, offset: 4800)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4778, file: !217, line: 762, baseType: !5056, size: 64, offset: 4928)
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !217, line: 762, flags: DIFlagFwdDecl)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4778, file: !217, line: 770, baseType: !5059, offset: 4992)
!5059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5060, line: 5, elements: !694)
!5060 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4778, file: !217, line: 772, baseType: !5062, size: 64, offset: 4992)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !5064, line: 18, flags: DIFlagFwdDecl)
!5064 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4778, file: !217, line: 773, baseType: !5066, size: 64, offset: 5056)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !5068, line: 41, size: 512, elements: !5069)
!5068 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!5069 = !{!5070, !5071, !5165, !5166, !5167, !5168}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !5067, file: !5068, line: 42, baseType: !5066, size: 64)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5067, file: !5068, line: 43, baseType: !5072, size: 64, offset: 64)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5074)
!5074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !5068, line: 125, size: 1408, elements: !5075)
!5075 = !{!5076, !5080, !5084, !5090, !5094, !5095, !5100, !5104, !5108, !5112, !5116, !5117, !5121, !5125, !5129, !5140, !5141, !5142, !5143, !5153, !5157, !5161}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5074, file: !5068, line: 126, baseType: !5077, size: 64)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!5066, !5066}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !5074, file: !5068, line: 127, baseType: !5081, size: 64, offset: 64)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{null, !5066}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !5074, file: !5068, line: 128, baseType: !5085, size: 64, offset: 128)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!1411, !5088}
!5088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5089, size: 64)
!5089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5067)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !5074, file: !5068, line: 129, baseType: !5091, size: 64, offset: 192)
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{!1340, !5088, !4797}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !5074, file: !5068, line: 131, baseType: !5085, size: 64, offset: 256)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !5074, file: !5068, line: 133, baseType: !5096, size: 64, offset: 320)
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5097, size: 64)
!5097 = !DISubroutineType(types: !5098)
!5098 = !{!5099, !5088}
!5099 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !5068, line: 132, flags: DIFlagFwdDecl)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !5074, file: !5068, line: 134, baseType: !5101, size: 64, offset: 384)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!1411, !5088, !57}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !5074, file: !5068, line: 136, baseType: !5105, size: 64, offset: 448)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!17, !5088, !57, !22, !60, !74}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !5074, file: !5068, line: 141, baseType: !5109, size: 64, offset: 512)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!17, !5088, !57, !4748, !74}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !5074, file: !5068, line: 144, baseType: !5113, size: 64, offset: 576)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{!57, !5088}
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !5074, file: !5068, line: 145, baseType: !5113, size: 64, offset: 640)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !5074, file: !5068, line: 146, baseType: !5118, size: 64, offset: 704)
!5118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5119, size: 64)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{!5066, !5088}
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !5074, file: !5068, line: 148, baseType: !5122, size: 64, offset: 768)
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5123 = !DISubroutineType(types: !5124)
!5124 = !{!5066, !5088, !5066}
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !5074, file: !5068, line: 151, baseType: !5126, size: 64, offset: 832)
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5127, size: 64)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{!5066, !5088, !57}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !5074, file: !5068, line: 153, baseType: !5130, size: 64, offset: 896)
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!17, !5088, !57, !57, !22, !22, !5133}
!5133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !5068, line: 94, size: 640, elements: !5135)
!5135 = !{!5136, !5137, !5138}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5134, file: !5068, line: 95, baseType: !5066, size: 64)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !5134, file: !5068, line: 96, baseType: !22, size: 32, offset: 64)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !5134, file: !5068, line: 97, baseType: !5139, size: 512, offset: 128)
!5139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 512, elements: !1073)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !5074, file: !5068, line: 158, baseType: !5122, size: 64, offset: 960)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !5074, file: !5068, line: 161, baseType: !5118, size: 64, offset: 1024)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !5074, file: !5068, line: 163, baseType: !5077, size: 64, offset: 1088)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !5074, file: !5068, line: 164, baseType: !5144, size: 64, offset: 1152)
!5144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5145, size: 64)
!5145 = !DISubroutineType(types: !5146)
!5146 = !{!17, !5088, !5147}
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !5068, line: 73, size: 128, elements: !5149)
!5149 = !{!5150, !5151, !5152}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5148, file: !5068, line: 74, baseType: !22, size: 32)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5148, file: !5068, line: 75, baseType: !22, size: 32, offset: 32)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !5148, file: !5068, line: 76, baseType: !5088, size: 64, offset: 64)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !5074, file: !5068, line: 166, baseType: !5154, size: 64, offset: 1216)
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5155, size: 64)
!5155 = !DISubroutineType(types: !5156)
!5156 = !{!60, !5066, !17}
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !5074, file: !5068, line: 167, baseType: !5158, size: 64, offset: 1280)
!5158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5159 = !DISubroutineType(types: !5160)
!5160 = !{!17, !5088, !22}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !5074, file: !5068, line: 168, baseType: !5162, size: 64, offset: 1344)
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{!17, !5066}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5067, file: !5068, line: 44, baseType: !4777, size: 64, offset: 128)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !5067, file: !5068, line: 45, baseType: !136, size: 128, offset: 192)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !5067, file: !5068, line: 46, baseType: !136, size: 128, offset: 320)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5067, file: !5068, line: 47, baseType: !122, size: 8, offset: 448)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4778, file: !217, line: 776, baseType: !17, size: 32, offset: 5120)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4778, file: !217, line: 778, baseType: !655, size: 32, offset: 5152)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4778, file: !217, line: 779, baseType: !571, size: 32, offset: 5184)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4778, file: !217, line: 781, baseType: !98, size: 32, offset: 5216)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4778, file: !217, line: 782, baseType: !136, size: 128, offset: 5248)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4778, file: !217, line: 784, baseType: !5175, size: 64, offset: 5376)
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5177)
!5177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5178, line: 52, size: 768, elements: !5179)
!5178 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5179 = !{!5180, !5181, !5182, !5183, !5184, !5188, !5192, !5193, !5194, !5195, !5199, !5203}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5177, file: !5178, line: 53, baseType: !57, size: 64)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5177, file: !5178, line: 55, baseType: !474, size: 64, offset: 64)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5177, file: !5178, line: 56, baseType: !474, size: 64, offset: 128)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5177, file: !5178, line: 58, baseType: !4794, size: 64, offset: 192)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5177, file: !5178, line: 59, baseType: !5185, size: 64, offset: 256)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!428, !4797, !4803}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5177, file: !5178, line: 61, baseType: !5189, size: 64, offset: 320)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 64)
!5190 = !DISubroutineType(types: !5191)
!5191 = !{null, !5175}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5177, file: !5178, line: 62, baseType: !4805, size: 64, offset: 384)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5177, file: !5178, line: 64, baseType: !4814, size: 64, offset: 448)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5177, file: !5178, line: 66, baseType: !4407, size: 64, offset: 512)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5177, file: !5178, line: 67, baseType: !5196, size: 64, offset: 576)
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = !DISubroutineType(types: !5198)
!5198 = !{!1340, !4797}
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5177, file: !5178, line: 69, baseType: !5200, size: 64, offset: 640)
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5201, size: 64)
!5201 = !DISubroutineType(types: !5202)
!5202 = !{null, !4797, !1590, !1591}
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5177, file: !5178, line: 71, baseType: !4809, size: 64, offset: 704)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4778, file: !217, line: 785, baseType: !474, size: 64, offset: 5440)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4778, file: !217, line: 787, baseType: !4805, size: 64, offset: 5504)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4778, file: !217, line: 788, baseType: !5207, size: 64, offset: 5568)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !217, line: 46, flags: DIFlagFwdDecl)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4778, file: !217, line: 789, baseType: !5210, size: 64, offset: 5632)
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!5211 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !217, line: 48, flags: DIFlagFwdDecl)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4778, file: !217, line: 791, baseType: !5213, size: 64, offset: 5696)
!5213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5214, size: 64)
!5214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !217, line: 597, size: 128, elements: !5215)
!5215 = !{!5216, !5217, !5218, !5219, !5220}
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5214, file: !217, line: 598, baseType: !238, size: 32)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5214, file: !217, line: 599, baseType: !247, size: 32, offset: 32)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5214, file: !217, line: 600, baseType: !252, size: 32, offset: 64)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5214, file: !217, line: 601, baseType: !1411, size: 8, offset: 96)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5214, file: !217, line: 602, baseType: !1411, size: 8, offset: 104)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4778, file: !217, line: 793, baseType: !257, size: 32, offset: 5760)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4778, file: !217, line: 795, baseType: !1411, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4778, file: !217, line: 796, baseType: !1411, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4778, file: !217, line: 797, baseType: !1411, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4778, file: !217, line: 798, baseType: !1411, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4778, file: !217, line: 799, baseType: !1411, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !370, file: !264, line: 307, baseType: !4777, size: 64, offset: 256)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !370, file: !264, line: 308, baseType: !474, size: 64, offset: 320)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !370, file: !264, line: 309, baseType: !474, size: 64, offset: 384)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !370, file: !264, line: 310, baseType: !57, size: 64, offset: 448)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !370, file: !264, line: 311, baseType: !17, size: 32, offset: 512)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !370, file: !264, line: 316, baseType: !17, size: 32, offset: 544)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !370, file: !264, line: 318, baseType: !757, size: 64, offset: 576)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !370, file: !264, line: 319, baseType: !5235, size: 64, offset: 640)
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !264, line: 977, size: 1856, elements: !5237)
!5237 = !{!5238, !5253, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !5236, file: !264, line: 978, baseType: !5239, size: 896)
!5239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !264, line: 873, size: 896, elements: !5240)
!5240 = !{!5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252}
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !5239, file: !264, line: 874, baseType: !369, size: 64)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !5239, file: !264, line: 875, baseType: !2968, size: 64, offset: 64)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !5239, file: !264, line: 877, baseType: !136, size: 128, offset: 128)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !5239, file: !264, line: 879, baseType: !136, size: 128, offset: 256)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !5239, file: !264, line: 880, baseType: !136, size: 128, offset: 384)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !5239, file: !264, line: 883, baseType: !22, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !5239, file: !264, line: 885, baseType: !22, size: 32, offset: 544)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !5239, file: !264, line: 886, baseType: !22, size: 32, offset: 576)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5239, file: !264, line: 888, baseType: !88, size: 32, offset: 608)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !5239, file: !264, line: 889, baseType: !832, size: 128, align: 64, offset: 640)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !5239, file: !264, line: 891, baseType: !60, size: 64, offset: 768)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !5239, file: !264, line: 898, baseType: !17, size: 32, offset: 832)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !5236, file: !264, line: 979, baseType: !5254, size: 64, offset: 896)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !5236, file: !264, line: 981, baseType: !136, size: 128, offset: 960)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !5236, file: !264, line: 982, baseType: !17, size: 32, offset: 1088)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !5236, file: !264, line: 984, baseType: !17, size: 32, offset: 1120)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !5236, file: !264, line: 985, baseType: !17, size: 32, offset: 1152)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !5236, file: !264, line: 987, baseType: !788, size: 32, offset: 1184)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !5236, file: !264, line: 988, baseType: !1030, size: 512, offset: 1216)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !5236, file: !264, line: 989, baseType: !1038, size: 64, offset: 1728)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !5236, file: !264, line: 990, baseType: !22, size: 32, offset: 1792)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !370, file: !264, line: 320, baseType: !88, size: 32, offset: 704)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !370, file: !264, line: 321, baseType: !17, size: 32, offset: 736)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !370, file: !264, line: 322, baseType: !17, size: 32, offset: 768)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !370, file: !264, line: 325, baseType: !22, size: 32, offset: 800)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !370, file: !264, line: 331, baseType: !5268, size: 64, offset: 832)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{null, !369}
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !370, file: !264, line: 332, baseType: !5268, size: 64, offset: 896)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !370, file: !264, line: 350, baseType: !5273, size: 64, offset: 960)
!5273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5274, size: 64)
!5274 = !DISubroutineType(types: !5275)
!5275 = !{!17, !336}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !370, file: !264, line: 356, baseType: !5277, size: 64, offset: 1024)
!5277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5278, size: 64)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{null, !336, !1206}
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !370, file: !264, line: 357, baseType: !5277, size: 64, offset: 1088)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !370, file: !264, line: 385, baseType: !5282, size: 64, offset: 1152)
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5283, size: 64)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{!17, !336, !17}
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !370, file: !264, line: 386, baseType: !5286, size: 64, offset: 1216)
!5286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5287, size: 64)
!5287 = !DISubroutineType(types: !5288)
!5288 = !{null, !336, !17}
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !370, file: !264, line: 406, baseType: !5286, size: 64, offset: 1280)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !370, file: !264, line: 407, baseType: !5286, size: 64, offset: 1344)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !370, file: !264, line: 415, baseType: !5292, size: 64, offset: 1408)
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5293, size: 64)
!5293 = !DISubroutineType(types: !5294)
!5294 = !{null, !336}
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !370, file: !264, line: 427, baseType: !5296, size: 64, offset: 1472)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{null, !369, !22}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !370, file: !264, line: 436, baseType: !5300, size: 64, offset: 1536)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DISubroutineType(types: !5302)
!5302 = !{!17, !369}
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !370, file: !264, line: 443, baseType: !5268, size: 64, offset: 1600)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !370, file: !264, line: 450, baseType: !5273, size: 64, offset: 1664)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !370, file: !264, line: 455, baseType: !5306, size: 64, offset: 1728)
!5306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5307, size: 64)
!5307 = !DISubroutineType(types: !5308)
!5308 = !{null, !5254, !1411}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !370, file: !264, line: 461, baseType: !3392, size: 64, offset: 1792)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !370, file: !264, line: 469, baseType: !5311, size: 64, offset: 1856)
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5312 = !DISubroutineType(types: !5313)
!5313 = !{null, !5254, !5254}
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !370, file: !264, line: 476, baseType: !5315, size: 64, offset: 1920)
!5315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5316, size: 64)
!5316 = !DISubroutineType(types: !5317)
!5317 = !{!60, !336, !3553, !17, !1411}
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !370, file: !264, line: 483, baseType: !4003, size: 64, offset: 1984)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !370, file: !264, line: 494, baseType: !5320, size: 64, offset: 2048)
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5321, size: 64)
!5321 = !DISubroutineType(types: !5322)
!5322 = !{!463, !336, !5323, !78}
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5324, size: 64)
!5324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !264, line: 1014, size: 448, elements: !5325)
!5325 = !{!5326, !5327, !5330, !5331, !5332, !5333, !5338}
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5324, file: !264, line: 1015, baseType: !336, size: 64)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5324, file: !264, line: 1016, baseType: !5328, size: 64, offset: 64)
!5328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5329, size: 64)
!5329 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !264, line: 641, flags: DIFlagFwdDecl)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5324, file: !264, line: 1017, baseType: !78, size: 64, offset: 128)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5324, file: !264, line: 1018, baseType: !78, size: 64, offset: 192)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !5324, file: !264, line: 1019, baseType: !351, size: 64, offset: 256)
!5333 = !DIDerivedType(tag: DW_TAG_member, scope: !5324, file: !264, line: 1020, baseType: !5334, size: 64, offset: 320)
!5334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5324, file: !264, line: 1020, size: 64, elements: !5335)
!5335 = !{!5336, !5337}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5334, file: !264, line: 1021, baseType: !60, size: 64)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5334, file: !264, line: 1022, baseType: !78, size: 64)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5324, file: !264, line: 1024, baseType: !17, size: 32, offset: 384)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !370, file: !264, line: 506, baseType: !5340, size: 64, offset: 2112)
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5341, size: 64)
!5341 = !DISubroutineType(types: !5342)
!5342 = !{!17, !139}
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !370, file: !264, line: 520, baseType: !5292, size: 64, offset: 2176)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !370, file: !264, line: 530, baseType: !5273, size: 64, offset: 2240)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !370, file: !264, line: 537, baseType: !5346, size: 64, offset: 2304)
!5346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5347, size: 64)
!5347 = !DISubroutineType(types: !5348)
!5348 = !{!1411, !369, !17}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !370, file: !264, line: 542, baseType: !5350, size: 64, offset: 2368)
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5351 = !DISubroutineType(types: !5352)
!5352 = !{!17, !336, !351}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !337, file: !264, line: 715, baseType: !60, size: 64, offset: 1280)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !337, file: !264, line: 717, baseType: !263, size: 32, offset: 1344)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !337, file: !264, line: 718, baseType: !22, size: 32, offset: 1376)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !337, file: !264, line: 719, baseType: !5357, size: 64, offset: 1408)
!5357 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !5358, line: 26, baseType: !5359)
!5358 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!5359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5358, line: 24, size: 64, elements: !5360)
!5360 = !{!5361}
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !5359, file: !5358, line: 25, baseType: !3000, size: 64)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !337, file: !264, line: 720, baseType: !781, size: 64, offset: 1472)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !337, file: !264, line: 728, baseType: !351, size: 64, offset: 1536)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !337, file: !264, line: 729, baseType: !351, size: 64, offset: 1600)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !337, file: !264, line: 730, baseType: !351, size: 64, offset: 1664)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !337, file: !264, line: 732, baseType: !5367, size: 1088, offset: 1728)
!5367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !21, line: 385, size: 1088, elements: !5368)
!5368 = !{!5369, !5370, !5371, !5372, !5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5394, !5395, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405, !5406, !5407, !5408, !5409, !5410, !5411, !5412, !5413, !5414, !5415, !5416, !5417, !5422, !5423, !5430, !5437, !5438, !5439, !5440, !5441, !5442, !5443, !5444, !5445, !5446, !5447, !5448}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5367, file: !21, line: 390, baseType: !572, size: 32)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5367, file: !21, line: 395, baseType: !572, size: 32, offset: 32)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5367, file: !21, line: 400, baseType: !352, size: 64, offset: 64)
!5372 = !DIDerivedType(tag: DW_TAG_member, scope: !5367, file: !21, line: 402, baseType: !5373, size: 64, offset: 128)
!5373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5367, file: !21, line: 402, size: 64, elements: !5374)
!5374 = !{!5375, !5376}
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !5373, file: !21, line: 403, baseType: !352, size: 64)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !5373, file: !21, line: 404, baseType: !352, size: 64)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !5367, file: !21, line: 407, baseType: !352, size: 64, offset: 192)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !5367, file: !21, line: 408, baseType: !352, size: 64, offset: 256)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !5367, file: !21, line: 410, baseType: !352, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !5367, file: !21, line: 411, baseType: !352, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !5367, file: !21, line: 412, baseType: !352, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !5367, file: !21, line: 413, baseType: !352, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !5367, file: !21, line: 414, baseType: !352, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !5367, file: !21, line: 415, baseType: !352, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !5367, file: !21, line: 416, baseType: !352, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !5367, file: !21, line: 417, baseType: !352, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5367, file: !21, line: 418, baseType: !352, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !5367, file: !21, line: 419, baseType: !352, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !5367, file: !21, line: 420, baseType: !352, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !5367, file: !21, line: 421, baseType: !352, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !5367, file: !21, line: 422, baseType: !352, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5367, file: !21, line: 423, baseType: !352, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !5367, file: !21, line: 424, baseType: !352, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !5367, file: !21, line: 435, baseType: !352, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !5367, file: !21, line: 436, baseType: !352, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !5367, file: !21, line: 437, baseType: !352, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !5367, file: !21, line: 439, baseType: !352, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !5367, file: !21, line: 440, baseType: !352, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !5367, file: !21, line: 442, baseType: !352, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !5367, file: !21, line: 443, baseType: !352, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !5367, file: !21, line: 444, baseType: !352, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !5367, file: !21, line: 445, baseType: !352, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !5367, file: !21, line: 446, baseType: !352, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !5367, file: !21, line: 447, baseType: !352, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !5367, file: !21, line: 448, baseType: !352, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !5367, file: !21, line: 449, baseType: !352, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !5367, file: !21, line: 450, baseType: !352, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !5367, file: !21, line: 451, baseType: !352, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !5367, file: !21, line: 452, baseType: !352, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !5367, file: !21, line: 453, baseType: !352, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !5367, file: !21, line: 454, baseType: !352, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !5367, file: !21, line: 455, baseType: !352, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !5367, file: !21, line: 456, baseType: !352, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !5367, file: !21, line: 457, baseType: !352, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !5367, file: !21, line: 458, baseType: !352, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !5367, file: !21, line: 459, baseType: !352, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!5417 = !DIDerivedType(tag: DW_TAG_member, scope: !5367, file: !21, line: 461, baseType: !5418, size: 32, offset: 384)
!5418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5367, file: !21, line: 461, size: 32, elements: !5419)
!5419 = !{!5420, !5421}
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !5418, file: !21, line: 462, baseType: !572, size: 32)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !5418, file: !21, line: 463, baseType: !572, size: 32)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !5367, file: !21, line: 466, baseType: !572, size: 32, offset: 416)
!5423 = !DIDerivedType(tag: DW_TAG_member, scope: !5367, file: !21, line: 467, baseType: !5424, size: 64, offset: 448)
!5424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5367, file: !21, line: 467, size: 64, elements: !5425)
!5425 = !{!5426, !5427, !5428, !5429}
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !5424, file: !21, line: 468, baseType: !352, size: 64)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !5424, file: !21, line: 469, baseType: !352, size: 64)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !5424, file: !21, line: 470, baseType: !352, size: 64)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !5424, file: !21, line: 471, baseType: !352, size: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, scope: !5367, file: !21, line: 473, baseType: !5431, size: 64, offset: 512)
!5431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5367, file: !21, line: 473, size: 64, elements: !5432)
!5432 = !{!5433, !5434, !5435, !5436}
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !5431, file: !21, line: 474, baseType: !352, size: 64)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !5431, file: !21, line: 475, baseType: !352, size: 64)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !5431, file: !21, line: 476, baseType: !352, size: 64)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !5431, file: !21, line: 477, baseType: !352, size: 64)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !5367, file: !21, line: 479, baseType: !352, size: 64, offset: 576)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !5367, file: !21, line: 485, baseType: !352, size: 64, offset: 640)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !5367, file: !21, line: 490, baseType: !572, size: 32, offset: 704)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !5367, file: !21, line: 492, baseType: !1308, size: 32, offset: 736)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !5367, file: !21, line: 501, baseType: !352, size: 64, offset: 768)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !5367, file: !21, line: 506, baseType: !572, size: 32, offset: 832)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !5367, file: !21, line: 507, baseType: !133, size: 16, offset: 864)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !5367, file: !21, line: 508, baseType: !133, size: 16, offset: 880)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !5367, file: !21, line: 509, baseType: !572, size: 32, offset: 896)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !5367, file: !21, line: 510, baseType: !572, size: 32, offset: 928)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !5367, file: !21, line: 518, baseType: !352, size: 64, offset: 960)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !5367, file: !21, line: 520, baseType: !352, size: 64, offset: 1024)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !337, file: !264, line: 733, baseType: !132, size: 16, offset: 2816)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !337, file: !264, line: 734, baseType: !132, size: 16, offset: 2832)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !337, file: !264, line: 735, baseType: !132, size: 16, offset: 2848)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !337, file: !264, line: 736, baseType: !5453, size: 1536, offset: 2880)
!5453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !264, line: 155, size: 1536, elements: !5454)
!5454 = !{!5455, !5520, !5521, !5522, !5523, !5524, !5525, !5526, !5539, !5540, !5541, !5542}
!5455 = !DIDerivedType(tag: DW_TAG_member, scope: !5453, file: !264, line: 157, baseType: !5456, size: 768)
!5456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5453, file: !264, line: 157, size: 768, elements: !5457)
!5457 = !{!5458, !5477, !5481, !5485, !5490, !5512}
!5458 = !DIDerivedType(tag: DW_TAG_member, scope: !5456, file: !264, line: 158, baseType: !5459, size: 768)
!5459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !264, line: 158, size: 768, elements: !5460)
!5460 = !{!5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468, !5469, !5476}
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5459, file: !264, line: 159, baseType: !351, size: 64)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !5459, file: !264, line: 160, baseType: !351, size: 64, offset: 64)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !5459, file: !264, line: 161, baseType: !78, size: 64, offset: 128)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !5459, file: !264, line: 162, baseType: !78, size: 64, offset: 192)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !5459, file: !264, line: 163, baseType: !17, size: 32, offset: 256)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !5459, file: !264, line: 164, baseType: !17, size: 32, offset: 288)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5459, file: !264, line: 165, baseType: !17, size: 32, offset: 320)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5459, file: !264, line: 166, baseType: !17, size: 32, offset: 352)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !5459, file: !264, line: 168, baseType: !5470, size: 192, offset: 384)
!5470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !264, line: 134, size: 192, elements: !5471)
!5471 = !{!5472, !5473, !5474, !5475}
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5470, file: !264, line: 135, baseType: !351, size: 64)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !5470, file: !264, line: 136, baseType: !22, size: 32, offset: 64)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5470, file: !264, line: 137, baseType: !17, size: 32, offset: 96)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !5470, file: !264, line: 138, baseType: !17, size: 32, offset: 128)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !5459, file: !264, line: 169, baseType: !5470, size: 192, offset: 576)
!5477 = !DIDerivedType(tag: DW_TAG_member, scope: !5456, file: !264, line: 171, baseType: !5478, size: 512)
!5478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !264, line: 171, size: 512, elements: !5479)
!5479 = !{!5480}
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !5478, file: !264, line: 172, baseType: !1030, size: 512)
!5481 = !DIDerivedType(tag: DW_TAG_member, scope: !5456, file: !264, line: 174, baseType: !5482, size: 128)
!5482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !264, line: 174, size: 128, elements: !5483)
!5483 = !{!5484}
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !5482, file: !264, line: 176, baseType: !136, size: 128)
!5485 = !DIDerivedType(tag: DW_TAG_member, scope: !5456, file: !264, line: 178, baseType: !5486, size: 128)
!5486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !264, line: 178, size: 128, elements: !5487)
!5487 = !{!5488, !5489}
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !5486, file: !264, line: 179, baseType: !351, size: 64)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !5486, file: !264, line: 180, baseType: !351, size: 64, offset: 64)
!5490 = !DIDerivedType(tag: DW_TAG_member, scope: !5456, file: !264, line: 183, baseType: !5491, size: 320)
!5491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !264, line: 183, size: 320, elements: !5492)
!5492 = !{!5493, !5501}
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5491, file: !264, line: 189, baseType: !5494, size: 192)
!5494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !5495, line: 14, size: 192, elements: !5496)
!5495 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!5496 = !{!5497, !5498, !5499, !5500}
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5494, file: !5495, line: 15, baseType: !78, size: 64)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5494, file: !5495, line: 16, baseType: !78, size: 64, offset: 64)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5494, file: !5495, line: 17, baseType: !122, size: 8, offset: 128)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5494, file: !5495, line: 18, baseType: !122, size: 8, offset: 136)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !5491, file: !264, line: 190, baseType: !5502, size: 128, offset: 192)
!5502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !5503, line: 21, size: 128, elements: !5504)
!5503 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!5504 = !{!5505, !5510}
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !5502, file: !5503, line: 22, baseType: !5506, size: 64)
!5506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !5503, line: 17, size: 64, elements: !5507)
!5507 = !{!5508}
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5506, file: !5503, line: 18, baseType: !5509, size: 64)
!5509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5506, size: 64)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5502, file: !5503, line: 23, baseType: !5511, size: 64, offset: 64)
!5511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5502, size: 64)
!5512 = !DIDerivedType(tag: DW_TAG_member, scope: !5456, file: !264, line: 193, baseType: !5513, size: 192)
!5513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !264, line: 193, size: 192, elements: !5514)
!5514 = !{!5515, !5516, !5517, !5518, !5519}
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !5513, file: !264, line: 194, baseType: !122, size: 8)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !5513, file: !264, line: 195, baseType: !122, size: 8, offset: 8)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5513, file: !264, line: 196, baseType: !132, size: 16, offset: 16)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !5513, file: !264, line: 197, baseType: !351, size: 64, offset: 64)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !5513, file: !264, line: 198, baseType: !351, size: 64, offset: 128)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5453, file: !264, line: 205, baseType: !918, size: 64, offset: 768)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !5453, file: !264, line: 211, baseType: !60, size: 64, offset: 832)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !5453, file: !264, line: 214, baseType: !78, size: 64, offset: 896)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5453, file: !264, line: 223, baseType: !17, size: 32, offset: 960)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !5453, file: !264, line: 229, baseType: !5357, size: 64, offset: 1024)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !5453, file: !264, line: 234, baseType: !351, size: 64, offset: 1088)
!5526 = !DIDerivedType(tag: DW_TAG_member, scope: !5453, file: !264, line: 236, baseType: !5527, size: 128, offset: 1152)
!5527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5453, file: !264, line: 236, size: 128, elements: !5528)
!5528 = !{!5529, !5534}
!5529 = !DIDerivedType(tag: DW_TAG_member, scope: !5527, file: !264, line: 237, baseType: !5530, size: 128)
!5530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5527, file: !264, line: 237, size: 128, elements: !5531)
!5531 = !{!5532, !5533}
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !5530, file: !264, line: 241, baseType: !351, size: 64)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !5530, file: !264, line: 249, baseType: !5357, size: 64, offset: 64)
!5534 = !DIDerivedType(tag: DW_TAG_member, scope: !5527, file: !264, line: 251, baseType: !5535, size: 128)
!5535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5527, file: !264, line: 251, size: 128, elements: !5536)
!5536 = !{!5537, !5538}
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !5535, file: !264, line: 252, baseType: !351, size: 64)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !5535, file: !264, line: 253, baseType: !351, size: 64, offset: 64)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !5453, file: !264, line: 261, baseType: !351, size: 64, offset: 1280)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !5453, file: !264, line: 262, baseType: !351, size: 64, offset: 1344)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !5453, file: !264, line: 268, baseType: !351, size: 64, offset: 1408)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !5453, file: !264, line: 269, baseType: !351, size: 64, offset: 1472)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !337, file: !264, line: 738, baseType: !2968, size: 64, offset: 4416)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !337, file: !264, line: 744, baseType: !5254, size: 64, offset: 4480)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !337, file: !264, line: 745, baseType: !779, size: 64, offset: 4544)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !337, file: !264, line: 751, baseType: !781, size: 64, offset: 4608)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !337, file: !264, line: 752, baseType: !781, size: 64, offset: 4672)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !337, file: !264, line: 757, baseType: !775, size: 256, offset: 4736)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !337, file: !264, line: 758, baseType: !136, size: 128, offset: 4992)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !337, file: !264, line: 759, baseType: !336, size: 64, offset: 5120)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !337, file: !264, line: 761, baseType: !17, size: 32, offset: 5184)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !337, file: !264, line: 762, baseType: !17, size: 32, offset: 5216)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !337, file: !264, line: 764, baseType: !136, size: 128, offset: 5248)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !337, file: !264, line: 765, baseType: !918, size: 64, offset: 5376)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !337, file: !264, line: 768, baseType: !775, size: 256, offset: 5440)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !337, file: !264, line: 769, baseType: !88, size: 32, offset: 5696)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !337, file: !264, line: 771, baseType: !5328, size: 64, offset: 5760)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !337, file: !264, line: 772, baseType: !136, size: 128, offset: 5824)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !337, file: !264, line: 773, baseType: !78, size: 64, offset: 5952)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !337, file: !264, line: 774, baseType: !17, size: 32, offset: 6016)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !337, file: !264, line: 777, baseType: !93, size: 192, offset: 6080)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !337, file: !264, line: 778, baseType: !5563, size: 64, offset: 6272)
!5563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5564, size: 64)
!5564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !43, line: 1083, size: 384, elements: !5565)
!5565 = !{!5566, !5567, !5568, !5569, !5570, !5571}
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !5564, file: !43, line: 1084, baseType: !852, size: 64)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !5564, file: !43, line: 1085, baseType: !17, size: 32, offset: 64)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !5564, file: !43, line: 1086, baseType: !17, size: 32, offset: 96)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !5564, file: !43, line: 1087, baseType: !5563, size: 64, offset: 128)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !5564, file: !43, line: 1088, baseType: !1233, size: 64, offset: 192)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !5564, file: !43, line: 1089, baseType: !832, size: 128, align: 64, offset: 256)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !337, file: !264, line: 781, baseType: !22, size: 32, offset: 6336)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !337, file: !264, line: 782, baseType: !22, size: 32, offset: 6368)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !337, file: !264, line: 783, baseType: !22, size: 32, offset: 6400)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !337, file: !264, line: 784, baseType: !22, size: 32, offset: 6432)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !337, file: !264, line: 785, baseType: !78, size: 64, offset: 6464)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !337, file: !264, line: 786, baseType: !5578, size: 256, offset: 6528)
!5578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !5579, line: 17, size: 256, elements: !5580)
!5579 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!5580 = !{!5581, !5582, !5587}
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5578, file: !5579, line: 18, baseType: !937, size: 128)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5578, file: !5579, line: 19, baseType: !5583, size: 64, offset: 128)
!5583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5584, size: 64)
!5584 = !DISubroutineType(types: !5585)
!5585 = !{null, !5586}
!5586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5578, size: 64)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !5578, file: !5579, line: 20, baseType: !3890, size: 64, offset: 192)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !337, file: !264, line: 787, baseType: !832, size: 128, align: 64, offset: 6784)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !337, file: !264, line: 788, baseType: !22, size: 32, offset: 6912)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !337, file: !264, line: 789, baseType: !3890, size: 64, offset: 6976)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !337, file: !264, line: 791, baseType: !88, size: 32, offset: 7040)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !337, file: !264, line: 794, baseType: !5593, size: 192, offset: 7104)
!5593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !264, line: 579, size: 192, elements: !5594)
!5594 = !{!5595, !5596, !5597}
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5593, file: !264, line: 580, baseType: !136, size: 128)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5593, file: !264, line: 581, baseType: !788, size: 32, offset: 128)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !5593, file: !264, line: 582, baseType: !22, size: 32, offset: 160)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !337, file: !264, line: 796, baseType: !5599, size: 64, offset: 7296)
!5599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5600, size: 64)
!5600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !264, line: 585, size: 128, elements: !5601)
!5601 = !{!5602, !5603}
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5600, file: !264, line: 586, baseType: !78, size: 64)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5600, file: !264, line: 587, baseType: !78, size: 64, offset: 64)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !337, file: !264, line: 797, baseType: !78, size: 64, offset: 7360)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !337, file: !264, line: 800, baseType: !336, size: 64, offset: 7424)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !337, file: !264, line: 802, baseType: !5292, size: 64, offset: 7488)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !337, file: !264, line: 803, baseType: !832, size: 128, align: 64, offset: 7552)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !337, file: !264, line: 805, baseType: !897, size: 64, offset: 7680)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !337, file: !264, line: 806, baseType: !351, size: 64, offset: 7744)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !337, file: !264, line: 808, baseType: !781, size: 64, offset: 7808)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !337, file: !264, line: 810, baseType: !5612, size: 64, offset: 7872)
!5612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5613, size: 64)
!5613 = !DISubroutineType(types: !5614)
!5614 = !{!351}
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !337, file: !264, line: 811, baseType: !5616, size: 64, offset: 7936)
!5616 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !264, line: 605, baseType: !5617)
!5617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5618, size: 64)
!5618 = !DISubroutineType(types: !5619)
!5619 = !{null, !336, !5620, !3314}
!5620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5621, size: 64)
!5621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !264, line: 1148, size: 2048, align: 512, elements: !5622)
!5622 = !{!5623, !5624, !5625, !5626, !5627, !5632, !5633, !5634, !5639, !5640, !5647, !5668, !5690, !5700, !5718, !5719, !5725, !5726, !5727, !5728, !5729, !5730, !5731, !5732, !5733}
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !5621, file: !264, line: 1153, baseType: !351, size: 64)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !5621, file: !264, line: 1154, baseType: !351, size: 64, offset: 64)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !5621, file: !264, line: 1155, baseType: !351, size: 64, offset: 128)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5621, file: !264, line: 1161, baseType: !351, size: 64, offset: 192)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !5621, file: !264, line: 1165, baseType: !5628, size: 64, offset: 256)
!5628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5621, file: !264, line: 1162, size: 64, elements: !5629)
!5629 = !{!5630, !5631}
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !5628, file: !264, line: 1163, baseType: !571, size: 32)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !5628, file: !264, line: 1164, baseType: !571, size: 32, offset: 32)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5621, file: !264, line: 1166, baseType: !351, size: 64, offset: 320)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5621, file: !264, line: 1167, baseType: !351, size: 64, offset: 384)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !5621, file: !264, line: 1171, baseType: !5635, size: 64, offset: 448)
!5635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5621, file: !264, line: 1168, size: 64, elements: !5636)
!5636 = !{!5637, !5638}
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5635, file: !264, line: 1169, baseType: !571, size: 32)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5635, file: !264, line: 1170, baseType: !571, size: 32, offset: 32)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5621, file: !264, line: 1177, baseType: !351, size: 64, offset: 512)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !5621, file: !264, line: 1178, baseType: !5641, size: 64, offset: 576)
!5641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5642, size: 64)
!5642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !264, line: 67, size: 64, elements: !5643)
!5643 = !{!5644, !5645}
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5642, file: !264, line: 68, baseType: !352, size: 64)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5642, file: !264, line: 69, baseType: !5646, offset: 64)
!5646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, elements: !1642)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !5621, file: !264, line: 1179, baseType: !5648, size: 64, offset: 640)
!5648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5649, size: 64)
!5649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !264, line: 93, size: 256, elements: !5650)
!5650 = !{!5651, !5667}
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !5649, file: !264, line: 94, baseType: !5652, size: 224)
!5652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !264, line: 83, size: 224, elements: !5653)
!5653 = !{!5654, !5660, !5665, !5666}
!5654 = !DIDerivedType(tag: DW_TAG_member, scope: !5652, file: !264, line: 84, baseType: !5655, size: 64)
!5655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5652, file: !264, line: 84, size: 64, elements: !5656)
!5656 = !{!5657, !5659}
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5655, file: !264, line: 85, baseType: !5658, size: 64)
!5658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5652, size: 64)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5655, file: !264, line: 86, baseType: !78, size: 64)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !5652, file: !264, line: 88, baseType: !5661, size: 64, offset: 64)
!5661 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !264, line: 80, baseType: !5662)
!5662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5663, size: 64)
!5663 = !DISubroutineType(types: !5664)
!5664 = !{!78, !60, !1340, !78, !78}
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5652, file: !264, line: 89, baseType: !60, size: 64, offset: 128)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5652, file: !264, line: 90, baseType: !571, size: 32, offset: 192)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5649, file: !264, line: 95, baseType: !571, size: 32, offset: 224)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !5621, file: !264, line: 1180, baseType: !5669, size: 64, offset: 704)
!5669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5670, size: 64)
!5670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !264, line: 123, size: 128, elements: !5671)
!5671 = !{!5672, !5673, !5674}
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5670, file: !264, line: 124, baseType: !352, size: 64)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !5670, file: !264, line: 125, baseType: !352, size: 64, offset: 64)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5670, file: !264, line: 126, baseType: !5675, offset: 128)
!5675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5676, elements: !1642)
!5676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !21, line: 1415, size: 192, elements: !5677)
!5677 = !{!5678, !5679, !5680, !5681, !5682, !5683, !5684, !5685, !5686, !5687, !5688, !5689}
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !5676, file: !21, line: 1416, baseType: !352, size: 64)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !5676, file: !21, line: 1417, baseType: !352, size: 64, offset: 64)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !5676, file: !21, line: 1418, baseType: !352, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !5676, file: !21, line: 1419, baseType: !352, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !5676, file: !21, line: 1420, baseType: !352, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !5676, file: !21, line: 1421, baseType: !352, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !5676, file: !21, line: 1422, baseType: !352, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5676, file: !21, line: 1423, baseType: !352, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !5676, file: !21, line: 1424, baseType: !352, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !5676, file: !21, line: 1425, baseType: !352, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5676, file: !21, line: 1426, baseType: !352, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5676, file: !21, line: 1427, baseType: !352, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !5621, file: !264, line: 1181, baseType: !5691, size: 64, offset: 768)
!5691 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !21, line: 1430, size: 64, elements: !5692)
!5692 = !{!5693, !5694}
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !5691, file: !21, line: 1431, baseType: !352, size: 64)
!5694 = !DIDerivedType(tag: DW_TAG_member, scope: !5691, file: !21, line: 1433, baseType: !5695, size: 64)
!5695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5691, file: !21, line: 1433, size: 64, elements: !5696)
!5696 = !{!5697, !5698, !5699}
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !5695, file: !21, line: 1434, baseType: !572, size: 32)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !5695, file: !21, line: 1435, baseType: !133, size: 16, offset: 32)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !5695, file: !21, line: 1436, baseType: !133, size: 16, offset: 48)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !5621, file: !264, line: 1182, baseType: !5701, size: 64, offset: 832)
!5701 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !21, line: 1267, size: 64, elements: !5702)
!5702 = !{!5703, !5704}
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5701, file: !21, line: 1268, baseType: !352, size: 64)
!5704 = !DIDerivedType(tag: DW_TAG_member, scope: !5701, file: !21, line: 1269, baseType: !5705, size: 64)
!5705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5701, file: !21, line: 1269, size: 64, elements: !5706)
!5706 = !{!5707, !5708, !5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717}
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !5705, file: !21, line: 1270, baseType: !352, size: 5, flags: DIFlagBitField, extraData: i64 0)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !5705, file: !21, line: 1271, baseType: !352, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !5705, file: !21, line: 1272, baseType: !352, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !5705, file: !21, line: 1273, baseType: !352, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !5705, file: !21, line: 1274, baseType: !352, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !5705, file: !21, line: 1275, baseType: !352, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !5705, file: !21, line: 1276, baseType: !352, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !5705, file: !21, line: 1277, baseType: !352, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !5705, file: !21, line: 1278, baseType: !352, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !5705, file: !21, line: 1279, baseType: !352, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !5705, file: !21, line: 1280, baseType: !352, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !5621, file: !264, line: 1183, baseType: !351, size: 64, offset: 896)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !5621, file: !264, line: 1185, baseType: !5720, size: 128, offset: 960)
!5720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !5721, line: 7, size: 128, elements: !5722)
!5721 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!5722 = !{!5723, !5724}
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !5720, file: !5721, line: 8, baseType: !352, size: 64)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5720, file: !5721, line: 9, baseType: !3314, size: 64, offset: 64)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !5621, file: !264, line: 1186, baseType: !5720, size: 128, offset: 1088)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !5621, file: !264, line: 1187, baseType: !351, size: 64, offset: 1216)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !5621, file: !264, line: 1189, baseType: !351, size: 64, offset: 1280)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !5621, file: !264, line: 1190, baseType: !351, size: 64, offset: 1344)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5621, file: !264, line: 1191, baseType: !351, size: 64, offset: 1408)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !5621, file: !264, line: 1192, baseType: !351, size: 64, offset: 1472)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !5621, file: !264, line: 1193, baseType: !351, size: 64, offset: 1536)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !5621, file: !264, line: 1194, baseType: !351, size: 64, offset: 1600)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !5621, file: !264, line: 1195, baseType: !351, size: 64, offset: 1664)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !337, file: !264, line: 812, baseType: !60, size: 64, offset: 8000)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !337, file: !264, line: 820, baseType: !4751, size: 64, offset: 8064)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !337, file: !264, line: 821, baseType: !5737, size: 64, offset: 8128)
!5737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5738, size: 64)
!5738 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !264, line: 821, flags: DIFlagFwdDecl)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !337, file: !264, line: 828, baseType: !5740, size: 64, offset: 8192)
!5740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5741, size: 64)
!5741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !264, line: 1046, size: 1664, elements: !5742)
!5742 = !{!5743, !5744}
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !5741, file: !264, line: 1047, baseType: !1917, size: 1600)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5741, file: !264, line: 1048, baseType: !5745, size: 64, offset: 1600)
!5745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5746, size: 64)
!5746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !264, line: 1039, size: 256, elements: !5747)
!5747 = !{!5748, !5749, !5750, !5751}
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5746, file: !264, line: 1040, baseType: !351, size: 64)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !5746, file: !264, line: 1041, baseType: !351, size: 64, offset: 64)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !5746, file: !264, line: 1042, baseType: !351, size: 64, offset: 128)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5746, file: !264, line: 1043, baseType: !17, size: 32, offset: 192)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !337, file: !264, line: 832, baseType: !60, size: 64, offset: 8256)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !337, file: !264, line: 834, baseType: !136, size: 128, offset: 8320)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !337, file: !264, line: 842, baseType: !572, size: 32, offset: 8448)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "active_mask", scope: !332, file: !273, line: 236, baseType: !1157, size: 64, offset: 4096)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !332, file: !273, line: 237, baseType: !1157, size: 64, offset: 4160)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !332, file: !273, line: 238, baseType: !17, size: 32, offset: 4224)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "n_events", scope: !332, file: !273, line: 240, baseType: !17, size: 32, offset: 4256)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "n_added", scope: !332, file: !273, line: 241, baseType: !17, size: 32, offset: 4288)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "n_txn", scope: !332, file: !273, line: 243, baseType: !17, size: 32, offset: 4320)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "n_txn_pair", scope: !332, file: !273, line: 245, baseType: !17, size: 32, offset: 4352)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "n_txn_metric", scope: !332, file: !273, line: 246, baseType: !17, size: 32, offset: 4384)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "assign", scope: !332, file: !273, line: 247, baseType: !5764, size: 2048, offset: 4416)
!5764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !433)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !332, file: !273, line: 248, baseType: !5766, size: 4096, offset: 6464)
!5766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 4096, elements: !433)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !332, file: !273, line: 250, baseType: !335, size: 4096, offset: 10560)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "event_constraint", scope: !332, file: !273, line: 251, baseType: !5769, size: 4096, offset: 14656)
!5769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5770, size: 4096, elements: !433)
!5770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5771, size: 64)
!5771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_constraint", file: !273, line: 51, size: 320, elements: !5772)
!5772 = !{!5773, !5778, !5779, !5780, !5781, !5782, !5783}
!5773 = !DIDerivedType(tag: DW_TAG_member, scope: !5771, file: !273, line: 52, baseType: !5774, size: 64)
!5774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5771, file: !273, line: 52, size: 64, elements: !5775)
!5775 = !{!5776, !5777}
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "idxmsk", scope: !5774, file: !273, line: 53, baseType: !1157, size: 64)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "idxmsk64", scope: !5774, file: !273, line: 54, baseType: !351, size: 64)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5771, file: !273, line: 56, baseType: !351, size: 64, offset: 64)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "cmask", scope: !5771, file: !273, line: 57, baseType: !351, size: 64, offset: 128)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !5771, file: !273, line: 58, baseType: !17, size: 32, offset: 192)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "overlap", scope: !5771, file: !273, line: 59, baseType: !17, size: 32, offset: 224)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5771, file: !273, line: 60, baseType: !17, size: 32, offset: 256)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5771, file: !273, line: 61, baseType: !22, size: 32, offset: 288)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "n_excl", scope: !332, file: !273, line: 253, baseType: !17, size: 32, offset: 18752)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "txn_flags", scope: !332, file: !273, line: 255, baseType: !22, size: 32, offset: 18784)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "is_fake", scope: !332, file: !273, line: 256, baseType: !17, size: 32, offset: 18816)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !332, file: !273, line: 261, baseType: !5788, size: 64, offset: 18880)
!5788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5789, size: 64)
!5789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "debug_store", file: !5790, line: 19, size: 32768, align: 32768, elements: !5791)
!5790 = !DIFile(filename: "./arch/x86/include/asm/intel_ds.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9759f3a45bb2d5a9afbbc8ac696ba8f")
!5791 = !{!5792, !5793, !5794, !5795, !5796, !5797, !5798, !5799, !5800}
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "bts_buffer_base", scope: !5789, file: !5790, line: 20, baseType: !351, size: 64)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "bts_index", scope: !5789, file: !5790, line: 21, baseType: !351, size: 64, offset: 64)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "bts_absolute_maximum", scope: !5789, file: !5790, line: 22, baseType: !351, size: 64, offset: 128)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "bts_interrupt_threshold", scope: !5789, file: !5790, line: 23, baseType: !351, size: 64, offset: 192)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_buffer_base", scope: !5789, file: !5790, line: 24, baseType: !351, size: 64, offset: 256)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_index", scope: !5789, file: !5790, line: 25, baseType: !351, size: 64, offset: 320)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_absolute_maximum", scope: !5789, file: !5790, line: 26, baseType: !351, size: 64, offset: 384)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_interrupt_threshold", scope: !5789, file: !5790, line: 27, baseType: !351, size: 64, offset: 448)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_event_reset", scope: !5789, file: !5790, line: 28, baseType: !5801, size: 3072, offset: 512)
!5801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 3072, elements: !5802)
!5802 = !{!5803}
!5803 = !DISubrange(count: 48)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "ds_pebs_vaddr", scope: !332, file: !273, line: 262, baseType: !60, size: 64, offset: 18944)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "ds_bts_vaddr", scope: !332, file: !273, line: 263, baseType: !60, size: 64, offset: 19008)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_enabled", scope: !332, file: !273, line: 264, baseType: !351, size: 64, offset: 19072)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "n_pebs", scope: !332, file: !273, line: 265, baseType: !17, size: 32, offset: 19136)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "n_large_pebs", scope: !332, file: !273, line: 266, baseType: !17, size: 32, offset: 19168)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "n_pebs_via_pt", scope: !332, file: !273, line: 267, baseType: !17, size: 32, offset: 19200)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_output", scope: !332, file: !273, line: 268, baseType: !17, size: 32, offset: 19232)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_data_cfg", scope: !332, file: !273, line: 271, baseType: !351, size: 64, offset: 19264)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "active_pebs_data_cfg", scope: !332, file: !273, line: 272, baseType: !351, size: 64, offset: 19328)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_record_size", scope: !332, file: !273, line: 273, baseType: !17, size: 32, offset: 19392)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_ctrl_val", scope: !332, file: !273, line: 276, baseType: !351, size: 64, offset: 19456)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "active_fixed_ctrl_val", scope: !332, file: !273, line: 277, baseType: !351, size: 64, offset: 19520)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_users", scope: !332, file: !273, line: 282, baseType: !17, size: 32, offset: 19584)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_pebs_users", scope: !332, file: !273, line: 283, baseType: !17, size: 32, offset: 19616)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_stack", scope: !332, file: !273, line: 284, baseType: !5670, size: 128, offset: 19648)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_entries", scope: !332, file: !273, line: 285, baseType: !5820, size: 6144, offset: 19776)
!5820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5676, size: 6144, elements: !581)
!5821 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !273, line: 286, baseType: !5822, size: 64, offset: 25920)
!5822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !273, line: 286, size: 64, elements: !5823)
!5823 = !{!5824, !5832}
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_sel", scope: !5822, file: !273, line: 287, baseType: !5825, size: 64)
!5825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5826, size: 64)
!5826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "er_account", file: !273, line: 166, size: 256, elements: !5827)
!5827 = !{!5828, !5829, !5830, !5831}
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5826, file: !273, line: 167, baseType: !788, size: 32)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5826, file: !273, line: 168, baseType: !351, size: 64, offset: 64)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !5826, file: !273, line: 169, baseType: !351, size: 64, offset: 128)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5826, file: !273, line: 170, baseType: !88, size: 32, offset: 192)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_ctl", scope: !5822, file: !273, line: 288, baseType: !5825, size: 64)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "br_sel", scope: !332, file: !273, line: 290, baseType: !351, size: 64, offset: 25984)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "last_task_ctx", scope: !332, file: !273, line: 291, baseType: !60, size: 64, offset: 26048)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "last_log_id", scope: !332, file: !273, line: 292, baseType: !17, size: 32, offset: 26112)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_select", scope: !332, file: !273, line: 293, baseType: !17, size: 32, offset: 26144)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_xsave", scope: !332, file: !273, line: 294, baseType: !60, size: 64, offset: 26176)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "intel_ctrl_guest_mask", scope: !332, file: !273, line: 299, baseType: !351, size: 64, offset: 26240)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "intel_ctrl_host_mask", scope: !332, file: !273, line: 300, baseType: !351, size: 64, offset: 26304)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "guest_switch_msrs", scope: !332, file: !273, line: 301, baseType: !5841, size: 12288, offset: 26368)
!5841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5842, size: 12288, elements: !433)
!5842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_guest_switch_msr", file: !5843, line: 559, size: 192, elements: !5844)
!5843 = !DIFile(filename: "./arch/x86/include/asm/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "367a4a537246a1e9b8d9f753696b342f")
!5844 = !{!5845, !5846, !5847}
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "msr", scope: !5842, file: !5843, line: 560, baseType: !22, size: 32)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !5842, file: !5843, line: 561, baseType: !351, size: 64, offset: 64)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "guest", scope: !5842, file: !5843, line: 561, baseType: !351, size: 64, offset: 128)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "intel_cp_status", scope: !332, file: !273, line: 306, baseType: !351, size: 64, offset: 38656)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "shared_regs", scope: !332, file: !273, line: 312, baseType: !5850, size: 64, offset: 38720)
!5850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5851, size: 64)
!5851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_shared_regs", file: !273, line: 179, size: 1856, elements: !5852)
!5852 = !{!5853, !5855, !5856}
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5851, file: !273, line: 180, baseType: !5854, size: 1792)
!5854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5826, size: 1792, elements: !4579)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5851, file: !273, line: 181, baseType: !17, size: 32, offset: 1792)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "core_id", scope: !5851, file: !273, line: 182, baseType: !22, size: 32, offset: 1824)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "constraint_list", scope: !332, file: !273, line: 316, baseType: !5770, size: 64, offset: 38784)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "excl_cntrs", scope: !332, file: !273, line: 317, baseType: !5859, size: 64, offset: 38848)
!5859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5860, size: 64)
!5860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_excl_cntrs", file: !273, line: 196, size: 4288, elements: !5861)
!5861 = !{!5862, !5863, !5870, !5876, !5877}
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5860, file: !273, line: 197, baseType: !788, size: 32)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !5860, file: !273, line: 199, baseType: !5864, size: 4160, offset: 32)
!5864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5865, size: 4160, elements: !2613)
!5865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_excl_states", file: !273, line: 191, size: 2080, elements: !5866)
!5866 = !{!5867, !5869}
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5865, file: !273, line: 192, baseType: !5868, size: 2048)
!5868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 2048, elements: !433)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "sched_started", scope: !5865, file: !273, line: 193, baseType: !1411, size: 8, offset: 2048)
!5870 = !DIDerivedType(tag: DW_TAG_member, scope: !5860, file: !273, line: 201, baseType: !5871, size: 32, offset: 4192)
!5871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5860, file: !273, line: 201, size: 32, elements: !5872)
!5872 = !{!5873, !5875}
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "has_exclusive", scope: !5871, file: !273, line: 202, baseType: !5874, size: 32)
!5874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 32, elements: !2613)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_present", scope: !5871, file: !273, line: 203, baseType: !571, size: 32)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5860, file: !273, line: 206, baseType: !17, size: 32, offset: 4224)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "core_id", scope: !5860, file: !273, line: 207, baseType: !22, size: 32, offset: 4256)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "excl_thread_id", scope: !332, file: !273, line: 318, baseType: !17, size: 32, offset: 38912)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "tfa_shadow", scope: !332, file: !273, line: 323, baseType: !351, size: 64, offset: 38976)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "n_metric", scope: !332, file: !273, line: 329, baseType: !17, size: 32, offset: 39040)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "amd_nb", scope: !332, file: !273, line: 334, baseType: !5882, size: 64, offset: 39104)
!5882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5883, size: 64)
!5883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_nb", file: !273, line: 113, size: 24640, elements: !5884)
!5884 = !{!5885, !5886, !5887, !5888}
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "nb_id", scope: !5883, file: !273, line: 114, baseType: !17, size: 32)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5883, file: !273, line: 115, baseType: !17, size: 32, offset: 32)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "owners", scope: !5883, file: !273, line: 116, baseType: !335, size: 4096, offset: 64)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "event_constraints", scope: !5883, file: !273, line: 117, baseType: !5889, size: 20480, offset: 4160)
!5889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5771, size: 20480, elements: !433)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "brs_active", scope: !332, file: !273, line: 335, baseType: !17, size: 32, offset: 39168)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "perf_ctr_virt_mask", scope: !332, file: !273, line: 338, baseType: !351, size: 64, offset: 39232)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "n_pair", scope: !332, file: !273, line: 339, baseType: !17, size: 32, offset: 39296)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "kfree_on_online", scope: !332, file: !273, line: 341, baseType: !5894, size: 128, offset: 39360)
!5894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 128, elements: !2613)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !332, file: !273, line: 343, baseType: !369, size: 64, offset: 39488)
!5896 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !64, line: 42, baseType: !78)
!5897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!5898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5899, size: 64)
!5899 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !463)
!5900 = !{!0, !7, !12, !5901, !5906, !5908, !5910, !5912, !6152, !6161, !6164, !6167, !6169, !6183, !6186, !6188, !6190, !6195, !6197, !6199, !6204, !6207, !6209, !6211, !6213, !6215, !6218, !6223, !6225, !6227, !6229, !6234, !6236, !6239, !6241, !6249, !6252, !6255, !6259, !6262}
!5901 = !DIGlobalVariableExpression(var: !5902, expr: !DIExpression())
!5902 = distinct !DIGlobalVariable(scope: null, file: !2, line: 563, type: !5903, isLocal: true, isDefinition: true)
!5903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !5904)
!5904 = !{!5905}
!5905 = !DISubrange(count: 15)
!5906 = !DIGlobalVariableExpression(var: !5907, expr: !DIExpression())
!5907 = distinct !DIGlobalVariable(scope: null, file: !2, line: 585, type: !5903, isLocal: true, isDefinition: true)
!5908 = !DIGlobalVariableExpression(var: !5909, expr: !DIExpression())
!5909 = distinct !DIGlobalVariable(scope: null, file: !2, line: 596, type: !5903, isLocal: true, isDefinition: true)
!5910 = !DIGlobalVariableExpression(var: !5911, expr: !DIExpression())
!5911 = distinct !DIGlobalVariable(scope: null, file: !2, line: 460, type: !2915, isLocal: true, isDefinition: true)
!5912 = !DIGlobalVariableExpression(var: !5913, expr: !DIExpression())
!5913 = distinct !DIGlobalVariable(name: "zhaoxin_pmu", scope: !18, file: !2, line: 459, type: !5914, isLocal: true, isDefinition: true)
!5914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5915)
!5915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_pmu", file: !273, line: 739, size: 5120, elements: !5916)
!5916 = !{!5917, !5918, !5919, !5923, !5924, !5926, !5927, !5928, !5929, !5930, !5931, !5932, !5933, !5937, !5938, !5942, !5943, !5944, !5948, !5949, !5953, !5954, !5955, !5956, !5957, !5958, !5963, !5964, !5965, !5966, !5970, !5974, !5978, !5982, !5983, !5984, !5990, !5995, !5996, !5997, !5998, !5999, !6000, !6001, !6005, !6006, !6007, !6008, !6009, !6010, !6011, !6012, !6013, !6014, !6032, !6033, !6034, !6035, !6036, !6037, !6038, !6039, !6040, !6041, !6042, !6043, !6044, !6045, !6049, !6050, !6051, !6055, !6056, !6057, !6058, !6059, !6060, !6061, !6062, !6063, !6068, !6074, !6075, !6076, !6077, !6078, !6079, !6080, !6081, !6082, !6083, !6084, !6085, !6086, !6087, !6088, !6089, !6090, !6091, !6092, !6093, !6095, !6096, !6097, !6098, !6099, !6109, !6110, !6115, !6116, !6117, !6121, !6122, !6148}
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5915, file: !273, line: 743, baseType: !57, size: 64)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5915, file: !273, line: 744, baseType: !17, size: 32, offset: 64)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !5915, file: !273, line: 745, baseType: !5920, size: 64, offset: 128)
!5920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5921, size: 64)
!5921 = !DISubroutineType(types: !5922)
!5922 = !{!17, !3314}
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "disable_all", scope: !5915, file: !273, line: 746, baseType: !2455, size: 64, offset: 192)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "enable_all", scope: !5915, file: !273, line: 747, baseType: !5925, size: 64, offset: 256)
!5925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5915, file: !273, line: 748, baseType: !5292, size: 64, offset: 320)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !5915, file: !273, line: 749, baseType: !5292, size: 64, offset: 384)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "assign", scope: !5915, file: !273, line: 750, baseType: !5286, size: 64, offset: 448)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !5915, file: !273, line: 751, baseType: !5292, size: 64, offset: 512)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !5915, file: !273, line: 752, baseType: !5292, size: 64, offset: 576)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5915, file: !273, line: 753, baseType: !5292, size: 64, offset: 640)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "set_period", scope: !5915, file: !273, line: 754, baseType: !5273, size: 64, offset: 704)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !5915, file: !273, line: 755, baseType: !5934, size: 64, offset: 768)
!5934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5935, size: 64)
!5935 = !DISubroutineType(types: !5936)
!5936 = !{!351, !336}
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "hw_config", scope: !5915, file: !273, line: 756, baseType: !5273, size: 64, offset: 832)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_events", scope: !5915, file: !273, line: 757, baseType: !5939, size: 64, offset: 896)
!5939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5940, size: 64)
!5940 = !DISubroutineType(types: !5941)
!5941 = !{!17, !331, !17, !757}
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "eventsel", scope: !5915, file: !273, line: 758, baseType: !22, size: 32, offset: 960)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "perfctr", scope: !5915, file: !273, line: 759, baseType: !22, size: 32, offset: 992)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "addr_offset", scope: !5915, file: !273, line: 760, baseType: !5945, size: 64, offset: 1024)
!5945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5946, size: 64)
!5946 = !DISubroutineType(types: !5947)
!5947 = !{!17, !17, !1411}
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "rdpmc_index", scope: !5915, file: !273, line: 761, baseType: !3532, size: 64, offset: 1088)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "event_map", scope: !5915, file: !273, line: 762, baseType: !5950, size: 64, offset: 1152)
!5950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5951, size: 64)
!5951 = !DISubroutineType(types: !5952)
!5952 = !{!351, !17}
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "max_events", scope: !5915, file: !273, line: 763, baseType: !17, size: 32, offset: 1216)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "num_counters", scope: !5915, file: !273, line: 764, baseType: !17, size: 32, offset: 1248)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "num_counters_fixed", scope: !5915, file: !273, line: 765, baseType: !17, size: 32, offset: 1280)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "cntval_bits", scope: !5915, file: !273, line: 766, baseType: !17, size: 32, offset: 1312)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "cntval_mask", scope: !5915, file: !273, line: 767, baseType: !351, size: 64, offset: 1344)
!5958 = !DIDerivedType(tag: DW_TAG_member, scope: !5915, file: !273, line: 768, baseType: !5959, size: 64, offset: 1408)
!5959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5915, file: !273, line: 768, size: 64, elements: !5960)
!5960 = !{!5961, !5962}
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "events_maskl", scope: !5959, file: !273, line: 769, baseType: !78, size: 64)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "events_mask", scope: !5959, file: !273, line: 770, baseType: !1157, size: 64)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "events_mask_len", scope: !5915, file: !273, line: 772, baseType: !17, size: 32, offset: 1472)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "apic", scope: !5915, file: !273, line: 773, baseType: !17, size: 32, offset: 1504)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "max_period", scope: !5915, file: !273, line: 774, baseType: !351, size: 64, offset: 1536)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "get_event_constraints", scope: !5915, file: !273, line: 776, baseType: !5967, size: 64, offset: 1600)
!5967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5968, size: 64)
!5968 = !DISubroutineType(types: !5969)
!5969 = !{!5770, !331, !17, !336}
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "put_event_constraints", scope: !5915, file: !273, line: 780, baseType: !5971, size: 64, offset: 1664)
!5971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5972, size: 64)
!5972 = !DISubroutineType(types: !5973)
!5973 = !{null, !331, !336}
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "start_scheduling", scope: !5915, file: !273, line: 783, baseType: !5975, size: 64, offset: 1728)
!5975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5976, size: 64)
!5976 = !DISubroutineType(types: !5977)
!5977 = !{null, !331}
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "commit_scheduling", scope: !5915, file: !273, line: 785, baseType: !5979, size: 64, offset: 1792)
!5979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5980, size: 64)
!5980 = !DISubroutineType(types: !5981)
!5981 = !{null, !331, !17, !17}
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "stop_scheduling", scope: !5915, file: !273, line: 787, baseType: !5975, size: 64, offset: 1856)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "event_constraints", scope: !5915, file: !273, line: 789, baseType: !5770, size: 64, offset: 1920)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5915, file: !273, line: 790, baseType: !5985, size: 64, offset: 1984)
!5985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5986, size: 64)
!5986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_pmu_quirk", file: !273, line: 617, size: 128, elements: !5987)
!5987 = !{!5988, !5989}
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5986, file: !273, line: 618, baseType: !5985, size: 64)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5986, file: !273, line: 619, baseType: !2455, size: 64, offset: 64)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "limit_period", scope: !5915, file: !273, line: 791, baseType: !5991, size: 64, offset: 2048)
!5991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5992, size: 64)
!5992 = !DISubroutineType(types: !5993)
!5993 = !{null, !336, !5994}
!5994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "late_ack", scope: !5915, file: !273, line: 794, baseType: !22, size: 1, offset: 2112, flags: DIFlagBitField, extraData: i64 2112)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "mid_ack", scope: !5915, file: !273, line: 795, baseType: !22, size: 1, offset: 2113, flags: DIFlagBitField, extraData: i64 2112)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "enabled_ack", scope: !5915, file: !273, line: 796, baseType: !22, size: 1, offset: 2114, flags: DIFlagBitField, extraData: i64 2112)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "attr_rdpmc_broken", scope: !5915, file: !273, line: 800, baseType: !17, size: 32, offset: 2144)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "attr_rdpmc", scope: !5915, file: !273, line: 801, baseType: !17, size: 32, offset: 2176)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "format_attrs", scope: !5915, file: !273, line: 802, baseType: !4400, size: 64, offset: 2240)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "events_sysfs_show", scope: !5915, file: !273, line: 804, baseType: !6002, size: 64, offset: 2304)
!6002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6003, size: 64)
!6003 = !DISubroutineType(types: !6004)
!6004 = !{!460, !428, !351}
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !5915, file: !273, line: 805, baseType: !474, size: 64, offset: 2368)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "attr_freeze_on_smi", scope: !5915, file: !273, line: 807, baseType: !78, size: 64, offset: 2432)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_prepare", scope: !5915, file: !273, line: 812, baseType: !3532, size: 64, offset: 2496)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_starting", scope: !5915, file: !273, line: 813, baseType: !5925, size: 64, offset: 2560)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_dying", scope: !5915, file: !273, line: 814, baseType: !5925, size: 64, offset: 2624)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_dead", scope: !5915, file: !273, line: 815, baseType: !5925, size: 64, offset: 2688)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "check_microcode", scope: !5915, file: !273, line: 817, baseType: !2455, size: 64, offset: 2752)
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !5915, file: !273, line: 818, baseType: !5306, size: 64, offset: 2816)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "intel_ctrl", scope: !5915, file: !273, line: 824, baseType: !351, size: 64, offset: 2880)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "intel_cap", scope: !5915, file: !273, line: 825, baseType: !6015, size: 64, offset: 2944)
!6015 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_capabilities", file: !273, line: 596, size: 64, elements: !6016)
!6016 = !{!6017, !6031}
!6017 = !DIDerivedType(tag: DW_TAG_member, scope: !6015, file: !273, line: 597, baseType: !6018, size: 64)
!6018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6015, file: !273, line: 597, size: 64, elements: !6019)
!6019 = !{!6020, !6021, !6022, !6023, !6024, !6025, !6026, !6027, !6028, !6029, !6030}
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_format", scope: !6018, file: !273, line: 598, baseType: !351, size: 6, flags: DIFlagBitField, extraData: i64 0)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_trap", scope: !6018, file: !273, line: 599, baseType: !351, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_arch_reg", scope: !6018, file: !273, line: 600, baseType: !351, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_format", scope: !6018, file: !273, line: 601, baseType: !351, size: 4, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "smm_freeze", scope: !6018, file: !273, line: 602, baseType: !351, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "full_width_write", scope: !6018, file: !273, line: 607, baseType: !351, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_baseline", scope: !6018, file: !273, line: 608, baseType: !351, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "perf_metrics", scope: !6018, file: !273, line: 609, baseType: !351, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_output_pt_available", scope: !6018, file: !273, line: 610, baseType: !351, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_timing_info", scope: !6018, file: !273, line: 611, baseType: !351, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "anythread_deprecated", scope: !6018, file: !273, line: 612, baseType: !351, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !6015, file: !273, line: 614, baseType: !351, size: 64)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "bts", scope: !5915, file: !273, line: 830, baseType: !22, size: 1, offset: 3008, flags: DIFlagBitField, extraData: i64 3008)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "bts_active", scope: !5915, file: !273, line: 831, baseType: !22, size: 1, offset: 3009, flags: DIFlagBitField, extraData: i64 3008)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "pebs", scope: !5915, file: !273, line: 832, baseType: !22, size: 1, offset: 3010, flags: DIFlagBitField, extraData: i64 3008)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_active", scope: !5915, file: !273, line: 833, baseType: !22, size: 1, offset: 3011, flags: DIFlagBitField, extraData: i64 3008)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_broken", scope: !5915, file: !273, line: 834, baseType: !22, size: 1, offset: 3012, flags: DIFlagBitField, extraData: i64 3008)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_prec_dist", scope: !5915, file: !273, line: 835, baseType: !22, size: 1, offset: 3013, flags: DIFlagBitField, extraData: i64 3008)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_no_tlb", scope: !5915, file: !273, line: 836, baseType: !22, size: 1, offset: 3014, flags: DIFlagBitField, extraData: i64 3008)
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_no_isolation", scope: !5915, file: !273, line: 837, baseType: !22, size: 1, offset: 3015, flags: DIFlagBitField, extraData: i64 3008)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_block", scope: !5915, file: !273, line: 838, baseType: !22, size: 1, offset: 3016, flags: DIFlagBitField, extraData: i64 3008)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_ept", scope: !5915, file: !273, line: 839, baseType: !22, size: 1, offset: 3017, flags: DIFlagBitField, extraData: i64 3008)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_record_size", scope: !5915, file: !273, line: 840, baseType: !17, size: 32, offset: 3040)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_buffer_size", scope: !5915, file: !273, line: 841, baseType: !17, size: 32, offset: 3072)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "max_pebs_events", scope: !5915, file: !273, line: 842, baseType: !17, size: 32, offset: 3104)
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "drain_pebs", scope: !5915, file: !273, line: 843, baseType: !6046, size: 64, offset: 3136)
!6046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6047, size: 64)
!6047 = !DISubroutineType(types: !6048)
!6048 = !{null, !3314, !5620}
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_constraints", scope: !5915, file: !273, line: 844, baseType: !5770, size: 64, offset: 3200)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_aliases", scope: !5915, file: !273, line: 845, baseType: !5292, size: 64, offset: 3264)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_latency_data", scope: !5915, file: !273, line: 846, baseType: !6052, size: 64, offset: 3328)
!6052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6053, size: 64)
!6053 = !DISubroutineType(types: !6054)
!6054 = !{!351, !336, !351}
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "large_pebs_flags", scope: !5915, file: !273, line: 847, baseType: !78, size: 64, offset: 3392)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_abort_event", scope: !5915, file: !273, line: 848, baseType: !351, size: 64, offset: 3456)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_capable", scope: !5915, file: !273, line: 849, baseType: !351, size: 64, offset: 3520)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_tos", scope: !5915, file: !273, line: 854, baseType: !22, size: 32, offset: 3584)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_from", scope: !5915, file: !273, line: 854, baseType: !22, size: 32, offset: 3616)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_to", scope: !5915, file: !273, line: 854, baseType: !22, size: 32, offset: 3648)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_info", scope: !5915, file: !273, line: 855, baseType: !22, size: 32, offset: 3680)
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_nr", scope: !5915, file: !273, line: 855, baseType: !22, size: 32, offset: 3712)
!6063 = !DIDerivedType(tag: DW_TAG_member, scope: !5915, file: !273, line: 856, baseType: !6064, size: 64, offset: 3776)
!6064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5915, file: !273, line: 856, size: 64, elements: !6065)
!6065 = !{!6066, !6067}
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_sel_mask", scope: !6064, file: !273, line: 857, baseType: !351, size: 64)
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_ctl_mask", scope: !6064, file: !273, line: 858, baseType: !351, size: 64)
!6068 = !DIDerivedType(tag: DW_TAG_member, scope: !5915, file: !273, line: 860, baseType: !6069, size: 64, offset: 3840)
!6069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5915, file: !273, line: 860, size: 64, elements: !6070)
!6070 = !{!6071, !6073}
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_sel_map", scope: !6069, file: !273, line: 861, baseType: !6072, size: 64)
!6072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_ctl_map", scope: !6069, file: !273, line: 862, baseType: !757, size: 64)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_double_abort", scope: !5915, file: !273, line: 864, baseType: !1411, size: 8, offset: 3904)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_pt_coexist", scope: !5915, file: !273, line: 865, baseType: !1411, size: 8, offset: 3912)
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_has_info", scope: !5915, file: !273, line: 867, baseType: !22, size: 1, offset: 3920, flags: DIFlagBitField, extraData: i64 3920)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_has_tsx", scope: !5915, file: !273, line: 868, baseType: !22, size: 1, offset: 3921, flags: DIFlagBitField, extraData: i64 3920)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_from_flags", scope: !5915, file: !273, line: 869, baseType: !22, size: 1, offset: 3922, flags: DIFlagBitField, extraData: i64 3920)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_to_cycles", scope: !5915, file: !273, line: 870, baseType: !22, size: 1, offset: 3923, flags: DIFlagBitField, extraData: i64 3920)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_depth_mask", scope: !5915, file: !273, line: 875, baseType: !22, size: 8, offset: 3924, flags: DIFlagBitField, extraData: i64 3920)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_deep_c_reset", scope: !5915, file: !273, line: 876, baseType: !22, size: 1, offset: 3932, flags: DIFlagBitField, extraData: i64 3920)
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_lip", scope: !5915, file: !273, line: 877, baseType: !22, size: 1, offset: 3933, flags: DIFlagBitField, extraData: i64 3920)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_cpl", scope: !5915, file: !273, line: 878, baseType: !22, size: 1, offset: 3934, flags: DIFlagBitField, extraData: i64 3920)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_filter", scope: !5915, file: !273, line: 879, baseType: !22, size: 1, offset: 3935, flags: DIFlagBitField, extraData: i64 3920)
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_call_stack", scope: !5915, file: !273, line: 880, baseType: !22, size: 1, offset: 3936, flags: DIFlagBitField, extraData: i64 3920)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_mispred", scope: !5915, file: !273, line: 881, baseType: !22, size: 1, offset: 3937, flags: DIFlagBitField, extraData: i64 3920)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_timed_lbr", scope: !5915, file: !273, line: 882, baseType: !22, size: 1, offset: 3938, flags: DIFlagBitField, extraData: i64 3920)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_br_type", scope: !5915, file: !273, line: 883, baseType: !22, size: 1, offset: 3939, flags: DIFlagBitField, extraData: i64 3920)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_reset", scope: !5915, file: !273, line: 885, baseType: !2455, size: 64, offset: 3968)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_read", scope: !5915, file: !273, line: 886, baseType: !5975, size: 64, offset: 4032)
!6091 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_save", scope: !5915, file: !273, line: 887, baseType: !4003, size: 64, offset: 4096)
!6092 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_restore", scope: !5915, file: !273, line: 888, baseType: !4003, size: 64, offset: 4160)
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "lbr_exclusive", scope: !5915, file: !273, line: 893, baseType: !6094, size: 96, offset: 4224)
!6094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 96, elements: !429)
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "num_topdown_events", scope: !5915, file: !273, line: 898, baseType: !17, size: 32, offset: 4320)
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !5915, file: !273, line: 905, baseType: !5311, size: 64, offset: 4352)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "amd_nb_constraints", scope: !5915, file: !273, line: 911, baseType: !22, size: 1, offset: 4416, flags: DIFlagBitField, extraData: i64 4416)
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "perf_ctr_pair_en", scope: !5915, file: !273, line: 912, baseType: !351, size: 64, offset: 4480)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "extra_regs", scope: !5915, file: !273, line: 917, baseType: !6100, size: 64, offset: 4544)
!6100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6101, size: 64)
!6101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extra_reg", file: !273, line: 563, size: 256, elements: !6102)
!6102 = !{!6103, !6104, !6105, !6106, !6107, !6108}
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !6101, file: !273, line: 564, baseType: !22, size: 32)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "msr", scope: !6101, file: !273, line: 565, baseType: !22, size: 32, offset: 32)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "config_mask", scope: !6101, file: !273, line: 566, baseType: !351, size: 64, offset: 64)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "valid_mask", scope: !6101, file: !273, line: 567, baseType: !351, size: 64, offset: 128)
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !6101, file: !273, line: 568, baseType: !17, size: 32, offset: 192)
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "extra_msr_access", scope: !6101, file: !273, line: 569, baseType: !1411, size: 8, offset: 224)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5915, file: !273, line: 918, baseType: !22, size: 32, offset: 4608)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "guest_get_msrs", scope: !5915, file: !273, line: 923, baseType: !6111, size: 64, offset: 4672)
!6111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6112, size: 64)
!6112 = !DISubroutineType(types: !6113)
!6113 = !{!6114, !757, !60}
!6114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5842, size: 64)
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !5915, file: !273, line: 928, baseType: !5350, size: 64, offset: 4736)
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !5915, file: !273, line: 930, baseType: !5273, size: 64, offset: 4800)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5915, file: !273, line: 932, baseType: !6118, size: 64, offset: 4864)
!6118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6119, size: 64)
!6119 = !DISubroutineType(types: !6120)
!6120 = !{null, !369, !17, !4367}
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "num_hybrid_pmus", scope: !5915, file: !273, line: 941, baseType: !17, size: 32, offset: 4928)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "hybrid_pmu", scope: !5915, file: !273, line: 942, baseType: !6123, size: 64, offset: 4992)
!6123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6124, size: 64)
!6124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_hybrid_pmu", file: !273, line: 655, size: 9856, elements: !6125)
!6125 = !{!6126, !6127, !6128, !6129, !6130, !6131, !6132, !6133, !6134, !6135, !6136, !6139, !6140, !6141, !6142, !6143, !6144, !6145, !6146}
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !6124, file: !273, line: 656, baseType: !370, size: 2432)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6124, file: !273, line: 657, baseType: !57, size: 64, offset: 2432)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_type", scope: !6124, file: !273, line: 658, baseType: !122, size: 8, offset: 2496)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "supported_cpus", scope: !6124, file: !273, line: 659, baseType: !1152, size: 64, offset: 2560)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "intel_cap", scope: !6124, file: !273, line: 660, baseType: !6015, size: 64, offset: 2624)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "intel_ctrl", scope: !6124, file: !273, line: 661, baseType: !351, size: 64, offset: 2688)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "max_pebs_events", scope: !6124, file: !273, line: 662, baseType: !17, size: 32, offset: 2752)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "num_counters", scope: !6124, file: !273, line: 663, baseType: !17, size: 32, offset: 2784)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "num_counters_fixed", scope: !6124, file: !273, line: 664, baseType: !17, size: 32, offset: 2816)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "unconstrained", scope: !6124, file: !273, line: 665, baseType: !5771, size: 320, offset: 2880)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "hw_cache_event_ids", scope: !6124, file: !273, line: 667, baseType: !6137, size: 2688, offset: 3200)
!6137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 2688, elements: !6138)
!6138 = !{!4580, !430, !2614}
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "hw_cache_extra_regs", scope: !6124, file: !273, line: 671, baseType: !6137, size: 2688, offset: 5888)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "event_constraints", scope: !6124, file: !273, line: 675, baseType: !5770, size: 64, offset: 8576)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_constraints", scope: !6124, file: !273, line: 676, baseType: !5770, size: 64, offset: 8640)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "extra_regs", scope: !6124, file: !273, line: 677, baseType: !6100, size: 64, offset: 8704)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "late_ack", scope: !6124, file: !273, line: 679, baseType: !22, size: 1, offset: 8768, flags: DIFlagBitField, extraData: i64 8768)
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "mid_ack", scope: !6124, file: !273, line: 680, baseType: !22, size: 1, offset: 8769, flags: DIFlagBitField, extraData: i64 8768)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "enabled_ack", scope: !6124, file: !273, line: 681, baseType: !22, size: 1, offset: 8770, flags: DIFlagBitField, extraData: i64 8768)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "pebs_data_source", scope: !6124, file: !273, line: 683, baseType: !6147, size: 1024, offset: 8832)
!6147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 1024, elements: !1852)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "get_hybrid_cpu_type", scope: !5915, file: !273, line: 943, baseType: !6149, size: 64, offset: 5056)
!6149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6150, size: 64)
!6150 = !DISubroutineType(types: !6151)
!6151 = !{!122}
!6152 = !DIGlobalVariableExpression(var: !6153, expr: !DIExpression())
!6153 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__apic_call_write246", scope: !6154, file: !6155, line: 404, type: !60, isLocal: true, isDefinition: true)
!6154 = distinct !DISubprogram(name: "apic_write", scope: !6155, file: !6155, line: 402, type: !6156, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6158)
!6155 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!6156 = !DISubroutineType(types: !6157)
!6157 = !{null, !571, !571}
!6158 = !{!6159, !6160}
!6159 = !DILocalVariable(name: "reg", arg: 1, scope: !6154, file: !6155, line: 402, type: !571)
!6160 = !DILocalVariable(name: "val", arg: 2, scope: !6154, file: !6155, line: 402, type: !571)
!6161 = !DIGlobalVariableExpression(var: !6162, expr: !DIExpression())
!6162 = distinct !DIGlobalVariable(scope: null, file: !273, line: 1147, type: !6163, isLocal: true, isDefinition: true)
!6163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !1384)
!6164 = !DIGlobalVariableExpression(var: !6165, expr: !DIExpression())
!6165 = distinct !DIGlobalVariable(name: "zx_arch_formats_attr", scope: !18, file: !2, line: 443, type: !6166, isLocal: true, isDefinition: true)
!6166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 384, elements: !1466)
!6167 = !DIGlobalVariableExpression(var: !6168, expr: !DIExpression())
!6168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 437, type: !1465, isLocal: true, isDefinition: true)
!6169 = !DIGlobalVariableExpression(var: !6170, expr: !DIExpression())
!6170 = distinct !DIGlobalVariable(name: "format_attr_event", scope: !18, file: !2, line: 437, type: !6171, isLocal: true, isDefinition: true)
!6171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !217, line: 106, size: 256, elements: !6172)
!6172 = !{!6173, !6174, !6179}
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !6171, file: !217, line: 107, baseType: !465, size: 128)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !6171, file: !217, line: 108, baseType: !6175, size: 64, offset: 128)
!6175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6176, size: 64)
!6176 = !DISubroutineType(types: !6177)
!6177 = !{!460, !4777, !6178, !428}
!6178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6171, size: 64)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !6171, file: !217, line: 110, baseType: !6180, size: 64, offset: 192)
!6180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6181, size: 64)
!6181 = !DISubroutineType(types: !6182)
!6182 = !{!460, !4777, !6178, !57, !74}
!6183 = !DIGlobalVariableExpression(var: !6184, expr: !DIExpression())
!6184 = distinct !DIGlobalVariable(scope: null, file: !2, line: 437, type: !6185, isLocal: true, isDefinition: true)
!6185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !3283)
!6186 = !DIGlobalVariableExpression(var: !6187, expr: !DIExpression())
!6187 = distinct !DIGlobalVariable(scope: null, file: !2, line: 438, type: !1465, isLocal: true, isDefinition: true)
!6188 = !DIGlobalVariableExpression(var: !6189, expr: !DIExpression())
!6189 = distinct !DIGlobalVariable(name: "format_attr_umask", scope: !18, file: !2, line: 438, type: !6171, isLocal: true, isDefinition: true)
!6190 = !DIGlobalVariableExpression(var: !6191, expr: !DIExpression())
!6191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 438, type: !6192, isLocal: true, isDefinition: true)
!6192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !6193)
!6193 = !{!6194}
!6194 = !DISubrange(count: 13)
!6195 = !DIGlobalVariableExpression(var: !6196, expr: !DIExpression())
!6196 = distinct !DIGlobalVariable(scope: null, file: !2, line: 439, type: !6163, isLocal: true, isDefinition: true)
!6197 = !DIGlobalVariableExpression(var: !6198, expr: !DIExpression())
!6198 = distinct !DIGlobalVariable(name: "format_attr_edge", scope: !18, file: !2, line: 439, type: !6171, isLocal: true, isDefinition: true)
!6199 = !DIGlobalVariableExpression(var: !6200, expr: !DIExpression())
!6200 = distinct !DIGlobalVariable(scope: null, file: !2, line: 439, type: !6201, isLocal: true, isDefinition: true)
!6201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !6202)
!6202 = !{!6203}
!6203 = !DISubrange(count: 11)
!6204 = !DIGlobalVariableExpression(var: !6205, expr: !DIExpression())
!6205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 440, type: !6206, isLocal: true, isDefinition: true)
!6206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !886)
!6207 = !DIGlobalVariableExpression(var: !6208, expr: !DIExpression())
!6208 = distinct !DIGlobalVariable(name: "format_attr_inv", scope: !18, file: !2, line: 440, type: !6171, isLocal: true, isDefinition: true)
!6209 = !DIGlobalVariableExpression(var: !6210, expr: !DIExpression())
!6210 = distinct !DIGlobalVariable(scope: null, file: !2, line: 440, type: !6201, isLocal: true, isDefinition: true)
!6211 = !DIGlobalVariableExpression(var: !6212, expr: !DIExpression())
!6212 = distinct !DIGlobalVariable(scope: null, file: !2, line: 441, type: !1465, isLocal: true, isDefinition: true)
!6213 = !DIGlobalVariableExpression(var: !6214, expr: !DIExpression())
!6214 = distinct !DIGlobalVariable(name: "format_attr_cmask", scope: !18, file: !2, line: 441, type: !6171, isLocal: true, isDefinition: true)
!6215 = !DIGlobalVariableExpression(var: !6216, expr: !DIExpression())
!6216 = distinct !DIGlobalVariable(scope: null, file: !2, line: 441, type: !6217, isLocal: true, isDefinition: true)
!6217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !2364)
!6218 = !DIGlobalVariableExpression(var: !6219, expr: !DIExpression())
!6219 = distinct !DIGlobalVariable(scope: null, file: !2, line: 500, type: !6220, isLocal: true, isDefinition: true)
!6220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !6221)
!6221 = !{!6222}
!6222 = !DISubrange(count: 46)
!6223 = !DIGlobalVariableExpression(var: !6224, expr: !DIExpression())
!6224 = distinct !DIGlobalVariable(scope: null, file: !2, line: 484, type: !6201, isLocal: true, isDefinition: true)
!6225 = !DIGlobalVariableExpression(var: !6226, expr: !DIExpression())
!6226 = distinct !DIGlobalVariable(scope: null, file: !2, line: 485, type: !6192, isLocal: true, isDefinition: true)
!6227 = !DIGlobalVariableExpression(var: !6228, expr: !DIExpression())
!6228 = distinct !DIGlobalVariable(scope: null, file: !2, line: 486, type: !6201, isLocal: true, isDefinition: true)
!6229 = !DIGlobalVariableExpression(var: !6230, expr: !DIExpression())
!6230 = distinct !DIGlobalVariable(scope: null, file: !2, line: 487, type: !6231, isLocal: true, isDefinition: true)
!6231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !6232)
!6232 = !{!6233}
!6233 = !DISubrange(count: 17)
!6234 = !DIGlobalVariableExpression(var: !6235, expr: !DIExpression())
!6235 = distinct !DIGlobalVariable(scope: null, file: !2, line: 488, type: !6192, isLocal: true, isDefinition: true)
!6236 = !DIGlobalVariableExpression(var: !6237, expr: !DIExpression())
!6237 = distinct !DIGlobalVariable(scope: null, file: !2, line: 489, type: !6238, isLocal: true, isDefinition: true)
!6238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !3250)
!6239 = !DIGlobalVariableExpression(var: !6240, expr: !DIExpression())
!6240 = distinct !DIGlobalVariable(scope: null, file: !2, line: 490, type: !6217, isLocal: true, isDefinition: true)
!6241 = !DIGlobalVariableExpression(var: !6242, expr: !DIExpression())
!6242 = distinct !DIGlobalVariable(name: "zx_arch_events_map", scope: !18, file: !2, line: 483, type: !6243, isLocal: true, isDefinition: true)
!6243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6244, size: 896, elements: !4579)
!6244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6245)
!6245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 483, size: 128, elements: !6246)
!6246 = !{!6247, !6248}
!6247 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !6245, file: !2, line: 483, baseType: !17, size: 32)
!6248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6245, file: !2, line: 483, baseType: !428, size: 64, offset: 64)
!6249 = !DIGlobalVariableExpression(var: !6250, expr: !DIExpression())
!6250 = distinct !DIGlobalVariable(name: "zxc_event_constraints", scope: !18, file: !2, line: 33, type: !6251, isLocal: true, isDefinition: true)
!6251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5771, size: 640, elements: !2613)
!6252 = !DIGlobalVariableExpression(var: !6253, expr: !DIExpression())
!6253 = distinct !DIGlobalVariable(name: "zx_pmon_event_map", scope: !18, file: !2, line: 24, type: !6254, isLocal: true, isDefinition: true)
!6254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 640, elements: !1618)
!6255 = !DIGlobalVariableExpression(var: !6256, expr: !DIExpression())
!6256 = distinct !DIGlobalVariable(name: "zxd_hw_cache_event_ids", scope: !18, file: !2, line: 47, type: !6257, isLocal: true, isDefinition: true)
!6257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6258, size: 2688, elements: !6138)
!6258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!6259 = !DIGlobalVariableExpression(var: !6260, expr: !DIExpression())
!6260 = distinct !DIGlobalVariable(name: "zxd_event_constraints", scope: !18, file: !2, line: 39, type: !6261, isLocal: true, isDefinition: true)
!6261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5771, size: 1280, elements: !886)
!6262 = !DIGlobalVariableExpression(var: !6263, expr: !DIExpression())
!6263 = distinct !DIGlobalVariable(name: "zxe_hw_cache_event_ids", scope: !18, file: !2, line: 151, type: !6257, isLocal: true, isDefinition: true)
!6264 = !{!6265, !6277, !6288, !6302, !6303, !6304}
!6265 = !DILocalVariable(name: "edx", scope: !14, file: !2, line: 507, type: !6266)
!6266 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpuid10_edx", file: !5843, line: 164, size: 32, elements: !6267)
!6267 = !{!6268, !6276}
!6268 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !6266, file: !5843, line: 171, baseType: !6269, size: 32)
!6269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6266, file: !5843, line: 165, size: 32, elements: !6270)
!6270 = !{!6271, !6272, !6273, !6274, !6275}
!6271 = !DIDerivedType(tag: DW_TAG_member, name: "num_counters_fixed", scope: !6269, file: !5843, line: 166, baseType: !22, size: 5, flags: DIFlagBitField, extraData: i64 0)
!6272 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width_fixed", scope: !6269, file: !5843, line: 167, baseType: !22, size: 8, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!6273 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !6269, file: !5843, line: 168, baseType: !22, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "anythread_deprecated", scope: !6269, file: !5843, line: 169, baseType: !22, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!6275 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !6269, file: !5843, line: 170, baseType: !22, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!6276 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !6266, file: !5843, line: 172, baseType: !22, size: 32)
!6277 = !DILocalVariable(name: "eax", scope: !14, file: !2, line: 508, type: !6278)
!6278 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpuid10_eax", file: !5843, line: 141, size: 32, elements: !6279)
!6279 = !{!6280, !6287}
!6280 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !6278, file: !5843, line: 147, baseType: !6281, size: 32)
!6281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6278, file: !5843, line: 142, size: 32, elements: !6282)
!6282 = !{!6283, !6284, !6285, !6286}
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "version_id", scope: !6281, file: !5843, line: 143, baseType: !22, size: 8, flags: DIFlagBitField, extraData: i64 0)
!6284 = !DIDerivedType(tag: DW_TAG_member, name: "num_counters", scope: !6281, file: !5843, line: 144, baseType: !22, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!6285 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !6281, file: !5843, line: 145, baseType: !22, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!6286 = !DIDerivedType(tag: DW_TAG_member, name: "mask_length", scope: !6281, file: !5843, line: 146, baseType: !22, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!6287 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !6278, file: !5843, line: 148, baseType: !22, size: 32)
!6288 = !DILocalVariable(name: "ebx", scope: !14, file: !2, line: 509, type: !6289)
!6289 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpuid10_ebx", file: !5843, line: 151, size: 32, elements: !6290)
!6290 = !{!6291, !6301}
!6291 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !6289, file: !5843, line: 160, baseType: !6292, size: 32)
!6292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6289, file: !5843, line: 152, size: 32, elements: !6293)
!6293 = !{!6294, !6295, !6296, !6297, !6298, !6299, !6300}
!6294 = !DIDerivedType(tag: DW_TAG_member, name: "no_unhalted_core_cycles", scope: !6292, file: !5843, line: 153, baseType: !22, size: 1, flags: DIFlagBitField, extraData: i64 0)
!6295 = !DIDerivedType(tag: DW_TAG_member, name: "no_instructions_retired", scope: !6292, file: !5843, line: 154, baseType: !22, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!6296 = !DIDerivedType(tag: DW_TAG_member, name: "no_unhalted_reference_cycles", scope: !6292, file: !5843, line: 155, baseType: !22, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!6297 = !DIDerivedType(tag: DW_TAG_member, name: "no_llc_reference", scope: !6292, file: !5843, line: 156, baseType: !22, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!6298 = !DIDerivedType(tag: DW_TAG_member, name: "no_llc_misses", scope: !6292, file: !5843, line: 157, baseType: !22, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!6299 = !DIDerivedType(tag: DW_TAG_member, name: "no_branch_instruction_retired", scope: !6292, file: !5843, line: 158, baseType: !22, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!6300 = !DIDerivedType(tag: DW_TAG_member, name: "no_branch_misses_retired", scope: !6292, file: !5843, line: 159, baseType: !22, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!6301 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !6289, file: !5843, line: 161, baseType: !22, size: 32)
!6302 = !DILocalVariable(name: "c", scope: !14, file: !2, line: 510, type: !5770)
!6303 = !DILocalVariable(name: "unused", scope: !14, file: !2, line: 511, type: !22)
!6304 = !DILocalVariable(name: "version", scope: !14, file: !2, line: 512, type: !17)
!6305 = !{i32 7, !"Dwarf Version", i32 5}
!6306 = !{i32 2, !"Debug Info Version", i32 3}
!6307 = !{i32 1, !"wchar_size", i32 2}
!6308 = !{i32 8, !"cf-protection-branch", i32 1}
!6309 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6310 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6311 = !{i32 1, !"Code Model", i32 2}
!6312 = !{i32 1, !"override-stack-alignment", i32 8}
!6313 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6314 = !DILocation(line: 507, column: 2, scope: !14)
!6315 = !DILocation(line: 507, column: 20, scope: !14)
!6316 = !DILocation(line: 508, column: 2, scope: !14)
!6317 = !DILocation(line: 508, column: 20, scope: !14)
!6318 = !DILocation(line: 509, column: 2, scope: !14)
!6319 = !DILocation(line: 509, column: 20, scope: !14)
!6320 = !DILocation(line: 510, column: 2, scope: !14)
!6321 = !DILocation(line: 510, column: 27, scope: !14)
!6322 = !DILocation(line: 511, column: 2, scope: !14)
!6323 = !DILocation(line: 511, column: 15, scope: !14)
!6324 = !DILocation(line: 512, column: 2, scope: !14)
!6325 = !DILocation(line: 512, column: 6, scope: !14)
!6326 = !DILocation(line: 514, column: 2, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !14, file: !2, line: 514, column: 2)
!6328 = !DILocation(line: 514, column: 2, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6327, file: !2, line: 514, column: 2)
!6330 = !DILocation(line: 520, column: 2, scope: !14)
!6331 = !DILocation(line: 522, column: 16, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !14, file: !2, line: 522, column: 6)
!6333 = !DILocation(line: 522, column: 28, scope: !6332)
!6334 = !DILocation(line: 522, column: 6, scope: !14)
!6335 = !DILocation(line: 523, column: 3, scope: !6332)
!6336 = !DILocation(line: 525, column: 22, scope: !14)
!6337 = !DILocation(line: 525, column: 10, scope: !14)
!6338 = !DILocation(line: 526, column: 6, scope: !6339)
!6339 = distinct !DILexicalBlock(scope: !14, file: !2, line: 526, column: 6)
!6340 = !DILocation(line: 526, column: 14, scope: !6339)
!6341 = !DILocation(line: 526, column: 6, scope: !14)
!6342 = !DILocation(line: 527, column: 3, scope: !6339)
!6343 = !DILocation(line: 529, column: 12, scope: !14)
!6344 = !DILocation(line: 530, column: 2, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !14, file: !2, line: 530, column: 2)
!6346 = !DILocation(line: 530, column: 2, scope: !6347)
!6347 = distinct !DILexicalBlock(scope: !6345, file: !2, line: 530, column: 2)
!6348 = !DILocation(line: 532, column: 22, scope: !14)
!6349 = !DILocation(line: 532, column: 20, scope: !14)
!6350 = !DILocation(line: 533, column: 36, scope: !14)
!6351 = !DILocation(line: 533, column: 24, scope: !14)
!6352 = !DILocation(line: 534, column: 35, scope: !14)
!6353 = !DILocation(line: 534, column: 23, scope: !14)
!6354 = !DILocation(line: 535, column: 44, scope: !14)
!6355 = !DILocation(line: 535, column: 31, scope: !14)
!6356 = !DILocation(line: 535, column: 55, scope: !14)
!6357 = !DILocation(line: 535, column: 23, scope: !14)
!6358 = !DILocation(line: 536, column: 30, scope: !14)
!6359 = !DILocation(line: 536, column: 26, scope: !14)
!6360 = !DILocation(line: 536, column: 24, scope: !14)
!6361 = !DILocation(line: 537, column: 39, scope: !14)
!6362 = !DILocation(line: 537, column: 27, scope: !14)
!6363 = !DILocation(line: 539, column: 41, scope: !14)
!6364 = !DILocation(line: 539, column: 29, scope: !14)
!6365 = !DILocation(line: 540, column: 2, scope: !14)
!6366 = !DILocation(line: 540, column: 2, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !14, file: !2, line: 540, column: 2)
!6368 = !DILocation(line: 542, column: 24, scope: !14)
!6369 = !DILocation(line: 542, column: 10, scope: !14)
!6370 = !DILocation(line: 542, column: 2, scope: !14)
!6371 = !DILocation(line: 549, column: 22, scope: !6372)
!6372 = distinct !DILexicalBlock(scope: !6373, file: !2, line: 549, column: 7)
!6373 = distinct !DILexicalBlock(scope: !14, file: !2, line: 542, column: 29)
!6374 = !DILocation(line: 549, column: 8, scope: !6372)
!6375 = !DILocation(line: 549, column: 32, scope: !6372)
!6376 = !DILocation(line: 549, column: 40, scope: !6372)
!6377 = !DILocation(line: 549, column: 57, scope: !6372)
!6378 = !DILocation(line: 549, column: 43, scope: !6372)
!6379 = !DILocation(line: 549, column: 70, scope: !6372)
!6380 = !DILocation(line: 549, column: 79, scope: !6372)
!6381 = !DILocation(line: 550, column: 18, scope: !6372)
!6382 = !DILocation(line: 550, column: 4, scope: !6372)
!6383 = !DILocation(line: 550, column: 28, scope: !6372)
!6384 = !DILocation(line: 549, column: 7, scope: !6373)
!6385 = !DILocation(line: 552, column: 33, scope: !6386)
!6386 = distinct !DILexicalBlock(scope: !6372, file: !2, line: 550, column: 37)
!6387 = !DILocation(line: 552, column: 45, scope: !6386)
!6388 = !DILocation(line: 552, column: 23, scope: !6386)
!6389 = !DILocation(line: 555, column: 24, scope: !6386)
!6390 = !DILocation(line: 557, column: 30, scope: !6386)
!6391 = !DILocation(line: 558, column: 50, scope: !6386)
!6392 = !DILocation(line: 559, column: 54, scope: !6386)
!6393 = !DILocation(line: 560, column: 50, scope: !6386)
!6394 = !DILocation(line: 561, column: 48, scope: !6386)
!6395 = !DILocation(line: 563, column: 4, scope: !6396)
!6396 = distinct !DILexicalBlock(scope: !6386, file: !2, line: 563, column: 4)
!6397 = !DILocation(line: 563, column: 4, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6396, file: !2, line: 563, column: 4)
!6399 = !DILocation(line: 564, column: 4, scope: !6386)
!6400 = !DILocation(line: 566, column: 3, scope: !6373)
!6401 = !DILocation(line: 570, column: 4, scope: !6373)
!6402 = !DILocation(line: 569, column: 60, scope: !6373)
!6403 = !DILocation(line: 573, column: 4, scope: !6373)
!6404 = !DILocation(line: 572, column: 59, scope: !6373)
!6405 = !DILocation(line: 575, column: 25, scope: !6373)
!6406 = !DILocation(line: 575, column: 11, scope: !6373)
!6407 = !DILocation(line: 575, column: 3, scope: !6373)
!6408 = !DILocation(line: 577, column: 4, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6373, file: !2, line: 575, column: 36)
!6410 = !DILocation(line: 580, column: 30, scope: !6409)
!6411 = !DILocation(line: 582, column: 57, scope: !6409)
!6412 = !DILocation(line: 583, column: 51, scope: !6409)
!6413 = !DILocation(line: 585, column: 4, scope: !6414)
!6414 = distinct !DILexicalBlock(scope: !6409, file: !2, line: 585, column: 4)
!6415 = !DILocation(line: 585, column: 4, scope: !6416)
!6416 = distinct !DILexicalBlock(scope: !6414, file: !2, line: 585, column: 4)
!6417 = !DILocation(line: 586, column: 4, scope: !6409)
!6418 = !DILocation(line: 588, column: 4, scope: !6409)
!6419 = !DILocation(line: 591, column: 30, scope: !6409)
!6420 = !DILocation(line: 593, column: 57, scope: !6409)
!6421 = !DILocation(line: 594, column: 51, scope: !6409)
!6422 = !DILocation(line: 596, column: 4, scope: !6423)
!6423 = distinct !DILexicalBlock(scope: !6409, file: !2, line: 596, column: 4)
!6424 = !DILocation(line: 596, column: 4, scope: !6425)
!6425 = distinct !DILexicalBlock(scope: !6423, file: !2, line: 596, column: 4)
!6426 = !DILocation(line: 597, column: 4, scope: !6409)
!6427 = !DILocation(line: 599, column: 4, scope: !6409)
!6428 = !DILocation(line: 601, column: 3, scope: !6373)
!6429 = !DILocation(line: 604, column: 3, scope: !6373)
!6430 = !DILocation(line: 607, column: 38, scope: !14)
!6431 = !DILocation(line: 607, column: 26, scope: !14)
!6432 = !DILocation(line: 607, column: 53, scope: !14)
!6433 = !DILocation(line: 607, column: 23, scope: !14)
!6434 = !DILocation(line: 607, column: 21, scope: !14)
!6435 = !DILocation(line: 608, column: 41, scope: !14)
!6436 = !DILocation(line: 608, column: 30, scope: !14)
!6437 = !DILocation(line: 608, column: 60, scope: !14)
!6438 = !DILocation(line: 608, column: 64, scope: !14)
!6439 = !DILocation(line: 608, column: 21, scope: !14)
!6440 = !DILocation(line: 610, column: 14, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !14, file: !2, line: 610, column: 6)
!6442 = !DILocation(line: 610, column: 6, scope: !6441)
!6443 = !DILocation(line: 610, column: 6, scope: !14)
!6444 = !DILocation(line: 611, column: 3, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6446, file: !2, line: 611, column: 3)
!6446 = distinct !DILexicalBlock(scope: !6441, file: !2, line: 610, column: 33)
!6447 = !DILocation(line: 611, column: 3, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6445, file: !2, line: 611, column: 3)
!6449 = !DILocation(line: 612, column: 36, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6448, file: !2, line: 611, column: 59)
!6451 = !DILocation(line: 612, column: 25, scope: !6450)
!6452 = !DILocation(line: 612, column: 50, scope: !6450)
!6453 = !DILocation(line: 612, column: 4, scope: !6450)
!6454 = !DILocation(line: 612, column: 7, scope: !6450)
!6455 = !DILocation(line: 612, column: 16, scope: !6450)
!6456 = !DILocation(line: 613, column: 25, scope: !6450)
!6457 = !DILocation(line: 613, column: 4, scope: !6450)
!6458 = !DILocation(line: 613, column: 7, scope: !6450)
!6459 = !DILocation(line: 613, column: 14, scope: !6450)
!6460 = !DILocation(line: 614, column: 3, scope: !6450)
!6461 = distinct !{!6461, !6444, !6462, !6463, !6464}
!6462 = !DILocation(line: 614, column: 3, scope: !6445)
!6463 = !{!"llvm.loop.mustprogress"}
!6464 = !{!"llvm.loop.unroll.disable"}
!6465 = !DILocation(line: 615, column: 2, scope: !6446)
!6466 = !DILocation(line: 617, column: 2, scope: !14)
!6467 = !DILocation(line: 618, column: 1, scope: !14)
!6468 = !DISubprogram(name: "_printk", scope: !6469, file: !6469, line: 153, type: !6470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6469 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6470 = !DISubroutineType(types: !6471)
!6471 = !{!17, !57, null}
!6472 = distinct !DISubprogram(name: "cpuid", scope: !6473, file: !6473, line: 72, type: !6474, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6476)
!6473 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!6474 = !DISubroutineType(types: !6475)
!6475 = !{null, !22, !3888, !3888, !3888, !3888}
!6476 = !{!6477, !6478, !6479, !6480, !6481}
!6477 = !DILocalVariable(name: "op", arg: 1, scope: !6472, file: !6473, line: 72, type: !22)
!6478 = !DILocalVariable(name: "eax", arg: 2, scope: !6472, file: !6473, line: 73, type: !3888)
!6479 = !DILocalVariable(name: "ebx", arg: 3, scope: !6472, file: !6473, line: 73, type: !3888)
!6480 = !DILocalVariable(name: "ecx", arg: 4, scope: !6472, file: !6473, line: 74, type: !3888)
!6481 = !DILocalVariable(name: "edx", arg: 5, scope: !6472, file: !6473, line: 74, type: !3888)
!6482 = !DILocation(line: 72, column: 39, scope: !6472)
!6483 = !DILocation(line: 73, column: 19, scope: !6472)
!6484 = !DILocation(line: 73, column: 38, scope: !6472)
!6485 = !DILocation(line: 74, column: 19, scope: !6472)
!6486 = !DILocation(line: 74, column: 38, scope: !6472)
!6487 = !DILocation(line: 76, column: 9, scope: !6472)
!6488 = !DILocation(line: 76, column: 3, scope: !6472)
!6489 = !DILocation(line: 76, column: 7, scope: !6472)
!6490 = !DILocation(line: 77, column: 3, scope: !6472)
!6491 = !DILocation(line: 77, column: 7, scope: !6472)
!6492 = !DILocation(line: 78, column: 10, scope: !6472)
!6493 = !DILocation(line: 78, column: 15, scope: !6472)
!6494 = !DILocation(line: 78, column: 20, scope: !6472)
!6495 = !DILocation(line: 78, column: 25, scope: !6472)
!6496 = !DILocation(line: 78, column: 2, scope: !6472)
!6497 = !DILocation(line: 79, column: 1, scope: !6472)
!6498 = distinct !DISubprogram(name: "zhaoxin_arch_events_quirk", scope: !2, file: !2, line: 493, type: !2456, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6499)
!6499 = !{!6500}
!6500 = !DILocalVariable(name: "bit", scope: !6498, file: !2, line: 495, type: !17)
!6501 = !DILocation(line: 495, column: 2, scope: !6498)
!6502 = !DILocation(line: 495, column: 6, scope: !6498)
!6503 = !DILocation(line: 498, column: 2, scope: !6504)
!6504 = distinct !DILexicalBlock(scope: !6498, file: !2, line: 498, column: 2)
!6505 = !DILocation(line: 498, column: 2, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6504, file: !2, line: 498, column: 2)
!6507 = !DILocation(line: 499, column: 40, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6506, file: !2, line: 498, column: 77)
!6509 = !DILocation(line: 499, column: 21, scope: !6508)
!6510 = !DILocation(line: 499, column: 45, scope: !6508)
!6511 = !DILocation(line: 499, column: 3, scope: !6508)
!6512 = !DILocation(line: 499, column: 49, scope: !6508)
!6513 = !DILocation(line: 500, column: 3, scope: !6514)
!6514 = distinct !DILexicalBlock(scope: !6508, file: !2, line: 500, column: 3)
!6515 = !DILocation(line: 500, column: 3, scope: !6516)
!6516 = distinct !DILexicalBlock(scope: !6514, file: !2, line: 500, column: 3)
!6517 = !DILocation(line: 502, column: 2, scope: !6508)
!6518 = distinct !{!6518, !6503, !6519, !6463, !6464}
!6519 = !DILocation(line: 502, column: 2, scope: !6504)
!6520 = !DILocation(line: 503, column: 1, scope: !6498)
!6521 = distinct !DISubprogram(name: "native_cpuid", scope: !6473, file: !6473, line: 30, type: !6522, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6524)
!6522 = !DISubroutineType(types: !6523)
!6523 = !{null, !3888, !3888, !3888, !3888}
!6524 = !{!6525, !6526, !6527, !6528}
!6525 = !DILocalVariable(name: "eax", arg: 1, scope: !6521, file: !6473, line: 30, type: !3888)
!6526 = !DILocalVariable(name: "ebx", arg: 2, scope: !6521, file: !6473, line: 30, type: !3888)
!6527 = !DILocalVariable(name: "ecx", arg: 3, scope: !6521, file: !6473, line: 31, type: !3888)
!6528 = !DILocalVariable(name: "edx", arg: 4, scope: !6521, file: !6473, line: 31, type: !3888)
!6529 = !DILocation(line: 30, column: 47, scope: !6521)
!6530 = !DILocation(line: 30, column: 66, scope: !6521)
!6531 = !DILocation(line: 31, column: 19, scope: !6521)
!6532 = !DILocation(line: 31, column: 38, scope: !6521)
!6533 = !DILocation(line: 35, column: 15, scope: !6521)
!6534 = !DILocation(line: 36, column: 15, scope: !6521)
!6535 = !DILocation(line: 37, column: 15, scope: !6521)
!6536 = !DILocation(line: 38, column: 15, scope: !6521)
!6537 = !DILocation(line: 39, column: 14, scope: !6521)
!6538 = !DILocation(line: 39, column: 13, scope: !6521)
!6539 = !DILocation(line: 39, column: 26, scope: !6521)
!6540 = !DILocation(line: 39, column: 25, scope: !6521)
!6541 = !DILocation(line: 34, column: 2, scope: !6521)
!6542 = !{i64 1256875}
!6543 = !DILocation(line: 41, column: 1, scope: !6521)
!6544 = distinct !DISubprogram(name: "zhaoxin_pmu_handle_irq", scope: !2, file: !2, line: 354, type: !5921, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6545)
!6545 = !{!6546, !6547, !6548, !6549, !6550, !6551, !6552, !6555, !6557, !6558, !6561, !6563, !6567}
!6546 = !DILocalVariable(name: "regs", arg: 1, scope: !6544, file: !2, line: 354, type: !3314)
!6547 = !DILocalVariable(name: "data", scope: !6544, file: !2, line: 356, type: !5621)
!6548 = !DILocalVariable(name: "cpuc", scope: !6544, file: !2, line: 357, type: !331)
!6549 = !DILocalVariable(name: "handled", scope: !6544, file: !2, line: 358, type: !17)
!6550 = !DILocalVariable(name: "status", scope: !6544, file: !2, line: 359, type: !351)
!6551 = !DILocalVariable(name: "bit", scope: !6544, file: !2, line: 360, type: !17)
!6552 = !DILocalVariable(name: "__vpp_verify", scope: !6553, file: !2, line: 362, type: !1340)
!6553 = distinct !DILexicalBlock(scope: !6554, file: !2, line: 362, column: 9)
!6554 = distinct !DILexicalBlock(scope: !6544, file: !2, line: 362, column: 9)
!6555 = !DILocalVariable(name: "tcp_ptr__", scope: !6556, file: !2, line: 362, type: !78)
!6556 = distinct !DILexicalBlock(scope: !6554, file: !2, line: 362, column: 9)
!6557 = !DILabel(scope: !6544, name: "again", file: !2, line: 369)
!6558 = !DILocalVariable(name: "__vpp_verify", scope: !6559, file: !2, line: 375, type: !1340)
!6559 = distinct !DILexicalBlock(scope: !6560, file: !2, line: 375, column: 2)
!6560 = distinct !DILexicalBlock(scope: !6544, file: !2, line: 375, column: 2)
!6561 = !DILocalVariable(name: "pao_ID__", scope: !6562, file: !2, line: 375, type: !4650)
!6562 = distinct !DILexicalBlock(scope: !6560, file: !2, line: 375, column: 2)
!6563 = !DILocalVariable(name: "event", scope: !6564, file: !2, line: 387, type: !336)
!6564 = distinct !DILexicalBlock(scope: !6565, file: !2, line: 386, column: 67)
!6565 = distinct !DILexicalBlock(scope: !6566, file: !2, line: 386, column: 2)
!6566 = distinct !DILexicalBlock(scope: !6544, file: !2, line: 386, column: 2)
!6567 = !DILabel(scope: !6544, name: "done", file: !2, line: 411)
!6568 = !DILocation(line: 354, column: 51, scope: !6544)
!6569 = !DILocation(line: 356, column: 2, scope: !6544)
!6570 = !DILocation(line: 356, column: 26, scope: !6544)
!6571 = !DILocation(line: 357, column: 2, scope: !6544)
!6572 = !DILocation(line: 357, column: 24, scope: !6544)
!6573 = !DILocation(line: 358, column: 2, scope: !6544)
!6574 = !DILocation(line: 358, column: 6, scope: !6544)
!6575 = !DILocation(line: 359, column: 2, scope: !6544)
!6576 = !DILocation(line: 359, column: 6, scope: !6544)
!6577 = !DILocation(line: 360, column: 2, scope: !6544)
!6578 = !DILocation(line: 360, column: 6, scope: !6544)
!6579 = !DILocation(line: 362, column: 9, scope: !6554)
!6580 = !DILocation(line: 362, column: 9, scope: !6553)
!6581 = !DILocation(line: 362, column: 9, scope: !6556)
!6582 = !{i64 2155622168}
!6583 = !DILocation(line: 362, column: 7, scope: !6544)
!6584 = !DILocation(line: 363, column: 2, scope: !6544)
!6585 = !DILocation(line: 364, column: 2, scope: !6544)
!6586 = !DILocation(line: 365, column: 11, scope: !6544)
!6587 = !DILocation(line: 365, column: 9, scope: !6544)
!6588 = !DILocation(line: 366, column: 7, scope: !6589)
!6589 = distinct !DILexicalBlock(scope: !6544, file: !2, line: 366, column: 6)
!6590 = !DILocation(line: 366, column: 6, scope: !6544)
!6591 = !DILocation(line: 367, column: 3, scope: !6589)
!6592 = !DILocation(line: 369, column: 1, scope: !6544)
!6593 = !DILocation(line: 370, column: 14, scope: !6594)
!6594 = distinct !DILexicalBlock(scope: !6544, file: !2, line: 370, column: 6)
!6595 = !DILocation(line: 370, column: 6, scope: !6594)
!6596 = !DILocation(line: 370, column: 6, scope: !6544)
!6597 = !DILocation(line: 371, column: 22, scope: !6594)
!6598 = !DILocation(line: 371, column: 3, scope: !6594)
!6599 = !DILocation(line: 373, column: 26, scope: !6594)
!6600 = !DILocation(line: 373, column: 3, scope: !6594)
!6601 = !DILocation(line: 375, column: 2, scope: !6544)
!6602 = !DILocation(line: 375, column: 2, scope: !6560)
!6603 = !DILocation(line: 375, column: 2, scope: !6559)
!6604 = !DILocation(line: 375, column: 2, scope: !6562)
!6605 = !DILocation(line: 375, column: 2, scope: !6606)
!6606 = distinct !DILexicalBlock(scope: !6607, file: !2, line: 375, column: 2)
!6607 = distinct !DILexicalBlock(scope: !6562, file: !2, line: 375, column: 2)
!6608 = !{i64 2155632526}
!6609 = !DILocation(line: 381, column: 6, scope: !6610)
!6610 = distinct !DILexicalBlock(scope: !6544, file: !2, line: 381, column: 6)
!6611 = !DILocation(line: 381, column: 6, scope: !6544)
!6612 = !DILocation(line: 382, column: 8, scope: !6613)
!6613 = distinct !DILexicalBlock(scope: !6614, file: !2, line: 382, column: 7)
!6614 = distinct !DILexicalBlock(scope: !6610, file: !2, line: 381, column: 58)
!6615 = !DILocation(line: 382, column: 7, scope: !6614)
!6616 = !DILocation(line: 383, column: 4, scope: !6613)
!6617 = !DILocation(line: 384, column: 2, scope: !6614)
!6618 = !DILocation(line: 386, column: 2, scope: !6566)
!6619 = !DILocation(line: 386, column: 2, scope: !6565)
!6620 = !DILocation(line: 387, column: 3, scope: !6564)
!6621 = !DILocation(line: 387, column: 22, scope: !6564)
!6622 = !DILocation(line: 387, column: 30, scope: !6564)
!6623 = !DILocation(line: 387, column: 36, scope: !6564)
!6624 = !DILocation(line: 387, column: 43, scope: !6564)
!6625 = !DILocation(line: 389, column: 10, scope: !6564)
!6626 = !DILocation(line: 391, column: 8, scope: !6627)
!6627 = distinct !DILexicalBlock(scope: !6564, file: !2, line: 391, column: 7)
!6628 = !DILocation(line: 391, column: 7, scope: !6564)
!6629 = !DILocation(line: 392, column: 4, scope: !6627)
!6630 = !DILocation(line: 394, column: 25, scope: !6564)
!6631 = !DILocation(line: 394, column: 3, scope: !6564)
!6632 = !DILocation(line: 395, column: 35, scope: !6564)
!6633 = !DILocation(line: 395, column: 42, scope: !6564)
!6634 = !DILocation(line: 395, column: 45, scope: !6564)
!6635 = !DILocation(line: 395, column: 3, scope: !6564)
!6636 = !DILocation(line: 397, column: 34, scope: !6637)
!6637 = distinct !DILexicalBlock(scope: !6564, file: !2, line: 397, column: 7)
!6638 = !DILocation(line: 397, column: 8, scope: !6637)
!6639 = !DILocation(line: 397, column: 7, scope: !6564)
!6640 = !DILocation(line: 398, column: 4, scope: !6637)
!6641 = !DILocation(line: 400, column: 27, scope: !6642)
!6642 = distinct !DILexicalBlock(scope: !6564, file: !2, line: 400, column: 7)
!6643 = !DILocation(line: 400, column: 41, scope: !6642)
!6644 = !DILocation(line: 400, column: 7, scope: !6642)
!6645 = !DILocation(line: 400, column: 7, scope: !6564)
!6646 = !DILocation(line: 401, column: 17, scope: !6642)
!6647 = !DILocation(line: 401, column: 4, scope: !6642)
!6648 = !DILocation(line: 402, column: 2, scope: !6565)
!6649 = !DILocation(line: 402, column: 2, scope: !6564)
!6650 = distinct !{!6650, !6618, !6651, !6463, !6464}
!6651 = !DILocation(line: 402, column: 2, scope: !6566)
!6652 = !DILocation(line: 407, column: 11, scope: !6544)
!6653 = !DILocation(line: 407, column: 9, scope: !6544)
!6654 = !DILocation(line: 408, column: 6, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6544, file: !2, line: 408, column: 6)
!6656 = !DILocation(line: 408, column: 6, scope: !6544)
!6657 = !DILocation(line: 409, column: 3, scope: !6655)
!6658 = !DILocation(line: 411, column: 1, scope: !6544)
!6659 = !DILocation(line: 412, column: 2, scope: !6544)
!6660 = !DILocation(line: 413, column: 9, scope: !6544)
!6661 = !DILocation(line: 414, column: 1, scope: !6544)
!6662 = !DILocation(line: 413, column: 2, scope: !6544)
!6663 = distinct !DISubprogram(name: "zhaoxin_pmu_disable_all", scope: !2, file: !2, line: 255, type: !2456, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18)
!6664 = !DILocation(line: 257, column: 2, scope: !6663)
!6665 = !DILocation(line: 258, column: 1, scope: !6663)
!6666 = distinct !DISubprogram(name: "zhaoxin_pmu_enable_all", scope: !2, file: !2, line: 260, type: !2780, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6667)
!6667 = !{!6668}
!6668 = !DILocalVariable(name: "added", arg: 1, scope: !6666, file: !2, line: 260, type: !17)
!6669 = !DILocation(line: 260, column: 40, scope: !6666)
!6670 = !DILocation(line: 262, column: 44, scope: !6666)
!6671 = !DILocation(line: 262, column: 2, scope: !6666)
!6672 = !DILocation(line: 263, column: 1, scope: !6666)
!6673 = distinct !DISubprogram(name: "zhaoxin_pmu_enable_event", scope: !2, file: !2, line: 338, type: !5293, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6674)
!6674 = !{!6675, !6676}
!6675 = !DILocalVariable(name: "event", arg: 1, scope: !6673, file: !2, line: 338, type: !336)
!6676 = !DILocalVariable(name: "hwc", scope: !6673, file: !2, line: 340, type: !6677)
!6677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5453, size: 64)
!6678 = !DILocation(line: 338, column: 57, scope: !6673)
!6679 = !DILocation(line: 340, column: 2, scope: !6673)
!6680 = !DILocation(line: 340, column: 24, scope: !6673)
!6681 = !DILocation(line: 340, column: 31, scope: !6673)
!6682 = !DILocation(line: 340, column: 38, scope: !6673)
!6683 = !DILocation(line: 342, column: 6, scope: !6684)
!6684 = distinct !DILexicalBlock(scope: !6673, file: !2, line: 342, column: 6)
!6685 = !DILocation(line: 342, column: 6, scope: !6673)
!6686 = !DILocation(line: 343, column: 28, scope: !6687)
!6687 = distinct !DILexicalBlock(scope: !6684, file: !2, line: 342, column: 69)
!6688 = !DILocation(line: 343, column: 3, scope: !6687)
!6689 = !DILocation(line: 344, column: 3, scope: !6687)
!6690 = !DILocation(line: 347, column: 25, scope: !6673)
!6691 = !DILocation(line: 347, column: 2, scope: !6673)
!6692 = !DILocation(line: 348, column: 1, scope: !6673)
!6693 = distinct !DISubprogram(name: "zhaoxin_pmu_disable_event", scope: !2, file: !2, line: 301, type: !5293, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6694)
!6694 = !{!6695, !6696}
!6695 = !DILocalVariable(name: "event", arg: 1, scope: !6693, file: !2, line: 301, type: !336)
!6696 = !DILocalVariable(name: "hwc", scope: !6693, file: !2, line: 303, type: !6677)
!6697 = !DILocation(line: 301, column: 58, scope: !6693)
!6698 = !DILocation(line: 303, column: 2, scope: !6693)
!6699 = !DILocation(line: 303, column: 24, scope: !6693)
!6700 = !DILocation(line: 303, column: 31, scope: !6693)
!6701 = !DILocation(line: 303, column: 38, scope: !6693)
!6702 = !DILocation(line: 305, column: 6, scope: !6703)
!6703 = distinct !DILexicalBlock(scope: !6693, file: !2, line: 305, column: 6)
!6704 = !DILocation(line: 305, column: 6, scope: !6693)
!6705 = !DILocation(line: 306, column: 29, scope: !6706)
!6706 = distinct !DILexicalBlock(scope: !6703, file: !2, line: 305, column: 69)
!6707 = !DILocation(line: 306, column: 3, scope: !6706)
!6708 = !DILocation(line: 307, column: 3, scope: !6706)
!6709 = !DILocation(line: 310, column: 24, scope: !6693)
!6710 = !DILocation(line: 310, column: 2, scope: !6693)
!6711 = !DILocation(line: 311, column: 1, scope: !6693)
!6712 = distinct !DISubprogram(name: "zhaoxin_pmu_event_map", scope: !2, file: !2, line: 416, type: !5951, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6713)
!6713 = !{!6714}
!6714 = !DILocalVariable(name: "hw_event", arg: 1, scope: !6712, file: !2, line: 416, type: !17)
!6715 = !DILocation(line: 416, column: 38, scope: !6712)
!6716 = !DILocation(line: 418, column: 27, scope: !6712)
!6717 = !DILocation(line: 418, column: 9, scope: !6712)
!6718 = !DILocation(line: 418, column: 2, scope: !6712)
!6719 = distinct !DISubprogram(name: "zhaoxin_get_event_constraints", scope: !2, file: !2, line: 422, type: !5968, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6720)
!6720 = !{!6721, !6722, !6723, !6724}
!6721 = !DILocalVariable(name: "cpuc", arg: 1, scope: !6719, file: !2, line: 422, type: !331)
!6722 = !DILocalVariable(name: "idx", arg: 2, scope: !6719, file: !2, line: 422, type: !17)
!6723 = !DILocalVariable(name: "event", arg: 3, scope: !6719, file: !2, line: 423, type: !336)
!6724 = !DILocalVariable(name: "c", scope: !6719, file: !2, line: 425, type: !5770)
!6725 = !DILocation(line: 422, column: 53, scope: !6719)
!6726 = !DILocation(line: 422, column: 63, scope: !6719)
!6727 = !DILocation(line: 423, column: 23, scope: !6719)
!6728 = !DILocation(line: 425, column: 2, scope: !6719)
!6729 = !DILocation(line: 425, column: 27, scope: !6719)
!6730 = !DILocation(line: 427, column: 14, scope: !6731)
!6731 = distinct !DILexicalBlock(scope: !6719, file: !2, line: 427, column: 6)
!6732 = !DILocation(line: 427, column: 6, scope: !6731)
!6733 = !DILocation(line: 427, column: 6, scope: !6719)
!6734 = !DILocation(line: 428, column: 3, scope: !6735)
!6735 = distinct !DILexicalBlock(scope: !6736, file: !2, line: 428, column: 3)
!6736 = distinct !DILexicalBlock(scope: !6731, file: !2, line: 427, column: 33)
!6737 = !DILocation(line: 428, column: 3, scope: !6738)
!6738 = distinct !DILexicalBlock(scope: !6735, file: !2, line: 428, column: 3)
!6739 = !DILocation(line: 429, column: 9, scope: !6740)
!6740 = distinct !DILexicalBlock(scope: !6741, file: !2, line: 429, column: 8)
!6741 = distinct !DILexicalBlock(scope: !6738, file: !2, line: 428, column: 59)
!6742 = !DILocation(line: 429, column: 16, scope: !6740)
!6743 = !DILocation(line: 429, column: 19, scope: !6740)
!6744 = !DILocation(line: 429, column: 28, scope: !6740)
!6745 = !DILocation(line: 429, column: 31, scope: !6740)
!6746 = !DILocation(line: 429, column: 26, scope: !6740)
!6747 = !DILocation(line: 429, column: 41, scope: !6740)
!6748 = !DILocation(line: 429, column: 44, scope: !6740)
!6749 = !DILocation(line: 429, column: 38, scope: !6740)
!6750 = !DILocation(line: 429, column: 8, scope: !6741)
!6751 = !DILocation(line: 430, column: 12, scope: !6740)
!6752 = !DILocation(line: 430, column: 5, scope: !6740)
!6753 = !DILocation(line: 431, column: 3, scope: !6741)
!6754 = distinct !{!6754, !6734, !6755, !6463, !6464}
!6755 = !DILocation(line: 431, column: 3, scope: !6735)
!6756 = !DILocation(line: 432, column: 2, scope: !6736)
!6757 = !DILocation(line: 434, column: 2, scope: !6719)
!6758 = !DILocation(line: 435, column: 1, scope: !6719)
!6759 = distinct !DISubprogram(name: "zhaoxin_event_sysfs_show", scope: !2, file: !2, line: 452, type: !6003, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6760)
!6760 = !{!6761, !6762, !6763}
!6761 = !DILocalVariable(name: "page", arg: 1, scope: !6759, file: !2, line: 452, type: !428)
!6762 = !DILocalVariable(name: "config", arg: 2, scope: !6759, file: !2, line: 452, type: !351)
!6763 = !DILocalVariable(name: "event", scope: !6759, file: !2, line: 454, type: !351)
!6764 = !DILocation(line: 452, column: 47, scope: !6759)
!6765 = !DILocation(line: 452, column: 57, scope: !6759)
!6766 = !DILocation(line: 454, column: 2, scope: !6759)
!6767 = !DILocation(line: 454, column: 6, scope: !6759)
!6768 = !DILocation(line: 454, column: 15, scope: !6759)
!6769 = !DILocation(line: 454, column: 22, scope: !6759)
!6770 = !DILocation(line: 456, column: 30, scope: !6759)
!6771 = !DILocation(line: 456, column: 36, scope: !6759)
!6772 = !DILocation(line: 456, column: 44, scope: !6759)
!6773 = !DILocation(line: 456, column: 9, scope: !6759)
!6774 = !DILocation(line: 457, column: 1, scope: !6759)
!6775 = !DILocation(line: 456, column: 2, scope: !6759)
!6776 = !DILocation(line: 402, column: 44, scope: !6154)
!6777 = !DILocation(line: 402, column: 53, scope: !6154)
!6778 = !DILocation(line: 404, column: 2, scope: !6779)
!6779 = distinct !DILexicalBlock(scope: !6154, file: !6155, line: 404, column: 2)
!6780 = !DILocation(line: 404, column: 31, scope: !6154)
!6781 = !DILocation(line: 404, column: 36, scope: !6154)
!6782 = !DILocation(line: 404, column: 2, scope: !6154)
!6783 = !DILocation(line: 405, column: 1, scope: !6154)
!6784 = distinct !DISubprogram(name: "zhaoxin_pmu_get_status", scope: !2, file: !2, line: 265, type: !5613, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6785)
!6785 = !{!6786}
!6786 = !DILocalVariable(name: "status", scope: !6784, file: !2, line: 267, type: !351)
!6787 = !DILocation(line: 267, column: 2, scope: !6784)
!6788 = !DILocation(line: 267, column: 6, scope: !6784)
!6789 = !DILocation(line: 269, column: 2, scope: !6784)
!6790 = !DILocation(line: 271, column: 9, scope: !6784)
!6791 = !DILocation(line: 272, column: 1, scope: !6784)
!6792 = !DILocation(line: 271, column: 2, scope: !6784)
!6793 = distinct !DISubprogram(name: "zxc_pmu_ack_status", scope: !2, file: !2, line: 279, type: !6794, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6796)
!6794 = !DISubroutineType(types: !6795)
!6795 = !{null, !351}
!6796 = !{!6797}
!6797 = !DILocalVariable(name: "ack", arg: 1, scope: !6793, file: !2, line: 279, type: !351)
!6798 = !DILocation(line: 279, column: 43, scope: !6793)
!6799 = !DILocation(line: 284, column: 2, scope: !6793)
!6800 = !DILocation(line: 285, column: 25, scope: !6793)
!6801 = !DILocation(line: 285, column: 2, scope: !6793)
!6802 = !DILocation(line: 286, column: 2, scope: !6793)
!6803 = !DILocation(line: 287, column: 1, scope: !6793)
!6804 = distinct !DISubprogram(name: "zhaoxin_pmu_ack_status", scope: !2, file: !2, line: 274, type: !6794, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6805)
!6805 = !{!6806}
!6806 = !DILocalVariable(name: "ack", arg: 1, scope: !6804, file: !2, line: 274, type: !351)
!6807 = !DILocation(line: 274, column: 47, scope: !6804)
!6808 = !DILocation(line: 276, column: 40, scope: !6804)
!6809 = !DILocation(line: 276, column: 2, scope: !6804)
!6810 = !DILocation(line: 277, column: 1, scope: !6804)
!6811 = distinct !DISubprogram(name: "generic___test_and_clear_bit", scope: !6812, file: !6812, line: 93, type: !6813, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6817)
!6812 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6813 = !DISubroutineType(types: !6814)
!6814 = !{!1411, !78, !6815}
!6815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6816, size: 64)
!6816 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!6817 = !{!6818, !6819, !6820, !6821, !6822}
!6818 = !DILocalVariable(name: "nr", arg: 1, scope: !6811, file: !6812, line: 93, type: !78)
!6819 = !DILocalVariable(name: "addr", arg: 2, scope: !6811, file: !6812, line: 93, type: !6815)
!6820 = !DILocalVariable(name: "mask", scope: !6811, file: !6812, line: 95, type: !78)
!6821 = !DILocalVariable(name: "p", scope: !6811, file: !6812, line: 96, type: !4762)
!6822 = !DILocalVariable(name: "old", scope: !6811, file: !6812, line: 97, type: !78)
!6823 = !DILocation(line: 93, column: 44, scope: !6811)
!6824 = !DILocation(line: 93, column: 72, scope: !6811)
!6825 = !DILocation(line: 95, column: 2, scope: !6811)
!6826 = !DILocation(line: 95, column: 16, scope: !6811)
!6827 = !DILocation(line: 95, column: 23, scope: !6811)
!6828 = !DILocation(line: 96, column: 2, scope: !6811)
!6829 = !DILocation(line: 96, column: 17, scope: !6811)
!6830 = !DILocation(line: 96, column: 39, scope: !6811)
!6831 = !DILocation(line: 96, column: 47, scope: !6811)
!6832 = !DILocation(line: 96, column: 45, scope: !6811)
!6833 = !DILocation(line: 97, column: 2, scope: !6811)
!6834 = !DILocation(line: 97, column: 16, scope: !6811)
!6835 = !DILocation(line: 97, column: 23, scope: !6811)
!6836 = !DILocation(line: 97, column: 22, scope: !6811)
!6837 = !DILocation(line: 99, column: 7, scope: !6811)
!6838 = !DILocation(line: 99, column: 14, scope: !6811)
!6839 = !DILocation(line: 99, column: 13, scope: !6811)
!6840 = !DILocation(line: 99, column: 11, scope: !6811)
!6841 = !DILocation(line: 99, column: 3, scope: !6811)
!6842 = !DILocation(line: 99, column: 5, scope: !6811)
!6843 = !DILocation(line: 100, column: 10, scope: !6811)
!6844 = !DILocation(line: 100, column: 16, scope: !6811)
!6845 = !DILocation(line: 100, column: 14, scope: !6811)
!6846 = !DILocation(line: 100, column: 22, scope: !6811)
!6847 = !DILocation(line: 101, column: 1, scope: !6811)
!6848 = !DILocation(line: 100, column: 2, scope: !6811)
!6849 = distinct !DISubprogram(name: "___test_and_clear_bit", scope: !6850, file: !6850, line: 112, type: !6813, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6851)
!6850 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6851 = !{!6852, !6853}
!6852 = !DILocalVariable(name: "nr", arg: 1, scope: !6849, file: !6850, line: 112, type: !78)
!6853 = !DILocalVariable(name: "addr", arg: 2, scope: !6849, file: !6850, line: 112, type: !6815)
!6854 = !DILocation(line: 112, column: 37, scope: !6849)
!6855 = !DILocation(line: 112, column: 65, scope: !6849)
!6856 = !DILocation(line: 114, column: 32, scope: !6849)
!6857 = !DILocation(line: 114, column: 36, scope: !6849)
!6858 = !DILocation(line: 114, column: 2, scope: !6849)
!6859 = !DILocation(line: 115, column: 35, scope: !6849)
!6860 = !DILocation(line: 115, column: 39, scope: !6849)
!6861 = !DILocation(line: 115, column: 9, scope: !6849)
!6862 = !DILocation(line: 115, column: 2, scope: !6849)
!6863 = distinct !DISubprogram(name: "find_next_bit", scope: !6864, file: !6864, line: 54, type: !6865, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6867)
!6864 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!6865 = !DISubroutineType(types: !6866)
!6866 = !{!78, !5897, !78, !78}
!6867 = !{!6868, !6869, !6870, !6871}
!6868 = !DILocalVariable(name: "addr", arg: 1, scope: !6863, file: !6864, line: 54, type: !5897)
!6869 = !DILocalVariable(name: "size", arg: 2, scope: !6863, file: !6864, line: 54, type: !78)
!6870 = !DILocalVariable(name: "offset", arg: 3, scope: !6863, file: !6864, line: 55, type: !78)
!6871 = !DILocalVariable(name: "val", scope: !6872, file: !6864, line: 58, type: !78)
!6872 = distinct !DILexicalBlock(scope: !6873, file: !6864, line: 57, column: 31)
!6873 = distinct !DILexicalBlock(scope: !6863, file: !6864, line: 57, column: 6)
!6874 = !DILocation(line: 54, column: 50, scope: !6863)
!6875 = !DILocation(line: 54, column: 70, scope: !6863)
!6876 = !DILocation(line: 55, column: 22, scope: !6863)
!6877 = !DILocation(line: 57, column: 6, scope: !6873)
!6878 = !DILocation(line: 57, column: 6, scope: !6863)
!6879 = !DILocation(line: 58, column: 3, scope: !6872)
!6880 = !DILocation(line: 58, column: 17, scope: !6872)
!6881 = !DILocation(line: 60, column: 7, scope: !6882)
!6882 = distinct !DILexicalBlock(scope: !6872, file: !6864, line: 60, column: 7)
!6883 = !DILocation(line: 60, column: 7, scope: !6872)
!6884 = !DILocation(line: 61, column: 11, scope: !6882)
!6885 = !DILocation(line: 61, column: 4, scope: !6882)
!6886 = !DILocation(line: 63, column: 10, scope: !6872)
!6887 = !DILocation(line: 63, column: 9, scope: !6872)
!6888 = !DILocation(line: 63, column: 17, scope: !6872)
!6889 = !DILocation(line: 63, column: 15, scope: !6872)
!6890 = !DILocation(line: 63, column: 7, scope: !6872)
!6891 = !DILocation(line: 64, column: 10, scope: !6872)
!6892 = !DILocation(line: 64, column: 16, scope: !6872)
!6893 = !DILocation(line: 64, column: 29, scope: !6872)
!6894 = !DILocation(line: 64, column: 3, scope: !6872)
!6895 = !DILocation(line: 65, column: 2, scope: !6873)
!6896 = !DILocation(line: 67, column: 24, scope: !6863)
!6897 = !DILocation(line: 67, column: 30, scope: !6863)
!6898 = !DILocation(line: 67, column: 36, scope: !6863)
!6899 = !DILocation(line: 67, column: 9, scope: !6863)
!6900 = !DILocation(line: 67, column: 2, scope: !6863)
!6901 = !DILocation(line: 68, column: 1, scope: !6863)
!6902 = distinct !DISubprogram(name: "const_test_bit", scope: !6812, file: !6812, line: 166, type: !6903, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6907)
!6903 = !DISubroutineType(types: !6904)
!6904 = !{!1411, !78, !6905}
!6905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6906, size: 64)
!6906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6816)
!6907 = !{!6908, !6909, !6910, !6911, !6912}
!6908 = !DILocalVariable(name: "nr", arg: 1, scope: !6902, file: !6812, line: 166, type: !78)
!6909 = !DILocalVariable(name: "addr", arg: 2, scope: !6902, file: !6812, line: 166, type: !6905)
!6910 = !DILocalVariable(name: "p", scope: !6902, file: !6812, line: 168, type: !5897)
!6911 = !DILocalVariable(name: "mask", scope: !6902, file: !6812, line: 169, type: !78)
!6912 = !DILocalVariable(name: "val", scope: !6902, file: !6812, line: 170, type: !78)
!6913 = !DILocation(line: 166, column: 30, scope: !6902)
!6914 = !DILocation(line: 166, column: 64, scope: !6902)
!6915 = !DILocation(line: 168, column: 2, scope: !6902)
!6916 = !DILocation(line: 168, column: 23, scope: !6902)
!6917 = !DILocation(line: 168, column: 50, scope: !6902)
!6918 = !DILocation(line: 168, column: 57, scope: !6902)
!6919 = !DILocation(line: 168, column: 55, scope: !6902)
!6920 = !DILocation(line: 169, column: 2, scope: !6902)
!6921 = !DILocation(line: 169, column: 16, scope: !6902)
!6922 = !DILocation(line: 169, column: 23, scope: !6902)
!6923 = !DILocation(line: 170, column: 2, scope: !6902)
!6924 = !DILocation(line: 170, column: 16, scope: !6902)
!6925 = !DILocation(line: 170, column: 23, scope: !6902)
!6926 = !DILocation(line: 170, column: 22, scope: !6902)
!6927 = !DILocation(line: 172, column: 12, scope: !6902)
!6928 = !DILocation(line: 172, column: 18, scope: !6902)
!6929 = !DILocation(line: 172, column: 16, scope: !6902)
!6930 = !DILocation(line: 172, column: 10, scope: !6902)
!6931 = !DILocation(line: 172, column: 9, scope: !6902)
!6932 = !DILocation(line: 173, column: 1, scope: !6902)
!6933 = !DILocation(line: 172, column: 2, scope: !6902)
!6934 = distinct !DISubprogram(name: "_test_bit", scope: !6850, file: !6850, line: 139, type: !6903, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6935)
!6935 = !{!6936, !6937}
!6936 = !DILocalVariable(name: "nr", arg: 1, scope: !6934, file: !6850, line: 139, type: !78)
!6937 = !DILocalVariable(name: "addr", arg: 2, scope: !6934, file: !6850, line: 139, type: !6905)
!6938 = !DILocation(line: 139, column: 25, scope: !6934)
!6939 = !DILocation(line: 139, column: 59, scope: !6934)
!6940 = !DILocation(line: 141, column: 25, scope: !6934)
!6941 = !DILocation(line: 141, column: 32, scope: !6934)
!6942 = !DILocation(line: 141, column: 30, scope: !6934)
!6943 = !DILocation(line: 141, column: 2, scope: !6934)
!6944 = !DILocation(line: 142, column: 23, scope: !6934)
!6945 = !DILocation(line: 142, column: 27, scope: !6934)
!6946 = !DILocation(line: 142, column: 9, scope: !6934)
!6947 = !DILocation(line: 142, column: 2, scope: !6934)
!6948 = !DISubprogram(name: "x86_perf_event_update", scope: !273, file: !273, line: 1094, type: !5935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6949 = distinct !DISubprogram(name: "perf_sample_data_init", scope: !264, file: !264, line: 1206, type: !6950, scopeLine: 1208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6952)
!6950 = !DISubroutineType(types: !6951)
!6951 = !{null, !5620, !351, !351}
!6952 = !{!6953, !6954, !6955}
!6953 = !DILocalVariable(name: "data", arg: 1, scope: !6949, file: !264, line: 1206, type: !5620)
!6954 = !DILocalVariable(name: "addr", arg: 2, scope: !6949, file: !264, line: 1207, type: !351)
!6955 = !DILocalVariable(name: "period", arg: 3, scope: !6949, file: !264, line: 1207, type: !351)
!6956 = !DILocation(line: 1206, column: 67, scope: !6949)
!6957 = !DILocation(line: 1207, column: 11, scope: !6949)
!6958 = !DILocation(line: 1207, column: 21, scope: !6949)
!6959 = !DILocation(line: 1210, column: 2, scope: !6949)
!6960 = !DILocation(line: 1210, column: 8, scope: !6949)
!6961 = !DILocation(line: 1210, column: 21, scope: !6949)
!6962 = !DILocation(line: 1211, column: 17, scope: !6949)
!6963 = !DILocation(line: 1211, column: 2, scope: !6949)
!6964 = !DILocation(line: 1211, column: 8, scope: !6949)
!6965 = !DILocation(line: 1211, column: 15, scope: !6949)
!6966 = !DILocation(line: 1212, column: 2, scope: !6949)
!6967 = !DILocation(line: 1212, column: 8, scope: !6949)
!6968 = !DILocation(line: 1212, column: 17, scope: !6949)
!6969 = !DILocation(line: 1214, column: 6, scope: !6970)
!6970 = distinct !DILexicalBlock(scope: !6949, file: !264, line: 1214, column: 6)
!6971 = !DILocation(line: 1214, column: 6, scope: !6949)
!6972 = !DILocation(line: 1215, column: 16, scope: !6973)
!6973 = distinct !DILexicalBlock(scope: !6970, file: !264, line: 1214, column: 12)
!6974 = !DILocation(line: 1215, column: 3, scope: !6973)
!6975 = !DILocation(line: 1215, column: 9, scope: !6973)
!6976 = !DILocation(line: 1215, column: 14, scope: !6973)
!6977 = !DILocation(line: 1216, column: 3, scope: !6973)
!6978 = !DILocation(line: 1216, column: 9, scope: !6973)
!6979 = !DILocation(line: 1216, column: 22, scope: !6973)
!6980 = !DILocation(line: 1217, column: 2, scope: !6973)
!6981 = !DILocation(line: 1218, column: 1, scope: !6949)
!6982 = !DISubprogram(name: "x86_perf_event_set_period", scope: !273, file: !273, line: 1073, type: !5274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6983 = !DISubprogram(name: "perf_event_overflow", scope: !264, file: !264, line: 1317, type: !6984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6984 = !DISubroutineType(types: !6985)
!6985 = !{!17, !336, !5620, !3314}
!6986 = !DISubprogram(name: "x86_pmu_stop", scope: !273, file: !273, line: 1168, type: !5287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6987 = distinct !DISubprogram(name: "native_read_msr", scope: !6988, file: !6988, line: 114, type: !6989, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !6991)
!6988 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!6989 = !DISubroutineType(types: !6990)
!6990 = !{!353, !22}
!6991 = !{!6992, !6993}
!6992 = !DILocalVariable(name: "msr", arg: 1, scope: !6987, file: !6988, line: 114, type: !22)
!6993 = !DILocalVariable(name: "val", scope: !6987, file: !6988, line: 116, type: !353)
!6994 = !DILocation(line: 114, column: 63, scope: !6987)
!6995 = !DILocation(line: 116, column: 2, scope: !6987)
!6996 = !DILocation(line: 116, column: 21, scope: !6987)
!6997 = !DILocation(line: 118, column: 16, scope: !6987)
!6998 = !DILocation(line: 118, column: 8, scope: !6987)
!6999 = !DILocation(line: 118, column: 6, scope: !6987)
!7000 = !DILocation(line: 120, column: 6, scope: !7001)
!7001 = distinct !DILexicalBlock(scope: !6987, file: !6988, line: 120, column: 6)
!7002 = !DILocation(line: 120, column: 6, scope: !6987)
!7003 = !DILocation(line: 121, column: 21, scope: !7001)
!7004 = !DILocation(line: 121, column: 26, scope: !7001)
!7005 = !DILocation(line: 121, column: 3, scope: !7001)
!7006 = !DILocation(line: 123, column: 9, scope: !6987)
!7007 = !DILocation(line: 124, column: 1, scope: !6987)
!7008 = !DILocation(line: 123, column: 2, scope: !6987)
!7009 = distinct !DISubprogram(name: "__rdmsr", scope: !6988, file: !6988, line: 80, type: !6989, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7010)
!7010 = !{!7011, !7012, !7013}
!7011 = !DILocalVariable(name: "msr", arg: 1, scope: !7009, file: !6988, line: 80, type: !22)
!7012 = !DILocalVariable(name: "low", scope: !7009, file: !6988, line: 82, type: !78)
!7013 = !DILocalVariable(name: "high", scope: !7009, file: !6988, line: 82, type: !78)
!7014 = !DILocation(line: 80, column: 64, scope: !7009)
!7015 = !DILocation(line: 82, column: 2, scope: !7009)
!7016 = !DILocation(line: 87, column: 45, scope: !7009)
!7017 = !DILocation(line: 84, column: 2, scope: !7009)
!7018 = !{i64 1268862, i64 1268883, i64 2149451394, i64 2149451438, i64 2149451461, i64 2149451494, i64 2149451525, i64 2149451564}
!7019 = !DILocation(line: 89, column: 9, scope: !7009)
!7020 = !DILocation(line: 90, column: 1, scope: !7009)
!7021 = !DILocation(line: 89, column: 2, scope: !7009)
!7022 = distinct !DISubprogram(name: "static_key_false", scope: !4740, file: !4740, line: 205, type: !7023, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7037)
!7023 = !DISubroutineType(types: !7024)
!7024 = !{!1411, !7025}
!7025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7026, size: 64)
!7026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !4740, line: 85, size: 128, elements: !7027)
!7027 = !{!7028, !7029}
!7028 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !7026, file: !4740, line: 86, baseType: !88, size: 32)
!7029 = !DIDerivedType(tag: DW_TAG_member, scope: !7026, file: !4740, line: 101, baseType: !7030, size: 64, offset: 64)
!7030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !7026, file: !4740, line: 101, size: 64, elements: !7031)
!7031 = !{!7032, !7033, !7034}
!7032 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7030, file: !4740, line: 102, baseType: !78, size: 64)
!7033 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !7030, file: !4740, line: 103, baseType: !4738, size: 64)
!7034 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7030, file: !4740, line: 104, baseType: !7035, size: 64)
!7035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7036, size: 64)
!7036 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !4740, line: 104, flags: DIFlagFwdDecl)
!7037 = !{!7038}
!7038 = !DILocalVariable(name: "key", arg: 1, scope: !7022, file: !4740, line: 205, type: !7025)
!7039 = !DILocation(line: 205, column: 65, scope: !7022)
!7040 = !DILocation(line: 207, column: 28, scope: !7022)
!7041 = !DILocation(line: 207, column: 9, scope: !7022)
!7042 = !DILocation(line: 207, column: 2, scope: !7022)
!7043 = !DISubprogram(name: "do_trace_read_msr", scope: !6988, file: !6988, line: 65, type: !7044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7044 = !DISubroutineType(types: !7045)
!7045 = !{null, !22, !351, !17}
!7046 = distinct !DISubprogram(name: "arch_static_branch", scope: !7047, file: !7047, line: 25, type: !7048, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7050)
!7047 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!7048 = !DISubroutineType(types: !7049)
!7049 = !{!1411, !7025, !1411}
!7050 = !{!7051, !7052, !7053}
!7051 = !DILocalVariable(name: "key", arg: 1, scope: !7046, file: !7047, line: 25, type: !7025)
!7052 = !DILocalVariable(name: "branch", arg: 2, scope: !7046, file: !7047, line: 25, type: !1411)
!7053 = !DILabel(scope: !7046, name: "l_yes", file: !7047, line: 33)
!7054 = !DILocation(line: 25, column: 67, scope: !7046)
!7055 = !DILocation(line: 25, column: 77, scope: !7046)
!7056 = !DILocation(line: 30, column: 13, scope: !7046)
!7057 = !DILocation(line: 30, column: 28, scope: !7046)
!7058 = !{i8 0, i8 2}
!7059 = !DILocation(line: 30, column: 26, scope: !7046)
!7060 = !DILocation(line: 27, column: 2, scope: !7046)
!7061 = !{i64 1173226, i64 1173270, i64 2148657953, i64 2148657974, i64 2148658000, i64 2148658033, i64 2148658067, i64 2148658091}
!7062 = !DILocation(line: 32, column: 2, scope: !7046)
!7063 = !DILocation(line: 33, column: 1, scope: !7046)
!7064 = !DILocation(line: 34, column: 2, scope: !7046)
!7065 = !DILocation(line: 35, column: 1, scope: !7046)
!7066 = distinct !DISubprogram(name: "wrmsrl", scope: !6988, file: !6988, line: 260, type: !7067, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7069)
!7067 = !DISubroutineType(types: !7068)
!7068 = !{null, !22, !351}
!7069 = !{!7070, !7071}
!7070 = !DILocalVariable(name: "msr", arg: 1, scope: !7066, file: !6988, line: 260, type: !22)
!7071 = !DILocalVariable(name: "val", arg: 2, scope: !7066, file: !6988, line: 260, type: !351)
!7072 = !DILocation(line: 260, column: 40, scope: !7066)
!7073 = !DILocation(line: 260, column: 49, scope: !7066)
!7074 = !DILocation(line: 262, column: 19, scope: !7066)
!7075 = !DILocation(line: 262, column: 30, scope: !7066)
!7076 = !DILocation(line: 262, column: 34, scope: !7066)
!7077 = !DILocation(line: 262, column: 24, scope: !7066)
!7078 = !DILocation(line: 262, column: 58, scope: !7066)
!7079 = !DILocation(line: 262, column: 62, scope: !7066)
!7080 = !DILocation(line: 262, column: 52, scope: !7066)
!7081 = !DILocation(line: 262, column: 2, scope: !7066)
!7082 = !DILocation(line: 263, column: 1, scope: !7066)
!7083 = distinct !DISubprogram(name: "native_write_msr", scope: !6988, file: !6988, line: 143, type: !7084, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7086)
!7084 = !DISubroutineType(types: !7085)
!7085 = !{null, !22, !571, !571}
!7086 = !{!7087, !7088, !7089}
!7087 = !DILocalVariable(name: "msr", arg: 1, scope: !7083, file: !6988, line: 143, type: !22)
!7088 = !DILocalVariable(name: "low", arg: 2, scope: !7083, file: !6988, line: 143, type: !571)
!7089 = !DILocalVariable(name: "high", arg: 3, scope: !7083, file: !6988, line: 143, type: !571)
!7090 = !DILocation(line: 143, column: 31, scope: !7083)
!7091 = !DILocation(line: 143, column: 40, scope: !7083)
!7092 = !DILocation(line: 143, column: 49, scope: !7083)
!7093 = !DILocation(line: 145, column: 10, scope: !7083)
!7094 = !DILocation(line: 145, column: 15, scope: !7083)
!7095 = !DILocation(line: 145, column: 20, scope: !7083)
!7096 = !DILocation(line: 145, column: 2, scope: !7083)
!7097 = !DILocation(line: 147, column: 6, scope: !7098)
!7098 = distinct !DILexicalBlock(scope: !7083, file: !6988, line: 147, column: 6)
!7099 = !DILocation(line: 147, column: 6, scope: !7083)
!7100 = !DILocation(line: 148, column: 22, scope: !7098)
!7101 = !DILocation(line: 148, column: 33, scope: !7098)
!7102 = !DILocation(line: 148, column: 28, scope: !7098)
!7103 = !DILocation(line: 148, column: 38, scope: !7098)
!7104 = !DILocation(line: 148, column: 46, scope: !7098)
!7105 = !DILocation(line: 148, column: 44, scope: !7098)
!7106 = !DILocation(line: 148, column: 3, scope: !7098)
!7107 = !DILocation(line: 149, column: 1, scope: !7083)
!7108 = distinct !DISubprogram(name: "__wrmsr", scope: !6988, file: !6988, line: 92, type: !7084, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7109)
!7109 = !{!7110, !7111, !7112}
!7110 = !DILocalVariable(name: "msr", arg: 1, scope: !7108, file: !6988, line: 92, type: !22)
!7111 = !DILocalVariable(name: "low", arg: 2, scope: !7108, file: !6988, line: 92, type: !571)
!7112 = !DILocalVariable(name: "high", arg: 3, scope: !7108, file: !6988, line: 92, type: !571)
!7113 = !DILocation(line: 92, column: 50, scope: !7108)
!7114 = !DILocation(line: 92, column: 59, scope: !7108)
!7115 = !DILocation(line: 92, column: 68, scope: !7108)
!7116 = !DILocation(line: 97, column: 17, scope: !7108)
!7117 = !DILocation(line: 97, column: 27, scope: !7108)
!7118 = !DILocation(line: 97, column: 38, scope: !7108)
!7119 = !DILocation(line: 94, column: 2, scope: !7108)
!7120 = !{i64 1269118, i64 1269139, i64 2149451893, i64 2149451937, i64 2149451960, i64 2149451993, i64 2149452024, i64 2149452063}
!7121 = !DILocation(line: 98, column: 1, scope: !7108)
!7122 = !DISubprogram(name: "do_trace_write_msr", scope: !6988, file: !6988, line: 64, type: !7044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7123 = distinct !DISubprogram(name: "__instrument_read_write_bitop", scope: !6850, file: !6850, line: 64, type: !7124, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7126)
!7124 = !DISubroutineType(types: !7125)
!7125 = !{null, !463, !6815}
!7126 = !{!7127, !7128}
!7127 = !DILocalVariable(name: "nr", arg: 1, scope: !7123, file: !6850, line: 64, type: !463)
!7128 = !DILocalVariable(name: "addr", arg: 2, scope: !7123, file: !6850, line: 64, type: !6815)
!7129 = !DILocation(line: 64, column: 64, scope: !7123)
!7130 = !DILocation(line: 64, column: 92, scope: !7123)
!7131 = !DILocation(line: 84, column: 25, scope: !7132)
!7132 = distinct !DILexicalBlock(scope: !7133, file: !6850, line: 83, column: 9)
!7133 = distinct !DILexicalBlock(scope: !7123, file: !6850, line: 66, column: 6)
!7134 = !DILocation(line: 84, column: 32, scope: !7132)
!7135 = !DILocation(line: 84, column: 30, scope: !7132)
!7136 = !DILocation(line: 84, column: 3, scope: !7132)
!7137 = !DILocation(line: 86, column: 1, scope: !7123)
!7138 = distinct !DISubprogram(name: "arch___test_and_clear_bit", scope: !7139, file: !7139, line: 174, type: !6813, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7140)
!7139 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7140 = !{!7141, !7142, !7143}
!7141 = !DILocalVariable(name: "nr", arg: 1, scope: !7138, file: !7139, line: 174, type: !78)
!7142 = !DILocalVariable(name: "addr", arg: 2, scope: !7138, file: !7139, line: 174, type: !6815)
!7143 = !DILocalVariable(name: "oldbit", scope: !7138, file: !7139, line: 176, type: !1411)
!7144 = !DILocation(line: 174, column: 41, scope: !7138)
!7145 = !DILocation(line: 174, column: 69, scope: !7138)
!7146 = !DILocation(line: 176, column: 2, scope: !7138)
!7147 = !DILocation(line: 176, column: 7, scope: !7138)
!7148 = !DILocation(line: 181, column: 10, scope: !7138)
!7149 = !DILocation(line: 181, column: 22, scope: !7138)
!7150 = !DILocation(line: 178, column: 2, scope: !7138)
!7151 = !{i64 2148109977, i64 2148110054}
!7152 = !DILocation(line: 182, column: 9, scope: !7138)
!7153 = !DILocation(line: 183, column: 1, scope: !7138)
!7154 = !DILocation(line: 182, column: 2, scope: !7138)
!7155 = distinct !DISubprogram(name: "instrument_read_write", scope: !7156, file: !7156, line: 52, type: !7157, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7162)
!7156 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7157 = !DISubroutineType(types: !7158)
!7158 = !{null, !7159, !74}
!7159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7160, size: 64)
!7160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7161)
!7161 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7162 = !{!7163, !7164}
!7163 = !DILocalVariable(name: "v", arg: 1, scope: !7155, file: !7156, line: 52, type: !7159)
!7164 = !DILocalVariable(name: "size", arg: 2, scope: !7155, file: !7156, line: 52, type: !74)
!7165 = !DILocation(line: 52, column: 72, scope: !7155)
!7166 = !DILocation(line: 52, column: 82, scope: !7155)
!7167 = !DILocation(line: 54, column: 20, scope: !7155)
!7168 = !DILocation(line: 54, column: 23, scope: !7155)
!7169 = !DILocation(line: 54, column: 2, scope: !7155)
!7170 = !DILocation(line: 55, column: 2, scope: !7155)
!7171 = !DILocation(line: 56, column: 1, scope: !7155)
!7172 = distinct !DISubprogram(name: "kasan_check_write", scope: !7173, file: !7173, line: 44, type: !7174, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7176)
!7173 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7174 = !DISubroutineType(types: !7175)
!7175 = !{!1411, !7159, !22}
!7176 = !{!7177, !7178}
!7177 = !DILocalVariable(name: "p", arg: 1, scope: !7172, file: !7173, line: 44, type: !7159)
!7178 = !DILocalVariable(name: "size", arg: 2, scope: !7172, file: !7173, line: 44, type: !22)
!7179 = !DILocation(line: 44, column: 59, scope: !7172)
!7180 = !DILocation(line: 44, column: 75, scope: !7172)
!7181 = !DILocation(line: 46, column: 2, scope: !7172)
!7182 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7183, file: !7183, line: 229, type: !7184, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7186)
!7183 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7184 = !DISubroutineType(types: !7185)
!7185 = !{null, !7159, !74, !17}
!7186 = !{!7187, !7188, !7189}
!7187 = !DILocalVariable(name: "ptr", arg: 1, scope: !7182, file: !7183, line: 229, type: !7159)
!7188 = !DILocalVariable(name: "size", arg: 2, scope: !7182, file: !7183, line: 229, type: !74)
!7189 = !DILocalVariable(name: "type", arg: 3, scope: !7182, file: !7183, line: 230, type: !17)
!7190 = !DILocation(line: 229, column: 60, scope: !7182)
!7191 = !DILocation(line: 229, column: 72, scope: !7182)
!7192 = !DILocation(line: 230, column: 15, scope: !7182)
!7193 = !DILocation(line: 230, column: 23, scope: !7182)
!7194 = distinct !DISubprogram(name: "variable__ffs", scope: !7139, file: !7139, line: 250, type: !7195, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7197)
!7195 = !DISubroutineType(types: !7196)
!7196 = !{!78, !78}
!7197 = !{!7198}
!7198 = !DILocalVariable(name: "word", arg: 1, scope: !7194, file: !7139, line: 250, type: !78)
!7199 = !DILocation(line: 250, column: 66, scope: !7194)
!7200 = !DILocation(line: 254, column: 11, scope: !7194)
!7201 = !DILocation(line: 252, column: 2, scope: !7194)
!7202 = !{i64 611562}
!7203 = !DILocation(line: 255, column: 9, scope: !7194)
!7204 = !DILocation(line: 255, column: 2, scope: !7194)
!7205 = !DISubprogram(name: "_find_next_bit", scope: !6864, file: !6864, line: 11, type: !6865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7206 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7156, file: !7156, line: 66, type: !7157, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7207)
!7207 = !{!7208, !7209}
!7208 = !DILocalVariable(name: "v", arg: 1, scope: !7206, file: !7156, line: 66, type: !7159)
!7209 = !DILocalVariable(name: "size", arg: 2, scope: !7206, file: !7156, line: 66, type: !74)
!7210 = !DILocation(line: 66, column: 73, scope: !7206)
!7211 = !DILocation(line: 66, column: 83, scope: !7206)
!7212 = !DILocation(line: 68, column: 19, scope: !7206)
!7213 = !DILocation(line: 68, column: 22, scope: !7206)
!7214 = !DILocation(line: 68, column: 2, scope: !7206)
!7215 = !DILocation(line: 69, column: 2, scope: !7206)
!7216 = !DILocation(line: 70, column: 1, scope: !7206)
!7217 = distinct !DISubprogram(name: "arch_test_bit", scope: !7139, file: !7139, line: 237, type: !6903, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7218)
!7218 = !{!7219, !7220}
!7219 = !DILocalVariable(name: "nr", arg: 1, scope: !7217, file: !7139, line: 237, type: !78)
!7220 = !DILocalVariable(name: "addr", arg: 2, scope: !7217, file: !7139, line: 237, type: !6905)
!7221 = !DILocation(line: 237, column: 29, scope: !7217)
!7222 = !DILocation(line: 237, column: 63, scope: !7217)
!7223 = !DILocation(line: 239, column: 30, scope: !7217)
!7224 = !DILocation(line: 239, column: 9, scope: !7217)
!7225 = !DILocation(line: 239, column: 54, scope: !7217)
!7226 = !DILocation(line: 239, column: 58, scope: !7217)
!7227 = !DILocation(line: 239, column: 36, scope: !7217)
!7228 = !DILocation(line: 240, column: 26, scope: !7217)
!7229 = !DILocation(line: 240, column: 30, scope: !7217)
!7230 = !DILocation(line: 240, column: 8, scope: !7217)
!7231 = !DILocation(line: 239, column: 2, scope: !7217)
!7232 = distinct !DISubprogram(name: "kasan_check_read", scope: !7173, file: !7173, line: 40, type: !7174, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7233)
!7233 = !{!7234, !7235}
!7234 = !DILocalVariable(name: "p", arg: 1, scope: !7232, file: !7173, line: 40, type: !7159)
!7235 = !DILocalVariable(name: "size", arg: 2, scope: !7232, file: !7173, line: 40, type: !22)
!7236 = !DILocation(line: 40, column: 58, scope: !7232)
!7237 = !DILocation(line: 40, column: 74, scope: !7232)
!7238 = !DILocation(line: 42, column: 2, scope: !7232)
!7239 = distinct !DISubprogram(name: "constant_test_bit", scope: !7139, file: !7139, line: 204, type: !7240, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7242)
!7240 = !DISubroutineType(types: !7241)
!7241 = !{!1411, !463, !6905}
!7242 = !{!7243, !7244}
!7243 = !DILocalVariable(name: "nr", arg: 1, scope: !7239, file: !7139, line: 204, type: !463)
!7244 = !DILocalVariable(name: "addr", arg: 2, scope: !7239, file: !7139, line: 204, type: !6905)
!7245 = !DILocation(line: 204, column: 52, scope: !7239)
!7246 = !DILocation(line: 204, column: 86, scope: !7239)
!7247 = !DILocation(line: 206, column: 19, scope: !7239)
!7248 = !DILocation(line: 206, column: 22, scope: !7239)
!7249 = !DILocation(line: 206, column: 15, scope: !7239)
!7250 = !DILocation(line: 207, column: 4, scope: !7239)
!7251 = !DILocation(line: 207, column: 9, scope: !7239)
!7252 = !DILocation(line: 207, column: 12, scope: !7239)
!7253 = !DILocation(line: 206, column: 44, scope: !7239)
!7254 = !DILocation(line: 207, column: 37, scope: !7239)
!7255 = !DILocation(line: 206, column: 2, scope: !7239)
!7256 = distinct !DISubprogram(name: "variable_test_bit", scope: !7139, file: !7139, line: 224, type: !7240, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7257)
!7257 = !{!7258, !7259, !7260}
!7258 = !DILocalVariable(name: "nr", arg: 1, scope: !7256, file: !7139, line: 224, type: !463)
!7259 = !DILocalVariable(name: "addr", arg: 2, scope: !7256, file: !7139, line: 224, type: !6905)
!7260 = !DILocalVariable(name: "oldbit", scope: !7256, file: !7139, line: 226, type: !1411)
!7261 = !DILocation(line: 224, column: 52, scope: !7256)
!7262 = !DILocation(line: 224, column: 86, scope: !7256)
!7263 = !DILocation(line: 226, column: 2, scope: !7256)
!7264 = !DILocation(line: 226, column: 7, scope: !7256)
!7265 = !DILocation(line: 231, column: 33, scope: !7256)
!7266 = !DILocation(line: 231, column: 46, scope: !7256)
!7267 = !DILocation(line: 228, column: 2, scope: !7256)
!7268 = !{i64 2148113640, i64 2148113714}
!7269 = !DILocation(line: 233, column: 9, scope: !7256)
!7270 = !DILocation(line: 234, column: 1, scope: !7256)
!7271 = !DILocation(line: 233, column: 2, scope: !7256)
!7272 = distinct !DISubprogram(name: "zhaoxin_pmu_enable_fixed", scope: !2, file: !2, line: 313, type: !7273, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7275)
!7273 = !DISubroutineType(types: !7274)
!7274 = !{null, !6677}
!7275 = !{!7276, !7277, !7278, !7279, !7280}
!7276 = !DILocalVariable(name: "hwc", arg: 1, scope: !7272, file: !2, line: 313, type: !6677)
!7277 = !DILocalVariable(name: "idx", scope: !7272, file: !2, line: 315, type: !17)
!7278 = !DILocalVariable(name: "ctrl_val", scope: !7272, file: !2, line: 316, type: !351)
!7279 = !DILocalVariable(name: "bits", scope: !7272, file: !2, line: 316, type: !351)
!7280 = !DILocalVariable(name: "mask", scope: !7272, file: !2, line: 316, type: !351)
!7281 = !DILocation(line: 313, column: 60, scope: !7272)
!7282 = !DILocation(line: 315, column: 2, scope: !7272)
!7283 = !DILocation(line: 315, column: 6, scope: !7272)
!7284 = !DILocation(line: 315, column: 12, scope: !7272)
!7285 = !DILocation(line: 315, column: 17, scope: !7272)
!7286 = !DILocation(line: 315, column: 21, scope: !7272)
!7287 = !DILocation(line: 316, column: 2, scope: !7272)
!7288 = !DILocation(line: 316, column: 6, scope: !7272)
!7289 = !DILocation(line: 316, column: 16, scope: !7272)
!7290 = !DILocation(line: 316, column: 22, scope: !7272)
!7291 = !DILocation(line: 323, column: 7, scope: !7272)
!7292 = !DILocation(line: 324, column: 6, scope: !7293)
!7293 = distinct !DILexicalBlock(scope: !7272, file: !2, line: 324, column: 6)
!7294 = !DILocation(line: 324, column: 11, scope: !7293)
!7295 = !DILocation(line: 324, column: 18, scope: !7293)
!7296 = !DILocation(line: 324, column: 6, scope: !7272)
!7297 = !DILocation(line: 325, column: 8, scope: !7293)
!7298 = !DILocation(line: 325, column: 3, scope: !7293)
!7299 = !DILocation(line: 326, column: 6, scope: !7300)
!7300 = distinct !DILexicalBlock(scope: !7272, file: !2, line: 326, column: 6)
!7301 = !DILocation(line: 326, column: 11, scope: !7300)
!7302 = !DILocation(line: 326, column: 18, scope: !7300)
!7303 = !DILocation(line: 326, column: 6, scope: !7272)
!7304 = !DILocation(line: 327, column: 8, scope: !7300)
!7305 = !DILocation(line: 327, column: 3, scope: !7300)
!7306 = !DILocation(line: 329, column: 12, scope: !7272)
!7307 = !DILocation(line: 329, column: 16, scope: !7272)
!7308 = !DILocation(line: 329, column: 7, scope: !7272)
!7309 = !DILocation(line: 330, column: 20, scope: !7272)
!7310 = !DILocation(line: 330, column: 24, scope: !7272)
!7311 = !DILocation(line: 330, column: 16, scope: !7272)
!7312 = !DILocation(line: 330, column: 7, scope: !7272)
!7313 = !DILocation(line: 332, column: 2, scope: !7272)
!7314 = !DILocation(line: 333, column: 15, scope: !7272)
!7315 = !DILocation(line: 333, column: 14, scope: !7272)
!7316 = !DILocation(line: 333, column: 11, scope: !7272)
!7317 = !DILocation(line: 334, column: 14, scope: !7272)
!7318 = !DILocation(line: 334, column: 11, scope: !7272)
!7319 = !DILocation(line: 335, column: 9, scope: !7272)
!7320 = !DILocation(line: 335, column: 14, scope: !7272)
!7321 = !DILocation(line: 335, column: 27, scope: !7272)
!7322 = !DILocation(line: 335, column: 2, scope: !7272)
!7323 = !DILocation(line: 336, column: 1, scope: !7272)
!7324 = distinct !DISubprogram(name: "__x86_pmu_enable_event", scope: !273, file: !273, line: 1144, type: !7325, scopeLine: 1146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7327)
!7325 = !DISubroutineType(types: !7326)
!7326 = !{null, !6677, !351}
!7327 = !{!7328, !7329, !7330, !7331, !7334, !7336}
!7328 = !DILocalVariable(name: "hwc", arg: 1, scope: !7324, file: !273, line: 1144, type: !6677)
!7329 = !DILocalVariable(name: "enable_mask", arg: 2, scope: !7324, file: !273, line: 1145, type: !351)
!7330 = !DILocalVariable(name: "disable_mask", scope: !7324, file: !273, line: 1147, type: !351)
!7331 = !DILocalVariable(name: "pscr_ret__", scope: !7332, file: !273, line: 1147, type: !351)
!7332 = distinct !DILexicalBlock(scope: !7333, file: !273, line: 1147, column: 21)
!7333 = distinct !DILexicalBlock(scope: !7324, file: !273, line: 1147, column: 21)
!7334 = !DILocalVariable(name: "__vpp_verify", scope: !7335, file: !273, line: 1147, type: !1340)
!7335 = distinct !DILexicalBlock(scope: !7332, file: !273, line: 1147, column: 21)
!7336 = !DILocalVariable(name: "pfo_val__", scope: !7337, file: !273, line: 1147, type: !351)
!7337 = distinct !DILexicalBlock(scope: !7332, file: !273, line: 1147, column: 21)
!7338 = !DILocation(line: 1144, column: 65, scope: !7324)
!7339 = !DILocation(line: 1145, column: 12, scope: !7324)
!7340 = !DILocation(line: 1147, column: 2, scope: !7324)
!7341 = !DILocation(line: 1147, column: 6, scope: !7324)
!7342 = !DILocation(line: 1147, column: 21, scope: !7333)
!7343 = !DILocation(line: 1147, column: 21, scope: !7332)
!7344 = !DILocation(line: 1147, column: 21, scope: !7335)
!7345 = !DILocation(line: 1147, column: 21, scope: !7337)
!7346 = !{i64 2155532281}
!7347 = !DILocation(line: 1149, column: 6, scope: !7348)
!7348 = distinct !DILexicalBlock(scope: !7324, file: !273, line: 1149, column: 6)
!7349 = !DILocation(line: 1149, column: 11, scope: !7348)
!7350 = !DILocation(line: 1149, column: 21, scope: !7348)
!7351 = !DILocation(line: 1149, column: 6, scope: !7324)
!7352 = !DILocation(line: 1150, column: 10, scope: !7348)
!7353 = !DILocation(line: 1150, column: 15, scope: !7348)
!7354 = !DILocation(line: 1150, column: 25, scope: !7348)
!7355 = !DILocation(line: 1150, column: 30, scope: !7348)
!7356 = !DILocation(line: 1150, column: 35, scope: !7348)
!7357 = !DILocation(line: 1150, column: 45, scope: !7348)
!7358 = !DILocation(line: 1150, column: 3, scope: !7348)
!7359 = !DILocation(line: 1156, column: 22, scope: !7360)
!7360 = distinct !DILexicalBlock(scope: !7324, file: !273, line: 1156, column: 6)
!7361 = !DILocation(line: 1156, column: 6, scope: !7360)
!7362 = !DILocation(line: 1156, column: 6, scope: !7324)
!7363 = !DILocation(line: 1157, column: 30, scope: !7360)
!7364 = !DILocation(line: 1157, column: 35, scope: !7360)
!7365 = !DILocation(line: 1157, column: 39, scope: !7360)
!7366 = !DILocation(line: 1157, column: 10, scope: !7360)
!7367 = !DILocation(line: 1157, column: 53, scope: !7360)
!7368 = !DILocation(line: 1157, column: 3, scope: !7360)
!7369 = !DILocation(line: 1159, column: 9, scope: !7324)
!7370 = !DILocation(line: 1159, column: 14, scope: !7324)
!7371 = !DILocation(line: 1159, column: 28, scope: !7324)
!7372 = !DILocation(line: 1159, column: 33, scope: !7324)
!7373 = !DILocation(line: 1159, column: 42, scope: !7324)
!7374 = !DILocation(line: 1159, column: 40, scope: !7324)
!7375 = !DILocation(line: 1159, column: 58, scope: !7324)
!7376 = !DILocation(line: 1159, column: 57, scope: !7324)
!7377 = !DILocation(line: 1159, column: 55, scope: !7324)
!7378 = !DILocation(line: 1159, column: 2, scope: !7324)
!7379 = !DILocation(line: 1160, column: 1, scope: !7324)
!7380 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !7381, file: !7381, line: 313, type: !7382, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7384)
!7381 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!7382 = !DISubroutineType(types: !7383)
!7383 = !{null, !57}
!7384 = !{!7385}
!7385 = !DILocalVariable(name: "op", arg: 1, scope: !7380, file: !7381, line: 313, type: !57)
!7386 = !DILocation(line: 313, column: 66, scope: !7380)
!7387 = !DILocation(line: 313, column: 72, scope: !7380)
!7388 = distinct !DISubprogram(name: "is_counter_pair", scope: !273, file: !273, line: 1139, type: !7389, scopeLine: 1140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7391)
!7389 = !DISubroutineType(types: !7390)
!7390 = !{!1411, !6677}
!7391 = !{!7392}
!7392 = !DILocalVariable(name: "hwc", arg: 1, scope: !7388, file: !273, line: 1139, type: !6677)
!7393 = !DILocation(line: 1139, column: 58, scope: !7388)
!7394 = !DILocation(line: 1141, column: 9, scope: !7388)
!7395 = !DILocation(line: 1141, column: 14, scope: !7388)
!7396 = !DILocation(line: 1141, column: 20, scope: !7388)
!7397 = !DILocation(line: 1141, column: 2, scope: !7388)
!7398 = distinct !DISubprogram(name: "x86_pmu_config_addr", scope: !273, file: !273, line: 1096, type: !7399, scopeLine: 1097, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7401)
!7399 = !DISubroutineType(types: !7400)
!7400 = !{!22, !17}
!7401 = !{!7402}
!7402 = !DILocalVariable(name: "index", arg: 1, scope: !7398, file: !273, line: 1096, type: !17)
!7403 = !DILocation(line: 1096, column: 52, scope: !7398)
!7404 = !DILocation(line: 1098, column: 17, scope: !7398)
!7405 = !DILocation(line: 1098, column: 37, scope: !7398)
!7406 = !DILocation(line: 1098, column: 29, scope: !7398)
!7407 = !DILocation(line: 1099, column: 16, scope: !7398)
!7408 = !DILocation(line: 1099, column: 28, scope: !7398)
!7409 = !DILocation(line: 1099, column: 8, scope: !7398)
!7410 = !DILocation(line: 1099, column: 43, scope: !7398)
!7411 = !DILocation(line: 1098, column: 26, scope: !7398)
!7412 = !DILocation(line: 1098, column: 2, scope: !7398)
!7413 = distinct !DISubprogram(name: "zhaoxin_pmu_disable_fixed", scope: !2, file: !2, line: 289, type: !7273, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7414)
!7414 = !{!7415, !7416, !7417, !7418}
!7415 = !DILocalVariable(name: "hwc", arg: 1, scope: !7413, file: !2, line: 289, type: !6677)
!7416 = !DILocalVariable(name: "idx", scope: !7413, file: !2, line: 291, type: !17)
!7417 = !DILocalVariable(name: "ctrl_val", scope: !7413, file: !2, line: 292, type: !351)
!7418 = !DILocalVariable(name: "mask", scope: !7413, file: !2, line: 292, type: !351)
!7419 = !DILocation(line: 289, column: 61, scope: !7413)
!7420 = !DILocation(line: 291, column: 2, scope: !7413)
!7421 = !DILocation(line: 291, column: 6, scope: !7413)
!7422 = !DILocation(line: 291, column: 12, scope: !7413)
!7423 = !DILocation(line: 291, column: 17, scope: !7413)
!7424 = !DILocation(line: 291, column: 21, scope: !7413)
!7425 = !DILocation(line: 292, column: 2, scope: !7413)
!7426 = !DILocation(line: 292, column: 6, scope: !7413)
!7427 = !DILocation(line: 292, column: 16, scope: !7413)
!7428 = !DILocation(line: 294, column: 20, scope: !7413)
!7429 = !DILocation(line: 294, column: 24, scope: !7413)
!7430 = !DILocation(line: 294, column: 16, scope: !7413)
!7431 = !DILocation(line: 294, column: 7, scope: !7413)
!7432 = !DILocation(line: 296, column: 2, scope: !7413)
!7433 = !DILocation(line: 297, column: 15, scope: !7413)
!7434 = !DILocation(line: 297, column: 14, scope: !7413)
!7435 = !DILocation(line: 297, column: 11, scope: !7413)
!7436 = !DILocation(line: 298, column: 9, scope: !7413)
!7437 = !DILocation(line: 298, column: 14, scope: !7413)
!7438 = !DILocation(line: 298, column: 27, scope: !7413)
!7439 = !DILocation(line: 298, column: 2, scope: !7413)
!7440 = !DILocation(line: 299, column: 1, scope: !7413)
!7441 = distinct !DISubprogram(name: "x86_pmu_disable_event", scope: !273, file: !273, line: 1170, type: !5293, scopeLine: 1171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7442)
!7442 = !{!7443, !7444, !7445, !7448, !7450, !7452}
!7443 = !DILocalVariable(name: "event", arg: 1, scope: !7441, file: !273, line: 1170, type: !336)
!7444 = !DILocalVariable(name: "disable_mask", scope: !7441, file: !273, line: 1172, type: !351)
!7445 = !DILocalVariable(name: "pscr_ret__", scope: !7446, file: !273, line: 1172, type: !351)
!7446 = distinct !DILexicalBlock(scope: !7447, file: !273, line: 1172, column: 21)
!7447 = distinct !DILexicalBlock(scope: !7441, file: !273, line: 1172, column: 21)
!7448 = !DILocalVariable(name: "__vpp_verify", scope: !7449, file: !273, line: 1172, type: !1340)
!7449 = distinct !DILexicalBlock(scope: !7446, file: !273, line: 1172, column: 21)
!7450 = !DILocalVariable(name: "pfo_val__", scope: !7451, file: !273, line: 1172, type: !351)
!7451 = distinct !DILexicalBlock(scope: !7446, file: !273, line: 1172, column: 21)
!7452 = !DILocalVariable(name: "hwc", scope: !7441, file: !273, line: 1173, type: !6677)
!7453 = !DILocation(line: 1170, column: 61, scope: !7441)
!7454 = !DILocation(line: 1172, column: 2, scope: !7441)
!7455 = !DILocation(line: 1172, column: 6, scope: !7441)
!7456 = !DILocation(line: 1172, column: 21, scope: !7447)
!7457 = !DILocation(line: 1172, column: 21, scope: !7446)
!7458 = !DILocation(line: 1172, column: 21, scope: !7449)
!7459 = !DILocation(line: 1172, column: 21, scope: !7451)
!7460 = !{i64 2155536087}
!7461 = !DILocation(line: 1173, column: 2, scope: !7441)
!7462 = !DILocation(line: 1173, column: 24, scope: !7441)
!7463 = !DILocation(line: 1173, column: 31, scope: !7441)
!7464 = !DILocation(line: 1173, column: 38, scope: !7441)
!7465 = !DILocation(line: 1175, column: 9, scope: !7441)
!7466 = !DILocation(line: 1175, column: 14, scope: !7441)
!7467 = !DILocation(line: 1175, column: 27, scope: !7441)
!7468 = !DILocation(line: 1175, column: 32, scope: !7441)
!7469 = !DILocation(line: 1175, column: 42, scope: !7441)
!7470 = !DILocation(line: 1175, column: 41, scope: !7441)
!7471 = !DILocation(line: 1175, column: 39, scope: !7441)
!7472 = !DILocation(line: 1175, column: 2, scope: !7441)
!7473 = !DILocation(line: 1177, column: 22, scope: !7474)
!7474 = distinct !DILexicalBlock(scope: !7441, file: !273, line: 1177, column: 6)
!7475 = !DILocation(line: 1177, column: 6, scope: !7474)
!7476 = !DILocation(line: 1177, column: 6, scope: !7441)
!7477 = !DILocation(line: 1178, column: 30, scope: !7474)
!7478 = !DILocation(line: 1178, column: 35, scope: !7474)
!7479 = !DILocation(line: 1178, column: 39, scope: !7474)
!7480 = !DILocation(line: 1178, column: 10, scope: !7474)
!7481 = !DILocation(line: 1178, column: 3, scope: !7474)
!7482 = !DILocation(line: 1179, column: 1, scope: !7441)
!7483 = distinct !DISubprogram(name: "event_show", scope: !2, file: !2, line: 437, type: !6176, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7484)
!7484 = !{!7485, !7486, !7487}
!7485 = !DILocalVariable(name: "dev", arg: 1, scope: !7483, file: !2, line: 437, type: !4777)
!7486 = !DILocalVariable(name: "attr", arg: 2, scope: !7483, file: !2, line: 437, type: !6178)
!7487 = !DILocalVariable(name: "page", arg: 3, scope: !7483, file: !2, line: 437, type: !428)
!7488 = !DILocation(line: 437, column: 1, scope: !7483)
!7489 = !DILocation(line: 437, column: 1, scope: !7490)
!7490 = distinct !DILexicalBlock(scope: !7483, file: !2, line: 437, column: 1)
!7491 = !DISubprogram(name: "sprintf", scope: !7492, file: !7492, line: 10, type: !7493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7492 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!7493 = !DISubroutineType(types: !7494)
!7494 = !{!17, !428, !57, null}
!7495 = distinct !DISubprogram(name: "umask_show", scope: !2, file: !2, line: 438, type: !6176, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7496)
!7496 = !{!7497, !7498, !7499}
!7497 = !DILocalVariable(name: "dev", arg: 1, scope: !7495, file: !2, line: 438, type: !4777)
!7498 = !DILocalVariable(name: "attr", arg: 2, scope: !7495, file: !2, line: 438, type: !6178)
!7499 = !DILocalVariable(name: "page", arg: 3, scope: !7495, file: !2, line: 438, type: !428)
!7500 = !DILocation(line: 438, column: 1, scope: !7495)
!7501 = !DILocation(line: 438, column: 1, scope: !7502)
!7502 = distinct !DILexicalBlock(scope: !7495, file: !2, line: 438, column: 1)
!7503 = distinct !DISubprogram(name: "edge_show", scope: !2, file: !2, line: 439, type: !6176, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7504)
!7504 = !{!7505, !7506, !7507}
!7505 = !DILocalVariable(name: "dev", arg: 1, scope: !7503, file: !2, line: 439, type: !4777)
!7506 = !DILocalVariable(name: "attr", arg: 2, scope: !7503, file: !2, line: 439, type: !6178)
!7507 = !DILocalVariable(name: "page", arg: 3, scope: !7503, file: !2, line: 439, type: !428)
!7508 = !DILocation(line: 439, column: 1, scope: !7503)
!7509 = !DILocation(line: 439, column: 1, scope: !7510)
!7510 = distinct !DILexicalBlock(scope: !7503, file: !2, line: 439, column: 1)
!7511 = distinct !DISubprogram(name: "inv_show", scope: !2, file: !2, line: 440, type: !6176, scopeLine: 440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7512)
!7512 = !{!7513, !7514, !7515}
!7513 = !DILocalVariable(name: "dev", arg: 1, scope: !7511, file: !2, line: 440, type: !4777)
!7514 = !DILocalVariable(name: "attr", arg: 2, scope: !7511, file: !2, line: 440, type: !6178)
!7515 = !DILocalVariable(name: "page", arg: 3, scope: !7511, file: !2, line: 440, type: !428)
!7516 = !DILocation(line: 440, column: 1, scope: !7511)
!7517 = !DILocation(line: 440, column: 1, scope: !7518)
!7518 = distinct !DILexicalBlock(scope: !7511, file: !2, line: 440, column: 1)
!7519 = distinct !DISubprogram(name: "cmask_show", scope: !2, file: !2, line: 441, type: !6176, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !7520)
!7520 = !{!7521, !7522, !7523}
!7521 = !DILocalVariable(name: "dev", arg: 1, scope: !7519, file: !2, line: 441, type: !4777)
!7522 = !DILocalVariable(name: "attr", arg: 2, scope: !7519, file: !2, line: 441, type: !6178)
!7523 = !DILocalVariable(name: "page", arg: 3, scope: !7519, file: !2, line: 441, type: !428)
!7524 = !DILocation(line: 441, column: 1, scope: !7519)
!7525 = !DILocation(line: 441, column: 1, scope: !7526)
!7526 = distinct !DILexicalBlock(scope: !7519, file: !2, line: 441, column: 1)
!7527 = !DISubprogram(name: "x86_event_sysfs_show", scope: !273, file: !273, line: 1285, type: !7528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7528 = !DISubroutineType(types: !7529)
!7529 = !{!460, !428, !351, !351}
